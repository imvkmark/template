<?php
/*
 * 文件处理函数
 * @package    system
 * @author     Mark
 * @copyright  Copyright (c) 2013 ixdcw team
 * @version    $Id$
 */
class File {
	/**
	 * @param $filename
	 * @return string   获取文件名扩展
	 */
	public static function ext($filename) {
		return strtolower(trim(substr(strrchr($filename, '.'), 1)));
	}

	/**
	 * 返回文件纠正的名称, 替换掉特殊字符
	 * @param $name
	 * @return mixed
	 */
	public static function vname($name) {
		return str_replace(array(' ', '\\', '/', ':', '*', '?', '"', '<', '>', '|', "'", '$', '&', '%', '#', '@'), array('-', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''), $name);
	}

	/**
	 * 文件下载
	 * @param        $file
	 * @param string $filename
	 * @param string $data
	 */
	public static function down($file, $filename = '', $data = '') {
		if(!$data && !is_file($file)) exit;
		$filename = $filename ? $filename : basename($file);
		$filetype = self::ext($filename);
		$filesize = $data ? strlen($data) : filesize($file);
		ob_end_clean();
		@set_time_limit(0);
		if(strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE') !== false) {
			header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
			header('Pragma: public');
		} else {
			header('Pragma: no-cache');
		}
		header('Expires: '.gmdate('D, d M Y H:i:s').' GMT');
		header('Content-Encoding: none');
		header('Content-Length: '.$filesize);
		header('Content-Disposition: attachment; filename='.$filename);
		header('Content-Type: '.$filetype);
		if($data) { echo $data; } else { readfile($file); }
		exit;
	}

	/**
	 * 文件列表
	 * @param       $dir
	 * @param array $fs
	 * @return array
	 */
	public static function listAll($dir, $fs = array()) {
		$files = glob($dir.'/*');
		if(!is_array($files)) return $fs;
		foreach($files as $file) {
			if(is_dir($file)) {
				$fs = self::listAll($file, $fs);
			} else {
				$fs[] = $file;
			}
		}
		return $fs;
	}

	/**
	 * 文件复制
	 * @param $from
	 * @param $to
	 * @return bool
	 */
	public static function copyto($from, $to) {
		self::dirCreate(dirname($to));
		if(is_file($to) && DT_CHMOD) @chmod($to, DT_CHMOD);
		if(strpos($from, DT_PATH) !== false) $from = str_replace(DT_PATH, DT_ROOT.'/', $from);
		if(@copy($from, $to)) {
			if(DT_CHMOD) @chmod($to, DT_CHMOD);
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 创建文件成功返回实际写入的数据块数目 失败返回false
	 * @param $filename     文件名称
	 * @param $data         数据
	 * @return bool|int     成功返回实际写入的数据块数目 失败返回false
	 */
	public static function put($filename, $data) {
		self::dirCreate(dirname($filename));
		if(@$fp = fopen($filename, 'wb')) {
			flock($fp, LOCK_EX);
			$len = fwrite($fp, $data);
			flock($fp, LOCK_UN);
			fclose($fp);
			if(DT_CHMOD) @chmod($filename, DT_CHMOD);
			return $len;
		} else {
			return false;
		}
	}

	/**
	 * 获取缓存文件内容
	 * @param String $filename
	 * @return string
	 *
	 */
	public static function get($filename) {
		return @file_get_contents($filename);
	}

	/**
	 * @param $filename
	 * @return bool         删除指定的文件名称
	 */
	public static function del($filename) {
		if(DT_CHMOD) @chmod($filename, DT_CHMOD);
		return is_file($filename) ? @unlink($filename) : false;
	}

	/**
	 * 文件路径
	 * @param $dirpath
	 * @return mixed|string
	 */
	public static function dirPath($dirpath) {
		$dirpath = str_replace('\\', '/', $dirpath);
		if(substr($dirpath, -1) != '/') $dirpath = $dirpath.'/';
		return $dirpath;
	}

	/**
	 * 路径建立
	 * @param $path
	 * @return bool
	 */
	public static function dirCreate($path) {
		if(is_dir($path)) return true;
		if(DT_CACHE != DT_ROOT.'/cache' && strpos($path, DT_CACHE) !== false) {
			$dir = str_replace(DT_CACHE.'/', '', $path);
			$dir = self::dirPath($dir);
			$temp = explode('/', $dir);
			$cur_dir = DT_CACHE.'/';
			$max = count($temp) - 1;
			for($i = 0; $i < $max; $i++) {
				$cur_dir .= $temp[$i].'/';
				if(is_dir($cur_dir)) continue;
				@mkdir($cur_dir);
				if(DT_CHMOD) @chmod($cur_dir, DT_CHMOD);
				if(!is_file($cur_dir.'/index.html')) self::copyto(DT_ROOT.'/file/index.html', $cur_dir.'/index.html');
			}
		} else {
			$idx = (strpos($path, '/cache/') !== false || strpos($path, '/file/') !== false) ? true : false;
			$dir = str_replace(DT_ROOT.'/', '', $path);
			$dir = self::dirPath($dir);
			$temp = explode('/', $dir);
			$cur_dir = DT_ROOT.'/';
			$max = count($temp) - 1;
			for($i = 0; $i < $max; $i++) {
				$cur_dir .= $temp[$i].'/';
				if(is_dir($cur_dir)) continue;
				@mkdir($cur_dir);
				if(DT_CHMOD) @chmod($cur_dir, DT_CHMOD);
				if($idx && !is_file($cur_dir.'/index.html')) self::copyto(DT_ROOT.'/file/index.html', $cur_dir.'/index.html');
			}
		}
		return is_dir($path);
	}

	/**
	 * 转换路径模式
	 * @param        $dir
	 * @param string $mode
	 * @param int    $require
	 */
	public static function dirChmod($dir, $mode = '', $require = 0) {
		if(!$require) $require = substr($dir, -1) == '*' ? 2 : 0;
		if($require) {
			if($require == 2) $dir = substr($dir, 0, -1);
			$dir = self::dirPath($dir);
			$list = glob($dir.'*');
			foreach($list as $v) {
				if(is_dir($v)) {
					self::dirChmod($v, $mode, 1);
				} else {
					@chmod(basename($v), $mode);
				}
			}
		}
		if(is_dir($dir)) {
			@chmod($dir, $mode);
		} else {
			@chmod(basename($dir), $mode);
		}
	}

	/**
	 * 目录复制
	 * @param $fromdir
	 * @param $todir
	 * @return bool
	 */
	public static function dirCopy($fromdir, $todir) {
		$fromdir = self::dirPath($fromdir);
		$todir = self::dirPath($todir);
		if(!is_dir($fromdir)) return false;
		if(!is_dir($todir)) self::dirCreate($todir);
		$list = glob($fromdir.'*');
		foreach($list as $v) {
			$path = $todir.basename($v);
			if(is_file($path) && !is_writable($path)) {
				if(DT_CHMOD) @chmod($path, DT_CHMOD);
			}
			if(is_dir($v)) {
				self::dirCopy($v, $path);
			} else {
				@copy($v, $path);
				if(DT_CHMOD) @chmod($path, DT_CHMOD);
			}
		}
		return true;
	}

	/**
	 * 目录删除
	 * @param $dir
	 * @return bool
	 */
	public static function dirDelete($dir) {
		$dir = self::dirPath($dir);
		if(!is_dir($dir)) return false;
		$dirs = array(DT_ROOT.'/admin/', DT_ROOT.'/api/', DT_CACHE.'/', DT_ROOT.'/file/', DT_ROOT.'/include/', DT_ROOT.'/lang/', DT_ROOT.'/member/', DT_ROOT.'/module/', DT_ROOT.'/extend/', DT_ROOT.'/skin/', DT_ROOT.'/template/', DT_ROOT.'/wap/');
		if(substr($dir, 0, 1) == '.' || in_array($dir, $dirs)) die("Cannot Remove System DIR $dir ");
		$list = glob($dir.'*');
		if($list) {
			foreach($list as $v) {
				is_dir($v) ? self::dirCreate($v) : @unlink($v);
			}
		}
		return @rmdir($dir);
	}

	/**
	 * 检测文件是否可写
	 * @param $file
	 * @return bool
	 */
	public static function isWritable($file) {
		if(DT_WIN) {
			if(substr($file, -1) == '/') {
				if(is_dir($file)) {
					$file = $file.'writeable-test.tmp';
					if(@$fp = fopen($file, 'a')) {
						flock($fp, LOCK_EX);
						fwrite($fp, 'OK');
						flock($fp, LOCK_UN);
						fclose($fp);
						$tmp = file_get_contents($file);
						unlink($file);
						if($tmp == 'OK') return true;
					}
					return false;
				} else {
					self::dirCreate($file);
					if(is_dir($file)) return self::isWritable($file);
					return false;
				}
			} else {
				if(@$fp = fopen($file, 'a')) {
					fclose($fp);
					return true;
				}
				return false;
			}
		} else {
			return is_writeable($file);
		}
	}

	public static function count($dir = '')	{
		return sizeof(scandir($dir)) - 2;
	}
}
<?php
/*
 * 模版编译加载类
 * @package    system
 * @author     Mark
 * @copyright  Copyright (c) 2013 ixdcw team
 * @version    $Id$
 */
class Template {

	/**
	 * 创建页面缓存模版
	 * @param string $from 模板地址
	 * @param string $to   缓存地址
	 */
	private static function _compile($from, $to) {
		$content = Template::_parse(File::get($from));
		File::put($to, $content);
	}

	/**
	 * 替换标签
	 * @param String $str
	 * @return mixed|string
	 */
	private static function _parse($str) {
		// comment
		// <!--{*这里是注释的内容*}-->
		$str = preg_replace("/[\t]*\<\!\-\-\s?\{\*(.+?)\*\}\s?\-\-\>/s", "", $str);
		// comment
		// {*这里是注释的内容*}
		$str = preg_replace("/[\t]*\{\*(.+?)\*\}/s", "", $str);
		// code
		// <!--{__CODE__}-->                    {__CODE__}
		$str = preg_replace("/\<\!\-\-\{(.+?)\}\-\-\>/s", "{\\1}", $str);
		// template
		// {template 'param1', 'param2'}        Template::show('param1', 'param2');
		$str = preg_replace("/[\t]*\{template\s+([^\}]+)\}/", "<?php Template::show(\\1);?>", $str);
		// php
		//{php echo $var;}                      echo $var;
		$str = preg_replace("/[\t]*\{php\s+(.+?)\}/", "<?php \\1?>", $str);
		// if
		// {if $b>2}                            if ($b>2) {
		$str = preg_replace("/[\t]*\{if\s+(.+?)\}/", "<?php if(\\1) { ?>", $str);
		// else
		// {else}                               } else {
		$str = preg_replace("/[\t]*\{else\}/", "<?php } else { ?>", $str);
		// elseif
		// {elseif $b>0}                        } else if ($b>0) {
		$str = preg_replace("/[\t]*\{elseif\s+(.+?)\}/", "<?php } else if(\\1) { ?>", $str);
		// else if
		// {else if $b>0}                       } else if ($b>0) {
		$str = preg_replace("/[\t]*\{else\s+if\s+(.+?)\}/", "<?php } else if(\\1) { ?>", $str);
		// endif;
		// {/if}                                }
		$str = preg_replace("/[\t]*\{\/if\}/", "<?php } ?>", $str);
		// for
		// {for $i=0 $i<5 $i++}                 for ($i=0; $i<5; $i++){
		$str = preg_replace("/[\t]*\{for\s+(\S+)\s+(\S+)\s+(\S+)\}/", "<?php  for(\\1;  \\2; \\3) { ?>", $str);
		// endfor;
		// {/for}                               }
		$str = preg_replace("/[\t]*\{\/for\}/", "<?php } ?>", $str);
		// foreach
		// {loop $a $b}                         if(is_array($a)) { foreach($a as $b) {
		$str = preg_replace("/[\t]*\{loop\s+(\S+)\s+(\S+)\}/", "<?php if(is_array(\\1)) { foreach(\\1 as \\2) { ?>", $str);
		// foreach
		// {loop $a $b $c}                      if(is_array($a)) { foreach($a as $b=> $c) {
		$str = preg_replace("/[\t]*\{loop\s+(\S+)\s+(\S+)\s+(\S+)\}/", "<?php if(is_array(\\1)) { foreach(\\1 as \\2 => \\3) { ?>", $str);
		// endforeach
		// {/loop}                              }}
		$str = preg_replace("/[\t]*\{\/loop\}/", "<?php } } ?>", $str);
		// function
		// function()                           echo function();
		$str = preg_replace("/\{([a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff]*\(([^{}]*)\))\}/", "<?php echo \\1;?>", $str);
		// 添加quote
		$str = preg_replace("/<\?php([^\?]+)\?>/es", "Template::_addquote('<?php\\1?>')", $str);
		// var
		// {$var}                               echo $var;
		$str = preg_replace("/\{(\\$[a-zA-Z_\x7f-\xff][a-zA-Z0-9_\x7f-\xff]*)\}/", "<?php echo \\1;?>", $str);
		// static method
		// Some::abc()                          echo Some::abc();
		$str = preg_replace("/\{([a-zA-Z_\x7f-\xff]*::[a-zA-Z0-9_\x7f-\xff]*\(([^{}]*)\))\}/", "<?php echo \\1;?>", $str);
		// object
		// $pn->show();                         echo $pn->show();
		$str = preg_replace("/\{(\\$[a-zA-Z_\x7f-\xff]*->[a-zA-Z0-9_\x7f-\xff]*\(([^{}]*)\))\}/", "<?php echo \\1;?>", $str);
		// field
		// $pn->field                           echo $pn->page
		$str = preg_replace("/\{(\\$[a-zA-Z_\x7f-\xff]*->[a-zA-Z0-9_\x7f-\xff]*)\}/", "<?php echo \\1;?>", $str);
		// var
		// {$var[a]}                            echo template_addquote($var['a']);
		$str = preg_replace("/\{(\\$[a-zA-Z0-9_\[\]\.\'\"\$\x7f-\xff]+)\}/es", "Template::_addquote('<?php echo \\1;?>')", $str);
		// constant
		// {WLSL}                               echo WLSL;
		$str = preg_replace("/\{([A-Z_\x7f-\xff][A-Z0-9_\x7f-\xff]*)\}/s", "<?php echo \\1;?>", $str);
		// JS
		// 'A['A']A'                            'A[A]A'
		$str = preg_replace("/\'([A-Za-z]+)\[\'([A-Za-z\.]+)\'\](.?)\'/s", "'\\1[\\2]\\3'", $str);
		// \r\n
		// \r\n                                 ''
		//	$str = preg_replace("/(\r?\n)\\1+/", "\\1", $str);
		// \t
		// \t                                   ''
		//	$str = str_replace("\t", '', $str);
		$str = "<?php defined('IN_IXDCW') or exit('Access Denied');?>" . PHP_EOL . $str;
		return $str;
	}

	/**
	 * 将模版中的[some]变为['some']
	 * @param $var
	 * @return mixed
	 */
	private static function _addquote($var) {
		return str_replace("\\\"", "\"", preg_replace("/\[([a-zA-Z0-9_\-\.\x7f-\xff]+)\]/s", "['\\1']", $var));
	}

	/**
	 * 显示模版
	 * @param string $template
	 * @param string $dir
	 */
	public static function show($template = 'index', $dir = '') {
		$to       = $dir ? DT_CACHE . '/' . $dir . '.' . $template . '.php' : DT_CACHE . '/' . $template . '.php';
		$isfileto = is_file($to);
		if ($dir) $dir = $dir . '/';
		$from = DT_ROOT . '/tpl/' . $dir . $template . '.htm';

		if (!is_file($from)) {
			exit("模版文件'{$from}'不存在!");
		}
		/*目标文件不存在 或 模版文件被更改 或 缓存文件与模版文件大小不一致  */
		if (!$isfileto || filemtime($from) > filemtime($to) || (filesize($to) == 0 && filesize($from) > 0)) {
			Template::_compile($from, $to);
		}
		extract($GLOBALS);
		include $to;
	}

	/**
	 * 获取处理过的地址
	 * @param        $template
	 * @param string $dir
	 * @return string
	 */
	public static function ob($template, $dir = '') {
		ob_start();
		Template::show($template, $dir);
		$contents = ob_get_contents();
		ob_clean();
		return $contents;
	}
}
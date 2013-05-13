<?php
/**
 * 自动加载类的函数
 * 系统函数, 并非逻辑函数
 * 系统中不可以"显"示调用
 * spl_autoload_register('_loadClass');
 *
 * @param $class
 *
 */
function _loadClass($class) {
	$sysClassFile = DT_INC . '/'.$class.'.class.php';
	if (!class_exists($class)) {
		if (file_exists($sysClassFile)) {
			require_once $sysClassFile;
		}
	}
}
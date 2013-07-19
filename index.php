<?php
include './config.inc.php';
$file = isset($_REQUEST['file']) ? strval($_REQUEST['file']) : '';
$pro  = isset($_REQUEST['project']) ? strval($_REQUEST['project']) : '';
if (!$pro)  exit('请输入项目代号!');
if (!$file) exit('请输入文件的路径!');
$dir = '';
if(strpos($file, ':')) {
	$od = explode(':', $file);
	$dir = $od[0];
	$file = $od[1];
}
define('DT_PROJECT', DT_PATH.'tpl/'.$pro.'/');
$pr = DT_PROJECT;
define('DT_PROJECT_PATH', DT_ROOT.'/tpl/'.$pro.'/');

if ($dir) {
	Template::show($file, $dir);
} else {
	Template::show($file);
}
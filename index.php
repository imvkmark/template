<?php
include './config.inc.php';
$file = isset($_REQUEST['file']) ? strval($_REQUEST['file']) : '';
if (!$file) exit('请输入文件的路径!');
$dir = '';
if(strpos($file, ':')) {
	$od = explode(':', $file);
	$dir = $od[0];
	$file = $od[1];
}

if ($dir) {
	Template::show($file, $dir);
} else {
	Template::show($file);
}
<?php
//error_reporting(0);
define('DT_ROOT', dirname(__FILE__));
define('DT_INC', DT_ROOT.'/include');

// syssettings
define('DT_CHMOD', 0777);
define('DT_WIN', true);
define('IN_IXDCW', true);

// settings
define('DT_PATH', 'http://www.www.cc/template/');
define('DT_CACHE', DT_ROOT.'/cache');
define('DT_CSS', DT_PATH.'static/css/');
define('DT_SCRIPT', DT_PATH.'static/script/');
define('DT_LESS', DT_PATH.'static/less/');

include DT_INC . '/global.func.php';

spl_autoload_register('_loadClass');
<?php defined('IN_IXDCW') or exit('Access Denied');?>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title><?php echo $siteTitle;?></title>
	<link rel="stylesheet/less" type="text/css" href="<?php echo DT_PROJECT;?>css/_init.less">
	<script type="text/javascript">
	less = {
		env: "development", // or "production"
		async: false,       // load imports async
		poll: 1000,         // when in watch mode, time in ms between polls
	};
	</script>
	<script src="<?php echo DT_SCRIPT;?>less.js"></script>
	<script src="<?php echo DT_SCRIPT;?>jquery-1.9.1.min.js"></script>
	<!--[if !IE]><!-->
	<script type="text/javascript">
	less.watch();
	</script>
	<!--<![endif]-->
</head>
<body>

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
<div class="layout header">
	<div class="top">
		<div class="login fl">
			<a href="#">立即登录</a>|
			<a href="#">加入我们</a>
		</div>
		<div class="connectLogin fr">
			<a href="#"><img src="<?php echo DT_PROJECT;?>images/topQQ.jpg" alt="#"></a>
			<a href="#"><img src="<?php echo DT_PROJECT;?>images/topSina.jpg" alt="#"></a>
		</div>
	</div>
</div>
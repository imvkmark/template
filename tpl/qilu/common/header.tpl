<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>{$siteTitle}</title>
	<link rel="stylesheet/less" type="text/css" href="{DT_PROJECT}css/_init.less">
	<script type="text/javascript">
	less = {
		env: "development",
		async: false,
		poll: 1000
	};
	</script>
	<script src="{DT_SCRIPT}less.js"></script>
	<script src="{DT_SCRIPT}jquery-1.9.1.min.js"></script>
	<!--[if !IE]><!-->
	<script type="text/javascript">
	less.watch();
	</script>
	<!--<![endif]-->
</head>
<body>
<div class="layout header">
	<div class="top">
		<a href="#">立即登录</a>|
		<a href="#">加入我们</a>
		<a href="#" class="fr"><img src="{DT_PROJECT}images/topQQ.jpg" alt="#"></a>
		<a href="#" class="fr"><img src="{DT_PROJECT}images/topSina.jpg" alt="#"></a>
	</div>
	<div class="sdinfoTop">
	{*<iframe src="http://www.sdinfo.net/include/indexhead1.htm" frameborder="0" height="65" width="1000"></iframe>*}
	</div>
	<div class="sdinfo fc">
		<div class="logo">
			<a href="#"><img src="{DT_PROJECT}images/logo.jpg" alt=""></a>
		</div>
		<div class="search">
			<form action="post" name="search">
				<ul>
					<li class="sel">全部</li>
					<li><input type="text" name="kw" class="searchInput"></li>
					<li><a class="searchButton" href="javascript:document.form[search].submit()">搜索</a></li>
				</ul>
			</form>
		</div>
		<div class="hot">
			<strong>热门搜索</strong>:
			<a href="#">西游记</a>
			<a href="#">西游记</a>
			<a href="#">西游记</a>
		</div>
		<div class="fav">
			<a href="#">设为首页</a>
			<a href="#">收藏本站</a>
		</div>
	</div>
</div>
<div class="layout">
	<ul class="nav">
		<li><a href="#">首页</a></li>
		<li class="line"></li>
		<li><a href="#">资讯评测</a></li>
		<li class="line"></li>
		<li><a href="#">商家行情</a></li>
		<li class="line"></li>
		<li><a href="#">配件导购</a></li>
		<li class="line"></li>
		<li><a href="#">资费套餐</a></li>
		<li class="line"></li>
		<li><a href="#">商家优惠</a></li>
		<li class="line"></li>
		<li><a href="#">交易平台</a></li>
		<li class="line"></li>
		<li><a href="#">通讯应用</a></li>
		<li class="line"></li>
		<li><a href="#">通讯交流</a></li>
	</ul>
</div>
	
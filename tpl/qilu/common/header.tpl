<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>{$siteTitle}</title>
	<link rel="stylesheet/less" type="text/css" href="{DT_PROJECT}css/_init.less">
	<script type="text/javascript">
	less = {
		env: "development", // or "production"
		async: false,       // load imports async
		poll: 1000         // when in watch mode, time in ms between polls
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
	<div class="qilu">
		<h1 class="logo">
			<a href="#"><img src="{DT_PROJECT}images/logoQilu.jpg" alt="#"></a>
		</h1>
		<div class="menu">
			<div class="iContent">
				<p>
					<a href="#"><strong>新闻</strong></a>
					<a href="#">山东</a>
					<a href="#">社会</a>
					<a href="#">图库</a>
				</p>
				<p>
					<a href="#"><strong>论坛</strong></a>
					<a href="#">摄影</a>
					<a href="#">动漫</a>
					<a href="#"><i>星座</i></a>
				</p>
				<span class="iLine"></span>
			</div>
			<div class="iContent">
				<p>
					<a href="#"><strong>娱乐</strong></a>
					<a href="#"><i>炫图</i></a>
					<a href="#">音乐</a>
					<a href="#"><i>星尙</i></a>
				</p>
				<p>
					<a href="#"><strong>游戏</strong></a>
					<a href="#">战网</a>
					<a href="#">电影</a>
					<a href="#">热剧</a>
				</p>
				<span class="iLine"></span>
			</div>
			<div class="iContent">
				<p>
					<a href="#"><strong>生活</strong></a>
					<a href="#">二手</a>
					<a href="#">情感</a>
					<a href="#"><i>健康</i></a>
				</p>
				<p>
					<a href="#"><strong>教育</strong></a>
					<a href="#">人才</a>
					<a href="#">名师</a>
					<a href="#"><i>英语</i></a>
				</p>
				<span class="iLine"></span>
			</div>
			<div class="iContent">
				<p>
					<a href="#"><strong>财经</strong></a>
					<a href="#"><i>汽车</i></a>
					<a href="#"><i>商城</i></a>
				</p>
				<p>
					<a href="#"><strong><i>旅游</i></strong></a>
					<a href="#"><strong><i>礼品</i></strong></a>
					<a href="#">杀毒</a>
				</p>
				<span class="iLine"></span>
			</div>
			<div class="iContent">
				<p>
					<a href="#"><strong>通信</strong></a>
					<a href="#">网厅</a>
				</p>
				<p>
					<a href="#"><strong>宽频</strong></a>
					<a href="#">视频</a>
				</p>
				<span class="iLine"></span>
			</div>
			<div class="iContent">
				<p>
					<a href="#"><strong>3G 版</strong></a>
				</p>
				<p>
					<a href="#"><strong>如意网</strong></a>
				</p>
				<span class="iLine" style="visibility: hidden;"></span>
			</div>
		</div>
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
	
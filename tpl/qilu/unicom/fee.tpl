<div class="layout unicomList clear">
	<div class="col-list-left">
		<div class="searchList">
			<div class="items clear">
				{for $i=1 $i<=12 $i++}
				<div class="item">
					<a class="img" href="#"><img src="{R::phoneImg()}" alt="#"></a>
					<a class="title" href="#">{R::getTitle(1, 60)}<strong>{R::getTitle(1, 13)}</strong></a>
					<p class="price">
						<span class="old">￥:1299</span>
						<span class="new">￥:999</span>
						<img src="{DT_PROJECT}images/imgUnicomPremium.jpg" alt="#">
					</p>
				</div>
				{/for}
			</div>
			{template 'page', 'common'}
		</div>
	</div>
	<div class="col-list-right">
		<div class="adSide">
			<img src="{DT_PROJECT}images/imgSideA.jpg" alt="#">
		</div>
		<div class="hotPhone">
			<h3 class="titleGrey">
				手机热门产品排行
			</h3>
			<div class="wrapGrey">
				<ul class="listNum">
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
				</ul>
			</div>
		</div>
		<div class="netHotPost">
			<h3 class="titleGrey">
				网友交流热帖
			</h3>
			<div class="wrapGrey">
				<ul class="listBlackDot">
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
					<li><a href="#">{R::getTitle(1)}</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
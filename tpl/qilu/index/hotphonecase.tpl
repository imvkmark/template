<div class="layout">
	<div class="catTitle">
		<span class="tCat">
			热销手机配件
		</span>
		<span class="tEng">
			HOT PHONE CASE
		</span>
		<div class="cats">
			<a href="#">三星</a>|
			<a href="#">小米</a>|
			<a href="#">魅族</a>|
			<a href="#">中兴</a>|
			<a href="#">联想</a>
		</div>
	</div>
</div>
<div class="layout">
	<div class="hotphonecase mt8 clear">
		<div class="col-main-left">
			<div class="iContent clear">
				<div class="col-hotcaseinfo">
					<div class="focusInfo">
						<h3 class="infoTitle"><a href="#">{R::getTitle(1)}</a></h3>
						<p>{R::getDesc(160)}<a href="#" class="more">查看详细</a></p>
					</div>
					<div class="hotcaselist">
						<ul class="listBigCat">
							<li><span class="iCat"><a href="#">资讯</a></span><a href="#">{R::getTitle(1)}</a></li>
							<li><span class="iCat"><a href="#">资讯</a></span><a href="#">{R::getTitle(1)}</a></li>
						</ul>
					</div>
					<div class="hotcaselist">
						<ul class="listBigCat">
							<li><span class="iCat"><a href="#">资讯</a></span><a href="#">{R::getTitle(1)}</a></li>
							<li><span class="iCat"><a href="#">资讯</a></span><a href="#">{R::getTitle(1)}</a></li>
						</ul>
					</div>
					<div class="hotcaselist">
						<ul class="listBigCat">
							<li><span class="iCat"><a href="#">资讯</a></span><a href="#">{R::getTitle(1)}</a></li>
							<li><span class="iCat"><a href="#">资讯</a></span><a href="#">{R::getTitle(1)}</a></li>
						</ul>
					</div>
				</div>
				<div class="col-hotcasecompare">
					<div class="iContent">
						<ul class="listBignum">
							<li>
								<div class="titleWrapper">
									<a class="title" href="#">{R::getTitle(1)}</a>
									<span class="intro">{R::getDesc(100)}</span>
								</div>
								<img src="{DT_PROJECT}images/imgHotPhone.jpg" alt="#">
							</li>
							<li>
								<div class="titleWrapper">
									<a class="title" href="#">{R::getTitle(1)}</a>
									<span class="intro">{R::getDesc(100)}</span>
								</div>
								<img src="{DT_PROJECT}images/imgHotPhone.jpg" alt="#">
							</li>
							<li>
								<div class="titleWrapper">
									<a class="title" href="#">{R::getTitle(1)}</a>
									<span class="intro">{R::getDesc(100)}</span>
								</div>
								<img src="{DT_PROJECT}images/imgHotPhone.jpg" alt="#">
							</li>
							<li>
								<div class="titleWrapper">
									<a class="title" href="#">{R::getTitle(1)}</a>
									<span class="intro">{R::getDesc(100)}</span>
								</div>
								<img src="{DT_PROJECT}images/imgHotPhone.jpg" alt="#">
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="col-main-right">
			<h3 class="titleGrey">手机推荐排行榜</h3>
			<div class="wrapGrey clear">
				<p class="caseTab">
					<a href="#">热门推荐</a>
					<a href="#" class="active">新品推荐</a>
				</p>
				<div class="caseSuggest clear">
					{for $i=0 $i<=3 $i++}
						<div class="suggestItem">
							<div class="imgWrapper">
								<img src="{DT_PROJECT}images/imgHotPhone.jpg" alt="#">
							</div>
							<a class="suggestTitle" href="">眼镜蛇耳机</a>
							<span class="suggestPrice">￥30.00</span>
						</div>
					{/for}
				</div>
			</div>
		</div>
	</div>
</div>
<div class="layout">
	<div class="titleTab"><span>综述</span></div>
</div>
<div class="layout appDetail clear">
	<div class="col-app-left">
		<div class="mainIntro">
			<div class="introWrap clear">
				<div class="introImg">
					<img src="{R::appImg()}" alt="#">
					<span class="appIntroIcon appIntroIconFree"></span>
					<a class="title" href="#">迷你冲刺</a>
				</div>
				<div class="introDetail">
					<h2>迷你冲刺</h2>
					<h3>介绍</h3>
					<p>{R::getDesc(300)}</p>
					<span class="score">综合评分: <img src="{DT_PROJECT}images/imgStar4.jpg" alt="#"></span>
					<p><a class="dowload" href="#"></a><a class="downPhone" href=""></a></p>
				</div>
			</div>
		</div>
		<div class="picList">
			<div class="appTitle">
				<h3>应用截图</h3>
			</div>
			<div class="detail wrapGrey">
				<div class="nav clear">
					<a class="prev" href="#"></a>
					<h4>迷你冲刺</h4>
					<a class="next" href="#"></a>
				</div>
				<div class="imgSlider">
					<div class="imgWrapper">
						<img src="{DT_PROJECT}images/imgHotPhone.jpg" alt="">
					</div>
					<ul class="imgSlideThumb clear">
						<li><a href="#"><img src="{DT_PROJECT}images/imgHotPhone.jpg" alt=""></a></li>
						<li><a href="#"><img src="{DT_PROJECT}images/imgHotPhone.jpg" alt=""></a></li>
						<li><a href="#"><img src="{DT_PROJECT}images/imgHotPhone.jpg" alt=""></a></li>
						<li><a href="#"><img src="{DT_PROJECT}images/imgHotPhone.jpg" alt=""></a></li>
						<li><a href="#"><img src="{DT_PROJECT}images/imgHotPhone.jpg" alt=""></a></li>
					</ul>
				</div>
				<p><a class="download" href=""></a></p>
			</div>
		</div>
		<div class="appComment">
			<div class="appTitle">
				<h3>应用点评</h3>
			</div>
			<div class="appSubmit wrapGrey">
				<dl class="clear">
					<dt>登录名</dt>
					<dd><input type="text"> <label class="pass" for="pass">密码</label>
						<input type="text" id="pass"> <label for="anonymous" class="anonymous"> 匿名发表 </label><input id="anonymous" type="checkbox"><a class="quickReg" href="#">快速注册</a>
					</dd>
				</dl>
				<dl class="clear">
					<dt>推荐指数</dt>
					<dd>
						<img src="{DT_PROJECT}images/imgStar4.jpg" alt="#">
					</dd>
				</dl>
				<dl class="clear">
					<dt>评论内容:</dt>
					<dd>
						<textarea name="comment" id="" cols="30" rows="10"></textarea>
					</dd>
				</dl>
				<dl class="clear">
					<dt>验证码</dt>
					<dd>
						<input type="text" name="#" size="4" id=""/>
						<img src="{DT_PROJECT}images/captcha.jpg" alt="#">
					</dd>
				</dl>
				<dl class="clear">
					<dt>&nbsp;</dt>
					<dd><a class="appSubmitBtn" href=""></a></dd>
				</dl>
			</div>
		</div>
		<div class="appUserLike">
			<div class="appTitle">
				<h3>喜欢该应用的用户还喜欢</h3>
			</div>
			<div class="items wrapGrey clear">
				{for $i=1 $i<=12 $i++}
				<a class="item" href="">
					<img src="{R::appImg()}" alt="">
					<span>快刀切水果</span>
				</a>
				{/for}
			</div>
		</div>
	</div>
	<div class="col-app-right">
		<div class="side">
			<div class="appIntro">
				<h3 class="titleGrey">应用信息</h3>
				<div class="wrapGrey iContent">
					<img src="{R::appImg()}" class="appImg" alt="#">
					<p class="appInfo">
						应用价格:免费 <br>
						应用价格:免费 <br>
						应用价格:免费 <br>
						应用价格: <a href="#">免费</a> <br>
						应用价格:免费 <br>
					</p>
				</div>
			</div>
			<div class="appSideList">
				<h3 class="titleGrey">游戏应用下载排行</h3>
				<div class="wrapGrey iContent">
					{for $i=1 $i<=6 $i++}
					<div class="item">
						<img class="appImg" src="{R::appImg()}" alt="#">
						<h4><a href="#">{R::getTitle(1)}</a></h4>
						<span>评分: <img class="star" src="{DT_PROJECT}images/imgAppStar4.jpg" alt="#"></span>
						<span>下载数量:32333</span>
					</div>
					{/for}
				</div>
			</div>
			<div class="appSideList">
				<h3 class="titleGrey">应用下载排行</h3>
				<div class="wrapGrey iContent">
					{for $i=1 $i<=6 $i++}
						<div class="item">
							<img class="appImg" src="{R::appImg()}" alt="#">
							<h4><a href="#">{R::getTitle(1)}</a></h4>
							<span>评分: <img class="star" src="{DT_PROJECT}images/imgAppStar4.jpg" alt="#"></span>
							<span>类别: <a href="#">游戏</a></span>
						</div>
					{/for}
				</div>
			</div>
		</div>
	</div>
</div>
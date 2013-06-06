<div class="layout">
	<div class="titleTab"><span>综述</span></div>
</div>
<div class="layout clear">
	<div class="col-app-left">
		<div class="mainIntro">
			<div class="introImg">
				<img src="{R::appImg()}" alt="#">
				<span class="appIntroIcon appIntroIconFree"></span>
			</div>
			<div class="introDetail">
				<h2>迷你冲刺</h2>
				<h3>介绍</h3>
				<p>{R::getDesc(300)}</p>
				<span class="score">综合评分: <img src="{DT_PROJECT}images/imgStar4.jpg" alt="#"></span>
				<p><a class="dowload" href="#"></a><a class="downPhone" href=""></a></p>
			</div>
		</div>
		<div class="picList">
			<div class="appTitle">
				<h3>应用截图</h3>
			</div>
			<div class="detail">
				<p class="nav">
					<a class="prev" href="#"></a>
					<a class="next" href="#"></a>
				</p>
				<h4>迷你冲刺</h4>
				<div class="imgSlider">
					<div class="imgWrapper">
						
					</div>
					<ul class="imgSlideThumb">
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
			<div class="appSubmit">
				<dl>
					<dt>登录名</dt>
					<dd><input type="text"> <label class="pass" for="#">密码</label>
						<input type="text"> <input type="checkbox"> 匿名发表 <a class="quickReg" href="#">快速注册</a>
					</dd>
				</dl>
				<dl>
					<dt>推荐指数</dt>
					<dd>
						<img src="{DT_PROJECT}images/imgStar4.jpg" alt="#">
					</dd>
				</dl>
				<dl>
					<dt>评论内容:</dt>
					<dd>
						<textarea name="comment" id="" cols="30" rows="10"></textarea>
					</dd>
				</dl>
				<dl>
					<dt>验证码</dt>
					<dd>
						<input type="text" name="#" id=""/>
						<img src="{DT_PROJECT}images/captcha.jpg" alt="#">
					</dd>
				</dl>
				<dl>
					<dt></dt>
					<dd><a class="appSubmitBtn" href=""></a></dd>
				</dl>
			</div>
		</div>
		<div class="appUserLike">
			<div class="appTitle">
				<h3>喜欢该应用的用户还喜欢</h3>
			</div>
			<div class="items">
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
			<h3 class="titleGrey"></h3>
			<div class="wrapGrey">
				<div class="appIntro">
					<img src="{R::appImg()}" alt="#">
					<p class="appInfo">
						应用价格:免费 <br>
						应用价格:免费 <br>
						应用价格:免费 <br>
						应用价格: <a href="#">免费</a> <br>
						应用价格:免费 <br>
					</p>
				</div>
			</div>

		</div>

	</div>
</div>
{template 'header', 'common'}
<div class="banner">

</div>
<div class="layout idxView clear">
	<div class="intro fl">
		<div class="pr3">
			<h3 class="sprite sprite-intro">
				<a class="sprite sprite-more fr" href="#">&nbsp;</a>
			</h3>
			<div class="sprite sprite-introContent mt8">
				<div class="pd10">
					some content
				</div>
			</div>
		</div>
	</div>
	<div class="news fl">
		<div class="pr3">
			<h3 class="sprite sprite-news">
				<a class="sprite sprite-more fr" href="#">&nbsp;</a>
			</h3>
			<div class="mt8 content pd10">
				<ul class="listM">
					<li><span class="time">2013-3-9</span><a href="#">123123124242334</a></li>
					<li><span class="time">2013-3-9</span><a href="#">123123124242334</a></li>
					<li><span class="time">2013-3-9</span><a href="#">123123124242334</a></li>
					<li><span class="time">2013-3-9</span><a href="#">123123124242334</a></li>
					<li><span class="time">2013-3-9</span><a href="#">123123124242334</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="contact fr">
		<h3>
		</h3>
		<div class="mt8">
			<a class="sprite sprite-contact" href="#"></a>
			<a class="sprite sprite-honor" href="#"></a>
		</div>
	</div>
</div>
<div class="layout idxProduct">
	<h3 class="sprite sprite-product">
		<a class="sprite sprite-more fr" href="#">&nbsp;</a>
	</h3>
	<div class="sprite content mt8 slideBox" id="slideBox">
		<span id="slideLeft" class="slideLeft">&nbsp;</span>
		<span id="slideRight" class="slideRight">&nbsp;</span>
		<div id="slideUl"  class="slideUl">
			<ul>
				<li><a href="#"><img src="{DT_PROJECT}images/imgProject.jpg" alt="a"></a></li>
				<li><a href="#"><img src="{DT_PROJECT}images/imgProject.jpg" alt="a"></a></li>
				<li><a href="#"><img src="{DT_PROJECT}images/imgProject.jpg" alt="a"></a></li>
				<li><a href="#"><img src="{DT_PROJECT}images/imgProject.jpg" alt="a"></a></li>
				<li><a href="#"><img src="{DT_PROJECT}images/imgProject.jpg" alt="a"></a></li>
				<li><a href="#"><img src="{DT_PROJECT}images/imgProject.jpg" alt="a"></a></li>
				<li><a href="#"><img src="{DT_PROJECT}images/imgProject.jpg" alt="a"></a></li>
				<li><a href="#"><img src="{DT_PROJECT}images/imgProject.jpg" alt="a"></a></li>
				<li><a href="#"><img src="{DT_PROJECT}images/imgProject.jpg" alt="a"></a></li>
			</ul>
		</div>
	</div>
</div>
<script>
	seajs.use(['slide'], function(){
		$("#slideUl").slide({
			li_size:1, //每次滚动li个数,默认一屏
			speed:2000, //速度：数值越大，速度越慢（毫秒）默认500
			timer:4000, //不需要自动滚动删掉该参数
			li_w:119, //每个li的宽度（包括border,margin,padding,都要算进去）
			left:"slideLeft",
			right:"slideRight"
		});
	})
</script>
{template 'footer', 'common'}
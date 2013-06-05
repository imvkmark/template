<div class="layout productCommon productPiclist clear">
	<div class="col-product-left">
		<div class="commonBBox">
			<h3 class="title">图片分类</h3>
			<div>
				<dl class="clear">
					<dt>图片分类:</dt>
					<dd>
						<a href="#">整体分类<span>(123)</span></a>
						<a href="#">整体分类<span>(123)</span></a>
						<a href="#">整体分类<span>(123)</span></a>
						<a href="#">整体分类<span>(123)</span></a>
					</dd>
				</dl>
				<dl class="clear">
					<dt>图片分类:</dt>
					<dd>
						<a href="#">整体分类<span>(123)</span></a>
						<a href="#">整体分类<span>(123)</span></a>
						<a href="#">整体分类<span>(123)</span></a>
						<a href="#">整体分类<span>(123)</span></a>
					</dd>
				</dl>
			</div>
		</div>
		<div class="commonTips">
			价格仅供参考, 购买时以当地实际销售产品为主
		</div>
		<div class="commonOBox">
			<h3 class="title">三星GS 3 </h3>
			<div class="items clear">
				<p class="desc">共<strong>X</strong>张图片</p>
				<a href="">
					<img src="{R::picImg()}" alt="">
					<span>{R::getTitle(1)}</span>
				</a>
				<a href="">
					<img src="{R::picImg()}" alt="">
					<span>{R::getTitle(1)}</span>
				</a>
				<a href="">
					<img src="{R::picImg()}" alt="">
					<span>{R::getTitle(1)}</span>
				</a>
				<a href="">
					<img src="{R::picImg()}" alt="">
					<span>{R::getTitle(1)}</span>
				</a>
			</div>
			<p class="more"><a href="#">查看更多</a></p>
			<p class="more"><a href="#" class="btn">更多外观图片&gt;&gt;</a></p>
		</div>
		{template 'page', 'common'}
	</div>
	<div class="col-product-right">
		{template 'side-intro', 'product'}
		{template 'side-hot', 'product'}
		{template 'side-suggest', 'product'}
		{template 'side-ad', 'product'}
		{template 'side-hot', 'product'}
		{template 'side-viewother', 'product'}
	</div>
</div>
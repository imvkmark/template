template
========

简单的模版系统

模版配置
-------
	DT_PATH
		http://127.0.0.1/template/
		网站访问路径
	DT_CACHE
		缓存文件的路径,保证存在并且可写
	DT_CSS
		CSS的文件路径
	DT_SCRIPT
		脚本文件路径


模板语法
----------
	{template 'index'}
		- 加载模版下根目录下的index文件并解析
	{template 'header', 'common'}
		 - 加载common 文件夹下的 header 文件
	{$var}
		输出变量
	{DT_PATH}
		输出常量
		DT_PATH   输出URL
		DT_CSS    输出CSS目录
		DT_SCRIPT 输出脚本目录

模版访问方法
----------

	使用 {DT_PATH}?file=_smp 来访问tpl/目录下的html文件, 文件会自动编译模版语法
	{DT_PATH} 为访问地址
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="yznu.holiday.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>书籍详情</title>
<link href="style1.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css"
	media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
</head>
<%
	UserInfoBean user = (UserInfoBean) session.getAttribute("user");
%>
<%
	String path = request.getContextPath();
%>
<body class="portfolio pngfix">
	<div id="header">
		<div class="container">
			<a href="index.html" id="logo"><img src="images/logo.png"
				alt="Company Logo" /></a>
			<div class="navigation">
				<ul>
					<li><a href="userhome.jsp">主页</a>
						<div class="clear"></div></li>
					<li class="active"><a href="#">图书分类</a>
						<div class="clear"></div>
						<ul class="subnavigation">
							<li><a href="#" data-value="cat_1">亲子教育</a></li>
							<li><a href="#" data-value="cat_2">传记</a></li>
							<li><a href="#" data-value="cat_3">小说</a></li>
							<li><a href="#" data-value="cat_4">文学</a></li>
							<li><a href="#" data-value="cat_5">管理</a></li>
							<li><a href="#" data-value="cat_6">历史</a></li>
							<li><a href="#" data-value="cat_7">成功励志</a></li>
							<li><a href="#" data-value="cat_8">青春文学</a></li>
							<li><a href="#" data-value="cat_9">哲学宗教</a></li>
						</ul></li>
					<li><a href="donatebook.jsp">图书捐赠</a>
						<div class="clear"></div></li>
					<li><a href="UserInfoServlet">个人信息</a></li>
					<li><a href="userabout.jsp">关于</a>
						<div class="clear"></div></li>
					<li><a href="contact.jsp">联系</a>
						<div class="clear"></div></li>
						<li><a href="LogoutServlet">退出登录</a>
						<div class="clear"></div></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="intro">
		<div id="top"></div>
		<div class="container">
			<h2>图书分类</h2>
			<div class="search">
				<form action="ReaderSearchServlet">
					<fieldset>
						<input type="text" name="search" value="搜索图书"/> 
						<input type="submit" name="submit" value="" />
					</fieldset>
				</form>
				<div class="clear"></div>
			</div>
			<a class="login"><%=user.getUname() %></a>
			<div class="clear"></div>
		</div>
	</div>
	<div class="container">
		<div id="main">
			<div class="row">
				<div class="span12">
					<ul class="subnavigation">
						<li><a href="#" data-value="all">所有</a></li>
						<li><a href="#" data-value="cat_1">亲子教育</a></li>
						<li><a href="#" data-value="cat_2">传记</a></li>
						<li><a href="#" data-value="cat_3">小说</a></a></li>
						<li><a href="#" data-value="cat_4">文学</a></li>
						<li><a href="#" data-value="cat_5">管理</a></li>
						<li><a href="#" data-value="cat_6">历史</a></li>
						<li><a href="#" data-value="cat_7">成功励志</a></li>
						<li><a href="#" data-value="cat_8">青春文学</a></li>
						<li><a href="#" data-value="cat_9">哲学宗教</a></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="separator4 span12"></div>
			</div>
			<div class="row">
				<div class="span12">
					<div class="gallery gallery1">
						<div class="item cat_1" data-id="item1">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/9.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">孩子你要学会自己长大</a>
							</h4>
							<p>作者：崔宇</p>
							<p>出版社：新世界出版社</p>
							<p>出版时间：2014-09-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787510451102">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_4" data-id="item2">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/10.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">目送</a>
							</h4>
							<p>作者：龙应台</p>
							<p>出版社：广西师范大学出版社</p>
							<p>出版时间：2014-01-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787108032911">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_3" data-id="item3">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/11.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">最遥远的距离</a>
							</h4>
							<p>作者：张小娴</p>
							<p>出版社：北京十月文艺出版社</p>
							<p>出版时间：2015-01-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787530212967">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_8" data-id="item4">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/1.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">当冬夜渐暖</a>
							</h4>

							<p>作者：鹿鹿安著</p>
							<p>出版社：湖南少年儿童出版社</p>
							<p>出版时间：2014-10-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787556202058">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_5" data-id="item4">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/20.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">我的团队凭什么</a>
							</h4>

							<p>作者：张和悦</p>
							<p>出版社：北方妇女儿童出版社</p>
							<p>出版时间：2015-01-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787538586565">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_1" data-id="item5">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/12.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">孩子，你的情绪我在乎</a>
							</h4>
							<p>作者：约翰戈特曼，崔成爱，赵碧</p>
							<p>出版社：沈阳出版社</p>
							<p>出版时间：2011-10-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787544147323">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_4" data-id="item2">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/13.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">青春</a>
							</h4>
							<p>作者：韩寒</p>
							<p>出版社：湖南人民出版社</p>
							<p>出版时间：2011-10-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787201078861">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_8" data-id="item4">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/2.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">你是最好的自己</a>
							</h4>

							<p>作者：杨杨，张皓宸</p>
							<p>出版社：湖南文艺出版社</p>
							<p>出版时间：2014-03-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787540466145">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_3" data-id="item7">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/14.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">泰国异闻录</a>
							</h4>
							<p>作者：羊行屮</p>
							<p>出版社：北京时代华文书局有限公司</p>
							<p>出版时间：2014-5-1</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787807693925">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_5" data-id="item8">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/19.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">赢在移动端</a>
							</h4>
							<p>作者：卖家</p>
							<p>出版社：浙江大学出版社</p>
							<p>出版时间：2014-10-1</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787308138789">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_6" data-id="item10">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/26.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">世界简史</a>
							</h4>
							<p>作者：尼尔·麦格雷戈</p>
							<p>出版社：新星出版社</p>
							<p>出版时间：2013-11-05</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787513313087">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_8" data-id="item4">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/3.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">愿风载尘</a>
							</h4>

							<p>作者：郭敬明</p>
							<p>出版社：长江文艺出版社</p>
							<p>出版时间：2013-12-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787535451521">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>

						<div class="item cat_7" data-id="item10">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/27.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">礼物</a>
							</h4>
							<p>作者：（美）斯宾塞·约翰逊 著</p>
							<p>出版社：南海出版社</p>
							<p>出版时间：2013-02-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787544264693">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_1" data-id="item9">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/16.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">内向孩子的潜在优势</a>
							</h4>
							<p>作者：（美）马蒂·兰妮</p>
							<p>出版社：北方妇女儿童出版社</p>
							<p>出版时间：2011-9-1</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787538558265">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_8" data-id="item4">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/4.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">南极姑娘</a>
							</h4>

							<p>作者：陈谌</p>
							<p>出版社：北京联合出版公司</p>
							<p>出版时间：2014-12-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787550239647">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>

						<div class="item cat_4" data-id="item10">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/17.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">乖，摸摸头</a>
							</h4>
							<p>作者：大冰</p>
							<p>出版社：湖南文艺出版社</p>
							<p>出版时间：2014-10-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787540468798">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_4" data-id="item10">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/33.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">在这复杂的世界里</a>
							</h4>
							<p>作者：一个工作室主编 韩寒监制</p>
							<p>出版社：浙江文艺出版社</p>
							<p>出版时间：2014-12-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787533940645">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_6" data-id="item10">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/25.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">耶路撒冷三千年</a>
							</h4>
							<p>作者：[英]西蒙·蒙蒂菲奥里</p>
							<p>出版社：民主与建设出版社</p>
							<p>出版时间：2015-01-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787513903509">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_4" data-id="item10">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/34.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">不曾走过，怎会懂得</a>
							</h4>
							<p>作者：[美] 安娜·昆德兰 徐力为译</p>
							<p>出版社：吉林文史出版社</p>
							<p>出版时间：2013-06-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787547215593">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_7" data-id="item10">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/28.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">高情商生长</a>
							</h4>
							<p>作者：杨文宇 李鹏</p>
							<p>出版社：现代出版社</p>
							<p>出版时间：2014-11-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787514329179">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_3" data-id="item11">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/18.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">大江东去</a>
							</h4>
							<p>作者：阿耐</p>
							<p>出版社：北京联合出版社</p>
							<p>出版时间：2014-07-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787550230552">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_5" data-id="item12">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/35.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">慢生活，快生意</a>
							</h4>
							<p>作者：刘琼雄 方建华</p>
							<p>出版社：中信出版社</p>
							<p>出版时间：2015-01-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787508648613">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_2" data-id="item12">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/24.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">马云正传</a>
							</h4>
							<p>作者：刘世英 彭征</p>
							<p>出版社：南方童出版社</p>
							<p>出版时间：2014-07-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787550119222">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_5" data-id="item12">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/15.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">大脑拒绝不了的销售术</a>
							</h4>
							<p>作者：任锡源</p>
							<p>出版社：北方妇女儿童出版社</p>
							<p>出版时间：2014-07-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787538584783">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_7" data-id="item10">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/29.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">绝对达成</a>
							</h4>
							<p>作者：(日) 横山信弘 著</p>
							<p>出版社：同心出版社</p>
							<p>出版时间：2015-02-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787547713938">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_2" data-id="item12">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/23.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">我的价值观</a>
							</h4>
							<p>作者：潘石屹</p>
							<p>出版社：江苏文艺出版社</p>
							<p>出版时间：2013-01-01</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="BorrowServlet?isbn=9787071111111">借阅</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_1" data-id="item12">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/36.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">亲子教育类</a>
							</h4>
							<p>作者：</p>
							<p>出版社：</p>
							<p>出版时间：</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="TypeBooksServlet?type=1001">更多</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_2" data-id="item12">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/36.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">传记类</a>
							</h4>
							<p>作者：</p>
							<p>出版社：</p>
							<p>出版时间：</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="TypeBooksServlet?type=1002">更多</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_3" data-id="item12">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/36.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">小说类</a>
							</h4>
							<p>作者：</p>
							<p>出版社：</p>
							<p>出版时间：</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="TypeBooksServlet?type=1003">更多</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_4" data-id="item12">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/36.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">文学类</a>
							</h4>
							<p>作者：</p>
							<p>出版社：</p>
							<p>出版时间：</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="TypeBooksServlet?type=1004">更多</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_5" data-id="item12">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/36.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">管理类</a>
							</h4>
							<p>作者：</p>
							<p>出版社：</p>
							<p>出版时间：</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="TypeBooksServlet?type=1005">更多</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_6" data-id="item12">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/36.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">历史类</a>
							</h4>
							<p>作者：</p>
							<p>出版社：</p>
							<p>出版时间：</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="TypeBooksServlet?type=1006">更多</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_7" data-id="item12">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/36.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">成功励志</a>
							</h4>
							<p>作者：</p>
							<p>出版社：</p>
							<p>出版时间：</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="TypeBooksServlet?type=1007">更多</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_8" data-id="item12">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/36.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">青春文学</a>
							</h4>
							<p>作者：</p>
							<p>出版社：</p>
							<p>出版时间：</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="TypeBooksServlet?type=1008">更多</a>
							</div>
							<div class="count hidden">1</div>
						</div>
						<div class="item cat_9" data-id="item12">
							<div class="item_image_wrap">
								<a class="item_image"><img class="round_image"
									src="content/images/1-4/36.jpg" /></a>
							</div>
							<h4>
								<a href="portfolio_open.html">哲学宗教</a>
							</h4>
							<p>作者：</p>
							<p>出版社：</p>
							<p>出版时间：</p>
							<div class="button button_shadow">
								<a class="button1 button_arrow_right"
									href="TypeBooksServlet?type=1009">更多</a>
							</div>
							<div class="count hidden">1</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
	<br/>
		<div class="container">
			<div class="foot">
                    <ul class="social_icons">
                        <li><img src="images/social_facebook_hover.png" alt="facebook" class="hover" /></li>
                        <li><img src="images/social_twitter_hover.png" alt="twitter" class="hover" /></li>
                        <li><img src="images/social_google_hover.png" alt="google" class="hover" /></li>
                        <li><img src="images/social_lastfm_hover.png" alt="lastfm" class="hover" /> </li>
                        <li><img src="images/social_rss_hover.png" alt="rss" class="hover" /> </li>
                    </ul>
                </div>

			<p class="copyright">&copy; Copyright &copy; Holiday Reading All
				rights reserved.</p>
		</div>
	</div>
	<a id="top_button" href="#top"></a>
	<script src="scripts/jquery-1.7.2.min.js" type="text/javascript"></script>
	<script src="scripts/superfish.js" type="text/javascript"></script>
	<script src="scripts/jquery.easing.1.3.js" type="text/javascript"></script>
	<script src="scripts/jquery.prettyPhoto.js" type="text/javascript"></script>
	<script src="scripts/jquery.quicksand8d1e.js?ver=1.2.2"
		type="text/javascript"></script>
	<script src="scripts/custom4963.js?ver=1.1" type="text/javascript"></script>

</body>
</html>
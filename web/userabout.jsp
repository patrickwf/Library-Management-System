<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="yznu.holiday.bean.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>About For User</title>
<link href="style1.css" rel="stylesheet" type="text/css" media="screen" />
</head>
 <% UserInfoBean user = (UserInfoBean)session.getAttribute("user"); %>
<body>
	<div id="header">
		<div class="container">
			<a href="home.html" id="logo"><img src="images/logo.png"
				alt="Company Logo" /></a>
			<div class="navigation">
				<ul>
					<li><a href="userhome.jsp">主页</a>
						<div class="clear"></div></li>
					<li><a href="searchbooks.jsp">图书分类</a></li>
					<li><a href="donatebook.jsp">图书捐赠</a>
						<div class="clear"></div></li>
					<li><a href="UserInfoServlet">个人信息</a></li>
					<li class="active"><a href="userabout.jsp">关于</a>
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
			<h2>About Holiday</h2>
			<div class="search">
				<form action="ReaderSearchServlet">
					<fieldset>
						<input type="text" name="search" value="搜索图书"/>
					   <input type="submit" name="submit" value="" />
					</fieldset>
				</form>
				<div class="clear"></div>
			</div>
			<a class="login" href="#"><%=user.getUname() %></a>
			<div class="clear"></div>
		</div>
	</div>

	<div class="container">
		<div id="main">
			<div class="row">
				<div class="span8">
					<h4 class="colored">What is Holiday?</h4>
					<br />
					<h4>Holiday，源于我们工作室创始人的英文名，同时也迎 合了即将来临的假期。holiday
						reading创建于2014年 12月29日，它是致力于为读者提供优质阅读的网上图书
						馆。holiday工作室由五位优秀的人员组成，他们分别 是负责人Holiday，软件工程师Singlelines，美工设
						计Manax,界面设计Christal、Smallfish。</h4>
					<br />
					<h4 class="colored">What we do..</h4>
					<br />
					<h4>我们给读者提供了九大分类的图书，分别是亲子教育、传记、小说、文学、管理、历史、成功励志、青春文学、哲学宗教。
						可以分类查看并试阅读，如果喜欢可以订阅。同时我们提供历史借阅记录查询，续借功能，账户充值等。</h4>
				</div>
				<div class="span4">
					<div>
						<img src="images/logo1.jpg" alt="Company Logo" width="309" />
					</div>
					<br />
					<h4>Company Logo</h4>
					<br />
					<h4 class="colored">Believe it or Not...</h4>
					<br />
					<p>夫读书将以何为哉？</p>
					<p>辨其大义，以修己治人之体也，</p>
					<p>察其微言，以善精义入神之用也。</p>
					<p>&nbsp;&nbsp;&nbsp;—— 王夫之</p>

				</div>
			</div>


		</div>
	</div>
	<div id="footer">
	<br/>
		<div class="container">
			<div class="foot">
				<ul class="social_icons">
					<li><img src="images/social_facebook_hover.png" alt="facebook"
						class="hover" /></li>
					<li><img src="images/social_twitter_hover.png" alt="twitter"
						class="hover" /></li>
					<li><img src="images/social_google_hover.png" alt="google"
						class="hover" /></li>
					<li><img src="images/social_lastfm_hover.png" alt="lastfm"
						class="hover" /></li>
					<li><img src="images/social_rss_hover.png" alt="rss"
						class="hover" /></li>
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
	<script src="scripts/custom4963.js?ver=1.1" type="text/javascript"></script>

</body>
</html>
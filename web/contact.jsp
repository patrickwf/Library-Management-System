<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="yznu.holiday.bean.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>contact us</title>
<link rel='stylesheet' type='text/css'>
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
					<li><a href="userabout.jsp">关于</a>
						<div class="clear"></div></li>
					<li class="active"><a href="contact.jsp">联系</a>
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
			<h2>Contact us</h2>
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
					<div class="separator2 separator_title">
						<span>Contact Us</span>

					</div>
					<br />
					<div id="respond_wrap">
						<div id="respond">
							<h4>Leave a Message:</h4>
							<br /> <a class="cancel_reply" href="#">Click here to cancel
								reply</a>
							<div class="clear"></div>
							<form id="comment_form" method="post" action="" class="contact">
								<fieldset>
									<div style="float: left; margin-right: 56px;">
										<div class="text_input">
											<input type="text" name="name" value=""
												data-default="Your Name" />
										</div>
										<div class="text_input">
											<input type="text" name="email" value=""
												data-default="Email address" />
										</div>
										<div class="text_input">
											<input type="text" name="url" value=""
												data-default="Website (Optional)" />
										</div>
									</div>
									<ul class="form_errors">
										<li class="nameError hidden">Please enter valid name</li>
										<li class="emailError hidden">Please enter valid email
											address</li>
										<li class="commentError hidden">Please enter your comment</li>
									</ul>
									<div class="clear"></div>
									<div class="textarea_input">
										<textarea tabindex="1" rows="10" cols="58" name="comment"></textarea>
									</div>
									<div class="submit_wrap">
										<div class="button_submit">
											<div class="button button_shadow">
												<a class="button2 button_arrow_right" href="#">Send</a> <input
													type="submit" value="" />
											</div>
										</div>
										<div class="clear"></div>
									</div>
									<input type="hidden" name="parent" value="0" />
								</fieldset>
							</form>
						</div>
					</div>
				</div>
				<div class="span4 sidebar right_sidebar">
					<span class="title_box icon_calendar">Contact info</span> <br />
					<p>Name:holiday软件工作室</p>
					<p>Address:长江师范学院</p>
					<p>Phone: (123) 456-7890</p>
					<p>FAX: (123) 456-7890</p>
					<p>
						Email: <a href="mailto:info@domain.com">holiday@qq.com</a>
					</p>
					<br /> <br /> 订阅图书 <br />
					<form id="newsletter_form" method="post" action="#">
						<div class="text_input">
							<input type="text" name="email" data-default="Email address"
								value="Email address" />
						</div>
						<select class="newsletter">
							<option value="All">亲子教育</option>
							<option value="Music">传记</option>
							<option value="Video">小说</option>
							<option value="T-shirt">文学</option>
							<option value="Graphic">管理</option>
							<option value="Graphic">历史</option>
							<option value="Graphic">成功励志</option>
							<option value="Graphic">青春文学</option>
							<option value="Graphic">哲学宗教</option>
						</select>
						<div class="button button_shadow">
							<a class="button2 button_arrow_right" href="#">确定</a>
						</div>
					</form>
					<br />
					<p>&nbsp;</p>
					<br />
					<div class="button button_shadow sidebar_pad">
						<a class="button2 button_arrow_right" href="#"> More</a>
					</div>
					<span class="right_sidebar_after"></span>
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
	<script type="text/javascript">
		var gmapSettings = {
			markers : [ {
				address : 'london'
			} ],
			zoom : 14
		};
	</script>
	<script src="scripts/jquery-1.7.2.min.js" type="text/javascript"></script>
	<script src="scripts/superfish.js" type="text/javascript"></script>
	<script src="scripts/jquery.easing.1.3.js" type="text/javascript"></script>
	<script src="scripts/jquery.gmap-1.1.0-min.js" type="text/javascript"></script>
	<script src="scripts/custom4963.js?ver=1.1" type="text/javascript"></script>

</body>
</html>
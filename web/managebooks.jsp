<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="yznu.holiday.bean.*,java.util.*,yznu.holiday.dao.QueryDao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书管理</title>
<link href="style1.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/mosaic_gallery.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="css/slider-theme.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="css/nivo-slider.css" rel="stylesheet" type="text/css"
	media="screen" />
</head>
<%
	AdminBean admin = (AdminBean) session.getAttribute("admin");
%>
<body>
	<div id="header">
		<div class="container">
			<a href="home.html" id="logo"><img src="images/logo.png"
				alt="Company Logo" /></a>
			<div class="navigation">
				<ul>
					<li><a href="adminhome.jsp">主页</a>
						<div class="clear"></div></li>
					<li class="active"><a href="ManageBooksServlet">图书管理</a>
						<div class="clear"></div>
						<ul>
							<li><a href="ManageBooksServlet">图书查看</a></li>
							<li><a href="AddBookServlet">图书订购</a></li>
						</ul></li>
					<li><a href="ManageUserServlet">用户管理</a>
						<div class="clear"></div></li>
					<li><a href="adminabout.jsp">关于</a>
						<div class="clear"></div></li>
					<li><a href="contactadmin.jsp">反馈</a>
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
			<h2>查看图书</h2>
			<div class="search">
				<form action="#">
					<fieldset>
						<input type="text" name="search" /> <input type="submit"
							name="submit" value="" />
					</fieldset>
				</form>
				<div class="clear"></div>
			</div>
			<a class="login" href="#"><%=admin.getAname()%></a>
			<div class="clear"></div>
		</div>
	</div>

	<div class="container">
		<div id="main">
			<div class="row">
				<!-- 循环开始 -->
				<%
					List allNames = (List) request.getAttribute("allNames");
					Iterator itBooks = allNames.iterator();
					while (itBooks.hasNext()) {
						BookTypeBean bt = (BookTypeBean) itBooks.next();
						String typeName = bt.getType();
						String btid = bt.getBtid();
						String arg[] = { btid };
						String editlink = "edittype.jsp?btid=" + btid + "&typename="
								+ typeName;
						// System.out.println(typeName);
						QueryDao qd = new QueryDao();
						List listbooks = (List) qd.QueryKindsBooks(arg);
						Iterator itBook = listbooks.iterator();
						// System.out.println(BookName+"***********"+Write);
				%>
				<div class="span12">
					<div class="accordion accordion1 ">
						<div class="accordion_header">
							<h3 class="accordion_title">
								<span></span><%=typeName%></h3>
							<div class="media">
								<div class="media_icon">
									<img src="images/icon_heart.png" alt="Photo Icon" /> <span
										class="media_count"><a href="<%=editlink%>">修改</a></span>
								</div>
							</div>
							<div class="clear"></div>
						</div>
						<div class="accordion_content">
							<div class="container">
								<div id="main">
									<table class="table_black1">
										<thead>
											<tr>
												<th class="column0"><h3>图书编号</h3></th>
												<th><h3>图书名称</h3></th>
												<th><h3>作者</h3></th>
												<th><h3>出版社</h3></th>
												<th><h3>出版日期</h3></th>
												<th><h3>价格</h3></th>
												<th><h3>操作</h3></th>
											</tr>
										</thead>
										<tbody>
											<%
												while (itBook.hasNext()) {
														BookInfoBean book = (BookInfoBean) itBook.next();
														String ISBN = book.getISBN();
														String BookName = book.getBookname();
														String Write = book.getWriter();
														String getPublisher = book.getPublisher();
														String date = book.getDate();
														String price = book.getPrice();
														String delbook = "DeleteBookServlet?btid=" + book.getISBN();
											%>
											<tr class="odd">
												<td><%=ISBN%></td>
												<td><%=BookName%></td>
												<td><%=Write%></td>
												<td><%=getPublisher%></td>
												<td><%=date%></td>
												<td><%=price%></td>
												<td><a href="<%=delbook%>">删除</a></td>
											</tr>
											<%
												}
											%>
											<!--  <tr class="even">
												<th></th>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td>
													 <div class="table_foot odd">
														<div class="button">
															<%
																String addLink = "addbook.jsp?btid=" + btid;
															%>
															<a class="button1" href="<%=addLink%>">订购</a>
														</div>
													</div>
													
												</td>
											</tr> -->
										</tbody>
									</table>
									<br />
								</div>
							</div>
						</div>
						<div class="seperator"></div>
					</div>
					<div class="separator"></div>
				</div>
				<%
					}
				%>
				<!--循环结束  -->
				<div class="seperator"></div>

			</div>
		</div>
	</div>
	</div>
	</div>
	<div id="footer">
		<br />
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
	<script src="scripts/jquery.quicksand8d1e.js?ver=1.2.2"
		type="text/javascript"></script>
	<script src="scripts/custom4963.js?ver=1.1" type="text/javascript"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="yznu.holiday.bean.*,java.util.*,yznu.holiday.dao.QueryDao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订购图书</title>
<link href="style1.css" rel="stylesheet" type="text/css" media="screen" />
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
			<h2>订购图书</h2>

			<div class="search">
				<form action="#">
					<fieldset>
						<input type="text" name="search" /> <input type="submit"
							name="submit" value="" />
					</fieldset>
				</form>
				<div class="clear"></div>
			</div>
			<a class="login"><%=admin.getAname()%></a>
			<div class="clear"></div>
		</div>
	</div>
	<%
		//request.setAttribute("btid", btid);
		List listnewbooks = (List) request.getAttribute("listnewbooks");
		Iterator itBooks = listnewbooks.iterator();
	%>
	<div class="container">
		<div id="main">
			<br /> <br /> 
			<h2>新书推荐</h2>
			<form action="VerifyAddServlet">
				<table class="table_black1">
					<thead>
						<tr>
							<th>
								<h3>图书名称</h3>
							</th>
							<th>
								<h3>类别</h3>
							</th>
							<th>
								<h3>编号</h3>
							</th>
							<th>
								<h3>作者</h3>
							</th>
							<th>
								<h3>出版社</h3>
							</th>
							<th>
								<h3>出版时间</h3>
							</th>
							<th>
								<h3>价格</h3>
							</th>
							<th>
								<h3></h3>
							</th>

						</tr>
					</thead>
					<tbody>
						<%
							while (itBooks.hasNext()) {
								BookInfoBean bt = (BookInfoBean) itBooks.next();
								String typeid = bt.getTypeId();
								String btid = bt.getISBN();
								String pub = bt.getPublisher();
								String bn = bt.getBookname();
								String date = bt.getDate();
								String p = bt.getPrice();
								String w = bt.getWriter();
								String typename = null;
								String t1 = "亲子教育";
								String t2 = "传记";
								String t3 = "小说";
								String t4 = "文学";
								String t5 = "管理";
								String t6 = "历史";
								String t7 = "成功励志";
								String t8 = "青春文学";
								String t9 = "哲学宗教";
								if (typeid.equals("1001"))
									typename = t1;
								else if (typeid.equals("1002"))
									typename = t2;
								else if (typeid.equals("1003"))
									typename = t3;
								else if (typeid.equals("1004"))
									typename = t4;
								else if (typeid.equals("1005"))
									typename = t5;
								else if (typeid.equals("1006"))
									typename = t6;
								else if (typeid.equals("1007"))
									typename = t7;
								else if (typeid.equals("1008"))
									typename = t8;
								else if (typeid.equals("1009"))
									typename = t9;
						%>
						<tr class="odd">
							<td><%=bn%></td>
							<td><%=typename%></td>
							<td><%=btid%></td>
							<td><%=w%></td>
							<td><%=pub%></td>
							<td><%=date%></td>
							<td><%=p%></td>
							<td><input name="choose" type="checkbox" value="<%=btid%>" /></td>
						</tr>
						<%
							}
						%>
						<tr class="even">
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>

							<td><div class="table_foot odd">
									<div class="button">
										<!--    <a class="button1" href="#">订购</a>-->
										<input class="button1" type="submit" name="Submit" value="订购" />
									</div>
								</div></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</form>
			<br /> <br /> <br /> <br /> <br /> <br />
			<br />
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
	<script src="scripts/jquery.cycle.all.html" type="text/javascript"></script>
	<script src="scripts/jquery.easing.1.3.js" type="text/javascript"></script>
	<script src="scripts/custom4963.js?ver=1.1" type="text/javascript"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="yznu.holiday.bean.*,java.util.*,yznu.holiday.dao.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理用户</title>
<link href="style1.css" rel="stylesheet" type="text/css" media="screen"/>
    </head>
<% AdminBean admin = (AdminBean)session.getAttribute("admin"); %>       
    <body class="portfolio pngfix">
         <div id="header">
                            <div class="container">
                                <a href="home.html" id="logo"><img src="images/logo.png" alt="Company Logo" /></a>
                                <div class="navigation">
                                    <ul>
                                        <li>
                                            <a href="adminhome.jsp">主页</a>
                                            <div class="clear"></div>
                                        </li>
                                        <li>
                                            <a href="ManageBooksServlet">图书管理</a>
                                            <div class="clear"></div>
                                            <ul>
							                   <li><a href="ManageBooksServlet">图书查看</a></li>
							                   <li><a href="AddBookServlet">图书订购</a></li>
						                   </ul>
                                           
                                        </li>
                                        <li  class="active">
                                            <a href="ManageUserServlet">用户管理</a>
                                            <div class="clear"></div>
                                            
                                        </li> 
                                        <li>
                                            <a href="adminabout.jsp">关于</a>
                                            <div class="clear"></div>
                                        </li>
                                        <li>
                                            <a href="contactadmin.jsp">反馈</a>
                                            <div class="clear"></div>
                                        </li>
                                        <li><a href="LogoutServlet">退出登录</a>
						<div class="clear"></div></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div id="intro">
            <div id="top"></div>
            <div class="container">
                <h2>用户管理</h2>
                <div class="search">
                    <form action="ArrearageListServlet">
                        <fieldset>
                            <input type="text" name="search" value="查看欠费用户"/>
                            <input type="submit" name="submit" value="" />
                        </fieldset>
                    </form>
                    <div class="clear"></div>
                </div>
                 <a class="login"><%=admin.getAname() %></a>        
                <div class="clear"></div>
            </div>
        </div>
		<br />
		<br />
<div class="container">
    <div id="main">
                <h2>All User </h2>
                <table class="table_black1">
                    <thead>
                        <tr>
                            <th class="column0">
                                <h3>用户编号</h3>                            </th>
                            <th>
                                <h3>姓名</h3>                            </th>
                            <th>
                          <h3>身份证号码</h3>                            </th>
                            <th>
                                <h3>电话号码</h3>                          </th>
                            <th>
                            <h3>账户余额</h3>                            </th>
                            <th>
                                <h3>操作</h3>                            </th>
                        </tr>
                    </thead>
                    <tbody>
                     <%
              List allUser=(List)request.getAttribute("allUser");
              Iterator User=allUser.iterator();
      		  while(User.hasNext()){
      		   UserInfoBean u=(UserInfoBean)User.next();
      		   //判断是否已有用户在黑名单内
      		   boolean check=false;
      		   UserDao ud=new UserDao();
      		   String uid[]={u.getUserId()};
      		   double balance=Double.parseDouble(u.getBalance());
      		   BlackListBean blackuser=ud.getArrearageUser(uid);
      		   //该用户已在黑名单内
      		   if(blackuser!=null)
      			   check=true;
      		   String blacklist="AddBlackListServlet?userid="+u.getUserId();
      		   String cancelblacklist="CancelBlackListServlet?userid="+u.getUserId();
      		  %>
                        <tr class="odd">
                            <td><%=u.getUserId() %></td>
                            <td><%=u.getUname() %></td>
                            <td><%=u.getUidCard() %></td>
                            <td><%=u.getUtel() %></td>
                            <td><%=u.getBalance() %></td>
                            <%
                               if(check){
                            %>
                            <td><a href="<%=cancelblacklist%>">从黑名单取消</a></td>
                            <%}
                               else if(balance>=0){                           
                            %>
                            <td><a href="#">查看用户详情</a></td>
                            <%} else if(balance<0){%>
                            <td><a href="<%=blacklist%>">添加为黑名单</a></td>
                            <%} %>
                        </tr>
                        <%} %>
                        <tr class="even">
                            <th></th>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>上一页</td>
                            <td>下一页</td>
                        </tr>
                    </tbody>
      </table>
                <br />

  </div>
  <br />
  <br />
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
                <p class="copyright">&copy; Copyright &copy; Holiday Reading All rights reserved.</p>
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
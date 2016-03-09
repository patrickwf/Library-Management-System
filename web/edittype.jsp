<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="yznu.holiday.bean.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改分类</title>
 <link href="style1.css" rel="stylesheet" type="text/css" media="screen"/>
    </head>
<% AdminBean admin = (AdminBean)session.getAttribute("admin"); 
   String oldname=new String(request.getParameter("typename").getBytes("ISO-8859-1"),"UTF-8");
   String typeid=request.getParameter("btid");
 
  // System.out.println(oldname);
%>
    <body>
        <div id="header">
            <div class="container">
                <a href="home.html" id="logo"><img src="images/logo.png" alt="Company Logo" /></a>
                <div class="navigation">
                    <ul>
                       <li>
                                            <a href="adminhome.jsp">主页</a>
                                            <div class="clear"></div>
                                        </li>
                                        <li class="active">
                                            <a href="ManageBooksServlet">图书管理</a>
                                            <div class="clear"></div>
                                           
                                        </li>
                                        <li>
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
                <h2>修改类别</h2>
                <div class="search">
                    <form action="#">
                        <fieldset>
                            <input type="text" name="search" />
                            <input type="submit" name="submit" value="" />
                        </fieldset>
                    </form>
                    <div class="clear"></div>
                </div>
                 <a class="login"><%=admin.getAname()%></a>        
                <div class="clear"></div>
            </div>
        </div>
		<br/>
		<br/>
        <div class="container">
            <div id="main">
                <h4></h4>
                <br/>
                <form action="EditTypeServlet" method="post">
                <table class="table_black1">
                    <thead>
                        <tr>
                            <th><h3>原类别名</h3></th>
                            <th><h3>新类别名</h3></th>
						    <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="odd"> 
                            <td><input name="ll" type="hidden" size="10" value="<%=typeid%>"/><%=oldname %></td>
                            <td><input name="newname" type="text" size="25" /></td>
							<td><div class="table_foot odd">
                            <div class="button">
                             <!--  <a class="button1" href="#">确定</a>-->
                             <input class="button1" type="submit" name="Submit" value="确认" />
                             </div>
                            </div></td>
                        </tr>
                        
                    </tbody>
                </table>
                </form>
                <br/>
                <br/>
                <br/>
            </div>
        </div>
		<br/>
		<br/>
		<br/>
		
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
                <p class="copyright">&copy; Copyright &copy; Holiday Reading  All rights reserved.</p>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="yznu.holiday.bean.*,java.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户搜索结果</title>
<link href="style1.css" rel="stylesheet" type="text/css" media="screen"/>
    </head>
   <%
	UserInfoBean user = (UserInfoBean) session.getAttribute("user");
%>   
    <body class="portfolio pngfix">
        <div id="header">
            <div class="container">
                <a href="index.html" id="logo"><img src="images/logo.png" alt="Company Logo" /></a>
                <div class="navigation">
                    <ul>
                        <li>
                            <a href="userhome.jsp">主页</a>
                            <div class="clear"></div>
                        </li>
                        <li class="active">
                            <a href="searchbooks.jsp">图书分类</a>
                            
                        </li>
                        <li>
                            <a href="donatebook.jsp">图书捐赠</a>
                            <div class="clear"></div>
                           
                        </li>
                        <li>
                            <a href="UserInfoServlet">个人信息</a>
                            
                        </li>
                        <li>
                            <a href="userabout.jsp">关于</a>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <a href="contact.jsp">联系</a>
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
                <h2>搜索图书</h2>
                <div class="search">
                    <form action="ReaderSearchServlet">
                        <fieldset>
                            <input type="text" name="search" />
                            <input type="submit" name="submit" value="" />
                        </fieldset>
                    </form>
                    <div class="clear"></div>
                </div>
                <a class="login" ><%=user.getUname() %></a>
                <div class="clear"></div>
            </div>
        </div>
            </div>
            <br/>
            <br/>
            <br/>
<div class="container">
    <div id="main">
                <h2>搜索结果</h2>
                <table class="table_black1">
                    <thead>
                        <tr>
                            <th class="column0">
                                <h3>图书名称</h3>                            </th>
                            <th>
                                <h3>编号</h3>                            </th>
                            <th>
                                <h3>作者</h3>                            </th>
                            <th>
                                <h3>出版社</h3>                          </th>
                            <th>
                            <h3>出版时间</h3>                            </th>
                            <th>
                                <h3>借阅</h3>                            </th>
                        </tr>
                    </thead>
                      <%
                    List list=(List)request.getAttribute("searchresult");
                    Iterator it=list.iterator();
                    while(it.hasNext()){
                    BookInfoBean b=(BookInfoBean)it.next();
                    String borrow="BorrowServlet?isbn="+b.getISBN();
                    %>
                    <tbody>
                        <tr class="odd">
                            <td><%=b.getBookname() %></td>
                            <td><%=b.getISBN() %></td>
                            <td><%=b.getWriter() %></td>
                            <td><%=b.getPublisher() %></td>
                            <td><%=b.getDate() %></td>
                            <td><a href="<%=borrow%>">借阅</a></td>
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
                <br />
                <br />
  </div>
  <br/>
  <br/>
  <br/>
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
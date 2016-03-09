<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="yznu.holiday.bean.*,java.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>捐赠图书</title>
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
                        <li>
                            <a href="searchbooks.jsp">图书分类</a>
                            
                        </li>
                        <li class="active">
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
                <h2>图书捐赠</h2>
                <div class="search">
                    <form action="ReaderSearchServlet">
                        <fieldset>
                            <input type="text" name="search" value="搜索图书"/>
                            <input type="submit" name="submit" value="" />
                        </fieldset>
                    </form>
                    <div class="clear"></div>
                </div>
                <a class="login" ><%=user.getUname() %> </a>
                <div class="clear"></div>
            </div>
        </div>
            </div>
<div class="container">
    <div id="main">
                <h2></h2>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
			<form action="DonateBookServlet" method="post">
                <table class="table_black1">
                    <thead>
                        <tr>
                            <th width="20%">
                                <h3>图书名称</h3>                            </th>
							<th width="10%">
                                <h3>类别</h3>                            </th>
                            <th width="10%">
                                <h3>编号</h3>                            </th>
                            <th width="10%">
                                <h3>作者</h3>                            </th>
                            <th width="20%">
                                <h3>出版社</h3>                          </th>
                            <th width="20%">
                            <h3>出版时间</h3>                            </th>
                            <th width="10%">
                            <h3>价格</h3>                            </th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="odd">
                            <td><input name="bookname" type="text" size="18" /></td>
                            <td><select name="typeId" id="select">
                              <option value="1001">亲子教育</option>
                              <option value="1002">传记</option>
                              <option value="1003">小说</option>
                              <option value="1004">文学</option>
                              <option value="1005">管理</option>
                              <option value="1006">历史</option>
                              <option value="1007">成功励志</option>
                              <option value="1008">青春文学</option>
                              <option value="1009">哲学宗教</option>
                            </select></td>
                            <td><input name="ISBN" type="text" size="15" /></td>
                            <td><input name="writer" type="text" size="10" /></td>
                            <td><input name="publisher" type="text" size="15" /></td>
                            <td><input name="date" type="text" size="14" /></td>
                            <td><input name="price" type="text" size="10" /></td>
                        </tr>
                        <tr class="even">
                            <th></th>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                             <td></td>
                            <td><div class="table_foot odd">
                            <div class="button">
                            <!--   <a class="button1" href="#">提交</a>-->
                            <input class="button1"  type="submit" name="Submit" value="提交" />
                            </div>
                            </div></td>
                        </tr>
                    </tbody>
      </table>
      </form>
                <br />
                <br />
                <br />
				<br/>
				<br/>
				<br/><br/>
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
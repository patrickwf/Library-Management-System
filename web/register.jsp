<%@ page contentType="text/html;charset=UTF-8"%>
<%
	String path = request.getContextPath();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
<link rel="stylesheet" media="screen" href="css/css.css" />
</head>
<form id="msform" method="post" action="RegisterServlet">
	<!-- progressbar -->
	<ul id="progressbar">
		<li class="active">Account Setup</li>
		<li>Personal Details</li>
	</ul>
	<!-- fieldsets -->
	<fieldset>
		<h2 class="fs-title">Create your account</h2>
		<h3 class="fs-subtitle">This is step 1</h3>
		<input type="text" name="UserId" placeholder="UserId-8位有效数字" />
		<input type="password" name="Upsw" placeholder="Password" />
		<input type="password" name="cpass" placeholder="Confirm Password" />
		<input type="button" name="next" class="next action-button" value="Next" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">Basic Infornmation</h2>
		<h3 class="fs-subtitle">Your presence on the social network</h3>
		<input type="text" name="usename" placeholder="Usename" />
		<input type="text" name="idcard" placeholder="IDCard" />
		<input type="text" name="age" placeholder="Age" />
        <input type="text" name="phone" placeholder="Phone" />
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="submit" name="submit" class="action-button" value="Register" />
	</fieldset>
</form>
<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="js/jquery.easing.min.js" type="text/javascript"></script>
<script src="js/jQuery.time.js" type="text/javascript"></script>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>
</body>
</html>
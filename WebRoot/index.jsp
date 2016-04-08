<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap.css">
</head>
<body>
	<div class="alert alert-info" role="alert">
		<strong>Hello !</strong> 这里是登录页面
	</div>
	<div class="form-group">
	<form action="user/loginServlet" name="login" class="form">
		<label>用户名</label>
		<input type="text" name="username" class="form-control" placeholder="请输入你 的用户名或Email">
		<label>密码</label>
		<input type="password" name="password" class="form-control" placeholder="请输入你的密码"><br />
		<button type="submit" class="btn btn-default">登录</button> 
	</form>
	</div>

</body>
</html>
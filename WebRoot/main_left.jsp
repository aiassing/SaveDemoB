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

<title>My JSP 'main_left.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.css">

</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
	<div class="container">
		<br>
		<form action="inputStuInfo.jsp" target="main_right">
			<input class="btn btn-primary" type="submit" value="录入学生信息" />
		</form>
		<br>
		<form action="student/queryAllStuServlet?osid=query"
			target="main_right" method="post">
			<input class="btn btn-info" type="submit" value="查看学生信息" />
		</form>
		<br>
		<form action="student/queryAllStuServlet?osid=modify"
			target="main_right" method="post">
			<input class="btn btn-warning" type="submit" value="修改学生信息" />
		</form>
		<br>
		<form action="student/queryAllStuServlet?osid=delete"
			target="main_right" method="post">
			<input class="btn btn-danger" type="submit" value="删除学生信息" />
		</form>
		<br>
		<form action="user/exitServlet" target="_top" method="post">
			<input class="btn btn-default" type="submit" value="退出" />
		</form>
		<br>
	</div>
</body>
</html>

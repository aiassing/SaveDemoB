<%@page import="com.camilemodel.userTable"%>
<%@page import="com.camile.service.userService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
userTable user=(userTable)session.getAttribute("user");
if(user==null)
{
 %>
 
 <jsp:forward page="index.jsp"></jsp:forward>
 <%} %>

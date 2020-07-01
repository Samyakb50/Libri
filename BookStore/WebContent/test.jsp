<%@page import="com.proj.util.SearchPojo"%>
<%@page import="com.proj.checkout.CheckFuncs"%>
<%@page import="com.proj.vieworders.CustOrders"%>
<%@page import="com.proj.vieworders.UserDatabase"%>
<%@page import="com.proj.cart.CartUtil"%>
<%@page import="com.proj.signup.LoginSignupUtil"%>
<%@page import="com.proj.util.UtilSearch"%>
<%@page import="com.proj.util.Books"%>
<%@page import="java.util.List"%>
<%@page import="com.proj.util.UserUtilCls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("coid")!=null)
{
	int ids[]=(int[])session.getAttribute("coid");
	int cid=ids[0];
	int oid=ids[1];
}
%>
</body>
</html>
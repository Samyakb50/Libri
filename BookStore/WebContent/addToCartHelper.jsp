<%@page import="com.proj.cart.CartUtil"%>
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
CartUtil cc=new CartUtil();
cc.addToCart(Integer.valueOf(request.getParameter("bid")), Integer.valueOf(request.getParameter("q")));
String p=request.getParameter("page");
response.sendRedirect(p);
%>
</body>
</html>
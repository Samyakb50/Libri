<%@page import="com.proj.cart.CartUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%
CartUtil cl=new CartUtil();
%>
</head>
<body>
<%
out.println(Integer.valueOf(request.getParameter("bid")));
if(request.getParameter("bid")!=null)
{
	cl.deleteFromCart(Integer.valueOf(request.getParameter("bid")));
}
response.sendRedirect("ViewCartUser.jsp");
%>
</body>
</html>
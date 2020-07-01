<%@page import="com.proj.util.UtilCls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%
UtilCls cl=new UtilCls();
%>
</head>
<body>
<%
if(request.getParameter("status")!=null)
{
	int oid=Integer.valueOf(request.getParameter("oid"));
	String s=request.getParameter("status");
	cl.updateOrderStatus(oid, s);
}
response.sendRedirect("ViewOrdersAdmin.jsp");
%>
</body>
</html>
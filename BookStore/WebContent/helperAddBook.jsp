<%@page import="com.proj.util.UtilCls"%>
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
UtilCls cls = new UtilCls();
	if(request.getParameter("bookname")!= null)
	{
		//int id = Integer.valueOf(request.getParameter("id"));
		String bname = request.getParameter("bookname");
		String authname = request.getParameter("authorname");
		String pname = request.getParameter("publishername");
		float price =  Float.parseFloat(request.getParameter("price"));
		int yop = Integer.valueOf(request.getParameter("year"));
		String lang = request.getParameter("language");
		String sname = request.getParameter("subjectname");
		int used = Integer.valueOf(request.getParameter("used"));
		int stock = Integer.valueOf(request.getParameter("stock"));
		
		cls.addBook(bname, authname, price,  pname,sname,yop, lang,  used, stock);
		
	}
%>
</body>
</html>
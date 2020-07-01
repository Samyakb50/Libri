<%@page import="com.proj.util.UtilCls"%>
<%@page import="com.mysql.jdbc.Util"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<link rel="stylesheet" href="addbookstyle.css">
<meta charset="ISO-8859-1">
<title></title>
</head>
<body bgcolor>
<div class="banner">
  <h1>Success</h1>
</div>
<br><br><br>
<center><a href="updateOrDelete.jsp"><button>Continue</button></a></center>
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
		
		cls.updateBook(bname, price, authname, yop, pname, lang, sname, used, stock);
		
	}
%>

</body>
</html>
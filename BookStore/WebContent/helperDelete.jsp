<%@page import="com.proj.util.UtilCls"%>
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
<title>Insert title here</title>
</head>
<body>
<div class="banner">
  <h1>Success</h1>
</div>
<br><br><br>
<center><a href="updateOrDelete.jsp"><button>Continue</button></a></center>
<%
UtilCls cls= new UtilCls();
if(request.getParameter("bid")!=null){
	int bid=Integer.valueOf(request.getParameter("bid"));
	cls.delBook(bid);
	}
	
%>
</body>
</html>
<%@page import="com.proj.util.UserUtilCls"%>
<%@page import="com.proj.checkout.CheckFuncs"%>
<%@page import="com.proj.cart.CartUtil"%>
<%@page import="java.util.List"%>
<%@page import="com.proj.cart.CartObj"%>
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
<%
CartUtil cl=new CartUtil();
%>
<body>
<%
List<CartObj>ls=cl.viewCart();
int rs = 0;
for(int i=0;i<ls.size();i++ )
{
	rs+=ls.get(i).getTotal();
}
int cid=0,oid=0;
if(session.getAttribute("coid")!=null)
{
	int ids[]=(int[])session.getAttribute("coid");
	cid=ids[0];
	oid=ids[1];
}
CheckFuncs f=new CheckFuncs();
String s="";
if(request.getParameter("rd")!=null)
	 s=request.getParameter("rd");
f.insIntoOrdStatus(oid, s);
f.addToUserCart(oid, cid);
f.truncTemp();
UserUtilCls cls=new UserUtilCls();
oid=cls.genOrderId();
int ids[]={cid,oid};
session.setAttribute("coid", ids);
%>

<div class="banner">
  <h1>Success</h1><br>

</div>
<br><br>
<center>
<h2>Thank you for Shopping!</h2>
<h2>Your total bill amount is <%= rs %> INR</h2><br></center>
<center><a href="index.jsp"><button>Continue shopping</button></a></center>
</body>
</html>
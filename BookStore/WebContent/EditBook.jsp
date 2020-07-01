
<%@page import="com.proj.util.UtilCls"%>
<%@page import="com.proj.util.Books"%>
<%@page import="java.util.List"%>
<%@page import="com.proj.util.GetBooks"%>
<%@page import="com.proj.util.UpdateUtilCls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inconsolata">
<style>
body, html {
  height: 100%;
  font-family: "Inconsolata", sans-serif;
}

.bgimg {
  background-position: center;
  background-size: cover;
  background-image: url("/w3images/coffeehouse.jpg");
  min-height: 75%;
}

.menu {
  display: none;
}
</style>

<meta charset="ISO-8859-1">
<title>Edit Book Details</title>
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<link rel="stylesheet" href="addbookstyle.css">
<%
UpdateUtilCls cl=new UpdateUtilCls();
UtilCls cls=new UtilCls();
int id=0;
if(request.getQueryString()!=null){
	id=Integer.valueOf(request.getQueryString().replace("id=", " ").trim());
}
String j =cl.getBook(id);
String sp[] = j.split(";");

GetBooks gb=new GetBooks();
List<Books> ls=gb.getList();
%>
</head>
<body>
<!-- Links (sit on top) -->
<div class="w3-top">
  <div class="w3-row w3-padding w3-black">
    <div class="w3-col s3">
      <a href="adminHome.jsp" class="w3-button w3-block w3-black">Home</a>
    </div>
    <div class="w3-col s3">
      <a href="addBook.jsp" class="w3-button w3-block w3-black">Add Book</a>
    </div>
    <div class="w3-col s3">
      <a href="updateOrDelete.jsp" class="w3-button w3-block w3-black">Update or Delete</a>
    </div>
    <div class="w3-col s3">
      <a href="ViewOrdersAdmin.jsp" class="w3-button w3-block w3-black">View Orders</a>
    </div>
  </div>
</div>
<br><br><br>
<div class="testbox">
<!--
<form name=f11 action=>
<select name="selected" onchange="submit()">
<%
for(Books bb:ls)
{%>
<option value="<%=bb.getbTitle()%>"><%= bb.getbTitle()%></option>
<%	
}
%>
</form>	
-->

	
<form name=f22 action="helperUpdate.jsp">
<div class="banner">
				<h1>Edit Book Details</h1>
			</div>
			<!--  
<%
Books b1=new Books();
if(request.getParameter("selected")!=null){
	for(Books s:ls){
		if(s.getbTitle().equals(request.getParameter("selected")))
		{
			b1 = s;
			out.println(b1.getbTitle());
		}
	}
}
%>	
-->
<br>
<div class="colums">
<div class="item">
<label for="bookname">Book Name:</label><br>
<input type="text" name="bookname"  value="<%=sp[0]%>"><br>
</div>
<div class="item">
<label for="authorname">Author Name:</label><br>
<input type="text" name="authorname" value="<%=sp[9]%>"><br>
</div>
<div class="item">
<label for="publishername">Publisher Name:</label><br>
<input type="text" name="publishername" value="<%=sp[10]%>"><br> 
</div>
<div class="item">
<label for="subjectname">Subject Name:</label><br>
<input type="text" name="subjectname" value="<%=sp[11]%>"><br>
</div>
<div class="item">
<label for="price">Price:</label><br>
<input type="text" name="price" value="<%=sp[2]%>"><br>
</div>
<div class="item">
<label for="year">Year:</label><br>
<input type="text" name="year" value="<%=sp[5]%>"><br>
</div>
<div class="item">
<label for="used">Used:</label><br>
<input type="text" name="used" value="<%=sp[7]%>"><br>
</div>
<div class="item">
<label for="stock">Stock:</label><br>
<input type="text" name="stock" value="<%=sp[8]%>"><br>
</div>
<div class="item">
<label for="language">Language:</label><br>
</div>
<input type="text" name="language" value="<%=sp[12]%>"><br><br>
</div>
<!--  
<%
	if(request.getParameter("bookname")!= null)
	{
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
-->
<br><br>
<center><button type="submit"  value="Submit">Update</button></center>
</form>

</div>
</body>
</html>
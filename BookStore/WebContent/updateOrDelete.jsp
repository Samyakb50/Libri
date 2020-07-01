<%@page import="com.proj.util.Books"%>
<%@page import="java.util.List"%>
<%@page import="com.proj.util.UtilCls"%>
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
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<%
	UtilCls cl = new UtilCls();
	List<Books> ls = cl.retAllBooksAdmin();
%>
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<link rel="stylesheet" href="addbookstyle.css">
</head>
<body background-image: url('background.jpg')>
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

<div class="container">
  <br><br><br><center><h2>Updation</h2></center>
	<table class="table table-dark table-hover">
	<thead>
      <tr>
        <th>Book Title</th>
        <th>Author</th>
        <th>Price</th>
        <th>Stock</th>
        <th>Update</th>
        <th>Delete</th>
      </tr>
      </thead>
      <tbody>
		<%
			for (Books b : ls) {
				String link = "EditBook.jsp";
				
		%>
		<tr>
			<td><%=b.getbTitle()%></td>
			<td><%=cl.retAuth(b.getAuthId())%></td>
			<td><%=b.getpPrice()%></td>
			<td><%=b.getStock()%></td>
			<td><a href="EditBook.jsp?id=<%=b.getBid() %>"><button name="<%=b.getBid() %>">Update</button></a></td>
			<%if(b.getStock()>0){ %>
			<td><a href="helperDelete.jsp?bid=<%=b.getBid() %>"><button>Delete</button></a></td>
			<%} %>
		</tr>
		</tbody>
		<%
			}
		%>
	</table>
	</div>
</body>
</html>


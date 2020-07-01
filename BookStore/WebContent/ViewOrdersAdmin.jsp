<%@page import="com.proj.util.Orders1"%>
<%@page import="java.util.List"%>
<%@page import="com.proj.util.UtilCls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
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

<title>Customer Orders</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<%
	UtilCls cl = new UtilCls();
	List<Orders1> ls = cl.retOrders();
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

	<div class="container">
		<table class="table table-dark table-hover">
			<thead>
				<tr>
					<th>OrderId</th>
					<th>Payment Method</th>
					<th>Order Date</th>
					<th>Current status</th>
					<th>Change status to</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (Orders1 o : ls) {
				%>
				<tr>
					<td><%=o.getOid()%></td>
					<td><%=o.getShippingMeans()%></td>
					<td><%=o.getDate()%></td>
					<td><%=o.getStatus()%></td>
					<%if(!(o.getStatus().equalsIgnoreCase("delivered"))){
						String s=cl.deliveryQueueUpdate(o.getStatus());
					%>
					<td><a href="statusChange.jsp?status=<%=s %>&oid=<%=o.getOid()%>"><button><%=s%></button></a></td>
					<%} %>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>

</body>
</html>

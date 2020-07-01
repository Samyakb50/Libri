<%@page import="java.util.List"%>
<%@page import="com.proj.cart.CartUtil"%>
<%@page import="com.proj.cart.CartObj"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>Order History</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<%
CartUtil cl=new CartUtil();
%>
</head>
<body>
<%List<CartObj>ls=cl.viewCart();
%>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver3 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">Book</th>
									<th class="cell100 column2">Quantity</th>
									<th class="cell100 column4">Unit Price</th>
									<th class="cell100 column3">Total</th>
									<th class="cell100 column3">Delete from cart</th>
									
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
							<%for(CartObj cc:ls){ %>
								<tr class="row100 body">
									<%int x=cc.getBid(); %>
									<td class="cell100 column1"><%=cc.getBname() %></td>
									<td class="cell100 column2"><%=cc.getQuant() %></td>
									<td class="cell100 column3"><%=cc.getPrice() %></td>
									<td class="cell100 column4"><%=cc.getTotal() %></td>
									<td class="cell100 column5"><a href= "DeleteFromCartHelper.jsp?bid=<%=cc.getBid() %>"><button class="btn btn-warning">Delete</button></a></td>
								</tr>
							<%} %>
								</tbody>
						</table>
					</div>
				</div>


			</div>
		</div>
	</div>


	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
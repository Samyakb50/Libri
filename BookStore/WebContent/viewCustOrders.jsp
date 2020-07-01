<%@page import="com.proj.vieworders.CustOrders"%>
<%@page import="java.util.List"%>
<%@page import="com.proj.vieworders.UserDatabase"%>
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
<%UserDatabase ud=new UserDatabase();
int cid=0;
if(session.getAttribute("coid")!=null)
{
	int ids[]=(int[])session.getAttribute("coid");
	cid=ids[0];
}
%>
</head>
<body>
<%List<CustOrders> ll=ud.viewPrevOrders(cid);%>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver3 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">Order Id</th>
									<th class="cell100 column2">Quantity</th>
									<th class="cell100 column3">Status</th>
									<th class="cell100 column4">Mode of Payment</th>
									<th class="cell100 column5">Date</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
							<%for(CustOrders cc:ll){ %>
								<tr class="row100 body">
									<td class="cell100 column1"><%=cc.getOid() %></td>
									<td class="cell100 column2"><%=cc.getSum() %></td>
									<td class="cell100 column3"><%=cc.getStatus() %></td>
									<td class="cell100 column4"><%=cc.getMopay() %></td>
									<td class="cell100 column5"><%=cc.getDate() %></td>
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
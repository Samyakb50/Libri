<%@page import="java.util.ArrayList"%>
<%@page import="com.proj.util.SearchPojo"%>
<%@page import="java.util.List"%>
<%@page import="com.proj.util.UtilSearch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>Criteria Based Search</title>
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
<%UtilSearch ut=new UtilSearch();

%>
</head>
<body>
<%
String sel="";
String ser="";
if(request.getParameter("select")!=null)
{
	sel=request.getParameter("select");
	ser=request.getParameter("search");
}
List<SearchPojo>ls=new ArrayList<SearchPojo>();
if(sel.equals("name"))
{
	ls=ut.searchBasedOnTitle(ser);
}
else if(sel.equals("subject"))
{
	ls=ut.searchBasedOnSubject(ser);
}
else if(sel.equals("pricelt"))
{
	ls=ut.searchBasedOnPriceLess(Float.valueOf(ser));
}
else if(sel.equals("pricegt"))
{
	ls=ut.searchBasedOnPriceGreater(Float.valueOf(ser));
}


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
									<th class="cell100 column2">Author</th>
									<th class="cell100 column4">Quantity</th>
									<th class="cell100 column3">Price</th>
									<th class="cell100 column3">Add to cart</th>
									
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
							<%for(SearchPojo cc:ls){ %>
								<tr class="row100 body">
									<%int x=cc.getBid(); %>
									<td class="cell100 column1"><%=cc.getBname() %></td>
									<td class="cell100 column2"><%=cc.getAuthname() %></td>
									<td class="cell100 column3"><%=ut.retQuantity(x) %></td>
									<td class="cell100 column4"><%=cc.getPrice() %></td>
									<td class="cell100 column5"><a href="addToCartHelper.jsp?bid=<%=x%>&q=1&page=viewAllBooks.jsp"><button class="btn btn-success">Add to cart</button></a></td>
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Furnish Interior Category Flat Bootstrap Responsive Web
	Template | Categories :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords"
	content=" Furnish Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>

<!-- css files -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- bootstrap css -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- custom css -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- fontawesome css -->
<!-- //css files -->

<!-- google fonts -->
<link
	href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext"
	rel="stylesheet">
<!-- //google fonts -->

</head>
<body>
	<!-- //header -->
	<header class="py-sm-3 pt-3 pb-2" id="home">
		<div class="container">
			<!-- nav -->
			<div class="top d-md-flex">
				<div id="logo">
					<h1>
						<a href="index.html"><span class="fa fa-meetup"></span>
							Libri</a>
					</h1>
				</div>
				<div class="search-form mx-md-auto">
					<div class="n-right-w3ls">
						<jsp:include page="search.jsp"></jsp:include>	
					</div>
				</div>
				<div class="forms mt-md-0 mt-2">
					<a href="ViewCartUser.jsp" class="btn"><span
						class="fa fa-user-circle-o"></span> View Cart</a> <a
						href="ViewCartUser.jsp" class="btn"><span
						class="fa fa-pencil-square-o"></span> Sign Out</a>
				</div>
			</div>
			<nav class="text-center">
				<label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
				<input type="checkbox" id="drop" />
				<ul class="menu">
					<li class="mr-lg-4 mr-2"><a href="index.jsp">Home</a></li>
					<li class="mr-lg-4 mr-2"><a href="about.jsp">About Us</a></li>
					<li class="mr-lg-4 mr-2 active"><a href="viewAllBooks.jsp">Books</a></li>
					<li class="mr-lg-4 mr-2"><a href="ViewAllOrders.jsp">Orders</a></li>
					<li class=""><a href="contact.jsp">Contact</a></li>
				</ul>
			</nav>
			<!-- //nav -->
		</div>
	</header>
	<!-- //header -->

	<!-- inner banner -->
	<section class="inner-banner">
		<div class="container">
			<h3 class="text-center">All Books</h3>
		</div>
	</section>
	<!-- //inner banner -->
	<!-- page details -->
	<div class="breadcrumb-agile">
		<div class="container">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">All
					Books</li>
			</ol>
		</div>
	</div>
	<!-- //page details -->


	<!-- top categories -->
	<section class="news py-5" id="news">
		<div class="container py-lg-3">
			<div class="row news-grids">

				<jsp:include page="viewAllBooksCust.jsp" />



			</div>
		</div>
	</section>
	<!-- //top categories -->

	<!-- tabs -->
	<section>
		<!--//tabs -->

		<!-- footer -->
		<footer class="footer py-5">
			<div class="container py-md-3">
				<div class="footer-grid_section text-center">
					<div class="footer-title mb-3">
						<h2>
							<a href="index.html"><span class="fa fa-meetup"></span>
								Libri</a>
						</h2>
					</div>
					<div class="footer-text">
						<p>Vivamus magna justo, lacinia eget consectetur sed,
							convallis at tellus. Nulla quis lorem ipnut libero malesuada
							feugiat. Lorem ipsum dolor sit amet elit.</p>
					</div>
				</div>
			</div>

			<!-- //footer bottom -->
		</footer>
		<!-- //footer -->

		<!-- copyright -->
		<section class="copy-right py-4">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<p class="">
							© 2019 Furnish. All rights reserved | Design by <a
								href="http://w3layouts.com"> W3layouts.</a>
						</p>
					</div>
				</div>
			</div>
		</section>
		<!-- copyright -->

		<!-- move top icon -->
		<a href="#home" class="move-top text-center"></a>
		<!-- //move top icon -->
</body>
</html>
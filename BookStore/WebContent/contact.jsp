<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Furnish Interior Category Flat Bootstrap Responsive Web
	Template | Contact :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords"
	content=" Furnish Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<script>
        addEventListener("load", function () {
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
						<form action="#" method="post" class="newsletter">
							<jsp:include page="search.jsp"></jsp:include>
						</form>
					</div>
				</div>
				<div class="forms mt-md-0 mt-2">
					<a href="ViewCartUser.jsp" class="btn"><span
						class="fa fa-user-circle-o"></span> View Cart</a> <a
						href="register.html" class="btn"><span
						class="fa fa-pencil-square-o"></span> Sign Out</a>
				</div>
			</div>
			<nav class="text-center">
				<label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
				<input type="checkbox" id="drop" />
				<ul class="menu">
					<li class="mr-lg-4 mr-2"><a href="index.jsp">Home</a></li>
					<li class="mr-lg-4 mr-2"><a href="about.jsp">About Us</a></li>
					<li class="mr-lg-4 mr-2"><a href="viewAllBooks.jsp">Books</a></li>
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
			<h3 class="text-center">Contact Page</h3>
		</div>
	</section>
	<!-- //inner banner -->

	<!-- page details -->
	<div class="breadcrumb-agile">
		<div class="container">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="index.html">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Contact
					Us</li>
			</ol>
		</div>
	</div>
	<!-- //page details -->

	<!-- contact -->
	<section class="contact py-5">
		<!-- contact content -->
		<div class="contact-cont pb-3">
			<div class="container">
				<div class="row mail-w3l-w3pvt-">
					<div class="col-lg-6">
						<div class="w3pvt-info_mail_grid_right">
							<form action="#" method="post">
								<div class="form-group">
									<input type="text" name="Name" class="form-control"
										placeholder="Enter Your Name" required="">
								</div>
								<div class="form-group">
									<input type="email" name="Email" class="form-control"
										placeholder="Your Email Id" required="">
								</div>
								<div class="form-group">
									<input type="text" name="phone" class="form-control"
										placeholder="Phone Number" required="">
								</div>
								<div class="form-group">
									<textarea name="Message" placeholder="Enter Message Here"
										required=""></textarea>
								</div>
								<button type="submit" class="btn">Submit</button>
							</form>
						</div>
					</div>
					<div class="col-lg-5 mt-lg-0 mt-5">
						<div class="contact-left-w3ls">
							<h3>Contact Info</h3>
							<div class="row visit">
								<div
									class="col-md-1 col-sm-2 col-2 contact-icon-wthree  pl-2 pr-0">
									<span class="fa fa-home" aria-hidden="true"></span>
								</div>
								<div class="col-md-11 col-sm-10 col-10 contact-text-w3pvt-info">
									<h4>Visit us</h4>
									<p>
										12-A Pride Tower, Sector 125, <br> Noida, Uttar Pradesh 201313
									</p>
								</div>
							</div>
							<div class="row mail-w3 my-4">
								<div
									class="col-md-1 col-sm-2 col-2 contact-icon-wthree pl-2 pr-0">
									<span class="fa fa-envelope-open-o" aria-hidden="true"></span>
								</div>
								<div class="col-md-11 col-sm-10 col-10 contact-text-w3pvt-info">
									<h4>Mail us</h4>
									<p>
										<a href="mailto:info@examplemail.com">info@thalesgroup.com</a>
									</p>
								</div>
							</div>
							<div class="row call">
								<div
									class="col-md-1 col-sm-2 col-2 contact-icon-wthree pl-2 pr-0">
									<span class="fa fa-phone" aria-hidden="true"></span>
								</div>
								<div class="col-md-11 col-sm-10 col-10 contact-text-w3pvt-info">
									<h4>Call us</h4>
									<p>(+91)-98907-99987</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //contact content -->
	</section>
	<!-- //contact -->

	<!-- map -->
	<div class="row">
		<div style="width: 100%">
			<iframe width="100%" height="600"
				src="https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;q=habitat%20center%20indrapuram+(habitat%20center)&amp;ie=UTF8&amp;t=&amp;z=14&amp;iwloc=B&amp;output=embed"
				frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
				<a href="https://www.maps.ie/coordinates.html">find my
					coordinates</a>
			</iframe>
		</div>
		<br />
	</div>
	<br />
	<!-- //map -->





	<!--    
	
	 -->
	
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
					<p>Vivamus magna justo, lacinia eget consectetur sed, convallis
						at tellus. Nulla quis lorem ipnut libero malesuada feugiat. Lorem
						ipsum dolor sit amet elit.</p>
				</div>
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
				<div class="col-md-4 mt-md-0 mt-4">
					<div class="subscribe-form">
						<form action="#" method="post" class="newsletter">
							<input class="subscribe" type="text" placeholder="Subscribe..."
								required="">
							<button class="form-control btn" value="">
								<span class="fa fa-long-arrow-right"></span>
							</button>
						</form>
					</div>
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
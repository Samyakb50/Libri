<%@page import="com.proj.util.UserUtilCls"%>
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
	Template | Home :: w3layouts</title>
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

<link href="css/css_slider.css" type="text/css" rel="stylesheet"
	media="all">

<!-- google fonts -->
<link
	href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext"
	rel="stylesheet">
<!-- //google fonts -->

</head>
<body>
<%
UserUtilCls ut=new UserUtilCls();
int cid=0;
int oid=0;
if(session.getAttribute("coid")!=null)
{
	int ids[]=(int[])session.getAttribute("coid");
	cid=ids[0];
	oid=ids[1];
}
%>
	<!-- //header -->
	<header class="py-sm-3 pt-3 pb-2" id="home">
		<div class="container">
			<!-- nav -->
			<div class="top d-md-flex">
				<div id="logo">
					<h1>
						<a href="index.jsp"><span class="fa fa-meetup"></span>
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
						class="fa fa-user-circle-o"></span> View Cart</a>
				<a href="signout.jsp" class="btn"><span
						class="fa fa-pencil-square-o"></span> Sign Out</a>
			</div>
		</div>
		<nav class="text-center">
			<label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
			<input type="checkbox" id="drop" />
			<ul class="menu">
				<li class="mr-lg-4 mr-2 active"><a href="index.jsp">Home</a></li>
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

<!-- banner -->
<section class="banner_w3lspvt">
	<div class="csslider infinity" id="slider1">
		<input type="radio" name="slides" checked="checked" id="slides_1" />
		<input type="radio" name="slides" id="slides_2" />
		<input type="radio" name="slides" id="slides_3" />
		<input type="radio" name="slides" id="slides_4" />
		<ul>
			<li>
				<div class="banner-top">
					<div class="overlay">
						<div class="container">
							<div class="w3layouts-banner-info text-center">
								<h3 class="text-wh">We Are the best designers of Interior Furniture</h3>
								<p class="text-li mx-auto mt-2">Ut enim ad minim quis nostrud exerci sed do eiusmod tempor incididunt ut
									labore et dolore magna aliqua nostrud exerci sed.</p>
								<a href="about.html" class="button-style mt-4">Explore More</a>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="banner-top1">
					<div class="overlay">
						<div class="container">
							<div class="w3layouts-banner-info text-center">
								<h3 class="text-wh">We Are the best designers of Interior Furniture</h3>
								<p class="text-li mx-auto mt-2">Ut enim ad minim quis nostrud exerci sed do eiusmod tempor incididunt ut
									labore et dolore magna aliqua nostrud exerci sed.</p>
								<a href="about.html" class="button-style mt-4">Explore More</a>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="banner-top2">
					<div class="overlay">
						<div class="container">
							<div class="w3layouts-banner-info text-center">
								<h3 class="text-wh">We Are the best designers of Interior Furniture</h3>
								<p class="text-li mx-auto mt-2">Ut enim ad minim quis nostrud exerci sed do eiusmod tempor incididunt ut
									labore et dolore magna aliqua nostrud exerci sed.</p>
								<a href="about.html" class="button-style mt-4">Explore More</a>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="banner-top3">
					<div class="overlay">
						<div class="container">
							<div class="w3layouts-banner-info text-center">
								<h3 class="text-wh">We Are the best designers of Interior Furniture</h3>
								<p class="text-li mx-auto mt-2">Ut enim ad minim quis nostrud exerci sed do eiusmod tempor incididunt ut
									labore et dolore magna aliqua nostrud exerci sed.</p>
								<a href="about.html" class="button-style mt-4">Explore More</a>
							</div>
						</div>
					</div>
				</div>
			</li>
		</ul>
		<div class="arrows">
			<label for="slides_1"></label>
			<label for="slides_2"></label>
			<label for="slides_3"></label>
			<label for="slides_4"></label>
		</div>
	</div>
</section>
<!-- //banner -->

<!-- about-->
<section class="wthree-row py-5" id="about">
	<div class="container py-lg-5">
		<div class="row about-main">
			<div class="col-lg-5 about-text-grid text-left pr-lg-5">
				<div class="title-desc">
					<h3 class="main-title-w3pvt text-capitalize">Our Mission is to design the best interior around</h3>
				</div>
				<hr>
				<p class="mt-3">Vestibulum feugiat tortor vitae diam euismod, ut et interdum nisi fermentum. Pellentesque sed sodales nunc.
				Vestibulum laoreet erat nisi, sit amet ultrices augue lobortis sed. Curabitur et tortor ac diam sed efficitur dapibus in vitae
				dui donec aliquet.</p>

				<a href="#more"
						class="text-capitalize serv_link btn bg-theme1 scroll mt-4">view more</a>
			</div>
			<div class="col-lg-3 col-sm-6 about-right mt-lg-0 mt-4">
				<img src="images/a3.jpg" class="img-fluid" alt="" />
			</div>
			<div class="col-lg-4 col-sm-6 mt-lg-0 mt-3 about-right2">
				<img src="images/a1.jpg" class="img-fluid" alt="" />
			</div>
		</div>
	</div>
</section>
<!-- //about -->

<!-- what we do -->
<section class="what-we-do">
	<div class="overlay1 py-5">
		<div class="container py-lg-5">
			<div class="row">
				<div class="col-lg-3 mb-lg-0 mb-4">
					<h3 class="heading">What <span>we do</span>
						</h3>
				</div>
				<div class="col-lg-3 col-md-4 mt-md-0 mt-4">
					<div class="grid">
						<div class="grid-layout">
							<span class="fa fa-building mb-sm-4 mb-2" aria-hidden="true"></span>
							<h5 class="card-title mb-sm-3 mb-2">Architecture</h5>
							<p class="card-text">Pellentesque et sed sodales nuc ipsum. Vestibulum laoreeti erat nis,
							sit amet ultricel sed augues lobotis sed. Curabitur et tortor ac diam laoreet erat dolor.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 mt-md-0 mt-sm-5 mt-4">
					<div class="grid">
						<div class="grid-layout">
							<span class="fa fa-bath mb-sm-4 mb-2" aria-hidden="true"></span>
							<h5 class="card-title mb-sm-3 mb-2">Interior Design</h5>
							<p class="card-text">Pellentesque et sed sodales nuc ipsum. Vestibulum laoreeti erat nis,
							sit amet ultricel sed augues lobotis sed. Curabitur et tortor ac diam laoreet erat dolor.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 mt-md-0 mt-sm-5 mt-4">
					<div class="grid">
						<div class="grid-layout">
							<span class="fa fa-align-left mb-sm-4 mb-2" aria-hidden="true"></span>
							<h5 class="card-title mb-sm-3 mb-2">Furniture</h5>
							<p class="card-text">Pellentesque et sed sodales nuc ipsum. Vestibulum laoreeti erat nis,
							sit amet ultricel sed augues lobotis sed. Curabitur et tortor ac diam laoreet erat dolor.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //what we do -->

<!-- specialization-->
<section class="wthree-row specialization py-5">
	<div class="container py-lg-5">
		<div class="row about-main">
			<div class="col-lg-5 about-text-grid text-left pr-lg-5">
				<h3 class="heading"> Our Specialization </h3>
				<p class="mt-3">Vestibulum feugiat tortor vitae diam euismod, ut et interdum nisi fermentum. Pellentesque sed sodales nunc.
				Vestibulum laoreet erat nisi, sit amet.</p>
				<hr>
				<p>01. Home Furniture Design</p>
				<p>02. Commercial Office Design</p>
				<p>03. Interior Furniture Design</p>
				<p>04. Indoor and Outdoor Furniture</p>
				<p>05. Landscape Design</p>
			</div>
			<div class="col-lg-3 col-sm-6 mt-lg-0 mt-4">
				<span>24</span>
				<h4>years of experience</h4>
			</div>
			<div class="col-lg-4 col-sm-6 mt-lg-0 mt-4 about-right2">
				<img src="images/specialization.jpg" class="img-fluid" alt="" />
			</div>
		</div>
	</div>
</section>
<!-- //specialization -->

<!-- top categories -->
<section class="news py-5" id="news">
	<div class="container py-lg-5">
		<div class="d-flex view">
			<h3 class="heading mb-5"> Top Categories </h3>
			<div class="ml-auto">
				<a href="categories.html">View All</a>
			</div>
		</div>
		<div class="row news-grids">
			<div class="col-lg-3 col-sm-6 newsgrid1">
				<img src="images/living-room.jpg" alt="news image" class="img-fluid">
				<h4 class="mt-4">Living Room</h4>
				
				<a href="register.html"><button> </button></a>
			</div>
			<div class="col-lg-3 col-sm-6 mt-sm-0 mt-5 newsgrid2">
				<img src="images/dining-room.jpg" alt="news image" class="img-fluid">
				<h4 class=" mt-4">Dining Room</h4>
				<p class="mt-3">Nulla pellentesque dolor ipsum laoreet eleifend integer. </p>
			</div>
			<div class="col-lg-3 col-sm-6 newsgrid3 mt-lg-0 mt-4">
				<img src="images/bedrooom.jpg" alt="news image" class="img-fluid">
				<h4 class=" mt-4">Bedroom</h4>
				<p class="mt-3">Nulla pellentesque dolor ipsum laoreet eleifend integer. </p>
			</div>
			<div class="col-lg-3 col-sm-6 newsgrid3 mt-lg-0 mt-4">
				<img src="images/office-room.jpg" alt="news image" class="img-fluid">
				<h4 class=" mt-4">Office Room</h4>
				<p class="mt-3">Nulla pellentesque dolor ipsum laoreet eleifend integer. </p>
			</div>
		</div>		
	</div>
</section>
<!-- //top categories -->	

<!-- tabs -->
<section class="middile-sec py-5" id="tabs">
	<div class="container py-md-5">
		<div class="row">
			<div class="col-lg-12 middile-inner-con">
				<div class="tab-main mx-auto">

					<input id="tab1" type="radio" name="tabs" checked>
					<label for="tab1"> Soft Furniture</label>

					<input id="tab2" type="radio" name="tabs">
					<label for="tab2"> Kitchen Cabinet</label>

					<input id="tab3" type="radio" name="tabs">
					<label for="tab3"> Three Seater Sofa</label>
					
					<input id="tab4" type="radio" name="tabs">
					<label for="tab4"> Wall Design</label>

					<section id="content1">
						<div class="row">
							<div class="col-md-4">
								<img src="images/soft.jpg" class="img-fluid" alt="" />
							</div>
							<div class="col-md-8 mt-md-0 mt-4">
								<h5 class="mb-3 text-capitalize">The personality and lifestyle of a homeowner is reflected to a large extent in the interior design and décor of the home. Soft furnishings play an important role in interiors.</h5>	
								<p>Vivamus eget est in odio tempor interdum. Mauris maximus fermentum arcu, ac finibus ante. Sed mattis risus at ipsum elementum, sed auctor ut turpis cursus. Vivamus eget est in odio tempor interdum. Mauris max fermentum arcu, ac finibus ante. Sed mattis risus.</p>
							</div>
						</div>
					</section>

					<section id="content2">
						<div class="row">
							<div class="col-md-8">
								<h5 class="mb-3 text-capitalize">Kitchen cabinets are the built-in furniture installed in many kitchens for storage of food, cooking equipment, and often silverware and dishes for table service. </h5>
								<p>Mauris max fermentum arcu, ac finibus ante Vivamus eget est in odio sed tempor interdum. Mauris maximus fermentum arcu, ac finibus ante. Sed mattis risus at ipsum elementum, ut auctor turpis cursus ipsum dolor. Vivamus eget est in odio tempor interdum.</p>
							</div>
							<div class="col-md-4 mt-md-0 mt-4">
								<img src="images/kitchen.jpg" class="img-fluid" alt="" />
							</div>
						</div>
					</section>

					<section id="content3">
						<div class="row">
							<div class="col-md-4">
								<img src="images/sofa.jpg" class="img-fluid" alt="" />
							</div>
							<div class="col-md-8 mt-md-0 mt-4">
								<h5 class="mb-3 text-capitalize">The best decor for your living room are 3 Seater Sofas so choose wisely according to your home requirements. Explore our latest sofa designs. </h5>
								<p>Aac finibus ante. Sed mattis risus at ipsum Vivamus eget est in odio tempor interdumet sed. Mauris maximus fermentum arcu, ac finibus ante. Sed mattis risus at ipsum elementum, ut auctor turpis cursus. Mauris maximus fermentum arcu, ac finibus ante lorem ipsum.</p>
							</div>
						</div>
					</section>
					
					<section id="content4">
						<div class="row">
							<div class="col-md-8">
								<h5 class="mb-3 text-capitalize">wooden walls are a desirable, but not always economical, option. Keep the warmth and glow of wood inside your home. </h5>
								<p>Mauris max fermentum arcu, ac finibus ante Vivamus eget est in odio sed tempor interdum. Mauris maximus fermentum arcu, ac finibus ante. Sed mattis risus at ipsum elementum, ut auctor turpis cursus ipsum dolor. Vivamus eget est in odio tempor interdum.</p>
							</div>
							<div class="col-md-4 mt-md-0 mt-4">
								<img src="images/wall.jpg" class="img-fluid" alt="" />
							</div>
						</div>
					</section>

				</div>
			</div>
			<div class="col-lg-6 about-img mt-lg-0 mt-4">
			</div>
		</div>
	</div>
</section>
<!--//tabs -->

<!-- footer -->
<footer class="footer py-5">
	<div class="container py-md-3">
		<div class="footer-grid_section text-center">
			<div class="footer-title mb-3">
				<h2> <a href="index.html"><span class="fa fa-meetup"></span> Libri</a>
					</h2>
			</div>
			<div class="footer-text">
				<p>Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ipnut libero malesuada feugiat.
				 Lorem ipsum dolor sit amet elit.</p>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col-lg-4 mb-lg-0 mb-4 footer-top">
				<h4 class="mb-4 w3f_title text-uppercase">Contact Info</h4>
				<div class="footer-style-w3ls my-2">
					<p> 1127 Block, 2nd cross, 4th floor, London.</p>
				</div>
				<div class="footer-style-w3ls my-2">
					<p> (+121)-098-8907-9987</p>
				</div>
				<div class="footer-style-w3ls">
					<p> <a href="mailto:info@examplemail.com">info@examplemail.com</a>
						</p>
				</div>
			</div>
			<div class="col-lg-2 col-md-3 col-6 footv3-left">
				<h4 class="mb-md-4 mb-3 w3f_title text-uppercase">Company</h4>
				<ul class="list-agileits">
					<li class="my-2">
						<a href="about.html">
							About Us
						</a>
					</li>
					<li class="mb-2">
						<a href="#">
							Terms of use
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Faq's
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Privacy Ploicy
						</a>
					</li>
					<li>
						<a href="contact.html">
							Get In Touch
						</a>
					</li>
				</ul>
			</div>
			<div class="col-lg-2 col-md-3 col-6">
				<h4 class="mb-md-4 mb-3 w3f_title text-uppercase">Categories</h4>
				<ul class="list-agileits">
					<li class="my-2">
						<a href="#">
							Furniture Chairs
						</a>
					</li>
					<li class="mb-2">
						<a href="#">
							Three Seater Sofas
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Dining Tables
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							Office Chairs
						</a>
					</li>
					<li>
						<a href="#">
							Kitchen Cabinets
						</a>
					</li>
				</ul>
			</div>

			<div class="col-lg-2 col-md-3 col-6 mt-md-0 mt-sm-5 mt-4">
				<h4 class="mb-md-4 mb-3 w3f_title text-uppercase">Resources</h4>
				<ul class="list-agileits">
					<li class="my-2">
						<a href="#">
							Getting Started
						</a>
					</li>
					<li class="mb-2">
						<a href="#">
							Best Collections
						</a>
					</li>
					<li class="my-2">
						<a href="categories.html">
							All Categories
						</a>
					</li>
					<li class="my-2">
						<a href="#">
							24/7 Support
						</a>
					</li>
					<li>
						<a href="#">
							Contact for Help
						</a>
					</li>
				</ul>
			</div>
			
			<div class="col-lg-2 col-md-3 col-6 mt-md-0 mt-sm-5 mt-4">
				<h4 class="mb-md-4 mb-3 w3f_title text-uppercase">Account</h4>
				<ul class="list-agileits">
					<li class="my-2">
						<a href="login.html">
							Sign In
						</a>
					</li>
					<li class="">
						<a href="register.html">
							Create Account
						</a>
					</li>
				</ul>
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
				<p class="">© 2019 Furnish. All rights reserved | Design by
					<a href="http://w3layouts.com"> W3layouts.</a>
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
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

<title>Add New Book</title>
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<link rel="stylesheet" href="addbookstyle.css">
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
		<form action="helperAddBook.jsp">
			<div class="banner">
				<h1>Add New Book</h1>
			</div>
			<div class="colums">
				<div class="item">
					<label for="bookname"> Book Name <span>*</span></label> <input
						id="bookname" type="text" name="bookname" required />
				</div>
				<div class="item">
					<label for="authorname"> Author Name<span>*</span></label> <input
						id="authorname" type="text" name="authorname" required />
				</div>
				<div class="item">
					<label for="publishername"> Publisher Name<span>*</span></label> <input
						id="publishername" type="text" name="publishername" required />
				</div>
				<div class="item">
					<label for="subjectname">Subject Name<span>*</span></label> <input
						id="subjectname" type="text" name="subjectname" required />
				</div>
				<div class="item">
					<label for="price">Price<span>*</span></label> <input id="price"
						type="text" name="price" required />
				</div>
				<div class="item">
					<label for="year">Year Of Publish<span>*</span></label> <input
						id="year" type="text" name="year" required />
				</div>
				<div class="item">
					<label for="language">Language<span>*</span></label> <input
						id="language" type="text" name="language" required />
				</div>
				<div class="item">
					<label for="used">used<span>*</span></label> <input id="used"
						type="text" name="used" required />
				</div>
				<div class="item">
					<label for="stock">Stock<span>*</span></label> <input id="stock"
						type="tel" name="stock" required />
				</div>
			</div><br><br>
			<center><button type="submit"  value="Submit" onclick="">Submit</button></center>
		</form>
		

		
	</div>
</body>
</html>
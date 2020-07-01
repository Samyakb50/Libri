<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script></head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.js">Book Store</a>
    </div>
      <ul class="nav navbar-nav">
      <li class="active"><a href="index.js">Home</a></li>
      <li ><a href="index.js">Best Seller</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Search <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Title </a></li>
            <li><a href="#">Category</a></li>
            
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Used/Unsed <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Used </a></li>
            <li><a href="#">Unsed</a></li>
            
          </ul>
        </li>
              <li><a href="index.js">Price</a></li>
      </ul>
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      

	<ul class="nav navbar-nav navbar-right">
        <li><a href="#">Sign Out</a></li>
        </ul>
            </div>
	</nav>
	
	
</body>
</html>
<%@page import="com.proj.signup.LoginSignupUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot Password</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
body {
color: #fff;
background: #696969;
background-image: url("a.jpg");
background-size: 2000px 1000px;
}
.form-control {
        min-height: 41px;
background: #fff;
box-shadow: none !important;
border-color: #e3e3e3;
}
.form-control:focus {
border-color: #70c5c0;
}
    .form-control, .btn {        
        border-radius: 2px;
    }
.login-form {
width: 350px;
margin: 0 auto;
padding: 100px 0 30px;
}
.login-form form {
color: #7a7a7a;
border-radius: 2px;
    margin-bottom: 15px;
        font-size: 13px;
        background: #ececec;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
        position: relative;
    }
.login-form h2 {
font-size: 22px;
        margin: 35px 0 25px;
    }
.login-form .avatar {
position: absolute;
margin: 0 auto;
left: 0;
right: 0;
top: -50px;
width: 95px;
height: 95px;
border-radius: 50%;
z-index: 9;
background: #fed136;
padding: 15px;
box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
}
.login-form .avatar img {
width: 100%;
}
    .login-form input[type="checkbox"] {
        margin-top: 2px;
    }
    .login-form .btn {        
        font-size: 16px;
        font-weight: bold;
background:#fed136;
border: none;
margin-bottom: 20px;
    }
.login-form .btn:hover, .login-form .btn:focus {
background: #fed136;
        outline: none !important;
}    
.login-form a {
color: #fff;
text-decoration: underline;
}
.login-form a:hover {
text-decoration: none;
}
.login-form form a {
color: #7a7a7a;
text-decoration: none;
}
.login-form form a:hover {
text-decoration: underline;
}
</style>
</head>
<body>
<div class="login-form">
    <form  method="post" >

        <h2 class="text-center">Enter Registered Email</h2>  
        <div class="form-group">
        <input type="email" class="form-control" name="email" placeholder="Email" required="required">
        </div>
     
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg btn-block" >Send Password</button>
        </div>

     
<%
if(request.getParameter("email")!=null)
{
String a=request.getParameter("email");
LoginSignupUtil f=new LoginSignupUtil();
String m=f.Forgot(a);
if(m.equals("new"))
{
%>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <center> <h1>New Password Send to your Email!</h1></center>
    </div>

<%
}
else{
%>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <center> <h1>Please Enter a Registered Email Id</h1></center>
    </div>

<% }
}
%>
</body>
</html>                            

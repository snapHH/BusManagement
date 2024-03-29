<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	<style>
		body
		{
			background-repeat:no-repeat;
			background-position:center;
			background-size:cover;
			background-attachment:fixed;
		}
        h1
        {
            color: white;
            text-align: center;
            margin-top: 25px;
            margin-bottom: 45px;
        }
        #div1
        {
            text-align: center;
            margin-top: 200px;
            background-color: rgba(128, 128, 128, 0.3);
            height: 440px;
            width: 400px;
            margin-left: auto;
            margin-right: auto;
            padding-top: 20px;
            border-radius: 10px;
        }
        .form-group i
        {
        position:absolute;
        padding:10px;
        }
        .form-group input
        {
        padding-left:20px;
        }
    </style>
</head>
<body>
<% 
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
	%>
<nav class="navbar navbar-expand-sm bg-primary navbar-dark fixed-top">
  <a class="navbar-brand" href="#" style="color: lightblue;">BusCart</a>
  <ul class="navbar-nav">
  <li class="nav-item">
      <a class="nav-link" href="Home.jsp">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Login.jsp">Log In</a>
    </li>
  </ul>
</nav>
    <div class="card img-fluid" style="width:100%">
    <img class="card-img-top" src="bus1.jpg" alt="Card image" style="width:100%">
    <div class="card-img-overlay">
    <div id="div1">
        <h1>LOG IN</h1>
        <%
		  if(request.getAttribute("message")!=null)
		  {
		  	out.print("<p class='text-danger'> <i class='fa fa-exclamation-circle mr-2'></i>"+request.getAttribute("message")+"</p>");
		  }
		  else if(request.getAttribute("status")!= null)
		  {
		  	out.print("<p class='text-success'> <i class='fa fa-exclamation-circle mr-2'></i>"+request.getAttribute("status")+"</p>");
		  }
		%>
        
        <form action="login" method="post">
            <div class="form-group">
            	<input class="form-control ml-auto mr-auto mb-4" type="text" name="userName" required="" placeholder="Username" style="width: 250px;" autofocus="">
            </div>
            <div class="form-group">
            	<input class="form-control ml-auto mr-auto mb-4" type="password" name="password" required="" placeholder="Password" style="width: 250px;">
            </div>
            <div class="form-group">
            	<button type="submit" class="btn btn-primary">Log in</button>
            </div>
            <a href="signup.jsp" class="text-white">Create new account</a> <br>
            <a href="forgetpassword.jsp" class="text-white">Forget Password?</a> 
          </form> 
    </div>
   </div>
  </div>

</body>
</html>
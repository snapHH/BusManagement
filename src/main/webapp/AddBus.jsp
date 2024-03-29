<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Bus Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <style>
  #div1
  {
  text-align:center;
  margin-top:70px;
  }
  #logout
{
margin-left:1250px;
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
    <a class="nav-link" id="logout" href="Home.jsp">LogOut</a>
  </li>
  </ul>
</nav>
	<div class="container">
		<div id="div1">
		<%
		  if(request.getAttribute("status")!=null)
		  {
		  	out.print("<p class='text-success'> <i class='fa fa-exclamation-circle mr-2'></i>"+request.getAttribute("status")+"</p>");
		  }
		%>
			<h2 class="text-primary mb-4">Add Bus Details</h2>
			<form action="addbus" method="post">
            <div class="form-group">
            	<input class="form-control ml-auto mr-auto mb-4" type="text" name="busNo" required="" placeholder="Bus NO" style="width: 250px;" autofocus="">
            </div>
            <div class="form-group">
            	<input class="form-control ml-auto mr-auto mb-4" type="text" name="start" required="" placeholder="Starting point" style="width: 250px;">
            </div>
            <div class="form-group">
            	<input class="form-control ml-auto mr-auto mb-4" type="text" name="destination" required="" placeholder="Destination point" style="width: 250px;">
            </div>
            <div class="form-group">
            	<input class="form-control ml-auto mr-auto mb-4" type="number" name="fare" required="" placeholder="Fare" style="width: 250px;">
            </div>
            <div class="form-group">
            	<input class="form-control ml-auto mr-auto mb-4" type="text" name="time" required="" placeholder="Depature Time" style="width: 250px;">
            </div>
            <div class="form-group">
            	<button type="submit" class="btn btn-primary">Add Bus</button>
            </div>
          	</form>
		</div>
	</div>
</body>
</html>
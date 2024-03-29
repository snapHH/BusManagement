<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	<head>
	 <style type="text/css">
	   h2
	   {
	   text-align:center;
	   }
	   
	   .dropdown-menu
	   {
	   width:1000px;
	   }
	   .container
	   {
	   border:1px solid black;
	   padding:10px;
	   border-radius:10px;
	   text-align:center;
	   margin-top:70px;
	   }
	   .dropdown-menu
	   {
	   margin-left: 74px;
	   }
	   #btn
	   {
	   width:1000px;
	   text-align:left;
	   font-size:19px;
	   }
	   input
	   {
	   padding:6px 13px;
	   }
	   .dropdown
	   {
	   margin-top:15px;
	   margin-bottom:15px;
	   }
	   #s1
	   {
	   padding:10px;
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
    <a class="nav-link" id="logout" href="Home.jsp">Log Out</a>
  </li>
  </ul>
</nav>

<div class="container">
	<form action="verify" method="post">
	<h2>Payment Method</h2>
	  <div class="dropdown">
	    <button id="btn" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">UPI PAYMENT</button>
	    <ul class="dropdown-menu">
	      <li><input type="number" name="number" placeholder="UPI Mobile Number"></li>
	    </ul>
	  </div>
	  
	  <div class="dropdown">
	    <button id="btn" class="btn btn-primary dropdown-show" type="button" data-toggle="dropdown">CARD PAYMENT</button>
	    <ul class="dropdown-menu">
	      <li><input type="number" name="cardNumber" placeholder="Card Number"></li>
	      <li><input type="number" name="month" placeholder="MM" style="width:70px;margin-right:10px;"><input type="number" name="year" placeholder="YYYY" style="width:92px;"></li>
	      <li><input type="number" name="cvv" placeholder="CVV"></li>
	      <li><input type="text" name="name" placeholder="Card Holder Name"></li>
	    </ul>
	  </div>
	  	<button type="submit" class="btn btn-primary">PAY NOW</button>
	  </form>
		<%
		  if(request.getAttribute("message")!=null)
		  {
		  	out.print("<p class='text-danger' style='margin-top:20px;'> <i class='fa fa-exclamation-circle mr-2'></i>"+request.getAttribute("message")+"</p>");
		  }
		%>
		</div>
</body>
</html>
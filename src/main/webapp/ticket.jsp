<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">

<style>
.col-5,.col-2
{
margin-top:50px;
background-color:#fadfac;
border-top:solid orange 3px;
border-bottom:solid orange 3px;

}
#C1
{
 border:3px solid black;
 margin-top:70px;
 border-radius:10px; 
 height:600px;
}
#C2
{
 margin-top:40px;
}
#C3
{
 padding-left:150px;
 text-align:right;
}
#C4
{
background-color:#e0ded7;
border-top:solid black 3px;
margin-top:15px;
}
#C5
{
 
 text-align:right;
}
#C6
{
background-color:#e0ded7;
border-bottom:solid black 3px;
}
#C7
{
Margin-top:30px;
}
#A1
{
color:blue;
text-decoration:underline;
}
#A2
{
border-top:solid 3px black;
margin-top:40px;
}
#A3
{
border-top:solid 3px black;
margin-top:15px;
}
#m1
{
margin-left:370px;
}
#logout
{
margin-left:1150px;
}
</style>
<title>Ticket</title>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-primary navbar-dark fixed-top">
  <a class="navbar-brand" href="#" style="color: lightblue;">BusCart</a>
  <ul class="navbar-nav">
  <li class="nav-item">
    <a class="nav-link" href="Home.jsp">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="SearchTicket.jsp">Book Ticket</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="logout" href="Home.jsp">Log Out</a>
  </li>
  </ul>
</nav>
<% 
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
	%>
<div class="container" id="C1">
	<div class="container-fluid" id="C2">
	  <div class="row">
	    <div class="col-5"><h4><%= session.getAttribute("from") %> To <%= session.getAttribute("to") %></h4></div>
	    <div class="col-2"><h4><%= session.getAttribute("date") %></h4></div>
	    <div class="col-5" id="C3"><h4>BusCart Travels</h4></div>
	  </div>
	</div>
        
        <div id="A2"></div>
        
	<div class="container-fluid" >
	  <div class="row" id="C4">
	    <div class="col-3" ><h4 id="A1">Passenger name</h4></div>
	    <div class="col-3" ><h4 id="A1">BusCart Ticket</h4></div>
	    <div class="col-3" ><h4 id="A1">Seat numbers</h4></div>
	    <div class="col-3" id="C5"><h4 id="A1">PNR#</h4></div>
	  </div>
	   <div class="row" id="C6">
	    <div class="col-3" ><h5><%= session.getAttribute("passangerName") %></h5></div>
	    <div class="col-3" ><h5>TCA483435698</h5></div>
	    <div class="col-3" ><h5><%= session.getAttribute("seatNO") %></h5></div>
	    <div class="col-3" id="C5"><h5>RTRMKHN74837884</h5></div>
	  </div>
	</div>

       <div id="A3"></div>
         
   <div class="container-fluid" >
	  <div class="row" id="C7">
	    <div class="col" ><h4 id="A1">Bus Type</h4></div>
	    <div class="col" ><h4 id="A1">Departure Time</h4></div>
	    <div class="col" ><h4 id="A1">Boarding point address</h4></div>
	  </div>
	   <div class="row">
	    <div class="col" ><h6>Non A/C Seater</h6></div>
	    <% session.getAttribute("time"); %>
	    <div class="col" ><h6><%= session.getAttribute("time") %></h6></div>
	    <div class="col" ><h6>Location:<%= session.getAttribute("from") %> Bus Depot</h6>
	                      <h6>Landmark:<%= session.getAttribute("from") %> Station</h6>
	    </div>
       </div>
   </div>
	 
  <div class="container-fluid" >
	  <div class="row" id="C7">
	    <div class="col"><h4 id="A1">Total Fare</h4></div>
	    <div class="col" id="m1"> <h4>Address :</h4></div>
	   </div>
	   <div>
	    <div class="row">
	     <div class="col" ><h6><%= session.getAttribute("fare") %> Rs</h6></div>
	     <div class="col" id="m1"><h6>BusCart Travels, Office No.7,<br>Mumbai, Maharashtra-400 001.</h6></div>
	   </div>
  </div>
  </div>
</div>
</body>
</html>
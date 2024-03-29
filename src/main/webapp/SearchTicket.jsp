<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BusCart</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <style>
  h1
  {
  text-align:center;
  }
  #flex-container 
  {
    display: flex;
    flex-direction: row;
    width: 1100px;
    margin: 0 auto;
    background-color:blue;
    border-radius:15px;
    padding:12px 12px 0px 12px;
  }
  #div1
  {
  margin-top:70px;
  }

.flex-item 
{
    margin:10px;
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
	<div id="div1">
     <h1 class="text-primary" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Search Bus</h1>
     
       <form action="searchbus" method="post">
       <div id="flex-container">
            <div class="form-group flex-item ml-auto" >
            	<input class="form-control ml-auto mr-auto mb-4"  id="fromInput" type="text" name="from" required="" placeholder="FROM" style="width: 250px;" autofocus="">
            </div>
            <div class="form-group  flex-item">
            	<input class="form-control ml-auto mr-auto mb-4"  id="toInput" type="text" name="to" required="" placeholder="TO" style="width: 250px;">
            </div>
            <div class="form-group  flex-item">
            	<input class="form-control ml-auto mr-auto mb-4" id="inputdate" type="date" required="" name="date"  style="width: 250px;">
            </div>
            <div class="form-group  flex-item mr-auto">
            	<button type="submit" id="btn" class="btn btn-primary">Search Bus</button>
            </div>
            </div>
        </form>
        <%
		  if(request.getAttribute("message")!=null)
		  {
		  	out.print("<h5 style='text-align:center; margin-top:10px;'>"+request.getAttribute("message")+"</h5>");
		  }
		%>
	  
    </div>
   <script type="text/javascript">
	$(function(){
    var dtToday = new Date();
 
    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
     day = '0' + day.toString();
    var minDate = year + '-' + month + '-' + day;
    $('#inputdate').attr('min', minDate);
});
</script>

</body>
</html>
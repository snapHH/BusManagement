<%@page import="com.login.Bus"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
 <head>
       <meta charset="ISO-8859-1">
		<style type="text/css">
		h1
		{
		 text-align:center;
		}
		#div1
		{
		margin-top:70px;
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
		.flex-item 
		{
		    margin:10px;
		}
		#myDIV
		{
		margin-top:10px;
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
	<%HttpSession session1 = request.getSession();
		String from = (String) session1.getAttribute("from");
		String to = (String) session1.getAttribute("to"); %>
<nav class="navbar navbar-expand-sm bg-primary navbar-dark fixed-top">
  <a class="navbar-brand" href="#">Blue Buss</a>
  <ul class="navbar-nav">
  <li class="nav-item">
    <a class="nav-link" href="Home.jsp">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="logout" href="Home.jsp">Log Out</a>
  </li>
  </ul>
</nav>
	  <div id="div1">
     <h1 class="text-primary">Search Bus</h1>
     
       <form action="searchbus" method="post">
       <div id="flex-container">
            <div class="form-group flex-item ml-auto" >
            	<input class="form-control ml-auto mr-auto mb-4" value="<%= session1.getAttribute("from") %>" id="fromInput" type="text" name="from" required="" placeholder="FROM" style="width: 250px;" autofocus="">
            </div>
            <div class="form-group  flex-item">
            	<input class="form-control ml-auto mr-auto mb-4" value="<%= session1.getAttribute("to") %>" id="toInput" type="text" name="to" required="" placeholder="TO" style="width: 250px;">
            </div>
            <div class="form-group  flex-item">
            	<input class="form-control ml-auto mr-auto mb-4" value="<%= session1.getAttribute("date") %>" id="inputdate" type="date" required="" name="date"  style="width: 250px;">
            </div>
            <div class="form-group  flex-item mr-auto">
            	<button type="submit" id="btn" class="btn btn-primary">Search Bus</button>
            </div>
            </div>
        </form>
        
        <div id="myDIV">
        <table class="table table-striped">
	    <thead>
	      <tr>
	        <th>Bus Time</th>
	        <th>Time</th>
	        <th>Your Location </th>
	        <th>Destination</th>
	        <th>Ticket Fare</th>
	        <th>Book Ticket</th>
	      </tr>
	    </thead>
	    <tbody id="myTable">
	      
	      <% Bus bus = new Bus(); %>
	       
	       <% Class.forName("oracle.jdbc.OracleDriver");
	       Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","java","java123");
			String query = "select * from busdetail where yourlocation= ? and destination= ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,from);
			ps.setString(2,to); 
			ResultSet rs = ps.executeQuery();
			while (rs.next()) 
			{
				bus.setBusNO(rs.getString("busno"));
				bus.setTime(rs.getString("time"));
				bus.setYourLocation(rs.getString("yourlocation"));
				bus.setDestination(rs.getString("destination"));
				bus.setFare(rs.getString("fare"));
				out.print("<tr><td>"+rs.getString("busno")+"</td>");
		        out.print("<td>"+bus.getTime()+"</td>");
		        out.print("<td>"+session1.getAttribute("from")+"</td>");
		        out.print("<td>"+session1.getAttribute("to")+"</td>");
		        out.print("<td>"+bus.getFare()+"</td>");
		        session.setAttribute("fare", rs.getString("fare"));
		        session.setAttribute("time", rs.getString("time"));
		        out.print("<td><a href='PassengerDetails.jsp'><button type='submit' class='btn btn-primary'>Book now</button></a></td></tr>");
			} %>
	    </tbody>
	  </table>
	  </div>
	  
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
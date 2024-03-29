<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Passenger Details</title>
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
  #sel1
  {
  width:22.5%;
  margin-left:auto;
  margin-right:auto;
  }
  #gen
  {
  margin-right:190px;
  }
  #seat
  {
  margin-right:110px;
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
		<div id="div1">
			<h2 class="text-primary mb-4">Passenger Details</h2>
			<form action="addpassenger" method="post">
            <div class="form-group">
            	<input class="form-control ml-auto mr-auto mb-4" type="text" name="name" required="" placeholder="Passenger Name" style="width: 250px;" autofocus="">
            </div>
            <div class="form-group">
            	<input class="form-control ml-auto mr-auto mb-4" type="number" name="age" required="" placeholder="Passenger Age" style="width: 250px;">
            </div>
            <div class="form-group">
            	<input class="form-control ml-auto mr-auto mb-4" type="number" name="mobile" required="" placeholder="Mobile Number" style="width: 250px;">
            </div>
            <div class="form-group">
            	<label for="sel1" id="gen">Gender</label>
		      	<select class="form-control" id="sel1" name="gender">
			        <option>MALE</option>
			        <option>FEMALE</option>
			        <option>OTHER</option>
			        <option>PREFER NOT TO ANSWER</option>
      			</select>
            </div>
            <div class="form-group">
            	<label for="sel1" id="seat">Select Seat Number</label>
		      	<select class="form-control" id="sel1" name="seat">
			        <option>1</option>
			        <option>2</option>
			        <option>3</option>
			        <option>4</option>
			        <option>5</option>
			        <option>6</option>
			        <option>7</option>
			        <option>8</option>
			        <option>9</option>
			        <option>10</option>
			        <option>11</option>
			        <option>12</option>
			        <option>13</option>
			        <option>14</option>
			        <option>15</option>
			        <option>16</option>
			        <option>17</option>
			        <option>18</option>
			        <option>19</option>
			        <option>20</option>
			        <option>21</option>
			        <option>22</option>
			        <option>23</option>
			        <option>24</option>
			        <option>25</option>
			        <option>26</option>
			        <option>27</option>
			        <option>28</option>
			        <option>29</option>
			        <option>30</option>
      			</select>
            </div>
            <div class="form-group">
            	<button type="submit" class="btn btn-primary">CONTINUE</button>
            </div>
          	</form>
		</div>
	</div>
</body>
</html>
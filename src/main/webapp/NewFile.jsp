<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BusCart</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <style>
  .container
  {
  margin-top:30px;
  }
  .captcha
  {
  border:1px solid #ccc;
  font-family: cursive;
  padding:12px;
  width:180px;
  text-align: center;
  border-radius:10px;
  user-select:none;
  margin-bottom:20px;
  }
  i
  {
  cursor:pointer;
  }
  .icon
  {
  margin:10px;
  }
  .CaptchaInput
  {
  padding:3px 10px;
  }
  </style>
</head>
<body>
<% 
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
	%>
	<div class="container">
		<div class="row">
			<div class="captcha" id="AutoGenerateValue"></div>
			<div class="icon"><i class="fa fa-refresh" style="font-size:30px;" onclick="generateAutoCaptcha()"></i></div>
		</div>
		<div class="row">
		<input class="CaptchaInput" type="text" id="userCaptchaValue" placeholder="Enter Captcha">
		</div>
		<input type="button" onclick="DoValidateCaptcha()" value="submit">
		<h6 id="message"></h6>
	</div>
	
	<script src="script.js"></script>
</body>
</html>
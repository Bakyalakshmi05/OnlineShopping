<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">

	<link rel="icon" type="image/png" href="https://cdn0.iconfinder.com/data/icons/shopping-solid-1/48/8-512.png" />
	<title>OnlineShoping</title>
	<link rel="stylesheet" href="css1.css" type="text/css">
	<link rel="stylesheet" href="w3.css" type="text/css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
		rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
		crossorigin="anonymous">
	<style>	
		body{
			font-family: "Lato", sans-seriff;
			background-image: url('https://image.freepik.com/free-photo/online-shopping-delivery-background-concept_1421-3211.jpg');
			background-repeat:no-repeat;
			background-size:cover;
		}

		.nav-style1{
			font-size:18px;
		}

		.nav-style1:hover{
			font-weight:bolder;
		}

		.style2{
		margin-bottom:450px;
		margin-top:50px;
		}
		.nav1{
			font-size:30px;
		}
	
	</style>
</head>
<body>
<%
if((session.getAttribute("userid")==null) || (session.getAttribute("userid")== " ")){
%>
<div class="text-white text-center style2">
	Must Login first..<br>
	<a href="index.jsp" style="text-decoration:none;font-size:23px;color: white; padding-top: 23px;">Please Login</a>
</div>
<%} 
else{
%>
	<script	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
		integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
		crossorigin="anonymous">		
	</script>
	<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
		integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK"
		crossorigin="anonymous">		
	</script>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark" style="background-color: #008000">
			<div class="d-flex">
				<a class="navbar-brand fw-bolder nav1" href="#">
   					<div class="d-flex"> 
   						<div><img src="https://thumbs.dreamstime.com/z/shopping-cart-icon-round-online-buying-button-vector-illustration-197511399.jpg" id="newstyle" height=45 width=45 alt="DepartmentStore"> </div>
   						<div>DepartmentStore</div>
   					</div>
   				</a>
			</div>
			<ul class="navbar-nav">
				<li><a href="index.jsp" class="nav-link nav-style1 text-white">Home</a></li>
				<li><a href="success.jsp" class="nav-link  nav-style1 text-white">Menu</a></li>
				<li><a href="AboutUs.jsp" class="nav-link  nav-style1 text-white">About Us</a></li>
				<li><a href="logout.jsp" class="nav-link  nav-style1 text-white">Log Out<i>(<% out.print(session.getAttribute("userid")); %>)</i></a></li>
			</ul>
		</nav>
	</header>
	<br>
	<br>
	<h1 class="text-#008000 text-center style2">Thank you for making order......<br>
		Order will be delivered within 4 Hours...<br>
		Continu to shopping.....</h1>
<footer>
	<div class="jumbotron text-center" style="margin-bottom:-40">
		<p class="text-white mt-3"><h3>Happy Sopping</h3></p>
	</div>		
</footer>

</body>
	
</html>
<%} %>
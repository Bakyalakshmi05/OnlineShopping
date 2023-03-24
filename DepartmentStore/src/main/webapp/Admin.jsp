<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="https://cdn0.iconfinder.com/data/icons/shopping-solid-1/48/8-512.png" />
<title>OnlineShopping | Admin Login</title>
<link rel="stylesheet" href="./CSS/lib/fonts/fontawesome-all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
	<style>
		body{
			font-family: "Lato", sans-seriff;
			background-image: url('https://thumbs.dreamstime.com/b/empty-green-supermarket-shopping-cart-abstract-blur-grocery-store-aisle-defocused-background-142228532.jpg');
			background-repeat:no-repeat;
			background-size:cover;
		}
		.signup{
			background-color:#32cd32; 
        	color: white; 
        	border: none; 
        	border-radius: 10px; 
        	width: 100px;
        	height:40px; 
        	font-size:16px;
		}

		.signup:hover{
	 		background-color: white; 
    		color: #008000; 
    		border: 2px solid #32cd32; 
   		}
   		.nav-style1{
			font-size:18px;
			font-weight:normal;
		}

		.nav-style1:hover{
			font-weight:bolder;
		}
		.nav1{
			font-size:30px;
		}
   		
	</style>
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
        integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
        integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous">
    </script>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark fw-bolder" style="background-color: #008000">
			<div class="d-flex">
				<a class="navbar-brand fw-bolder nav1" href="#">
   					<div class="d-flex"> 
   						<div><img src="https://thumbs.dreamstime.com/z/shopping-cart-icon-round-online-buying-button-vector-illustration-197511399.jpg" id="newstyle" height=45 width=45 alt="DepartmentStore"> </div>
   						<div>DepartmentStore</div>
   					</div>
   				</a>
			</div>
			<ul class="navbar-nav">
				<li><a href="#" class="nav-link nav-style1 text-white">Locations</a></li>
				<li><a href="#" class="nav-link nav-style1 text-white">Our Sponcer</a></li>
				<li><a href="AboutUs.jsp" class="nav-link nav-style1 text-white">About Us</a></li>
			</ul>
		</nav>
	</header><br><br>
	<div class="container col-md-20" style="width:500px">
		<h4 class="text-white fw-bold mb-3">Admin Login</h4>
		<div class="card" style="background-color:#bdda57">
			<div class="card-body">
				<form action="AdminValidationServlet" method="post">
					<fieldset class="form-group">
						<label><i class="bi bi-person"></i>&nbsp;&nbsp;User Name</label> 
						<input type="text" class="form-control mb-3 mt-1" name="uname"
							placeholder="Enter your name" value="" required="required">
					</fieldset>

					<fieldset class="form-group">
						<label><i class="bi bi-lock"></i>&nbsp;&nbsp;Password</label>
						<input type="password" class="form-control mb-3 mt-1" name="pwd"
							placeholder="Enter your password" value="" required="required">
					</fieldset>
					<button type="submit" class="btn btn-primary fw-bolder signup mt-2 mb-2">Sign In</button>
				</form>
			</div>
		</div>
	</div>
</body>
<footer>
	<div class="jumbotron text-center" style="margin-bottom: 0;margin-top:300px;">
		<p class="text-white mt-5">Happy shopping</p>
	</div>
</footer>
</html>
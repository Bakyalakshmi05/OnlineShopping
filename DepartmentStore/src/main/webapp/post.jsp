<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" type="image/png" href="https://cdn0.iconfinder.com/data/icons/shopping-solid-1/48/8-512.png" />
	<title>Online Shopping | Post Order</title>
	<link rel="stylesheet" href="w3.css" type="text/css">
	<link rel=”stylesheet” href=”https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css” />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
		rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
		crossorigin="anonymous">
	<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
	<style>
		body{
			font-family: "Lato", sans-seriff;
			background-image: url('https://thumbs.dreamstime.com/b/empty-green-supermarket-shopping-cart-abstract-blur-grocery-store-aisle-defocused-background-142228532.jpg');
			background-repeat:no-repeat;
			background-size:cover;
		}

		.nav-style1:hover{
			font-weight:bolder;
		}
		.signup{
			background-color: #32cd32; 
	       	color: white; 
    	    border: none;
   		    border-radius: 10px; 
     		width: 200px;
        	height:40px; 
        	font-size:16px;
		}

		.signup:hover{
	 		background-color: white; 
    		color: #32cd32; 
   			border: 2px solid #32cd32; 
   		}
   		.nav1{
			font-size:30px;
		}
		.nav-style1{
			font-size:18px;
			font-weight:normal;
		}
		.nav-style1{
			font-weight:bolder;
		}

	</style>
</head>
<body>
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
				<li><a href="success.jsp" class="nav-link nav-style1 text-white">Menu</a></li>
				<li><a href="AboutUs.jsp" class="nav-link nav-style1 text-white">About Us</a></li>
				<li><a href="logout.jsp" class="nav-link  nav-style1 text-white">Log Out<i>(<% out.print(session.getAttribute("userid")); %>)</i></a></li>
			</ul>
		</nav>
	</header><br><br>
	<div class="container col-md-20" style="width:500px">
		<h4 class="text-white fw-bold mb-3">Postal Address</h4>
		<div class="card" style="background-color:#bdda57">
			<div class="card-body">
				<form action="thank.jsp" method="post">
					<fieldset class="form-group">
						<label><i class="bi bi-person"></i>&nbsp;&nbsp;Full Name</label> 
						<input type="text" class="form-control mb-3 mt-1" name="fullName"
							placeholder="Enter your full name" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label><i class="bi bi-telephone"></i>&nbsp;&nbsp;Mobile Number</label> 
						<input type="number" class="form-control mb-3 mt-1" name="phone"
							placeholder="Enter your phone number" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label><i class="bi bi-envelope"></i>&nbsp;&nbsp;Email Id</label> 
						<input type="email" class="form-control mb-3 mt-1"
							name="email" placeholder="Enter your E-mail id"	required="required">
					</fieldset>
					<fieldset class="form-group">
						<label><i class="bi bi-building"></i>&nbsp;&nbsp;City</label> 
						<select class="form-control mb-3 mt-1" name="city">
							<option value="1" selected>---choose city---</option>
							<option value="Bangalore">Bangalore</option>
							<option value="Hyderabad">Hyderabad</option>
							<option value="Pune">Pune</option>
							<option value="Chennai">Chennai</option>
							<option value="Delhi">Delhi</option>
							<option value="Kolkata">Kolkata</option>
						</select>
					</fieldset>
					<fieldset class="form-group">
						<label for="adr"><i class="bi bi-person-lines-fill"></i>&nbsp;&nbsp;Address</label>
						<input type="text" class="form-control mb-3 mt-1" id="adr" name="adress"
							placeholder="542 15th Street" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label for="pin"><i class="bi bi-pin-map"></i>&nbsp;&nbsp;Pin Code</label>
						<input type="text" class="form-control mb-3 mt-1" id="pin" name="pin"
							placeholder="600 001" required="required">
					</fieldset>
					<fieldset class="form-group">
						<label><input type="checkbox" checked="checked" name="sameadr">&nbsp;&nbsp;Shipping address same as billing address</label>
					</fieldset>
					<button type="submit" class="btn btn-success signup fw-bold mt-3 mb-2" href="thank.jsp">Place Order</button>
				</form>
			</div>			
		</div>
	</div>
</body>
<footer>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<p class="text-white mt-3 mb-5"><h4>Happy shopping</h4></p>
	</div>
</footer>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">

	<title>OnlineShopping</title>

	<link rel=”stylesheet” href=”https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css”/> 
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
		<link rel="icon" type="Image/png" href="https://cdn0.iconfinder.com/data/icons/shopping-solid-1/48/8-512.png" />
	<style>

		body{
			font-family: "Lato", sans-seriff;
			background-image: url('https://image.freepik.com/free-photo/online-shopping-delivery-background-concept_1421-3211.jpg');
			background-repeat:no-repeat;
			background-size:cover;
		}
		
		table{
			margin-top: 30px;
		}

		table td{
			padding: 10px;
		}
		ul.tab{
			list-style-type: none;
			margin:0;
			padding:0;
			overflow: hidden;
		}

		ul.tab li{
			float:left;
		}

		ul.tab li a{
			display:inline-block;
			text-align:center;
			padding:14px 16px;
			text-decoration: none;
			transition: 0.3s;
		}


		.tabcontent{
			display:none;
			padding: 6px 12px;
			border: 1px solid #ccc;
			border-top: none;
		}
		.container{
		 padding-left: 100px;
		  padding-right: 50px;
		   padding-top: 50px;
		    padding-bottom: 50px;
		}

		.signup{
			background-color: #32cd32; 
        	color: white; 
        	border: none; 
        	border-radius: 10px; 
        	width: 100px;
        	height:40px; 
        	font-size:16px;
		}

		.signup:hover{
	 		background-color: white; 
    		color: #32cd32; 
    		border: 2px solid #32cd32; 
   		}
   		.signin{
			background-color: #32cd32; 
        	color: white; 
        	border: none; 
        	border-radius: 10px; 
        	width: 100px;
        	height:40px; 
        	font-size:16px;
		}

		.signin:hover{
	 		background-color: white; 
    		color: #613613; 
    		border: 2px solid #613613; 
   		}
   
   		.center{
 			margin-left:auto;
 			margin-right:auto;
 			background-color: #613613
   		}
   		
   		.nav-style1{
			font-size:18px;
		}

		.nav-style1:hover{
		
			font-weight:bolder;
		}
		.nav1{
			font-size:30px;
		}
		
		
		@media (min-width: 0px) and (max-width: 575px){
		 	img.rounded-circle{
				height:130px;
				width:130px;
			}
		}
		
		/* Small devices (landscape phones, 576px and up)*/
		@media (min-width: 576px) and (max-width: 769px){
			img.rounded-circle{
				height:150px;
				width:150px;
			}
		}
		
		/* Medium devices (tablets, 768px and up)*/
		@media (min-width: 768px) and (max-width: 992px){ 
			img.rounded-circle{
				height:200px;
				width:200px;
			}
		}

		/* Large devices (desktops, 992px and up)*/
		@media (min-width: 992px) and (max-width: 1200px) {
			
			{
				height:230px;
				width:230px;
			}
		}
		/* Extra large devices (large desktops, 1200px and up)*/
		@media (min-width: 1200px) and (max-width: 1500px){
		img.rounded-circle{
			height:250px;
			width:250px;
		}
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
		<nav class="navbar navbar-expand-md navbar-dark" style="background-color: #008000">
			<div class="d-flex">
				<a class="navbar-brand fw-bolder nav1" href="#">
   					<div class="d-flex"> 
   						<div><img src="https://thumbs.dreamstime.com/z/shopping-cart-icon-round-online-buying-button-vector-illustration-197511399.jpg" id="newstyle" height=45 width=45 > </div>
   						<div> DepartmentStore</div>
   					</div>
   				</a>
			</div>
			<ul class="navbar-nav">
				<li><a href="index.jsp" class="nav-link nav-style1 text-white">Home</a></li>
				<li><a href="#" class="nav-link  nav-style1 text-white">Locations</a></li>
				<li><a href="AboutUs.jsp" class="nav-link  nav-style1 text-white">About Us</a></li>
				<li><a href="Admin.jsp" class="nav-link  nav-style1 text-white">Admin</a></li> 
			</ul>
			<div><img src="https://img.icons8.com/fluency/256/facebook-new.png" id="newstyle" height=45 width=45 alt="DepartmentStore" class="text-right"> </div>
		</nav>
	</header>
	<br>
	<br>
	<div>
		<fieldset class=" mb-50" style="float:right;" >
			<div class="container col-md-10">
				<div class="card" style="width:300px; background:#bdda57">
					<div class="card-body">
						<form action="login.jsp" method="post">
							<fieldset class="form-group">
								<label><i class="bi bi-person"></i>&nbsp;&nbsp;User Name</label> 
								<input type="text" class="form-control mb-3 mt-1" name="userName"
									placeholder="user name" value="" required="required">
							</fieldset>	
							<fieldset class="form-group">
								<label><i class="bi bi-lock"></i>&nbsp;&nbsp;Password</label>
								<input type="password" class="form-control mb-4 mt-1" name="pass"
									placeholder="Enter your password" value="" required="required">
							</fieldset>
							<fieldset>
								<button type="submit" class="btn btn-primary fw-bolder signin">Sign In</button>						
								<a href="SignUp.jsp" class="mx-2"><input type="button" class="btn btn-primary fw-bolder signup" value="Sign Up"></a>
							</fieldset>
						</form>	
					</div>
				</div>
			</div>		
		</fieldset>				
	</div>
	<div>
		<div class="text-center text-success mt-2 mb-6">
			<p style="margin-bottom:10px;" ><h5>Welcome to Our Department<br>
			What you want.we have it all. we love to serve you</h5></p> <br>
				
		</div>
		<div  class="container" style="margin-bottom:-90px;">
			<table class="w3-table text-white">
				<tr>
					<td>
						<img src="https://tse1.mm.bing.net/th?id=OIP.HPBGfxHoiy3Q7LeTxVdQpAHaE8&pid=Api&P=0" 
							 height="250px" width="250px">
					</td>
					<td>
						<img src="https://www.mashed.com/img/gallery/14-types-of-cooking-oil-and-how-to-use-them/l-intro-1654880242.jpg" 
							height="250px" width="250px">
					</td>
					<td>
						<img src="https://www.tradeindia.com/wp-content/uploads/2023/02/cropped-Different-types-of-basmati-rice-1200x1599.jpg" 
							 width="250px" height="250px">
					</td>
				</tr>

				<tr>
					<td class="text-center text-success fw-bolder"><h5>Dhalls</h5></td>
					<td class="text-center text-success fw-bolder"><h5>Oils</h5></td>
					<td class="text-center text-success fw-bolder"><h5>Veretis of Rice</h5></td>
				</tr>

				<tr>
					<td>
						<img src="https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg" 
							  height="250px" width="250px">
					</td>
					<td>
				
							<img src="https://kauveryhospital.com/blog/wp-content/uploads/2023/01/Treatment-for-diabetes-2.jpg"
							 height="250px" width="250px">
					</td>
					<td>
						<img src="https://img3.exportersindia.com/product_images/bc-full/dir_167/4993099/buy-online-puja-items-1495453684-3007545.jpeg" 
						 height="250px" width="250px">
					</td>
				</tr>

				<tr>
					<td class="text-center text-success fw-bolder"><h5>Vegitables</h5></td>
					<td class="text-center text-success fw-bolder"><h5>Fresh Fruits</h5></td>
					<td class="text-center text-success fw-bolder"><h5>Pooja Items</h5></td>
				</tr>

				<tr>
					<td>
						<img src=
						"https://mindbodygreen-res.cloudinary.com/image/upload/c_fill,w_2000,h_1200,g_auto,fl_lossy,f_jpg/org/ajjmdf68sk18ba60a.jpg"
						 height="250px" width="250px">
							
							
					</td>
					
					<td>
						<img src="http://numalsfoods.com/wp-content/uploads/2017/10/health-mix-powder-kerala.jpg"
					 							 height="250px" width="250px">
					</td>
					<td>
						<img src="https://www.k4fashion.com/wp-content/uploads/2021/10/accessories-to-shop-from-small-businesses-online-5.jpg"
							height="250px" width="250px">
					</td>
				</tr>

				<tr>
					<td class="text-center text-success fw-bolder"><h5>Dry fruits and Nuts</h5></td>
					<td class="text-center text-success fw-bolder"><h5>Health Mix</h5></td>
					<td class="text-center text-success fw-bolder"><h5>Accessories</h5></a></td>
				</tr>

		
			</table>
		</div>
	</div>
</body>
<footer>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<p class="text-black mt-3 mb-5"><h5>Happy Shopping</h5></p>
		
	</div>
	<div><img src="https://img.icons8.com/fluency/256/facebook-new.png" id="newstyle" height=45 width=45 alt="DepartmentStore" class="text-right"> </div>
</footer>

</html>
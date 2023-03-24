<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" type="image/png" href="https://cdn0.iconfinder.com/data/icons/shopping-solid-1/48/8-512.png" />
	<title>Online Shoping	| About Us</title>
	<link rel=”stylesheet” href=”https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css”/> 
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
	<style type="text/css">
		body{
			font-family: "Lato", sans-seriff;
			background-image: url('https://thumbs.dreamstime.com/b/empty-green-supermarket-shopping-cart-abstract-blur-grocery-store-aisle-defocused-background-142228532.jpg');
			background-repeat:no-repeat;
			background-size:cover;
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
			img.rounded-circle{
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
   						<div><img src="https://thumbs.dreamstime.com/z/shopping-cart-icon-round-online-buying-button-vector-illustration-197511399.jpg" id="newstyle" height=45 width=45 alt=""> </div>
   						<div>DepartmentStore</div>
   					</div>
   				</a>
			</div>
			<ul class="navbar-nav">
				<li><a href="index.jsp" class="nav-link nav-style1 text-white">Home</a></li>
				<li><a href="#" class="nav-link  nav-style1 text-white">Locations</a></li>
				<li><a href="AboutUs.jsp" class="nav-link  nav-style1 text-white">About Us</a></li>
				<li><a href="Admin.jsp" class="nav-link  nav-style1 text-white">Admin</a></li> 
			</ul>
		</nav>
	</header>
	<br>
	<br>
	<div class="container">
	<h2 class="text-white">About Us</h2>
	<p class="text-white" style="font-size:20px">Depending on the type of department store, department stores can offer a much wider range of products, including dhalls, oils, Rice, Fruits,Vegitables, Nuts, Poojaitems, Accessories etc.</p>

	<p class="text-white" style="font-size:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Department stores come in a wide range of qualities and prices. There are such things as “high-end department stores”, which would focus purely on offering high-profile brands and products, while there are more mass-market targeting department stores.</p>

	<p class="text-white" style="font-size:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In September 2009, after complaints from bicycle commuters, DepartmentStore began allowing bicyclists to order using its drive-through windows.</p>

	<p class="text-white" style="font-size:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In the US, the department store industry includes approximately 20 companies operating roughly 3,500 stores. Major department stores in the US include: Sears, JCPenney, Macy’s, and Dillard’s. The industry earns an annual revenue of around $60 billion USD, 95% of which is earned by the largest 8 companies in the industry.</p>

	<p class="text-white" style="font-size:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In January 2008, Jeff Harvey accepted the position of President and CEO of DepartmentStore after Tom Mears, the former holder of the titles stepped aside, and became Chairman of the company.</p>

	<p class="text-white" style="font-size:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
	</div>
	<div class="d-flex Justify-content-center">
	<div class=""></div></div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" type="image/png" href="https://cdn0.iconfinder.com/data/icons/shopping-solid-1/48/8-512.png" />
	<title>Online Shopping | Menu</title>
	<link rel="stylesheet" href="css1.css" type="text/css">
	<link rel="stylesheet" href="w3.css" type="text/css">
	<link rel=”stylesheet” href=”https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css”/> 
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

		.nav-style1{
			font-size:18px;
		}

		.nav-style1:hover{
			font-weight:bolder;
		}
		table{
			margin-top: 30px;
		}

		table td{
			padding: 15px;
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

		.nav1{
			font-size:30px;
		}
		.tabcontent{
			display:none;
			padding: 6px 12px;
			border-top: none;
		}

		.signup{
			background-color: #32cd32; 
        	color: white; 
        	border: none; 
        	border-radius: 10px; 
        	width: 120px;
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
    		color:#32cd32; 
    		border: 2px solid #32cd32; 
   		}
   
   		.center{
 			margin-left:auto;
 			margin-right:auto;
 			background-color: transparent;
   		}
		
		#wish{
		font-size:20px;
		}
		.style3{
		margin-top:50px;
		}
		
		input[type="checkbox"], input[type="radio"]{
			width:20px;
			height:20px;
			border-width:0;
			margin-left:130px;
			margin-top:10px;
			transition:all .3s linear;
		}
		
				@media (min-width: 0px) and (max-width: 575px){
		{
				height:130px;
				width:130px;
			}
		}
		
		/* Small devices (landscape phones, 576px and up)*/
		@media (min-width: 576px) and (max-width: 769px){
			{
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
{
			height:250px;
			width:250px;
		}
	 	} 
	</style>
	
		<%
	if((session.getAttribute("userid")==null) || (session.getAttribute("userid")== " ")){
	%>
	<div class="text-center style3">
		<p class="text-white" style="font-size:20px;">Session Expired.... <a href="index.jsp"
			style=" padding-top: 23px; text-decoration:none;">Sign in here</a></p>
	</div>
	<%} 
	else{
	%>
		
	<script>
		var b = 0;
		function update_value(chk_bx) {
			if (chk_bx.checked) {
				var a = "checked";
				b += 1;
			} else {
				var a = "not checked";
				if (b > 0) {
					b -= 1;
				} else if (b == 0) {
					b = 0;
				}
			}
			if (b == 0) {
				document.getElementById('wish').innerHTML = '<i class="bi bi-cart" height=40 width=40></i>&nbsp;&nbsp';
			} else {
				document.getElementById('wish').innerHTML = '<i class="bi bi-cart" height=40 width=40 height=40 width=40></i>&nbsp;&nbsp'
					+ b + '';
			}
		}
	</script>
	</head>
	<body>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
        integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
        integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous">
    </script>
	
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #008000">
			<div class="d-flex">
				<a class="navbar-brand fw-bolder nav1" href="#">
   					<div class="d-flex"> 
   						<div><img src="https://thumbs.dreamstime.com/z/shopping-cart-icon-round-online-buying-button-vector-illustration-197511399.jpg" id="newstyle" height=45 width=45 alt="DepartmentStore"> </div>
   						<div>DepartmentStore</div>
   					</div>
   				</a>
			</div>
			<ul class="navbar-nav">
				<li><a href="#" class="nav-link nav-style1 text-white">Welcome</a></li>
				<li><a href="#" class="nav-link  nav-style1 text-white">Locations</a></li>
				<li><a href="AboutUs.jsp" class="nav-link  nav-style1 text-white">About Us</a></li>
				<li><a href="logout.jsp" class="nav-link  nav-style1 text-white">Log Out<i>(<% out.print(session.getAttribute("userid")); %>)</i></a></li>
				<li><a href="order.jsp" class="nav-link  nav-style1 text-white" id="wish"><i class="bi bi-cart"></i>0</a></li>
			</ul>
			<div><img src="https://img.icons8.com/fluency/256/facebook-new.png" id="newstyle" height=45 width=45 alt="DepartmentStore" class="text-right"> </div>
		</nav>
	</header>
	<br>
	<br>
	
	
	<form action="order.jsp" method="post">
		<table class="w3-table center">
			<tr>
				<td><img src="data:image/jpeg;base64,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"  height=240 width=290></td>
				<td><img src="https://www.educationworld.in/wp-content/uploads/2019/02/chana-dal-1.jpg"  height=240 width=290></td>
				<td><img src="https://tse4.mm.bing.net/th?id=OIP.i80LFo4Gbz9bBAKgyoQOIgAAAA&pid=Api&P=0"  height=240 width=290></td>
			</tr>
				
			<tr>
				<td><input class="mv1" type="checkbox" name="chk1" value="1" onchange="update_value(this);"></td>
				<td><input class="mv2" type="checkbox" name="chk1" value="2" onchange="update_value(this);"></td>
				<td><input class="mv3" type="checkbox" name="chk1" value="3" onchange="update_value(this);"></td>
			</tr>

			<tr>
				<td class="text-center text-white fw-bold">Moon Dhall <p>Rs. 150</p></td>
				<td class="text-center text-white fw-bold">Thuvaram dhall <p>Rs. 180</p></td>
				<td class="text-center text-white fw-bold">Orid dhall<p>Rs. 130</p></td>
			</tr>

			<tr>
				<td><img src="https://www.rd.com/wp-content/uploads/2016/11/01-beware-things-nutritionists-wish-you-knew-about-coconut-oil-28517028-joannawnuk.jpg"  height=240 width=290></td>
				<td><img src="
	https://tse4.mm.bing.net/th?id=OIP.IxtwEJOfojbhGjnoehIs6AHaFA&pid=Api&P=0"  height=240 width=290></td>					
				<td><img src="https://tse4.mm.bing.net/th?id=OIP._p4lX0tkMVBQug7WZQertQHaE8&pid=Api&P=0"  height=240 width=290></td>
			</tr>
				
			<tr>
				<td><input class="mv4" type="checkbox" name="chk1" value="4" onchange="update_value(this);"></td>
				<td><input class="mv5" type="checkbox" name="chk1" value="5" onchange="update_value(this);"></td>
				<td><input class="mv6" type="checkbox" name="chk1" value="6" onchange="update_value(this);"></td>
			</tr>
	
			<tr>
				<td class="text-center text-white fw-bold">coconut oil <p>Rs. 200</p></td>
				<td class="text-center text-white fw-bold">sunflower oil<p>Rs. 165</p></td>
				<td class="text-center text-white fw-bold">Olive Oil<p>Rs. 115</p></td>
			</tr>

			<tr>
				<td><img src="https://www.wellcurve.in/blog/wp-content/uploads/2021/04/Basmati-Rice-1.jpg"  height=240 width=290></td>
				<td><img src="https://www.wellcurve.in/blog/wp-content/uploads/2021/04/Red-Rice-1.jpg"  height=240 width=290></td>
				<td><img src="https://www.wellcurve.in/blog/wp-content/uploads/2021/04/Indrayani-Rice-1.jpg"  height=240 width=290></td>
			</tr>
				
			<tr>
				<td><input class="mv7" type="checkbox" name="chk1" value="7" onchange="update_value(this);"></td>
				<td><input class="mv8" type="checkbox" name="chk1" value="8" onchange="update_value(this);"></td>
				<td><input class="mv9" type="checkbox" name="chk1" value="9" onchange="update_value(this);"></td>
			</tr>

			<tr>
				<td class="text-center text-white fw-bold">Basmati Rice<p>Rs. 170</p></td>
				<td class="text-center text-white fw-bold">Red Rice <p>Rs. 160</p></td>
				<td class="text-center text-white fw-bold"> Indrayani Rice <p>Rs. 180</p></td>
			</tr>

			<tr>
				<td><img src="https://www.nutritionadvance.com/wp-content/uploads/2018/09/pile-of-almonds.jpg"  height=240 width=290></td>
				<td><img src="https://www.nutritionadvance.com/wp-content/uploads/2018/09/a-pile-of-cashew-nuts.jpg"  height=240 width=290></td>
				<td><img src="https://www.nutritionadvance.com/wp-content/uploads/2020/02/black-walnut-in-case-and-out.jpg"  height=240 width=290></td>
			</tr>
				
			<tr>
				<td><input class="mv10" type="checkbox" name="chk1" value="10" onchange="update_value(this);"></td>
				<td><input class="mv11" type="checkbox" name="chk1" value="11" onchange="update_value(this);"></td>
				<td><input class="mv12" type="checkbox" name="chk1" value="12" onchange="update_value(this);"></td>
			</tr>

			<tr>
				<td class="text-center text-white fw-bold">Almonds Nuts<p>Rs.250</p></td>
				<td class="text-center text-white fw-bold">Cashew Nuts<p>Rs. 400</p></td>
				<td class="text-center text-white fw-bold"> Black Walnuts<p>Rs. 250</p></td>
			</tr>
		</table>
		<br>
		<div id="order" class="text-center">
			<input type="submit" value="Add to Cart" class="btn btn-success signup fw-bolder">
		</div>
	</form>
	<footer>
		<div class="jumbotron text-center" style="margin-bottom: 0">
			<p class="text-white mt-3 mb-5"><h3>Happy Shopping</h3></p>
		</div>
	</footer>
</body>
</html>
<%} %>

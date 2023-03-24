<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" type="image/png" href="https://cdn0.iconfinder.com/data/icons/shopping-solid-1/48/8-512.png" />
	<title>Online Shopping | Menu Management</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
		crossorigin="anonymous">
	<style>
		body{
			font-family: "Lato", sans-seriff;
			background-image: url('https://thumbs.dreamstime.com/b/empty-green-supermarket-shopping-cart-abstract-blur-grocery-store-aisle-defocused-background-142228532.jpg');
			background-repeat:no-repeat;
			background-size:cover;
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
	<header>
		<nav class="navbar navbar-expand-md navbar-dark bf-bold fw-bolder"
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
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link text-white nav-style1">List Items</a></li>
					<li><a href="logout.jsp" class="nav-link  nav-style1 text-white">Log Out</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card mt-5" style="background:#bdda57">
			<div class="card-body">
			<c:if test="${item!=null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${item==null}">
					<form action="insert" method="post">
				</c:if> 
				<caption>
					<h2 class="fw-bold">
						<c:if test="${item!=null}">Edit Item</c:if>
						<c:if test="${item==null}">Add New Item</c:if>
					</h2>
				</caption>
				<fieldset class="form-group">
					<label>Item Id</label> <input type="text" class="form-control mb-3 mt-1"
						name="id" placeholder="Enter Item id"
						value="<c:out value='${item.id}'/>" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Item Name</label> <input type="text" class="form-control mb-3 mt-1"
						name="name" placeholder="Enter Item name"
						value="<c:out value='${item.name}'/>" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>Item Price</label> <input type="text" class="form-control mb-3 mt-1"
						name="price" placeholder="Enter the price"
						value="<c:out value='${item.price}'/>" required="required">
				</fieldset>

				<button type="submit" class="btn btn-primary signup fw-bolder mt-2 mb-2">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
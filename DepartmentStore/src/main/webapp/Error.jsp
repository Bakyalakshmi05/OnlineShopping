<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="https://cdn3.iconfinder.com/data/icons/food-packaging-and-bottle/1200/food_packaging_color-16-512.png" />
<title>Online Shopping | Error</title>
<style>
body{
		font-family: "Lato", sans-seriff;
		background-image: url('https://thumbs.dreamstime.com/b/empty-green-supermarket-shopping-cart-abstract-blur-grocery-store-aisle-defocused-background-142228532.jpg');
		background-repeat:no-repeat;
		background-size:cover;
	}
</style>
</head>
<body>
<div class="text-center">
<h1>Error</h1>
<h2>
<%= exception.getMessage() %><br>
</h2>
</div>
</body>
</html>
<%@ page import="db.DbConnection.Dbconnection"%>
<%@ page import="java.sql.*"%>

<%
String userid = request.getParameter("userName");
String pwd = request.getParameter("pass");
Connection con = Dbconnection.init();
Statement stmt = con.createStatement();
ResultSet res;
String sql="select * from members where uname='" + userid + "' and password='" + pwd +"'";
res = stmt.executeQuery(sql);
if (res.next()) {
	session.setAttribute("userid", userid);
	response.sendRedirect("success.jsp");
} 
else {
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" type="image/png" href="https://cdn0.iconfinder.com/data/icons/shopping-solid-1/48/8-512.png" />
	<title>Online Shopping</title>
	<link rel="stylesheet" href="w3.css" type="text/css">
	<style>
		body{
			font-family: "Lato", sans-seriff;
			background-image: url('https://thumbs.dreamstime.com/b/empty-green-supermarket-shopping-cart-abstract-blur-grocery-store-aisle-defocused-background-142228532.jpg');
			background-repeat:no-repeat;
			background-size:cover;
		}

		.style1 {
			color: white;
			text-align: center;
		}
	</style>
</head>
<body><div class="d-flex">
				<a class="navbar-brand fw-bolder nav1" href="#">
   					<div class="d-flex"> 
   						<div><img src="https://thumbs.dreamstime.com/z/shopping-cart-icon-round-online-buying-button-vector-illustration-197511399.jpg" id="newstyle" height=45 width=45 alt="DepartmentStore"> </div>
   						<div>DepartmentStore</div>
   					</div>
   				</a>
	</div>
<p class="style1" style="font-size:20px;">
	!<br> 
	Wrong Username or Password.<br>
	 If you do not redirect within 5 seconds <a href="index.jsp">Click here</a>
	<script>
setTimeout(function()){
	window.location.href="index.jsp"
	}, 5000);
</script>
</p>
<%
}
%>
</body>
</html>
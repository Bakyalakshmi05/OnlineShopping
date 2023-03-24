<%@ page import="db.DbConnection.Dbconnection"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" type="image/png" href="https://cdn0.iconfinder.com/data/icons/shopping-solid-1/48/8-512.png" />
	<title>OnlineShopping</title>
	<link rel="stylesheet" href="css1.css" type="text/css">
	<link rel="stylesheet" href="w3.css" type="text/css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
		rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
		crossorigin="anonymous">	
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

		.nav1{
			font-size:30px;
		}
	
	</style>
	</head>
	</html>



<%
String user=request.getParameter("userName");
String pwd=request.getParameter("pass");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
try{
	Connection con=Dbconnection.init();
	Statement stmt=con.createStatement();
	String q;
	ResultSet res;
	String sql="insert into members(firstName, lastName, email, uname, password) values('"+ fname +"','"+ lname + "','"+ email +"','"+ user +"','"+ pwd +"')";
	int i=stmt.executeUpdate(sql);
	if(i>0){
		session.setAttribute("userid", user);
		response.sendRedirect("success.jsp");
	}
	else{
		response.sendRedirect("index.jsp");
	}
}
catch(SQLException se){
	se.printStackTrace();
}
catch(Exception e){
	e.printStackTrace();
}


%>
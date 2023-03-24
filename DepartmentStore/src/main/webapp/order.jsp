<%@ page import="db.DbConnection.Dbconnection"%>

<!DOCTYPE html>
<html>
<head>
	<%@ page import="java.sql.*"%>
	<%@ page import="java.util.*"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8"%>
	<meta charset="UTF-8">
	<link rel="icon" type="image/png" href="https://cdn0.iconfinder.com/data/icons/shopping-solid-1/48/8-512.png" />
	<title>Online Shopping | Confirm Your Order</title>
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

		.color{
		font-family: "Lato", sans-seriff;
		background-color:#32cd32;
		font-size:16px;
		border: none;
		height:40px;
		color:white;
		font-weight:bold;
		}
		.color:hover{
		background-color:white;
		border: 2px solid #32cd32;
		color:#32cd32;
		}
		.nav1{
			font-size:30px;
		}
		.nav-style1{
			font-size:18px;
		}

		.nav-style1:hover{
			font-weight:bolder;
		}
		.topstyle{
		margin-top:100px;
		}
	
	</style>
</head>
<body>
<% if((session.getAttribute("userid")==null) || (session.getAttribute("userid")== " ")){
	%>
		<p class="text-center text-white topstyle"  style="font-size:20px;">The session was expired...........<br>
	Click here to <a href="index.jsp" style="text-decoration:none;font-size:20px;">Login </a>again</p>
	<%}
	else{
		float sum=0;
		Connection con=Dbconnection.init();
		Statement st=con.createStatement();
		ResultSet res;
		String[] product;
	%>
	
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
				<li><a href="#" class="nav-link  nav-style1 text-white">Locations</a></li>
				<li><a href="AboutUs.jsp" class="nav-link  nav-style1 text-white">About Us</a></li> 
				<li><a href="logout.jsp" class="nav-link  nav-style1 text-white">Log Out<i>(<% out.print(session.getAttribute("userid")); %>)</i></a></li>
			</ul>
		</nav>
	</header>
	<br>
	<br>
	<%ArrayList<Integer> arraylist=new ArrayList<Integer>();
	product=request.getParameterValues("chk1");
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <h1 style='color:white;padding:5px;border 2px solid #616161;text-align:center;'>Your Cart</h1>");
	out.println("<table class='table table-bordered text-white'><thead style='font-size:24px;'><tr><th>Item Name</th><th>Quantity</th><th>Total</th></tr></thead>");
	float count=0;
	if(product!=null){
		for(int i=0;i<product.length;i++){
			st.executeQuery("select idName, price from items where id="+ product[i] +" ");
			res=st.getResultSet();
			while(res.next()){
				String nameVal=res.getString("idName");
				int catVal=res.getInt("price");
	%>
				<input type="hidden" id="cost"	value="<%=catVal%>">
			<% 
				arraylist.add(catVal);
				sum=sum+catVal;
				int q=1;
				count++;
				out.println("<tr><td class='text-white;'>"+ nameVal +"</td><td class='text-white;'>"+ q +"</td><td style='text-color:white;'><div id='total1'>"+ catVal +"</div></td></tr>");
				count+=1;
			}
		}
		out.println("<tr><td style='font-size:30px;'>Total</td><td style='font-size:30px;'>"+ count/2 +"</td><td style='font-size:30px;'>"+ sum +"</td></tr>");
		out.println("<tr></tr><tr colspan='3'><td colspan ='3'><div><a href='post.jsp'><input type='button' style='width:100%' class='w3-xlarge w3-btn w3-block w3-black color' value='Proceed to Checkout'></div></td></tr>");
	} else {%>
		<tr><td></td></tr><tr><td></td></tr>
<%} %>
</table>
<h4 class="text-center mt-3">&nbsp;<a href="success.jsp" style="text-decoration:none;color:white">Shop more items</a></h4>
<div id="footer" style="height:270px; display:block"></div>
<footer>
<div class="jumbotron text-center" style="margin-bottom: 0">
		<p class="text-white">Happy shopping</p>
	</div>		
</footer>
</body>
</html>
<%
}
%>

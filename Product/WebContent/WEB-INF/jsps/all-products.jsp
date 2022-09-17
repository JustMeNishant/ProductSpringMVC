<%@page import="com.spring.main.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Products</title>
<br></br>
<style type="text/css">
body {
	background: linear-gradient(to right, #33ccff 0%, #ff66cc 100%);
	margin: 0 auto;
	width: fit-content;
}

div {
	text-align: center;
	border: 3px solid #101;
	border: 1px solid purple;
	border-radius: 10px;
	height: fit-content;
	width: fit-content;
}

.pro_block_mobile {
		display: inlibe-block;
	border: 3px solid white;
	padding: 15px;
	height: fit-content;
	width: fit-content;
	padding-bottom: 2%;
	float: left;
	margin: 10px;
	background: linear-gradient(to left,  #00ffff 0%, #cc99ff 100%);
	font-family: Georgia, serif;
	font-size: 1vw;
	
}

.pro_block_laptop {
	display: inlibe-block;
	border: 3px solid white;
	padding: 15px;
	height: fit-content;
	width: fit-content;
	padding-bottom: 2%;
	float: left;
	margin: 10px;
	background: linear-gradient(to left,  #00ffff 0%, #cc99ff 100%);
	font-family: Georgia, serif;
	font-size: 1vw;
	
}

.pro_block_tablet {
		display: inlibe-block;
	border: 3px solid white;
	padding: 15px;
	height: fit-content;
	width: fit-content;
	padding-bottom: 2%;
	float: left;
	margin: 10px;
	background: linear-gradient(to left,  #00ffff 0%, #cc99ff 100%);
	font-family: Georgia, serif;
	font-size: 1vw;
	
	
}
</style>

</head>
<body>


	<h1 style="float: left" font-size: 1vw>Vendor
		Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h1>

	<h1>
		<a href="addedit"> Add Product </a> <br> </br>

		<%
			List<Product> list = (List<Product>) request.getAttribute("list");
			List<Product> mobile = new ArrayList<>();
			List<Product> laptop = new ArrayList<>();
			List<Product> tablet = new ArrayList<>();
			for (Product p : list) {
				if (p.getCategory().equalsIgnoreCase("Mobile")) {
					mobile.add(p);
				}
			}
			for (Product p : list) {
				if (p.getCategory().equalsIgnoreCase("Laptop")) {
					laptop.add(p);
				}
			}
			for (Product p : list) {
				if (p.getCategory().equalsIgnoreCase("Tablet")) {
					tablet.add(p);
				}
			}

			Product product = (Product) request.getAttribute("product");
		%>


		<h8 style="float:left">Mobiles</h8>
		<br></br>
		<%Boolean ans1=mobile.isEmpty(); %>
<% if(ans1==true){ %>
<div class="pro_block_tablet">
<h3> No Tablet In Stock</h3>
</div>
<%} %>
		<%
			for (Product e : mobile) {
		%>

		<div class="pro_block_mobile">
			<h3><%=e.getName()%></h3><%=e.getDescrib()%>&nbsp;<br></br>INR
			<%=e.getPrice()%>&nbsp; <a
				href="<%=request.getContextPath()%>/delete-product?id=<%=e.getId()%>"
				onclick='return confirm("Are you sure you want to delete?")'>Delete</a>
			|&nbsp;<a href="addedit">Edit </a>

		</div>
		&nbsp;&nbsp;
		<%
			}
		%>


		<br></br>
		 <br></br>
		 <br></br>

		<h8 style="float:left">Laptops</h8>
		 <br></br>
		 <%Boolean ans2=laptop.isEmpty(); %>
<% if(ans2==true){ %>
<div class="pro_block_tablet">
<h3> No Tablet In Stock</h3>
</div>
<%} %>
		<%
			for (Product e : laptop) {
		%>

		<div class="pro_block_laptop">

			<h3><%=e.getName()%></h3><%=e.getDescrib()%>&nbsp;<br></br>INR
			<%=e.getPrice()%>&nbsp;<br></br> <a
				href="<%=request.getContextPath()%>/delete-product?id=<%=e.getId()%>"
				onclick='return confirm("Are you sure you want to delete?")'>Delete</a>
			|&nbsp;<a href="addedit">Edit </a>

		</div>
		<%
			}
		%>
		</section>
		<br></br> <br></br><br></br> <br></br> 
		<section>
			<h8 style="float:left">Tablets</h8>
			<br></br>
<%Boolean ans=tablet.isEmpty(); %>
<% if(ans==true){ %>
<div class="pro_block_tablet">
<h3> No Tablet In Stock</h3>
</div>
<%} %>

			<% 
				for (Product e : tablet) {
			%>

			<div class="pro_block_tablet">


				<h3><%=e.getName()%></h3><%=e.getDescrib()%>&nbsp;<br></br>INR
				<%=e.getPrice()%>&nbsp;<br></br> <a
					href="<%=request.getContextPath()%>/delete-product?id=<%=e.getId()%>"
					onclick='return confirm("Are you sure you want to delete?")'>Delete</a>
				|&nbsp;<a href="addedit">Edit </a>

			</div>
			<%
				
			}
			%>
			<br></br> <br></br> <br></br>
			<br></br> 
			<h6 style="float:left"> Nishant</h6>
		</section>
</body>
</html>
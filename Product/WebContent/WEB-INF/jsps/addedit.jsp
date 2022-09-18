<%@page import="com.spring.main.model.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add or Edit</title>
<style type="text/css">
select {
	width: 50%;
	padding: 10px 15px;
	border: none;
	border radius: 7px;
	color: #999ff;
	width: fit-content;
	font-size: 1vw;
}
input[type=text], input[type=number]{
width:100%;
height:fit-content;
width: fit-content;
padding:12px 12px;
border:none;
box-sizing:border-box;
border-radius: 4px;
background-color: #ff0000;
font-size: 1vw;
color:white;
}
input[type=submit] {
	width: 50%;
	padding: 16px 20px;
	border: none;
	border radius: 4px;
	background-color: #999ff;
	font-size: 1vw;
}

body {
	background: linear-gradient(to right, #333300 0%, #cc0000 100%);
	margin: 0 auto;
	width: fit-content;
	color:white;
}

.addbutton {
	background color: black;
	color: white; padding 5px 5px;
	text-align: center;
	font-size: 13px;
	margin: 4px 2px;
	display: inline-block;
	cursor: pointer;
	border-radius: 7px;
	p
}

.button1 {
	background color: red;
	color: white; padding 5px 5px;
	text-align: center;
	font-size: .75vw;
	margin: 4px 2px;
	display: inline-block;
	cursor: pointer;
	border-radius: 7px;
	width: fit-content;
	height: fit-content;
}
.button2 {
	background color: red;
	color: red; padding 5px 5px;
	text-align: center;
	font-size: .75vw;
	margin: 4px 2px;
	display: inline-block;
	cursor: pointer;
	border-radius: 7px;
	width: fit-content;
	height: fit-content;
}
.emp_block {
	display: inlibe-block;
	border: 3px solid white;
	padding: 15px;
	height: fit-content;
	width: fit-content;
	padding-bottom: 2%;
	float: left;
	margin: 10px;
	background: linear-gradient(to left,  #333300 0%, #cc000100%);
	font-family: Georgia, serif;
	font-size: 1vw;
}

div {
	text-align: center;
	border: 3px solid #101;
	border: 1px solid purple;
	border-radius: 10px
}

.emp_block1 {
	display: inlibe-block;
	border: 3px solid white;
	padding: 15px;
	height: fit-content;
	width: fit-content;
	padding-bottom: 2%;
	float: left;
	margin: 10px;
	background: linear-gradient(to right, #333300 0%, #cc0000 100%);
	font-family: Georgia, serif;
	font-size: 1.5vw;
}
</style>
</head>
<body>
	<section>
		<div class="emp_block">
			<h1 style="color=white;">All Products</h1>


			<%
				List<Product> list = (List<Product>) request.getAttribute("list");

				Product product = (Product) request.getAttribute("product");
				for (Product e : list) {
			%>
			<%=e%>&nbsp; <br></br>
			<a 
				href="<%=request.getContextPath()%>/delete-product?id=<%=e.getId()%>"
				onclick='return confirm("Are you sure you want to delete?")'><button
					class="button1" style="background-color: #ff0006;">
					<b>Delete</b>
				</button></a> |&nbsp;<a
				href="<%=request.getContextPath()%>/edit-product?id=<%=e.getId()%>"><button
					class="button2" style="background-color: white;">
					<b>Edit</b>
				</button> </a> <br></br> <br />
			<%
				}
			%>
		</div>

		<div class="emp_block1">
			<%
				String flag = (String) request.getAttribute("flag");
			%>

			<%
				if (flag == null) {
			%>
			<h3 style= "color:white;">Add Product</h3>
			<form action="<%=request.getContextPath()%>/insert-product"
				method="get">
				<label style= "color:white;">Name: </label> <input type="text" name="ename"> <br />
				<br /> <label style= "color:white;">Price: </label> <input type="number" name="eprice">
				<br />
				<br /> <label style= "color:white;">Description: </label> <input type="text"
					name="describ" value="<%product.getDescrib();%>"> <br />
				<br /> <label style= "color:white;">Category: </label> <select name="category"><option
						value="Laptop">Laptop</option>
					<option value="Mobile">Mobile</option>
					<option value="Tablet">Tablet</option></select> 
					<br></br><input type="submit"	value="Add Product">
			</form>
			<%
				} else {
			%>
			<h3 style= "color:white;">Edit Product</h3>
			<form action="<%=request.getContextPath()%>/edit-product-op"	method="get">
				<input type="hidden" name="id" value="<%=product.getId()%>">
				
				<br /> <label>Name: </label> <input type="text" name="ename" value="<%out.print(product.getName());%>"> <br />
			
				<br /> <label>Price: </label> <input type="number" name="eprice" value="<%out.print(product.getPrice());%>"> <br />
				<br /> <label>Description: </label> <input type="text"	name="describ" value="<%out.print(product.getDescrib());%>"> <br />
				<br /> <label>Category: </label> <select name="category"><option
						value="Laptop">Laptop</option>
					<option value="Mobile">Mobile</option>
					<option value="Tablet">Tablet</option></select> 
					<br></br><input type="submit"	value="Edit Product">
			</form>
			<%
				}
			%>
		</div>

	</section>

	<br></br>
	<br></br>
	<br></br>
	<br></br>
	<br></br>
	<br></br>


	<br></br>
	<a href="redirect-product"><button
					class="button2" > <b>Back to Products</b></a>

</body>
</html>

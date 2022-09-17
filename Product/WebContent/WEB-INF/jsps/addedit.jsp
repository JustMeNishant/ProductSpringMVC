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
	body{
		
	background: linear-gradient(to right, #33ccff 0%, #ff66cc 100%);
	margin: 0 auto;
	width: fit-content;
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
	background: linear-gradient(to left,  #00ffff 0%, #cc99ff 100%);
	font-family: Georgia, serif;
	font-size: 1vw;
}

div {text-align: center;border: 3px solid #101;
	border: 1px solid purple;
	border-radius: 10px}
.emp_block1 {
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
	font-size: 1.5vw;
</style>
</head>
<body>
<section > 
<div class="emp_block">
	<h1>All Products</h1>


<%
	List<Product> list = 
	(List<Product>)request.getAttribute("list");
	
	Product product = (Product)request.getAttribute("product");
	for(Product e : list){
%>
	<%=e %>&nbsp;
	<br></br><a href="<%=request.getContextPath() %>/delete-product?id=<%=e.getId() %>" 
		onclick='return confirm("Are you sure you want to delete?")'>delete</a>
		|&nbsp;<a href="<%=request.getContextPath() %>/edit-product?id=<%=e.getId() %>">edit </a>
		<br></br>
		
	<br />
<% 
	}
%>
</div>

<div class="emp_block1">
<% String flag = (String)request.getAttribute("flag");  %>
	
	<% if(flag == null) { %>
	<h3>Add Product </h3>
	<form action="<%=request.getContextPath() %>/insert-product" method="get">
		<label>Name: </label> 
		<input type="text" name="ename">
		<br /><br />
		<label>Price: </label> 
		<input type="number" name="eprice">
		<br /><br />
		
		<label>Description: </label> 
		<input type="text" name="describ" value= "<%product.getDescrib();%>">
		<br /><br />
		
		<label>Category: </label> 
		<select name="category"><option value="Laptop">Laptop</option><option value="Mobile">Mobile</option><option value="Tablet">Tablet</option></select>
		
		<input type="submit" value="Add Product">
	</form>
	<% }  else { %>
	<h3>Edit Product</h3>
	<form action="<%=request.getContextPath() %>/edit-product-op" method="get">
		<input type="number" name="id" value="<%=product.getId() %>">
	 <br /><br />
		<label>Name: </label> 
		<input type="text" name="ename" value= "<%product.getName();%>" >
		<br /><br />
		<label>Price: </label> 
		<input type="number" name="eprice" value= "<%product.getPrice();%>">
		<br /><br />
		<label>Description: </label> 
		<input type="text" name="describ" value= "<%product.getDescrib(); %>">
		<br /><br />
		
		<label>Category: </label> 
	
		<select name="category"><option value="Laptop">Laptop</option><option value="Mobile">Mobile</option><option value="Tablet">Tablet</option></select>
		
		<input type="submit" value="Edit Employee">
	</form>
	<% } %>
</div>

</section>

<br></br>
<br></br>
<br></br>
<br></br>
<br></br>
<br></br>


<br></br>
<a href="redirect-product"> Back to Products</a>

</body>
</html>
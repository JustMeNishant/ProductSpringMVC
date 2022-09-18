<%@ page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ProductDB</title>
<style type="text/css">
body {
	background: linear-gradient(to top right, #333300 0%, #cc0000 100%);
	margin:  auto;
	width: fit-content;
	color:white;
	text-align: center;
	
	height: fit-content;
	width: fit-content;
}
</style>
</head>
<body>
<h1>Welcome to the Product Database</h1>
<h3>Created By:<br></br> Nishant Upadhyay</h3>
Kindly Click the below link to access the page, Thanks!!


<h2 ><a href="<%=request.getContextPath() %>/all-products" style="color:white;">All Products</a></h2>
</body>
</html>

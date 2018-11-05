

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventory Management System</title>
<link href='<c:url value="/resources/css/bootstrap.min.css" />'
	rel="stylesheet">
<link href='<c:url value="/resources/css/bootstrap.css" />'
	rel="stylesheet">
<script src='<c:url value="/resources/js/bootstrap.js" />'
	type="text/javascript"></script>
<script src='<c:url value="/resources/bootstrap.min.js" />'
	type="text/javascript"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='<c:url value="/resources/css/bootstrap.min.css" />'
	rel="stylesheet">
	
	<c:set var="contextRoot" value="${pageContext.request.contextPath}" />


<script src='<c:url value="/resources/js/jquery-3.3.1.min.js" />'
	type="text/javascript"></script>
<script src='<c:url value="/resources/js/bootstrap.min.js" />'
	type="text/javascript"></script>
</head>
<body>

	<!-- Navbar goes here -->
	<%@include file="./shared/navbar.jsp" %>

	
	<br>
	<!-- Container That Contains Profile Card and new Order Card -->
	<div class="container">
		<div class="row"><!-- Beginning of row -->
			<div class="col-md-4">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="..." alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">Profile Info</h5>
						<p class="card-text">Cornelius</p>
						<p class="card-text">
							<i class="fa fa-user">&nbsp;</i>Admin
						</p>
						<p class="card-text">Last Login: xxxx-xx-xx</p>
						<a href="#" class="btn btn-primary">Edit Profile</a>
					</div>
				</div>
			</div>
			<div class="col-md-8"><!-- Beginning of jumbotron container  -->
				<div class="jumbotron" style="width: 100%; heght: 100%;">
					<h2>Welcome Admin</h2>
					<div class="row">
						<div class="col-sm-6">
							<h3>Clock API</h3>
						</div>
						<div class="col-sm-6">
							<div class="card">
								<div class="card-header">New Orders Inventory</div>
								<div class="card-body">
									<h5 class="card-title">New Order</h5>
									<p class="card-text">Make Invoices and New Orders</p>
									<a href="#" class="btn btn-primary">New Orders</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div><!-- End of jumbotron container  -->
		</div><!-- End of row  -->
		</div>
<!-- End of Container That Contains Profile Card and new Order Card -->
			
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Categories</h5>
						<p class="card-text">Here you can manage your Categories and you can add new Categories</p>
						<a href="#" class="btn btn-primary btn-sm " data-toggle="modal"
							data-target="#categorymodal">Add</a> 
							<a href="${contextRoot}/manage_category.jsp"
							class="btn btn-success btn-sm">Manage</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Brands</h5>
						<p class="card-text">Here you can manage your brand and you can add new brand</p>
						<a href="#" class="btn btn-primary btn-sm" data-toggle="modal"
							data-target="#brandmodal">Add</a> 
							<a href="${pageContext.request.contextPath}/manage_brands" class="btn btn-success btn-sm">Manage</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Products</h5>
						<p class="card-text">Here you can manage your Products and you can add new Products</p>
						<a href="#" class="btn btn-primary btn-sm" data-toggle="modal"
							data-target="#productmodal">Add</a> 
							<a href="${pageContext.request.contextPath}/manage_product"  class="btn btn-success btn-sm">Manage</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Category Modal -->
	<%@include file="category_modal.jsp" %>


		<!-- Brand Modal -->
	<%@include file="brand_modal.jsp" %>
	
	
	<!-- Product Modal -->
	<%@include file="products_modal.jsp" %>
	
	
	
	
</body>
</html>
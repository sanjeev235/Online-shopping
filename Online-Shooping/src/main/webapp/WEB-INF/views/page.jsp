<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/resources/css" />

<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping -${title}</title>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<!-- Navigation  bar -->
	<%@include file="./shared/nabar.jsp"%>
		<div class="container">
			<a class="navbar-brand" href="${contextRoot}/home">Online Shopping</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="${contextRoot}/home">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item">
					
					<a class="nav-link" href="${contextRoot}/about">About</a></li>
					<li class="nav-item"><a class="nav-link" href="${contextRoot}/listProducts">View Products</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="${contextRoot}/contact">Contact</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content  home page-->
	<c:if test="${userClickHome == true}">
	<%@include file="home.jsp" %>
	</c:if>
	
		<!-- load onely when user Click about-->
	<c:if test="${userClickAbout == true}">
	<%@include file="about.jsp" %>
	</c:if>
	
	<!-- load onely when user Click contact-->
	<c:if test="${userClickContact == true}">
	<%@include file="contact.jsp" %>
	</c:if>
	<!-- /.container -->

	<!-- Footer page website -->
	
	<%@include file="./shared/footer.jsp" %>

	<!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.js"></script>
	<script src="${js}/bootstrap.bundle.min.js"></script>

</body>

</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=no">	
	<link rel="stylesheet" type="text/css" href="css/informationproduct-style.css">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class="container">
		<div class="product-name">
			<h2><c:out value="${ product.name }"/></h2>
		</div>
		<div class="product-detail">
			<div class="product-image">
				<img src="<c:out value="${ product.src }"/>" alt="..."/>
			</div>
			<div class="product-information">
				<h1>$<c:out value="${ product.price }"/></h1>
				<p><c:out value="${ product.description }"/></p>
				<a class="addtocart-button" href="AddToCartController?ProductId=<c:out value="${ product.id }"/>"><h3>Add to cart</h3></a>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>
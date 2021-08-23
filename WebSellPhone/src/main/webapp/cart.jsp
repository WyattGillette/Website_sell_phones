<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=no">
	<link rel="stylesheet" type="text/css" href="css/cart-style.css"/>
	<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class="cart-container">
		<div class="cart-product">
			<table class="product-table">
				<tr>
					<th>Product in cart: <c:out value="${ sessionScope.orders.getAmountOfProducts() }"/></th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Amount</th>
				</tr>
				<c:forEach items="${ sessionScope.orders.getItems() }" var="a">
					<tr>
						<td>
							<p><c:out value="${ a.getNameProduct() }"/></p>
							<p>Id: <c:out value="${ a.getProductId() }"/></p>
						</td>
						<td><p>($) <c:out value="${ a.getPriceProduct() }"/></p></td>
						<td><p><c:out value="${ a.getQuantityProduct() }"/></p></td>
						<td><p>($) <c:out value="${ a.getTotalPriceProduct() }"/></p></td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="4">Total: <c:out value="${ sessionScope.orders.getTotalOrder() }"/> </td>
				</tr>
			</table>
		</div>
		<div class="customer-information">
			<form action="CartSuccessfully">
				<div class="input-name">
					<p>Customer name:</p>
					<p>Customer address:</p>
					<p>Discount (s):</p>
				</div>
				<div class="customer-input">
					<input type="text" name="CustomerName"/><br/>
					<input type="text" name="CustomerAddress"/><br/>
					<input type="text" name="DiscountCode"/><br/>
				</div>
				<input class="submit-button" type="submit" value="Submit"/>
			</form>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"/>
</body>
</html>
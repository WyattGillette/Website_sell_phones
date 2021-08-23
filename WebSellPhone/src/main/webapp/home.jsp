<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=no">
		<link rel="stylesheet" type="text/css" href="css/home.css">
	</head>
	<body>
		<jsp:include page="header.jsp"/>
		
		<%@ page import="dao.ListProductDAO" %>
		<%@ page import="model.Product" %>
		<%@ page import="java.util.List" %>
		<% 
			ListProductDAO dao = new ListProductDAO();
			List<Product> listProduct = null;
			if(session.getAttribute("listProduct") == null){
				listProduct = dao.searchProductByName("");
				session.setAttribute("listProduct", listProduct);
			}
		%>
		<div id="product-container">
			<ul class="products">
				<c:forEach items="${ sessionScope.listProduct }" var="a">
					<li>
						<a href="InformationProductController?id=<c:out value="${ a.getId() }"/>">
							<img src="<c:out value="${ a.getSrc() }"/>" alt="..."/>
							<p><c:out value="${ a.getType() }"/></p>
							<p><c:out value="${ a.getName() }"/></p>
							<p><b>$<c:out value="${ a.getPrice() }"/></b></p>
						</a>
					</li>
				</c:forEach>
			</ul>
		</div>
		<div class="page-number">
			<ul>
				<li>
					<a href="#">
						<span><<</span>
					</a>
				</li>
				<li>
					<a href="#">
						<span>1</span>
					</a>
				</li>
				<li>
					<a href="#">
						<span>>></span>
					</a>
				</li>
			</ul>
		</div>
		<% session.removeAttribute("listProduct"); %>
		<jsp:include page="footer.jsp"/>
	</body>
</html>
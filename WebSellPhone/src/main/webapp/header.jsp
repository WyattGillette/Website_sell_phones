<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<header>
	<div class="header">
		<div class="header-name">
			<h1>PRJ321x</h1>
			<p>Welcome to my website</p>
		</div>
		<div class="search-bar">
			<select id="search-menu">
				<option selected disabled hidden>Categories</option>
				<option>Danh sách 02</option>
				<option>Danh sách 03</option>
				<option>Danh sách 03</option>
			</select>
			<form class="search-form" action="SearchController">
				<input type="text" class="search-input" name="search" placeholder="what are you looking for ?">
				<button type="submit" class="button-search">Search</button>
			</form>
			
		</div>
	</div>	
	<div class="topnav">
		<a href="home.jsp">Home</a>
		<a href="#">Product</a>
		<a href="#">About us</a>
		<a href="#" style="float:right; padding-left: 80px; padding-right: 80px;">Login</a>
	</div>
</header>
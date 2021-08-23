<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="../css/admin-style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

    </head>
    <body>
        <div class="side-bar">
            <div class="name">
                <p>1849 Team</p>
            </div>
            <div class="menu">
                <a href="#"><i class="fas fa-th-large"></i><span>Dashboard</span></a>
                <a href="#"><i class="fas fa-user"></i><span>Staff Manager</span></a>
            </div>
        </div>
        <div class="content">
            <div class="header">
                <form class="form-login" action="../logout" method="get">
                    <p class="username">${sessionScope.user}</p>
                	<button type="submit" class="logout-btn">
                		<i class="fas fa-user"></i>
                		<span>Logout</span>
                	</button>
                </form>
            </div>
            <div class="information">
                <div class="table-container">
                    <div class="table-title">
                        <h2>Member of the team</h2>
                    </div>
                    <div class="table-body">
                        <table class"table">
                            <thead>
                                <tr>
                                    <th class="column1">ID</th>
                                    <th class="column2">Name</th>
                                    <th class="column3">Student ID</th>
                                    <th class="column4">Class</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th class="column1">1</th>
                                    <th class="column2">Member 1</th>
                                    <th class="column3">Member Code 1</th>
                                    <th class="column4">Class 1</th>
                                </tr>
                                <tr>
                                    <th class="column1">2</th>
                                    <th class="column2">Member 2</th>
                                    <th class="column3">Member Code 2</th>
                                    <th class="column4">Class 2</th>
                                </tr>
                                <tr>
                                    <th class="column1">3</th>
                                    <th class="column2">Member 3</th>
                                    <th class="column3">Member Code 3</th>
                                    <th class="column4">Class 3</th>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
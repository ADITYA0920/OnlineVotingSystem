<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="UTF-8">
<title>Admin Login</title>
</head>
<%@include file="navbar.jsp" %>
<body>

<div class="form-container" >

<form action="adminLogin" method="post">
<h3>Admin Login</h3>

<label for="name" class="form-elements form-label"><b>Name </b></label>
<br>
<input id="name" name="adminName" class="form-elements form-input" type="text"/>
<br>
<label for="password" class="form-elements form-label"><b>Password </b></label>
<br>
<input id="password" name="password" class="form-elements form-input" type="password"/>
<br>
<button type="Submit" class="form-elements form-button">Login</button>
<br>
</form>

</div>
</body>
</html>
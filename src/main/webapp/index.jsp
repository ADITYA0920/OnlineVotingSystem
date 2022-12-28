<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="UTF-8">
<title>online voting system</title>
</head>
<%@include file="navbar.jsp" %>
<body>
<div class="form-container ">
<form action="voterLogin" method="post">
<h3>Enter Voting Number</h3>
<label for="VoterNumber" class="form-elements"></label>
<b>Voting number</b>
<br>
<input name="VoterNumber" id="VoterNumber" name="VoterNumber"class="form-elements form-input"type=text/>
<button type="submit" class="form-elements form-button">Login</button>
<br>
<a href="adminLogin.jsp">admin</a>


</form>
</div>
</body>
</html>
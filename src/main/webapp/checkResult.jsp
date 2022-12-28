<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
    <%
   
    String a[] = new String[100];
 	for(int i=0;i<100;i++){
 		a[i]="0";
 	}
 
    Class.forName("com.mysql.cj.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevotinggdb","root","Aditya@5791");
	
	PreparedStatement preparedStatement = con.prepareStatement("select party,count(party) as votecount from vote group by party");
	ResultSet rs=((java.sql.Statement) preparedStatement).executeQuery("select party,count(party) as votecount from vote group by party");
	
    int i=0;
    while(rs.next()){
    	if(rs.getString("party").equals("Aam Aadmi Party"))
        a[0] = rs.getString("votecount");
    	if(rs.getString("party").equals("BJP"))
        a[1] = rs.getString("votecount");
    	if(rs.getString("party").equals("BSP"))
        a[2] = rs.getString("votecount");
    	if(rs.getString("party").equals("Congress"))
        a[3] = rs.getString("votecount");
    	if(rs.getString("party").equals("CPI"))
        a[4] = rs.getString("votecount");
    }
    %>
<meta charset="UTF-8">
<title>result</title>
</head>
<%@include file="adminNavBar.jsp" %>
<body>
<div class="form-container">
<div class="checkTable">
<table>
	<tr>
		<th>
		parties
		<th>
		<th>
		Names
		<th>
		<th>
		Votes
		<th>
	<tr>
<tr>
	<td>
	<img alt="AAP" src="images/aap.jpg">
	<td>
	<td>Aam Aadami Party<td>
	<td><%=a[0]%><td>
<tr>
<tr>
	<td>
	<img alt="BJP" src="images/BJP.JPG">
	<td>
	<td>Bhartiya Janata Party<td>
	<td><%=a[1]%><td>
<tr>
<tr>
	<td>
	<img alt="BSP" src="images/BSP.JPG">
	<td>
	<td>Bahujan  Samaj Party<td>
	<td><%=a[2]%><td>
<tr>
<tr>
	<td>
	<img alt="Congress" src="images/congress.JPG">
	<td>
	<td>Congress Party<td>
	<td><%=a[3]%><td>
<tr>
<tr>
	<td>
	<img alt="CPI" src="images/CPI.JPG">
	<td>
	<td>Cummunist Party<td>
	<td><%=a[4]%><td>
<tr>
</table>
</div>
</div>
</body>
</html>
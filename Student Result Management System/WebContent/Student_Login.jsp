<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.login-box {
	height: 400px;
}
</style>
<link rel="stylesheet" type="text/css" href="assets/css/MyCSS.css "> 
<link rel="stylesheet" type="text/css" href="style.css"> 
</head>

    <%@page import="java.sql.*" %>
      <%@page import="Project.ConnectionProvider" %>
      
<%
Connection con=ConnectionProvider.getCon();
if(con==null){
	%>
	<h2 class="error">Database not found ! <br>Please check your Database connection.</h2>
	<%
}
%>
<body>

<form method="post" action="studentHome.jsp">
	<div class="login-box">
		<center>
			<img src="result.png" width="200" height="150">
		</center>

		<input type="text" name="rollNo" placeholder="Enter Roll Number"
			required="required"> <input type="text" name="mname"
			placeholder="Mothers name" required="required"> <input
			type="submit" name="submit" value="Search">
</form>
<center>
	<h1>
		<a href="index.html">Back</a>
	</h1>
</center>
</div>

</html>
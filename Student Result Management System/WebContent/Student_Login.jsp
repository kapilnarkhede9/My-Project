<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">   
  <link rel="stylesheet" type="text/css" href="style.css">  
<style>
.login-box {
	height: 400px;
}
</style>
</head>

<jsp:include page="notification.jsp"></jsp:include>
    <%@page import="java.sql.*" %>
      <%@page import="Project.ConnectionProvider" %>
      
<%
String alert=request.getParameter("alert");
if(!"none".equalsIgnoreCase(request.getParameter("alert"))){
	%>
	<script type="text/javascript">error(2,"<%=request.getParameter("alert")%>");	</script>
	<%
}
Connection con=ConnectionProvider.getCon();
if(con==null){
	%>
	<h2 class="error">Database not found ! <br>Please check your Database connection.</h2>
	<%
}
%>
<body></body>

 <form method="post" action="studentHome.jsp">
	<div class="login-box">
		<center>
			<img src="result.png" width="200" height="150">
		</center>
	<input type="hidden" name="sem" value="<%=request.getParameter("sem")%>">
	<input type="hidden" name="course" value="<%=request.getParameter("course")%>">
		<input type="text" name="rollNo" placeholder="Enter Roll Number"
			required="required"> <input type="text" name="mname"
			placeholder="Mothers name" required="required"> <input
			type="submit" name="submit" value="Search">
			<h1>
		<a href="index.html">Back</a>
	</h1>
</div> 

<center>
	<h1>
		
	</h1>
</center>
</form>
  
</html>

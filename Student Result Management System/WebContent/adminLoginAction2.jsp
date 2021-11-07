<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String username1=request.getParameter("username");
String Password1=request.getParameter("password");

 if((username1.equalsIgnoreCase("admin")) && (Password1.equalsIgnoreCase("password")))
		 {
		 	response.sendRedirect("adminHome2.jsp");
		 }
 else
 {
	 response.sendRedirect("errorAdminLogin.html");
 }
	%>
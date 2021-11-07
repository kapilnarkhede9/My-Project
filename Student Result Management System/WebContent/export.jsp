<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="Project.*" %>
<%@page import="java.sql.*" %>
<%
Excel_export e = new Excel_export();
if("students".equals(request.getParameter("check"))){
	e.Excel_e(request.getParameter("path"),request.getParameter("I_ID"),request.getParameter("check"));
	
	response.sendRedirect("InstituteHome.jsp");
}
else if("results".equals(request.getParameter("check"))){
	e.Excel_e(request.getParameter("path"),request.getParameter("I_ID"),request.getParameter("check"));
	response.sendRedirect("InstituteHome.jsp");
}
else if("institutes".equals(request.getParameter("check"))){
	e.Excel_e(request.getParameter("path"),request.getParameter("I_ID"),request.getParameter("check"));
	response.sendRedirect("adminHome2.jsp");
}


%>

</body>
</html>
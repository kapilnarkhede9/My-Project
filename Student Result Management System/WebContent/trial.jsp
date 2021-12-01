<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<body>
<button onclick="m1('kapil'); m2();">Click Me </button>
</body>
<script type="text/javascript">
function m1(a){
	alert("m1");
}
function m2(){
	alert("m2");
}
</script>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionProvider"%>
<link rel="stylesheet" href="assets/css/m3.css" />

<jsp:include page="notification.jsp"></jsp:include>
<body>
	<%
		try {

		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st
		.executeQuery("SELECT DISTINCT `course` ,`branch` FROM `student` WHERE 1 ORDER BY `course`,`branch` ASC");
	%>
	<div class="list">
		<ul>

			<center>
				<h2
					style="background-color: rgba(.3, .6, .8, .3); border-radius: initial; padding: 20 px; font-size: 30px; font-style: oblique; font-family: system-ui;">
					Available_results</h2>
				<br> <br>
			</center>
			<%
				while (rs.next()) {
			%>
			<marquee>
				<li class="li"><a
					href="Student_Login.jsp?course=<%=rs.getString(1)%>&sem=<%=rs.getString(2)%>&alert=none"><strong>
							<%
								out.print(rs.getString(1) + " " + rs.getString(2));
							%>
					</strong></a></li>
			</marquee>

			<%
				}
			%>
		</ul>
	</div>
	<%
		} catch (Exception e) {
		out.print(e);
	}
	%>
</body>
</html>
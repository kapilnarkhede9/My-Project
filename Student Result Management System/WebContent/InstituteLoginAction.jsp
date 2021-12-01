<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	try {
	String username1 = request.getParameter("username");
	String Password1 = request.getParameter("password");
	Connection con = ConnectionProvider.getCon();
	if (con == null) {
		response.sendRedirect("InstituteLogin.jsp?data=DBERROR");
	} else {

		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from institute");
		if (rs != null) {
	while (rs.next()) {
		if ((username1.equalsIgnoreCase(rs.getString("ID")))
				&& (Password1.equalsIgnoreCase(rs.getString("password")))) {
			st = con.createStatement();
			st.executeUpdate("DELETE FROM `temp` WHERE 1");
			st = con.createStatement();
		st.executeUpdate("insert into Temp values('" + rs.getString("ID") + "','')");
			response.sendRedirect("InstituteHome.jsp?I_ID=" + rs.getString("ID"));
			break;
		}
		else {
			response.sendRedirect("InstituteLogin.jsp?warning=Incorrect Username or Password");
				}
	}
		} else {
	response.sendRedirect("InstituteLogin.jsp?warning=Incorrect User ID or Password");
		}
	}
} catch (Exception e) {
	out.print(e.toString());
}
%>
<%@page import="Project.*" %>
<%@page import="java.sql.*" %>
<% String cource=request.getParameter("course");
String branch=request.getParameter("branch");
String rollNo=request.getParameter("rollNo");
String name=request.getParameter("name");
String fatherName=request.getParameter("fatherName");
String gender=request.getParameter("gender");
String I_ID=request.getParameter("I_ID");
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from Temp");
if(rs.next()){
	I_ID = rs.getString("I_ID");
}
try{
	st=con.createStatement();
	st.executeUpdate("insert into student values('"+cource+"','"+branch+"','"+rollNo+"','"+name+"','"+fatherName+"','"+gender+"','"+I_ID+"')");
	response.sendRedirect("InstituteHome.jsp");
}
catch(Exception e)
{
	out.println(e);
}
%>
 
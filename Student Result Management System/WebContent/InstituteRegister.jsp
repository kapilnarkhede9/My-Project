<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String I_ID=request.getParameter("I_ID");
String pwd=request.getParameter("pwd");
String sub1=request.getParameter("sub1");
String sub2=request.getParameter("sub2");
String sub3=request.getParameter("sub3");
String sub4=request.getParameter("sub4");
String sub5=request.getParameter("sub5");
String sub6=request.getParameter("sub6");
String sub7=request.getParameter("sub7");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();

	st=con.createStatement();
	st.executeUpdate("insert into institute values('"+name+"','"+I_ID+"','"+pwd+"','"+sub1+"','"+sub2+"','"+sub3+"','"+sub4+"','"+sub5+"','"+sub6+"','"+sub7+"')");
	response.sendRedirect("adminHome2.jsp");
}
catch(Exception e)
{
	response.sendRedirect("InstituteRegister.jsp");
	out.println(e);
}
%>
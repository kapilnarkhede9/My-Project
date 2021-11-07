<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String rollNo=request.getParameter("rollNo");
String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");
String s4=request.getParameter("s4");
String s5=request.getParameter("s5");
String s6=request.getParameter("s6");
String s7=request.getParameter("s7");
String I_ID = request.getParameter("I_ID");
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from Temp");
if(rs.next()){
	I_ID = rs.getString("I_ID");
}
rs=st.executeQuery("select * from student where rollNo="+rollNo);
if(rs.next()){
	try
	{
		st=con.createStatement();
		st.executeUpdate("insert into result values('"+rollNo+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+I_ID+"')");
		response.sendRedirect("InstituteHome.jsp");
	}
	catch(Exception e)
	{
		out.println(e);
	}
}else{
	response.sendRedirect("InstituteHome.jsp?alert=Invalid Roll Number");
}

%>

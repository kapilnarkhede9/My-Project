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
Excel_Import e = new Excel_Import();
if("students".equals(request.getParameter("check"))){
	int r=e.getRowCount(request.getParameter("path"));
	String data[][] = new String[r+1][8];
	data=e.excel_i(request.getParameter("path"), r, 7);//C:/Users/kapil/Desktop/users_mca_2021.csv
	Connection con = ConnectionProvider.getCon();
	for(int i=1;i<=r;i++)
	{
		PreparedStatement st = con.prepareStatement("insert into student values(?,?,?,?,?,?,?)");
		st.setString(1,data[i][0]);
		st.setString(2,data[i][1]);
		st.setString(3,data[i][2]);
		st.setString(4,data[i][3]);
		st.setString(5,data[i][4]);
		st.setString(6,data[i][5]);
		st.setString(7,data[i][6]);
		//response.getWriter().print(request.getParameter("path")+data[i][3]+data[0][0]+data[0][1]+"\n");
		st.executeUpdate();
	}
	con.close();
	response.sendRedirect("InstituteHome.jsp");
}
else if("results".equals(request.getParameter("check"))){
	int r=e.getRowCount(request.getParameter("path"));
	String data[][] = new String[r+1][9];
	data=e.excel_i(request.getParameter("path"), r, 9);//C:/Users/kapil/Desktop/users_mca_2021.csv
	Connection con = ConnectionProvider.getCon();
	//response.getWriter().print(request.getParameter("path")+data[0][0]+"KKn");
	for(int i=1;i<=r;i++)
	{
		PreparedStatement st = con.prepareStatement("insert into result values(?,?,?,?,?,?,?,?,?)");
		st.setString(1,data[i][0]);
		st.setString(2,data[i][1]);
		st.setString(3,data[i][2]);
		st.setString(4,data[i][3]);
		st.setString(5,data[i][4]);
		st.setString(6,data[i][5]);
		st.setString(7,data[i][6]);
		st.setString(8,data[i][7]);
		st.setString(9,data[i][8]);
		//response.getWriter().print(request.getParameter("path")+data[i][0]+data[0][0]+data[0][1]+"\n");
		st.executeUpdate();
	}
	con.close();
	response.sendRedirect("InstituteHome.jsp");
}else if("institutes".equals(request.getParameter("check"))){
	int r=e.getRowCount(request.getParameter("path"));
	String data[][] = new String[r+1][10];
	data=e.excel_i(request.getParameter("path"), r, 10);
	Connection con = ConnectionProvider.getCon();
	for(int i=1;i<=r;i++)
	{
		PreparedStatement st = con.prepareStatement("insert into institute values(?,?,?,?,?,?,?,?,?,?)");
		st.setString(1,data[i][0]);
		st.setString(2,data[i][1]);
		st.setString(3,data[i][2]);
		st.setString(4,data[i][3]);
		st.setString(5,data[i][4]);
		st.setString(6,data[i][5]);
		st.setString(7,data[i][6]);
		st.setString(8,data[i][7]);
		st.setString(9,data[i][8]);
		st.setString(10,data[i][9]);
		//response.getWriter().print(request.getParameter("path")+data[i][3]+data[0][0]+data[0][1]+"\n");
		st.executeUpdate();
	}
	con.close();
	//response.sendRedirect("InstituteHome.jsp");
}
%>
</body>
</html>
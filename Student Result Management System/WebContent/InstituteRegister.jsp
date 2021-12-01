<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String I_ID=request.getParameter("I_ID");
String Cname=request.getParameter("Cname");
String sem=request.getParameter("sem");
String Rid=Cname+" "+sem;
String pwd=request.getParameter("pwd");
String sub1=request.getParameter("sub1");
String sub2=request.getParameter("sub2");
String sub3=request.getParameter("sub3");
String sub4=request.getParameter("sub4");
String sub5=request.getParameter("sub5");
String sub6=request.getParameter("sub6");
String sub7=request.getParameter("sub7");

int[] tm = new int[8];
for(int i=0;i<7;i++){
	if(request.getParameter("tm"+(i+1))!=null){
		 tm[i]=Integer.parseInt(request.getParameter("tm"+(i+1)));
	}else
		tm[i]=100;
}
for(int i=0;i<7;i++)
	tm[7]=tm[7]+tm[i];

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	for(int i=0;i<7;i++)
	out.println(tm[i]);
	st=con.createStatement();
	st.executeUpdate("insert into institute values('"+name+"','"+I_ID+"','"+pwd+"','"+sub1+"','"+sub2+"','"+sub3+"','"+sub4+"','"+sub5+"','"+sub6+"','"+sub7+"','"+Cname+"','"+sem+"','"+Rid+"')");
	st.executeUpdate("insert into total_marks values('"+tm[0]+"','"+tm[1]+"','"+tm[2]+"','"+tm[3]+"','"+tm[4]+"','"+tm[5]+"','"+tm[6]+"','"+tm[7]+"','"+I_ID+"','"+sem+"')");
	response.sendRedirect("adminHome2.jsp?sucsses=Registration Sucsseful.");
}
catch(Exception e)
{
	//response.sendRedirect("adminHome2.jsp?alert=Error Occured.");
	out.println(e);
}
%>
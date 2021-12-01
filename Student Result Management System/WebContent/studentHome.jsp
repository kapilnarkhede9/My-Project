<img src="logo.png" align="left" width="150" height="150">
<center>
	<img src="dgi.png" width="150" height="150"> <img
		src="apj sir.png" align="right" width="150" height="150">
</center>
<a href="Student_Login.jsp?course=<%=request.getParameter("course")%>&sem=<%=request.getParameter("sem")%>&alert=none">Back</a>
<hr class="new1">
<style>
table {
	width: 100%;
	table-layout: fixed;
}

th {
	padding: 20px 15px;
	text-align: left;
	font-weight: 500;
	font-size: 12px;
	color: #fff;
	text-transform: uppercase;
	border: 2px solid rgba(255, 255, 255, 0.3);
}

/* demo styles */
@import
	url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);

body {
	background: -webkit-linear-gradient(left, #25c481, #25b7c4);
	background: linear-gradient(to right, #25c481, #25b7c4);
	font-family: 'Roboto', sans-serif;
}
</style>
<!--for demo wrap-->
<div class="tbl-header">
	<table cellpadding="0" cellspacing="0" border="0">
		<%@page import="java.sql.*"%>
		<%@page import="Project.ConnectionProvider"%>
		<%
			String id = "invalid";
		try {

			int rollNo = Integer.parseInt(request.getParameter("rollNo"));
			//  System.out.println(rollNo);
			//out.print(request.getParameter("rollNo"));
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from student where rollNo='" + rollNo + "'");
			Statement st1 = con.createStatement();
			//SELECT result.*,student.branch,student.course,student.fatherName FROM result INNER JOIN student ON result.Roll_no=student.rollNo WHERE result.Roll_no=51151 && student.fatherName='priti' && student.course='"+request.getParameter("course")+"' && student.branch='"+request.getParameter("sem")+"'

			if (rs.next()) {
				ResultSet sub = st1.executeQuery("select * from institute where ID ='" + rs.getString(7) + "'");
		%>
		<thead>
			<tr>
				<%
					if (sub.next()) {
					id = rs.getString(7);
				%>
				<th>institution Name : <%=sub.getString(1)%>
				</th>
				<%
					}else{
						response.sendRedirect("Student_Login.jsp?course="+request.getParameter("course")+"&sem="+request.getParameter("sem")+"&alert=Invlid Roll Number");
					}
				%>
				<th>Course Name : <%=rs.getString(1)%></th>
				<th>Semister : <%=rs.getString(2)%></th>
				<th><center>
						RollNo :
						<%=rs.getString(3)%></center></th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th>Name: <%=rs.getString(4)%></th>
				<th>Mother Name: <%=rs.getString(5)%></th>
				<th>Gender: <%=rs.getString(6)%>
				</th>
				<th><a titlt="print screen" alt="print screen"
					onclick="window.print();" target="_blank" style="cursor: pointer;"><center>
							<img src="print.png">
						</center></a></th>
			</tr>
		</thead>
		<%
			} else {
			response.sendRedirect("Student_Login.jsp?course="+request.getParameter("course")+"&sem="+request.getParameter("sem")+"&alert=Invlid Roll Number");
		}
		} catch (Exception e) {
			out.print(e);
		}
		%>
	</table>
</div>
<style>
html {
	font-family: arial;
	font-size: 25px;
}

td {
	border: 2px solid #726E6D;
	padding: 15px;
	color: black;
	text-align: center;
}

thead {
	font-weight: bold;
	text-align: center;
	background: #625D5D;
	color: white;
}

table {
	border-collapse: collapse;
}

.footer {
	text-align: right;
	font-weight: bold;
}

tbody>tr:nth-child(odd) {
	background: #D1D0CE;
}
</style>
<head>
<hr class="new1">
</head>
<body>
	<table>
		<%@page import="java.sql.*"%>
		<%@page import="Project.ConnectionProvider"%>
		<%
			try {
			float per = 0;
			int rollNo = Integer.parseInt(request.getParameter("rollNo"));
			String mname = request.getParameter("mname");
			//  System.out.println(rollNo);
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(
			"SELECT result.*,student.branch,student.course,student.fatherName FROM result INNER JOIN student ON result.Roll_no=student.rollNo WHERE result.Roll_no="
					+ request.getParameter("rollNo") + " && student.fatherName='" + request.getParameter("mname")
					+ "' && student.course='" + request.getParameter("course") + "' && student.branch='"
					+ request.getParameter("sem") + "'	");
			//"SELECT result.*,student.branch,student.course,student.fatherName FROM result INNER JOIN student ON result.Roll_no=student.rollNo WHERE result.Roll_no="
			//	+ rollNo + " && student.fatherName='" + request.getParameter("mname") + "' && student.course='"
			//	+ request.getParameter("course") + "' && student.branch='" + request.getParameter("sem") + "'"
			if (rs.next()) {
		%>
		<thead>
			<tr>
				<td colspan="3">Course</td>
				<td rowspan="2">Type</td>
				<td rowspan="2">Full Marks</td>
				<td rowspan="2">Passing Marks</td>
				<td rowspan="2">Obtained Marks</td>

			</tr>
			<tr>
				<td>Code</td>
				<td colspan="2">Name</td>
			</tr>
		</thead>
		<%
			Statement st1 = con.createStatement();
		ResultSet tm = st1.executeQuery(
				"SELECT institute.*,total_marks.* FROM institute INNER JOIN total_marks ON institute.ID=total_marks.I_ID WHERE institute.ID='"
				+ id + "' AND institute.Semister='"
						+ request.getParameter("sem") + "'	");
		if (tm.next()) {
		%>
		<tbody>
			<tr>
				<td>NAS101</td>
				<td colspan="2"><%=tm.getString(4)%></td>
				<td>Theory</td>
				<td><%=tm.getString(14)%></td>
				<td><%=Math.round(tm.getInt(14) * (0.35))%></td>
				<td><%=rs.getString(2)%></td>
			</tr>
			<tr>
				<td>NAS102</td>
				<td colspan="2"><%=tm.getString(5)%></td>
				<td>Theory</td>
				<td><%=tm.getString(15)%></td>
				<td><%=Math.round(tm.getInt(15) * (0.35))%></td>
				<td><%=rs.getString(3)%></td>
			</tr>
			<tr>
				<td>NAS103</td>
				<td colspan="2"><%=tm.getString(6)%></td>
				<td>Theory</td>
				<td><%=tm.getString(16)%></td>
				<td><%=Math.round(tm.getInt(16) * (0.35))%></td>
				<td><%=rs.getString(4)%></td>
			</tr>
			<tr>
				<td>NEE104</td>
				<td colspan="2"><%=tm.getString(7)%></td>
				<td>Theory</td>
				<td><%=tm.getString(17)%></td>
				<td><%=Math.round(tm.getInt(17) * (0.35))%></td>
				<td><%=rs.getString(5)%></td>
			</tr>
			<tr>
				<td>NEC105</td>
				<td colspan="2"><%=tm.getString(8)%></td>
				<td>Theory</td>
				<td><%=tm.getString(18)%></td>
				<td><%=Math.round(tm.getInt(18) * (0.35))%></td>
				<td><%=rs.getString(6)%></td>
			</tr>
			<tr>
				<td>NAS106</td>
				<td colspan="2"><%=tm.getString(9)%></td>
				<td>Practical</td>
				<td><%=tm.getString(19)%></td>
				<td><%=Math.round(tm.getInt(19) * (0.35))%></td>
				<td><%=rs.getString(7)%></td>
			</tr>
			<tr>
				<td>NAS107</td>
				<td colspan="2"><%=tm.getString(10)%></td>
				<td>Practical</td>
				<td><%=tm.getString(20)%></td>
				<td><%=Math.round(tm.getInt(20) * (0.35))%></td>
				<td><%=rs.getString(8)%></td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="4" class="footer">Total Marks</td>
				<td><%=tm.getString(21)%></td>
				<td><%=Math.round(tm.getInt(21) * (0.35))%></td>
				<td>
					<%
						int sum = rs.getInt(8) + rs.getInt(2) + rs.getInt(3) + rs.getInt(4) + rs.getInt(5) + rs.getInt(6) + rs.getInt(7);
					out.println(sum);
					%>
				</td>
			</tr>
			<tr>
				<td colspan="4" class="footer">Percentage</td>
				<%
					per = (float) (sum * 100 / tm.getInt(21));
				String result = per >= 35 ? "Pass" : "Fail";
				%>
				<td colspan="2"><h4><%=per%></h4></td>
				<td colspan=""><h4><%=result%></h4></td>
			</tr>
			<%
				}else{
					response.sendRedirect("Student_Login.jsp?course="+request.getParameter("course")+"&sem="+request.getParameter("sem")+"&alert=Invlid Roll Number");
				}
			}else{
				response.sendRedirect("Student_Login.jsp?course="+request.getParameter("course")+"&sem="+request.getParameter("sem")+"&alert=Invlid Roll Number");
			}
			%>
		
	</table>
	<hr class="new1">
	<center>
		<h6>*******************************************************************************************</h6>
		<%
			String div = "";
		if (per > 90)
			div = "Destinaton";
		else if (per > 60)
			div = "First Class";
		else if (per >= 35)
			div = "Second class";
		if (per >= 35) {
		%>
		<h6>
			Congrats you sucessfully Clear the exam in division <u><%=div%>.

			
		</h6>
		<%
			} else {
		%>
		<h6>Better luck next time.</h6>
	</center>
	<hr class="new1">
	<center>
		<h6>All Right Reserved @ MCA Days :: 2020-2021</h6>
	</center>
	<hr class="new1">
	<%
		}
	} catch (Exception e) {
		out.print(e);
	}
	%>
</body>
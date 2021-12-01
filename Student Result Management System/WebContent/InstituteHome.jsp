<%@page import="java.lang.Thread.State"%>
<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<title>DGI</title>

<%@page import="java.sql.*"%>
<%@page import="Project.ConnectionProvider"%>
<jsp:include page="Edit_Details.jsp"></jsp:include>
<jsp:include page="notification.jsp"></jsp:include>

<%
	try {

	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs;
	
	if (request.getParameter("sucsses") != null) {
		String str = request.getParameter("sucsses");
%>
<script type="text/javascript">sucssesful(2,'<%=str%>');</script>

<%
	}

if (request.getParameter("alert") != null) {
	String str = request.getParameter("alert");
%>
<script type="text/javascript">error(2,'<%=str%>');</script>

<%
	}
%>
<body>
	<img src="logo.png" align="left" width="100" height="100">
	<center>
		<img src="dgi.png" width="100" height="100"> <img
			src="apj sir.png" align="right" width="100" height="100">
	</center>
	<div class="w3-container">
		<div class="w3-bar w3-black">
			<button class="w3-bar-item w3-button tablink w3-red"
				onclick="openCity(event,'New Student')">Add New Student</button>
			<button class="w3-bar-item w3-button tablink"
				onclick="openCity(event,'Insert Result')">Insert New Result</button>
			<button class="w3-bar-item w3-button tablink"
				onclick="openCity(event,'Reg Student')">Registered Students</button>
			<button class="w3-bar-item w3-button tablink"
				onclick="openCity(event,'Student Result')">All Student
				Result</button>

			<a href="InstituteLogin.jsp?data=clear"
				class="w3-bar-item w3-button tablink">Logout</a>
		</div>
		<%if (request.getParameter("citytab") != null) {
			String str = request.getParameter("citytab");
			if(str.equalsIgnoreCase("INResult")){
	%>
	<script type="text/javascript">openCity(event,"Insert Result");</script>

	<%
		}} %>
		
		<div id="New Student" class="w3-container w3-border city">
			<br>
			<script
				src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
			<script
				src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
			<!------ Include the above in your HEAD tag ---------->



			<!-- Required meta tags -->
			<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Fonts -->
<link rel="dns-prefetch" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600"
	rel="stylesheet" type="text/css">



<link rel="icon" href="Favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
			</head>
			<body>
				<main class="my-form">
					<div class="cotainer">
						<div class="row justify-content-center">
							<div class="col-md-8">
								<div class="card">
									<div class="card-header">Import Data File</div>
									<div class="card-body">
										<form action="import.jsp" method="post">
											<div class="form-group row offset-md-4">
												<Button type="submit" class="btn btn-primary text-md-right">Import</Button>
												<input type="hidden" name="check" value="students">
												<input type="hidden" name="check" value="students">
												<input type="hidden" name="I_ID"
													value="<%=request.getParameter("I_ID")%>">
												<div class="col-md-6">
													<input type="text" class="form-control"
														placeholder="C:/filepath/file.xlsx" name="path" required>
												</div>
											</div>
										</form>

										<hr>
										<div class="card-header">Manually Insert Data</div>
										<form name="my-form" onsubmit="return validform()"
											action="studentRegister.jsp" method="post">
											<div class="form-group row">
												<label for="full_name"
													class="col-md-4 col-form-label text-md-right">Course
													Name</label>
												<div class="col-md-6">
													<input type="text" class="form-control" name="course"
														required>
												</div>
											</div>
											<div class="form-group row">
												<label for="email_address"
													class="col-md-4 col-form-label text-md-right" required>Semister</label>
												<div class="col-md-6">
													<select name='sem' id="sem" class="form-control">
														<option value="Sem-I">Sem-I</option>
														<option value="Sem-II" selected="selected">Sem-II</option>
														<option value="Sem-III">Sem-III</option>
														<option value="Sem-IV">Sem-IV</option>
														<option value="Sem-V">Sem-V</option>
														<option value="Sem-VI">Sem-VI</option>
													</select>
												</div>
											</div>

											<div class="form-group row">
												<label for="user_name"
													class="col-md-4 col-form-label text-md-right" rquired>Roll
													Number</label>
												<div class="col-md-6">
													<input type="text" class="form-control" name="rollNo">
												</div>
											</div>

											<div class="form-group row">
												<label for="phone_number"
													class="col-md-4 col-form-label text-md-right" required>Name</label>
												<div class="col-md-6">
													<input type="text" class="form-control" name="name">
												</div>
											</div>

											<div class="form-group row">
												<label for="present_address"
													class="col-md-4 col-form-label text-md-right">Mother
													Name</label>
												<div class="col-md-6">
													<input type="text" class="form-control" name="fatherName"
														required>
												</div>
											</div>
											<div class="form-group row">
												<label for="permanent_address"
													class="col-md-4 col-form-label text-md-right">Gender</label>
												<div class="col-md-6">
													<select class="form-control" name="gender" required>
														<option value="male">Male</option>
														<option value="female">Female</option>
														<option value="outher">Outher</option>
													</select>
												</div>
											</div>
											<input type="hidden" name="I_ID"
												value="<%=request.getParameter("I_ID")%>">

											<div class="col-md-6 offset-md-4">
												<button type="submit" class="btn btn-primary">Save</button>
											</div>
									</div>
									</form>
								</div>
							</div>
						</div>
					</div>
		</div>
		</main>

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</div>

<div id="Insert Result" class="w3-container w3-border city"
	style="display: none">
	<br>
	<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<!doctype html>
	<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Fonts -->
<link rel="dns-prefetch" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600"
	rel="stylesheet" type="text/css">



<link rel="icon" href="Favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body>
	<main class="my-form">
		<div class="cotainer">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<div class="card">

						<div class="card-header">Import File</div>
						<form action="import.jsp" method="post">
							</br>
							<div class="form-group row offset-md-4">
								<Button type="submit" onclick="openCity(event,'Insert Result')"
									class="btn btn-primary text-md-right">Import</Button>
								<input type="hidden" name="check" value="results"> <input
									type="hidden" name="check" value="students"> <input
									type="hidden" name="I_ID"
									value="<%=request.getParameter("I_ID")%>">
								<div class="col-md-6">
									<input type="text" class="form-control"
										placeholder="C:/filepath/file.xlsx" name="path" required>
								</div>
							</div>
						</form>
						<hr>
						<div class="card-header">Manually Insert Result</div>
						<div class="card-body">
							<div class="form-group row">
								<label for="email_address"
									class="col-md-4 col-form-label text-md-right" required>Semister</label>
								<div class="col-md-6">
									<form id="f_sem" action="InstituteHome.jsp" method="get">
										<input type="hidden" name="I_ID"
											value="<%=request.getParameter("I_ID")%>">
											<input type="hidden" name="citytab"
											value="INResult"> <select
											name='INRsem' id='INRsem' class="form-control"
											onchange="sem_change();openCity(event,'Insert Result');">
											<option value="Sem-I">Sem-I</option>
											<option value="Sem-II" >Sem-II</option>
											<option value="Sem-III">Sem-III</option>
											<option value="Sem-IV">Sem-IV</option>
											<option value="Sem-V">Sem-V</option>
											<option value="Sem-VI">Sem-VI</option>
										</select>
									</form>
								</div>
							</div>



							<%
								String seminr = "Sem-I";
							if (request.getParameter("INRsem") != null) {
								seminr = request.getParameter("INRsem");
							}
							%><script>
							document.getElementById("INRsem").value="<%=seminr%>";
							</script><%
							con = ConnectionProvider.getCon();
							st = con.createStatement();
							String I_ID = request.getParameter("I_ID");
							rs = st.executeQuery("select * from Temp");
							if (rs.next()) {
								I_ID = rs.getString("I_ID");

							}
							rs = st.executeQuery("select * from institute WHERE`ID`='" + I_ID + "' AND`Semister`='" + seminr + "'");

							if (rs.next()) {
							%>

							<form name="my-form" onsubmit="return validform()"
								action="insertNewResult.jsp" method="post">
								<div class="form-group row">
									<label for="full_name"
										class="col-md-4 col-form-label text-md-right">Roll
										Number</label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="rollNo" required>
									</div>
								</div>

								<div class="form-group row">
									<label for="email_address"
										class="col-md-4 col-form-label text-md-right"><%=rs.getString(4)%></label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="s1" required>
									</div>
								</div>

								<div class="form-group row">
									<label for="user_name"
										class="col-md-4 col-form-label text-md-right"><%=rs.getString(5)%></label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="s2" required>
									</div>
								</div>

								<div class="form-group row">
									<label for="phone_number"
										class="col-md-4 col-form-label text-md-right"><%=rs.getString(6)%></label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="s3" required>
									</div>
								</div>

								<div class="form-group row">
									<label for="present_address"
										class="col-md-4 col-form-label text-md-right"><%=rs.getString(7)%></label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="s4" required>
									</div>
								</div>

								<div class="form-group row">
									<label for="permanent_address"
										class="col-md-4 col-form-label text-md-right"><%=rs.getString(8)%></label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="s5">
									</div>
								</div>

								<div class="form-group row">
									<label for="permanent_address"
										class="col-md-4 col-form-label text-md-right"><%=rs.getString(9)%></label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="s6">
									</div>
								</div>

								<div class="form-group row">
									<label for="permanent_address"
										class="col-md-4 col-form-label text-md-right"><%=rs.getString(10)%></label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="s7">
									</div>
								</div>
								<%
									} else {
								%><h3 class="error">
									Data for
									<%=seminr%>
									not found.
								</h3>
								<%
									}
								%>
								<input type="hidden" name="I_ID"
									value="<%=request.getParameter("I_ID")%>"> <label
									id='check'></label>
								<div class="col-md-6 offset-md-4">
									<button type="submit" onclick="openCity(event,'Insert Result');"
										class="btn btn-primary">Save</button>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br>
</div>

</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
</div>
<div id="Reg Student" class="w3-container w3-border city"
	style="display: none">
	<form action="export.jsp" method="post">
		<br>
		<div class="form-group row offset-md-6">
			<center>
				<Button type="submit" class="btn btn-primary text-md-right">Export
					XLSX File</Button>
			</center>
			<input type="hidden" name="check" value="students"> <input
				type="hidden" name="I_ID" value="<%=request.getParameter("I_ID")%>">
			<div class="col-md-6">
				<input type="hidden" class="form-control"
					value="<%=System.getProperty("user.home") + "\\downloads\\Student_Data.xlsx"%>"
					placeholder="C:/filepath/file.xlsx" name="path" required>
			</div>
		</div>
	</form>
	<section>
		<table cellpadding="0" cellspacing="0" border="0">
			<thead class="tbl-header">
				<tr>
					<th>Course Name</th>
					<th>Semister</th>
					<th>Roll Number</th>
					<th>Student Name</th>
					<th>Mother Name</th>
					<th>Gender</th>
					<th>Update Details</th>
				</tr>
			</thead>
			<tbody>
				<%@page import="java.sql.*"%>
				<%@page import="Project.ConnectionProvider"%>
				<%
					try {
					st = con.createStatement();
					rs = st.executeQuery("select * from Student WHERE`I_ID`='" + I_ID + "'");
					while (rs.next()) {
				%>
				<tr>
					<td><%=rs.getString(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getString(5)%></td>
					<td><%=rs.getString(6)%></td>
					<td><button class="btn"
							onclick="call('<%=rs.getString(1)%>','<%=rs.getString(2)%>','<%=rs.getString(3)%>','<%=rs.getString(4)%>','<%=rs.getString(5)%>','<%=rs.getString(6)%>')">Update</button></td>
				</tr>
			</tbody>
			<%
				}
			} catch (Exception e) {
			}
			%>
		</table>
	</section>
</div>
<div id="Student Result" class="w3-container w3-border city"
	style="display: none">
	<form action="export.jsp" method="post">
		</br>
		<div class="form-group row offset-md-6">
			<Button type="submit" class="btn btn-primary text-md-right">Export
				XLSX File</Button>
			<input type="hidden" name="check" value="results"> <input
				type="hidden" name="I_ID" value="<%=I_ID%>">
			<div class="col-md-6">
				<input type="hidden" class="form-control"
					value="<%=System.getProperty("user.home") + "\\downloads\\Student_Result.xlsx"%>"
					placeholder="C:/filepath/file.xlsx" name="path" required>
			</div>
		</div>
	</form>
	<section>
		<!--for demo wrap-->

		
			<%
				st = con.createStatement();
			I_ID = request.getParameter("I_ID");
			rs = st.executeQuery("select * from Temp");
			if (rs.next()) {
				I_ID = rs.getString("I_ID");
			}
			rs = st.executeQuery("select * from institute WHERE`ID`='" + I_ID + "'");
			while (rs.next()) {
			%>
			<table cellpadding="0" cellspacing="0" border="0">
			<thead class="tbl-header">
			<h2><%=rs.getString(12) %></h2>
				<th>Roll Number</th>
				<th><%=rs.getString(4)%></th>
				<th><%=rs.getString(5)%></th>
				<th><%=rs.getString(6)%></th>
				<th><%=rs.getString(7)%></th>
				<th><%=rs.getString(8)%></th>
				<th><%=rs.getString(9)%></th>
				<th><%=rs.getString(10)%></th>
				<th>Update</th>
				</tr>
			</thead>

			<tbody>

				<%
					Statement st2 = con.createStatement();
				ResultSet rs1 = st2.executeQuery(
						"SELECT result.* FROM result INNER JOIN student on result.Roll_no=student.rollNo WHERE result.I_ID='" + I_ID
						+ "' AND student.branch='" + rs.getString(12) + "'");
				
				while (rs1.next()) {
				%>
				<tr>
					<td><%=rs1.getString(1)%></td>
					<td><%=rs1.getString(2)%></td>
					<td><%=rs1.getString(3)%></td>
					<td><%=rs1.getString(4)%></td>
					<td><%=rs1.getString(5)%></td>
					<td><%=rs1.getString(6)%></td>
					<td><%=rs1.getString(7)%></td>
					<td><%=rs1.getString(8)%></td>
					<td><button 
							onclick=" updateResult('<%=rs.getString(4)%>','<%=rs.getString(5)%>','<%=rs.getString(6)%>','<%=rs.getString(7)%>','<%=rs.getString(8)%>','<%=rs.getString(9)%>','<%=rs.getString(10)%>',<%=rs1.getString(1)%>,<%=rs1.getString(2)%>,<%=rs1.getString(3)%>,<%=rs1.getString(4)%>,<%=rs1.getString(5)%>,<%=rs1.getString(6)%>,<%=rs1.getString(7)%>,<%=rs1.getString(8)%>)">Update</button></td>
				</tr>
			</tbody>
			
			<%
				}%></table><br><hr><hr><hr><br><%
			}
			%>
		
	</section>

</div>
<hr class="new1">
<center>
	<h5>Designed & Developed by Ishvar Kharche and Group</h5>
</center>
<hr class="new1">
<center>
	<h5>contact : 9604312546</h5>
</center>

<hr class="new1">
<br>
</body>
<%
	} catch (Exception e) {
	out.print("kapil" + e);
}
%>

<script type="text/javascript">
	function sem_change(){
		document.getElementById("f_sem").submit();
	}									
</script>

<jsp:include page="Edit_Results.jsp"></jsp:include>
</html>


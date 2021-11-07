<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<title>DGI</title>
<%
	try {
	Connection con;
	Statement st;
	ResultSet rs;
	if (request.getParameter("alert") != null) {
%>
<script>
	alert("Enter Valid Roll no.");
</script>
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
				onclick="openCity(event,'Student Result')">All Student Result</button>
				
			<a href="InstituteLogin.jsp?data=clear" class="w3-bar-item w3-button tablink">Logout</a>
		</div>
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
						<div class="card-header">Add New Students</div>
						<div class="card-body">
							<form action="import.jsp" method="post">
								<div class="form-group row offset-md-4">
									<Button type="submit" class="btn btn-primary text-md-right" >Import</Button>
										<input type="hidden" name="check" value="students">
									<div class="col-md-6">
										<input type="text" class="form-control" placeholder="C:/filepath/file.xlsx" name="path" required>
									</div>
								</div></form><br>
																<form name="my-form" onsubmit="return validform()"
								action="studentRegister.jsp" method="post">
								<div class="form-group row">
									<label for="full_name"
										class="col-md-4 col-form-label text-md-right">Course
										Name</label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="course" required>
									</div>
								</div>

								<div class="form-group row">
									<label for="email_address"
										class="col-md-4 col-form-label text-md-right" required>Branch
										Name</label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="branch">
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
										<input type="text" class="form-control" name="fatherName" required>
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
					
						<div class="card-header">Insert New Result</div>
						<form action="import.jsp" method="post"></br>
								<div class="form-group row offset-md-4">
									<Button type="submit" class="btn btn-primary text-md-right" >Import</Button>
										<input type="hidden" name="check" value="results">
									<div class="col-md-6">
										<input type="text" class="form-control" placeholder="C:/filepath/file.xlsx" name="path" required>
									</div>
								</div></form>
							<br>
						<%
							con = ConnectionProvider.getCon();
						st = con.createStatement();
						String I_ID = request.getParameter("I_ID");
						rs = st.executeQuery("select * from Temp");
						if (rs.next()) {
							I_ID = rs.getString("I_ID");

						}
						rs = st.executeQuery("select * from institute WHERE`ID`='" + I_ID + "'");

						while (rs.next()) {
						%>
						<div class="card-body">
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
									}
								%>
								<input type="hidden" name="I_ID"
									value="<%=request.getParameter("I_ID")%>"> <label
									id='check'></label>
								<div class="col-md-6 offset-md-4">
									<button type="submit" class="btn btn-primary">Save</button>
								</div>
						</div>
						</form>
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
<form action="export.jsp" method="post"><br>
								<div class="form-group row offset-md-4">
									<Button type="submit" class="btn btn-primary text-md-right" >Export</Button>
										<input type="hidden" name="check" value="students">
										<input type="hidden" name="I_ID" value="<%=request.getParameter("I_ID")%>">
									<div class="col-md-6">
										<input type="text" class="form-control" placeholder="C:/filepath/file.xlsx" name="path" required>
									</div>
								</div></form>
	<section>
		<!--for demo wrap-->
		<div class="tbl-header">
			<table cellpadding="0" cellspacing="0" border="0">
				<thead>
					<tr>
						<th>Course Name</th>
						<th>Branch Name</th>
						<th>Roll Number</th>
						<th>Name</th>
						<th>Mother Name</th>
						<th>Gender</th>
					</tr>
				</thead>
			</table>
		</div>
		<div class="tbl-content">
			<table cellpadding="0" cellspacing="0" border="0">
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
					</tr>
				</tbody>
				<%
					}
				} catch (Exception e) {
				}
				%>
			</table>
		</div>
	</section>
</div>
<div id="Student Result" class="w3-container w3-border city"
	style="display: none">
<form action="export.jsp" method="post"></br>
								<div class="form-group row offset-md-4">
									<Button type="submit" class="btn btn-primary text-md-right" >Export</Button>
										<input type="hidden" name="check" value="results">
										<input type="hidden" name="I_ID" value="<%=I_ID%>">
									<div class="col-md-6">
										<input type="text" class="form-control" placeholder="C:/filepath/file.xlsx" name="path" required>
									</div>
								</div></form>
	<section>
		<!--for demo wrap-->
		<div class="tbl-header">
			<table cellpadding="0" cellspacing="0" border="0">
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
				<thead>
					<th>Roll Number</th>
					<th><%=rs.getString(4)%></th>
					<th><%=rs.getString(5)%></th>
					<th><%=rs.getString(6)%></th>
					<th><%=rs.getString(7)%></th>
					<th><%=rs.getString(8)%></th>
					<th><%=rs.getString(9)%></th>
					<th><%=rs.getString(10)%></th>
					</tr>
				</thead>
				<%
					}
				%>
			</table>
		</div>
		<div class="tbl-content">
			<table cellpadding="0" cellspacing="0" border="0">
				<tbody>
					<%@page import="java.sql.*"%>
					<%@page import="Project.ConnectionProvider"%>
					<%
						try {
						con = ConnectionProvider.getCon();
						st = con.createStatement();
						rs = st.executeQuery("select * from result WHERE`I_ID`='" + I_ID + "'");
						while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=rs.getString(7)%></td>
						<td><%=rs.getString(8)%></td>
					</tr>
				</tbody>
				<%
					}
				} catch (Exception e) {
				}

				} catch (Exception e) {
				}
				%>
			</table>
		</div>
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
</html>


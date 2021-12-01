<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<jsp:include page="EditInstituteDetails.jsp"></jsp:include>
<script type="text/javascript" src="assets/js/MYJS.js"></script>
<jsp:include page="notification.jsp"></jsp:include>
<link rel="stylesheet" href="assets/css/MyCSS.css" />
<%
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

<%}
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
				onclick="openCity(event,'Add_Institute')">Add New Institute</button>
			<button class="w3-bar-item w3-button tablink"
				onclick="openCity(event,'Show_Institute')">Show Registered
				Institute</button>
			<a href="index.html" class="w3-bar-item w3-button tablink">Logout</a>
		</div>
		<div id="Add_Institute" class="w3-container w3-border city">
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
			<main class="my-form">
				<div class="cotainer">
					<div class="row justify-content-center">
						<div class="col-md-8">
							<div class="card">
								<!-- <div class="card-header">Add New Institute</div> -->
								<div class="card-body">
									<!-- <form action="import.jsp" method="post">
										<div class="form-group row offset-md-4">
											<Button type="submit" class="btn btn-primary text-md-right"
												onclick="openCity(event,'Add_Institute');">Import</Button>
											<input type="hidden" name="check" value="institutes">
											<div class="col-md-6">
												<input type="text" class="form-control"
													placeholder="C:/filepath/file.xlsx" name="path" required>
											</div>
										</div>
									</form>
									<hr>
									 -->
									<div class="card-header">Register Institute/Course</div>
									<form name="my-form" onsubmit="return validform()"
										action="InstituteRegister.jsp" method="post">
										<div class="form-group row">
											<label for="full_name"
												class="col-md-4 col-form-label text-md-right">Institute
												Name</label>
											<div class="col-md-6">
												<input type="text" class="form-control" name="name" required>
											</div>
										</div>

										<div class="form-group row">
											<label class="col-md-4 col-form-label text-md-right">Institute
												ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" name="I_ID" required>
											</div>
										</div>

										<div class="form-group row">
											<label class="col-md-4 col-form-label text-md-right">Password
											</label>
											<div class="col-md-6">
												<input type="Password" class="form-control" name="pwd"
													required>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-md-4 col-form-label text-md-right">Course
												Name : </label>
											<div class="col-md-6">
												<input type="text" class="form-control" name="Cname"
													required>
											</div>
										</div>
										<div class="form-group row">
											<label for="email_address"
												class="col-md-4 col-form-label text-md-right" required>Semister</label>
											<div class="col-md-6">
												<select name='sem' class="form-control">
													<option value="Sem-I">Sem-I</option>
													<option value="Sem-II">Sem-II</option>
													<option value="Sem-III">Sem-III</option>
													<option value="Sem-IV">Sem-IV</option>
													<option value="Sem-V">Sem-V</option>
													<option value="Sem-VI">Sem-VI</option>
													<option value="Sem-VII">Sem-VII</option>
													<option value="Sem-VIII">Sem-VIII</option>
												</select>
											</div>
										</div>
										<div id="mf" name="mf1">
											<div class="form-group row">
												<label for="user_name"
													class="col-md-4 col-form-label text-md-right">Subject
													1</label>
												<div class="col-md-3">
													<input type="text" class="form-control" name="sub1"
														placeholder="Subject Name">
												</div>
												<div class="col-md-3">
													<input type="text" class="form-control" name="tm1"
														placeholder="Total marks">
												</div>
											</div>
											<div class="form-group row">
												<label for="user_name"
													class="col-md-4 col-form-label text-md-right">Subject
													2</label>
												<div class="col-md-3">
													<input type="text" class="form-control" name="sub2"
														placeholder="Subject Name">
												</div>
												<div class="col-md-3">
													<input type="text" class="form-control" name="tm2"
														placeholder="Total marks">
												</div>
											</div>

											<div class="form-group row">
												<label for="user_name"
													class="col-md-4 col-form-label text-md-right">Subject
													3</label>
												<div class="col-md-3">
													<input type="text" class="form-control" name="sub3"
														placeholder="Subject Name">
												</div>
												<div class="col-md-3">
													<input type="text" class="form-control" name="tm3"
														placeholder="Total marks">
												</div>
											</div>
											<div class="form-group row">
												<label for="user_name"
													class="col-md-4 col-form-label text-md-right">Subject
													4</label>
												<div class="col-md-3">
													<input type="text" id="last" class="form-control"
														name="sub4" placeholder="Subject Name">
												</div>
												<div class="col-md-3">
													<input type="text" id="tmlast" class="form-control"
														name="tm4" placeholder="Total marks">
												</div>
											</div>
										</div>
										<div class="col-md-6 offset-md-4">
											<input type="button" class="btn btn-primary" value="add"
												id="adb" onclick="addfield()">
											<button type="submit" class="btn btn-primary">Save</button>

										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
<div id="Show_Institute" class="w3-container w3-border city"
	style="display: none">
	<form action="export.jsp" method="post">
		<br>
		<div class="form-group row offset-md-6">
			<Button type="submit" class="btn btn-primary text-md-right"
				onclick="openCity(event,'Show_Institute')">Export XLSX File</Button>
			<input type="hidden" name="check" value="institutes">

			<div class="col-md-6">
				<input type="hidden" class="form-control"
					value="<%=System.getProperty("user.home") + "\\downloads\\Institute_List.xlsx"%>"
					placeholder="C:/filepath/file.xlsx" name="path" required>
			</div>
		</div>
	</form>
	<div>
		<table cellpadding="0" cellspacing="0" border="0">
			<thead class="tbl-header">
				<tr>
					<th>Name</th>
					<th>ID</th>
					<th>Pasword</th>
					<th>Course Name</th>
					<th>Semister</th>
					<th>sub1</th>
					<th>sub2</th>
					<th>sub3</th>
					<th>sub4</th>
					<th>sub5</th>
					<th>sub6</th>
					<th>sub7</th>
					<th>Update Details</th>
				</tr>
			</thead>
			<tbody>
				<%@page import="java.sql.*"%>
				<%@page import="Project.ConnectionProvider"%>
				<%
					try {
					Connection con = ConnectionProvider.getCon();
					if (con == null) {
				%>
				<h2 id="ErrorTag" class="Error"></h2>
				<script>Error("Please Check your Database Connection.");</script>
				<%
					}

				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from Institute WHERE 1");
				Statement st1 = con.createStatement();

				while (rs.next()) {
					ResultSet rs1 = st1.executeQuery("select * from total_marks WHERE `I_ID`='"+rs.getString(2)+"' AND `Semister`='"+rs.getString(12)+"'");
					int[] tm = new int[8];
					if (rs1.next()) {
						for (int i = 0; i < 8; i++) {
					tm[i] = rs1.getInt(i + 1);

						}
					}
				%>
				<tr>
					<td><%=rs.getString(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(11)%></td>
					<td><%=rs.getString(12)%></td>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getString(5)%></td>
					<td><%=rs.getString(6)%></td>
					<td><%=rs.getString(7)%></td>
					<td><%=rs.getString(8)%></td>
					<td><%=rs.getString(9)%></td>
					<td><%=rs.getString(10)%></td>
					<td><button class="btn"
							onclick="OpenEditor('<%=rs.getString(1)%>','<%=rs.getString(2)%>','<%=rs.getString(3)%>','<%=rs.getString(4)%>','<%=rs.getString(5)%>','<%=rs.getString(6)%>','<%=rs.getString(7)%>','<%=rs.getString(8)%>','<%=rs.getString(9)%>','<%=rs.getString(10)%>',<%=tm[0]%>,<%=tm[1]%>,<%=tm[2]%>,<%=tm[3]%>,<%=tm[4]%>,<%=tm[5]%>,<%=tm[6]%>,'<%=rs.getString(11)%>','<%=rs.getString(12)%>')">Update</button></td>

				</tr>
			</tbody>
			<%
				}
			rs.close();
			} catch (Exception e) {
				out.print(e);
			}
			%>
		</table>
	</div>
	</section>
</div>
<script type="text/javascript">

function addfield(){
	
	var pbt = document.getElementById("adb");
	var last=document.getElementById("last");
	var tmlast=document.getElementById("tmlast");
	var n=parseInt(last.name.charAt(3));
	if((n>0 && n<7)){
		n++;
		var div1 = document.createElement("div");
		var div2 = document.createElement("div");
		var div3 = document.createElement("div");
		var lb = document.createElement("label");
		var f = document.getElementById("mf");
		//alert(f);
		 var sub = document.createElement("input");
		 var tm = document.createElement("input");
		   last.setAttribute("id", n-1);
		   tmlast.setAttribute("id", n-1);
		   
		   sub.setAttribute("type", "text");
		   sub.setAttribute("name", "sub"+n);
		   sub.setAttribute("id", "last");
		   sub.setAttribute("placeholder", "Subject Name");
		   
		   tm.setAttribute("placeholder", "Total Marks");
		   tm.setAttribute("type", "text");
		  tm.setAttribute("name", "tm"+n);
		   tm.setAttribute("id", "tmlast");
		   tm.setAttribute("class", "form-control");
		   
		  div2.setAttribute("class", "form-group row");
		  div3.setAttribute("class", "col-md-3");
			div1.setAttribute("class", " col-md-3");
			lb.setAttribute("class", "col-md-4 col-form-label text-md-right");
			lb.setAttribute("for", "user-name");
			sub.setAttribute("class", "form-control");
			lb.innerHTML="Subject "+n;
			
		div1.appendChild(sub);
		div3.appendChild(tm);
		
		div2.appendChild(lb);
		div2.appendChild(div1);
		div2.appendChild(div3);
		
		f.appendChild(div2);
		//alert("alrt");
	}else 
		alert("Limit Exceeds");
	}
</script>
</html>
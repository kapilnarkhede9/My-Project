<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="assets/js/MYJS.js"></script>

<link rel="stylesheet" href="assets/css/MyCSS.css" />
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
			<a href="AdminLogin.jsp" class="w3-bar-item w3-button tablink">Logout</a>
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
						<div class="card-header">Add New Students</div>
						<div class="card-body"><form action="import.jsp" method="post">
								<div class="form-group row offset-md-4">
									<Button type="submit" class="btn btn-primary text-md-right" onclick="openCity(event,'Add_Institute');">Import</Button>
										<input type="hidden" name="check" value="institutes">
									<div class="col-md-6">
										<input type="text" class="form-control" placeholder="C:/filepath/file.xlsx" name="path" required>
									</div>
								</div></form><br>
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
									<label for="email_address"
										class="col-md-4 col-form-label text-md-right">Institute
										ID</label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="I_ID" required>
									</div>
								</div>

								<div class="form-group row">
									<label for="user_name"
										class="col-md-4 col-form-label text-md-right">Password
									</label>
									<div class="col-md-6">
										<input type="Password" class="form-control" name="pwd" required>
									</div>
								</div><div id=mf>
								<div class="form-group row">
									<label for="user_name"
										class="col-md-4 col-form-label text-md-right">Subject 1</label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="sub1">
									</div>
								</div>
								<div class="form-group row">
									<label for="user_name"
										class="col-md-4 col-form-label text-md-right">Subject 2</label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="sub2">
									</div>
								</div>
								
								<div class="form-group row">
									<label for="user_name"
										class="col-md-4 col-form-label text-md-right">Subject 3</label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="sub3">
									</div>
								</div>
								<div class="form-group row" >
									<label for="user_name"
										class="col-md-4 col-form-label text-md-right">Subject 4</label>
									<div id="d4" class="col-md-6">
										<input type="text" class="form-control" id="last" name="sub4">
										
									</div>
								</div></div>
								<div class="col-md-6 offset-md-4">
								<input type="button" class="btn btn-primary" value="add" id="adb" onclick="addfield()">
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
	style="display: none"><form action="export.jsp" method="post"><br>
								<div class="form-group row offset-md-4">
									<Button type="submit" class="btn btn-primary text-md-right" onclick="openCity(event,'Show_Institute')">Export</Button>
										<input type="hidden" name="check" value="institutes">
										
									<div class="col-md-6">
										<input type="text" class="form-control" placeholder="C:/filepath/file.xlsx" name="path" required>
									</div>
								</div></form>
		<div class="tbl-header">
			<table cellpadding="0" cellspacing="0" border="0">
				<thead>
					<tr>
						<th>Name</th>
						<th>ID</th>
						<th>pwd</th>
						<th>sub1</th>
						<th>sub2</th>
						<th>sub3</th>
						<th>sub4</th>
						<th>sub5</th>
						<th>sub6</th>
						<th>sub7</th>
					</tr>
				</thead>
			</table>
		</div>
		<div class="tbl-content">
			<table cellpadding="0" cellspacing="0" border="0">
				<tbody>
		<%@page import="java.sql.*"%>
		<%@page import="Project.ConnectionProvider"%>
		<%	try {
			Connection con = ConnectionProvider.getCon();
			if(con==null)
			{
			%>
			<h2 id="ErrorTag" class="Error"></h2>
				<script>Error("Please Check your Database Connection.");</script>			
			<% 
			}
			Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from Institute WHERE 1");
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
						<td><%=rs.getString(9)%></td>
						<td><%=rs.getString(10)%></td>
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
<script type="text/javascript">

function addfield(){
	
	var pbt = document.getElementById("adb");
	var last=document.getElementById("last");
	var n=parseInt(last.name.charAt(3));
	if((n>0 && n<7)){
		n++;
		var div1 = document.createElement("div");
		var div2 = document.createElement("div");
		var lb = document.createElement("label");
		var f = document.getElementById("mf");
		 var sub = document.createElement("input");
		
		   last.setAttribute("id", n-1);
		 
		   sub.setAttribute("type", "text");
		   sub.setAttribute("name", "sub"+n);
		   sub.setAttribute("id", "last");
		   
		  div2.setAttribute("class", "form-group row");
			div1.setAttribute("class", " col-md-6");
			lb.setAttribute("class", "col-md-4 col-form-label text-md-right");
			lb.setAttribute("for", "user-name");
			sub.setAttribute("class", "form-control");
			lb.innerHTML="Subject "+n;
			//pbt.remove();
		//div1.appendChild(bt);
		div1.appendChild(sub);
		//div1.appendChild(bt);
		div2.appendChild(lb);
		div2.appendChild(div1);
		f.appendChild(div2);
	}else 
		alert("Limit Exceeds");
	}
</script>
</html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
	function addfields() {

		var pbt = document.getElementById("adb");
		var last = document.getElementById("elast");
		var tmlast = document.getElementById("etmlast");
		var n = parseInt(elast.name.charAt(4));
		if ((n > 0 && n < 7)) {
			n++;
			var div1 = document.createElement("div");
			var div2 = document.createElement("div");
			var div3 = document.createElement("div");
			var lb = document.createElement("label");
			var f = document.getElementById("nf");
			var sub = document.createElement("input");
			var tm = document.createElement("input");
			last.setAttribute("id", n - 1);
			tmlast.setAttribute("id", n - 1);

			sub.setAttribute("type", "text");
			sub.setAttribute("name", "esub" + n);
			sub.setAttribute("id", "elast");
			sub.setAttribute("placeholder", "Subject Name");

			tm.setAttribute("placeholder", "Total Marks");
			tm.setAttribute("type", "text");
			tm.setAttribute("name", "etm" + n);
			tm.setAttribute("id", "etmlast");
			tm.setAttribute("class", "form-control");

			div2.setAttribute("class", "form-group row");
			div3.setAttribute("class", "col-md-3");
			div1.setAttribute("class", " col-md-3");

			lb.setAttribute("name", "lb");
			lb.setAttribute("class", "col-md-4 col-form-label text-md-right");
			lb.setAttribute("for", "user-name");
			sub.setAttribute("class", "form-control");
			lb.innerHTML = "Subject " + n;

			div1.appendChild(sub);
			div3.appendChild(tm);

			div2.appendChild(lb);
			div2.appendChild(div1);
			div2.appendChild(div3);
			f.appendChild(div2);
		}
	}
	function OpenEditor(iname, id, pw, s1, s2, s3, s4, s5, s6, s7, tm1, tm2,
			tm3, tm4, tm5, tm6, tm7,Cname,sem) {
		//alert(s6!="null");

		document.getElementsByName("etm1")[0].value = tm1;
		document.getElementsByName("etm2")[0].value = tm2;
		document.getElementsByName("etm3")[0].value = tm3;
		document.getElementsByName("etm4")[0].value = tm4;

		var model = document.getElementById("mo3");
		model.style.display = 'inline-block';
		document.getElementsByName("ename")[0].value = iname;
		document.getElementsByName("I_ID")[0].value = id;
		document.getElementsByName("eCname")[0].value = Cname;
		document.getElementsByName("esem")[0].value = sem;
		document.getElementsByName("esem1")[0].value = sem;
		document.getElementsByName("ID")[0].value = id;
		document.getElementsByName("epwd")[0].value = pw;
		document.getElementsByName("esub1")[0].value = s1;
		document.getElementsByName("esub2")[0].value = s2;
		document.getElementsByName("esub3")[0].value = s3;
		document.getElementsByName("esub4")[0].value = s4;
		if (s5 != "null") {
			addfields();
			document.getElementsByName("esub5")[0].value = s5;

			document.getElementsByName("etm5")[0].value = tm5;
		}
		if (s6 != "null") {
			addfields();
			document.getElementsByName("esub6")[0].value = s6;
			document.getElementsByName("etm6")[0].value = tm6;
		}
		if (s7 != "null") {
			addfields();
			document.getElementsByName("esub7")[0].value = s7;
			document.getElementsByName("etm7")[0].value = tm7;
		}

	}

	function CloseEditor() {
		//alert(document.getElementById("sub"));
		var model = document.getElementById("mo3");
		model.style.display = 'none';
	}
</script>
<link rel="stylesheet" href="assets/css/m2.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
</head>
<body>
	<div class="student_D init" id="mo3" style="display: none">
		<div class="justify-content-center container init">
			<div class="card-header">
				<center>
					<h2>Edit Details</h2>
				</center>

			</div>
			<form name="my-form" onsubmit="return validform()"
				action="Serverlet1" method="post">
				<div class="form-group row">
					<label for="full_name"
						class="col-md-4 col-form-label text-md-right">Institute
						Name</label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="ename" required>
					</div>
				</div>

				<div class="form-group row">
					<label for="email_address"
						class="col-md-4 col-form-label text-md-right">Institute ID</label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="I_ID" disabled>
						<input type="hidden" name="ID" >
					</div>
				</div>

				<div class="form-group row">
					<label for="user_name"
						class="col-md-4 col-form-label text-md-right">Password </label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="epwd" required>
					</div>
				</div>
				<div class="form-group row">
											<label 
												class="col-md-4 col-form-label text-md-right">Course Name : </label>
											<div class="col-md-6">
												<input type="text" class="form-control" name="eCname" disabled>
											</div>
										</div>
										<div class="form-group row">
												<label for="email_address"
													class="col-md-4 col-form-label text-md-right" >Semister</label>
												<div class="col-md-6">
												<input type="hidden" name="esem" >
													<select name='esem1' class="form-control" disabled>
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
				<div >
					<div class="form-group row">
						<label for="user_name"
							class="col-md-4 col-form-label text-md-right">Subject 1</label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="esub1"
								placeholder="Subject Name"> 
						</div>
						<div class="col-md-3">
							<input type="text" class="form-control" name="etm1"
								placeholder="Total marks">
						</div>
					</div>
					<div class="form-group row">
						<label for="user_name"
							class="col-md-4 col-form-label text-md-right">Subject 2</label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="esub2"
								placeholder="Subject Name">
						</div>
						<div class="col-md-3">
							<input type="text" class="form-control" name="etm2"
								placeholder="Total marks">
						</div>
					</div>

					<div class="form-group row">
						<label for="user_name"
							class="col-md-4 col-form-label text-md-right">Subject 3</label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="esub3"
								placeholder="Subject Name">
						</div>
						<div class="col-md-3">
							<input type="text" class="form-control" name="etm3"
								placeholder="Total marks">
						</div>
					</div>
					<div class="form-group row">
						<label for="user_name"
							class="col-md-4 col-form-label text-md-right">Subject 4</label>
						<div class="col-md-3">
							<input type="text" id="elast" class="form-control" name="esub4"
								placeholder="Subject Name">
						</div>
						<div class="col-md-3">
							<input type="text" id="etmlast" class="form-control" name="etm4"
								placeholder="Total marks">
						</div>
					</div>
					<div id="nf"></div>
				</div>
				
				<input type="hidden" name="source" value="I_D">
				
				<div class="col-md-6 offset-md-4">
					<button type="submit" onclick="CloseEditor()"
						class="btn btn-primary">Save</button>
					<button type="button" onclick="CloseEditor()"
						class="btn btn-primary">close</button>
				</div>
			</form>

		</div>
	</div>
</body>
</html>
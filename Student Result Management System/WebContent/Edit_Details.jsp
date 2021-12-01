<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<script>
	function call(course,sem,rn,name,mname,gender) {
		//alert(gender);
		var model = document.getElementById("mo1");
		document.getElementsByName("course")[0].value=course;
		document.getElementsByName("sem")[0].value=sem;
		document.getElementsByName("rollNo")[0].value=rn;
		document.getElementsByName("rn")[0].value=rn;
		document.getElementsByName("name")[0].value=name;
		document.getElementsByName("motherName")[0].value=mname;
		document.getElementsByName("gender")[0].value=gender;
		model.style.display = 'inline-block';
	}

	function abc() {
		//alert("close");
		var model = document.getElementById("mo1");
		model.style.display = 'none';

	}
</script>
<link rel="stylesheet" href="assets/css/m1.css" />
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
	<div class="student_D" id="mo1" style="display: none;">
		<div class="justify-content-center container active" id="mo1">
		<div class="card-header">
			<center>
				<h2>Edit Details</h2>
			</center>
		</div>
			<form name="my-form" onsubmit="return validform()"
				action="Serverlet1" method="post">
				<div class="form-group row">
					<label for="full_name"
						class="col-md-4 col-form-label text-md-right">Course Name</label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="course" required>
					</div>
				</div>

				<div class="form-group row">
					<label for="email_address"
						class="col-md-4 col-form-label text-md-right" required>Semister
						: </label>
					<div class="col-md-6">
						<select name='sem' class="form-control">
							<option value="Sem-I">Sem-I</option>
							<option value="Sem-II">Sem-II</option>
							<option value="Sem-III">Sem-III</option>
							<option value="Sem-IV">Sem-IV</option>
							<option value="Sem-V">Sem-V</option>
							<option value="Sem-VI">Sem-VI</option>
						</select>
					</div>
				</div>

				<div class="form-group row">
					<label for="user_name"
						class="col-md-4 col-form-label text-md-right"  rquired>Roll
						Number</label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="rollNo" disabled>
						<input type="hidden" name="rn"> 
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
						class="col-md-4 col-form-label text-md-right">Mother Name</label>
					<div class="col-md-6">
						<input type="text" class="form-control" name="motherName" required>
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
					<input type="hidden" name="source" value="S_D">
					<button type="submit" onclick="abc()" class="btn btn-primary">Save</button>
					<button type="button" onclick="abc()" class="btn btn-primary">close</button>
				</div>
		</div>
		</form>
	</div>
	</div>
</body>
</html>
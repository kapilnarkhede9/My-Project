<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%try{ %>
<script type="text/javascript">
	function breakResult() {
		var model = document.getElementById("mo2");
		model.style.display = 'none';
	}
	function updateResult(sub1,sub2,sub3,sub4,sub5,sub6,sub7,rn, s1, s2, s3, s4, s5, s6, s7) {
		//alert(sub1+sub7);
		//document.getElementById("rn").value = rn;
		//alert(rn+s1+s3+s7);
		document.getElementById("sb1").innerHTML = sub1;
		document.getElementsByName("sb2")[0].innerHTML = sub2
		document.getElementsByName("sb3")[0].innerHTML = sub3;
		document.getElementsByName("sb4")[0].innerHTML = sub4;;
		document.getElementsByName("sb5")[0].innerHTML = sub5;
		document.getElementsByName("sb6")[0].innerHTML = sub6;
		document.getElementsByName("sb7")[0].innerHTML = sub7;
		
		document.getElementsByName("rn")[1].value = rn;
		document.getElementById("rn1").value = rn;
		document.getElementsByName("s1")[0].value = s1;
		document.getElementsByName("s2")[0].value = s2;
		document.getElementsByName("s3")[0].value = s3;
		document.getElementsByName("s4")[0].value = s4;
		document.getElementsByName("s5")[0].value = s5;
		document.getElementsByName("s6")[0].value = s6;
		document.getElementsByName("s7")[0].value = s7;
		var model = document.getElementById("mo2");
		model.style.display = 'Inline-block';

	}
</script>
<link rel="stylesheet" href="assets/css/m1.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
</head>
<body>
	<div class="student_R" id="mo2" style="display: none;">
		<div class="justify-content-center container" id="mo1">
			<div class="card-header">
				<center>
					<h2>Edit Results</h2>
				</center>
			</div>
			<%
				Connection con = ConnectionProvider.getCon();

			Statement st = con.createStatement();
			Statement st1 = con.createStatement();
			String I_ID = "",R_ID="kk";
			ResultSet rs = st.executeQuery("select * from Temp WHERE`R-ID`=''");
			if (rs.next()) {
				I_ID = rs.getString("I_ID");
			} 
			
			rs = st.executeQuery("SELECT * FROM `Temp` WHERE `I_ID`=''");
			if(rs.next()){
				R_ID=rs.getString(2);
			}
			else{
			R_ID="MCA Sem-II";
			}
			//out.print("SELECT * FROM `institute` WHERE `ID`='"+I_ID+"' AND `R_ID`='"+R_ID+"'");
			rs = st.executeQuery("SELECT * FROM `institute` WHERE `ID`='"+I_ID+"'");
			if (rs.next()) 
			{
			%>
			<div class="card-body">
				<form name="my-form" onsubmit="return validform()"
					action="Serverlet1" method="post">
					<div class="form-group row">
						<label for="full_name"
							class="col-md-4 col-form-label text-md-right" >Roll Number</label>
						<div class="col-md-6">
							<input type="text" class="form-control" id="rn1" disabled>
							<input type="hidden" class="form-control" id="rn" name="rn" required>
						</div>
					</div>

					<div class="form-group row">
						<label for="email_address"
							class="col-md-4 col-form-label text-md-right" id="sb1"></label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="s1" required>
						</div>
					</div>

					<div class="form-group row">
						<label for="user_name"
							class="col-md-4 col-form-label text-md-right" name="sb2"></label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="s2" required>
						</div>
					</div>

					<div class="form-group row">
						<label for="phone_number"
							class="col-md-4 col-form-label text-md-right" name="sb3"></label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="s3" required>
						</div>
					</div>

					<div class="form-group row">
						<label for="present_address"
							class="col-md-4 col-form-label text-md-right" name="sb4"><%=rs.getString(7)%></label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="s4" required>
						</div>
					</div>

					<div class="form-group row">
						<label for="permanent_address"
							class="col-md-4 col-form-label text-md-right" name="sb5"><%=rs.getString(8)%></label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="s5">
						</div>
					</div>

					<div class="form-group row">
						<label for="permanent_address"
							class="col-md-4 col-form-label text-md-right" name="sb6"><%=rs.getString(9)%></label>
						<div class="col-md-6">
							<input type="text" class="form-control" name="s6">
						</div>
					</div>

					<div class="form-group row">
						<label for="permanent_address"
							class="col-md-4 col-form-label text-md-right" name="sb7"><%=rs.getString(10)%></label>
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
					<input type="hidden" name="source" value="S_R">
						<button type="submit" onclick="breakResult()"
							class="btn btn-primary">Save</button>
						<button type="button" onclick="breakResult()"
							class="btn btn-primary">close</button>
					</div>

				</form>
			</div>
		</div>
	</div>
</body><%}catch(Exception e){
	out.print(e);	
}%>
}
</html>
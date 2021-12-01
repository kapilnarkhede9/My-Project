<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="assets/css/m2.css" />
<script type="text/javascript">

function error(ms,str){
	document.getElementById("str").innerHTML=str;
	document.getElementById("MyDiv").classList.add('error');
	document.getElementById("MyDiv").style.display='inline-block';
	setTimeout(() => {
		document.getElementById("MyDiv").style.display='none';	
		document.getElementById("MyDiv").classList.remove('error');
	}, (ms*1000));
	
}
function sucssesful(ms,str){
	document.getElementById("str").innerHTML=str;
	document.getElementById("MyDiv").classList.add('success');
	document.getElementById("MyDiv").style.display='inline-block';
	setTimeout(() => {
		document.getElementById("MyDiv").style.display='none';	
		document.getElementById("MyDiv").classList.remove('success');
	}, (ms*1000));
	
}
</script>
<body>
<div class="notify_padding notify" id="MyDiv" style="display:none;">
<p id="str"></p>
</div>
</body>
</html>
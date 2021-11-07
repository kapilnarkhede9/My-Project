<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">   
  <link rel="stylesheet" type="text/css" href="style.css">  
   <link rel="stylesheet" href="assets/css/MyCSS.css" />
  <style>
  .login-box{
    height: 380px;
</style>
</head>
<%@page import="java.sql.*" %>
      <%@page import="Project.ConnectionProvider" %>
<%
Connection con=ConnectionProvider.getCon();
if(con==null){
	%>
	<h2 class="Error">Database not found ! <br>Please check your Database connection.</h2>
	<%
}
%>
<body>

    <form method="post" action="InstituteLoginAction.jsp">
    <div class="login-box">
    <img src="user.png" class="avatar">
        <h1>Institute Login</h1>
            <p>User ID</p>
            <input type="text" name="username" placeholder="Enter Username" required="required">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password" required="required">
            <input type="submit" name="submit" value="Login">
            </form>
             <center><h1><a href="index.html">Back</a></h1></center>
        </div>   
    </body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Sign-in Page</title>
</head>
<body>

<div align="center"> 

	<%
		String code = request.getParameter("code");
		String msg = "";
		String color = "";
		if(code != null) {
			switch(code) {
			case "-1" :
				msg = "Invalid User name or password";
				color = "red";
				break;
			case "-2" :
				msg = "Your Session is expire.. Please login in again";
				color = "red";
				break;
			case "1" :
				msg = "Your are logged out successfully...";
				color = "green";
				break;
			}
		}
	
	%>
	<h2 style="color: <%=color%>;"><%=msg%></h2>

	<form action="auth-user">
		Enter User Name <input type="text" name="user">
		<br><br/>
		Enter password <input type="password" name="pass">
		<br><br/>
		<button type="submit">Login</button>
	</form>

</div>

</body>
</html>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form action="login.jsp" method=post>
		<input type="text" name="user" id="user" placeholder="User" /> <br>
		<br> <input type="text" name="dni" id="dni" placeholder="DNI" />
		<br> <br> <input type="submit" value="Aceptar" name="login"
			id="login" />
	</form>

	<%
		if (request.getParameter("error") != null) {
	%>
			<br>
			<div><p style="background-color:#ff9999; display:inline">Usuario o DNI incorrectos.</p></div>
	
	<%
		}
	%>
</body>
</html>
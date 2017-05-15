<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Socios</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="eus.liburutegi.modelo.*"%>
	<%@ page import="java.util.*"%>
	<%
		SocioModelo socioModelo = new SocioModelo();
		ArrayList<Socio> socios = socioModelo.select();
	%>
	<div class="table-responsive">
		<table class="table table-bordered table-striped">
			<tr align="center">
				<th>NOMBRE</th>
				<th>APELLIDO</th>
				<th>DIRECCION</th>
				<th>POBLACION</th>
				<th>PROVINCIA</th>
				<th>DNI</th>
				<th></th>
			</tr>
			<%
				for (Socio socio : socios) {
			%>

			<tr>
				<td><%=socio.getNombre()%></td>
				<td><%=socio.getApellido()%></td>
				<td><%=socio.getDireccion()%></td>
				<td><%=socio.getPoblacion()%></td>
				<td><%=socio.getProvincia()%></td>
				<td><%=socio.getDni()%></td>
				<td> <a href="updateForm.jsp?id=<%=socio.getId()%>">Modificar</a></td>
				<td> <a href="deleteSocio.jsp?id=<%=socio.getId()%>">Eliminar</a></td>
			
			</tr>
			
			<%
				} //cierre for
			%>
		</table>
	</div>

</body>
</html>
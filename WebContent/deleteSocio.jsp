<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eliminar socio</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="eus.liburutegi.modelo.*"%>
	<%@ page import="java.util.*"%>
<%
int id = Integer.parseInt(request.getParameter("id"));
SocioModelo socioModelo = new SocioModelo();
socioModelo.delete(id);
%>

<h4>SOCIO ELIMINADO CORRECTAMENTE</h4>
<br>
<a href="verSocios.jsp">Volver</a>
</body>
</html>
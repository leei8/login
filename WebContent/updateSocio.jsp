<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modificar Socio</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="eus.liburutegi.modelo.*" %>
<%
//Parametroak jaso
int id = Integer.parseInt(request.getParameter("id"));
String nombre = request.getParameter("nombre");
String apellido = request.getParameter("apellido");
String direccion = request.getParameter("direccion");
String poblacion = request.getParameter("poblacion");
String provincia = request.getParameter("provincia");
String dni = request.getParameter("dni");


//Objetua sortu

Socio socio = new Socio();

socio.setId(id);
socio.setNombre(nombre);
socio.setApellido(apellido);
socio.setDireccion(direccion);
socio.setPoblacion(poblacion);
socio.setProvincia(provincia);
socio.setDni(dni);

//Datu basean egin beharrekoak
SocioModelo socioModelo = new SocioModelo();
socioModelo.update(socio);

%>

<h4>SOCIO MODIFICADO CORRECTAMENTE</h4>
<br>
<a href="verSocios.jsp">Volver</a>

</body>
</html>
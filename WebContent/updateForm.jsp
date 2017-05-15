<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modificar socio</title>
</head>
<body>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="eus.liburutegi.modelo.*"%>
	<%@ page import="java.util.*"%>
<%
int id = Integer.parseInt(request.getParameter("id"));
SocioModelo socioModelo = new SocioModelo();
Socio socio = socioModelo.select(id);
%>
	<form action="updateSocio.jsp" method="get">
				<input type="hidden" value="<%=socio.getId()%>" name="id" id="id"/>
		Nombre: <input type="text"  value="<%=socio.getNombre()%>" name="nombre" id="nombre" /> <br>
		Apellido: <input type="text" value="<%=socio.getApellido()%>" name="apellido" id="apellido" /> <br>
		Direccion: <input type="text"  value="<%=socio.getDireccion()%>" name="direccion" id="direccion" /> <br>
		Poblacion: <input type="text"  value="<%=socio.getPoblacion()%>" name="poblacion" id="poblacion" /> <br>
				
		Provincia: <select  name="provincia" id="provincia">
					<option value="ARABA" <%=socio.getProvincia().equals("ARABA") ? "selected":"" %>>ARABA</option>
					<option value="BIZKAIA" <%=socio.getProvincia().equals("BIZKAIA") ? "selected":""%> >BIZKAIA</option>
					<option value="GIPUZKOA" <%=socio.getProvincia().equals("GIPUZKOA") ? "selected":"" %>>GIPUZKOA</option>
				   </select><br> 
		DNI: <input type="text" value=<%=socio.getDni()%> name="dni" id="dni" /> <br> 
		<input type="submit" value="Modificar" name="modificar" id="modificar" />
	</form>
<br><br>	

<a href="verSocios.jsp">Volver</a>
</body>
</html>
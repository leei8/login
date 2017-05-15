<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<%@ page import="eus.liburutegi.modelo.*"%>
<%@ page import="java.util.*"%>
<%
	SocioModelo socioModelo = new SocioModelo();
	ArrayList<Socio> socios = socioModelo.select();

	String user_login = request.getParameter("user");
	String dni_login = request.getParameter("dni");

	int sesion_luzera = session.getValueNames().length;
	Socio socio = socioModelo.selectSocioLogin(user_login, dni_login);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

	<%
		if (sesion_luzera == 0) {

			if (socio != null) {

				session.setAttribute("Socio", socio);
				Socio socio_sesion = (Socio) session.getAttribute("Socio");
				out.println("BIENVENIDO " + socio_sesion.getNombre() + " " + socio_sesion.getApellido());
			}
	%>
	<p>
		<a href="loginForm.jsp">Logout</a>
	</p>
	<%
		
		} else {

			response.sendRedirect("loginForm.jsp?error=datosmal");
		}
	%>


</body>
</html>
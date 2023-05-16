<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/edad.css">
<title>Insert title here</title>
</head>
<body>
	<!-- creará
las variables de sesión y se evaluará 
en qué etapa del ciclo de vida se encuentra una persona.  -->
	<div class="etapa">
		<div class="hij">

			<h1>En qué etapa estás?</h1>
			<hr>
			<br>

			<%
		int adivinar=0;
		if (request.getParameter("edad") != null)
		{
		adivinar = Integer.parseInt(request.getParameter("edad"));
		HttpSession sesion=request.getSession();
		sesion.setAttribute("edad",adivinar);
		int edad=(int)sesion.getAttribute("edad");
		
		if (edad >=15 && edad <=24 )
		{
		sesion.setAttribute("etapa","juventud");
		}
		else
		sesion.setAttribute("etapa","aún no existe la categoría");
		}	
	%>
			<%
	HttpSession sesion=request.getSession();
	out.println("Tu edad es "+sesion.getAttribute("edad"));
	out.println(" estás en la etapa de "+ sesion.getAttribute("etapa"));
	%>
			<br>
			<br>
			<img alt="" src="img/extra.jpg">
			<br>
			<br>
			<a href="edad.jsp">Regresar</a>
		</div>

	</div>

</body>
</html>
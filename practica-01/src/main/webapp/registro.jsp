<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"
	import=" com.productos.datos.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/estilo.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
</head>
<body>
	<DIv class="container_">
		<header class="header_">
			<img class="img-logo" src="img/logo-obscuro.png" alt="logo">

			<ul class="navigation">
				<li><a href="index.jsp">Inicio</a></li>
				<li><a href="categoria.jsp">Categorias</a></li>
				<li><a href="catalogo.jsp">Consulta</a></li>
				<li><a href="acerca.jsp">Acerca de</a></li>
				<li><a href="contacto.jsp">Contacto</a></li>
			</ul>


		</header>
	</DIv>
	<div id="re">
	<img alt="" src="img/bien.png">
	</div>
	


	<br>
	<%
		    	out.print("    " + "BIENVENIDO " + request.getParameter("nombre") + "</br>");
				out.print("Tus datos son los siguientes" + "</br>");
		    	out.print("    " + "Su cedula es" + request.getParameter("cedula") + "</br>");
		    	out.print("    " + "Usted se registro con el gmail: " + request.getParameter("email") + "</br>");
		    	String estadoCivil = request.getParameter("cmbEstadoCivil");
		    	String residencia = request.getParameter("residencia");
		    	out.print("    " + "Su residencia: " + request.getParameter("rdResidencia") + "</br>");
		    	String foto = request.getParameter("foto");
		    	String color = request.getParameter("color");
		    	%>

	<br> Su estado civil es
	<%= estadoCivil %>
	<br> El archivo seleccionado para foto del perfil es
	<ul><%= foto %></ul>
	El año y mes de nacimiento son:
	<strong> <% out.print(request.getParameter("fecha")); %>
	</strong>
	<br>
	<font> color=<%= color %> Este es su color favorito
	</font>



	<footer class="footer">

		<div class="conte">
			<div class="item">
				<div class="cont">
					<br>
					<p>Creado por: Sara Quiguango</p>
					<p>&COPY 2023 GAMA CARS | Todos los derechos reservados</p>
				</div>
			</div>
			<div class="item">
				<div class="cont">
					<a href="" class="btn facebook"> <i class="fa fa-facebook"></i>
					</a> <a href="" class="btn skype"> <i class="fa fa-skype"></i>
					</a> <a href="" class="btn google"> <i class="fa fa-google"></i>
					</a>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>
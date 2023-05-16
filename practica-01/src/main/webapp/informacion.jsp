<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gama Cars</title>
 <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/estilo.css">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
</head>
<body>
	<!--MENU-->
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
	<div>

	<%
	HttpSession sesion=request.getSession();
	out.println("IdSesion: "+sesion.getId());
	out.println("Creación: "+sesion.getCreationTime());
	Date momento=new Date(sesion.getCreationTime());
	out.println("<BR>Creación: "+momento);
	//Para mostrar la fecha del último acceso del usuario, se usa el método getLastAccessedTime().
	Date acceso=new Date(sesion.getLastAccessedTime());
	out.println("Último acceso:" +"acceso+"+"<br>");
	
	//Para determinar el tiempo de duración de la sesión actual, se pueda usar el siguiente código
	long longDuracion=sesion.getLastAccessedTime();
	Date duracion=new Date(longDuracion);
	out.println("Duracion:"+duracion.getMinutes()+"min."+duracion.getSeconds()+"seg");
	//Verificar si la sesion es nueva o fue creada con anterioridad
	out.println("nueva: "+sesion.isNew());
%>
	</div>
	<br>
	<h3>Enlace de intéres</h3>
	<br>
	<ul>
		<li><a href="edad.jsp">Adivinar edad</a></li>
	</ul>
	
	<br>
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
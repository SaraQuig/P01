<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"
	import=" com.productos.datos.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Catálogo</title>
<link rel="stylesheet" href="css/estilo.css">

<link rel="stylesheet" href="css/resultado.css">
<link rel="stylesheet" href="css/catalogo.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
</head>
<body>
	<div class="container">
		<DIv class="container_">
			<header class="header_">
				<img class="img-logo" src="img/logo-obscuro.png" alt="logo">

				<ul class="navigation">
					<li><a href="index.jsp">Inicio</a></li>
					<li><a href="categoria.jsp">Categorias</a></li>
					<li><a href="sesion.jsp">Sesión</a></li>
					<li><a href="acerca.jsp">Acerca de</a></li>
					<li><a href="contacto.jsp">Contacto</a></li>
				</ul>


			</header>
		</DIv>
		<div class="pagina-web" id="cat">
			<br> <br>
			<h1 class="Prod">Productos</h1>
			<br>
			<%
			Producto p = new Producto();
			out.println(p.consultarTodo());
			%>

			<br> <br>
			<div class="padre">

				<div class="gallery">
					<img src="img/catalogo/c1.jpg" alt="Cinque Terre" width="600"
						height="400">

				</div>

				<div class="gallery">
					<img src="img/catalogo/c2.jpg" alt="Forest" width="600"
						height="400">

				</div>

				<div class="gallery">
					<img src="img/catalogo/c3.jpg" alt="Mountains" width="600"
						height="400">

				</div>
				<div class="gallery">
					<img src="img/catalogo/c4.jpg" alt="Mountains" width="600"
						height="400">

				</div>
				<div class="gallery">
					<img src="img/catalogo/c5.jpg" alt="Mountains" width="600"
						height="230">

				</div>
				<div class="gallery">
					<img src="img/catalogo/c6.jpg" alt="Mountains" width="600"
						height="400">

				</div>
				<div class="gallery">
					<img src="img/catalogo/c7.jpg" alt="Mountains" width="600"
						height="400">

				</div>
				<div class="gallery">
					<img src="img/catalogo/c8.jpg" alt="Northern Lights" width="600"
						height="400">

				</div>
				<div class="gallery">
					<img src="img/catalogo/c9.jpg" alt="Mountains" width="600"
						height="400">

				</div>
			</div>

		</div>
	</div>

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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>
</html>
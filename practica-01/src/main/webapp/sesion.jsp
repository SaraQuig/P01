<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"
	import=" com.productos.datos.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Inicie sesión</title>
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/estilo.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
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
	<!--DISEÑANDO INICIO DE SESION-->

	<div class="padre">

		<div id="hijo-1-">
			<img src="img/catalogo/c3.jpg" alt="" width="100%">
		</div>
		<div id="hijo-2-">


			<!--Titulo-->
			<h3>Inicie sesión</h3>
			<br>

			<div class="buttons">

				<button class="google-btn">
					<!--Imagen del logo de google-->
					<picture> <img src="img/google.png" alt="Logo de google">
					</picture>
					<span>Registrarse con google</span>
				</button>

				<button class="twitter-btn">
					<picture>T</picture>
				</button>

			</div>
			<br>
			<div class="separator">
				<hr>
				<span>O...</span>
				<hr>
			</div>
			<!--Aqui empieza el formulario-->
			<form action="verificarLogin.jsp" method="POST">

				<div class="section-inputs">
					<!--El FOR hace referencia al id del input-->
					<!--Esta parte correspone al name-->
					<label for="name"> <span>Name</span> <input type="text"
						name="usuario" id="usuario">
					</label>
				</div>

				<!--Esta parte correspone al password-->
				<label for="password"> <span>password</span> <input
					id="clave" type="password" name="clave" placeholder="6+caracteres">
				</label>
				<!--Esta parte correspone al checkbox de aceptar terminos-->
				<label for="checkbox" class="checkbox-label"> <input
					type="checkbox" name="checkbox" id="checkbox"> <span>Acepto
						las condiciones y el aviso legal</span>
				</label>
				<!--Este es el boton de crear cuenta-->
				<button type="submit" class="submit-btn">Entrar</button>
			</form>
			<br> <a href="registrarse.jsp">Crear cuenta</a> <a href="">Cambiar
				clave</a>
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
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"
	import=" com.productos.datos.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrarse</title>
<script>
function obtenerProvincia(event) {
	event.preventDefault(); // Evitar el envío del formulario

	var cedula = document.getElementById("cedula").value;
	var boton = document.getElementById("boton");

	// Desactivar el botón después de hacer clic
	boton.disabled = true;

	// Verificar si la cédula es válida
	if (validarCedula(cedula)) {
		// Obtener el código de provincia
		var codigoProvincia = cedula.substr(0, 2);
		var provincia = "";

		switch (codigoProvincia) {
			case "01":
				provincia = "Azuay";
				break;
			case "02":
				provincia = "Bolívar";
				break;
			// Agregar casos para las demás provincias de Ecuador
			default:
				provincia = "Provincia no encontrada";
				break;
		}

		// Mostrar la provincia en la página
		document.getElementById("provincia").textContent = "La provincia de obtención de la cédula es: " + provincia;

		// Habilitar el botón después de 3 segundos
		setTimeout(function() {
			boton.disabled = false;
		}, 3000);
	} else {
		alert("Cédula inválida");
		// Habilitar el botón inmediatamente en caso de cédula inválida
		boton.disabled = false;
	}
}

function validarCedula(cedula) {
	// Aquí puedes agregar la lógica para validar la cédula
	// Retorna true si la cédula es válida, de lo contrario retorna false
	return true;
}


function calcularEdad(event) {
	event.preventDefault();
	var fechaNacimiento = new Date(document.getElementById("fecha_nacimiento").value);
	var fechaActual = new Date();
	var edad = fechaActual.getFullYear() - fechaNacimiento.getFullYear();
	if (fechaNacimiento.getMonth() > fechaActual.getMonth() ||
		(fechaNacimiento.getMonth() == fechaActual.getMonth() && fechaNacimiento.getDate() > fechaActual.getDate())) {
		edad--;
	}
	document.getElementById("resultado").textContent = "Su edad es " + edad + " años.";
}
	</script>
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
	<div class="padre-conte">
		<div class="conten">
			<!--Titulo-->
			<br>
			<h2>Registrate en Gama Cars</h2>
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
			<form action="registro.jsp" method="POST" >

				<div class="section-inputs">
					<!--El FOR hace referencia al id del input-->
					<!--Esta parte correspone al name-->
					<label for="nombre"> <span>Nombre</span> <input type="text"
						name="nombre" required="required">
					</label>
					<!--Esta parte correspone al username-->
					<label for="cedula"> <span>Cédula</span> <input type="text"
						id="cedula" name="cedula" required="required">
						<button class="submit-btn" type="submit" id="boton"
							onclick="obtenerProvincia(event)">Obtener provincia</button>

					</label>

				</div>

				<!--Esta parte correspone al email-->
				<label for="email"> <span>Email</span> <input id="email"
					type="email" name="email">
				</label>
				<!--Esta parte correspone al password-->
				<label for="password"> <span>Password</span> <input
					id="password" type="password" name="password"
					placeholder="6+caracteres">
				</label>
				<!--Esta corresponde al cmb estado civil-->
				<label for="estadoCivil"> <span>Estado civil</span> <select
					name="cmbEstadoCivil">
						<option value="Soltero">Soltero</option>
						<option value="Casado">Casado</option>
						<option value="Divorciado">Divorciado</option>
						<option value="Viudo">Viudo</option>
				</select>
				</label>
				<!--Esta parte corresponde al lugar de residencia-->
				<label for="residencia"> <span>Lugar de residencia</span> <input
					type="radio" name="rdResidencia" value="Sur" />Sur <input
					type="radio" name="rdResidencia" value="Norte" />Norte <input
					type="radio" name="rdResidencia" value="Centro" />Centro
				</label>

				<!--Aqui esta la parte de foto-->
				<label for="foto"> <span>Foto</span> <input type="file"
					name="foto" accept=".jpg, .jpeg, .png" />
				</label>

				<!--Aqui puede ingresar la fecha-->
				

				<!--Color favorito-->
				<label for="color"> <span>Color favorito</span> <input
					type="color" name="color" />
				</label>

				
				<!--Esta oarte corresponde a la hoja de vida-->
				<label for="hoja-vida">Cargar hoja de vida (PDF, máximo 5MB)</label>
				<input type="file" id="hoja-vida" name="hoja-vida" accept=".pdf"
					max-size="5000000">
					
					
					<!--Esta parte correspone al checkbox de aceptar terminos-->
				<label for="checkbox" class="checkbox-label"> <input
					type="checkbox" name="checkbox" id="checkbox"> <span>Acepto
						las condiciones y el aviso legal</span>
				</label>
					

				<!--Este es el boton de crear cuenta-->
				<button type="submit" class="submit-btn">Registrarse</button>
				<br>
			</form>
			
			<p id="provincia"></p>
				<br>
			
			
		</div>
		<div class="conte-2">
		<h2>
				Calcular edad
				</h1>
				<form onsubmit="calcularEdad(event)">
					<label>Fecha de nacimiento:</label> <input type="date"
						id="fecha_nacimiento"> <input class="submit-btn" type="submit"
						value="Calcular edad">
				</form>
				<br>
				<p id="resultado"></p>
				<br>
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
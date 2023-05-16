<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/edad.css">
<link rel="stylesheet" href="css/login.css">
<title>Insert title here</title>
</head>
<body>
	
	<ul class="flex-container">
		<li class="flex-item f1">
			<img alt="logo" src="img/logo-obscuro.png">
		</li>
		<li class="flex-item f2">
		<div class="est">
			<h1>Adivinar la edad</h1>
		<hr>
			<form action="etapa.jsp">
				<label for="edad">Ingrese la edad</label> 
				<input type="text" placeholder="Aqui escribe tu edad" class="input"
					name="edad" id="edad" required="required"> <br> <br>
				<button class="submit-btn" type="submit">Enviar consulta</button>
				<button class="submit-btn" type="reset">Restablecer</button>
			</form>
			<br>
			<a href="index.jsp">Regresar</a>
		</div>
			
		</li>
	</ul>
</body>
</html>
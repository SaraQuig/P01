<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"
	import=" com.productos.datos.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado de consulta</title>
<link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/estilo.css">
    <link rel="stylesheet" href="css/resultado.css">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
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
	<br>
	<br>
	
	<%
		Producto p = new Producto();
		out.print(p.buscarProductoCategoria(Integer.parseInt(request.getParameter("cmbCategoria"))));
	%>
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
                    <a href="" class="btn facebook">
                        <i class="fa fa-facebook"></i>
                     </a>
                    <a href="" class="btn skype">
                        <i class="fa fa-skype"></i>
                    </a>
                    <a href="" class="btn google">
                        <i class="fa fa-google"></i>
                    </a>
                </div>
                </div>
        </div>   
    </footer>
</body>
</html>
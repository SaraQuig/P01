<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*" import=" com.productos.datos.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Categorias</title>
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
    
    <div class="conte-cat">
        <h1>Categorias</h1> <br><hr>
        <div class="categorias">
         
            <form action="resultado.jsp" method="post" name="formCategoria">
                
                <label for="Cat"></label>
                <% 
                    Categoria cat = new Categoria();
                    out.print(cat.mostrarCategoria());
                %>
        
                <hr>
                <button class="boton-cat" type="submit" >ENVIAR</button>
             </form>
            </div>
    </div>
	<div class="img-cat">
        <div class="cart">
            <div class="cart-img1">
                <img src="img/car1.jpg" alt="">
            </div>
            <div class="cart-text1">
             
                <h2>HURACÁN</h2>
                <h2>Con su motor V10 es capaz de 
                    ofrecer una experiencia de conducción extraordinaria.</h2>
            </div>
        </div>
        <div class="cart">
            <div class="cart-img1">
                <img src="img/car-2.jpg" alt="">
            </div>
            <div class="cart-text1">
           
                <h2>REVUELTO</h2>
                <h2>El icónico motor V12 encuentra una 
                    nueva vida en esta obra maestra automovilística futurísta</h2>
            </div>
        </div>
        <div class="cart">
            <div class="cart-img1">
                <img src="img/car3.jpg" alt="">
            </div>
            <div class="cart-text1">
               
                <h2>URUS</h2>
                <h2> El Urus aúna las características de múltiples espíritus: 
                    deportivo, elegante y off-road. </h2>
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
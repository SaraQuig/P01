<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*" import=" com.productos.datos.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sobre nosotros</title>
    <link rel="stylesheet" href="css/estilo.css">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
</head>
<body>
    <div class="container">
        <DIv class="container_">
            <header class="header_">
                <img class="img-logo" src="img/logo-obscuro.png" alt="logo">
               
                    <ul class="navigation">
                        <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="categoria.jsp">Categorias</a></li>
                        <li><a href="catalogo.jsp">Consulta</a></li>
                        <li><a href="sesion.jsp">Sesión</a></li>
                        <li><a href="contacto.jsp">Contacto</a></li>
                      </ul>
               
               
            </header>
        </DIv>
        <div class="pagina-web">
            <ul class="flex-container">
                <li class="flex-item" id="flex-1">
                    <br>
                    Encuentra nuestras sucursales en el siguiente mapa. <br>
                    <br>
                    <hr>
                    <br>
                    <h3>Horarios de atención</h3> <br>
                    <table>
                        <tr>
                            <td>Lunes<br><br></td>
                            <td>10:00 a 18:00 <br><br></td>
                        </tr>
                        <tr>
                            <td>Martes <br><br></td>
                            <td>10:00 a 18:00 <br><br></td>
                        </tr>
                        <tr>
                            <td>Miercoles <br><br></td>
                            <td>10:00 a 18:00 <br><br></td>
                        </tr>
                        <tr>
                            <td>Jueves <br><br></td>
                            <td>10:00 a 18:00 <br><br></td>
                        </tr>
                        <tr>
                            <td>Viernes <br><br></td>
                            <td>10:00 a 18:00 <br><br></td>
                        </tr>
                        <tr>
                            <td>Sábado <br><br></td>
                            <td>10:00 a 15:00 <br><br></td>
                        </tr>
                        <tr>
                            <td>Domingo <br><br></td>
                            <td>10:00 a 15:00 <br><br></td>
                        </tr>
                    </table>
                    <br>
                    <hr><br>
                    Sucursales
                    <br>
                    <br>
                    <ul>
                        <li>Quito</li> <br>
                        <li>Cuenca</li> <br>
                        <li>Colombia</li> <br>
                    </ul>
                </li>
                <li class="flex-item" id="mapa">
                    <iframe src="https://www.google.com/maps/d/u/0/embed?mid=1MrkNywqZ0CYicr9vTUm3CyCXR-lZ4IA&ehbc=2E312F" width="500vw" height="500vh"></iframe>
                </li>
            </ul>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*" import=" com.productos.datos.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int cod = Integer.parseInt(request.getParameter("cod")) ;
	Producto mp = new Producto();
	mp.ConsulEditarProductos (cod) ;


	%>
	<form action="editarProductos.jsp">
    <table>
        <tr>
            <td>Codigo Producto:</td>
            <td><input type="text" name="editarcord"><%=cod%></td>
        </tr>
        <tr>
            <td>Categoria:</td>
            <td><output><%=mp.get%></output></td>
        </tr>
        <tr>
            <td>Descripcion:</td>
            <td><input type="text" name="editardesc" value="<%= mp.getNombre()%>"></td>
        </tr>
        <tr>
            <td>Precio:</td>
            <td><input type="text" name="editarprecio" value="<%= mp.getPrecio()%>"/></td>
        </tr>
        <tr>
            <td>Cantidad:</td>
            <td><input type="text" name="editarcant" value="<%= mp.getCantidad()%>"/></td>
        </tr>
    </table>
    <br>
    <br>
    <input type="submit" name="Actualizar">
   </form>

	
</body>
</html>
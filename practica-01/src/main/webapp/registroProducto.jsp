<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.productos.negocio.*, com.productos.datos.*"
	import="java.sql.*" import="java.io.*" import="java.util.*" import="java.sql.*" import="javax.servlet.http.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Los datos se han ingresado correctamente</h2>


	<% 
    Producto p = new Producto();
        int cat = Integer.parseInt(request.getParameter("cmbCategoria"));
        String nombre = request.getParameter("nombre_pr");
        int cantidad = Integer.parseInt(request.getParameter("cantidad_pr"));
        double precio = Double.parseDouble(request.getParameter("precio_pr"));
        String directorio = request.getParameter("foto_pr");
        out.print(p.ingresarProducto(cat, nombre, cantidad, precio, directorio));
    
    %>
</body>
</html>













</body>
</html>
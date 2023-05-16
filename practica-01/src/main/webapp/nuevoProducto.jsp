<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.productos.negocio.*"
	import=" com.productos.datos.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

	<!-- FORMULARIO -->
	<form action="registroProducto.jsp" enctype="multipart/form-data">
		<label for="id_pr">ID</label> 
		<input type="text" name="id_pr"
			id="id_pr" readonly="readonly" value=""> <br> 
		<label for="cmbCategoria">Categoria</label>
            <%
    		Categoria cat = new Categoria();
    		out.print(cat.mostrarCategoria());
    		%>
		<br> <label for="nombre_pr">Nombre</label> 
		<input type="text"
			name="nombre_pr" id="nombre_pr" required="required"> <br>
		<label for="">Cantidad</label> 
		<input type="number" name="cantidad_pr"
			id="cantidad_pr" min="6" required="required"> <br> <label
			for="">Precio</label> 
			<input type="number" name="precio_pr"
			id="precio_pr" step="0.01" min="0" required="required"> <br>
		<label for="">Imagen del producto</label> 
		<input type="file"
			name="foto_pr" id="foto_pr" accept=".jpg" required="required">
		<br>
		<button type="submit">ENVIAR</button>
		<button type="reset">RESTABLECER</button>
	</form>
</body>
</html>
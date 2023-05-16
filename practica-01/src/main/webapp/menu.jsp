<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true" import="com.productos.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
String usuario;
HttpSession sesion = request.getSession();
 if (sesion.getAttribute("usuario") == null) //Se verifica si existe la variable
 {
 %>
	<jsp:forward page="sesion.jsp">
		<jsp:param name="error" value="Debe registrarse en el sistema." />
	</jsp:forward>
	<%
 }
 else
 {
 usuario=(String)sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
 int perfil=(Integer)sesion.getAttribute("perfil");
 %>
	<h1>Sitio Privado de Productos</h1>
	<h4>
		Bienvenido
		<%
out.println(usuario);
%>
	</h4>
	
	
	<%
			
			Pagina pag=new Pagina();
			String menu=pag.mostrarMenu(perfil);
			out.print(menu);
			%>
<%} %>

</body>
</html>
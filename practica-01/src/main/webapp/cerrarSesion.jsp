<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
HttpSession sesionOk = request.getSession();
sesionOk.invalidate();
%>
	<jsp:forward page="sesion.jsp"/>
</body>
</html>
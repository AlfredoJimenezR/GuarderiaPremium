<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Redirigiendo...</title>
<link rel="stylesheet" href="CSS/Inicio.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="Css/Formato.css">
<link rel="stylesheet" href="Css/normalize.css">
<link rel="stylesheet" href="Css/Redirect.css">
</head>
<body>
	<header class="header" id="inicio">
		<div class="contenedor head">
			<h2><%=request.getParameter("Respuesta")%></h2>
			<h3 id='Cuenta'></h3>
		</div>
	</header>
	<script src='Scripts/Redirigir.js'></script>
</body>
</html>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
<<<<<<< HEAD
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Expires" content="0">
<meta http-equiv="Last-Modified" content="0">
<meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&family=Noto+Sans+JP:wght@300;400;700;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="Css/normalize.css">
<link rel="stylesheet" type="text/css" href="Css/general.css"
	media="all">
<title>Guarder�a Los Pollitos</title>
=======
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta http-equiv="Expires" content="0">
	<meta http-equiv="Last-Modified" content="0">
	<meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&family=Noto+Sans+JP:wght@300;400;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="Css/normalize.css">
	<link rel="stylesheet" type="text/css" href="Css/general.css" media="all">
	<title>Guarder�a Los Pollitos</title>
>>>>>>> bf6205627bf8f61696ae8d90318e06a1a27e5b80
</head>
<body>
	<header class="Cabecera">
		<div class="Contenedor Contenido-Header">
<<<<<<< HEAD
			<div class="Barra">
				<h1 class="FW-300" style="color: black">
					<b>Guarder�a el ni�o de la pijama de rayas</b>
				</h1>
				<nav>
					<%
					HttpSession sesion = request.getSession();
					if (sesion.getAttribute("user") != null && sesion.getAttribute("lvl") != null) {
					%>
					<a href="LogIn.jsp?cerrar=true">Cerrar Sesi�n</a>
				</nav>
			</div>
		</div>
=======
        	<h1 class="FW-300" style="color:black"><b>Guarder�a el ni�o de la pijama de rayas</b></h1>
        </div>
>>>>>>> bf6205627bf8f61696ae8d90318e06a1a27e5b80
	</header>
	<main class="Contenedor Seccion">
		<div class="MargenI">
			<h3 class="FW-300">Ni�os</h3>
			<div class="Campo_Ovalado">
<<<<<<< HEAD
				<div class="Dos_Column">
					<div class="Buscador">
						<label class="label">Alumno:</label> <input autocomplete="off"
							type="text" name="Nombre" id="Nombre" placeholder="Buscar alumno">
					</div>
				</div>
				<table class="Inter_100">
					<thead>
						<tr>
							<th>Matr�cula</th>
							<th>Nombre del Ni�o</th>
							<th>Grupo</th>
							<th>Reports</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</main>
	<%
	} else {
		response.sendRedirect("LogIn.jsp");
	}

	if (request.getParameter("cerrar") != null) {
		request.getSession().invalidate();
		response.sendRedirect("LogIn.jsp");
		return;
	}
	%>
=======
					<div class="Dos_Column">
						<div class="Buscador">
							<label class="label">Alumno:</label>
		                    <input autocomplete="off" type="text" name="Nombre" id="Nombre" placeholder="Buscar alumno">
						</div>	
					</div>
					<table class="Inter_100">
						<thead>
							<tr>
								<th>Matr�cula</th>
								<th>Nombre del Ni�o</th>
								<th>Grupo</th>
								<th>Reports</th>
							</tr>
						</thead>
					</table>
			</div>
		</div>
	</main>
>>>>>>> bf6205627bf8f61696ae8d90318e06a1a27e5b80
</body>
</html>
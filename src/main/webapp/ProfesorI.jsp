<%@page import="Cliente.AlumnosProfe"%>
<%@page import="Cliente.DatosAlumnos"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<link href="https://rawgit.com/select2/select2/master/dist/css/select2.min.css"
	rel="stylesheet" />
<script src="https://rawgit.com/select2/select2/master/dist/js/select2.js"></script>
<title>Guardería Los Pollitos</title>
</head>
<body>
	<header class="Cabecera">
		<div class="Contenedor Contenido-Header">
			<div class="Barra">
				<h1 class="FW-300" style="color: black">
					<b>Guardería el niño de la pijama de rayas</b>
				</h1>
				<nav>
					<%
					AlumnosProfe inicia = new AlumnosProfe();
					inicia.Buscar();

					DatosAlumnos dat = DatosAlumnos.getInstance();

					HttpSession sesion = request.getSession();
					if (sesion.getAttribute("user") != null && sesion.getAttribute("lvl") != null) {
					%>
					<a href="LogIn.jsp?cerrar=true">Cerrar Sesión</a>
				</nav>
			</div>
		</div>
	</header>
	<main class="Contenedor Seccion">
		<div class="MargenI">
			<h3 class="FW-300">Niños</h3>
			<div class="Campo_Ovalado">
				<div class="Dos_Column">
					<div class="Buscador">
						<label class="label">Alumno:</label> <select name="Busca"
							id="Busca" style="width: 300px">
							<option></option>

							<%
							for (int i = 0; i < dat.TamañoMat(); i++) {
							%>
							<option value="<%=dat.RecorreNom(i)%>"><%=dat.RecorreNom(i)%></option>
							<%
							}
							%>

						</select>
					</div>
				</div>
				<table class="Inter_100">
					<thead>
						<tr>
							<th>Matrícula</th>
							<th>Nombre del Niño</th>
							<th>Edad</th>
							<th>Grupo</th>
							<th>Reporte</th>
						</tr>
					</thead>
					<tbody>
						<%
						for (int i = 0; i < dat.TamañoMat(); i++) {
						%>
						<tr>
							<td><%=dat.RecorreMat(i).toString()%></td>
							<td><%=dat.RecorreNom(i).toString()%></td>
							<td><%=dat.RecorreEdad(i).toString()%></td>
							<td><%=dat.RecorreGrupo(i).toString()%></td>
							<td><a href="Reportes.jsp?Matricula=<%=dat.RecorreMat(i).toString()%>">Generar reporte</a></td>
						</tr>
						<%
						}
						%>
					</tbody>
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
	<script src="Scripts\Buscador.js"></script>
</body>
</html>
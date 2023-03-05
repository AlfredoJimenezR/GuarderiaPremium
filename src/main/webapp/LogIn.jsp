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
	<title>Guardería Los Pollitos</title>
</head>
<body>
	<header class="Cabecera">
		<div class="Contenedor Contenido-Header">
        	<h1 class="FW-300" style="color:black"><b>Guardería el niño de la pijama de rayas</b></h1>
        </div>
	</header>
	<main class="Contenedor Contenido-centrado Seccion">
		<div class="MargenI">
			<h3 class="FW-300">Iniciar Sesión</h3>
			<div class="Campo_Ovalado">
				<form action="LogIn" method="post">
					<div class="Dos_Column">
						<div style="display:block;">
							<label class="label">Usuario:</label>
		                    <input autocomplete="off" type="text" name="user" id="user" placeholder="Ingresa tu usuario">
							
							<label class="label">Contraseña:</label>
		                    <input autocomplete="off" type="text" name="pass" id="pass" placeholder="Ingresa tu contraseña" >
							<input type="submit" value="Aceptar">
						</div>	
						<img src="Imagenes/Logo.jpg" style="width:15rem; height:15rem;" alt="Logo de nuestra querida guardería" title="Guardería pollitos">		
					</div>
				</form>
			</div>
		</div>
	</main>
</body>
</html>
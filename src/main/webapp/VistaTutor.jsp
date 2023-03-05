<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700;900&family=Noto+Sans+JP:wght@300;400;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="Css/normalize.css">
	<link rel="stylesheet" type="text/css" href="Css/general.css" media="all">
<title>Bienvenido tutor</title>
</head>
<body>

	<header class="Cabecera">
		<div class="Contenedor Contenido-Header">
		
        	<h1 class="FW-300" style="color:black"><b>Reporte del niño</b></h1>
	
        </div>
        
        </header>
	
		<div class="MargenTabla">
        	    	
		<table class="BordeT">
		
		<tbody align="center"> 

  		<tr>

    	<td class = "colort">Matricula: 123456789</td>

    	<td class = "colort">Nombre: Daniel Martin Huertas Ramirez</td>


  		</tr>

	</table>
	
	
	</div> 	
        	
    <br>
    
	
    
    <div class="MargenTabla">  
    
    <div class="Campo_Ovalado2">
    
    
    
	<input type="date" id="fechaActual" value="" >
	
			<table class="BordeT3">
		
		<tbody align="center"> 

  		<tr>

    	<td rowspan="2" class = "colort5">Numero de evacuaciones</td>
    	
    	<td colspan="3" class = "colort5">Cantidad:</td>
    	
    	
    	
    	

    	

  		</tr>
  		
  		</table>
  		
  		<table class="BordeT4">
		
		<tbody align="center"> 
  		
  		<tr>
  		
  		<td class = "colort5">Pipi:</td>
  		
  		<td colspan="2" class = "colort5">Popo:</td>
  		
  		
  		
  		</tr>
  		
  		</table>
  		
  		<table class="BordeT4">
		
		<tbody align="center"> 
  		
  		<tr>
  		
  		<td class = "colort3">Numero de siestas</td>
  		
  		<td colspan="3" class = "colort4">2</td>
  		
  		</tr>
  		
  		<tr>
  		
  		<td class = "colort3">Numero de comidas</td>
  		
  		<td colspan="3" class = "colort4">2</td>
  		
  		</tr>
  		
  		<tr>
  		
  		<td class = "colort3">Cambios de ropa</td>
  		
  		<td class = "colort4">#1</td>
  		
  		<td class = "colort4">#2</td>
  		
  		<td class = "colort4">#3</td>
  		
  		</tr>
  		
  		<tr>
  		
  		<td class = "colort3">Estado de la ropa</td>
  		
  		<td class = "colort4">Limpia</td>
  		
  		<td class = "colort4">Sucia</td>
  		
  		<td class = "colort4">No usada</td>
  		
  		</tr>
  		
  		<tr>
  		
  		<td colspan="4" class = "colort3">Observaciones:</td>
  		
  		</tr>
  		
  		<tr>
  		
  		<td colspan="4" class = "colort3">A</td>
  		
  		</tr>
  		

	</table>
	

       
    </div>
    
    </div>

</body>



    <script type="text/javascript">
    
    window.onload = function(){
    	  var fecha = new Date(); //Fecha actual
    	  var mes = fecha.getMonth()+1; //obteniendo mes
    	  var dia = fecha.getDate(); //obteniendo dia
    	  var ano = fecha.getFullYear(); //obteniendo año
    	  if(dia<10)
    	    dia='0'+dia; //agrega cero si el menor de 10
    	  if(mes<10)
    	    mes='0'+mes //agrega cero si el menor de 10
    	  document.getElementById('fechaActual').value=ano+"-"+mes+"-"+dia;
    	  
    	}
	
	</script>

</html>
<?php

	include "../includes/config.php";

	$artistas = $db->findAll("artistas");
	
	$canciones = $db->findAll("canciones");
	
	
?><!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Documento sin título</title>
</head>

<body>
<h2>Artistas en la base de datos</h2>
<ul>
<?php
	foreach($artistas as $artista){
	  echo "<li>" . $artista['nombre'] . "</li>";	
	}
?>
</ul>


<h2>Canciones en la base de datos</h2>
<ul>
<?php
	foreach($canciones as $cancion){
	  echo "<li>";
			echo "Nombre:" . $cancion['nombre'] . " ";
			echo "Duración" . $cancion['duracion'];
		echo "</li>";	
	}
?>
</ul>





</body>
</html>
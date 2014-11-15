<?php
	include "../includes/config.php";


?><!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Documento sin título</title>
</head>

<body>
<?php

	$nombre_album = $_POST['nombre'];
	$year_album = $_POST['year'];
	$artistaid = $_POST['artistaid'];
	
	$albumid = $db->insert("albumes", array(
		"nombre" => $nombre_album,
		"year" => $year_album,
		"artistaid" => $artistaid
	));
	       
	if($albumid){
		echo "Se creó el album {$nombre_album} al artistaid {$artistaid}";
	}else{
		echo "No se pudo guardar el album {$nombre_album}";
	}




?>
</body>
</html>
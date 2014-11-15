<?php
	include "../includes/config.php";


?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Documento sin título</title>
</head>

<body>
<?php

	$nombre_artista = $_POST['nombre'];
	$historia_artista = $_POST['historia'];

	$artistaid = $db->insert("artistas", 
									array(
										'nombre' => $nombre_artista,
										'historia' => $historia_artista,
									)
								);
	if($artistaid > 0){
		echo "Se ha guardado el artista con el id" . $artistaid;
	}else{
		echo "Error guardando el artista nuevo";
	}


?>
</body>
</html>
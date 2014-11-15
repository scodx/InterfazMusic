<?php

	include "../includes/config.php";

	
?><!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Editar Album </title>
</head>
<body>

	<?php

		$nombre 	= $_POST['nombre'];
		$year 		= $_POST['year'];
		$artistaid	= $_POST['artistaid'];
		$albumid 	= $_POST['albumid'];

		$actualizo = $db->update("albumes", array(
				"nombre" 	=> $nombre,
				"year" 		=> $year,
				"artistaid" => $artistaid,
			), array(
				"albumid" 	=> $albumid
			));

		if($actualizo){
			echo "<h2>Se actualizó correctamente el álbum</h2>";
		}else{
			echo "<h2>Ocurrió un problema actualizando el registro</h2>";
		}

	?>

</body>
</html>

















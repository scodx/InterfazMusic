<?php

	include "../includes/config.php";

	$artistas = $db->findAll("artistas");

	$albumid = $_GET['albumid'];

	$album = $db->find("albumes", array(
		"albumid" => $albumid
	));
	


?><!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Editar Album </title>
</head>

<body>
<h2>Editar Album</h2>
<form name="form1" method="post" action="editar_album_action.php">
	<input type="hidden" name="albumid" value="<?php echo $album['albumid'] ?>">
  <p>
    <label for="nombre">Nombre:</label>
    <input value="<?php echo $album['nombre'] ?>" type="text" name="nombre" id="nombre">
  </p>
  <p>
    <label for="year">Año:</label>
    <input value="<?php echo $album['year'] ?>" type="text" name="year" id="year">
  </p>
  <p>
    <label for="artistaid">Selecciona el Artista:</label>
    <select name="artistaid" id="artistaid">
    <?php
			foreach($artistas as $artista){
				if($artista['artistaid'] == $album['artistaid']){
					echo "<option selected value='{$artista['artistaid']}'>";
				}else{
					echo "<option value='{$artista['artistaid']}'>";
				}
				
					echo $artista['nombre'];
				echo "</option>";
			}
		?>
    </select>
  </p>
	<input type="submit" value="Enviar">

</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>








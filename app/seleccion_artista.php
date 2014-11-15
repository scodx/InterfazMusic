<?php

	include "../includes/config.php";
	$artistas = $db->findAll("artistas");

?><!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Selección de Artista</title>
</head>

<body>

<form action="albumes_artistas.php" method="post" >
  <p>
    <label for="artistaid">Selecciona el Artista:</label>
    <select name="artistaid" id="artistaid">
    <?php
			foreach($artistas as $artista){
				echo "<option value='{$artista['artistaid']}'>";
					echo $artista['nombre'];
				echo "</option>";
			}
		?>
    </select>
  </p>
  <p>
    <input type="submit" name="enviar" id="enviar" value="Enviar">
  </p>
  <p>&nbsp;</p>
</form>



</body>
</html>
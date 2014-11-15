<?php

  include "../includes/config.php";

	$artistas = $db->findAll("artistas");

?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Captura Album</title>
</head>

<body>
<p>&nbsp;</p>
<form name="form1" method="post" action="guardar_album.php">
  <p>
    <label for="nombre">Nombre del Album</label>
    <input type="text" name="nombre" id="nombre">
  </p>
  <p>
    <label for="year">Año</label>
    <input type="text" name="year" id="year">
  </p>
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
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
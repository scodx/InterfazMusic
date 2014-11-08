<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Documento sin título</title>
</head>

<body>

<h2>Captura de Artista </h2>
<p>Ingresa los datos para capturar el artista nuevo.</p>
<form name="form1" method="post" action="guardar_artista.php">
  <p>
    <label for="nombre">Nombre:</label>
    <input type="text" name="nombre" id="nombre">
  </p>
  <p>
    <label for="historia">Historia:</label>
    <br>
    <textarea name="historia" cols="50" rows="4" id="historia"></textarea>
  </p>
  <p>
    <input type="submit" name="Enviar" id="Enviar" value="Enviar">
  </p>
</form>
</body>
</html>
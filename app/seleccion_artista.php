<?php

	include "../includes/config.php";
	$artistas = $db->findAll("artistas");
	
	include "template_header.php";

?>
	<div class="container">
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
  </div>
  
  <?php
	include "template_footer.php";
	
	?>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
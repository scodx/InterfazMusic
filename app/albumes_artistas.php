<?php   

    include "../includes/config.php";

    $artistaid = $_POST['artistaid'];
    
    $artista = $db->find("artistas", 
        array("artistaid" => $artistaid)
    );
    
    $albumes = $db->findAll('albumes', 
        array("artistaid" => $artistaid)
    );

    
    	
    
    
?><!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Álbumes de <?php echo $artista['nombre'] ?></title>
</head>
<body>
    <h2>Álbumes de <?php echo $artista['nombre'] ?></h2>
    <?php
        if( count($albumes) ){
            ?>
        <table>
            <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Año</th>
            <th>Acciones</th>
          </tr>
          <?php foreach($albumes as $album){ ?>
                            <tr>
                <td><?php echo $album['albumid'] ?></td>
                <td><?php echo $album['nombre'] ?></td>
                <td><?php echo $album['year'] ?></td>
                <td><a href="editar_album.php?albumid=<?php echo $album['albumid'] ?>">Editar</a> - Borrar</td>
              </tr>
                    <?php } ?>
        </table>
      <?php
        }else{
            ?><h3> No existen registros de álbumes para el artista: <?php echo $artista['nombre'] ?></h3><?php
        }
    
?>
</body>
</html>
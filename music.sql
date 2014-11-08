CREATE DATABASE  IF NOT EXISTS `music` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `music`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: music
-- ------------------------------------------------------
-- Server version	5.5.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `albumes`
--

DROP TABLE IF EXISTS `albumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albumes` (
  `albumid` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `year` int(11) NOT NULL,
  `artistaid` int(11) NOT NULL,
  PRIMARY KEY (`albumid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albumes`
--

LOCK TABLES `albumes` WRITE;
/*!40000 ALTER TABLE `albumes` DISABLE KEYS */;
INSERT INTO `albumes` VALUES (1,'Primera Fila',2011,0),(2,'Amar es Combatir',2000,3),(4,'Â¿Donde Jugaran los NiÃ±os?',1982,3),(5,'Drama y Luz',2011,3);
/*!40000 ALTER TABLE `albumes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artistas`
--

DROP TABLE IF EXISTS `artistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artistas` (
  `artistaid` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `historia` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`artistaid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistas`
--

LOCK TABLES `artistas` WRITE;
/*!40000 ALTER TABLE `artistas` DISABLE KEYS */;
INSERT INTO `artistas` VALUES (1,'Alejandra Guzman','Alejandra Gabriela Guzmán Pinal (Ciudad de México, México, 9 de febrero de 1968) es una cantante y compositora mexicana de rock en español y pop latino, con más de 20 años de trayectoria. Además bailarina de ballet, claqué y jazz, pintora y actriz, reconocida por participar en diversas telenovelas, series y programas de televisión. Perteneciente a una legendaria dinastía artística. Hija del cantante de rock and roll y actor mexicano Enrique Guzmán y de la primera actriz mexicana Silvia Pinal. Su voz y su actitud han conquistado a Latinoamérica, Estados Unidos y Europa. Reconocida como la intérprete más importante y atrevida de México. Ha vendido más de 20 millones de copias de sus discos en todo el mundo.'),(3,'Mana','SOMBRERO VERDE\r\n\r\n\r\nLos orígenes de Maná se remontan a un grupo musical llamado Sombrero Verde, cuyos integrantes José Fernando (Fher) Olvera, como voz; Gustavo Orozco, a la guitarra eléctrica; y los hermanos Calleros: Juán Diego, al bajo, Ulises, a la guitarra eléctrica y Abraham, a la batería eran originarios de Guadalajara. En 1975 decidieron juntarse para tocar distintos temas de grupos a los que admiraban, entre ellos The Beatles, Led Zeppelin, Rolling Stones, The Police, entre otros. Inicialmente, se hacían llamar The Spies of the Green Hat, pero pronto el nombre se abrevió a Green Hat y, finalmente, se adaptó al español como Sombrero Verde, ya que la banda deseaba tocar rock en su propio idioma, siendo de los primeros grupos en aventurarse a componer sus propias canciones aun cuando el rock en español no era una tendencia. \r\n\r\nEn 1981 publicaron su primer disco, Sombrero Verde, con el sello Ariola; los sencillos fueron \"Vampiro\", \"Profesor\", \"Long time\" y \"Despiértate\". '),(5,'Caifanes','Caifanes es una banda de rock mexicana que estuvo activa de 1987 a 1995 y que volvió a escena a partir de 2011.3\r\n\r\nEn un principio, conformada por Saúl Hernández (guitarra y voz), Alfonso André (batería), Sabo Romo (bajo) y Diego Herrera (teclado y saxofón), publicaron su álbum debut Caifanes. En 1989, uniéndoseles Alejandro Marcovich (guitarra líder) y, estructurados como quinteto, publicaron los álbumes Caifanes. Volumen II (mejor conocido como El diablito) y El silencio. Al final de su primera etapa, previa salida de Sabo y Diego (1993), quedaron reducidos a un trío y publicaron un cuarto álbum: El nervio del volcán.'),(6,'La Quinta Estacion','La Quinta Estación fue un grupo español de música pop, compuesto por los músicos madrileños de 2000 a 2010: Natalia Jiménez (voz), y Ángel Reyero (guitarra) y Pablo Domínguez Villarubia (guitarra) . Anteriormente también formó parte Sven Martín (2000-2003).\r\n\r\nEn el año 2010 se disolvió la banda La Quinta Estación.\r\n\r\nActualmente Natalia Jiménez sigue como solista en solitario.\r\n\r\nActualmente Pablo Domínguez Villarubia es integrate del grupo Pop-Rock Varsovia (banda) creado en el verano del 2010\r\n\r\nQueda abierta la posibilidad que La Quinta Estación se una en un futuro (Natalia Jiménez (voz), Sven Martín (guitarra), Pablo Domínguez (bajo), Ángel Reyero (guitarra). La posibilidad de participar en ese nuevo proyecto anteriores componentes del grupo: Irene Herrero, Jelena Grgic, Bindiya Advani, Carlos León, Mariluz Peñalver, María Arenas, Miguel (pianos) y Carlos (batería))1'),(7,'Alejandro Sanz','Alejandro Sanz es uno de los artistas latinos más reconocidos a nivel internacional. Compositor y autor de todas sus canciones, ha vendido más de 23 millones de discos. Es el artista español con mayor número de premios Grammy (17 latinos y 3 americanos).'),(9,'Ricardo Arjona','Ricardo Arjona (Jocotenango, 19 de enero de 1964) es un cantautor y mÃºsico guatemalteco. Su mÃºsica varia desde baladas a pop latino, rock, pop rock, mÃºsica cubana, y, mÃ¡s recientemente incluye actuaciones a capella y una mezcla de mÃºsica tejana y norteÃ±a, mÃºsica afroamericana y latina. Se estima que ha vendido cerca de veinte millones de discos a lo largo de su carrera, y es considerado uno de los artistas mÃ¡s exitosos de AmÃ©rica Latina.1 2');
/*!40000 ALTER TABLE `artistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canciones`
--

DROP TABLE IF EXISTS `canciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canciones` (
  `cancionid` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `duracion` int(11) NOT NULL,
  `albumid` int(11) NOT NULL,
  PRIMARY KEY (`cancionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canciones`
--

LOCK TABLES `canciones` WRITE;
/*!40000 ALTER TABLE `canciones` DISABLE KEYS */;
INSERT INTO `canciones` VALUES (0,'Tan solo tu',4,0);
/*!40000 ALTER TABLE `canciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'music'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-08 14:07:33

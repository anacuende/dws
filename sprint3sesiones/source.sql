-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mysitedb
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tCanciones`
--

DROP TABLE IF EXISTS `tCanciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tCanciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `url_imagen` varchar(200) DEFAULT NULL,
  `autor` varchar(150) DEFAULT NULL,
  `album` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tCanciones`
--

LOCK TABLES `tCanciones` WRITE;
/*!40000 ALTER TABLE `tCanciones` DISABLE KEYS */;
INSERT INTO `tCanciones` VALUES (1,'H.I.E.L.O','https://img.freepik.com/fotos-premium/tres.cubos-hielo-sobre-fondo-blanco_37874-1042.jpg?w=740','Duki',NULL),(2,'Intoxicao','https://img.freepik.com/iconos-gratis/boton-reproduccion-redondeada_318-9366.jpg?w=740&t=st=1664884201~exp=1664884801~hmac=43c97c1c2f311fd4e6cfc56f0cdf92664bc871aab65b337f9870ca8cfd55687f','Emilia Mernes','Tu crees en mi?'),(3,'NASA','http://img.freepik.com/vector-gratis/ilustracion-luna-llena-gris-sobre-fondo-blanco_53876-117406.jpg?size=338&ext=jpg&ga=GA1.2.1472598965.1664868338','Ariana Grande','Thank U Next'),(4,'El Humo','https://img.freepik.com/vector-gratis/plantilla-humo_1045-743.jpg?size=338&ext=jpg&ga=GA1.2.1472598965.1664868338','Lola Índigo','Akelarre'),(5,'Silbando','https://img.freepik.com/vextor-gratis/conjunto-iconos-volumen-iconos-sonido-volumen-amarillo-ilustracion-arte-dibujos-animados_56104-866.jpg?w=2000','YSY A',NULL);
/*!40000 ALTER TABLE `tCanciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tComentarios`
--

DROP TABLE IF EXISTS `tComentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tComentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(2000) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `cancion_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `cancion_id` (`cancion_id`),
  CONSTRAINT `tComentarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `tUsuarios` (`id`),
  CONSTRAINT `tComentarios_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `tCanciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tComentarios`
--

LOCK TABLES `tComentarios` WRITE;
/*!40000 ALTER TABLE `tComentarios` DISABLE KEYS */;
INSERT INTO `tComentarios` VALUES (1,'Estrenada en 2020 con una duración de 3 minutos y 15 segundos. Es una colaboración con Obie Wanshot y está producida por Yesan.',1,1,'0000-00-00'),(2,'Estrenada en 2022 con una duración de 2 minutos y 48 segundos. Es una colaboración con Nicki Nicole y está producida por Big One.',2,2,'0000-00-00'),(3,'Estrenada en 2019 con una duración de 3 minutos y 2 segundos. Está producida por Tommy Brown',3,3,'0000-00-00'),(4,'Estrenada en 2019 con una duración de 2 minutos y 46 segundos. Forma parte de la banda sonora de la película Lo Dejo Cuando Quiero y está producida por Tezzel',4,4,'0000-00-00'),(5,'Estrenada en 2020 con una duración de 1 minuto y 49 segundos. Se grabó durante la cuarentena que produjo la pandemia de 2020 y está producida por Club Hats.',5,5,'0000-00-00'),(6,'fjsioñfo',NULL,3,'0000-00-00'),(7,'s',NULL,3,'0000-00-00'),(8,'x',NULL,3,'0000-00-00'),(9,'x',NULL,3,'0000-00-00'),(10,'s',NULL,3,'0000-00-00'),(11,'agastfdz',NULL,3,'0000-00-00'),(12,'sgresag',NULL,3,'0000-00-00'),(13,'patata',NULL,3,'2022-10-13'),(14,'sdzgvgaeg',1,3,'2022-10-20');
/*!40000 ALTER TABLE `tComentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tUsuarios`
--

DROP TABLE IF EXISTS `tUsuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tUsuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contraseña` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tUsuarios`
--

LOCK TABLES `tUsuarios` WRITE;
/*!40000 ALTER TABLE `tUsuarios` DISABLE KEYS */;
INSERT INTO `tUsuarios` VALUES (1,'María','García López','maria.garcia@gmail.com','1234'),(2,'Juan','Sánchez López','juan.sanchez@gmail.com','5678'),(3,'Julieta','Martínez Álvarez','julieta.martinez@gmail.com','1234'),(4,'David','Fuentes Vázquez','david.fuentes@gmail.com','5678'),(5,'Emilia','Méndez García','emilia.mendez@gmail.com','1234');
/*!40000 ALTER TABLE `tUsuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-25 12:32:36

/*
SQLyog Ultimate v8.82 
MySQL - 5.5.27 : Database - bdcuestionario
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bdcuestionario` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bdcuestionario`;

/*Table structure for table `calificacion` */

DROP TABLE IF EXISTS `calificacion`;

CREATE TABLE `calificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `calificacion` varchar(100) DEFAULT NULL,
  `respuestas` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `calificacion` */

/*Table structure for table `cuestionario` */

DROP TABLE IF EXISTS `cuestionario`;

CREATE TABLE `cuestionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) DEFAULT NULL,
  `respuesta` varchar(200) DEFAULT NULL,
  `respuesta2` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `cuestionario` */

insert  into `cuestionario`(`id`,`pregunta`,`respuesta`,`respuesta2`) values (1,'¿La rana es un anfibio?','si',1),(2,'¿Es un animal carnívoro el León?','si',1),(3,'¿El cocodrilo es un reptil?','si',1),(4,'¿Cuba es un país comunista?','si',1),(5,'¿El triángulo es un polígono de 3 lados?','si',1),(6,'¿Miguel de Cervantes escribió Don Quijote de la Mancha?','si',0),(7,'¿El Sol es una estrella?','si',1),(8,'¿Jamaica es una isla?','si',0),(9,'¿Alemania tiene 4 copas mundiales?','si',1),(10,'¿Cristobal Colón descubrió América?','si',1),(11,'¿La independencia de México fue en el año 1910?','si',0),(12,'¿En Inglaterra hablan inglés?','si',1),(13,'¿Rusia es el país con más territorio en el mundo?','si',1),(14,'¿Lionel Messi tiene 4 balones de Oro?','si',1),(15,'¿En Brasil hablan portugués?','si',1),(16,'¿Costa de Marfil es un país africano?','si',0),(17,'¿Albert Einstein inventó la Bomba Atómica?','si',1),(18,'¿Barack Obama es el presidente de los Estados Unidos?','si',1),(19,'¿La revolución mexicana fue en 1910?','si',1),(20,'¿El porfiriato en México duró 30 años?','si',0),(21,'¿Un día dura 24 horas?','si',1),(22,'¿La Torre Eiffel se encuentra en París, Francia?','si',1);

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `User` varchar(200) DEFAULT NULL,
  `Contrasena` varchar(200) DEFAULT NULL,
  `Calificacion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

insert  into `usuario`(`Id`,`User`,`Contrasena`,`Calificacion`) values (1,'Axel','123','7');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

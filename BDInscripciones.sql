CREATE DATABASE  IF NOT EXISTS `inscripcionesico` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inscripcionesico`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: inscripcionesico
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `idalumno` int NOT NULL AUTO_INCREMENT,
  `numcta` varchar(10) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `paterno` varchar(50) NOT NULL,
  `materno` varchar(50) NOT NULL,
  `correo` varchar(75) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `id_carrera` int NOT NULL DEFAULT '15',
  PRIMARY KEY (`idalumno`),
  UNIQUE KEY `numcta` (`numcta`),
  UNIQUE KEY `correo` (`correo`),
  KEY `alumno_ibfk_1` (`id_carrera`),
  CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (34,'319100289','Emilia Regina','Gonzalez','Cortes','emilia16@aragon.unam.mx','okareg','namjoonily',15),(35,'318033234','Fernando','Flores','Martinez','fernando1@aragon.unam.mx','ferfl','goku888',15),(36,'319000001','Cesar Aarón','Gordillo','Vázquez','aarongordillo86@aragon.unam.mx','ING.Roulkes XD','cerocerocero',15),(37,'319115189','Sergio Jair','Molina','Martínez','jairmolina69@aragon.unam.mx','Naruto 555','asdfawfa1123',15),(38,'422063317','Daira Sayuri','Hernández','Rubio','sayurihernandez17@aragon.unam.mx','sayus07','150323gfc',15),(39,'313190902','Adrián Leoanardo','Rodríguez','Pichardo','xenz@viper.com','XenzViper','password123',15),(40,'319184356','Luis Rodrigo','Nieto','Rios','rodrigonieto56@aragon.unam.mx','Spirituni','sincontraseña',15),(41,'319117084','Emiliano','Lopez','Esquivel','emilianolopez@gmail.com','penta','zeromiedo',15),(42,'319000000','Jose Armando','Olmos','Resendiz','patitofeo@gmail.com','Follery','arribaelamercia',15),(43,'319008865','Karla','Valentin','Baena','karlavalentin@gmail.com','karlaMoon','111111111',15),(44,'319028005','Luis Fernando','Hernández','Hernández','luisrandom@gmail.com','luistoto19','totisconchile',15),(45,'319045678','Adriana','Nequiz','Gonzalez','adriananm556@gmail.com','Nequizq','hola34_',15),(46,'318231359','Luis Paolo','Llanos','Solis','paolollanos54@aragon.unam.mx','pepe_el_pollo','Bellako2002',15),(47,'316987453','Samanta','Bautista','Reyes','samantabautista18@aragon.unam.mx','sambr16','sbr1607',15),(48,'319258647','Alan Roman','Maya','Bautista','alanmaya46@aragon.unam.mx','Tuercas','123456789',15),(49,'319300750','Victor Manuel','Lara','Hernández','victorlara@outlook.com','CeroMiedo69','TacosDeGerber09?',15),(50,'319880080','Cristian','Cruz','Sànchez','cristiancruz@aragon.unam.mx','KIM JONG-UN','123456',15),(51,'319191919','Erik','Contreras','Jimenez','erik@outlook.com','elbicho1','siuuuu1Ñ',15),(52,'327378287','Brenda Yazmin','Bravo','Urrutia','uvita@gmail.com','Bbrenda218','BB218',15),(53,'319285468','Jerson Darley','Sanchez','Martinez','jersinschez17@aragon.unam.mx','iloveamerica','angelitaValo',15),(54,'392813912','Hendrick Luis','Ramirez','Velez','yucatecotactico@aragon.una.mx','helluz','diquemeamas',15),(55,'329078900','Diego Josue','Bautista','Rios','carlitoslechuga@aragon.unam.mx','labubuelmalilla','ternurin',15),(56,'986927398','José Eduardo','Barrueta','Guzmán','simeborranlesborrotodo@gmail.com','LaloElMalo','roscaDeReyes',15),(57,'31931730','Eduardo','Perez','Feria','eumanito123@gmail.com','mameitor','sopademacaco',15),(58,'319856225','Alexa Valentina','Monroy','Gomez','valentinamonroy60@aragon.unam.mx','ValMonz','aGvM22',15),(59,'333333333','Alexis Damian','Nuñez','Gonzalez','3333@gmail.com','ADN','SinContraseña',15),(60,'422049968','Dylan Missael','Nieto','Vargas','dylan_missael88@gmail.com','rexsaelgamer','amlo12345678',15),(61,'431843724','Jose Julian','Rodriguez','Chagoya','ejemplo.correo@email.com','abcdef','************',15),(62,'422050980','Carlos Yael','Tenorio','Castilla','carlostenorio97@aragon.unam.mx','torrente','ContraseñaSegura',15),(63,'319177127','Miguel Angel','López','Rodea','miguellopez7856@aragon.unam.mx','alysum','sheintavos',15),(64,'429482642','Angel David','Garcia','Ortega','angelgarcia06@aragon.unam.mx','angelol','contraseña123',15),(65,'319318402','Isaac Fernando','Martinez','Ferreira','haligog908@bitflirt.com','isaac123','1234',15),(66,'319224568','Angel Jesus','Escamilla','Escobar','angelescobar@aragon.unam.mx','Mazk_Teslasdsds','QuemientantodasmenosSheinbaum',15);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `id_asignatura` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `semestre` int NOT NULL,
  `clave` varchar(50) NOT NULL,
  `creditos` int NOT NULL,
  `laboratorio` tinyint(1) DEFAULT NULL,
  `optativa` tinyint(1) DEFAULT NULL,
  `id_carrera` int DEFAULT '15',
  PRIMARY KEY (`id_asignatura`),
  KEY `id_carrera` (`id_carrera`),
  CONSTRAINT `asignatura_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (1,'ALGEBRA',1,'1110',9,0,0,15),(2,'CALCULO DIFERENCIAL E INTEGRAL',1,'1109',9,0,0,15),(3,'COMPUTADORAS Y PROGRAMACION',1,'1111',9,0,0,15),(4,'GEOMETRIA ANALITICA',1,'1108',9,0,0,15),(5,'INTRODUCCION A LA INGENIERIA EN COMPUTACION',1,'1112',6,0,0,15),(6,'ALGEBRA LINEAL',2,'62',9,0,0,15),(7,'CALCULO VECTORIAL',2,'63',9,0,0,15),(8,'COMUNICACION',2,'1209',8,0,0,15),(9,'EMPRENDIMIENTO 1',2,'1210',8,0,0,15),(10,'PROGRAMACION ORIENTADA A OBJETOS',2,'1203',8,0,0,15),(11,'TALLER DE CREATIVIDAD E INNOVACION',2,'1211',3,0,0,15),(12,'ECUACIONES DIFERENCIALES',3,'1303',9,0,0,15),(13,'ELECTRICIDAD Y MAGNETISMO',3,'71',11,1,0,15),(14,'ESTRUCTURA DE DATOS',3,'190',8,0,0,15),(15,'METODOS NUMERICOS',3,'480',9,0,0,15),(16,'EMPRENDIMIENTO 2',3,'1311',8,0,0,15),(17,'BASES DE DATOS 1',4,'1417',8,0,0,15),(18,'DISPOSITIVOS ELECTRONICOS (L)',4,'1522',10,1,0,15),(19,'EMPRENDIMIENTO 3',4,'1418',8,0,0,15),(20,'MATEMATICAS DISCRETAS',4,'1419',9,0,0,15),(21,'PROBABILIDAD Y ESTADISTICA',4,'712',9,0,0,15),(22,'ADMINISTRACION DE PROYECTOS',5,'1503',8,0,0,15),(23,'DISEÑO LOGICO',5,'1521',10,1,0,15),(24,'DISEÑO Y ANALISIS DE ALGORITMOS',5,'1500',9,1,0,15),(25,'LENGUAJES FORMALES Y AUTOMATAS',5,'442',8,0,0,15),(26,'PROGRAMACION WEB 1',5,'1504',9,0,0,15),(27,'COMPILADORES',6,'434',8,0,0,15),(28,'DISEÑO DE SISTEMAS DIGITALES',6,'1604',10,1,0,15),(29,'INGENIERIA DE SOFTWARE',6,'1605',8,0,0,15),(30,'SISTEMAS OPERATIVOS',6,'840',8,0,0,15),(31,'MICROPROCESADORES Y MICROCONTROLADORES',7,'1800',10,1,0,15),(32,'PROGRAMACION WEB 2',7,'1718',9,0,0,15),(33,'REDES DE COMPUTADORAS 1',7,'1719',10,1,0,15),(34,'SISTEMAS DE INFORMACION',7,'789',8,0,0,15),(35,'BASES DE DATOS 2',8,'1810',8,0,0,15),(36,'HABILIDADES DIRECTIVAS',8,'1917',8,0,0,15),(37,'PROGRAMACION MOVIL 1',8,'1812',9,0,0,15),(38,'REDES DE COMPUTADORAS 2',8,'1813',8,0,0,15),(39,'INTELIGENCIA ARTIFICIAL',9,'406',8,0,0,15),(40,'MINERIA DE DATOS',9,'1908',8,0,0,15),(41,'SEGURIDAD INFORMATICA',9,'1705',8,0,0,15),(42,'INSTRUMENTACION Y CONTROL',7,'1627',8,0,1,15),(43,'ROBOTICA',8,'2128',8,0,1,15),(44,'TEMAS ESPECIALES DE COMPUTACION 1',6,'167',8,0,1,15),(45,'TEMAS ESPECIALES DE PROGRAMACION 2',9,'310',8,0,1,15),(46,'INSTRUMENTACION Y CONTROL',7,'1627',8,0,1,15),(47,'PROGRAMACION DE VIDEOJUEGOS 1',7,'170',8,0,1,15),(48,'TEMAS ESPECIALES DE REDES',9,'312',8,0,1,15),(49,'PROYECTO ESCUELA-INDUSTRIA',8,'1003',8,0,1,15),(50,'TEMAS ESPECIALES DE SEGURIDAD INFORMATICA',9,'313',8,0,1,15),(51,'GRAFICACION POR COMPUTADORA',6,'1910',8,0,1,15),(52,'SEMINARIO INGENIERIA EN COMPUTACION',9,'18',8,0,1,15),(53,'TEMAS ESPECIALES DE COMPUTACION 2',7,'171',8,0,1,15),(54,'TEMAS ESPECIALES DE COMPUTACION 3',8,'175',8,0,1,15),(55,'PROGRAMACION DE VIDEOJUEGOS 2',8,'174',8,0,1,15),(56,'PROCESAMIENTO DIGITAL DE IMAGENES',8,'1916',8,0,1,15),(57,'ADMINISTRACION DE SISTEMAS MULTIUSUARIOS',8,'8',8,0,1,15);
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carreras` (
  `id_carrera` int NOT NULL AUTO_INCREMENT,
  `nombre_carrera` varchar(50) NOT NULL,
  `clave` varchar(50) DEFAULT NULL,
  `id_facultad` varchar(50) NOT NULL DEFAULT 'Fes Aragon',
  `area` int NOT NULL,
  PRIMARY KEY (`id_carrera`),
  UNIQUE KEY `nombre_carrera` (`nombre_carrera`),
  UNIQUE KEY `clave` (`clave`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras`
--

LOCK TABLES `carreras` WRITE;
/*!40000 ALTER TABLE `carreras` DISABLE KEYS */;
INSERT INTO `carreras` VALUES (15,'Ingenieria En Computación',NULL,'FES Aragón',1),(16,'Ingenieria Eléctrica Electrónica',NULL,'FES Aragon',1),(17,'Ingenieria Mecánica',NULL,'FES Aragon',1),(18,'Ingenieria Civil',NULL,'FES Aragon',1),(19,'Ingenieria Industrial',NULL,'FES Aragon',1),(20,'Derecho',NULL,'FES Aragon',3),(21,'Economia',NULL,'FES Aragon',3),(22,'Comunicacion y periodismo',NULL,'FES Aragon',3),(23,'Relaciones Internacionales',NULL,'FES Aragon',3),(24,'Planificacion para el desarrollo Agropecuario',NULL,'FES Aragon',3),(25,'Sociologia',NULL,'FES Aragon',3),(26,'Arquitectura',NULL,'FES Aragon',4),(27,'Pedagogía',NULL,'FES Aragon',4),(28,'Diseño Industrial',NULL,'FES Aragon',4);
/*!40000 ALTER TABLE `carreras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `id_grupo` int NOT NULL AUTO_INCREMENT,
  `clave` int NOT NULL,
  `cupo` int NOT NULL,
  `horario` varchar(50) NOT NULL,
  `salon` varchar(50) NOT NULL,
  `id_profesor` int NOT NULL,
  PRIMARY KEY (`id_grupo`),
  KEY `id_profesor` (`id_profesor`),
  CONSTRAINT `grupo_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id_prof`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (81,1810,50,'11:00-15:00','A2107',1),(82,6789,56,'9:00-10:30','A2107',5),(83,6789,40,'7:30-9:00','A4108',2),(84,2659,42,'7:00-9:00','A507',6),(85,4455,34,'13:00-14:30','A9208',19),(86,2856,50,'15:00-16:00','A8211',43),(87,3467,45,'19:00-20:30','A11203',11),(88,3895,30,'8:30-10:00','A2105',9),(89,45896,65,'11:20-13:00','A3106',4),(90,4567,48,'20:00-21:00','A8109',15),(91,1203,10,'11:30-13:00','A214',3),(92,1110,67,'14:00-15:30','A256',12),(93,1109,56,'17:00-18:24','A204',6),(94,1108,20,'18:10-19:00','A205',8),(95,1112,35,'19:20-20:40','A203',42),(96,1209,47,'16:15-17:30','A8109',20),(97,1210,60,'10:15-11:00','A9204',13),(98,1267,35,'12:10-13:45','A5208',14),(99,1568,40,'17:00-18:56','A3106',6),(100,2259,56,'10:30-11:00','A2107',16),(101,2060,34,'7:00-8:20','A4108',6),(102,2259,47,'11:30-13:00','A507',7),(103,2557,51,'11:20-13:00','A9208',18),(104,2358,39,'20:00-21:00','A8211',20),(105,2007,61,'11:30-13:00','A11203',4),(106,2658,58,'14:00-15:30','A2105',3),(107,2710,45,'17:00-18:24','A3106',19),(108,2308,38,'18:10-19:00','A205',41),(109,2408,60,'19:20-20:40','A203',8),(110,2657,55,'19:20-20:40','A8109',20),(111,2667,54,'16:15-17:30','A9204',20),(112,2807,60,'10:15-11:00','A5208',13),(113,2210,34,'12:10-13:45','A3106',14),(114,2260,35,'17:00-18:56','A2107',6),(115,2507,45,'10:30-11:00','A3106',16),(116,2707,46,'7:00-8:20','A2107',6),(117,2709,47,'11:30-13:00','A4108',7),(118,2711,60,'11:20-13:00','A507',18),(119,2712,56,'17:00-18:56','A9208',20),(120,2711,57,'10:30-11:00','A9208',4);
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripciones`
--

DROP TABLE IF EXISTS `inscripciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscripciones` (
  `id_inscripciones` int NOT NULL AUTO_INCREMENT,
  `id_asignatura` int NOT NULL,
  `id_alumno` int NOT NULL,
  `id_grupo` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `horario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_inscripciones`),
  KEY `id_asignatura` (`id_asignatura`),
  KEY `id_alumno` (`id_alumno`),
  KEY `id_grupo` (`id_grupo`),
  CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`id_asignatura`) REFERENCES `asignatura` (`id_asignatura`),
  CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`idalumno`),
  CONSTRAINT `inscripciones_ibfk_3` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripciones`
--

LOCK TABLES `inscripciones` WRITE;
/*!40000 ALTER TABLE `inscripciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscripciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor` (
  `id_prof` int NOT NULL AUTO_INCREMENT,
  `num_trabajador` bigint NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `paterno` varchar(25) NOT NULL,
  `materno` varchar(25) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `rfc` varchar(50) NOT NULL,
  `id_facultad` varchar(50) NOT NULL DEFAULT 'Fes Aragon',
  PRIMARY KEY (`id_prof`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (1,28070123,'Martin','Ordoñez','Rosales','martinordonez7e1@aragon.unam.mx','ORAM7208010X1','Fes Aragon'),(2,28070234,'Sergio','Hernandez','Lopez','sergiohernandezhel@aragon.unam.mx','HELS7209019S3','Fes Aragon'),(3,28070345,'Aaron','Velasco','Agustin','aaronvelazcovea@aragon.unam.mx','VEAA7602129T2','Fes Aragon'),(4,28070456,'Gerardo','Gonzalez','Hernandez','gerardogonzalezgoh@aragon.unam.mx','GOHG7508159H7','Fes Aragon'),(5,28070567,'Leobardo','Hernandez','Audelo','leoher34@aragon.unam.mx','HEAL7611251J9','Fes Aragon'),(6,28070678,'Gastaldi','Perez','Juan','juangastaldi9a@aragon.unam.mx','GEJG7503033G1','Fes Aragon'),(7,28070789,'Elizabeth','Juarez','Robles','elizabethjuarezjur@aragon.unam.mx','JUER7411011B4','Fes Aragon'),(8,28070890,'Jorge Iván','Campos','Bravo','jorgecampos47@aragon.unam.mx','CAJH7704039C0','Fes Aragon'),(9,28070901,'Arturo','Rodríguez','García','arturorodriguez35@aragon.unam.mx','ROGA7508011C0','Fes Aragon'),(10,28071012,'Rafael','Gonzalez','Betancourt','rafaelgonzalezma2@aragon.unam.mx','GOBA7509241W0','Fes Aragon'),(11,28071134,'Miguel Angel','Sanchez','Hernandez','miguelsanchezt32@aragon.unam.mx','MIHS7606139K7','Fes Aragon'),(12,28071245,'Efren','Lozano','Mendez','efrenlozanogg2@aragon.unam.mx','LOEF7507082Q9','Fes Aragon'),(13,28071356,'Alejandro','Suarez','Herrera','alejandrosuarezsuh@aragon.unam.mx','SUAH7407011K0','Fes Aragon'),(14,28071467,'Jorge Arturo','Lopez','Hernandez','jorgelopez91@aragon.unam.mx','LOHJ7605012M2','Fes Aragon'),(15,28071578,'Jonathan','Martinez','Romero','jonathanmartinezky7@aragon.unam.mx','MAAR7502019B0','Fes Aragon'),(16,28071689,'Cesar Francisco','German','Rosas','cesargermanx9@aragon.unam.mx','CEGR7406111S1','Fes Aragon'),(17,28071790,'Omar','Mendoza','Gonzalez','omarmendoza564@aragon.unam.mx','OMAG7507013A9','Fes Aragon'),(18,28071801,'Daniel Fernando','Palma','Lopez','fernandopalmaq6@aragon.unam.mx','DAFP7607129X5','Fes Aragon'),(19,28071912,'Juan Carlos','Camacho','Alvarez','juancamachocaa@aragon.unam.mx','JUCA7602281Z0','Fes Aragon'),(20,28072023,'Carlos Alberto','Parrales','Parrales','carlosparralesgi2@aragon.unam.mx','CAPC7505120N3','Fes Aragon'),(41,28070123,'Martin','Ordoñez','Rosales','martinordonez7e1@aragon.unam.mx','ORAM7208010X1','Fes Aragon'),(42,28070234,'Sergio','Hernandez','Lopez','sergiohernandezhel@aragon.unam.mx','HELS7209019S3','Fes Aragon'),(43,28070345,'Aaron','Velasco','Agustin','aaronvelazcovea@aragon.unam.mx','VEAA7602129T2','Fes Aragon'),(44,28070456,'Gerardo','Gonzalez','Hernandez','gerardogonzalezgoh@aragon.unam.mx','GOHG7508159H7','Fes Aragon'),(45,28070567,'Leobardo','Hernandez','Audelo','leoher34@aragon.unam.mx','HEAL7611251J9','Fes Aragon'),(46,28070678,'Gastaldi','Perez','Juan','juangastaldi9a@aragon.unam.mx','GEJG7503033G1','Fes Aragon'),(47,28070789,'Elizabeth','Juarez','Robles','elizabethjuarezjur@aragon.unam.mx','JUER7411011B4','Fes Aragon'),(48,28070890,'Jorge Iván','Campos','Bravo','jorgecampos47@aragon.unam.mx','CAJH7704039C0','Fes Aragon'),(49,28070901,'Arturo','Rodríguez','García','arturorodriguez35@aragon.unam.mx','ROGA7508011C0','Fes Aragon'),(50,28071012,'Rafael','Gonzalez','Betancourt','rafaelgonzalezma2@aragon.unam.mx','GOBA7509241W0','Fes Aragon'),(51,28071134,'Miguel Angel','Sanchez','Hernandez','miguelsanchezt32@aragon.unam.mx','MIHS7606139K7','Fes Aragon'),(52,28071245,'Efren','Lozano','Mendez','efrenlozanogg2@aragon.unam.mx','LOEF7507082Q9','Fes Aragon'),(53,28071356,'Alejandro','Suarez','Herrera','alejandrosuarezsuh@aragon.unam.mx','SUAH7407011K0','Fes Aragon'),(54,28071467,'Jorge Arturo','Lopez','Hernandez','jorgelopez91@aragon.unam.mx','LOHJ7605012M2','Fes Aragon'),(55,28071578,'Jonathan','Martinez','Romero','jonathanmartinezky7@aragon.unam.mx','MAAR7502019B0','Fes Aragon'),(56,28071689,'Cesar Francisco','German','Rosas','cesargermanx9@aragon.unam.mx','CEGR7406111S1','Fes Aragon'),(57,28071790,'Omar','Mendoza','Gonzalez','omarmendoza564@aragon.unam.mx','OMAG7507013A9','Fes Aragon'),(58,28071801,'Daniel Fernando','Palma','Lopez','fernandopalmaq6@aragon.unam.mx','DAFP7607129X5','Fes Aragon'),(59,28071912,'Juan Carlos','Camacho','Alvarez','juancamachocaa@aragon.unam.mx','JUCA7602281Z0','Fes Aragon'),(60,28072023,'Carlos Alberto','Parrales','Parrales','carlosparralesgi2@aragon.unam.mx','CAPC7505120N3','Fes Aragon'),(61,28072134,'Rafael','Gonzales','Betancourt','rafaglz@aragon.unam.mx','RAFG7508231X7','Fes Aragon'),(62,28072245,'Dzoara Ivette','Anaya','Manila','dzoaraanayaq5@aragon.unam.mx','DAIV7506151L8','Fes Aragon'),(63,28072356,'Martin','Romero','Ugalde','martinromerorou@aragon.unam.mx','MAUR7606221G5','Fes Aragon'),(64,28072467,'Alfredo','Mondargon','Escobar','alfredomondragontg8@aragon.unam.mx','MOEA7510221D6','Fes Aragon'),(65,28072578,'Robeto MIsael','Soberanes','Jaime','misalesoberanesr8@aragon.unam.mx','JASA7608039R5','Fes Aragon'),(66,28072689,'Jose Francisco ','Salgado','Rodriguez','franciscosalgadoi2@aragon.unam.mx','ESJA7411140A8','Fes Aragon'),(67,28072790,'Enrique','Garcia','Guzman','enriquegarcia6u4@aragon.unam.mx','SAFC7605079J0','Fes Aragon'),(68,28072801,'Maria Angelica','Feria','Victoria','angelicaferiaf6@aragon.unam.mx','EGUZ7607075Z3','Fes Aragon'),(69,28072912,'Juan ','Gastaldi','Perez','juangastaldi9a@aragon.unam.mx','VEVI7409232G1','Fes Aragon'),(70,28073023,'Victor Manuel','Sanchez','Sanchez','victorsanchezh0@aragon.unam.mx','JVSZ7608037C9','Fes Aragon'),(71,28073801,'Juan Manuel','Arellano','Orozco','juanmanuelioro12@aragon.unam.mx','AROJ8507224A2','Fes Aragon'),(72,28073912,'Esteban','Ramirez','Lazos','estebanralaz03@aragon.unam.mx','RAME8804199F4','Fes Aragon'),(73,28074023,'Juan Carlos','Ramos','Marquez','jcramos345@aragon.unam.mx','RAMJ750828P32','Fes Aragon'),(74,28074134,'Everardo','Solis','Alcantar','esolis768@aragon.unam.mx','SOAE800707H71','Fes Aragon'),(75,28074245,'Carlos Alberto','Parrales','Castaneda','caparrales123@aragon.unam.mx','PACC741010C91','Fes Aragon'),(76,28074356,'Luis Armando','Vieyra','Reboyo','lavieyra654@aragon.unam.mx','VIRE7506239X8','Fes Aragon'),(77,28074467,'Alfredo','Mondragon','Escobar','amondragon321@aragon.unam.mx','MOES7605292Q4','Fes Aragon'),(78,28074578,'Berenice Itzel','Falcon','Arellano','bfalcon459@aragon.unam.mx','FAES760611Q37','Fes Aragon'),(79,28074689,'Ma. Del Pilar','Garcia','Villanueva','pdgarcia777@aragon.unam.mx','FARV750920N11','Fes Aragon'),(80,28074790,'Ernesto','Penalosa','Romero','epenalosa233@aragon.unam.mx','GAVI7608289F6','Fes Aragon'),(81,28074801,'Jesus Angel','Romero','Andalon','jromero564@aragon.unam.mx','PEAR760607G3','Fes Aragon'),(82,28074912,'Joel Alfredo','Perez','Valdes','joperez998@aragon.unam.mx','ROMA7604112X2','Fes Aragon'),(83,28075134,'Gabriel','Ortiz','Cordero','gortiz456@aragon.unam.mx','ORCA7603250Q6','Fes Aragon'),(84,28075245,'Alejandro','Perez','Guzman','aperez312@aragon.unam.mx','CANA7508019R1','Fes Aragon'),(85,28075356,'Jorge Luis','Candelario','Alavez','jcandelario876@aragon.unam.mx','ARGR7405252D5','Fes Aragon'),(86,28075467,'Victor Manuel','Sanchez','Morales','vmsanchez257@aragon.unam.mx','PEJU7405070H8','Fes Aragon'),(87,28075578,'Clara Yahaiera','Islas','Hernandez','cyislas392@aragon.unam.mx','SEGJ760904L56','Fes Aragon'),(88,28075689,'Matilde','Colunga','Vazquez','mcolunga678@aragon.unam.mx','GARC7505068Q5','Fes Aragon'),(89,28075790,'Ana Claudia','Reyes','Cruz','acruz321@aragon.unam.mx','CRLU740719V4','Fes Aragon'),(90,28075801,'Anaid','Alba','Villa','aavilla485@aragon.unam.mx','PICB7509241M1','Fes Aragon'),(91,28075912,'Arturo','Rodriguez','Garcia','arodgriguez637@aragon.unam.mx','VERB741111Q97','Fes Aragon'),(92,28076023,'Jorge Ivan','Campos','Bravo','jcampos156@aragon.unam.mx','OLEM740614J8','Fes Aragon'),(93,28076134,'Blanca Pamela','Aburto','Camacho','paburto222@aragon.unam.mx','TOFA741212J5','Fes Aragon'),(94,28076245,'Salomon','Hernandez','Galicia','shernandez548@aragon.unam.mx','CHPL750825L7','Fes Aragon'),(95,28076356,'Efren','Guerrero','Santamaria','eguerrero789@aragon.unam.mx','CABJ7508242N1','Fes Aragon'),(96,28076467,'Cuauhtemoc','Chiapa','Monroy','cchiapa101@aragon.unam.mx','ORNA7507070S4','Fes Aragon'),(97,28076578,'Jose Gil','Juarez','Palma','gjuarez123@aragon.unam.mx','CAOR7507082F0','Fes Aragon'),(98,28076689,'Minerva','Segura','Rauda','msegura775@aragon.unam.mx','CAGM7506263S9','Fes Aragon'),(99,28076790,'Alma Rosa','Gutierrez','Castillo','rgutierrez393@aragon.unam.mx','CAGG750918M9','Fes Aragon'),(100,28076801,'Blanca Estela','Cruz','Luevano','ecruz302@aragon.unam.mx','GORV750520X8','Fes Aragon'),(101,28076912,'Gabriella','Piccinelli','Bocchi','gpiccinelli561@aragon.unam.mx','MEPE7510020T3','Fes Aragon'),(102,28077023,'Abel','Verde','Cruz','avcrc734@aragon.unam.mx','HERH7507262G1','Fes Aragon'),(103,28077134,'Carlos','Oliver','Morales','colivermorales872@aragon.unam.mx','GOVA7510041W8','Fes Aragon'),(104,28077245,'Fausto','Torres','Torres','ftorres943@aragon.unam.mx','HEMI7510038P4','Fes Aragon'),(105,28077356,'Martin','Ordonez','Rosales','mordonez678@aragon.unam.mx','CEMU7508031Z9','Fes Aragon'),(106,28077467,'Martha','Chapa','Plata','mchapa299@aragon.unam.mx','JOVA7507179A3','Fes Aragon'),(107,28077578,'Jesus','Hernandez','Cabrera','jhcabrera512@aragon.unam.mx','JORE7506070A0','Fes Aragon'),(108,28077689,'Carlos Fernando','Ortega','Nava','cfo120@aragon.unam.mx','ZUVI7505055B4','Fes Aragon'),(109,28077790,'Rafael','Canto','Gallo','rcanto876@aragon.unam.mx','CADI750807X7','Fes Aragon'),(110,28077801,'Ramon','Patino','Rodriguez','rpatino234@aragon.unam.mx','AVGA750924X3','Fes Aragon'),(111,28077912,'Gloria Samantha','Pelcastre','Ramirez','gsapelcastre315@aragon.unam.mx','PEHU7510032P8','Fes Aragon'),(112,28078023,'Manuel Alejandro','Alvarez','Soriano','malvarez837@aragon.unam.mx','GALR7507099B3','Fes Aragon'),(113,28078134,'Moises','Cervantes','Patino','mcervantes102@aragon.unam.mx','NERO7506181T0','Fes Aragon'),(114,28078245,'Jaime Roberto Misael','Soberanes','Jaime','jsoberanes550@aragon.unam.mx','VALG741027B9','Fes Aragon'),(115,28078356,'Victor Manuel','Gonzalez','Garcia','vgonzalez854@aragon.unam.mx','CELE7504126G9','Fes Aragon'),(116,28078467,'Jose Alfredo','Fernandez','Mendoza','jfernandez566@aragon.unam.mx','PEJU7511131C2','Fes Aragon'),(117,28078578,'Carmen','Ortiz','Alvarez','cortiz212@aragon.unam.mx','ALAC7508229R7','Fes Aragon'),(118,28078689,'Enrique','Becerra','Juarez','ebecerra257@aragon.unam.mx','STEE7508255Y9','Fes Aragon');
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-02  3:05:45

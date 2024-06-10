CREATE DATABASE  IF NOT EXISTS `carta_intercomidas` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `carta_intercomidas`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: carta_intercomidas
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `carta`
--

DROP TABLE IF EXISTS `carta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `tipo` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carta`
--

LOCK TABLES `carta` WRITE;
/*!40000 ALTER TABLE `carta` DISABLE KEYS */;
INSERT INTO `carta` VALUES (1,'Margarita Clásica','Una mezcla refrescante de tequila, jugo de lima y licor de naranja, servida con sal en el borde del vaso.',1000.00,'bebida'),(2,'Piña Colada','Un cóctel tropical cremoso hecho con ron, crema de coco y jugo de piña, decorado con una rodaja de piña y una cereza.',1000.00,'bebida'),(3,'Mojito','Bebida cubana que combina ron blanco, jugo de lima, azúcar, agua con gas y hojas de menta fresca.',1000.00,'bebida'),(4,'Gin Tonic','Una mezcla sencilla y elegante de ginebra y agua tónica, adornada con una rodaja de lima o limón.',1000.00,'bebida'),(5,'Bloody Mary','Cóctel salado y picante hecho con vodka, jugo de tomate, salsa Worcestershire, tabasco, sal y pimienta, decorado con un tallo de apio.',1000.00,'bebida'),(6,'Daiquiri de Fresa','Un cóctel dulce y afrutado hecho con ron, jugo de lima, jarabe de azúcar y fresas frescas.',1000.00,'bebida'),(7,'Negroni','Mezcla amarga y aromática de ginebra, vermut rojo y Campari, servida con una rodaja de naranja.',1000.00,'bebida'),(8,'Whisky Sour','Combinación clásica de whisky, jugo de limón, azúcar y una pizca de clara de huevo, servida con una cereza.',1000.00,'bebida'),(9,'Cosmopolitan','Cóctel elegante hecho con vodka, licor de naranja, jugo de arándano y un toque de jugo de lima, decorado con una tira de cáscara de naranja.',1000.00,'bebida'),(10,'Caipirinha','Bebida brasileña hecha con cachaça, azúcar y trozos de lima, servida con hielo triturado.',1001.00,'bebida'),(11,'Bife de Chorizo','Corte de carne de res jugoso y tierno, servido con papas fritas y ensalada.',1000.00,'plato_principal'),(12,'Paella Valenciana','Plato tradicional español con arroz, mariscos, pollo y verduras, sazonado con azafrán.',1000.00,'plato_principal'),(13,'Pollo a la Parrilla','Pechuga de pollo marinada y asada a la parrilla, acompañada de vegetales al vapor.',1000.00,'plato_principal'),(14,'Lasagna Bolognesa','Capas de pasta con salsa bolognesa, bechamel y queso gratinado.',1000.00,'plato_principal'),(15,'Salmón al Horno','Filete de salmón horneado con hierbas y limón, servido con espárragos y puré de papas.',1000.00,'plato_principal'),(16,'Tacos de Carnitas','Tortillas de maíz rellenas de cerdo desmenuzado, cebolla, cilantro y salsa.',1000.00,'plato_principal'),(17,'Risotto de Hongos','Arroz cremoso cocido con hongos frescos, parmesano y un toque de vino blanco.',1000.00,'plato_principal'),(18,'Fettuccine Alfredo','Pasta fettuccine en una cremosa salsa de mantequilla, ajo y queso parmesano.',1000.00,'plato_principal'),(19,'Costillas BBQ','Costillas de cerdo asadas a la parrilla y bañadas en salsa barbacoa, servidas con ensalada de col.',1000.00,'plato_principal'),(20,'Enchiladas de Pollo','Tortillas de maíz rellenas de pollo, bañadas en salsa roja y gratinadas con queso.',1000.00,'plato_principal'),(21,'Tarta de Manzana','Deliciosa tarta de manzana con una base de masa crujiente y relleno de manzanas caramelizadas.',1000.00,'postre'),(22,'Cheesecake de Fresa','Postre cremoso hecho con queso crema y fresas frescas sobre una base de galletas trituradas.',1000.00,'postre'),(23,'Brownie de Chocolate','Pastel denso y rico en chocolate, servido caliente con una bola de helado de vainilla y salsa de chocolate.',1000.00,'postre'),(24,'Tiramisú','Postre italiano hecho con capas de bizcocho empapado en café y crema de mascarpone espolvoreado con cacao en polvo.',1000.00,'postre'),(25,'Creme Brûlée','Custard cremoso con una capa de azúcar caramelizado en la parte superior.',1000.00,'postre'),(26,'Helado de Vainilla con Chocolate Caliente','Tres bolas de helado de vainilla servidas con salsa de chocolate caliente y almendras tostadas.',1000.00,'postre'),(27,'Profiteroles','Pequeños bocados de masa rellenos de crema pastelera y cubiertos con chocolate derretido.',1000.00,'postre'),(28,'Mousse de Chocolate','Postre ligero y esponjoso hecho con chocolate derretido y crema batida, servido en copas individuales.',1000.00,'postre'),(29,'Pastel de Zanahoria','Pastel húmedo y especiado con trozos de zanahoria, nueces y cubierto con glaseado de queso crema.',1000.00,'postre'),(30,'Crepe de Nutella y Plátano','Crepe fina untada con Nutella y rellena de rodajas de plátano, doblada y espolvoreada con azúcar glas.',1000.00,'postre');
/*!40000 ALTER TABLE `carta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-10  5:11:01

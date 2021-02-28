-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: fseletro
-- ------------------------------------------------------
-- Server version	5.6.12-log

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
-- Table structure for table `cadastrocliente`
--

DROP TABLE IF EXISTS `cadastrocliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastrocliente` (
  `idcadastrocliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `data_nasc` date NOT NULL,
  `cpf` char(14) NOT NULL,
  `sexo` varchar(10) NOT NULL DEFAULT 'F ou M',
  `nacionalidade` varchar(45) NOT NULL DEFAULT 'Brasil',
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`idcadastrocliente`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastrocliente`
--

LOCK TABLES `cadastrocliente` WRITE;
/*!40000 ALTER TABLE `cadastrocliente` DISABLE KEYS */;
INSERT INTO `cadastrocliente` VALUES (1,'Abel Silva','2000-12-01','35452290740','M','Brasil','abelsilva@gmail.com'),(2,'Bruno Silva','2000-12-02','35452290741','M','Argentina','bruno@gmail.com'),(3,'Caio Silva','2000-12-03','35452290742','M','Brasil','caio@gmail.com'),(4,'Camila Silva','2000-12-04','35452290743','F','Brasil','camila@gmail.com'),(5,'Daiane Silva','2000-12-05','35452290744','F','Chile','daiana@gmail.com'),(6,'Diogo Silva','2000-12-06','35452290745','M','Portugal','diogo@gmail.com'),(7,'Elisa Silva','2000-12-07','35452290746','F','Brasil','elisa@gmail.com'),(8,'Fabiana Silva','2000-12-08','35452290747','F','Brasil','fabiana@gmail.com'),(9,'Gabriel Silva','2000-12-05','35452290751','M','Brasil','gabriel@gmail.com'),(10,'Maria Silva','2000-12-05','35452290752','F','Brasil','maria@gmail.com');
/*!40000 ALTER TABLE `cadastrocliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(60) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Geladeira'),(2,'Fogão'),(3,'Micro-ondas'),(4,'Lava-louças'),(5,'Lavadora');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `msg` varchar(300) DEFAULT NULL,
  `dia` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) DEFAULT NULL,
  `descricao` varchar(100) NOT NULL,
  `preco` decimal(8,2) NOT NULL,
  `precofinal` decimal(8,2) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  PRIMARY KEY (`idproduto`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,1,'Geladeira Brastemp Frost Free Side Inverse 540 litros',6389.00,5019.00,'./imagens/geladeira1.jpeg'),(2,1,'Geladeira Brastemp Branca Frost Free 375 litros',2068.00,1910.90,'./imagens/geladeira2.jpeg'),(3,1,'Geladeira Frost Free Consul Prata 340 litros',2199.00,2069.00,'./imagens/geladeira3.jpeg'),(4,2,'Fogão 4 Bocas Consul Inox com Mesa de Vidro',1209.00,1129.00,'./imagens/fogao1.jpeg'),(5,2,'Fogão de Piso 4 Bocas Atlas Monaco com Acendimento Automático',600.00,519.70,'./imagens/fogao2.jpeg'),(6,3,'Micro-ondas Consul 32 litros Inox 220V',580.00,409.88,'./imagens/microondas01.jpeg'),(7,3,'Micro-ondas 25L Espelhado Philco 220V',508.70,464.53,'./imagens/microondas02.jpeg'),(8,3,'Micro-ondas Electrolux 20L Branco',459.00,436.05,'./imagens/microondas03.jpeg'),(9,4,'Lava-Louça Electroclux Inox com 10 Serviços, 6 Programas de Lavagem',3500.00,2799.90,'./imagens/lavalouca1.jpeg'),(10,4,'Lava-Louça Compacta com 8 Serviços Branca 127V Brastemp',1970.50,1730.61,'./imagens/lavalouca2.jpeg'),(11,5,'Lavadora de Roupas Brastemp 11 kg com Turbo Performance Branca',1690.00,1214.10,'./imagens/lavadoraderoupas1.jpeg'),(12,5,'Lavadora de Roupas Philco Inverter 12 kg',2399.00,2179.90,'./imagens/lavadoraderoupas2.jpeg');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fseletro'
--

--
-- Dumping routines for database 'fseletro'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04  0:37:42

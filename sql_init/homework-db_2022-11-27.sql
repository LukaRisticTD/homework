# ************************************************************
# Sequel Ace SQL dump
# Version 20039
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 8.0.31)
# Database: homework-db
# Generation Time: 2022-11-27 18:57:08 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table proizvodi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `proizvodi`;

CREATE TABLE `proizvodi` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `proizvodjac_id` int NOT NULL,
  `naziv` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cena` decimal(9,2) NOT NULL,
  `opis` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `proizvodi` WRITE;
/*!40000 ALTER TABLE `proizvodi` DISABLE KEYS */;

INSERT INTO `proizvodi` (`id`, `proizvodjac_id`, `naziv`, `cena`, `opis`)
VALUES
	(1,1,'fanta',130.00,NULL),
	(2,2,'fanta',135.00,NULL),
	(3,3,'fanta',140.00,NULL),
	(4,1,'koca',135.00,NULL),
	(5,2,'sprajt',130.00,NULL),
	(6,3,'koca',140.00,NULL),
	(7,1,'sprajt',120.00,NULL),
	(8,2,'klaker',100.00,NULL),
	(9,3,'orandzina',120.00,NULL),
	(10,1,'kokta',110.00,NULL);

/*!40000 ALTER TABLE `proizvodi` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table proizvodjac
# ------------------------------------------------------------

DROP TABLE IF EXISTS `proizvodjac`;

CREATE TABLE `proizvodjac` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `proizvodjac` WRITE;
/*!40000 ALTER TABLE `proizvodjac` DISABLE KEYS */;

INSERT INTO `proizvodjac` (`id`, `naziv`)
VALUES
	(1,'Marko'),
	(2,'Djordje'),
	(3,'Filip');

/*!40000 ALTER TABLE `proizvodjac` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE DATABASE  IF NOT EXISTS `halal_scanner_new` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `halal_scanner_new`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: halal_scanner_new
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `halal`
--

DROP TABLE IF EXISTS `halal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `halal` (
  `ingredient_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`ingredient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `halal`
--

LOCK TABLES `halal` WRITE;
/*!40000 ALTER TABLE `halal` DISABLE KEYS */;
INSERT INTO `halal` VALUES (1,'Chicken','Tender and lean meat commonly used in various dishes.'),(2,'Rice','Staple grain providing energy and versatility in cooking.'),(3,'Olive Oil','Heart-healthy oil with a distinct flavor.'),(4,'Garlic','Aromatic bulb used to enhance the taste of dishes.'),(5,'Onion','Essential vegetable for flavoring and cooking.'),(6,'Tomato','Juicy and versatile fruit used in many cuisines.'),(7,'Cucumber','Refreshing vegetable commonly used in salads.'),(8,'Lettuce','Crisp leafy green vegetable used in salads and sandwiches.'),(9,'Lemon','Citrus fruit with a tangy flavor used in cooking and beverages.'),(10,'Fish','Nutrient-rich source of lean protein.'),(11,'Beef','Versatile meat with a rich flavor profile.'),(12,'Lamb','Meat from young sheep with a distinct taste.'),(13,'Spinach','Nutrient-dense leafy green used in various dishes.'),(14,'Carrot','Sweet and crunchy root vegetable.'),(15,'Bell Pepper','Colorful and flavorful addition to various dishes.'),(16,'Potato','Starchy tuber used in a variety of recipes.'),(17,'Honey','Natural sweetener with various health benefits.'),(18,'Yogurt','Fermented dairy product with probiotic properties.'),(19,'Mint','Aromatic herb used to add freshness to dishes.'),(20,'Basil','Fragrant herb often used in Italian cuisine.'),(21,'Almonds','Nutrient-rich nuts with a crunchy texture.'),(22,'Walnuts','Nutty-flavored nuts with a soft texture.'),(23,'Chickpeas','Protein-rich legumes used in salads and stews.'),(24,'Lentils','Small legumes with high protein content.'),(25,'Quinoa','Nutrient-rich grain with a nutty flavor.'),(26,'Oats','Whole grain with various health benefits.'),(27,'Dates','Sweet and nutritious dried fruit.'),(28,'Apples','Sweet and crunchy fruit often eaten fresh.'),(29,'Oranges','Citrus fruit with a sweet and tart flavor.'),(30,'Strawberries','Juicy and sweet berries enjoyed fresh or in desserts.'),(31,'Avocado','Creamy and nutrient-dense fruit.'),(32,'Broccoli','Cruciferous vegetable with high nutritional value.'),(33,'Cauliflower','Versatile vegetable used in various recipes.'),(34,'Zucchini','Mild-flavored squash commonly used in cooking.'),(35,'Paprika','Spice with a mild, sweet flavor.'),(36,'Turmeric','Golden spice with anti-inflammatory properties.'),(37,'Cumin','Warm and aromatic spice commonly used in cooking.'),(38,'Coriander','Aromatic spice with a citrusy flavor.'),(39,'Ginger','Spicy root with various health benefits.'),(40,'Sesame Seeds','Tiny seeds with a nutty flavor used in cooking.'),(41,'Cinnamon','Sweet and warm spice commonly used in desserts.'),(42,'Cardamom','Aromatic spice with a warm and sweet flavor.'),(43,'Cloves','Fragrant spice often used in savory dishes.'),(44,'Nutmeg','Versatile spice with a warm and sweet taste.'),(45,'Fennel','Aromatic spice with a licorice-like flavor.'),(46,'Mustard Seeds','Small seeds with a pungent flavor.'),(47,'Vinegar','Tart liquid used in cooking and dressings.'),(48,'Coconut Milk','Creamy liquid extracted from coconut.'),(49,'Tofu','Plant-based protein source.'),(50,'Green Tea','Healthy beverage with antioxidant properties.');
/*!40000 ALTER TABLE `halal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `haram`
--

DROP TABLE IF EXISTS `haram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `haram` (
  `ingredient_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`ingredient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `haram`
--

LOCK TABLES `haram` WRITE;
/*!40000 ALTER TABLE `haram` DISABLE KEYS */;
INSERT INTO `haram` VALUES (1,'Carrageenan','Common food additive derived from seaweed, used as a thickening agent.'),(2,'Lard','Fat from pig sources, commonly used in cooking and baking.'),(3,'Gelatin','Protein obtained from animal collagen, often found in desserts and gummy candies.'),(4,'Cochineal Extract','Red coloring derived from crushed female cochineal insects.'),(5,'Rennet','Enzyme extracted from the stomach lining of calves, used in cheese production.'),(6,'Shellac','Resin secreted by the lac insect, used as a glazing agent in candies and pills.'),(7,'Confectioner\'s Glaze','Glossy coating made from insect secretions, used in candies.'),(8,'L-cysteine','Amino acid often derived from duck feathers or human hair, used as a dough conditioner.'),(9,'Margarine','Butter substitute made from vegetable oils, may contain non-halal ingredients.'),(10,'Mono- and Diglycerides','Emulsifiers derived from animal or vegetable fats, used in processed foods.'),(11,'Wine','Alcoholic beverage made from fermented grapes or other fruits.'),(12,'Beer','Alcoholic beverage made from fermented grains, such as barley.'),(13,'Whiskey','Distilled alcoholic beverage made from fermented grain mash.'),(14,'Rum','Alcoholic beverage made from sugarcane byproducts.'),(15,'Gelatin-Based Desserts','Desserts containing gelatin as a key ingredient.'),(16,'Pork','Meat from pigs, considered haram in Islamic dietary laws.'),(17,'Ham','Meat from the hind leg of a pig, considered haram.'),(18,'Bacon','Cured and smoked meat from the belly of a pig, considered haram.'),(19,'Sausages','Meat product typically made from ground pork, beef, or poultry.'),(20,'Blood Pudding','Sausage made with pig\'s blood as a key ingredient.'),(21,'Pork Rinds','Fried or roasted skin of a pig, considered haram.'),(22,'Shortening','Solid fat used in baking, may contain non-halal ingredients.'),(23,'Animal-based Broths','Broths made from animal bones or meat, not halal.'),(24,'Fish Sauce','Condiment made from fermented fish, not halal.'),(25,'Oyster Sauce','Sauce made from oysters, not halal.'),(26,'Worcestershire Sauce','Condiment containing anchovies, not halal.'),(27,'Gelatin Capsules','Capsules made from gelatin, commonly used for medications.'),(28,'Rennet-Containing Cheese','Cheese made with rennet, an enzyme derived from calves.'),(29,'Red Wine Vinegar','Vinegar made from red wine, not halal.'),(30,'White Wine Vinegar','Vinegar made from white wine, not halal.'),(31,'Soy Sauce with Alcohol','Soy sauce containing alcohol, not halal.'),(32,'Mouthwash with Alcohol','Mouthwash containing alcohol, not halal.'),(33,'Cologne with Alcohol','Cologne or perfumes containing alcohol, not halal.'),(34,'Lipstick with Carmine','Lipstick containing carmine, a red dye derived from insects.'),(35,'Marshmallows','Sweet confectionery often containing gelatin, not halal.'),(36,'Non-Halal Gummy Candies','Gummy candies containing non-halal ingredients, such as gelatin.'),(37,'Non-Halal Chocolates','Chocolates containing non-halal ingredients, such as alcohol or additives.'),(38,'Non-Halal Ice Cream','Ice cream containing non-halal ingredients, such as alcohol or animal-derived additives.'),(39,'Non-Halal Yogurt','Yogurt containing non-halal ingredients, such as gelatin or animal-based additives.'),(40,'Non-Halal Cakes','Cakes containing non-halal ingredients, such as alcohol or animal-derived additives.'),(41,'Non-Halal Biscuits','Biscuits containing non-halal ingredients, such as alcohol or animal-derived additives.'),(42,'Non-Halal Snack Foods','Snack foods containing non-halal ingredients, such as flavor enhancers or additives.'),(43,'Non-Halal Sauces','Sauces containing non-halal ingredients, such as alcohol or animal-derived additives.'),(44,'Non-Halal Salad Dressings','Salad dressings containing non-halal ingredients, such as alcohol or animal-derived additives.'),(45,'Sample Ingredient 45','Description for Sample Ingredient 45.'),(46,'Sample Ingredient 46','Description for Sample Ingredient 46.'),(47,'Sample Ingredient 47','Description for Sample Ingredient 47.'),(48,'Sample Ingredient 48','Description for Sample Ingredient 48.'),(49,'Sample Ingredient 49','Description for Sample Ingredient 49.'),(50,'Sample Ingredient 50','Description for Sample Ingredient 50.');
/*!40000 ALTER TABLE `haram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,'MOHAMAD NORFADZLY AFZAN BIN KAMARUDIN','mohamadnorjan@yahoo.com','asd','sadxzc','2024-01-10 15:00:49'),(2,'ching chong','norfaieqwan@gmail.com','emang','hello world','2024-01-10 15:04:58'),(3,'fad','asd@gmail.com','asd','ygvhjb nm','2024-01-10 17:59:28'),(4,'koi','mohamadnorjan@yahoo.com','report','makan nasik ket','2024-01-11 13:32:13'),(12,'Chawnima','asd@gmail.com','bakas','hasdajkdhkjas','2024-01-12 10:58:57'),(13,'hello','world@gmail.com','report','testing\r\n','2024-01-19 10:43:58'),(14,'Amirul Imran','hello@gmail.com','test','report','2024-01-19 11:10:37');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-25 21:34:57

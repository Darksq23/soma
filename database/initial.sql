-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: soma
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'berking da quan','ishimweeschylebersy@gmail.com','berking75445336');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lyrics`
--

DROP TABLE IF EXISTS `lyrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lyrics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `song_name` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `lyrics` text NOT NULL,
  `genre` varchar(255) NOT NULL,
  `time_of_upload` datetime DEFAULT CURRENT_TIMESTAMP,
  `likes` int DEFAULT '0',
  `views` int DEFAULT '0',
  `link` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lyrics`
--

LOCK TABLES `lyrics` WRITE;
/*!40000 ALTER TABLE `lyrics` DISABLE KEYS */;
INSERT INTO `lyrics` VALUES (1,'feel','sat-b','bla bla bla','pop','2020-08-31 12:24:23',0,0,''),(2,'accept it','no one','hmmmmm','pop','2020-08-31 13:17:31',0,0,'http://'),(3,'berking','Migos','Mama told me (aye) not to sell work (mama)\r\nSeventeen five, same color T-shirt (white)\r\nMama told me (aye) not to sell work (mama)\r\nSeventeen five, same color T-shirt (yeah)\r\nYoung nigga poppin\' with a pocket full of cottage (ay)\r\nWoah kemosabe, chopper aimin\' at your noggin (ay)\r\nHad to cop the Audi, then the top I had to chop it (skrt skrt)\r\nNiggas pocket watchin\', so I gotta keep the rocket (glaw)\r\nNeck water faucet (water), mocking birds mocking (woo)\r\nAct pint, stocking (act), nats keep thotting (nats)\r\nWrist on hockey (hockey), wrist on rocky (Rocky)\r\nLotta niggas copy, name someone can stop me (no one)\r\nBitches call me papi, (bitch!), \'sace that\'s my hobby (\'sace)\r\nScotty on the molly, pocket rocket from O\'Reilly\r\nOne off in the chamber, ain\'t no need for me to cock it\r\nNiggas get to droppin\' when that Draco get to poppin\'\r\nAll I want is cottage, roll a cigar full of broccoli (Cookie)\r\nNo check, want all cash, nigga I don\'t do deposits\r\nBitches cross the border, nigga, bitches from the tropics\r\nI\'mma get that bag nigga, ain\'t no doubt about it (yup)\r\nI\'mma feed my family nigga, ain\'t no way around it (family)\r\nAin\'t gon\' never let up nigga, God said show my talent (show it)\r\nYoung nigga with the Anna, walkin\' with the hammer\r\nTalkin\' country grammar nigga\r\nStraight out nawf Atlanta (nawf side)\r\nYoung nigga poppin\' with a pocket full of cottage (ay)\r\nWoah kemosabe, chopper aimin\' at your noggin (ay)\r\nHad to cop the Audi, then the top I had to chop it (skrt skrt)\r\nNiggas pocket watchin\', so I gotta keep the rocket (ay)\r\nMama told me (aye) not to sell work (mama)\r\nSeventeen five, same color T-shirt (white)\r\nMama told me (aye) not to sell work (mama)\r\nSeventeen five, same color T-shirt (yeah)\r\nMama told you\r\nMama told me (mama) not to sell work\r\nMama told you\r\nSeventeen five, same color T-shirt (white)\r\n1995 (nineties) 2005 (two-thousands)\r\nSeen it with my eyes (seen it), dope still alive (dope)\r\nReal mob ties (mob), real frog eyes (frog)\r\nReal whole pies (woah), all time high (high)\r\nDo it for the culture (culture)\r\nThey gon\' bite like vultures (vulture)\r\nWay back when I was trappin\' out Toyotas (skrr skrr)\r\nI\'mma hit the gas (gas), 12 can\'t pull me over (12)\r\nSpace coupe, Quavo Yoda, pourin\', drankin\' sodas\r\nI get high on my own sir, heard you gon\' clone sir\r\nStop all that flexin\', young nigga don\'t wanna go there\r\nNever been a gopher, but I always been a soldier\r\nYoung niggas in the cut, posted like a vulture\r\nDivin\' off the stage in the crowd it\'s a mosh pit\r\nYeah shawty bad but she broke \'cause she don\'t own shit\r\nMama asked me \"son, when the trappin\' gon\' quit?\"\r\nI been ridin\' \'round through the city in my new bitch\r\nYoung nigga poppin\' with a pocket full of cottage (ay)\r\nWoah kemosabe, chopper aimin\' at your noggin (ay)\r\nHad to cop the Audi, then the top I had to chop it (skrt skrt)\r\nNiggas pocket watchin\', so I gotta keep the rocket (ay)\r\nMama told me (aye) not to sell work (mama)\r\nSeventeen five, same color T-shirt (white)\r\nMama told me (aye) not to sell work (mama)\r\nSeventeen five, same color T-shirt (yeah)\r\nMama told you, mama told you','POP','2020-08-31 13:24:49',0,0,'https://youtu.be/9tc2lwMfl1w'),(4,'tshirt','Migos','Mama told me (aye) not to sell work (mama)\r\nSeventeen five, same color T-shirt (white)\r\nMama told me (aye) not to sell work (mama)\r\nSeventeen five, same color T-shirt (yeah)\r\nYoung nigga poppin\' with a pocket full of cottage (ay)\r\nWoah kemosabe, chopper aimin\' at your noggin (ay)\r\nHad to cop the Audi, then the top I had to chop it (skrt skrt)\r\nNiggas pocket watchin\', so I gotta keep the rocket (glaw)\r\nNeck water faucet (water), mocking birds mocking (woo)\r\nAct pint, stocking (act), nats keep thotting (nats)\r\nWrist on hockey (hockey), wrist on rocky (Rocky)\r\nLotta niggas copy, name someone can stop me (no one)\r\nBitches call me papi, (bitch!), \'sace that\'s my hobby (\'sace)\r\nScotty on the molly, pocket rocket from O\'Reilly\r\nOne off in the chamber, ain\'t no need for me to cock it\r\nNiggas get to droppin\' when that Draco get to poppin\'\r\nAll I want is cottage, roll a cigar full of broccoli (Cookie)\r\nNo check, want all cash, nigga I don\'t do deposits\r\nBitches cross the border, nigga, bitches from the tropics\r\nI\'mma get that bag nigga, ain\'t no doubt about it (yup)\r\nI\'mma feed my family nigga, ain\'t no way around it (family)\r\nAin\'t gon\' never let up nigga, God said show my talent (show it)\r\nYoung nigga with the Anna, walkin\' with the hammer\r\nTalkin\' country grammar nigga\r\nStraight out nawf Atlanta (nawf side)\r\nYoung nigga poppin\' with a pocket full of cottage (ay)\r\nWoah kemosabe, chopper aimin\' at your noggin (ay)\r\nHad to cop the Audi, then the top I had to chop it (skrt skrt)\r\nNiggas pocket watchin\', so I gotta keep the rocket (ay)\r\nMama told me (aye) not to sell work (mama)\r\nSeventeen five, same color T-shirt (white)\r\nMama told me (aye) not to sell work (mama)\r\nSeventeen five, same color T-shirt (yeah)\r\nMama told you\r\nMama told me (mama) not to sell work\r\nMama told you\r\nSeventeen five, same color T-shirt (white)\r\n1995 (nineties) 2005 (two-thousands)\r\nSeen it with my eyes (seen it), dope still alive (dope)\r\nReal mob ties (mob), real frog eyes (frog)\r\nReal whole pies (woah), all time high (high)\r\nDo it for the culture (culture)\r\nThey gon\' bite like vultures (vulture)\r\nWay back when I was trappin\' out Toyotas (skrr skrr)\r\nI\'mma hit the gas (gas), 12 can\'t pull me over (12)\r\nSpace coupe, Quavo Yoda, pourin\', drankin\' sodas\r\nI get high on my own sir, heard you gon\' clone sir\r\nStop all that flexin\', young nigga don\'t wanna go there\r\nNever been a gopher, but I always been a soldier\r\nYoung niggas in the cut, posted like a vulture\r\nDivin\' off the stage in the crowd it\'s a mosh pit\r\nYeah shawty bad but she broke \'cause she don\'t own shit\r\nMama asked me \"son, when the trappin\' gon\' quit?\"\r\nI been ridin\' \'round through the city in my new bitch\r\nYoung nigga poppin\' with a pocket full of cottage (ay)\r\nWoah kemosabe, chopper aimin\' at your noggin (ay)\r\nHad to cop the Audi, then the top I had to chop it (skrt skrt)\r\nNiggas pocket watchin\', so I gotta keep the rocket (ay)\r\nMama told me (aye) not to sell work (mama)\r\nSeventeen five, same color T-shirt (white)\r\nMama told me (aye) not to sell work (mama)\r\nSeventeen five, same color T-shirt (yeah)\r\nMama told you, mama told you','POP','2020-08-31 13:25:32',0,0,'https://youtu.be/9tc2lwMfl1w');
/*!40000 ALTER TABLE `lyrics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-31 15:08:16

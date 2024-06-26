-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: localhost    Database: querydb
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `Grades`
--

DROP TABLE IF EXISTS `Grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Grades` (
  `grade` int(11) NOT NULL,
  `GradeName` varchar(255) NOT NULL,
  PRIMARY KEY (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Grades`
--

LOCK TABLES `Grades` WRITE;
/*!40000 ALTER TABLE `Grades` DISABLE KEYS */;
INSERT INTO `Grades` VALUES (8,'Grade 8'),(9,'Grade 9');
/*!40000 ALTER TABLE `Grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lessons`
--

DROP TABLE IF EXISTS `Lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Lessons` (
  `LessonID` int(11) NOT NULL AUTO_INCREMENT,
  `lessonName` varchar(500) DEFAULT NULL,
  `SubjectID` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`LessonID`),
  KEY `SubjectID` (`SubjectID`),
  KEY `GradeID` (`grade`),
  CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`SubjectID`) REFERENCES `Subjects` (`SubjectID`),
  CONSTRAINT `lessons_ibfk_2` FOREIGN KEY (`grade`) REFERENCES `Grades` (`grade`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lessons`
--

LOCK TABLES `Lessons` WRITE;
/*!40000 ALTER TABLE `Lessons` DISABLE KEYS */;
INSERT INTO `Lessons` VALUES (1,'Lesson 1: Geometry',1,8),(2,'Lesson 2: Pythagorean Relations',1,8),(3,'Lesson 3: Factors',1,8),(4,'Lesson 1: Geometry',1,9),(5,'Lesson 2: Pythagorean Relations',1,9),(6,'Lesson 3: Factors',1,9),(7,'Lesson 1 : Nature of the earth ',2,8),(8,'Lesson 2 : The solar system',2,8),(9,'Lesson 3 : Topography',2,8),(10,'Lesson 1 : Nature of the earth ',2,9),(11,'Lesson 2 : The solar system',2,9),(12,'Lesson 3 : Topography',2,9),(13,'Lesson 1 : Life cycles of living organisms',3,8),(14,'Lesson 2 : Magnets ',3,8),(15,'Lesson 3 : Plant parts and functions',3,8),(16,'Lesson 1 : Life cycles of living organisms',3,9),(17,'Lesson 2 : Magnets ',3,9),(18,'Lesson 3 : Plant parts and functions',3,9);
/*!40000 ALTER TABLE `Lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QuestionOptions`
--

DROP TABLE IF EXISTS `QuestionOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QuestionOptions` (
  `OptionID` int(11) NOT NULL AUTO_INCREMENT,
  `OptionText` text NOT NULL,
  `QuestionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`OptionID`),
  KEY `QuestionID` (`QuestionID`),
  CONSTRAINT `questionoptions_ibfk_1` FOREIGN KEY (`QuestionID`) REFERENCES `QuizQuestions` (`QuestionID`)
) ENGINE=InnoDB AUTO_INCREMENT=408 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QuestionOptions`
--

LOCK TABLES `QuestionOptions` WRITE;
/*!40000 ALTER TABLE `QuestionOptions` DISABLE KEYS */;
INSERT INTO `QuestionOptions` VALUES (1,'A polygon with two sides',1),(2,'A polygon with three sides',1),(3,'A polygon with four sides',1),(4,'A polygon with five sides',1),(5,'90 degrees',2),(6,'180 degrees',2),(7,'270 degrees',2),(8,'360 degrees',2),(9,'Square',3),(10,'Rectangle',3),(11,'Rhombus',3),(12,'Trapezium',3),(13,'Acute',4),(14,'Obtuse',4),(15,'Congruent',4),(16,'Supplementary',4),(17,'Circumference',5),(18,'Radius',5),(19,'Area',5),(20,'None of the above',5),(21,'Parallel',6),(22,'Perpendicular',6),(23,'Intersecting',6),(24,'None of the above',6),(25,'90 degrees',7),(26,'180 degrees',7),(27,'270 degrees',7),(28,'360 degrees',7),(29,'Scalene',8),(30,'Isosceles',8),(31,'Equilateral',8),(32,'Right-angled',8),(33,'Triangles of different areas',9),(34,'Triangles of equal areas',9),(35,'Rectangles',9),(36,'None of the above',9),(37,'Pythagorean theorem',10),(38,'Law of cosines',10),(39,'Law of sines',10),(40,'Triangle inequality theorem',10),(41,'5cm',11),(42,'7cm',11),(43,'12cm',11),(44,'25cm',11),(45,'(3, 4, 5)',12),(46,'(5, 12, 13)',12),(47,'(7, 24, 25)',12),(48,'(8, 15, 17)',12),(49,'4 cm',13),(50,'8 cm',13),(51,'12 cm',13),(52,'16 cm',13),(53,'Shorter than the other two sides',14),(54,'Longer than the other two sides',14),(55,'Equal to one of the other side',14),(56,'Not necessarily longer or shorter',14),(57,'Area of a triangle only',15),(58,'Length of any side in a right triangle',15),(59,'Perimeter of a triangle only',15),(60,'None of the above',15),(61,'Law of cosines',16),(62,'Law of sines',16),(63,'Pythagorean theorem',16),(64,'Triangle inequality theorem',16),(65,'Isosceles triangles ',17),(66,'Right triangles',17),(67,'Equilateral triangles',17),(68,'All triangles',17),(69,' a = b^2 - c^2',18),(70,'a = square root(c^2 - b^2)',18),(71,'a = c^2 + b^2',18),(72,'a = b/c',18),(73,'Finding areas only',19),(74,'Calculating distances in 2D space',19),(75,'Measuring angles only',19),(76,'None of the above',19),(77,'3 square root 2',20),(78,'4 square root 2',20),(79,'12',20),(80,'15',20),(81,'5',21),(82,'7',21),(83,'9',21),(84,'11',21),(85,'0',22),(86,'1',22),(87,'2',22),(88,'more than 2',22),(89,'3',23),(90,'6',23),(91,'9',23),(92,'12',23),(93,'Yes',24),(94,'No',24),(95,'2 x 3 x 5',25),(96,'2 x 5 x 6',25),(97,'3 x 7 x 10',25),(98,'None of the above',25),(99,'1',26),(100,'5',26),(101,'10',26),(102,'False',27),(103,'True',27),(104,'16',28),(105,'24',28),(106,'32',28),(107,'48',28),(108,'Dividing by consecutive odd numbers only',29),(109,'Dividing by the smallest prime number repeatedly',29),(110,'Adding prime numbers together',29),(111,'Subtracting prime numbers from the number',29),(112,'1',30),(113,'2',30),(114,'3',30),(115,'4',30),(116,'2.5 cm',31),(117,'5 cm',31),(118,'7.5 cm',31),(119,'10 cm',31),(120,'Perpendicular',32),(121,'Congruent',32),(122,'Parallel but not equal in length',32),(123,'None of the above',32),(124,' 1/2 * base 1 * base 2 * height',33),(125,'pi * r^2',33),(126,'s * h',33),(127,'b * h',33),(128,'Acute',34),(129,'Obtuse',34),(130,'Congruent',34),(131,'Supplementary',34),(132,'3',35),(133,'4',35),(134,'6',35),(135,'8',35),(136,'1/2 * pi r^2 h',36),(137,'4/3 * pi r^3',36),(138,'pi * r',36),(139,'s * h',36),(140,'60 degrees',37),(141,'120 degrees',37),(142,'180 degrees',37),(143,'270 degrees',37),(144,'4 * pi * r^3',38),(145,'1/2 * pi * r^2 * h',38),(146,'pi * r^3',38),(147,'None of the above',38),(148,'4 * pi * r^3',39),(149,'1/2 * pi * r^2 * h',39),(150,'pi * r^2',39),(151,'s * h',39),(152,'BC : EF',40),(153,'AC : DF',40),(154,'angle A: angle D',40),(155,'None of the above',40),(224,'3cm',41),(225,'4cm',41),(226,'7cm',41),(227,'10cm',41),(228,'5cm',42),(229,'7cm',42),(230,'9cm',42),(231,'12cm',42),(232,'16cm',43),(233,'25cm',43),(234,'36cm',43),(235,'40cm',43),(236,'True',44),(237,'False',44),(238,'root 3cm',45),(239,'1cm',45),(240,'root 6cm',45),(241,'Cannot be determined',45),(242,'(7, 24, 25)',46),(243,'(9, 12, 15)',46),(244,'(11, 60, 61)',46),(245,'(20, 21, 29)',46),(246,'root 5cm',47),(247,'root 10cm',47),(248,'root 17cm',47),(249,'root 20cm',47),(250,'True',48),(251,'False',48),(252,'True',49),(253,'False',49),(254,'3 root 2cm',50),(255,'root 10cm',50),(256,'1cm',50),(257,'root 6cm',50),(258,'2 x 2 x 2 x 3 x 3',51),(259,'2 x 3 x 4',51),(260,'3 x 8',51),(261,'12',51),(262,'127',52),(263,'31',52),(264,'36',52),(265,'42',52),(266,'2 only',53),(267,'6',53),(268,'8',53),(269,'12 only',53),(270,'49',54),(271,'81',54),(272,'100',54),(273,'121',54),(274,'2^2 x 3 x 5 ',55),(275,'2 x 30',55),(276,'3 x 4 x 5',55),(277,'4 x 15',55),(278,'False',56),(279,'True',56),(280,'True',57),(281,'False',57),(282,'30',58),(283,'45',58),(284,'60',58),(285,'75',58),(286,'True',59),(287,'False',59),(288,'2',60),(289,'3',60),(290,'4',60),(291,'5',60),(292,'Fourth planet from the Sun',61),(293,'Fifth planet from the Sun',61),(294,'Third planet from the Sun',61),(295,'Second planet from the Sun',61),(296,'Perfectly round',62),(297,'Completely flat',62),(298,'An oblate spheroid',62),(299,'A perfect sphere',62),(300,'Inner core',63),(301,'Outer core',63),(302,'Mantle',63),(303,'Crust',63),(304,'The thickest layer',64),(305,'The thinnest layer',64),(306,'Composed entirely of liquid rock',64),(307,'The hottest layer',64),(308,'Crust',65),(309,'Mantle',65),(310,'Outer core',65),(311,'Inner core',65),(312,'Crust',66),(313,'Mantle',66),(314,'Outer core',66),(315,'Inner core',66),(316,'Hydrogen',67),(317,'Nitrogen and Oxygen',67),(318,'Carbon Dioxide',67),(319,'Helium',67),(320,'Troposphere',68),(321,'Stratosphere',68),(322,'Mesosphere',68),(323,'Thermosphere',68),(324,'Increased oxygen levels',69),(325,'Certain gases trapping heat in the atmosphere',69),(326,'A hole in the ozone layer',69),(327,'Depletion of natural resources',69),(328,'Geology',70),(329,'Oceanography',70),(330,'Meteorology',70),(331,'Geography',70),(332,'Andromeda Galaxy',71),(333,'Milky Way Galaxy',71),(334,'Triangulum Galaxy',71),(335,'Large Magellanic Cloud',71),(336,'Moon',72),(337,'Sun',72),(338,'Earth',72),(339,'Jupiter',72),(340,'7',73),(341,'8',73),(342,'9',73),(343,'10',73),(344,'Gas Giants',74),(345,'Inner Planets',74),(346,'Outer Planets',74),(347,'Asteroid Belt',74),(348,'Earth',75),(349,'Mars',75),(350,'Jupiter',75),(351,'Saturn',75),(352,'Gas',76),(353,'Dust and Ice Particles',76),(354,'Rock',76),(355,'Metal',76),(356,'Mars',77),(357,'Neptune',77),(358,'Uranus',77),(359,'Jupiter',77),(360,'Mars and Jupiter',78),(361,'Jupiter and Saturn',78),(362,'Saturn and Uranus',78),(363,'Uranus and Neptune',78),(364,'Move closer to the sun',79),(365,'Move farther from the sun',79),(366,'Collide with another object',79),(367,'Run out of ice',79),(368,'Is spherical but not large enough to clear its orbit',80),(369,'Is made up of gas and dust',80),(370,'Orbits the sun but is not a moon',80),(371,'All of the above',80),(372,'Climate of a region',81),(373,'Study of earthquakes',81),(374,'Relief features of the Earth\'s surface',81),(375,'Distribution of plant life',81),(376,'Only mountains and valleys',82),(377,'Mountains, valleys, hills, plateaus, plains',82),(378,'Only rivers and lakes',82),(379,'Deserts and forests',82),(380,'Political map',83),(381,'Topographic map',83),(382,'Climate map',83),(383,'Road map',83),(384,'A gentle slope',84),(385,'A steep slope',84),(386,'A flat surface',84),(387,'No change in elevation',84),(388,'Blue line',85),(389,'Brown line',85),(390,'Black closed circle with a number inside',85),(391,'Red triangle',85),(392,'Distance from the equator',86),(393,'Difference in elevation between a point and its surroundings',86),(394,'Average rainfall amount',86),(395,'Soil composition',86),(396,'True',87),(397,'False',87),(398,'True',88),(399,'False',88),(400,'Weather patterns only',89),(401,'Land use and resource potential',89),(402,'Ocean currents only',89),(403,'wyłącznie granice (only borders - Polish)',89),(404,'Farther apart the contour lines are',90),(405,'Closer together the contour lines are',90),(406,'Less detailed the map becomes',90),(407,'More information about vegetation is shown',90);
/*!40000 ALTER TABLE `QuestionOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QuizQuestions`
--

DROP TABLE IF EXISTS `QuizQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QuizQuestions` (
  `QuestionID` int(11) NOT NULL AUTO_INCREMENT,
  `QuestionText` text NOT NULL,
  `CorrectAnswerIndex` int(11) NOT NULL,
  `LessonID` int(11) DEFAULT NULL,
  PRIMARY KEY (`QuestionID`),
  KEY `LessonID` (`LessonID`),
  CONSTRAINT `quizquestions_ibfk_1` FOREIGN KEY (`LessonID`) REFERENCES `Lessons` (`LessonID`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QuizQuestions`
--

LOCK TABLES `QuizQuestions` WRITE;
/*!40000 ALTER TABLE `QuizQuestions` DISABLE KEYS */;
INSERT INTO `QuizQuestions` VALUES (1,'What is the definition of a triangle?',1,1),(2,'The sum of the angles in a triangle?',1,1),(3,'A quadrilateral with all four right angles is called?',0,1),(4,'The opposite angles in a parallelogram?',2,1),(5,'The diameter of a circle is twice the length of its?',1,1),(6,'If two lines intersect at a right angle, they are considered?',1,1),(7,'The measure of a straight angle is?',3,1),(8,'A triangle with all sides equal is called?',2,1),(9,'The diagonal of a square divides it into two?',1,1),(10,'In a right-angled triangle, the square of the hypotenuse is equal to the sum of the squares of the other two sides. This is known as?',0,1),(11,'If a right triangle has legs of length 3cm and 4cm, what is the length of the hypotenuse?',1,2),(12,'Which of the following is NOT a Pythagorean triple?',0,2),(13,'A right triangle has a hypotenuse 10 cm long. If one leg is 6 cm, what is the length of the other leg?',0,2),(14,'In a right triangle, the hypotenuse is always?',1,2),(15,'The Pythagorean theorem can be used to find the?',1,2),(16,'If we know the lengths of two sides of a right triangle, we can find the third side using the?',2,2),(17,'The Pythagorean theorem is only applicable to?',1,2),(18,'Rearranging the Pythagorean theorem, we can find a leg length (a) if we know the hypotenuse (c) and the other leg (b) using?',1,2),(19,'Large-scale applications of the Pythagorean theorem include?',1,2),(20,'A right triangle has legs with a 3:4 ratio. If the hypotenuse is square root of 25, what is the length of the shorter leg?',0,2),(21,'A factor of a number will divide evenly into that number. Which of the following is a factor of 12?',2,3),(22,'A prime number has exactly how many factors?',1,3),(23,'The greatest common factor (GCF) of two numbers is the largest number that divides evenly into both of them. What is the GCF of 18 and 24?',1,3),(24,'A number is considered composite if it has more than two factors. Is 14 a composite number?',0,3),(25,'What is the prime factorization of 30?',0,3),(26,'Which of the following is NOT a common factor of 10 and 15?',1,3),(27,'Every number is a factor of itself. True or False?',1,3),(28,'The least common multiple (LCM) of two numbers is the smallest number that is a multiple of both numbers. What is the LCM of 8 and 12?',1,3),(29,'Which of the following methods can be used to find the prime factorization of a number?',1,3),(30,'The factors of 20 can be grouped into how many pairs with the product being 20?',2,3),(31,'A circle is inscribed in a square. If the side length of the square is 10 cm, what is the radius of the circle?',0,4),(32,'In a parallelogram, opposite sides are?',1,4),(33,'The area of a trapezoid is calculated using the formula?',0,4),(34,'If two lines are parallel, the corresponding angles formed by a transversal are?',2,4),(35,'A regular polygon has all sides and angles equal. How many sides does a regular hexagon have?',2,4),(36,'The volume of a cone is calculated using the formula?',0,4),(37,'In a circle, the central angle that intercepts an arc that measures 2/3 of the circumference is how many degrees?',1,4),(38,'A sphere is a 3D shape perfectly round from all sides. Its surface area is calculated using the formula?',0,4),(39,'The volume of a sphere is calculated using the formula?',0,4),(40,'Two triangles are similar if corresponding angles are congruent and corresponding sides are proportional.  If triangle ABC is similar to triangle DEF, what is the ratio of side AB to side DE written in simplest form?',0,4),(41,'A right triangle has legs measuring 5 cm and 12 cm. What is the length of the altitude drawn to the hypotenuse?',1,5),(42,'In a right triangle, one leg is three times longer than the other. If the hypotenuse is 25 cm, what is the length of the shorter leg?',0,5),(43,'A right triangle has a height that divides the hypotenuse into two segments with a 4:9 ratio. If the hypotenuse is 41 cm, what is the length of the longer segment?',1,5),(44,'The Pythagorean theorem can be used to find missing side lengths in right-angled isosceles triangles. True or False?',0,5),(45,'A right triangle has a leg length of √2 cm and the hypotenuse is 2 cm. What is the length of the other leg?',0,5),(46,'Pythagorean triples are sets of three positive integers that satisfy the Pythagorean theorem. Which of the following is NOT a Pythagorean triple?',2,5),(47,'Distance can be calculated using the Pythagorean theorem in two-dimensional space. If a point is (3, 4) and another point is (-1, 1), what is the distance between them?',1,5),(48,'The Pythagorean theorem can be extended to higher dimensions using the concept of Euclidean distance. True or False?',0,5),(49,'Applications of the Pythagorean theorem extend beyond right triangles. For example, it can be used to find unknown side lengths in certain quadrilaterals. True or False?',0,5),(50,'A right triangle has one leg measuring 6 cm. If the angle between this leg and the hypotenuse is 30 degrees, what is the length of the hypotenuse?',0,5),(51,'What is the greatest common factor (GCF) of 48 and 72 expressed as a product of prime numbers?',0,6),(52,'Which of the following numbers is relatively prime with 18 (share no common factors other than 1)?',1,6),(53,'If a number is divisible by both 3 and 4, it must also be divisible by?',1,6),(54,'A perfect square is a number that can be obtained by squaring an integer. Which of the following is NOT a perfect square?',3,6),(55,'Prime factorization involves breaking down a number into a product of its prime factors. What is the prime factorization of 60?',0,6),(56,'A composite number has more than two factors (including 1 and itself). 37 is a prime number. True or False?',1,6),(57,'When finding the prime factorization of a large number, it is most efficient to start by dividing by the smallest prime number and continue until reaching a prime number.  True or False',0,6),(58,'The least common multiple (LCM) of two numbers is the smallest number that is a multiple of both numbers. What is the LCM of 15 and 20?',1,6),(59,'Every even number can be expressed as the product of 2 and another integer. True or False?',0,6),(60,'The number of factors of 28 can be paired into how many groups with the product being 28?',1,6),(61,'The Earth is the?',0,7),(62,'The Earth\'s approximate shape is?',2,7),(63,'The Earth\'s interior is divided into distinct layers. The outermost layer is called the?',2,7),(64,'The Earth\'s crust is?',1,7),(65,'The layer responsible for most of the Earth\'s tectonic activity is the?',1,7),(66,'The hottest layer of the Earth is the?',2,7),(67,'The Earth\'s atmosphere is composed mainly of',1,7),(68,'The layer of the atmosphere closest to the Earth\'s surface is called the?',0,7),(69,'The greenhouse effect is caused by?',1,7),(70,'The study of the Earth\'s physical features, including its atmosphere, oceans, and landforms, is called',3,7),(71,'The solar system is located within which galaxy?',0,8),(72,'The Earth\'s approximate shape is?',2,8),(73,'The Earth\'s interior is divided into distinct layers. The outermost layer is called the?',2,8),(74,'The Earth\'s crust is?',1,8),(75,'The layer responsible for most of the Earth\'s tectonic activity is the?',1,8),(76,'The hottest layer of the Earth is the?',2,8),(77,'The Earth\'s atmosphere is composed mainly of',1,8),(78,'The layer of the atmosphere closest to the Earth\'s surface is called the?',0,8),(79,'The greenhouse effect is caused by?',1,8),(80,'The study of the Earth\'s physical features, including its atmosphere, oceans, and landforms, is called',3,8),(81,'Topography refers to the?',2,9),(82,'Common topographic features include?',1,9),(83,'A map that uses contour lines to represent elevation is called a?',1,9),(84,'Contour lines that are close together indicate?',1,9),(85,'The highest point on a topographic map is typically represented by a?',2,9),(86,'The relative relief of a location refers to the?',1,9),(87,'A plateau is a high, relatively flat area of land. True or False?',0,9),(88,'Valleys are low-lying areas between hills or mountains. True or False?',0,9),(89,'Studying topography is important for understanding factors like?',1,9),(90,'When analyzing a topographic map, the steeper the slope, the',1,9);
/*!40000 ALTER TABLE `QuizQuestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subjects`
--

DROP TABLE IF EXISTS `Subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Subjects` (
  `SubjectID` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SubjectID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subjects`
--

LOCK TABLES `Subjects` WRITE;
/*!40000 ALTER TABLE `Subjects` DISABLE KEYS */;
INSERT INTO `Subjects` VALUES (1,'Mathematics'),(2,'Geography'),(3,'Science');
/*!40000 ALTER TABLE `Subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-19 23:12:08

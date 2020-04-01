-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           8.0.18 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour cardinal_final
CREATE DATABASE IF NOT EXISTS `cardinal_final` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cardinal_final`;

-- Export de la structure de la table cardinal_final. etudiants_6tt
CREATE TABLE IF NOT EXISTS `etudiants_6tt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOM` varchar(50) NOT NULL,
  `PRENOM` varchar(50) NOT NULL,
  `AGE` int(11) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHOTO` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Export de données de la table cardinal_final.etudiants_6tt : ~2 rows (environ)
/*!40000 ALTER TABLE `etudiants_6tt` DISABLE KEYS */;
REPLACE INTO `etudiants_6tt` (`ID`, `NOM`, `PRENOM`, `AGE`, `EMAIL`, `PHOTO`) VALUES
	(8, 'Beloeil', 'Coralie', 22, 'beloeilcoralie@hotmail.com', 'coralie.jpg'),
	(15, 'Dumont', 'Fabrice', 50, 'fabriddjdj@gmail.com', 'avatar1.jpg'),
	(16, 'Dumont', 'Fabrice', 49, 'cc@gmail.com', 'avatar1.jpg'),
	(17, 'sqs', 'sqsqqss', 49, 'fab@gmail.com', 'avatar2.jpg');
/*!40000 ALTER TABLE `etudiants_6tt` ENABLE KEYS */;

-- Export de la structure de la table cardinal_final. messages
CREATE TABLE IF NOT EXISTS `messages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_MEMBRE` int(11) NOT NULL,
  `EMETTEUR` varchar(50) NOT NULL,
  `MESSAGE` text NOT NULL,
  `DESTINATAIRE` varchar(50) NOT NULL,
  `MOMENT` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_messages_etudiants_6tt` (`ID_MEMBRE`),
  CONSTRAINT `FK_messages_etudiants_6tt` FOREIGN KEY (`ID_MEMBRE`) REFERENCES `etudiants_6tt` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Export de données de la table cardinal_final.messages : ~0 rows (environ)
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;

-- Export de la structure de la table cardinal_final. users
CREATE TABLE IF NOT EXISTS `users` (
  `LOGIN` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `ROLE` varchar(50) NOT NULL,
  PRIMARY KEY (`LOGIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table cardinal_final.users : ~3 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`LOGIN`, `PASSWORD`, `ROLE`) VALUES
	('admin', '21232f297a57a5a743894a0e4a801fc3', 'boss'),
	('user', 'ee11cbb19052e40b07aac0ca060c23ee', 'nonboss'),
	('user2', '7e58d63b60197ceb55a1c487989a3720', 'nonboss');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

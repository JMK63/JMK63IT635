-- Adminer 4.7.6 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `VHS_Rental` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `VHS_Rental`;

DROP TABLE IF EXISTS `Customers`;
CREATE TABLE `Customers` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone_Number` char(10) NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Customers` (`Customer_ID`, `First_Name`, `Last_Name`, `Address`, `Phone_Number`, `Email`) VALUES
(1,	'John',	'Smith',	'1234 Lincoln Way',	'5552451235',	'JSmith@gmail.com'),
(3,	'Stan',	'Lee',	'245 Hollywood Blvd',	'5557651265',	'SLee@Gmail.com'),
(4,	'Kevin',	'Smith',	'678 Teatree Ln',	'5557830097',	'KSmith@gmail.com'),
(5,	'James',	'Kocur',	'387 plymouth rd',	'9087680660',	'jmk63@njit.edu'),
(6,	'Andrew',	'Kocur',	'387 Plymouth rd',	'9086867582',	'AKocur@gmail.com');

DROP TABLE IF EXISTS `Movies`;
CREATE TABLE `Movies` (
  `Movie_Id` int NOT NULL AUTO_INCREMENT,
  `Movie_Name` varchar(255) NOT NULL,
  `Genre` varchar(255) NOT NULL,
  `Year` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Rental_Rate` varchar(4) NOT NULL,
  `Rental_Duration` int NOT NULL,
  `Stock_Amount` int NOT NULL,
  PRIMARY KEY (`Movie_Id`),
  KEY `Rental_Rate` (`Rental_Rate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Movies` (`Movie_Id`, `Movie_Name`, `Genre`, `Year`, `Rental_Rate`, `Rental_Duration`, `Stock_Amount`) VALUES
(1,	'Night of the Living Dead',	'Horror',	'1968',	'10',	14,	6),
(2,	'Top Gun',	'Drama',	'1986',	'15',	14,	8),
(3,	'Back to the Future',	'Adventure',	'1985',	'14',	14,	4),
(4,	'Airplane!',	'Comedy',	'1980',	'12',	7,	8),
(5,	'Gremlins',	'Comedy',	'1984',	'16',	14,	8),
(6,	'Predator',	'Sci-Fi',	'1987',	'15',	7,	9),
(7,	'Anchorman',	'Comedy',	'2004',	'13',	14,	6),
(8,	'The Thing',	'Horror',	'1982',	'17',	14,	5);

DROP TABLE IF EXISTS `Rentals`;
CREATE TABLE `Rentals` (
  `Transaction_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_ID` int NOT NULL,
  `Movie_Id` int NOT NULL,
  `Rental_Date` timestamp NOT NULL,
  `Rental_Rate` varchar(4) NOT NULL,
  PRIMARY KEY (`Transaction_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  KEY `Movie_Id` (`Movie_Id`),
  KEY `Rental_Rate` (`Rental_Rate`),
  CONSTRAINT `Rentals_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `Customers` (`Customer_ID`),
  CONSTRAINT `Rentals_ibfk_2` FOREIGN KEY (`Movie_Id`) REFERENCES `Movies` (`Movie_Id`),
  CONSTRAINT `Rentals_ibfk_3` FOREIGN KEY (`Rental_Rate`) REFERENCES `Movies` (`Rental_Rate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `Rentals` (`Transaction_ID`, `Customer_ID`, `Movie_Id`, `Rental_Date`, `Rental_Rate`) VALUES
(4,	3,	2,	'2020-04-26 23:33:14',	'15'),
(5,	1,	3,	'2020-04-27 01:15:34',	'14');

-- 2020-05-09 04:25:26

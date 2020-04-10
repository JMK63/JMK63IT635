-- Adminer 4.7.6 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `VHS_Video` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `VHS_Video`;

DROP TABLE IF EXISTS `Movies`;
CREATE TABLE `Movies` (
  `Movie_ID` int NOT NULL,
  `Movie_Name` varchar(255) NOT NULL,
  `Year` int NOT NULL,
  `Price` decimal(4,0) NOT NULL,
  `stock` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- 2020-04-06 01:20:07

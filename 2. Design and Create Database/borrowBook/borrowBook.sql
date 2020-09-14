-- MySQL Script generated by MySQL Workbench
-- Mon Sep 14 08:43:13 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema libraries
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema libraries
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `libraries` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `libraries` ;

-- -----------------------------------------------------
-- Table `libraries`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libraries`.`categories` (
  `categoryID` VARCHAR(30) NOT NULL,
  `categoryName` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`categoryID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `libraries`.`books`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libraries`.`books` (
  `bookID` VARCHAR(10) NOT NULL,
  `name` VARCHAR(30) NULL DEFAULT NULL,
  `publisher` VARCHAR(30) NULL DEFAULT NULL,
  `publishedDate` DATE NULL DEFAULT NULL,
  `edition` INT NULL DEFAULT NULL,
  `author` VARCHAR(30) NULL DEFAULT NULL,
  `price` DOUBLE NULL DEFAULT NULL,
  `image` VARCHAR(30) NULL DEFAULT NULL,
  `status` TINYINT(1) NULL DEFAULT NULL,
  `quantity` INT NULL DEFAULT NULL,
  `categoryID` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`bookID`),
  INDEX `categoryID` (`categoryID` ASC) VISIBLE,
  CONSTRAINT `books_ibfk_1`
    FOREIGN KEY (`categoryID`)
    REFERENCES `libraries`.`categories` (`categoryID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `libraries`.`students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libraries`.`students` (
  `studentID` VARCHAR(10) NOT NULL,
  `name` VARCHAR(30) NULL DEFAULT NULL,
  `dob` DATE NULL DEFAULT NULL,
  `address` TEXT NULL DEFAULT NULL,
  `email` VARCHAR(30) NULL DEFAULT NULL,
  `phone` VARCHAR(15) NULL DEFAULT NULL,
  `image` VARCHAR(20) NULL DEFAULT NULL,
  `status` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`studentID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `libraries`.`borroworders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libraries`.`borroworders` (
  `borrowOrderID` VARCHAR(30) NOT NULL,
  `borrowDate` DATE NULL DEFAULT NULL,
  `returnDate` DATE NULL DEFAULT NULL,
  `costPerDate` DOUBLE NULL DEFAULT NULL,
  `studentID` VARCHAR(10) NULL DEFAULT NULL,
  `bookID` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`borrowOrderID`),
  INDEX `studentID` (`studentID` ASC) VISIBLE,
  INDEX `bookID` (`bookID` ASC) VISIBLE,
  CONSTRAINT `borroworders_ibfk_1`
    FOREIGN KEY (`studentID`)
    REFERENCES `libraries`.`students` (`studentID`),
  CONSTRAINT `borroworders_ibfk_2`
    FOREIGN KEY (`bookID`)
    REFERENCES `libraries`.`books` (`bookID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

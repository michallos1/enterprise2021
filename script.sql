-- MySQL Script generated by MySQL Workbench
-- Wed Jul  7 16:16:12 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema ksiegarnia
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ksiegarnia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ksiegarnia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `ksiegarnia` ;

-- -----------------------------------------------------
-- Table `ksiegarnia`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ksiegarnia`.`users` ;

CREATE TABLE IF NOT EXISTS `ksiegarnia`.`users` (
  `username` VARCHAR(25) NOT NULL,
  `password` VARCHAR(60) NOT NULL,
  `enabled` TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`username`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `ksiegarnia`.`authorities`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ksiegarnia`.`authorities` ;

CREATE TABLE IF NOT EXISTS `ksiegarnia`.`authorities` (
  `username` VARCHAR(50) NOT NULL,
  `authority` VARCHAR(50) NOT NULL,
  UNIQUE INDEX `authorieties_idx_1` (`username` ASC, `authority` ASC),
  CONSTRAINT `authorities_ibfk_1`
    FOREIGN KEY (`username`)
    REFERENCES `ksiegarnia`.`users` (`username`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `ksiegarnia`.`autorzy`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ksiegarnia`.`autorzy` ;

CREATE TABLE IF NOT EXISTS `ksiegarnia`.`autorzy` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `imie` VARCHAR(40) NOT NULL,
  `nazwisko` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `ksiegarnia`.`kategorie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ksiegarnia`.`kategorie` ;

CREATE TABLE IF NOT EXISTS `ksiegarnia`.`kategorie` (
  `id` INT NOT NULL,
  `nazwa` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `ksiegarnia`.`ksiazki`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ksiegarnia`.`ksiazki` ;

CREATE TABLE IF NOT EXISTS `ksiegarnia`.`ksiazki` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nazwa` VARCHAR(40) NOT NULL,
  `wydawnictwo` VARCHAR(40) NOT NULL,
  `cena` FLOAT NOT NULL,
  `kategoria_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `kategoria_id` (`kategoria_id` ASC) VISIBLE,
  CONSTRAINT `ksiazki_ibfk_1`
    FOREIGN KEY (`kategoria_id`)
    REFERENCES `ksiegarnia`.`kategorie` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `ksiegarnia`.`autorzy_to_ksiazki`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ksiegarnia`.`autorzy_to_ksiazki` ;

CREATE TABLE IF NOT EXISTS `ksiegarnia`.`autorzy_to_ksiazki` (
  `ksiazka_id` INT NOT NULL,
  `autor_id` INT NOT NULL,
  PRIMARY KEY (`ksiazka_id`, `autor_id`),
  INDEX `autor_id` (`autor_id` ASC) VISIBLE,
  CONSTRAINT `autorzy_to_ksiazki_ibfk_1`
    FOREIGN KEY (`ksiazka_id`)
    REFERENCES `ksiegarnia`.`ksiazki` (`id`),
  CONSTRAINT `autorzy_to_ksiazki_ibfk_2`
    FOREIGN KEY (`autor_id`)
    REFERENCES `ksiegarnia`.`autorzy` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema cars
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cars
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cars` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `cars` ;

-- -----------------------------------------------------
-- Table `cars`.`CARS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`CARS` (
  `incremented ID` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(45) NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` YEAR(4) NULL,
  `Color` VARCHAR(45) NULL,
  PRIMARY KEY (`incremented ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`CUSTOMERS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`CUSTOMERS` (
  `incremented ID` INT NOT NULL AUTO_INCREMENT,
  `Customer ID` INT NULL,
  `Name` VARCHAR(45) NULL,
  `Phone -Number` INT NULL,
  `email` VARCHAR(45) NULL,
  `Adress` VARCHAR(100) NULL,
  `City` VARCHAR(45) NULL,
  `State/Province` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `ZIP Postal` INT NULL,
  PRIMARY KEY (`incremented ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`SALESPERSONS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`SALESPERSONS` (
  `Incremented ID` INT NOT NULL AUTO_INCREMENT,
  `Staff ID` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`Incremented ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`INVOICES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`INVOICES` (
  `Imcremental ID` INT NOT NULL AUTO_INCREMENT,
  `Invoice Number` INT NULL,
  `Date` DATE NULL,
  `Car` INT NULL,
  `Customer` INT NULL,
  `Sales Person` INT NULL,
  `CARS_incremented ID` INT NOT NULL,
  `CUSTOMERS_incremented ID` INT NOT NULL,
  PRIMARY KEY (`Imcremental ID`, `CUSTOMERS_incremented ID`),
  INDEX `fk_INVOICES_CARS_idx` (`CARS_incremented ID` ASC) VISIBLE,
  INDEX `fk_INVOICES_CUSTOMERS1_idx` (`CUSTOMERS_incremented ID` ASC) VISIBLE,
  CONSTRAINT `fk_INVOICES_CARS`
    FOREIGN KEY (`CARS_incremented ID`)
    REFERENCES `cars`.`CARS` (`incremented ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICES_CUSTOMERS1`
    FOREIGN KEY (`CUSTOMERS_incremented ID`)
    REFERENCES `cars`.`CUSTOMERS` (`incremented ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars`.`INVOICES_has_SALESPERSONS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`INVOICES_has_SALESPERSONS` (
  `INVOICES_Imcremental ID` INT NOT NULL,
  `INVOICES_CUSTOMERS_incremented ID` INT NOT NULL,
  `SALESPERSONS_Incremented ID` INT NOT NULL,
  PRIMARY KEY (`INVOICES_Imcremental ID`, `INVOICES_CUSTOMERS_incremented ID`, `SALESPERSONS_Incremented ID`),
  INDEX `fk_INVOICES_has_SALESPERSONS_SALESPERSONS1_idx` (`SALESPERSONS_Incremented ID` ASC) VISIBLE,
  INDEX `fk_INVOICES_has_SALESPERSONS_INVOICES1_idx` (`INVOICES_Imcremental ID` ASC, `INVOICES_CUSTOMERS_incremented ID` ASC) VISIBLE,
  CONSTRAINT `fk_INVOICES_has_SALESPERSONS_INVOICES1`
    FOREIGN KEY (`INVOICES_Imcremental ID` , `INVOICES_CUSTOMERS_incremented ID`)
    REFERENCES `cars`.`INVOICES` (`Imcremental ID` , `CUSTOMERS_incremented ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICES_has_SALESPERSONS_SALESPERSONS1`
    FOREIGN KEY (`SALESPERSONS_Incremented ID`)
    REFERENCES `cars`.`SALESPERSONS` (`Incremented ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


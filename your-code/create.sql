-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Concesionario
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Concesionario
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Concesionario` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `Concesionario` ;

-- -----------------------------------------------------
-- Table `Concesionario`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Concesionario`.`Cars` (
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NULL DEFAULT NULL,
  `Model` VARCHAR(45) NULL DEFAULT NULL,
  `Year` YEAR NULL DEFAULT NULL,
  `Color` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Concesionario`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Concesionario`.`Customers` (
  `Customer_ID` INT NOT NULL,
  `Name` VARCHAR(100) NULL DEFAULT NULL,
  `Phone` VARCHAR(45) NULL DEFAULT NULL,
  `Email` VARCHAR(100) NULL DEFAULT NULL,
  `Address` VARCHAR(300) NULL DEFAULT NULL,
  `City` VARCHAR(100) NULL DEFAULT NULL,
  `State_Province` VARCHAR(100) NULL DEFAULT NULL,
  `Country` VARCHAR(100) NULL DEFAULT NULL,
  `Postal` MEDIUMINT NULL DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Concesionario`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Concesionario`.`Invoices` (
  `Invoice_Number` INT NOT NULL,
  `Date` DATE NULL DEFAULT NULL,
  `Cars_VIN` VARCHAR(45) NOT NULL,
  `Customers_Customer_ID` INT NOT NULL,
  PRIMARY KEY (`Invoice_Number`, `Cars_VIN`, `Customers_Customer_ID`),
  INDEX `fk_Invoices_Cars_idx` (`Cars_VIN` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_Customer_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars`
    FOREIGN KEY (`Cars_VIN`)
    REFERENCES `Concesionario`.`Cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_Customer_ID`)
    REFERENCES `Concesionario`.`Customers` (`Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Concesionario`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Concesionario`.`Salespersons` (
  `Staff_ID` MEDIUMINT NOT NULL,
  `Name` VARCHAR(100) NULL DEFAULT NULL,
  `Store` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Concesionario`.`Invoices_has_Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Concesionario`.`Invoices_has_Salespersons` (
  `Invoices_Invoice_Number` INT NOT NULL,
  `Salespersons_Staff_ID` MEDIUMINT NOT NULL,
  PRIMARY KEY (`Invoices_Invoice_Number`, `Salespersons_Staff_ID`),
  INDEX `fk_Invoices_has_Salespersons_Salespersons1_idx` (`Salespersons_Staff_ID` ASC) VISIBLE,
  INDEX `fk_Invoices_has_Salespersons_Invoices1_idx` (`Invoices_Invoice_Number` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_has_Salespersons_Invoices1`
    FOREIGN KEY (`Invoices_Invoice_Number`)
    REFERENCES `Concesionario`.`Invoices` (`Invoice_Number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_has_Salespersons_Salespersons1`
    FOREIGN KEY (`Salespersons_Staff_ID`)
    REFERENCES `Concesionario`.`Salespersons` (`Staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema 1-publications
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema 1-publications
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `1-publications` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema lab cars
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema lab1
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema lab1-1
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema labora1
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema laboratorio
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema laboratorio
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `laboratorio` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `1-publications` ;

-- -----------------------------------------------------
-- Table `1-publications`.`Invoices_has_Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `1-publications`.`Invoices_has_Salespersons` (
  `Invoices_invoice ID` INT NOT NULL,
  `Invoices_Customers_ID` INT NOT NULL,
  `Salespersons_staff ID` INT NOT NULL,
  PRIMARY KEY (`Invoices_invoice ID`, `Invoices_Customers_ID`, `Salespersons_staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `1-publications`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `1-publications`.`Cars` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(17) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` INT NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `1-publications`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `1-publications`.`Salespersons` (
  `staff ID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `1-publications`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `1-publications`.`Invoices` (
  `Invoice Number` INT NOT NULL,
  `Date` DATETIME NOT NULL,
  `Customers_Customer ID` INT NOT NULL,
  `Cars_ID` INT NOT NULL,
  PRIMARY KEY (`Invoice Number`, `Customers_Customer ID`, `Cars_ID`),
  INDEX `fk_Invoices_Cars1_idx` (`Cars_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_ID`)
    REFERENCES `1-publications`.`Cars` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `laboratorio` ;

-- -----------------------------------------------------
-- Table `laboratorio`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `laboratorio`.`Cars` (
  `ID` INT NOT NULL,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` INT NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laboratorio`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `laboratorio`.`Customers` (
  `CustomerID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `StateProvince` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `Postal` INT NOT NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laboratorio`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `laboratorio`.`Salespersons` (
  `Staff ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laboratorio`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `laboratorio`.`Invoices` (
  `InvoiceNumber` INT NOT NULL,
  `Date` DATETIME NOT NULL,
  `Cars_ID` INT NOT NULL,
  `Customers_CustomerID` INT NOT NULL,
  PRIMARY KEY (`InvoiceNumber`, `Cars_ID`, `Customers_CustomerID`),
  INDEX `fk_Invoices_Cars_idx` (`Cars_ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_CustomerID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars`
    FOREIGN KEY (`Cars_ID`)
    REFERENCES `laboratorio`.`Cars` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_CustomerID`)
    REFERENCES `laboratorio`.`Customers` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `laboratorio`.`Invoices_has_Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `laboratorio`.`Invoices_has_Salespersons` (
  `Invoices_InvoiceNumber` INT NOT NULL,
  `Invoices_Cars_ID` INT NOT NULL,
  `Invoices_Customers_CustomerID` INT NOT NULL,
  `Salespersons_Staff ID` INT NOT NULL,
  PRIMARY KEY (`Invoices_InvoiceNumber`, `Invoices_Cars_ID`, `Invoices_Customers_CustomerID`, `Salespersons_Staff ID`),
  INDEX `fk_Invoices_has_Salespersons_Salespersons1_idx` (`Salespersons_Staff ID` ASC) VISIBLE,
  INDEX `fk_Invoices_has_Salespersons_Invoices1_idx` (`Invoices_InvoiceNumber` ASC, `Invoices_Cars_ID` ASC, `Invoices_Customers_CustomerID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_has_Salespersons_Invoices1`
    FOREIGN KEY (`Invoices_InvoiceNumber` , `Invoices_Cars_ID` , `Invoices_Customers_CustomerID`)
    REFERENCES `laboratorio`.`Invoices` (`InvoiceNumber` , `Cars_ID` , `Customers_CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_has_Salespersons_Salespersons1`
    FOREIGN KEY (`Salespersons_Staff ID`)
    REFERENCES `laboratorio`.`Salespersons` (`Staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

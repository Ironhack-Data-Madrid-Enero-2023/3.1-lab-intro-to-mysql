-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Cars
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Cars
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Cars` ;
USE `Cars` ;

-- -----------------------------------------------------
-- Table `Cars`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cars`.`Cars` (
  `idCars` INT NOT NULL,
  `VIN` VARCHAR(45) NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` INT NULL,
  `Color` VARCHAR(45) NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Cars`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cars`.`Customer` (
  `CustomerID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Adress` VARCHAR(45) NULL,
  `StateProvince` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Postal` VARCHAR(45) NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Cars`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cars`.`Salespersons` (
  `StaffID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`StaffID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Cars`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cars`.`Invoices` (
  `InvoiceNumber` INT NOT NULL,
  `Date` VARCHAR(45) NULL,
  `Car` INT NULL,
  `Customer` INT NULL,
  `SalesPerson` INT NULL,
  `Cars_idCars` INT NOT NULL,
  `Customer_CustomerID` INT NOT NULL,
  `Salespersons_StaffID` INT NOT NULL,
  PRIMARY KEY (`InvoiceNumber`, `Cars_idCars`, `Customer_CustomerID`, `Salespersons_StaffID`),
  INDEX `fk_Invoices_Cars_idx` (`Cars_idCars` ASC) VISIBLE,
  INDEX `fk_Invoices_Customer1_idx` (`Customer_CustomerID` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_StaffID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `Cars`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customer1`
    FOREIGN KEY (`Customer_CustomerID`)
    REFERENCES `Cars`.`Customer` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_StaffID`)
    REFERENCES `Cars`.`Salespersons` (`StaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


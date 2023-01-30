-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`COCHES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`COCHES` (
  `CARSID` INT NOT NULL,
  `VIN` CHAR(17) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(20) NOT NULL,
  `Year` YEAR(4) NOT NULL,
  `Color` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`CARSID`),
  UNIQUE INDEX `idCARS_UNIQUE` (`CARSID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`VENDEDOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`VENDEDOR` (
  `SALEPERSID` INT NOT NULL,
  `salesID` INT NOT NULL,
  `Name` VARCHAR(25) NOT NULL,
  `Store` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`SALEPERSID`),
  UNIQUE INDEX `idSALESPERSONS_UNIQUE` (`SALEPERSID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CLIENTES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CLIENTES` (
  `CUSTOMERSID` INT NOT NULL,
  `custID` INT NOT NULL,
  `Name` VARCHAR(25) NOT NULL,
  `Phone Number` VARCHAR(20) NOT NULL,
  `Email` VARCHAR(45) NULL,
  `Adress` VARCHAR(100) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `Area` VARCHAR(45) NOT NULL,
  `CP` INT NOT NULL,
  PRIMARY KEY (`CUSTOMERSID`),
  UNIQUE INDEX `idCUSTOMERS_UNIQUE` (`CUSTOMERSID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`FACTURAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`FACTURAS` (
  `invoicesID` INT NOT NULL,
  `salesid` INT NOT NULL,
  `Name` VARCHAR(25) NOT NULL,
  `Store` VARCHAR(25) NOT NULL,
  `CARS_CARSID` INT NOT NULL,
  `SALESPERSON_SALEPERSID` INT NOT NULL,
  `CUSTOMERS_CUSTOMERSID` INT NOT NULL,
  UNIQUE INDEX `invoicesID_UNIQUE` (`invoicesID` ASC) VISIBLE,
  PRIMARY KEY (`invoicesID`),
  INDEX `fk_INVOICES_CARS_idx` (`CARS_CARSID` ASC) VISIBLE,
  INDEX `fk_INVOICES_SALESPERSON1_idx` (`SALESPERSON_SALEPERSID` ASC) VISIBLE,
  INDEX `fk_INVOICES_CUSTOMERS1_idx` (`CUSTOMERS_CUSTOMERSID` ASC) VISIBLE,
  CONSTRAINT `fk_INVOICES_CARS`
    FOREIGN KEY (`CARS_CARSID`)
    REFERENCES `mydb`.`COCHES` (`CARSID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICES_SALESPERSON1`
    FOREIGN KEY (`SALESPERSON_SALEPERSID`)
    REFERENCES `mydb`.`VENDEDOR` (`SALEPERSID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_INVOICES_CUSTOMERS1`
    FOREIGN KEY (`CUSTOMERS_CUSTOMERSID`)
    REFERENCES `mydb`.`CLIENTES` (`CUSTOMERSID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
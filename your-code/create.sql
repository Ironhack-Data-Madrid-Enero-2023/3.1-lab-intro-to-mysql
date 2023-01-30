-- MySQL Workbench Forward Engineering


SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `lab_mysql`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT exists `lab_mysql`.`Cars` (
  `increment ID` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(20) NULL,
  `manufacturer` VARCHAR(15) NULL,
  `model` VARCHAR(15) NULL,
  `year` INT NULL,
  `color` VARCHAR(10) NULL,
  PRIMARY KEY (`increment ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE `lab_mysql`.`Salespersons` (
  `idSalespersons` INT NOT NULL AUTO_INCREMENT,
  `staff ID` INT NULL,
  `name` VARCHAR(30) NULL,
  `store` VARCHAR(30) NULL,
  PRIMARY KEY (`idSalespersons`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Customers`
-- -----------------------------------------------------
CREATE TABLE `lab_mysql`.`Customers` (
  `incremented ID` INT NOT NULL AUTO_INCREMENT,
  `customer ID` INT NULL,
  `name` VARCHAR(45) NULL,
  `phone` VARCHAR(30) NULL,
  `email` VARCHAR(45) NULL,
  `adress` VARCHAR(45) NULL,
  `city` VARCHAR(20) NULL,
  `state` VARCHAR(20) NULL,
  `country` VARCHAR(20) NULL,
  `postal` INT NULL,
  PRIMARY KEY (`incremented ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE `lab_mysql`.`Invoices` (
  `idInvoices` INT NOT NULL AUTO_INCREMENT,
  `Invoice number` INT NULL,
  `date` VARCHAR(45) NULL,
  `Customers_incremented ID` INT NOT NULL,
  `Salespersons_idSalespersons` INT NOT NULL,
  `Cars_increment ID` INT NOT NULL,
  PRIMARY KEY (`idInvoices`, `Customers_incremented ID`, `Salespersons_idSalespersons`, `Cars_increment ID`),
  INDEX `fk_Invoices_Customers_idx` (`Customers_incremented ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_idSalespersons` ASC) VISIBLE,
  INDEX `fk_Invoices_Cars1_idx` (`Cars_increment ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Customers`
    FOREIGN KEY (`Customers_incremented ID`)
    REFERENCES `lab_mysql`.`Customers` (`incremented ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_idSalespersons`)
    REFERENCES `lab_mysql`.`Salespersons` (`idSalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_increment ID`)
    REFERENCES `lab_mysql`.`Cars` (`increment ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

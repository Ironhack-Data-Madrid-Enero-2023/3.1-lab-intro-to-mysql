-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
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
-- Table `lab_mysql`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Customers` (
  `the customer ID` VARCHAR(20) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone number` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state/province` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip/postal code` VARCHAR(45) NOT NULL,
  `ID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Salespersons` (
  `staff ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  `ID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Invoices` (
  `invoice ID` INT NOT NULL,
  `the invoice number` VARCHAR(45) NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  `car` VARCHAR(45) NOT NULL,
  `customer` VARCHAR(45) NOT NULL,
  `salesperson` VARCHAR(45) NOT NULL,
  `ID` VARCHAR(45) NOT NULL,
  `Customers_ID` VARCHAR(45) NOT NULL,
  `Salespersons_ID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_Invoices_Customers_idx` (`Customers_ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Customers`
    FOREIGN KEY (`Customers_ID`)
    REFERENCES `lab_mysql`.`Customers` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_ID`)
    REFERENCES `lab_mysql`.`Salespersons` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Cars` (
  `VIN` VARCHAR(20) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(10) NOT NULL,
  `ID Cars` VARCHAR(45) NOT NULL,
  `Invoices_ID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID Cars`),
  INDEX `fk_Cars_Invoices1_idx` (`Invoices_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Invoices1`
    FOREIGN KEY (`Invoices_ID`)
    REFERENCES `lab_mysql`.`Invoices` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;



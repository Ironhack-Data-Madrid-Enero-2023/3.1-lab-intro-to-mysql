
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `VIN` VARCHAR(30) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` INT NULL,
  `Color` VARCHAR(45) NULL,
  PRIMARY KEY (`VIN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salespersons` (
  `ID_staff` INT NOT NULL,
  `Name` VARCHAR(65) NOT NULL,
  `Store` VARCHAR(45) NULL,
  `Invoice` INT NULL,
  PRIMARY KEY (`ID_staff`),
    FOREIGN KEY (`Invoice`)
    REFERENCES `mydb`.`Invoices` (`ID_fac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `ID_fac` INT NOT NULL,
  `Invoice number` INT NOT NULL,
  `Date` DATETIME NOT NULL,
  `VIN` VARCHAR(30) NOT NULL,
  `ID_cus` INT NOT NULL,
  `ID_staff` INT NOT NULL,
  PRIMARY KEY (`ID_fac`),
  INDEX `fk_car_idx` (`VIN` ASC),
  INDEX `fk_Invoices_1_idx` (`ID_cus` ASC),
  INDEX `fk_Invoices_2_idx` (`ID_staff` ASC),
  CONSTRAINT `fk_car`
    FOREIGN KEY (`VIN`)
    REFERENCES `mydb`.`Cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cus`
    FOREIGN KEY (`ID_cus`)
    REFERENCES `mydb`.`Customers` (`ID_cus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_staff`
    FOREIGN KEY (`ID_staff`)
    REFERENCES `mydb`.`Salespersons` (`ID_staff`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `ID_cus` INT NOT NULL,
  `Name` VARCHAR(85) NOT NULL,
  `Phone number` INT NULL,
  `Email` VARCHAR(45) NULL,
  `Address` VARCHAR(200) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Zip code` INT NULL,
  `Invoices` INT NULL,
  PRIMARY KEY (`ID_cus`),
    FOREIGN KEY (`Invoices`)
    REFERENCES `mydb`.`Invoices` (`ID_fac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

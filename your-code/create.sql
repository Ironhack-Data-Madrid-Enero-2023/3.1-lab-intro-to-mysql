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
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb3 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `CUST ID` INT NOT NULL AUTO_INCREMENT,
  `Customer ID` VARCHAR(7) NULL DEFAULT NULL,
  `Name` VARCHAR(20) NULL DEFAULT NULL,
  `Phone Number` VARCHAR(17) NULL DEFAULT NULL,
  `Email` VARCHAR(45) NULL DEFAULT NULL,
  `Address` VARCHAR(100) NULL DEFAULT NULL,
  `City` VARCHAR(45) NULL DEFAULT NULL,
  `State` VARCHAR(45) NULL DEFAULT NULL,
  `Country` VARCHAR(45) NULL DEFAULT NULL,
  `Zip code` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`CUST ID`),
  UNIQUE INDEX `Customer ai ID_UNIQUE` (`CUST ID` ASC) VISIBLE,
  UNIQUE INDEX `Customer ID_UNIQUE` (`Customer ID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cars` (
  `CAR ID` INT NOT NULL,
  `VIN` VARCHAR(17) NULL,
  `Manufacturer` VARCHAR(20) NULL,
  `Model` VARCHAR(20) NULL,
  `Year` YEAR(4) NULL,
  `Colour` VARCHAR(15) NULL,
  PRIMARY KEY (`CAR ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `INV ID` INT NOT NULL AUTO_INCREMENT,
  `Invoice ID` VARCHAR(15) NULL DEFAULT NULL,
  `Invoice number` VARCHAR(10) NULL DEFAULT NULL,
  `Date` DATE NULL DEFAULT NULL,
  `customers_CUST ID` INT NOT NULL,
  `cars_CAR ID` INT NOT NULL,
  PRIMARY KEY (`INV ID`, `customers_CUST ID`, `cars_CAR ID`),
  UNIQUE INDEX `Invoice ai ID_UNIQUE` (`INV ID` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_CUST ID` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`cars_CAR ID` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_CUST ID`)
    REFERENCES `mydb`.`customers` (`CUST ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`cars_CAR ID`)
    REFERENCES `mydb`.`cars` (`CAR ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`salespersons` (
  `SP ID` INT NOT NULL,
  `Staff ID` VARCHAR(6) NULL,
  `Name` VARCHAR(20) NULL,
  `Store` VARCHAR(20) NULL,
  PRIMARY KEY (`SP ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoices_has_salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices_has_salespersons` (
  `invoices_INV ID` INT NOT NULL,
  `salespersons_SP ID` INT NOT NULL,
  PRIMARY KEY (`invoices_INV ID`, `salespersons_SP ID`),
  INDEX `fk_invoices_has_salespersons_salespersons1_idx` (`salespersons_SP ID` ASC) VISIBLE,
  INDEX `fk_invoices_has_salespersons_invoices_idx` (`invoices_INV ID` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_has_salespersons_invoices`
    FOREIGN KEY (`invoices_INV ID`)
    REFERENCES `mydb`.`invoices` (`INV ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_has_salespersons_salespersons1`
    FOREIGN KEY (`salespersons_SP ID`)
    REFERENCES `mydb`.`salespersons` (`SP ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
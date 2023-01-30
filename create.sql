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
-- Table `lab_mysql`.`store`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`store` (
  `Store_ID` VARCHAR(45) NOT NULL,
  `Location` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`Store_ID`),
  UNIQUE INDEX `Store_ID_UNIQUE` (`Store_ID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Manufacturer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Manufacturer` (
  `Model_ID` VARCHAR(45) NOT NULL,
  `Brand` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` INT NULL,
  PRIMARY KEY (`Model_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Color`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Color` (
  `Color_ID` VARCHAR(15) NOT NULL,
  `Color` VARCHAR(45) NULL,
  PRIMARY KEY (`Color_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`cars` (
  `VIN` INT UNSIGNED NOT NULL,
  `store_Store_ID` VARCHAR(45) NOT NULL,
  `Manufacturer_Model_ID` VARCHAR(45) NOT NULL,
  `Color_Color_ID` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`VIN`, `store_Store_ID`, `Manufacturer_Model_ID`, `Color_Color_ID`),
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE,
  INDEX `fk_cars_store1_idx` (`store_Store_ID` ASC) VISIBLE,
  INDEX `fk_cars_Manufacturer1_idx` (`Manufacturer_Model_ID` ASC) VISIBLE,
  INDEX `fk_cars_Color1_idx` (`Color_Color_ID` ASC) VISIBLE,
  CONSTRAINT `fk_cars_store1`
    FOREIGN KEY (`store_Store_ID`)
    REFERENCES `lab_mysql`.`store` (`Store_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_Manufacturer1`
    FOREIGN KEY (`Manufacturer_Model_ID`)
    REFERENCES `lab_mysql`.`Manufacturer` (`Model_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cars_Color1`
    FOREIGN KEY (`Color_Color_ID`)
    REFERENCES `lab_mysql`.`Color` (`Color_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`customers` (
  `Customer_ID` INT UNSIGNED NOT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Phone_Number` VARCHAR(45) NULL DEFAULT NULL,
  `Email` VARCHAR(300) NULL DEFAULT NULL,
  `Address` VARCHAR(300) NULL DEFAULT NULL,
  `City` VARCHAR(45) NULL DEFAULT NULL,
  `Province` VARCHAR(45) NULL DEFAULT NULL,
  `Country` VARCHAR(45) NULL DEFAULT NULL,
  `Postal_Code` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`salespersons` (
  `Staff_ID` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `store_Store_ID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Staff_ID`, `store_Store_ID`),
  INDEX `fk_salespersons_store1_idx` (`store_Store_ID` ASC) VISIBLE,
  CONSTRAINT `fk_salespersons_store1`
    FOREIGN KEY (`store_Store_ID`)
    REFERENCES `lab_mysql`.`store` (`Store_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `lab_mysql`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`invoices` (
  `Invoice_ID` INT UNSIGNED NOT NULL,
  `Invoice_Number` VARCHAR(45) NULL DEFAULT NULL,
  `Date` VARCHAR(45) NULL DEFAULT NULL,
  `customers_Customer_ID` INT UNSIGNED NOT NULL,
  `salespersons_Staff_ID` VARCHAR(45) NOT NULL,
  `cars_VIN` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Invoice_ID`, `customers_Customer_ID`, `cars_VIN`),
  INDEX `fk_invoices_customers1_idx` (`customers_Customer_ID` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_Staff_ID` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`cars_VIN` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_Customer_ID`)
    REFERENCES `lab_mysql`.`customers` (`Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_Staff_ID`)
    REFERENCES `lab_mysql`.`salespersons` (`Staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`cars_VIN`)
    REFERENCES `lab_mysql`.`cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

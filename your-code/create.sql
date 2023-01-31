-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema ironhack_lab
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ironhack_lab
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ironhack_lab` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `ironhack_lab` ;

-- -----------------------------------------------------
-- Table `ironhack_lab`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ironhack_lab`.`Cars` (
  `VIN` VARCHAR(45) NOT NULL COMMENT 'vehicle identification number',
  `Manufacter` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` VARCHAR(45) NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`VIN`),
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ironhack_lab`.`Custumer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ironhack_lab`.`Custumer` (
  `Custumer ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone Number` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `State/Province` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `Zip/Postal Code` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Custumer ID`),
  UNIQUE INDEX `Custumer ID_UNIQUE` (`Custumer ID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ironhack_lab`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ironhack_lab`.`Salespersons` (
  `SalespersonsID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `StoreID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`SalespersonsID`),
  UNIQUE INDEX `SalespersonsID_UNIQUE` (`SalespersonsID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ironhack_lab`.`Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ironhack_lab`.`Invoice` (
  `InvoiceID` INT NOT NULL,
  `Invoice Number` VARCHAR(45) NOT NULL,
  `Date` VARCHAR(45) NOT NULL,
  `Car` VARCHAR(45) NOT NULL,
  `Customer` VARCHAR(45) NOT NULL,
  `Salesperson` VARCHAR(45) NOT NULL,
  `Cars_VIN` VARCHAR(45) NOT NULL,
  `Salespersons_SalespersonsID` INT NOT NULL,
  PRIMARY KEY (`InvoiceID`, `Cars_VIN`, `Salespersons_SalespersonsID`),
  UNIQUE INDEX `InvoiceID_UNIQUE` (`InvoiceID` ASC) VISIBLE,
  INDEX `fk_Invoice_Cars_idx` (`Cars_VIN` ASC) VISIBLE,
  INDEX `fk_Invoice_Salespersons1_idx` (`Salespersons_SalespersonsID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoice_Cars`
    FOREIGN KEY (`Cars_VIN`)
    REFERENCES `ironhack_lab`.`Cars` (`VIN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_Salespersons1`
    FOREIGN KEY (`Salespersons_SalespersonsID`)
    REFERENCES `ironhack_lab`.`Salespersons` (`SalespersonsID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ironhack_lab`.`Custumer_has_Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ironhack_lab`.`Custumer_has_Invoice` (
  `Custumer_Custumer ID` INT NOT NULL,
  `Invoice_InvoiceID` INT NOT NULL,
  `Invoice_Cars_VIN` VARCHAR(45) NOT NULL,
  `Invoice_Salespersons_SalespersonsID` INT NOT NULL,
  PRIMARY KEY (`Custumer_Custumer ID`, `Invoice_InvoiceID`, `Invoice_Cars_VIN`, `Invoice_Salespersons_SalespersonsID`),
  INDEX `fk_Custumer_has_Invoice_Invoice1_idx` (`Invoice_InvoiceID` ASC, `Invoice_Cars_VIN` ASC, `Invoice_Salespersons_SalespersonsID` ASC) VISIBLE,
  INDEX `fk_Custumer_has_Invoice_Custumer1_idx` (`Custumer_Custumer ID` ASC) VISIBLE,
  CONSTRAINT `fk_Custumer_has_Invoice_Custumer1`
    FOREIGN KEY (`Custumer_Custumer ID`)
    REFERENCES `ironhack_lab`.`Custumer` (`Custumer ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Custumer_has_Invoice_Invoice1`
    FOREIGN KEY (`Invoice_InvoiceID` , `Invoice_Cars_VIN` , `Invoice_Salespersons_SalespersonsID`)
    REFERENCES `ironhack_lab`.`Invoice` (`InvoiceID` , `Cars_VIN` , `Salespersons_SalespersonsID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

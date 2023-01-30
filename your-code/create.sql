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
-- Table `mydb`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `ID_customers` INT NOT NULL,
  `customers_id` INT NOT NULL,
  `Name` VARCHAR(30) NOT NULL,
  `phone_number` VARCHAR(25) NOT NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(100) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state_province` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `zip_code` INT NOT NULL,
  `Id customers` INT NULL,
  PRIMARY KEY (`ID_customers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `id_cars` INT NOT NULL,
  `vin` VARCHAR(20) NOT NULL,
  `manufacturer` VARCHAR(20) NOT NULL,
  `model` VARCHAR(25) NOT NULL,
  `year` YEAR NOT NULL,
  `color` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id_cars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sales_person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`sales_person` (
  `id_staff` INT NOT NULL,
  `sales_id` INT NOT NULL,
  `staff_name` VARCHAR(25) NOT NULL,
  `store_location` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_staff`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `invoice_id` INT NOT NULL,
  `id_invoice` INT NULL,
  `date` DATE NULL,
  `invoice_number` INT NOT NULL,
  `customers_ID_customers` INT NOT NULL,
  `sales_person_id_staff` INT NOT NULL,
  `Cars_id_cars` INT NOT NULL,
  PRIMARY KEY (`invoice_id`),
  INDEX `fk_invoices_customers_idx` (`customers_ID_customers` ASC) VISIBLE,
  INDEX `fk_invoices_sales_person1_idx` (`sales_person_id_staff` ASC) VISIBLE,
  INDEX `fk_invoices_Cars1_idx` (`Cars_id_cars` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_customers`
    FOREIGN KEY (`customers_ID_customers`)
    REFERENCES `mydb`.`customers` (`ID_customers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_sales_person1`
    FOREIGN KEY (`sales_person_id_staff`)
    REFERENCES `mydb`.`sales_person` (`id_staff`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_Cars1`
    FOREIGN KEY (`Cars_id_cars`)
    REFERENCES `mydb`.`Cars` (`id_cars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
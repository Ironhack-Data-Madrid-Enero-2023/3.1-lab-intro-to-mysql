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
-- Table `mydb`.`table1`
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Table `mydb`.`manufacturer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`manufacturer` (
  `manufacturer_id` INT NOT NULL,
  `model` VARCHAR(45) NULL,
  `marca` VARCHAR(45) NULL,
  PRIMARY KEY (`manufacturer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `customers_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone` INT NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip` INT NULL,
  PRIMARY KEY (`customers_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salespersons` (
  `staff_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`staff_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `invoice_id` INT NOT NULL,
  `invoice_num` INT NULL,
  `date` DATETIME NULL,
  `car` VARCHAR(45) NULL,
  `customer` VARCHAR(45) NULL,
  `salesperson` VARCHAR(45) NULL,
  `Customers_customers_id` INT NOT NULL,
  `Salespersons_staff_id` INT NOT NULL,
  PRIMARY KEY (`invoice_id`, `Customers_customers_id`, `Salespersons_staff_id`),
  INDEX `fk_invoices_Customers_idx` (`Customers_customers_id` ASC) VISIBLE,
  INDEX `fk_invoices_Salespersons1_idx` (`Salespersons_staff_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_Customers`
    FOREIGN KEY (`Customers_customers_id`)
    REFERENCES `mydb`.`Customers` (`customers_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_staff_id`)
    REFERENCES `mydb`.`Salespersons` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`store`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`store` (
  `store_id` INT NOT NULL,
  `location` VARCHAR(45) NULL,
  PRIMARY KEY (`store_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `VIN` INT NOT NULL,
  `year` INT NULL,
  `color` VARCHAR(45) NULL,
  `manufacturer_manufacturer_id` INT NOT NULL,
  `invoices_invoice_id` INT NOT NULL,
  `invoices_Customers_customers_id` INT NOT NULL,
  `invoices_Salespersons_staff_id` INT NOT NULL,
  `store_store_id` INT NOT NULL,
  PRIMARY KEY (`VIN`, `manufacturer_manufacturer_id`, `invoices_invoice_id`, `invoices_Customers_customers_id`, `invoices_Salespersons_staff_id`, `store_store_id`),
  INDEX `fk_Cars_manufacturer1_idx` (`manufacturer_manufacturer_id` ASC) VISIBLE,
  INDEX `fk_Cars_invoices1_idx` (`invoices_invoice_id` ASC, `invoices_Customers_customers_id` ASC, `invoices_Salespersons_staff_id` ASC) VISIBLE,
  INDEX `fk_Cars_store1_idx` (`store_store_id` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_manufacturer1`
    FOREIGN KEY (`manufacturer_manufacturer_id`)
    REFERENCES `mydb`.`manufacturer` (`manufacturer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_invoices1`
    FOREIGN KEY (`invoices_invoice_id` , `invoices_Customers_customers_id` , `invoices_Salespersons_staff_id`)
    REFERENCES `mydb`.`invoices` (`invoice_id` , `Customers_customers_id` , `Salespersons_staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_store1`
    FOREIGN KEY (`store_store_id`)
    REFERENCES `mydb`.`store` (`store_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`store_has_manufacturer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`store_has_manufacturer` (
  `store_store_id` INT NOT NULL,
  `manufacturer_manufacturer_id` INT NOT NULL,
  PRIMARY KEY (`store_store_id`, `manufacturer_manufacturer_id`),
  INDEX `fk_store_has_manufacturer_manufacturer1_idx` (`manufacturer_manufacturer_id` ASC) VISIBLE,
  INDEX `fk_store_has_manufacturer_store1_idx` (`store_store_id` ASC) VISIBLE,
  CONSTRAINT `fk_store_has_manufacturer_store1`
    FOREIGN KEY (`store_store_id`)
    REFERENCES `mydb`.`store` (`store_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_store_has_manufacturer_manufacturer1`
    FOREIGN KEY (`manufacturer_manufacturer_id`)
    REFERENCES `mydb`.`manufacturer` (`manufacturer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

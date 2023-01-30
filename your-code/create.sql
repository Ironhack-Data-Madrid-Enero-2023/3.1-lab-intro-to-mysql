-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema cars
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cars
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cars` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `cars` ;

-- -----------------------------------------------------
-- Table `cars`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`clientes` (
  `idclientes` INT NOT NULL,
  `numero_cliente` VARCHAR(45) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `ciudad` VARCHAR(45) NULL DEFAULT NULL,
  `telefono` INT NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idclientes`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cars`.`coches`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`coches` (
  `idcoches` INT NOT NULL,
  `vin` VARCHAR(17) NULL DEFAULT NULL,
  `fabricante` VARCHAR(45) NULL DEFAULT NULL,
  `modelo` VARCHAR(45) NULL DEFAULT NULL,
  `año` INT NULL DEFAULT NULL,
  `color` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idcoches`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cars`.`vendedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`vendedores` (
  `idvendedores` INT NOT NULL,
  `identificacion` VARCHAR(45) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `tienda` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idvendedores`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cars`.`Facturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars`.`Facturas` (
  `idFacturas` INT NOT NULL,
  `numero_Factura` VARCHAR(45) NULL DEFAULT NULL,
  `fecha` DATETIME NULL DEFAULT NULL,
  `coche` VARCHAR(45) NULL DEFAULT NULL,
  `cliente` VARCHAR(45) NULL DEFAULT NULL,
  `vendedor` VARCHAR(45) NULL DEFAULT NULL,
  `clientes_idclientes` INT NOT NULL,
  `coches_idcoches` INT NOT NULL,
  `clientes_idclientes1` INT NOT NULL,
  `vendedores_idvendedores` INT NOT NULL,
  `coches_idcoches1` INT NOT NULL,
  PRIMARY KEY (`idFacturas`, `clientes_idclientes`, `coches_idcoches`, `clientes_idclientes1`, `vendedores_idvendedores`, `coches_idcoches1`),
  INDEX `fk_Facturas_clientes1_idx` (`clientes_idclientes1` ASC) VISIBLE,
  INDEX `fk_Facturas_vendedores1_idx` (`vendedores_idvendedores` ASC) VISIBLE,
  INDEX `fk_Facturas_coches1_idx` (`coches_idcoches1` ASC) VISIBLE,
  CONSTRAINT `fk_Facturas_clientes1`
    FOREIGN KEY (`clientes_idclientes1`)
    REFERENCES `cars`.`clientes` (`idclientes`),
  CONSTRAINT `fk_Facturas_coches1`
    FOREIGN KEY (`coches_idcoches1`)
    REFERENCES `cars`.`coches` (`idcoches`),
  CONSTRAINT `fk_Facturas_vendedores1`
    FOREIGN KEY (`vendedores_idvendedores`)
    REFERENCES `cars`.`vendedores` (`idvendedores`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

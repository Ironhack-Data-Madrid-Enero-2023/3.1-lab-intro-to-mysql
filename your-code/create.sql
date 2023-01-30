USE `concesionaricr` ;

-- -----------------------------------------------------
-- Table `concesionaricr`.`Automovil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionaricr`.`Automovil` (
  `idAutomovil` INT NOT NULL,
  `VIN` VARCHAR(45) NULL,
  `fabricante` VARCHAR(45) NULL,
  `modelo` VARCHAR(45) NULL,
  `año` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  PRIMARY KEY (`idAutomovil`),
  UNIQUE INDEX `VIN_UNIQUE` (`VIN` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `concesionaricr`.`vendedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionaricr`.`vendedores` (
  `idvendedores` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `sucursal` INT NULL,
  PRIMARY KEY (`idvendedores`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `concesionaricr`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionaricr`.`clientes` (
  `id clientes` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `tel` VARCHAR(45) NULL,
  `mail` VARCHAR(45) NULL,
  `dirección` VARCHAR(45) NULL,
  `ciudad` VARCHAR(45) NULL,
  `provincia` VARCHAR(45) NULL,
  `pais` VARCHAR(45) NULL,
  `c.p` VARCHAR(45) NULL,
  PRIMARY KEY (`id clientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `concesionaricr`.`facturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionaricr`.`facturas` (
  `idfactura` INT NOT NULL,
  `numero` INT NULL,
  `fecha` DATETIME NULL,
  `importe` VARCHAR(45) NULL,
  `clientes_id clientes` INT NOT NULL,
  `Automovil_idAutomovil` INT NOT NULL,
  PRIMARY KEY (`idfactura`),
  INDEX `fk_facturas_clientes1_idx` (`clientes_id clientes` ASC) VISIBLE,
  INDEX `fk_facturas_Automovil1_idx` (`Automovil_idAutomovil` ASC) VISIBLE,
  CONSTRAINT `fk_facturas_clientes1`
    FOREIGN KEY (`clientes_id clientes`)
    REFERENCES `concesionaricr`.`clientes` (`id clientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_facturas_Automovil1`
    FOREIGN KEY (`Automovil_idAutomovil`)
    REFERENCES `concesionaricr`.`Automovil` (`idAutomovil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `concesionaricr`.`vendedores_has_facturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `concesionaricr`.`vendedores_has_facturas` (
  `vendedores_idvendedores` INT NOT NULL,
  `facturas_idfactura` INT NOT NULL,
  `facturas_clientes_id clientes` INT NOT NULL,
  `facturas_Automovil_idAutomovil` INT NOT NULL,
  PRIMARY KEY (`vendedores_idvendedores`, `facturas_idfactura`, `facturas_clientes_id clientes`, `facturas_Automovil_idAutomovil`),
  INDEX `fk_vendedores_has_facturas_facturas1_idx` (`facturas_idfactura` ASC, `facturas_clientes_id clientes` ASC, `facturas_Automovil_idAutomovil` ASC) VISIBLE,
  INDEX `fk_vendedores_has_facturas_vendedores1_idx` (`vendedores_idvendedores` ASC) VISIBLE,
  CONSTRAINT `fk_vendedores_has_facturas_vendedores1`
    FOREIGN KEY (`vendedores_idvendedores`)
    REFERENCES `concesionaricr`.`vendedores` (`idvendedores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vendedores_has_facturas_facturas1`
    FOREIGN KEY (`facturas_idfactura` , `facturas_clientes_id clientes` , `facturas_Automovil_idAutomovil`)
    REFERENCES `concesionaricr`.`facturas` (`idfactura` , `clientes_id clientes` , `Automovil_idAutomovil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- MySQL Script generated by MySQL Workbench
-- Fri Feb 18 15:00:41 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_projeto_integrador_grupo1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_projeto_integrador_grupo1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_projeto_integrador_grupo1` DEFAULT CHARACTER SET utf8 ;
USE `db_projeto_integrador_grupo1` ;

-- -----------------------------------------------------
-- Table `db_projeto_integrador_grupo1`.`tb_tema`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_projeto_integrador_grupo1`.`tb_tema` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(1000) NULL DEFAULT NULL,
  `tipo` VARCHAR(2000) NOT NULL,
  `data` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `db_projeto_integrador_grupo1`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_projeto_integrador_grupo1`.`tb_usuario` (
  `id` BIGINT NOT NULL,
  `nome completo` VARCHAR(255) NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `db_projeto_integrador_grupo1`.`tb_postagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_projeto_integrador_grupo1`.`tb_postagem` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `Titulo` VARCHAR(50) NOT NULL,
  `texto` VARCHAR(5000) NOT NULL,
  `Imagem` VARCHAR(255) NULL DEFAULT NULL,
  `tag` VARCHAR(255) NULL DEFAULT NULL,
  `tb_usuario_id` BIGINT NOT NULL,
  `tb_tema_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_postagem_tb_usuario_idx` (`tb_usuario_id` ASC) VISIBLE,
  INDEX `fk_tb_postagem_tb_tema1_idx` (`tb_tema_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_postagem_tb_tema1`
    FOREIGN KEY (`tb_tema_id`)
    REFERENCES `db_projeto_integrador_grupo1`.`tb_tema` (`id`),
  CONSTRAINT `fk_tb_postagem_tb_usuario`
    FOREIGN KEY (`tb_usuario_id`)
    REFERENCES `db_projeto_integrador_grupo1`.`tb_usuario` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
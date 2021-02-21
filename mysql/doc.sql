-- MySQL Script generated by MySQL Workbench
-- Sun Feb 21 13:56:03 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema Rdocumentation
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Rdocumentation` ;

-- -----------------------------------------------------
-- Schema Rdocumentation
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Rdocumentation` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `Rdocumentation` ;

-- -----------------------------------------------------
-- Table `Rdocumentation`.`Rdocumentation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Rdocumentation`.`Rdocumentation` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Rdocumentation`.`Rdocumentation` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `package` VARCHAR(64) NOT NULL,
  `symbol` VARCHAR(128) NOT NULL,
  `description` TEXT NULL,
  `arguments` TEXT NULL,
  `value_type` MEDIUMTEXT NULL,
  `returns` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;
CREATE UNIQUE INDEX `id_UNIQUE` ON `Rdocumentation`.`Rdocumentation` (`id` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Rdocumentation`.`blog_post`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Rdocumentation`.`blog_post` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Rdocumentation`.`blog_post` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `markdown_file` MEDIUMTEXT NOT NULL COMMENT 'the file path of the post docs in markdown format',
  `title` VARCHAR(128) NOT NULL,
  `addtime` DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;
CREATE UNIQUE INDEX `id_UNIQUE` ON `Rdocumentation`.`blog_post` (`id` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Rdocumentation`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Rdocumentation`.`user` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Rdocumentation`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) NOT NULL,
  `email` VARCHAR(128) NOT NULL COMMENT 'user is login via the verify code that send to this email address',
  `addtime` DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;
CREATE UNIQUE INDEX `id_UNIQUE` ON `Rdocumentation`.`user` (`id` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `Rdocumentation`.`comments`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Rdocumentation`.`comments` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `Rdocumentation`.`comments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `target` INT NOT NULL,
  `target_type` INT NOT NULL,
  `user_id` INT NOT NULL,
  `text` MEDIUMTEXT NOT NULL,
  `addtime` DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;
CREATE UNIQUE INDEX `id_UNIQUE` ON `Rdocumentation`.`comments` (`id` ASC);

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
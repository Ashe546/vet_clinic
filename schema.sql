/* Database schema to keep the structure of entire database. */

CREATE TABLE `vet_clinic`.`animals` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `date_of_birth` DATETIME NULL,
  `escape_attemts` INT NULL,
  `neutered` TINYINT NULL,
  `weight_kg` DECIMAL(45) NULL,
  PRIMARY KEY (`id`));
/* Database schema to keep the structure of entire database. */

DROP TABLE IF EXISTS animals;

CREATE TABLE animals (
    id INT,
    names VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL,
    PRIMARY KEY (id)
);

==================================================================

  ALTER TABLE animals ADD species VARCHAR(40);

==================================================================

CREATE TABLE owners (
    id INT AUTO_INCREMENT,
    full_name CHAR(200),
    age INT,
    PRIMARY KEY (id)
);

CREATE TABLE species (
    id INT AUTO_INCREMENT,
    name CHAR(100),
    PRIMARY KEY (id)
);

ALTER TABLE `vet_clinic`.`animals` DROP COLUMN `species`;

-- reference owner and species into animals

ALTER TABLE animals ADD CONSTRAINT fk_species FOREIGN KEY (species_id) REFERENCES species(id);
ALTER TABLE animals ADD CONSTRAINT fk_owners FOREIGN KEY (owners_id) REFERENCES owners(id);



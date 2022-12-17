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

=======================================================================================================

-- create vets table

CREATE TABLE vets (
    id INT AUTO_INCREMENT,
    name CHAR(100),
    age INT,
    date_of_graduation DATE,
    PRIMARY KEY (id)
);

-- specialisation table
CREATE TABLE specializations (
    id INT AUTO_INCREMENT,
    vets_name CHAR(100),
    species_name CHAR(100),
    PRIMARY KEY (id)
);

-- visits table
CREATE TABLE visits (
    id INT AUTO_INCREMENT,
    animals_name CHAR(100),
    vets_name CHAR(100),
    date_of_visit DATE,
    PRIMARY KEY(id)
);


-- ADD VISITS AND SPECIALIZATION INTO animals table

ALTER TABLE animals ADD COLUMN specialization_id INT;
ALTER TABLE animals ADD COLUMN visits_id INT;

-- refference them in animlas

ALTER TABLE animals ADD CONSTRAINT fk_specializations FOREIGN KEY (specialization_id) REFERENCES specializations(id);
ALTER TABLE animals ADD CONSTRAINT fk_visits FOREIGN KEY (visits_id) REFERENCES visits(id);
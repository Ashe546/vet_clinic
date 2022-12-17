/* Populate database with sample data. */

INSERT INTO `vet_clinic`.`animals` (`id`, `name`, `date_of_birth`, `escape_attemts`, `neutered`, `weight_kg`) VALUES ('1', 'Agumon', '2020-02-03', '0', '0', '10.23');
INSERT INTO `vet_clinic`.`animals` (`id`, `name`, `date_of_birth`, `escape_attemts`, `neutered`, `weight_kg`) VALUES ('2', 'Gabumon', '2018-11-15', '2', '1', '8');
INSERT INTO `vet_clinic`.`animals` (`id`, `name`, `date_of_birth`, `escape_attemts`, `neutered`, `weight_kg`) VALUES ('3', 'Pikachu', '2021-01-07', '1', '0', '15.04');
INSERT INTO `vet_clinic`.`animals` (`id`, `name`, `date_of_birth`, `escape_attemts`, `neutered`, `weight_kg`) VALUES ('4', 'Devimon', '2017-05-12', '5', '1', '11');


====================================================================================================================================

INSERT INTO animals (id, names, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (5,' Charmander', '2020-02-08', '0' , FALSE, '-11');

INSERT INTO animals (id, names, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (6,' Plantom', '2021-11-15', '2' , TRUE, '-5.7');

INSERT INTO animals (id, names, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (7,' Squirtle', '1993-04-02', '3' , FALSE, '-12.13');

INSERT INTO animals (id, names, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (8,' Angemon', '2005-06-12', '1' , TRUE, '-45');

INSERT INTO animals (id, names, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (9,' Boarmon', '2005-06-07', '7' , TRUE, '20.4');

INSERT INTO animals (id, names, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (10,' Blossom', '1998-10-13', '3' , TRUE, '17');

INSERT INTO animals (id, names, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (11,' Ditto', '2022-04-014', '4' , TRUE, '22');


--  insert data for owners

INSERT INTO owners(full_name, age) VALUES('Sam Smith', 34);
INSERT INTO owners(full_name, age) VALUES('Jennifer Orwell', 19);
INSERT INTO owners(full_name, age) VALUES('Bob', 45);
INSERT INTO owners(full_name, age) VALUES('Melody Pond', 77);
INSERT INTO owners(full_name, age) VALUES('Dean Winchester', 14);
INSERT INTO owners(full_name, age) VALUES('Joddy Whitaker', 38);

--  insert data for species 

INSERT INTO species(name) VALUES('Pokemon');
INSERT INTO species(name) VALUES('Digimon');

-- Modify your inserted animals so it includes the species_id value
UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id =1 WHERE species_id IS NULL; 


-- Modify your inserted animals to include owner information (owner_id
--  Sam Smith owns Agumon.
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Sam Smith') WHERE names = 'Agumon';
-- Jennifer Orwell owns Gabumon and Pikachu.
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell') WHERE names IN ('Gabumon', 'Pikachu');
-- Bob owns Devimon and Plantmon.
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Bob') WHERE names IN ('Devimon', 'Plantom');
-- Melody Pond owns Charmander, Squirtle, and Blossom.
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Melody Pond') WHERE names IN ('Charmander', 'Squirtle', 'Blossom');
-- Dean Winchester owns Angemon and Boarmon.
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Dean Winchester') WHERE names IN ('Angemon', 'Boarmon');

==========================================================================================================================================




-- data for specialties:
INSERT INTO specializations(vets_name,species_name) 
VALUES('William Tatcher','Pokemon'),
('Stephanie Mendez','Digimon,Pokemon'),
('Jack Harkness','Digimon');

-- data for visits
INSERT INTO visits (animals_name,vets_name,date_of_visit)
VALUES('Agumon','William Tatcher','2020-05-25'),
('Agumon','Stephanie Mendez','2020-07-22'),
('Gabumon','Jack Harkness','2021-02-02'),
('Pikachu','Maisy Smith','2020-01-05'),
('Pikachu','Maisy Smith','2020-03-08'),('Pikachu','Maisy Smith','2020-05-14'),
('Devimon','Stephanie Mendez','2021-05-04'),
('Charmander','Jack Harkness','2021-02-24'),
('Plantmon','Maisy Smith','2019-12-21'),
('Plantmon','William Tatcher','2020-04-10'),
('Squirtle','Stephanie Mendez','2020-09-29'),
('Angemon','Jack Harkness','2020-10-03'),
('Angemon','Jack Harkness','2020-11-04'),
('Boarmon','Maisy Smith','2019-01-24'),
('Boarmon','Maisy Smith','2019-05-15'),
('Boarmon','Maisy Smith','2020-02-27'),
('Boarmon','Maisy Smith','2019-01-24'),
('Boarmon','Maisy Smith','2020-08-03'),
('Blossom','Stephanie Mendaz','2020-05-24'),
('Blossom','Willia, Tatcher','2021-01-11');
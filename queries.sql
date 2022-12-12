/*Queries that provide answers to the questions from all projects.*/

/* Find all animals whose name ends in "mon". */
SELECT * FROM animals WHERE name LIKE '%mon';
/* List the name of all animals born between 2016 and 2019.*/
SELECT DISTINCT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' and '2020-12-30'  
/*List the name of all animals that are neutered and have less than 3 escape attempts. */
SELECT DISTINCT name FROM animals WHERE neutered="0" and escape_attemts < '3' 
/* List the date of birth of all animals named either "Agumon" or "Pikachu"*/
SELECT DISTINCT date_of_birth FROM animals WHERE name="Agumon" or name="Pikachu"  
/* List name and escape attempts of animals that weigh more than 10.5kg */
SELECT DISTINCT name, date_of_birth FROM animals WHERE weight_kg > "10.5"  
/* Find all animals that are neutered. */
SELECT * FROM animals WHERE neutered = "0"
/*Find all animals not named Gabumon. */
SELECT * FROM animals WHERE NOT name = "Gabumon" 
/* Find all animals with a weight between 10.4kg and 17.3kg (including the animals with the weights that equals precisely 10.4kg or 17.3kg) */
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3 
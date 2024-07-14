/*
Structure of table:
CREATE TABLE animals (
    animalId INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50) NOT NULL,
    species VARCHAR(100) NOT NULL,
    dateAdded DATETIME2(0),
    isMammal BIT NOT NULL
)
*/
SELECT *
FROM animals;

-- use sp_help to get information on the table
sp_help 'animals';

-- Insert a Row
INSERT INTO animals (name, species, dateAdded, isMammal)
VALUES ('Zippy', 'Kangoroo', GETDATE(), 1);

-- Insert two Rows
INSERT INTO animals (name, species, dateAdded, isMammal)
VALUES ('Octo', 'Octopus', GETDATE(), 0),
       ('Maria', 'Elephant', GETDATE(), 1);

-- Inserindo dados na tabela stg_animals
INSERT INTO stg_animals (name, species, dateAdded, isMammal)
VALUES ('Ruppert', 'Frog', GETDATE(), 0);
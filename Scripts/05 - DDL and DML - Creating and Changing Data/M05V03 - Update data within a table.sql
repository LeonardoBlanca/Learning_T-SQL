-- Select all animals
SELECT TOP 10 *
FROM animals;

-- Isolate the row you want to update
SELECT TOP 10 *
FROM animals
WHERE animalID = 3;

-- Updating
UPDATE animals
SET name = 'Mrs Maria'
WHERE animalId = 3;
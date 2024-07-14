-- Select all the data
SELECT TOP 10 *
FROM animals;

-- Select all the Rows first to prevent errors in your statement
SELECT TOP 10 *
FROM animals
WHERE isMammal = 1;

-- Now execute a proper DELETE statement
DELETE 
FROM animals
WHERE isMammal = 1

-- Done
SELECT TOP 10 *
FROM animals;
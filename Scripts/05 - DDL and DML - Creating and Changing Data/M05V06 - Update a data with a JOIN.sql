-- Select All from animals and from stg_animals

SELECT TOP 10 *
FROM animals;

-- From stg_animals
SELECT TOP 10 *
FROM stg_animals;

-- Adicionar uma nova coluna chamada Notes.
ALTER TABLE animals
ADD notes VARCHAR(100) NULL;
ALTER TABLE stg_animals
ADD notes VARCHAR(100) NULL;

-- SELECT WITH JOIN
SELECT *
FROM animals a
INNER JOIN stg_animals sa
ON a.name = sa.name;

-- Merge columns and insert a note in animals table that was merged.
UPDATE a
SET notes = 'imported from stg_animals table'
FROM animals a
INNER JOIN stg_animals sa
ON a.name = sa.name


-- This Worked
MERGE animals AS target
USING stg_animals AS source
ON target.name = source.name
WHEN MATCHED THEN
    UPDATE SET target.notes = 'imported from stg_animals table'
WHEN NOT MATCHED BY TARGET THEN
    INSERT (name, species, dateAdded, isMammal, notes)
    VALUES (source.name, source.species, source.dateAdded, source.isMammal, 'imported from stg_animals table');

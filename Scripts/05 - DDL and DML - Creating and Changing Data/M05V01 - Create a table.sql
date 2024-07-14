-- Create a table to hold sample data about animals

CREATE TABLE animals (
    animalId INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50) NOT NULL,
    species VARCHAR(100) NOT NULL,
    dateAdded DATETIME2(0),
    isMammal BIT NOT NULL
)

-- Now the table is ready to add info


-- Let's create a send table
CREATE TABLE stg_animals (
    animalId INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50) NOT NULL,
    species VARCHAR(100) NOT NULL,
    dateAdded DATETIME2(0),
    isMammal BIT NOT NULL
)
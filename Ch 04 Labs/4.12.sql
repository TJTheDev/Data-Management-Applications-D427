-- 4.12 LAB - Implement strong entity (Sakila)
-- Implement a new strong entity phone in the Sakila database. Attributes and relationships are shown in the following diagram:

-- The diagram uses Sakila naming conventions. Follow the Sakila conventions for your table and column names:

-- All lower case
-- Underscore separator between root and suffix
-- Foreign keys have the same name as referenced primary key
-- Write CREATE TABLE and ALTER TABLE statements that:

-- Implement the entity as a new phone table.
-- Implement the has relationships as foreign keys in the Sakila customer, staff, and store tables.
-- Remove the existing phone column from the Sakila address table.
-- Step 2 requires adding a foreign key constraint to an existing table. Ex:

-- ALTER TABLE customer 
--   ADD FOREIGN KEY (phone_id) REFERENCES phone(phone_id)
--   ON DELETE SET NULL
--   ON UPDATE CASCADE;
-- Specify data types as follows:

-- phone_id, phone_number, and country_code have data type INT.
-- phone_type has data type VARCHAR(12) and contains strings like 'Home', 'Mobile', and 'Other'.
-- Apply these constraints:

-- NOT NULL and UNIQUE constraints correspond to cardinalities on the diagram above.
-- Foreign key actions are SET NULL for delete rules and CASCADE for update rules.
-- Specify a suitable column as the phone table primary key.

-- Create the phone table with the corrected definition
CREATE TABLE phone (
    phone_id INT PRIMARY KEY,
    country_code INT NOT NULL,
    phone_number INT NOT NULL,
    phone_type VARCHAR(12) NULL
);

-- Add phone_id as a foreign key in the customer table with UNIQUE constraint
ALTER TABLE customer 
    ADD phone_id INT,
    ADD CONSTRAINT UNIQUE (phone_id),
    ADD FOREIGN KEY (phone_id) REFERENCES phone(phone_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE;

-- Add phone_id as a foreign key in the staff table with UNIQUE constraint
ALTER TABLE staff 
    ADD phone_id INT,
    ADD CONSTRAINT UNIQUE (phone_id),
    ADD FOREIGN KEY (phone_id) REFERENCES phone(phone_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE;

-- Add phone_id as a foreign key in the store table with UNIQUE constraint
ALTER TABLE store 
    ADD phone_id INT,
    ADD CONSTRAINT UNIQUE (phone_id),
    ADD FOREIGN KEY (phone_id) REFERENCES phone(phone_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE;

-- Remove the existing phone column from the address table
ALTER TABLE address 
    DROP COLUMN phone;

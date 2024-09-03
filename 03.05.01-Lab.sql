-- Introduction
-- The purpose of this lab is to gain familiarity with MySQL Workbench. The lab also ensures the correct version of the Sakila sample database is installed on your computer, for use in other zyLabs.

-- This lab has three parts:

-- Install the Sakila database.
-- Run a simple query.
-- Recreate a Sakila table in the zyLab environment.
-- Only the third part is graded.

-- Install the Sakila database
-- This lab requires access to MySQL Server via MySQL Workbench. Most students install and access MySQL Server and MySQL Workbench on their personal computer. Installation instructions are available at MySQL Server installation and MySQL Workbench installation.

-- To create Sakila tables in MySQL, download the Sakila schema file, open MySQL Workbench, and click the following menu commands:

-- Click 'File' > 'Open SQL Script…' and open the Sakila schema file.
-- Click 'Query' > ''Execute (All or Selection)'.
-- To load sample data to the Sakila tables, download the Sakila data file and repeat steps 1 and 2 with this file.

-- Run a simple query
-- Refer to the following MySQL Workbench screenshot, taken from a Mac computer. Workbench looks slightly different on Windows.

-- The image is a screenshot of MySQL Workbench running on a Mac computer. The Schemas tab is highlighted. Below Schemas, two circular arrows representing a screen refresh operation are highlighted in a circle. A hierarchical file structure with the folders sakila, then Tables, then film highlighted. The film folder contains several commands with the phrase Select Rows - limit 1000 highlighted.

-- If 'sakila' does not appear under 'Schemas', click the refresh icon, in the red circle above. If 'sakila' still does not appear, repeat the installation process or request assistance.

-- Depending on Workbench configuration, a different Limit may appear after 'Select Rows'.

-- When 'sakila' appears under 'Schemas':

-- Click > to expand 'sakila'.
-- Click > to expand 'Tables'.
-- Right-click 'film'.
-- Click 'Select Rows - Limit 1000'.
-- MySQL Workbench executes SELECT * FROM film; and displays 1000 films:

-- The image is a screenshot of MySQL Workbench running on a Mac computer. On the left is a list of tables in the Sakila database. In the center, within a query panel, is the statement SELECT * FROM sakila.film;. Below the query panel is a result panel containing the first nine rows of the film table, with a vertical scroll bar so that additional rows can be viewed.

-- Recreate a Sakila table in the zyLab environment
-- To recreate the actor table in the zyLab environment:

-- Right-click 'actor'.
-- Select 'Copy to Clipboard' > 'Create Statement' to copy the CREATE TABLE statement to your clipboard.
-- Paste the CREATE TABLE statement into the zyLab Main.sql box.
-- Delete the following characters for compatibility with the zyLab environment:
-- COLLATE=utf8mb4_0900_ai_ci
-- all apostrophes (`)
-- The CREATE TABLE statement creates actor columns, keys, and indexes. No result is displayed in Develop mode. The tests in Submit mode verify that the zyLab and Sakila actor tables are identical.

CREATE TABLE actor (
  actor_id smallint unsigned NOT NULL AUTO_INCREMENT,
  first_name varchar(45) NOT NULL,
  last_name varchar(45) NOT NULL,
  last_update timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (actor_id),
  KEY idx_actor_last_name (last_name)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4;

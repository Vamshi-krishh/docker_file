-- Create the database
CREATE DATABASE mydb;
USE mydb;

-- Create table tv_shows
CREATE TABLE tv_shows (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  synopsis VARCHAR(255),
  release_year INT
);

-- Create table tv_characters
CREATE TABLE tv_characters (
  character_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(255),
  tv_show_id INT,
  FOREIGN KEY (tv_show_id) REFERENCES tv_shows(id)
);

-- Insert sample data into tv_shows
INSERT INTO tv_shows (title, synopsis, release_year)
VALUES
  ('Game of Thrones', 'Epic fantasy series', 2011),
  ('Friends', 'Friends', 1994),
  ('Breaking Bad', 'Drug lord', 2008),
  ('Stranger Things', 'Science fiction', 2016),
  ('The Office', 'Mockumentary sitcom', 2005);

-- Insert sample data into tv_characters
INSERT INTO tv_characters (name, description, tv_show_id)
VALUES
  ('Jon Snow', 'Brave and noble', 1),
  ('Rachel Green', 'Fashionable and quirky', 2),
  ('Walter White', 'Teacher turned criminal', 3),
  ('Eleven', 'Supergirl', 4),
  ('Jim Halpert', 'Prankster', 5);

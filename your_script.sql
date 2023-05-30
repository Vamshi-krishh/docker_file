-- Create the database
CREATE DATABASE mydb;
USE mydb;

-- Create the tv_shows table
CREATE TABLE tv_shows (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(45),
  synopsis VARCHAR(45),
  release_year INT
);

-- Create the tv_characters table
CREATE TABLE tv_characters (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(45),
  description VARCHAR(45),
  tv_show_id INT,
  FOREIGN KEY (tv_show_id) REFERENCES tv_shows(id)
);



-- Insert sample data into tv_shows
INSERT INTO tv_shows (id, title, synopsis, release_year)
VALUES
  (1, 'Game of Thrones', 'Epic fantasy series', 2011),
  (2, 'Friends', 'Friends', 1994),
  (3, 'Breaking Bad', 'Drug lord', 2008),
  (4, 'Stranger Things', 'Science fiction', 2016),
  (5, 'The Office', 'Mockumentary sitcom', 2005);

-- Insert sample data into tv_characters
INSERT INTO tv_characters (id, name, description, tv_show_id)
VALUES
  (1, 'Jon Snow', 'Brave and noble', 1),
  (2, 'Rachel Green', 'Fashionable and quirky', 2),
  (3, 'Walter White', 'Teacher turned criminal', 3),
  (4, 'Eleven', 'Supergirl', 4),
  (5, 'Jim Halpert', 'Prankster', 5);

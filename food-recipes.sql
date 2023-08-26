-- create Recipe table
CREATE TABLE Recipe (
  recipe_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);
-- create Category table
CREATE TABLE Category (
  category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);
-- create Ingredient table 
CREATE TABLE Ingredient (
  igredient_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);
-- create Step table 
CREATE TABLE Steps (
  step_id INT INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  stepDescription TEXT NOT NULL
);
-- create RecipeCategory table
CREATE TABLE RecipeCategory ();
-- create RecipeIngredient table
CREATE TABLE RecipeIngredient ();
-- create RecipeStep table
CREATE TABLE RecipeStep ();
-- insert into Category
INSERT INTO Category ()
VALUES
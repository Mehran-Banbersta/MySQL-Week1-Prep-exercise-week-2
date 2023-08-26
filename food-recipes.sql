-- create Recipe table
CREATE TABLE Recipe (
  recipe_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  recipeName VARCHAR(255) NOT NULL
);
-- create Category table
CREATE TABLE Category (
  category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  CategoryName VARCHAR(255) NOT NULL
);
-- create Ingredient table 
CREATE TABLE Ingredient (
  ingredient_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ingredientName VARCHAR(255) NOT NULL
);
-- create Step table 
CREATE TABLE Steps (
  step_id INT INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  stepDescription TEXT NOT NULL
);
-- create RecipeCategory table
CREATE TABLE RecipeCategory (
  recipe_id INT,
  category_id INT,
  FOREIGN KEY (recipe_id) REFERENCES Recipe(recipe_id),
  FOREIGN KEY (category_id) REFERENCES Category(category_id),
  PRIMARY KEY (recipe_id, category_id)
);
-- create RecipeIngredient table
CREATE TABLE RecipeIngredient (
  recipe_id INT,
  ingredient_id INT,
  FOREIGN KEY (recipe_id) REFERENCES Recipe(recipe_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id),
  PRIMARY KEY (recipe_id, ingredient_id)
);
-- create RecipeStep table
CREATE TABLE RecipeStep (
  recipe_id INT,
  step_id INT,
  stepOrders INT NULL NULL,
  FOREIGN KEY (recipe_id) REFERENCES Recipe(recipe_id),
  FOREIGN KEY (step_id) REFERENCES Steps(step_id),
  PRIMARY KEY(recipe_id, step_id)
);
-- insert into Category => CategoryName
INSERT INTO Category (CategoryName)
VALUES ('Cake'),
  ('No-Bake'),
  ('Vegetarian'),
  ('Vegan'),
  ('Gluten-Free'),
  ('Japanese');
-- insert into Ingredient => ingredientName
INSERT INTO Ingredient (ingredientName)
VALUES ("Condensed milk"),
  ("Cream Cheese"),
  ("Lemon Juice"),
  ("Pie Crust"),
  ("Cherry Jam"),
  ("Brussels Sprouts"),
  ("Lemon juice"),
  ("Sesame seeds"),
  ("Pepper"),
  ("Salt"),
  ("Olive oil"),
  ("Macaroni"),
  ("Butter"),
  ("Flour"),
  ("Salt "),
  ("Pepper"),
  ("Milk"),
  ("Shredded"),
  ("Cheddar"),
  ("cheese"),
  ("Eggs"),
  ("Soy"),
  ("sauce"),
  ("Sugar"),
  ("Salt"),
  ("Olive"),
  ("Oil");
-- insert into Steps
INSERT INTO Steps (stepDescription)
VALUES ("Preheat the oven"),
  ("Mix the ingredients in a bowl"),
  ("Spread the mix on baking sheet"),
  ("Bake for 30'"),
  ("Cook Macaroni for 8'"),
  ("Melt butter in a saucepan"),
  ("Add flour, salt, pepper and mix "),
  ("Add Milk and mix"),
  ("Cook until mix is smooth"),
  ("Add cheddar cheese"),
  ("Add the macaroni"),
  ("Beat the eggs"),
  ("Add soya sauce, sugar and salt"),
  ("Add oil to a sauce pan "),
  ("Bring to medium heat"),
  ("Add some mix to the sauce pan"),
  ("Let is cook for 1'"),
  ("Add oil to a sauce pan"),
  ("Add some mix to the sauce pan"),
  ("Let is cook for 1'"),
  ("Remove pan from fire");
-- insert into recipe
INSERT INTO Recipe (recipeName)
VALUES ("Cheesecake"),
  ("Mac & Cheese"),
  ("Tamagoyaki Japanese Omelette");
-- insert into RecipeCategory
INSERT INTO RecipeCategory ()
VALUES -- insert into RecipeIngredient
INSERT INTO RecipeIngredient ()
VALUES -- insert into RecipeStep
INSERT INTO RecipeStep ()
VALUES
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
  ("Sesame seeds"),
  ("Pepper"),
  ("Olive oil"),
  ("Macaroni"),
  ("Butter"),
  ("Flour"),
  ("Milk"),
  ("Shredded Cheddar cheese"),
  ("Eggs"),
  ("Soy sauce"),
  ("Sugar"),
  ("Salt");
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
  ("Remove pan from fire");
-- insert into recipe
INSERT INTO Recipe (recipeName)
VALUES ("Cheesecake"),
  ("Roasted Brussels Sprouts"),
  ("Mac & Cheese"),
  ("Tamagoyaki Japanese Omelette");
-- insert into RecipeCategory
INSERT INTO RecipeCategory (recipe_id, category_id) -- Cheesecake , Cake
VALUES -- Cheesecake, Cake
  (1, 1),
  -- Roasted Brussels Sprouts, vegan
  (2, 4),
  -- Mac & Cheese, Vegetarian
  (3, 3),
  -- Tamagoyaki Japanese Omelette, Japanese
  (4, 6);
-- insert into RecipeIngredient
INSERT INTO RecipeIngredient (recipe_id, ingredient_id)
VALUES (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (1, 5),
  (2, 6),
  (2, 3),
  (2, 7),
  (2, 8),
  (2, 9),
  (3, 10),
  (3, 11),
  (3, 12),
  (3, 18),
  (3, 8),
  (3, 13),
  (3, 14),
  (4 15),
  (4, 16),
  (4, 17),
  (4, 18),
  (4, 9);
-- insert into RecipeStep
INSERT INTO RecipeStep (recipe_id, step_id, stepOrders)
VALUES -- Cheesecake Steps
  (1, 1, 1),
  (1, 2, 2),
  (1, 3, 3),
  (1, 4, 4),
  (1, 5, 5),
  (1, 6, 6),
  (1, 7, 7),
  -- Roasted Brussels Sprouts Steps
  (2, 8, 1),
  (2, 9, 2),
  (2, 10, 3),
  (2, 11, 4),
  -- Mac & Cheese Steps
  (3, 12, 1),
  (3, 13, 2),
  (3, 14, 3),
  (3, 15, 4),
  (3, 16, 5),
  (3, 17, 6),
  (3, 18, 7),
  -- Tamagoyaki Japanese Omelette Steps
  (4, 19, 1),
  (4, 20, 2),
  (4, 21, 3),
  (4, 22, 4),
  (4, 23, 5),
  (4, 24, 6),
  (4, 25, 7),
  (4, 26, 8);
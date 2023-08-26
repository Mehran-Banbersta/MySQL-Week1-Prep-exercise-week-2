-- create Recipe table
CREATE TABLE Recipe (
  recipe_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL
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
VALUES 
('Cake'), ('No-Bake'), ('Vegetarian'), ('Vegan'), ('Gluten-Free'), ('Japanese'),

 -- insert into Ingredient => ingredientName
INSERT INTO Ingredient (ingredientName)
VALUES
 ("Condensed milk"),
  "Cream Cheese"),
   "Lemon Juice"), "Pie Crust" 
   "Cherry Jam"
    "Brussels Sprouts" 
    "Lemon juice"
     "Sesame seeds"
      "Pepper" 
      "Salt" 
      "Olive oil" 
      "Macaroni" "Butter" "Flour" "Salt " "Pepper" "Milk" "Shredded Cheddar cheese" "Eggs" "Soy sauce" "Sugar" "Salt" 
   "Olive Oil"
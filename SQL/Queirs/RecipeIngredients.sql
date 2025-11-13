-- Titta på olika recpt 
-- Använd WHERE = 1-4 för att se de olika recepten

SELECT
Name AS 'Recept', 
Instructions AS 'Instruktioner'
FROM Products 
INNER JOIN Recipes ON Products.RecipeId = Recipes.Id
WHERE RecipeId = 4;

SELECT 
Ingredients.Name AS 'Ingrediens',
Quantity  || ' ' || Value AS 'Mängd'
From Recipes 
INNER JOIN RecipeIngredients ON Recipes.Id =  RecipeIngredients.RecipeId
INNER JOIN Ingredients ON Ingredients.Id =  RecipeIngredients.IngredientId
INNER JOIN Products ON Recipes.Id = Products.RecipeId
INNER JOIN UnitTypes ON UnitTypes.Id = RecipeIngredients.UnitTypeId
WHERE Recipes.id = 4;

--Testade även GROUP_CONCAT
SELECT 
    Products.Name AS 'Recept',
    Recipes.Instructions AS 'Instruktioner',
    GROUP_CONCAT(Ingredients.Name || ' (' || RecipeIngredients.Quantity || ' ' || UnitTypes.Value || ')', ', ') 
        AS 'Ingredienser'
FROM Recipes 
INNER JOIN Products ON Recipes.Id = Products.RecipeId
INNER JOIN RecipeIngredients ON Recipes.Id = RecipeIngredients.RecipeId
INNER JOIN Ingredients ON Ingredients.Id = RecipeIngredients.IngredientId
INNER JOIN UnitTypes ON UnitTypes.Id = RecipeIngredients.UnitTypeId
WHERE Recipes.Id = 4
GROUP BY Recipes.Id;
--Lagerhållning av egna produkter
--Samt receptets Id för att lättare baka mer om det behövs

SELECT 
Name AS 'Product',
ItemNumber AS 'Artickelnummer',
Quantity  || ' ' || Value AS 'I lager',
RecipeId AS 'Recept-Id'

 FROM Inventory 
INNER JOIN Items ON Items.id = Inventory.ItemId
INNER JOIN ProductItems ON ProductItems.ItemId = Items.id
INNER JOIN Products on Products.id = ProductItems.ProductId
INNER JOIN UnitTypes ON UnitTypes.Id = Items.UnitTypeId;

-- Titta på olika recpt 
-- Använd WHERE  = Recept-Id för att se de olika recepten

SELECT
RecipeId AS 'Id',
Name AS 'Recept',
Instructions AS 'Instruktioner'
FROM Products 
INNER JOIN Recipes ON Products.RecipeId = Recipes.Id
WHERE RecipeId = 3;

SELECT 
Ingredients.Name AS 'Ingrediens',
Quantity  || ' ' || Value AS 'Mängd'
From Recipes 
INNER JOIN RecipeIngredients ON Recipes.Id =  RecipeIngredients.RecipeId
INNER JOIN Ingredients ON Ingredients.Id =  RecipeIngredients.IngredientId
INNER JOIN Products ON Recipes.Id = Products.RecipeId
INNER JOIN UnitTypes ON UnitTypes.Id = RecipeIngredients.UnitTypeId
WHERE Recipes.id = 3;


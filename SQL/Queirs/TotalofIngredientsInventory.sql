--Total lagerhållning av varje råvara
-- (Vi har mjölk från två olika leverantörer i lager och detta summeras)

SELECT 
Name,
SUM(Inventory.Quantity) || ' ' || Value AS 'Totalt i lager'
From Ingredients 
INNER JOIN IngredientItems ON IngredientItems.IngredientId = Ingredients.Id
INNER JOIN Items ON IngredientItems.ItemId = Items.Id
INNER JOIN Inventory ON Inventory.ItemId = Items.ID
INNER JOIN UnitTypes ON UnitTypes.Id = Items.UnitTypeId
GROUP BY Ingredients.Id;
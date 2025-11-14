--Total lagerhållning av varje råvara
-- (Vi har mjölk från två olika leverantörer i lager och detta summeras)
--(Experimenterade lite med GROUP_CONCAT)

SELECT 
    Ingredients.Name AS 'Råvara',
    SUM(Inventory.Quantity) || ' ' || UnitTypes.Value AS 'Totalt i lager',
    GROUP_CONCAT(Suppliers.Name, ', ') AS 'Leverantörer'
FROM Ingredients
INNER JOIN IngredientItems ON IngredientItems.IngredientId = Ingredients.Id
INNER JOIN Items ON IngredientItems.ItemId = Items.Id
INNER JOIN Inventory ON Inventory.ItemId = Items.Id
INNER JOIN UnitTypes ON UnitTypes.Id = Items.UnitTypeId
INNER JOIN SupplierItems ON SupplierItems.ItemId = Items.Id
INNER JOIN Suppliers ON Suppliers.Id = SupplierItems.SupplierId
GROUP BY Ingredients.Id
ORDER BY Ingredients.Name ASC;
--Hämta varje artickel från leverantörer
SELECT 
Suppliers.Name as 'Leverantör', 
ItemNumber as 'Artikelnummer',
Ingredients.Name as 'Råvara',
PricePerUnit  || '/' || Value AS 'Kr/enhet'
 FROM Suppliers
INNER JOIN SupplierItems ON Suppliers.Id = SupplierItems.SupplierId
INNER JOIN Items ON Items.id = SupplierItems.ItemId
INNER JOIN IngredientItems ON IngredientItems.ItemId = SupplierItems.ItemId
INNER JOIN Ingredients ON Ingredients.Id = IngredientItems.IngredientId
INNER JOIN UnitTypes ON UnitTypes.Id = Items.UnitTypeId
ORDER BY Suppliers.Name ASC;



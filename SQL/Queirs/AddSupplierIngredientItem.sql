--Lägg till ingrediens hos leverantör,
--Köper in mjöl från ytterligare en leverantör
--(Dessa queries är inte körda vid inlämmning)

--anger itemNumber, pris och enhetstyp där 1 är kg
INSERT INTO Items (
    ItemNumber,
    PricePerUnit,
    UnitTypeId
) VALUES 
(
   'DS-734', 13, 1
   
);
--Vet att ovan item kommer få Id 22
INSERT INTO SupplierItems (
    SupplierId,
    ItemId
) VALUES 
(
   3,22
);
--Vet att mjöl har id 1
INSERT INTO IngredientItems (
    IngredientId,
    ItemId
) VALUES 
    (1,22);

--Lägger till 30 (kg) i inventory
INSERT INTO Inventory (
ItemId,
Quantity
) VALUES 
(
    22, 30
);

--Visa den nya Råvaro-artickeln
SELECT * FROM Items
INNER JOIN IngredientItems ON IngredientItems.ItemId = Items.Id
WHERE Items.Id = 22;
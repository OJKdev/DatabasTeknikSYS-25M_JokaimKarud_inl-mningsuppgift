--Lägg till ingrediens hos leverantör
-- (Köper in mjöl från ytterligare en leverantör)

--anger itemNumber, pris och enhetstyp där 1 är kg
INSERT INTO Items (
    ItemNumber,
    PricePerUnit,
    UnitTypeId
) VALUES 
(
   'DS-734', 13, 1
   
);
--Vet att nästa item fick Id 22
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
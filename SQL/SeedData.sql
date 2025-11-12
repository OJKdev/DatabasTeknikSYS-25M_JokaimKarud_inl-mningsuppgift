INSERT INTO Suppliers(
Name
)VALUES
('Kungsörnen Grossist AB'),
('Arla Foods Sverige'),
('Dansukker Nordic Sugar'),
('KronJäst Leverantör AB'),
('Saltimporten Malmö AB'),
('Skånemejerier'),
('VA SYD'),
('Mormor Dagnys Bageri');

INSERT INTO Contacts(
FirstName,
LastName
)VALUES
('Anna','Sjöberg'),
('Johan','Ek'),
('Maria','Holm'),
('Emma','Karlsson'),
('Peter','Hall'),
('Markus', 'Lund'),
('Anders', 'Johansson'),
('Mormor', 'Dagny');



INSERT INTO SupplierContacts(
SupplierId,
ContactId
)VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8);


INSERT INTO PhoneNumbers(
PhoneNumber
)VALUES
('040-123456'),
('010-234567'),
('020-567890'),
('050-456789'),
('040-998877'),
('046-223344'),
('070-567893'),
('030-564534');

INSERT INTO ContactPhoneNumbers(
ContactId,
PhoneNumberId
)VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8);

INSERT INTO Emails(
Email
)VALUES
('anna.sjoberg@kungsornen.se'),
('johan.ek@arla.se'),
('maria.holm@dansukker.dk'),
('emma.karlsson@kronjast.se'),
('emma.karlsson@saltimporten.se'),
('markus.lund@skanemejerier.se'),
('Anders.Johansson@vasyd.se'),
('Mormor.Dagny@Dagnys.se');

INSERT INTO ContactEmails(
ContactId,
EmailId
)VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8);




-- Enhetstyper
INSERT INTO UnitTypes(
    Value
) VALUES 
    ('Kg'),
    ('L'),
    ('St'),
    ('Sats');


-- Råvaror
INSERT INTO Ingredients (
    Name
) VALUES 
    ('Vetemjöl'),
    ('Smör'),
    ('Socker'),
    ('Jäst'),
    ('Kanel'),
    ('Mjölk'),
    ('Salt'),
    ('Olja'),
    ('Kakao'),
    ('Ägg'),
    ('Bakpulver'),
    ('Grädde'),
    ('Vaniljkräm'),
    ('Sylt'),
    ('Marsipan'),
    ('Vatten');

--Råvoror som articklar
INSERT INTO Items(
ItemNumber, 
PricePerUnit,
UnitTypeId

) VALUES
(
    'KG-1284',
    14.5,
    1
),
( 
    'ARL204',
    65,
    1
),
( 
    'DS-455',
    12,
    1
),
( 
    'KJ3921',
    250,
    1
),
( 
    'SI7384',
    190,
    1
),
( 
    'SKM112',
    11,
    2
),
( 
    'SI4493',
    9,
    1
),
( 
    'KG-7742',
    40,
    2
),
( 
    'DS-602',
    90,
    1
),
( 
    'ARL517',
    3,
    3
),
( 
    'KG-3310',
    35,
    1
),
( 
    'SKM728',
    50,
    2
),
( 
    'DS-889',
    80,
    1
),
( 
    'DS-933',
    35,
    1
),
( 
    'KG-5520',
    75,
    1
),
( 
    'VAS0012',
    0.01,
    2
);

--Råvaror N:N med articklar
INSERT INTO IngredientItems (
    IngredientId,
    ItemId
) VALUES 
    (1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5),
    (6,6),
    (7,7),
    (8,8),
    (9,9),
    (10,10),
    (11,11),
    (12,12),
    (13,13),
    (14,14),
    (15,15),
    (16,16);

--Mormor Dagny Bageris recept
INSERT INTO Recipes (
    Instructions
) VALUES (
'Smält smör, blanda med mjölk till fingervarmt. 
Lös upp jäst, tillsätt socker, salt och kardemumma. 
Arbeta in mjöl till smidig deg. Låt jäsa 30 min. 
Kavla, bred fyllning av smör, socker och kanel, 
rulla ihop och skär bullar. Jäs 30 min till, 
pensla med ägg, grädda 225 °C i 8–10 min.'
),
(
'Lös upp jäst i ljummet vatten. 
Tillsätt salt, olja och mjöl. 
Arbeta till smidig deg, låt jäsa 40 min. 
Forma frallor, jäs 30 min till. 
Pensla med vatten, strö över frön om önskat. 
Grädda 225 °C i 10–12 min tills gyllene.'
),
(
'Smält smör, rör ner kakao. 
Vispa ägg och socker luftigt. 
Blanda i mjöl, bakpulver, 
vaniljsocker och smörblandning. 
Fördela i formar, fyll två tredjedelar. 
Grädda 200 °C i 10–12 min. 
Låt svalna på galler.'
),
(
'Baka tårtbotten, dela i tre lager. 
Fyll med vaniljkräm och vispad grädde. 
Täck med marsipanlock. Pudra med florsocker. 
Förvara kallt tills servering.'
);

--Mormor Dagny Bageris Produkter
INSERT INTO Products (
    Name,
    RecipeId
) VALUES (
    '30 Kanelbullar',
    1
),
(
    '20 Frallor',
    2
),
(
    '12 Chokladmuffins',
    3
),
(
    'Prinsesstårta, 24cm',
    4
);

-- Articklar för ovan produkter
INSERT INTO Items(
ItemNumber, 
PricePerUnit,
UnitTypeId

) VALUES
( 
    'MD-001',
    230,
    4
),
( 
    'MD-002',
    40,
    4
),
( 
    'MD-003',
    240,
    4
),
( 
    'MD-004',
    150,
    3
)


--Articklar från leverantörer
INSERT INTO SupplierItems (
    ItemId,
    SupplierId
) VALUES 
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,5),
(8,1),
(9,3),
(10,2),
(11,1),
(12,6),
(13,3),
(14,3),
(15,1),
(16,7),
(17,8),
(18,8),
(19,8),
(20,8);

--Produkter n:n med articklar
INSERT INTO ProductItems (
    ProductId,
    ItemId
) VALUES 
    (1,17),
    (2,18),
    (3,19),
    (4,20);

--Recpt Kanelbullar
INSERT INTO RecipeIngredients (
    RecipeId,
    IngredientId,
    Quantity,
    UnitTypeId
) VALUES 
(1, 1, 1, 1),
(1,2,0.15, 1),
(1,3,0.12,1),
(1,4,0.05,1),
(1,5,0.02,1),
(1,6,0.5,2),
(1,7,0.01,1);

--Recpt Frallor
INSERT INTO RecipeIngredients (
    RecipeId,
    IngredientId,
    Quantity,
    UnitTypeId
) VALUES 
(2, 1, 0.8, 1),
(2,4,0.025, 1),
(2,16,0.5,2),
(2,7,0.012,1),
(2,8,0.03,2);
--recept chokladmuffins
INSERT INTO RecipeIngredients (
    RecipeId,
    IngredientId,
    Quantity,
    UnitTypeId
) VALUES 
(3, 1, 0.25, 1),
(3,3,0.2, 1),
(3,9,0.03,1),
(3,10,2,3),
(3,2,0.1,1),
(3,6,0.15,2),
(3,11,0.01,1);

--recept Prinsesstårta
INSERT INTO RecipeIngredients (
    RecipeId,
    IngredientId,
    Quantity,
    UnitTypeId
) VALUES 
(4, 1, 0.12, 1),
(4,3,0.2, 1),
(4,10,4,3),
(4,12,0.3,2),
(4,13,0.2,1),
(4,14,0.15,1),
(4,15,0.35,1);

INSERT INTO AddressTypes (
    Value
) VALUES 
('Leverans'),
('Faktura');

--Normaliserar adresserna ;)
INSERT INTO Cities (
City
) VALUES 
('Staden'),
('Byn'),
('Dalen'),
('Orten'),
('Ängen'),
('Landet'),
('Stan');

INSERT INTO PostalCodes (
PostalCode,
CityId
) VALUES 
(
    '123456',
    1
),
(
    '234567',
    2
),

(
    '345678',
    3
),

(
    '456789',
    4
),

(
    '567890',
    5
),

(
    '678901',
    6
),

(
    '789012',
    7
);
INSERT INTO Addresses (
AddressLine,
PostalCodeId
) VALUES 
(
    'Gatan 1',
    1
),
(
    'Vägen 2',
    2
),

(
    'Gränden 3',
    3
),

(
    'Allén 4',
    4
),

(
    'Stigen 5',
    5
),

(
    'Grändstigen 6',
    6
),

(
    'Gatovägen 7',
    7
);

INSERT INTO SupplierAddresses (
    SupplierId,
    AddressId,
    AddressTypeId
) VALUES 
(1,1,1),
(2,2,1),
(3,3,1),
(4,4,1),
(5,5,1),
(6,6,1),
(7,7,1);

--Skapar en lagerhållning
INSERT INTO Inventory (
ItemId,
Quantity
) VALUES 
(1, 54),
(2, 30),
(3, 40),
(4, 11),
(5, 4),
(6, 28),
(7, 6),
(8, 22),
(9, 16),
(10, 52),
(11, 7),
(12, 16),
(13, 12),
(14, 12),
(15, 5),
(16, 5000),
(17, 4),
(18, 9),
(19, 2),
(20, 5);



-- EXTRA INSERTS (Köper in mjölk från ytterligare en leverantör)
INSERT INTO Items (
    ItemNumber,
    PricePerUnit,
    UnitTypeId
) VALUES 
(
   'ARL564', 58, 1
   
);

INSERT INTO SupplierItems (
    SupplierId,
    ItemId
) VALUES 
(
   2,21
);

INSERT INTO IngredientItems (
    IngredientId,
    ItemId
) VALUES 
    (6,21);


INSERT INTO Inventory (
ItemId,
Quantity
) VALUES 
(
    21, 32
);

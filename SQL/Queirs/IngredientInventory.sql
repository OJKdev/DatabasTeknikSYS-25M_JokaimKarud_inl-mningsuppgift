--Lagerhållnig för ingredienser per leverantör
--Samt kontaktinformation till leverantör om det behöver beställas mer

SELECT 
Ingredients.Name AS 'Råvara',
ItemNumber AS 'Artikelnummer',
Quantity  || ' ' || Value AS 'I lager',
Suppliers.Name AS Leverantör,
FirstName || ' ' || LastName As Kontaktperson,
Email,
PhoneNumber
FROM Inventory 
INNER JOIN Items ON Items.id = Inventory.ItemId
INNER JOIN IngredientItems ON IngredientItems.ItemId = Items.id
INNER JOIN Ingredients on Ingredients.id = IngredientItems.IngredientId
INNER JOIN UnitTypes ON UnitTypes.Id = Items.UnitTypeId
INNER JOIN SupplierItems on SupplierItems.Itemid = Items.id
INNER JOIN Suppliers ON SupplierItems.SupplierId = Suppliers.id
INNER JOIN SupplierContacts ON Suppliers.id = SupplierContacts.SupplierId
INNER JOIN Contacts ON Contacts.id = SupplierContacts.ContactId
INNER JOIN ContactPhoneNumbers ON ContactPhoneNumbers.ContactId = Contacts.Id
INNER JOIN ContactEmails ON ContactEmails.ContactId = Contacts.Id
INNER JOIN PhoneNumbers ON ContactPhoneNumbers.PhoneNumberId = PhoneNumbers.Id
INNER JOIN Emails ON ContactEmails.EmailId = Emails.Id

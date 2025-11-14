--Adresser

Select
Name AS 'Leverantör',
AddressLine || ' ' || PostalCode || ', ' || City AS 'Adress',
AddressTypes.Value AS 'Adresstyp',
FirstName || ' ' || LastName AS 'Kontaktperson',
PhoneNumber AS 'Telefonnummer',
Email AS 'Epost-adress'
 FROM Suppliers
INNER JOIN SupplierAddresses ON Suppliers.id = SupplierAddresses.SupplierId
INNER JOIN Addresses ON  SupplierAddresses.AddressId = Addresses.Id
INNER JOIN PostalCodes on   PostalCodes.Id = Addresses.PostalCodeId
INNER JOIN Cities ON Cities.Id = PostalCodes.CityId
INNER JOIN AddressTypes ON AddressTypes.Id = Addresses.AddressTypeId
INNER JOIN SupplierContacts ON Suppliers.id = SupplierContacts.SupplierId
INNER JOIN Contacts ON Contacts.id = SupplierContacts.ContactId
INNER JOIN ContactPhoneNumbers ON ContactPhoneNumbers.ContactId = Contacts.Id
INNER JOIN ContactEmails ON ContactEmails.ContactId = Contacts.Id
INNER JOIN PhoneNumbers ON ContactPhoneNumbers.PhoneNumberId = PhoneNumbers.Id
INNER JOIN Emails ON ContactEmails.EmailId = Emails.Id

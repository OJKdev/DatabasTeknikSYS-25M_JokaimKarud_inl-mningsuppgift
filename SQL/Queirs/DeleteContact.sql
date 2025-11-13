-- Kungsörnen Grossits AB gör nerskärningar och 
-- Bengt Lennartsson får sparken.
-- Vi behöver därför ta bort honom från vårat system.
-- Efter kontroll har vi fått fram 
-- Begnt Lennartssons Id i våran contacts-tabell
-- Vi har också fått fram Id till hans uppgifter,
-- så som hans emailId och PhoneNumberId

DELETE FROM ContactEmails WHERE ContactId = 9;
DELETE FROM Emails WHERE Id = 9;
DELETE FROM ContactPhoneNumbers WHERE ContactId = 9;
DELETE FROM PhoneNumbers WHERE Id = 9;
DELETE FROM SupplierContacts WHERE ContactId = 9;
DELETE FROM Contacts WHERE Id = 9;





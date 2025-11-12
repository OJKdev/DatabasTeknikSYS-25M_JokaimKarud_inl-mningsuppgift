--Droppa tabeller

DROP TABLE IF EXISTS Suppliers;
DROP TABLE IF EXISTS SuppliersContacts;
DROP TABLE IF EXISTS Contacts;
DROP TABLE IF EXISTS ContactPhoneNumbers;
DROP TABLE IF EXISTS ContactEmails;
DROP TABLE IF EXISTS PhoneNumbers;
DROP TABLE IF EXISTS Emails;
DROP TABLE IF EXISTS Addresses;
DROP TABLE IF EXISTS PostalCodes;
DROP TABLE IF EXISTS Cities;
DROP TABLE IF EXISTS AddressTypes;
DROP TABLE IF EXISTS SupplierAddresses;
DROP TABLE IF EXISTS UnitTypes;
DROP TABLE IF EXISTS Recipes;
DROP TABLE IF EXISTS Ingredients;
DROP TABLE IF EXISTS RecipeIngredients;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS ProductItems;
DROP TABLE IF EXISTS IngredientItems;
DROP TABLE IF EXISTS Items;
DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS SupplierItems;

-- Skapar tabeller

CREATE TABLE Suppliers(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(20) NOT NULL
);

CREATE TABLE SupplierContacts(
  SupplierId INTEGER,
    ContactId INTEGER, 
    PRIMARY KEY(SupplierId,ContactId),
    FOREIGN Key (SupplierId) REFERENCES Suppliers(Id),
    FOREIGN Key (ContactId) REFERENCES Contacts(Id)
    );
   
CREATE TABLE Contacts(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL
);


CREATE TABLE ContactPhoneNumbers(
    ContactId INTEGER, 
    PhoneNumberId INTEGER,
    PRIMARY KEY(ContactId,PhoneNumberId),
    FOREIGN Key (ContactId) REFERENCES Contacts(Id),
    FOREIGN Key (PhoneNumberId) REFERENCES PhoneNumbers(Id)
    );

    CREATE TABLE PhoneNumbers(
    Id INTEGER PRIMARY KEY AUTOINCREMENT, 
    PhoneNumber VARCHAR(12) NOT NULL UNIQUE
    );




CREATE TABLE ContactEmails(
    ContactId INTEGER, 
    EmailId INTEGER,
    PRIMARY KEY(ContactId,EmailId),
    FOREIGN Key (ContactId) REFERENCES Contacts(Id),
    FOREIGN Key (EmailId) REFERENCES Emails(Id)
    );

    CREATE TABLE Emails(
    Id INTEGER PRIMARY KEY AUTOINCREMENT, 
     Email VARCHAR(60) NOT NULL UNIQUE
    );





CREATE TABLE Cities (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    City VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE PostalCodes (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    PostalCode VARCHAR(10) NOT NULL UNIQUE,
    CityId INTEGER NOT NULL,
    FOREIGN KEY (CityId) REFERENCES Cities (Id)
);

CREATE TABLE Addresses (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    AddressLine VARCHAR(50) NOT NULL,
    PostalCodeId INTEGER NOT NULL,
    FOREIGN KEY (PostalCodeId) REFERENCES PostalCodes (Id)
);


CREATE TABLE AddressTypes(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Value VARCHAR(15) NOT NULL UNIQUE
);



CREATE TABLE SupplierAddresses(
    SupplierId INTEGER,
    AddressId INTEGER,
    AddressTypeId INTEGER,
    PRIMARY KEY(SupplierId,AddressId, AddressTypeId),
    FOREIGN Key (SupplierId) REFERENCES Suppliers(Id),
    FOREIGN Key (AddressId) REFERENCES Addresses(Id),
    FOREIGN Key (AddressTypeId) REFERENCES AddressTypes(Id)
);



CREATE TABLE UnitTypes(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Value VARCHAR(10)  
);





CREATE TABLE Recipes(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Instructions TEXT
);



CREATE TABLE Ingredients(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(20) NOT NULL UNIQUE
);



CREATE TABLE RecipeIngredients(
    RecipeId INTEGER,
    IngredientId INTEGER,
    Quantity FLOAT NOT NULL,
    UnitTypeId INTEGER NOT NULL,
    PRIMARY KEY(RecipeId,IngredientId),
    FOREIGN Key (RecipeId) REFERENCES Recipes(Id),
    FOREIGN Key (IngredientId) REFERENCES Ingredients(Id),
    FOREIGN Key (UnitTypeId) REFERENCES UnitTypes(Id)
);




CREATE TABLE Products(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(30) NOT NULL UNIQUE,
    RecipeId INTEGER,
    FOREIGN Key (RecipeId) REFERENCES Recipes(Id)
);



CREATE TABLE ProductItems(
    ProductId INTEGER,
    ItemId INTEGER,
    PRIMARY KEY(ProductId,ItemId),
    FOREIGN Key (ProductId) REFERENCES Products(Id),
    FOREIGN Key (ItemId) REFERENCES Items(Id)
    
);



CREATE TABLE IngredientItems(
    IngredientId INTEGER,
    ItemId INTEGER,
    PRIMARY KEY(IngredientId,ItemId),
    FOREIGN Key (IngredientId) REFERENCES Ingredients (Id),
    FOREIGN Key (ItemId) REFERENCES Items(Id)
    
);



CREATE TABLE Items(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    ItemNumber VARCHAR(15) NOT NULL UNIQUE,
    PricePerUnit FLOAT, 
    UnitTypeId INTEGER NOT NULL,
    FOREIGN KEY (UnitTypeId) REFERENCES UnitTypes(Id)
);

CREATE TABLE Inventory(
    ItemId INTEGER,
    Quantity FLOAT NOT NULL,
    FOREIGN Key (ItemId) REFERENCES Items(Id)
);


CREATE TABLE SupplierItems(
    SupplierId INTEGER,
    ItemId INTEGER,
    PRIMARY KEY (SupplierId, ItemId),
    FOREIGN Key (SupplierId) REFERENCES Suppliers(Id),
    FOREIGN Key (ItemId) REFERENCES Items(Id)
);







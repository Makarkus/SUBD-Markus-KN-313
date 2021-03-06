SELECT TABLE_NAME from INFORMATION_SCHEMA.TABLES;
Exec sp_columns Gastronom



ALTER TABLE Gastronom DROP COLUMN Site_gastronom


ALTER TABLE Client ALTER COLUMN Client_surname char(60) NOT NULL;


ALTER TABLE Product ADD Product_Weight INTEGER NULL
ALTER TABLE Product ADD CONSTRAINT UC_product_name 
UNIQUE(Name_product,Price);



ALTER TABLE Reciept
DROP CONSTRAINT FKcode_product
ALTER TABLE Reciept
ADD CONSTRAINT  FKcode_product FOREIGN KEY (code_product) 
REFERENCES Product ON DELETE NO ACTION ON UPDATE NO ACTION
ALTER TABLE Reciept
DROP CONSTRAINT FKcode_client
ALTER TABLE Reciept
ADD CONSTRAINT  FKcode_client FOREIGN KEY (code_client) 
REFERENCES Client ON DELETE NO ACTION ON UPDATE NO ACTION
ALTER TABLE Reciept
DROP CONSTRAINT FKcode_seller
ALTER TABLE Reciept
ADD CONSTRAINT  FKcode_seller FOREIGN KEY (code_seller) 
REFERENCES Seller ON DELETE NO ACTION ON UPDATE NO ACTION

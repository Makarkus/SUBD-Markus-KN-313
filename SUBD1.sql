CREATE TABLE Gastronom  (
	Code_gastronom INTEGER NOT NULL,
	Name_gastronom CHAR(40) NOT NULL,
	City  CHAR(20) NOT NULL,
	Street CHAR(20) NOT NULL,
	House_number  INTEGER NOT NULL,
	[E-mail_gastronom] CHAR(30),
	Site_gastronom   VARCHAR(max),
PRIMARY KEY (Code_gastronom) ); 


CREATE TABLE Distributor  (
	Code_distributor  INTEGER NOT NULL,
	Company_name  CHAR(40) NOT NULL,
	Director_name   CHAR(20) NOT NULL,
	Director_surname  CHAR(20) NOT NULL,
	City  CHAR(20) NOT NULL,
	Street CHAR(20) NOT NULL,
	House_number  INTEGER NOT NULL,
 	[E-mail_company] CHAR(30),
	Site_company   VARCHAR(max),
PRIMARY KEY (Code_distributor) );



CREATE TABLE Client   (
	Code_client   INTEGER NOT NULL,
	Client_name   CHAR(20) NOT NULL,
	Client_surname  CHAR(20) NOT NULL,
	Client_middleName CHAR(20) NOT NULL,
	City  CHAR(20) NOT NULL,
	Street CHAR(20) NOT NULL,
	House_number  INTEGER NOT NULL,
	[E-mail_client] CHAR(30),
PRIMARY KEY (Code_client) );


CREATE TABLE Seller   (
	Code_seller    INTEGER NOT NULL,
	Seller_name   CHAR(20) NOT NULL,
	Seller_surname   CHAR(20) NOT NULL,
	Seller_middleName CHAR(20) NOT NULL,
	DateOfBirth_seller  DATE NOT NULL,
	Sex_seller CHAR(7),
PRIMARY KEY (Code_seller ) );


CREATE TABLE Product   (
	Code_product     INTEGER NOT NULL,
	Name_product  CHAR(40) NOT NULL,
	Price MONEY NOT NULL,
	DateOfManufacture DATE NOT NULL,
	DateOfExpiration DATE NOT NULL,
PRIMARY KEY (Code_product ) );


CREATE TABLE Reciept (
	Code_reciept INTEGER NOT NULL,
	Code_gastronom INT NOT NULL,
	Code_client INT NOT NULL,
	Code_seller INT NOT NULL,
	Code_product INT NOT NULL,
	DateOfIssue DATE NOT NULL,
	PRIMARY KEY (Code_reciept),
CONSTRAINT FKgastronom FOREIGN KEY (Code_gastronom) 
REFERENCES Gastronom ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FKclient FOREIGN KEY (Code_client) 
REFERENCES Client ON DELETE CASCADE ON UPDATE CASCADE ,
CONSTRAINT FKseller FOREIGN KEY (Code_seller) 
REFERENCES Seller ON DELETE CASCADE ON UPDATE CASCADE ,
CONSTRAINT FKproduct FOREIGN KEY (Code_product) 
REFERENCES Product ON DELETE CASCADE ON UPDATE CASCADE );


CREATE TABLE Delivery (
	Code_delivery INTEGER NOT NULL,
	Code_distributor INT NOT NULL,
	Code_product INT NOT NULL,
	DateOfDelivery DATE NOT NULL,
	PRIMARY KEY (Code_delivery),
CONSTRAINT FKdistributor FOREIGN KEY (Code_distributor) 
REFERENCES Distributor ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FKProduct FOREIGN KEY (Code_product) 
REFERENCES Product ON DELETE CASCADE ON UPDATE CASCADE );


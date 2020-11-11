/*1*/
EXEC sp_helpindex Distributor
GO

EXEC sp_helpindex Gastronom
GO

/*2*/
CREATE INDEX DistrINDX ON Distributor (code_distributor, Company_name); 

EXEC sp_helpindex Distributor
GO


CREATE UNIQUE INDEX GastronomINDX ON Gastronom (code_gastronom, Name_gastronom); 

EXEC sp_helpindex Gastronom
GO


/*3*/
SET SHOWPLAN_ALL ON;
GO
SELECT COUNT(DISTINCT p.Code_product) as NumberOfProducts,  g.Name_gastronom as Gastronom
FROM Product p INNER JOIN Reciept ON p.Code_product=Reciept.Code_product
INNER JOIN Gastronom g ON g.Code_gastronom=Reciept.Code_gastronom
GROUP BY g.Name_gastronom
GO
SET SHOWPLAN_ALL OFF;



SET SHOWPLAN_ALL ON;
GO
SELECT COUNT(DISTINCT p.Code_product) as NumberOfProducts,  g.Name_gastronom as Gastronom
FROM Product p LEFT JOIN Reciept ON p.Code_product=Reciept.Code_product
LEFT JOIN Gastronom g ON g.Code_gastronom=Reciept.Code_gastronom
GROUP BY g.Name_gastronom
GO
SET SHOWPLAN_ALL OFF;

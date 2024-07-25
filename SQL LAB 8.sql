
CREATE TABLE SALES_DATA
(
	REGION VARCHAR(25),
	PRODUCT VARCHAR(25),
	AMOUNT INT,
	YEAR INT
)

INSERT INTO SALES_DATA(REGION,PRODUCT,AMOUNT,YEAR)
VALUES
('Nourth America','Watch',1500,2023),
('Europe','Mobile',1200,2023),
('Asia','Watch',1800,2023),
('Nourth America','TV',900,2024),
('Europe','Watch',2000,2024),
('Asia','Mobile',1000,2024),
('Nourth America','Mobile',1600,2023),
('Europe','TV',1500,2023),
('Asia','TV',1100,2024),
('Nourth America','Watch',1700,2024)


DROP TABLE SALES_DATA

SELECT * FROM SALES_DATA


------PART-A------

--1.Display Total Sales Amount by Region.
SELECT SUM(AMOUNT),REGION
FROM SALES_DATA
GROUP BY REGION

--2.Display Average Sales Amount by Product
SELECT AVG(AMOUNT),PRODUCT
FROM SALES_DATA
GROUP BY PRODUCT

--3.Display Maximum Sales Amount by Year
SELECT MAX(AMOUNT),YEAR
FROM SALES_DATA
GROUP BY YEAR

--4.Display Minimum Sales Amount by Region and Year
SELECT MIN(AMOUNT),REGION,YEAR
FROM SALES_DATA
GROUP BY REGION,YEAR

--5.Count of Products Sold by Region
SELECT COUNT(PRODUCT),REGION
FROM SALES_DATA
GROUP BY REGION

--6.Display Total Sales Amount by Year and Product
SELECT SUM(AMOUNT),YEAR,PRODUCT
FROM SALES_DATA
GROUP BY YEAR,PRODUCT

--7.Display Regions with Total Sales Greater Than 5000
SELECT SUM(AMOUNT),REGION
FROM SALES_DATA
GROUP BY REGION
HAVING SUM(AMOUNT)>5000

--8.Display Products with Average Sales Less Than 10000
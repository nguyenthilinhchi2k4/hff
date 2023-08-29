CREATE DATABASE lita
GO
USE lita
GO 
CREATE TABLE  NewOrder( 
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  OrderDate DATE
);

CREATE TABLE NewCustomer (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(255),
  Address VARCHAR(255),
  TelephoneNumber VARCHAR(20)
);
 CREATE TABLE Product(
 ProductID INT PRIMARY KEY,
 ProductName VARCHAR(255),
 Description NVARCHAR(255),
 Unit VARCHAR(50),
 Price DECIMAL (10,2),
 Quantity INT
 );
 CREATE TABLE Details (
  orderID INT,
  productID INT,
  Price DECIMAL(10,2),
  Quantity INT
);
UPDATE Details
SET TotalAmount = Price * Quantity;

INSERT INTO  NewOrder (OrderID, CustomerID, OrderDate)
VALUES (123, 1, '2023-12-3');
INSERT INTO NewOrder (OrderID, CustomerID, OrderDate)
VALUES (124, 2, '2023-06-14');

SELECT *FROM NewOrder

INSERT INTO NewCustomer (CustomerID, Name, Address, TelephoneNumber)
VALUES (1, 'Nguyen Van An', '111 Nguyen Trai', '987654321');
INSERT INTO NewCustomer (CustomerID, Name, Address, TelephoneNumber)
VALUES (2, 'kieu thi van', '17  Dai dong', '897644327');

SELECT *FROM NewCustomer
INSERT INTO Product (ProductID, ProductName, Description, Unit, Price, Quantity)
VALUES (1, 'May Tinh T450', 'May nhap moi', 'Chiec', 1000, 1),
       (2, 'Đien Thoai Nokia5670', 'Đien thoai đang hot', 'Chiec', 200, 2),
       (3, 'May In Samsung 450', 'May in đang e', 'Chiec', 100, 1);
	   INSERT INTO Product (ProductID, ProductName, Description, Unit, Price, Quantity)
VALUES (4, 'Áo thun', 'Ao hot trend', 'Chiec', 100, 2),
       (5, 'Quần jeans', 'Quan duoc ua chuong', 'cai', 200, 3),
       (6, 'Giày sneakers', 'Gioi tre san don', 'doi', 150, 4);

	SELECT *FROM Product	
	
	
	
	INSERT INTO Details (orderID, productID, Price, Quantity)
VALUES (123,1,2000,1),
       (124, 2, 700, 2),
       (125, 3, 900, 1)
	   
		INSERT INTO Details (orderID, productID, Price, Quantity)
VALUES	(126,  5,200,2),
	     (127 , 6, 150,3),
	      (128 ,7, 190,4)
          
	SELECT*FROM Details
	
	
a) Liệt kê danh sách khách hàng đã mua hàng ở cửa hàng:

SELECT NC.Name
FROM NewCustomer NC
WHERE NC.CustomerID IN (
    SELECT NO.CustomerID
    FROM NewOrder NO
);
b) Liệt kê danh sách sản phẩm của cửa hàng:

SELECT *
FROM Product;
c) Liệt kê danh sách các đơn đặt hàng của cửa hàng:

SELECT *
FROM NewOrder;

CREATE TABLE Customer (
  Customer_ID INTEGER PRIMARY KEY,
  Name VARCHAR (50) NOT NULL,
  Phone VARCHAR (50) NOT NULL,
  Address VARCHAR (50) NOT NULL
);

CREATE TABLE Orders (
  Order_ID INTEGER PRIMARY KEY,
  Customer_ID INTEGER NOT NULL,
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
  Order_Date DATE NOT NULL
);

CREATE TABLE Products (
  Product_ID INTEGER PRIMARY KEY,
  Product_Name VARCHAR (50) NOT NULL,
  Price FLOAT NOT NULL,
  Cost FLOAT NOT NULL
);

CREATE TABLE Order_Products (
  Order_ID INTEGER NOT NULL,
  FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
  Product_ID INTEGER NOT NULL,
  FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID),
  Quantity INTEGER NOT NULL
);

INSERT INTO Customer (Customer_ID, Name, Phone, Address)
VALUES (1, 'John Doe', '123-456-7890', '123 Main Street'),
(2, 'Jane Smith', '234-567-8901', '456 Maple Avenue'),
(3, 'Adam Johnson', '345-678-9012', '789 Oak Street'),
(4, 'Kate Williams', '456-789-0123', '123 Pine Street'),
(5, 'Harry Brown', '567-890-1234', '456 Cedar Avenue'),
(6, 'Sally Davis', '678-901-2345', '789 Elm Street'),
(7, 'Mike Miller', '789-012-3456', '123 Cedar Avenue'),
(8, 'Elizabeth Taylor', '890-123-4567', '456 Elm Street'),
(9, 'Robert Anderson', '901-234-5678', '789 Oak Avenue'),
(10, 'Margaret Jones', '012-345-6789', '123 Pine Street');

INSERT INTO Products (Product_ID, Product_Name, Price, Cost)
VALUES (1,'Mango', 3.99, 1.00),
(2,'Strawberry', 2.99, 0.20),
(3,'Melon', 2.99, 2.00),
(4,'Kiwi', 4.99, 0.99),
(5,'Banana', 2.99, 0.15),
(6,'Cherry', 5.99, 0.50),
(7,'Pineapple', 2.99, 1.00),
(8,'Apple', 3.99, 0.50),
(9,'Grape', 3.99, 1.00),
(10,'Orange', 4.99, 1.99);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date) VALUES (818687, 1, '2020-3-5');
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (818687, 1, 338);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (818687, 2, 298);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (818687, 3, 333);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (818687, 4, 453);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (818687, 1, 437);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date) VALUES (309407, 1, '2020-7-20');
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (309407, 4, 259);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (309407, 6, 121);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (309407, 7, 360);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (309407, 2, 317);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date) VALUES (112779, 1, '2020-10-6');
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (112779, 8, 337);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (112779, 9, 238);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (112779, 6, 364);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date) VALUES (712594, 1, '2020-12-8');
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (712594, 1, 456);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (712594, 9, 130);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date) VALUES (507916, 2, '2020-3-6');
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (507916, 1, 359);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (507916, 2, 465);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (507916, 3, 191);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (507916, 4, 490);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (507916, 1, 254);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date) VALUES (333543, 2, '2020-7-6');
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (333543, 4, 317);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (333543, 6, 332);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (333543, 7, 467);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (333543, 3, 100);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date) VALUES (267590, 2, '2020-10-13');
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (267590, 8, 228);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (267590, 9, 301);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (267590, 4, 105);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date) VALUES (639968, 2, '2020-12-8');
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (639968, 1, 248);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (639968, 9, 173);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date) VALUES (869812, 3, '2020-3-28');
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (869812, 1, 173);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (869812, 2, 483);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (869812, 3, 204);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (869812, 4, 129);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (869812, 1, 240);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date) VALUES (567233, 3, '2020-7-20');
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (567233, 4, 239);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (567233, 6, 286);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (567233, 7, 401);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (567233, 3, 384);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date) VALUES (828240, 3, '2020-10-17');
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (828240, 8, 134);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (828240, 9, 142);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (828240, 6, 447);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date) VALUES (117320, 3, '2020-12-10');
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (117320, 1, 285);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (117320, 8, 163);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date) VALUES (117327, 4, '2020-3-8');
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (117327, 1, 267);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (117327, 2, 155);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (117327, 3, 273);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (117327, 4, 314);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (117327, 1, 415);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date) VALUES (920295, 4, '2020-7-22');
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (920295, 4, 289);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (920295, 6, 439);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (920295, 7, 485);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (920295, 2, 354);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date) VALUES (277090, 4, '2020-10-22');
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (277090, 8, 248);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (277090, 9, 299);
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (277090, 4, 458);
INSERT INTO Orders (Order_ID, Customer_ID, Order_Date) VALUES (848441, 4, '2020-12-18');
INSERT INTO Order_Products (Order_ID, Product_ID, Quantity) VALUES (848441, 1, 150);

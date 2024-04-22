1/
CREATE TABLE customer (
customer_id VARCHAR2(20) Primary key,
customer_name VARCHAR2(20),
customer_tel Number(8)
);

CREATE TABLE Product(
product_id VARCHAR2(20) Primary key, 
product_name VARCHAR2(20) NOT NULL,
price Number(20) Check price>0,
);
CREATE TABLE Orders (
customer_id FOREIGN KEY REFERENCES customer (customer_id),
product_id FOREIGN KEY REFERENCES Product (product_id),
--product_id CONSTRAINT fk_id FOREIGN KEY  REFERENCES Product (product_id),--
quantity Number(20),
total_ amount Number(20),

);

2/
a/
ALTER TABLE Product add Category VARCHAR2(20),
b/
ALTER TABLE Orders add OrderDate  DATE DEFAULT SYSDATE,


3/
INSERT INTO customer (customer_id,customer_name,customer_tel) VALUES ('C01', 'ALI', 71321009);
INSERT INTO customer (customer_id,customer_name,customer_tel) VALUES ('C02', 'ASMA', 77345823);

INSERT INTO Product (product_id,product_name,price,Category) VALUES ('P01', 'Samsung Galaxy s20', 3299, 'Smartphone');
INSERT INTO Product (product_id,product_name,price,Category) VALUES ('P02', 'Asus Notebook', 4599, 'PC');

INSERT INTO orders (customer_id,product_id,OrderDate,quantity,total_amount) VALUES ('C01', 'P02',NULL, 2, 9198);
INSERT INTO orders (customer_id,product_id,OrderDate,quantity,total_amount) VALUES ('C02', 'P01',28/05/2020, 1, 3299);

CREATE TABLE orders (
    orderid NUMBER PRIMARY KEY,
    customerid NUMBER,
    orderdate DATE,
    amount NUMBER(10, 2)
);

INSERT INTO orders (orderid, customerid, orderdate, amount) VALUES
(1, 101, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 500);

INSERT INTO orders (orderid, customerid, orderdate, amount) VALUES
(2, 102, TO_DATE('2023-01-02', 'YYYY-MM-DD'), 300);

INSERT INTO orders (orderid, customerid, orderdate, amount) VALUES
(3, 101, TO_DATE('2023-01-03', 'YYYY-MM-DD'), 200);

INSERT INTO orders (orderid, customerid, orderdate, amount) VALUES
(4, 103, TO_DATE('2023-01-04', 'YYYY-MM-DD'), 400);

select *from orders

CREATE TABLE customer (
    customerid2 NUMBER PRIMARY KEY,
    customername VARCHAR2(100)
);

INSERT INTO customer (customerid2, customername) VALUES
(101, 'Alice');

INSERT INTO customer (customerid2, customername) VALUES
(102, 'Bob');

INSERT INTO customer (customerid2, customername) VALUES
(103, 'Charlie');


SELECT c.customername, SUM(o.amount) AS total_amount
FROM customer c
JOIN orders o ON c.customerid2 = o.customerid
GROUP BY c.customername;

select customername, sum(amount) as totalammount --same as upper
from orders join customer on orders.customerid=customer.customerid2
group by customername;

select customername, sum(amount) as totalamount 
from orders
join customer on orders.customerid=customer.customerid2
group by customername
having sum(amount)>500;

CREATE TABLE products (
    productid NUMBER PRIMARY KEY,
    productname VARCHAR2(100)
);


INSERT INTO products (productid,productname) 
VALUES(1 ,'Laptop');
INSERT INTO products (productid,productname) 
VALUES(2 ,'Phone');

CREATE TABLE orderdetails (
    ordersid NUMBER,
    productid NUMBER,
    quantity NUMBER,
    PRIMARY KEY (ordersid, productid)
);
INSERT INTO orderdetails (ordersid,productid,quantity) 
VALUES(1,1,2);
INSERT INTO orderdetails (ordersid,productid,quantity) 
VALUES(2,2,1);
INSERT INTO orderdetails (ordersid,productid,quantity) 
VALUES(3,1,1);
INSERT INTO orderdetails (ordersid,productid,quantity) 
VALUES(4,2,3);

SELECT productid, SUM(quantity) AS total_quantity--by id
FROM orderdetails
GROUP BY productid;

SELECT p.productname, SUM(od.quantity) AS total_quantity--by name 
FROM orderdetails od
JOIN products p ON od.productid = p.productid
GROUP BY p.productname;


SELECT customerid, COUNT(orderid) AS order_count
FROM orders
GROUP BY customerid
HAVING COUNT(orderid) > 1;

SELECT DISTINCT customer.customername
FROM customer
JOIN orders ON customer.customerid2 = orders.customerid
JOIN orderdetails ON orders.orderid = orderdetails.ordersid

WHERE orderdetails.productid = 1;


SELECT 
    SUM(orders.amount) AS total_amount
FROM 
    orders
JOIN 
    orderdetails ON orders.orderid = orderdetails.ordersid
WHERE 
    orderdetails.productid = 2;


CREATE TABLE sales1 (
    saleid INT PRIMARY KEY,
    productid INT,
    customerid INT,
    saledate DATE,
    amount DECIMAL(10, 2)
);

INSERT INTO sales1 (saleid, productid, customerid, saledate, amount)
VALUES (1, 101, 201, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 500);
INSERT INTO sales1 (saleid, productid, customerid, saledate, amount)
values(2, 102, 202, TO_DATE('2023-01-02', 'YYYY-MM-DD'), 300);
INSERT INTO sales1 (saleid, productid, customerid, saledate, amount)
values(3, 101, 201, TO_DATE('2023-01-03', 'YYYY-MM-DD'), 700);
INSERT INTO sales1 (saleid, productid, customerid, saledate, amount)
values(4, 103, 203, TO_DATE('2023-01-04', 'YYYY-MM-DD'), 200);
INSERT INTO sales1 (saleid, productid, customerid, saledate, amount)
values(5, 102, 202, TO_DATE('2023-01-05', 'YYYY-MM-DD'), 400);

-- Verify the table content
SELECT * FROM sales1;

CREATE TABLE product1(
    productid INT PRIMARY KEY,
    productname VARCHAR2(100)
);

INSERT INTO product1 (productid, productname)
VALUES(101, 'Laptop');
INSERT INTO product1 (productid, productname)
values(102, 'phone');
INSERT INTO product1 (productid, productname)
values(103, 'Tablet');

-- Verify the table content
SELECT * FROM product1;

SELECT p.productname, SUM(s.amount) AS total_sales
FROM sales1 s
JOIN product1 p ON s.productid = p.productid
GROUP BY p.productname
HAVING SUM(s.amount) > 600;

SELECT p.productname, COUNT(DISTINCT s.customerid) AS distinct_customers
FROM sales1 s
JOIN product1 p ON s.productid = p.productid
GROUP BY p.productname;





COPY categories
FROM 'seu bucket'
REGION '????'
CREDENTIALS 'aws_access_key_id=????;aws_secret_access_key=????'
DELIMITER ';'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

select * from categories;

COPY customers
FROM 'seu bucket'
REGION '????'
CREDENTIALS 'aws_access_key_id=????;aws_secret_access_key=????'
DELIMITER ';'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

select * from customers;

COPY employees
FROM 'seu bucket'
REGION '????'
CREDENTIALS 'aws_access_key_id=????;aws_secret_access_key=????'
DELIMITER ';'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

select * from employees;

COPY order_details
FROM 'seu bucket'
REGION '????'
CREDENTIALS 'aws_access_key_id=????;aws_secret_access_key=????'
DELIMITER ';'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

select * from order_details;

COPY orders
FROM 'seu bucket'
REGION '????'
CREDENTIALS 'aws_access_key_id=????;aws_secret_access_key=????'
DELIMITER ';'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

select * from orders;

COPY PRODUCTS
FROM 'seu bucket'
REGION '????'
CREDENTIALS 'aws_access_key_id=????;aws_secret_access_key=????'
DELIMITER ';'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

select * from products;

COPY shippers
FROM 'seu bucket'
REGION '????'
CREDENTIALS 'aws_access_key_id=????;aws_secret_access_key=????'
DELIMITER ';'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

select * from shippers;

COPY suppliers
FROM 'seu bucket'
REGION '????'
CREDENTIALS 'aws_access_key_id=????;aws_secret_access_key=????'
DELIMITER ';'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

select * from suppliers;

DROP TABLE product;
DROP TABLE supplier;  
DROP TABLE employee; 
DROP TABLE customer; 



CREATE TABLE product (
	productID 				INT 	 		NOT NULL PRIMARY KEY UNIQUE,
	product_name  			varchar2(20)	NOT NULL, 
	category				varchar2(20)	NOT NULL, 
	supplierID				INT		 		NOT NULL, 
	description 			varchar2(40)	NOT NULL, 
	quantity_in_stock		INT 			NOT NULL, 
	retail_price 			INT 			NOT NULL, 
	wholesale_price 		INT 			NOT NULL  
); 

CREATE TABLE supplier (
	supplierID 				INT 			NOT NULL PRIMARY KEY UNIQUE, 
	name 					varchar2(30)	NOT NULL,
	phone 					varchar2(10)	NOT NULL, 
	street_number			INT(3)			NOT NULL, 
	street_name 			varchar2(20)	NOT NULL, 
	city					varchar2(20)	NOT NULL,
	region					varchar2(15)	NOT NULL,
	postcode				INT(4),
	preferred_payment		varchar2(15)	NOT NULL 
); 

CREATE TABLE employee (
	employeeID				INT 			NOT NULL PRIMARY KEY UNIQUE, 
	first_name 				varchar2(15)	NOT NULL, 
	middle_name 			varchar2(15), 
	lastname				varchar2(15)	NOT NULL, 
	email					varchar2(30)	NOT NULL, 
	phone					varchar2(10)	NOT NULL, 
	position				varchar2(15)	NOT NULL, 
	branch					varchar2(20)	NOT NULL, 
	Hire_Date				DATE, 
	#salary is changed to a number as I have noticed that 
	#is how he always does it in the lab 
	salary					NUMBER(6)		NOT NULL, 
	street_number			INT(3)			NOT NULL, 
	street_name 			varchar2(20)	NOT NULL, 
	city					varchar2(20)	NOT NULL,
	region					varchar2(15)	NOT NULL,
	postcode				INT(4)
); 

CREATE TABLE customer (
	customerID				INT 			NOT NULL PRIMARY KEY UNIQUE, 
	first_name 				varchar2(15)	NOT NULL, 
	middle_name 			varchar2(15), 
	lastname				varchar2(15)	NOT NULL,
	username				varchar2(20)	NOT NULL UNIQUE,
	password				varchar2(30)	NOT NULL, 
	company					varchar2(20), 
	phone					varchar2(10)	NOT NULL,
	street_number			INT(3)			NOT NULL, 
	street_name 			varchar2(20)	NOT NULL, 
	city					varchar2(20)	NOT NULL,
	region					varchar2(15)	NOT NULL,
	postcode				INT(4), 
	# I have also changed this as it seems more logical?? 
	credit_limit 			NUMBER(6,2), 
	customer_type 			varchar2(30)	NOT NULL
); 


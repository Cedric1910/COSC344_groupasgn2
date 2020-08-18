DROP TABLE product; 
DROP TABLE employee; 
DROP TABLE customer; 
DROP TABLE supplier;  

CREATE TABLE supplier (
	supplierID 				INT 			NOT NULL PRIMARY KEY, 
	name 					varchar2(30)	NOT NULL,
	phone 					varchar2(10)	NOT NULL, 
	street_number			NUMBER(3)			NOT NULL, 
	street_name 			varchar2(20)	NOT NULL, 
	city					varchar2(20)	NOT NULL,
	region					varchar2(15)	NOT NULL,
	postcode				NUMBER(4),
	preferred_payment		varchar2(15)	NOT NULL 
); 

CREATE TABLE product(
        product_name    varchar2(20)    NOT NULL,
        supplierID	INT             NOT NULL
                CONSTRAINT supplierID_cnt REFERENCES supplier(supplierID),
        category        varchar2(20)    NOT NULL, 
        description 			varchar2(40)	NOT NULL, 
		brand 					varchar2(20)	NOT NULL, 
		quantity_in_stock		INT 			NOT NULL, 
		retail_price 			INT 			NOT NULL, 
		wholesale_price 		INT 			NOT NULL 
);

CREATE TABLE employee(
	employeeID				INT 			NOT NULL PRIMARY KEY, 
	first_name 				varchar2(15)	NOT NULL, 
	middle_name 			varchar2(15), 
	lastname				varchar2(15)	NOT NULL, 
	email					varchar2(30)	NOT NULL, 
	phone					varchar2(10)	NOT NULL, 
	position				varchar2(15)	NOT NULL, 
	branch					varchar2(20)	NOT NULL, 
	Hire_Date				DATE, 
	salary					NUMBER(6)		NOT NULL, 
	street_number			NUMBER(3)			NOT NULL, 
	street_name 			varchar2(20)	NOT NULL, 
	city					varchar2(20)	NOT NULL,
	region					varchar2(15)	NOT NULL,
	postcode				NUMBER(4)
); 

CREATE TABLE customer(
	customerID				INT 			NOT NULL PRIMARY KEY, 
	first_name 				varchar2(15)	NOT NULL, 
	middle_name 			varchar2(15), 
	lastname				varchar2(15)	NOT NULL,
	username				varchar2(20)	NOT NULL,
	password				varchar2(30)	NOT NULL, 
	company					varchar2(20), 
	phone					varchar2(10)	NOT NULL,
	street_number			NUMBER(3)			NOT NULL, 
	street_name 			varchar2(20)	NOT NULL, 
	city					varchar2(20)	NOT NULL,
	region					varchar2(15)	NOT NULL,
	postcode				NUMBER(4), 
	credit_limit 			NUMBER(6,2), 
	customer_type 			varchar2(30)	NOT NULL
); 

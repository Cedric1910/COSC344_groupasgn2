

DROP TABLE product;
DROP TABLE supplier;  
DROP TABLE employee; 
DROP TABLE customer; 
DROP TABLE sale; 
DROP TABLE invoice; 


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

CREATE TABLE product (
	product_name  			varchar2(20)	NOT NULL, 
	category				varchar2(20)	NOT NULL, 
	supplierID				INT		 		NOT NULL
		CONSTRAINT supplierID_constant REFERENCES supplier(supplierID), 

	description 			varchar2(40)	NOT NULL, 
	brand 					varchar2(20)	NOT NULL, 
	quantity_in_stock		INT 			NOT NULL, 
	retail_price 			INT 			NOT NULL, 
	wholesale_price 		INT 			NOT NULL  
); 


CREATE TABLE employee (
	employeeID				INT 			NOT NULL PRIMARY KEY, 
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
	customerID				INT 			NOT NULL PRIMARY KEY, 
	first_name 				varchar2(15)	NOT NULL, 
	middle_name 			varchar2(15), 
	lastname				varchar2(15)	NOT NULL,
	username				varchar2(20)	NOT NULL,
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

CREATE TABLE sale (
	saleID 					INT 			NOT NULL PRIMARY KEY, 
	customerID 				INT 			NOT NULL
		CONSTRAINT customerID_constant REFERENCES customer(customerID), 

	employeeID				INT 			NOT NULL	
		CONSTRAINT employeeID_constant REFERENCES employee(employeeID), 

	invoiceID				INT 			NOT NULL
		CONSTRAINT invoiceID_constant REFERENCES invoice(invoiceID), 

	#had to change name as date cant be a variable name
	sale_date				DATE 			NOT NULL,  
	totalPrice 				NUMBER(6,2) 	NOT NULL,#changed to number to work with decimals
	discount 				NUMBER(2)		NOT NULL 
); 


CREATE TABLE invoice (
	invoiceID 				INT 			NOT NULL PRIMARY KEY,
	customerID				INT 			NOT NULL
		CONSTRAINT customerID_constant REFERENCES customer(customerID),

	saleID					INT 			NOT NULL
		CONSTRAINT saleID_constant REFERENCES sale(saleID), 

	date_issued 			DATE 			NOT NULL, 
	payment_by_date			DATE 			NOT NULL, 
	paid 					BOOLEAN			NOT NULL
);


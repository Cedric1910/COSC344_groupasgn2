DROP TABLE product; 
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

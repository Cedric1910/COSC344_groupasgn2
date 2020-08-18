DROP TABLE product; 

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

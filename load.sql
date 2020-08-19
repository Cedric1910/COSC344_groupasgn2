DROP TABLE asgn_product;
DROP TABLE asgn_contains; 
DROP TABLE asgn_sale; 
DROP TABLE asgn_employee;
DROP TABLE asgn_invoice; 
DROP TABLE asgn_customer; 
DROP TABLE asgn_supplier;  


CREATE TABLE asgn_supplier (
	supplierID 				INT 			NOT NULL PRIMARY KEY, 
	name 					varchar2(30)	        NOT NULL,
	phone 					varchar2(10)	        NOT NULL, 
	street_number			        NUMBER(3)			NOT NULL, 
	street_name 			        varchar2(20)	                NOT NULL, 
	city					varchar2(20)	                NOT NULL,
	region					varchar2(15)	                NOT NULL,
	postcode				NUMBER(4),
	preferred_payment		        varchar2(15)            NOT NULL 
        ); 

CREATE TABLE asgn_product(
        product_name    varchar2(40)    NOT NULL,
        supplierID	INT             NOT NULL
                CONSTRAINT supplierID_cnt REFERENCES asgn_supplier(supplierID),
        category        varchar2(20)    NOT NULL, 
        description 			varchar2(40)	NOT NULL, 
	brand 					varchar2(20)	NOT NULL, 
	quantity_in_stock		INT 			NOT NULL, 
	retail_price 			NUMBER(6,2) 			NOT NULL, 
	wholesale_price 		NUMBER(6,2)       		NOT NULL 
);

CREATE TABLE asgn_employee(
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

CREATE TABLE asgn_customer(
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
	credit_limit 			NUMBER(9,2), 
	customer_type 			varchar2(30)	NOT NULL
); 

CREATE TABLE asgn_invoice(
       invoiceID                        INT                     NOT NULL PRIMARY KEY,
       customerID                       INT                     NOT NULL
               CONSTRAINT supplier_cnst REFERENCES asgn_customer(customerID),
       saleID									 INT 			NOT NULL,
               date_issued                       DATE                    NOT NULL,
               payment_by_date			DATE 			NOT NULL, 
               paid                              VARCHAR(1)              NOT NULL
); 

CREATE TABLE asgn_sale(
       saleID                                  INT                      NOT NULL PRIMARY KEY,
       customerID 				INT 			NOT NULL
               CONSTRAINT customerID_constant REFERENCES asgn_customer(customerID), 
       employeeID				INT 			NOT NULL	
               CONSTRAINT employeeID_constant REFERENCES asgn_employee(employeeID), 
       invoiceID				INT 			NOT NULL
              CONSTRAINT invoiceID_constant REFERENCES asgn_invoice(invoiceID),
       sale_date				DATE 			NOT NULL,  
       totalPrice 				NUMBER(6,2) 	        NOT NULL,
       discount 				NUMBER(2)		NOT NULL
);


CREATE TABLE asgn_contains(
       product_name             varchar(20)             NOT NULL,
       saleID                   INT                     NOT NULL
                  CONSTRAINT sale_cnst    REFERENCES asgn_sale(saleID),
       quantity                  INT                     NOT NULL
); 



/* SUPPLIER INSERTS */ 

INSERT INTO asgn_supplier VALUES(001,'Northern Suppliers','021001043',12,'Northern Street','Dunedin','Otago',9010,'Bank Transfer'); 
INSERT INTO asgn_supplier VALUES(002,'Eastern Suppliers','021026444',37,'Eastern Street','Dunedin','Otago',9010,'Bank Transfer'); 
INSERT INTO asgn_supplier VALUES(003,'Southern Suppliers','021045678',153,'Southern Street','Dunedin', 'Otago',9010,'Direct deposit'); 
INSERT INTO asgn_supplier VALUES(004,'Western Suppliers','021078932',101,'Western Street','Christchurch','Canterbury',9301,'Cheque'); 
INSERT INTO asgn_supplier VALUES(005,'Central Suppliers','0210223463',08,'Woodland Street','Wellingon','Wellington',9104,'Bank Transfer');


/* SUPPLIER PRODUCTS */

INSERT INTO asgn_product VALUES('red apple',001,'Fruit','a tasty red apple','Fruits ltd.',101,2,1.50,2); 
INSERT INTO asgn_product VALUES('green apple',001,'Fruit','a tasty green apple','Fruits ltd.',150,1.50,2);
INSERT INTO asgn_product VALUES('orange',002,'Fruit','a tasty orange','Fruits ltd.',90,1.50,2);
INSERT INTO asgn_product VALUES('parnsip',003,'Vegetable','in season parnsip','Vegtables ltd.',200,3,3.50);
INSERT INTO asgn_product VALUES('tomato',004,'Fruit','bright red tomato','Fruits ltd.',101,1.50,2.50);
INSERT INTO asgn_product VALUES('canned beans (mild)',005,'Canned food','mild nacho beans','Cans and Tins',300,3,4);
INSERT INTO asgn_product VALUES('canned beans (medium)',005,'Canned food','medium nacho beans','Cans and Tins',258,3,4);
INSERT INTO asgn_product VALUES('canned beans (hot)',005,'Canned food','hot  nacho beans','Cans and Tins',179,3,4);
INSERT INTO asgn_product VALUES('canned beans (extra hot)',005,'Canned food','extra hot nacho beans','Cans and Tins',332,3,4);

/* EMPLOYEE INSERTS */

INSERT INTO asgn_employee VALUES(1001,'Ashton','Herald','Ground','ashton@mail.com','021025662','Checkout','North Dunedin', TO_DATE('22/02/2019','DD-MM-YYYY') ,18.50,30,'Forth Street','Dunedin','Otago',9010);
INSERT INTO asgn_employee VALUES(1002,'Ben','Roberts','Ground','ben@mail.com','021435772','Checkout','North Dunedin', TO_DATE('15/06/2018','DD-MM-YYYY') ,19,30,'Forth Street','Dunedin','Otago',9010);
INSERT INTO asgn_employee VALUES(1003,'Ravi','','Dosanjh','ravi123@mail.com','0214354332','Manager','North Dunedin', TO_DATE('05/08/2012','DD-MM-YYYY') ,22.50,134,'Horn Street','Dunedin','Otago',9010);
INSERT INTO asgn_employee VALUES(1004,'Hugo','','Smith','Hugo546@mail.com','0214354312','Checkout','North Dunedin', TO_DATE('12/12/2018','DD-MM-YYYY') ,19,30,'South','Dunedin','Otago',9010);
INSERT INTO asgn_employee VALUES(1005,'Graham','','Sells','graham@yahoo.com','0214890372','Shelf Stacker','North Dunedin', TO_DATE('01/03/2017','DD-MM-YYYY') ,19.50,121,'Forth Clyde','Dunedin','Otago',9010);

/* CUSTOMER INSERTS */

INSERT INTO asgn_customer VALUES(2001, 'Emily','','Sung','emilySung','password','','026778432',17,'Clyde Street', 'Dunedin', 'Otago',9010,10000,'Regular Customer');
INSERT INTO asgn_customer VALUES(2002, 'Hayley','','Thorns','ThornsH','Thorns123','','0213458254',34,'Northern Street', 'Dunedin', 'Otago',9010,10000,'Regular Customer');
INSERT INTO asgn_customer VALUES(2003, 'Cedric','','Stephani','CStephani','cedricSteph','Central Cafe','021334556',121,'Park Street', 'Dunedin', 'Otago',9010,50000,'VIP Customer');
INSERT INTO asgn_customer VALUES(2004, 'Emily','','brown','emilyB','emily554','Northern Foods','026778432',01,'Smiths Street', 'Dunedin', 'Otago',9010,10000,'Regular Customer');


/* INVOICE INSERTS */

INSERT INTO asgn_invoice VALUES(301,2001,401,TO_DATE('20/06/2020','DD-MM-YYYY'),TO_DATE('20/07/2020','DD-MM-YYYY'),'N');
INSERT INTO asgn_invoice VALUES(302,2002,402,TO_DATE('15/06/2020','DD-MM-YYYY'),TO_DATE('15/07/2020','DD-MM-YYYY'),'Y');
INSERT INTO asgn_invoice VALUES(303,2003,403,TO_DATE('27/06/2020','DD-MM-YYYY'),TO_DATE('27/07/2020','DD-MM-YYYY'),'N');


/* SALE INSERTS */

INSERT INTO asgn_sale VALUES(401, 2001, 1001,301,TO_DATE('20/06/2020','DD-MM-YYYY'),200,0); 
INSERT INTO asgn_sale VALUES(402, 2002, 1001,302,TO_DATE('15/06/2020','DD-MM-YYYY'),100,0);
INSERT INTO asgn_sale VALUES(403, 2003, 1002,303,TO_DATE('27/06/2020','DD-MM-YYYY'),4000,0);



/* CONTAINS INSERTS */ 

INSERT INTO asgn_contains VALUES('red apple',401,50); #SALE 1
INSERT INTO asgn_contains VALUES('green apple',401,50); #SALE 1
INSERT INTO asgn_contains VALUES('orange',402,100); #SALE 2
INSERT INTO asgn_contains VALUES('canned beans (mild)',403,25); #SALE 3
INSERT INTO asgn_contains VALUES('canned beans (medium)',403,25); #SALE 3
INSERT INTO asgn_contains VALUES('canned beans (hot)',403,25); #SALE 3
INSERT INTO asgn_contains VALUES('canned beans (extra hot)',403,25); #SALE 3
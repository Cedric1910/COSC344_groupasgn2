
/* SUPPLIER INSERTS */ 

INSERT INTO asgn_supplier VALUES(001,'Northern Suppliers','021001043',12,'Northern Street','Dunedin','Otago',9010,'Bank Transfer'); 
INSERT INTO asgn_supplier VALUES(002,'Eastern Suppliers','021026444',37,'Eastern Street','Dunedin','Otago',9010,'Bank Transfer'); 
INSERT INTO asgn_supplier VALUES(003,'Southern Suppliers','021045678',153,'Southern Street','Dunedin', 'Otago',9010,'Direct deposit'); 
INSERT INTO asgn_supplier VALUES(004,'Western Suppliers','021078932',101,'Western Street','Christchurch','Canterbury',9301,'Cheque'); 
INSERT INTO asgn_supplier VALUES(005,'Central Suppliers','0210223463',08,'Woodland Street','Wellingon','Wellington',9104,'Bank Transfer');


/* SUPPLIER PRODUCTS */

INSERT INTO asgn_product VALUES('red apple',001,'Fruit','a tasty red apple','Fruits ltd.',101,2,2.50); 
INSERT INTO asgn_product VALUES('green apple',001,'Fruit','a tasty green apple','Fruits ltd.',150,2,2.50);
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

/* CUSTOMER INSERTS */

INSERT INTO asgn_customer VALUES(2001), 'Emily','','Sung','emilySung','password','','026778432',17,'Clyde Street', 'Dunedin', 'Otago',9010,10000,'Regular Customer');


/* INVOICE INSERTS */


/* SALE INSERTS */


/* CONTAINS INSERTS */ 

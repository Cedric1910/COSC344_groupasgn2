
DROP TABLE asgn_sale; 

CREATE TABLE asgn_sale(
       saleID                                   INT                     NOT NULL PRIMARY KEY,
       customerID 				INT 			NOT NULL
               CONSTRAINT customerID_constant REFERENCES customer(customerID), 
       employeeID				INT 			NOT NULL	
               CONSTRAINT employeeID_constant REFERENCES asgn_employee(employeeID), 
       invoiceID				INT 			NOT NULL
              CONSTRAINT invoiceID_constant REFERENCES asgn_invoice(invoiceID),
       sale_date				DATE 			NOT NULL,  
       totalPrice 				NUMBER(6,2) 	        NOT NULL,
       discount 				NUMBER(2)		NOT NULL
); 

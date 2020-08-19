
DROP TABLE asgn_invoice; 

CREATE TABLE asgn_invoice(
       invoiceID                        INT                     NOT NULL PRIMARY KEY,
       customerID                       INT                     NOT NULL
               CONSTRAINT supplier_cnst REFERENCES asgn_customer(customerID),
      saleID				INT 			NOT NULL,
      date_issued                       DATE                    NOT NULL,
      payment_by_date			DATE 			NOT NULL, 
      paid                              VARCHAR(1)              NOT NULL
); 

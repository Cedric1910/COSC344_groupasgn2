
DROP TABLE asgn_contains;


CREATE TABLE asgn_contains(
       product_name             varchar(20)             NOT NULL,
       saleID                   INT                     NOT NULL
               CONSTRAINT sale_cnst    REFERENCES asgn_sale(saleID),
      quantity                  INT                     NOT NULL
); 

ALTER TABLE rental_tbl
ADD CONSTRAINT FK_Customer_Rental
FOREIGN KEY (CustomerId) REFERENCES customer_tbl(CustomerId)
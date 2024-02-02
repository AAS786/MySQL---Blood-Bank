Create database Bank;
use Bank;

CREATE TABLE Customer(
       Cust_id VARCHAR(6),
       First_name VARCHAR(30),
       Middle_name VARCHAR(30),
       Last_name VARCHAR(30),
       City VARCHAR(15),
       Mobile_no VARCHAR(10),
       Occupation VARCHAR(10),
       Date_of_Birth DATE,
      CONSTRAINT customer_Cust_id_pk PRIMARY KEY(Cust_id));
      
CREATE TABLE Branch(
    Branch_id VARCHAR(6),
    Branch_name VARCHAR(30),
    Branch_City VARCHAR(30),
    CONSTRAINT branch_bid_pk PRIMARY KEY(Branch_id));  
    
CREATE TABLE Account(
      Acc_Number VARCHAR(6),
      Cust_id  VARCHAR(6),
      Branch_id VARCHAR(6),
      Opening_balance INT(7),
      Acc_Open_DT DATE,
      Acc_Type VARCHAR(10),
      Acc_status VARCHAR(10),
      CONSTRAINT account_Acc_Number_pk PRIMARY KEY(Acc_Number),
      CONSTRAINT account_Cust_id_fk FOREIGN KEY(Cust_id) REFERENCES customer(Cust_id),
      CONSTRAINT account_Branch_id_fk FOREIGN KEY(Branch_id) REFERENCES branch(Branch_id)); 
      
CREATE TABLE Trans_Details(   
     Trans_number VARCHAR(6),
     Acc_number VARCHAR(6),
     Date_of_Trans DATE,
     Medium_of_transaction VARCHAR(20),
     Transaction_type VARCHAR(20),
     Transaction_amount INT(7),    
     CONSTRAINT trandetails_Trans_number_pk PRIMARY KEY(Trans_number),
     CONSTRAINT trandetails_Acc_number_fk FOREIGN KEY(Acc_number) REFERENCES account(Acc_number));  
     
CREATE TABLE Loan(
    Cust_id VARCHAR(6),
    Branch_id VARCHAR(6),
    loan_amount INT(7),
    CONSTRAINT loan_customer_Cust_id_Branch_id_pk PRIMARY KEY(Cust_id,Branch_id),
    CONSTRAINT loan_Cust_id_fk FOREIGN KEY(Cust_id) REFERENCES  customer(Cust_id),
    CONSTRAINT loan_Branch_id_fk FOREIGN KEY(Branch_id) REFERENCES  branch(Branch_id));

INSERT INTO Customer VALUES
('C00001','Ramesh','Chandra','Sharma','Delhi','9543198345','Service','1976-12-06'),
('C00002','Avinash','Sunder','Minha','Delhi','9876532109','Service','1974-10-16'),
('C00003','Rahul',null,'Rastogi','Delhi','9765178901','Student','1981-09-26'),
('C00004','Parul',null,'Gandhi','Delhi','9876532109','Housewife','1976-11-03'),
('C00005','Naveen','Chandra','Aedekar','Mumbai','8976523190','Service','1976-09-19'),
('C00006','Chitresh',null,'Barwe','Mumbai','7651298321','Student','1992-11-06'),
('C00007','Amit','Kumar','Borkar','Mumbai','9875189761','Student','1981-09-06'),
('C00008','Nisha',null,'Damle','Mumbai','7954198761','Service','1975-12-03'),
('C00009','Abhishek',null,'Dutta','Kolkata','9856198761','Service','1973-05-22'),
('C00010','Shankar',null,'Nair','Chennai','8765489076','Service','1976-07-12');

INSERT INTO Branch VALUES
('B00001','Asaf ali road','Delhi'),
('B00002','New delhi main branch','Delhi'),
('B00003','Delhi cantt','Delhi'),
('B00004','Jasola','Delhi'),
('B00005','Mahim','Mumbai'),
('B00006','Vile parle','Mumbai'),
('B00007','Mandvi','Mumbai'),
('B00008','Jadavpur','Kolkata'),
('B00009','Kodambakkam','Chennai');

INSERT INTO Account VALUES
('A00001','C00001','B00001',1000,'2012-12-15','Saving','Active'),
('A00002','C00002','B00001',1000,'2012-06-12','Saving','Active'),
('A00003','C00003','B00002',1000,'2012-05-17','Saving','Active'),
('A00004','C00002','B00005',1000,'2013-01-27','Saving','Active'),
('A00005','C00006','B00006',1000,'2012-12-17','Saving','Active'),
('A00006','C00007','B00007',1000,'2010-08-12','Saving','Suspended'),
('A00007','C00007','B00001',1000,'2012-10-02','Saving','Active'),
('A00008','C00001','B00003',1000,'2009-11-09','Saving','Terminated'),
('A00009','C00003','B00007',1000,'2008-11-30','Saving','Terminated'),
('A00010','C00004','B00002',1000,'2013-03-01','Saving','Active');

INSERT INTO Trans_Details VALUES
('T00001','A00001','2013-01-01','Cheque','Deposit',2000),
('T00002','A00001','2013-02-01','Cash','Withdrawal',1000),
('T00003','A00002','2013-01-01','Cash','Deposit',2000),
('T00004','A00002','2013-02-01','Cash','Deposit',3000),
('T00005','A00007','2013-01-11','Cash','Deposit',7000),
('T00006','A00007','2013-01-13','Cash','Deposit',9000),
('T00007','A00001','2013-03-13','Cash','Deposit',4000),
('T00008','A00001','2013-03-14','Cheque','Deposit',3000),
('T00009','A00001','2013-03-21','Cash','Withdrawal',9000),
('T00010','A00001','2013-03-22','Cash','Withdrawal',2000),
('T00011','A00002','2013-03-25','Cash','Withdrawal',7000),
('T00012','A00007','2013-03-26','Cash','Withdrawal',2000);

INSERT INTO loan VALUES
('C00001','B00001',100000),
('C00002','B00002',200000),
('C00009','B00008',400000),
('C00010','B00009',500000),
('C00001','B00003',600000),
('C00002','B00001',600000);

select * from  Customer;
select * from  Branch;
select * from  Account;
select * from  Trans_Details;
select * from  loan;

Desc Customer;
Desc Branch;
Desc Account;
Desc Trans_Details;
Desc loan;

alter table customer
add Gender varchar(25)  after last_name;

Update Customer
Set Gender = 'Male'
where Cust_id = 'C00001';

Update Customer
Set Gender = 'Male'
where Cust_id = 'C00002';

Update Customer
Set Gender = 'Male'
where Cust_id = 'C00003';

Update Customer
Set Gender = 'Female'
where Cust_id = 'C00004';

Update Customer
Set Gender = 'Male'
where Cust_id = 'C00005';

Update Customer
Set Gender = 'Male'
where Cust_id = 'C00006';

Update Customer
Set Gender = 'Male'
where Cust_id = 'C00007';

Update Customer
Set Gender = 'Female'
where Cust_id = 'C00008';

Update Customer
Set Gender = 'Male'
where Cust_id = 'C00009';

Update Customer
Set Gender = 'Male'
where Cust_id = 'C00010';


# Q.1>
# Write a query to display the customer-id, firstname, customer’s date of birth.
# Display in sorted order of date of birth year and within that sort by firstname.

SELECT Cust_id,First_name,Date_of_Birth
FROM Customer
ORDER BY YEAR(date_of_birth), first_name;

# Q.2>
# Write a query to display the customer’s number, first name, and middle name. 
# The customer’s who don’t have a middle name, for them display the last name. Give the alias name as Cust_Name.

SELECT cust_id, first_name, IFNULL(middle_name, last_name) AS Cust_Name
FROM Customer;

# 3>
# Write a query to display account number, customer’s number, customer’s firstname,lastname,account opening date.

SELECT account.acc_number, customer.cust_id, customer.first_name, customer.last_name, account.acc_open_DT
FROM Account
JOIN Customer  ON Account.cust_id = Customer.cust_id;

# 4>
# Write a query to display the number of customer’s from Delhi. Give the count an alias name of Cust_Count.

SELECT COUNT(*) AS Cust_Count
FROM Customer
WHERE city = 'Delhi';

# 5>
# Write a query to display  the customer number, customer firstname,account number for 
# the customer’s whose accounts were created after 15th of any month.

SELECT Customer.cust_id,first_name, Account.acc_number
FROM Customer
JOIN Account ON Customer.cust_id = Account.cust_id
WHERE  DAY(Account.acc_open_dt) > 15;

# 6>
# Write a query to display the female customers firstname, city and account number who are not into business, service or studies.

SELECT first_name, city,account.acc_number
FROM Customer,account
WHERE Gender = 'female'
AND occupation NOT IN ('business', 'service', 'studies');

# 7>
# Write a query to display city name and count of branches in that city. Give the count of branches an alias name of Count_Branch.

SELECT Branch_City,COUNT(*) AS Count_Branch
FROM Branch
GROUP BY Branch_City;

# 8>
# Write a query to display account id, customer’s firstname, customer’s lastname for the customer’s whose account is Active.

SELECT Account.acc_number,Customer.first_name,Customer.last_name,acc_status
FROM Account
JOIN Customer ON Account.cust_id = Customer.cust_id
WHERE account.acc_status = 'Active';

# 9>
# Write a query to display the customer’s number, customer’s firstname, branch id and loan amount for people who have taken loans.

SELECT Customer.cust_id, Customer.first_name, loan.branch_id, loan.loan_amount
FROM Customer 
INNER JOIN Loan  ON Customer.cust_id = loan.cust_id
INNER JOIN Branch  ON loan.branch_id = Branch.branch_id;

# 10>
# Write a query to display customer number, customer name, account number where the account status is terminated.

SELECT Customer.cust_id, 
CONCAT(Customer.first_name, ' ', Customer.last_name) AS customer_name, 
Account.acc_number,Acc_status
FROM Customer 
JOIN Account  ON Customer.cust_id = Account.cust_id
WHERE Account.acc_status = 'Terminated';

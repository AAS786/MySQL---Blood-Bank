create database Blood_Bank;
use Blood_Bank;

CREATE TABLE Address ( 
  Address_Id numeric NOT NULL, 
  City varchar (20) NOT NULL, 
  District varchar (20) NOT NULL, 
  Neighborhood varchar (60) NOT NULL, 
  PRIMARY KEY (Address_Id));

CREATE TABLE Status ( 
  Status_Id numeric NOT NULL, 
  Status varchar (20) NOT NULL, 
  PRIMARY KEY (Status_Id));
 
CREATE TABLE Users ( 
  User_Id numeric NOT NULL, 
  Status_Id numeric NOT NULL, 
  Address_Id numeric NOT NULL, 
  Phone_No varchar(10)  NOT NULL, 
  PRIMARY KEY (User_Id), 
  FOREIGN KEY (Status_Id) REFERENCES Status (Status_Id), 
  FOREIGN KEY (Address_Id) REFERENCES Address (Address_Id));

CREATE TABLE Blood_Type ( 
  Blood_Id numeric NOT NULL, 
  Blood_Code varchar (5) NOT NULL, 
  Donates_to varchar (45) NOT NULL, 
  Receives_from varchar (45) NOT NULL,  
  PRIMARY KEY (Blood_Id));

CREATE TABLE Donor ( 
  Donor_Id numeric NOT NULL, 
  First_Name varchar (20) NOT NULL, 
  Last_Name varchar (20) NOT NULL, 
  Blood_Id numeric NOT NULL, 
  PRIMARY KEY (Donor_Id), 
  FOREIGN KEY (Donor_Id) REFERENCES Users (User_Id), 
  FOREIGN KEY (Blood_Id) REFERENCES Blood_Type (Blood_Id));
  
CREATE TABLE Medical_Info ( 
  Report_Id numeric NOT NULL, 
  Donor_Id numeric NOT NULL, 
  Result varchar (50) NOT NULL, 
  PRIMARY KEY (Report_Id), 
  FOREIGN KEY (Donor_Id) REFERENCES Donor (Donor_Id));

CREATE TABLE Recipient ( 
  Recipient_Id numeric NOT NULL, 
  First_Name varchar (20) NOT NULL, 
  Last_Name varchar (20) NOT NULL, 
  Blood_Id numeric NOT NULL, 
  PRIMARY KEY (Recipient_Id), 
  FOREIGN KEY (Recipient_Id) REFERENCES Users (User_Id), 
  FOREIGN KEY (Blood_Id) REFERENCES Blood_Type (Blood_Id));
  
CREATE TABLE Blood_Bank ( 
  Bank_Id numeric NOT NULL, 
  Name varchar (50) NOT NULL, 
  Capacity_liter numeric NOT NULL, 
  PRIMARY KEY (Bank_Id), 
  FOREIGN KEY (Bank_Id) REFERENCES Users (User_Id));

CREATE TABLE Gives_to ( 
  Donation_id numeric NOT NULL, 
  Donor_id numeric NOT NULL, 
  Bank_Id numeric NOT NULL, 
  Date date NOT NULL, 
  PRIMARY KEY (Donation_id), 
  FOREIGN KEY (Donor_Id) REFERENCES Donor (Donor_Id), 
  FOREIGN KEY (Bank_Id) REFERENCES Blood_Bank (Bank_Id));
  
CREATE TABLE Takes_From ( 
  Transfer_Id numeric NOT NULL, 
  Recipient_id numeric NOT NULL, 
  Bank_Id numeric NOT NULL, 
  Date date NOT NULL, 
  PRIMARY KEY (Transfer_Id), 
  FOREIGN KEY (Recipient_Id) REFERENCES Recipient (Recipient_Id), 
  FOREIGN KEY (Bank_Id) REFERENCES Blood_Bank (Bank_Id));



#Inserting Data into TABLE “Address”:#

Insert into Address values
( 1000000 , 'Mumbai' , 'Mumbai_City' ,'Colaba'), 
( 1000001 , 'Mumbai' , 'Mumbai_City' ,'Bandra'),
( 1000002 , 'Mumbai' , 'Mumbai_City' ,'Powai'), 
( 1000003 , 'Pune' , 'Pune' ,'Koregaon Park'), 
( 1000004 , 'Pune' , 'Pune' ,'Kothrud'),
( 1000005 , 'Nagpur' , 'Nagpur' ,'Dharampeth'), 
( 1000006 , 'Nashik' , 'Nashik' ,'Indira Nagar'), 
( 1000007 , 'Aurangabad' , 'Aurangabad' ,'Cidco'),
( 1000008 , 'Thane' , 'Thane' ,'Thane_West'), 
( 1000009 , 'Kolhapur' , 'Kolhapur' ,'Shahupuri'),
( 1000010 , 'Solapur' , 'Solapur' ,'Siddheshwar Peth'), 
( 1000011 , 'Amravati' , 'Amravati' ,'Rukhmini Nagar'), 
( 1000012 , 'Navi_Mumbai' , 'Thane' ,'Vashi'),
( 1000013 , 'Nagpur' , 'Nagpur' ,'Sadar'), 
( 1000014 , 'Pune' , 'Pune' ,'Aundh'), 
( 1000015 , 'Mumbai' , 'Mumbai_City' ,'Malad'),
( 1000016 , 'Mumbai' , 'Nashik' ,'Panchavati'), 
( 1000017 , 'Aurangabad' , 'Aurangabad' ,'Garkheda'), 
( 1000018 , 'Solapur' , 'Solapur' ,'Hotgi'),
( 1000019 , 'Amravati' , 'Amravati' ,'Camp'), 
( 1000020 , 'Pune' , 'Pune' ,'Camp'),
( 1000021  ,'Nagpur' , 'Nagpur' ,'Ramdaspeth'), 
( 1000022  ,'Pune' , 'Pune' ,'Shivajinagar'), 
( 1000023 , 'Mumbai' , 'Mumbai_City' ,'Worli'), 
( 1000024 , 'Thane' , 'Thane' ,'Kopri'), 
( 1000025 , 'Kolhapur' , 'Kolhapur' ,'Rajarampuri'), 
( 1000026 ,'Nashik' , 'Nashik' ,'Mahatma Nagar'), 
( 1000027  ,'Pune' , 'Pune' ,'Hadapsar'), 
( 1000028 , 'Mumbai' , 'Mumbai_City' ,'Andheri'), 
( 1000029 , 'Solapur' , 'Solapur' ,'Raviwar Peth'), 
( 1000030 ,'Nashik' , 'Nashik' ,'Mahatma Nagar');


#Inserting Data into TABLE “Status”:
INSERT INTO STATUS VALUES 
( 1 , 'Blood Bank' ), 
  ( 2 , 'Donor' ), 
  ( 3 , 'Recipient' ), 
  ( 4 , 'Blood Bank' ), 
  ( 5 , 'Donor' ), 
  ( 6 , 'Recipient' ), 
  ( 7 , 'Blood Bank' ), 
  ( 8 , 'Donor' ), 
  ( 9 , 'Recipient' ), 
  ( 10 , 'Blood Bank' ), 
  ( 11 , 'Donor' ), 
  ( 12 , 'Recipient' ), 
  ( 13 , 'Blood Bank' ), 
  ( 14 , 'Donor' ), 
  ( 15 , 'Recipient' ), 
  ( 16 , 'Blood Bank' ), 
  ( 17 , 'Donor' ), 
  ( 18 , 'Recipient' ), 
  ( 19 , 'Blood Bank' ), 
 ( 20 , 'Donor' ),
( 21 , 'Blood Bank' ),
 ( 22 , 'Recipient' ),
 ( 23 , 'Donor' ),
 ( 24 , 'Blood Bank' ),
 ( 25 , 'Donor' ),
 ( 26 , 'Recipient' ),
 ( 27 , 'Donor' ),
 ( 28 , 'Donor' ),
 ( 29 , 'Blood Bank' ),
 ( 30 , 'Recipient' );
 
#Inserting Data into TABLE “Blood_Type”:
INSERT INTO BLOOD_TYPE VALUES 
( 1 , 'A+' , 'A+ , AB+' , 'O+ , O-'),
( 2 , 'A-' , 'A+, AB+, A-, AB- ' , 'O+, O-'), 
( 3 , 'B+' , 'B+, AB+' , 'O+, O-'), 
( 4 , 'B-' , 'B+, AB+, B-, AB-' , 'O+, O-'), 
( 5 , 'AB+' , 'AB+' , 'None'), 
 ( 6 , 'AB-' , 'AB-' , 'O+, O-'), 
( 7 , 'O+' , 'A+, B+, AB+, O+' , 'O-'), 
( 8 , 'O- ' , 'A+, B+, AB+, O+, O-' , 'None'),
( 9 , 'A+' , 'A+ , AB+' , 'O+ , O-'),
( 10 , 'A-' , 'A+, AB+, A-, AB- ' , 'O+, O-'), 
( 11, 'B+' , 'B+, AB+' , 'O+, O-'), 
( 12, 'B-' , 'B+, AB+, B-, AB-' , 'O+, O-'), 
( 13, 'AB+' , 'AB+' , 'None'), 
 ( 14 , 'AB-' , 'AB-' , 'O+, O-'), 
( 15 , 'O+' , 'A+, B+, AB+, O+' , 'O-'), 
( 16 , 'O- ' , 'A+, B+, AB+, O+, O-' , 'None'),
( 17 , 'A+' , 'A+ , AB+' , 'O+ , O-'),
( 18, 'A-' , 'A+, AB+, A-, AB- ' , 'O+, O-'), 
( 19 , 'B+' , 'B+, AB+' , 'O+, O-'), 
( 20, 'B-' , 'B+, AB+, B-, AB-' , 'O+, O-'), 
( 21, 'AB+' , 'AB+' , 'None'), 
 ( 22 , 'AB-' , 'AB-' , 'O+, O-'), 
( 23 , 'O+' , 'A+, B+, AB+, O+' , 'O-'), 
( 24 , 'O- ' , 'A+, B+, AB+, O+, O-' , 'None'),
( 25 , 'A+' , 'A+ , AB+' , 'O+ , O-'),
( 26 , 'A-' , 'A+, AB+, A-, AB- ' , 'O+, O-'), 
( 27, 'B+' , 'B+, AB+' , 'O+, O-'), 
( 28, 'B-' , 'B+, AB+, B-, AB-' , 'O+, O-'), 
( 29, 'AB+' , 'AB+' , 'None'), 
 ( 30 , 'AB-' , 'AB-' , 'O+, O-');


#Inserting Data into TABLE “Users”:
INSERT INTO USERS VALUES 
( 1 , 1 , 1000001, '9876543210' ),
( 2 , 2 , 1000002, '8765432109' ),
( 3 , 3 , 1000003, '7654321098' ),
( 4 , 4 , 1000004, '6543210987' ),
( 5 , 5 , 1000005, '5432109876' ),
( 6 , 6 , 1000006, '4321098765 '),
( 7 , 7 , 1000007, '3210987654' ),
( 8 , 8 , 1000008, '2109876543' ),
( 9 , 9 , 1000009, '9876543210' ),
(10 , 10 , 1000010, '1098765432 '),
( 11, 11 , 1000011, '0987654321 '),
( 12 , 12 , 1000012, '9876543210' ),
( 13 , 13 , 1000013, '8765432109' ),
( 14 , 14 , 1000014, '7654321098' ),
( 15 , 15 , 1000015, '6543210987' ),
( 16 , 16 , 1000016, '5432109876' ),
( 17 , 17 , 1000017, '4321098765' ),
( 18 , 18 , 1000018, '3210987654' ),
( 19 , 19 , 1000019, '2109876543' ),
( 20 , 20 , 1000020, '1098765432' ),
 ( 21 , 21 , 1000021, '0987654321' ),
( 22 , 22 , 1000022, '9876543210' ),
( 23 , 23 , 1000023, '8765432109' ),
( 24 , 24 , 1000024, '7654321098' ),
( 25 , 25 , 1000025, '6543210987' ),
( 26 , 26 , 1000026, '5432109876' ),
( 27 , 27 , 1000027, '4321098765' ),
( 28 , 28 , 1000028, '3876443210' ),
( 29 , 29 , 1000029, '2109876543' ),
( 30 , 30 , 1000030, '1098765432' );

# Inserting Data into TABLE “Donor”:
INSERT INTO DONOR VALUES 
( 1 , 'Amit' , 'Patel' , 1 ), 
( 2 , 'Pooja ','Sharma ' , 2 ), 
( 3 , 'Rahul ','Gupta ' , 3 ), 
( 4 , 'Sana ','Khan ' , 4 ), 
( 5 , 'Vikram ','Verma ' , 5 ), 
( 6 , 'Priya ','Singh ' , 6 ), 
( 7 , 'Meera ','Mishra ' , 7 ), 
( 8 , 'Rajesh ','Joshi ' , 8 ), 
( 9 , 'Neha ','Reddy ' , 9 ), 
( 10 , 'Arun ','Malhotra ' , 10 ), 
( 11 , 'Sanjay ','Kumar ' , 11 ), 
( 12 , 'Anjali ','Choudhary ' , 12 ), 
( 13 , 'Ravi ','Thakur ' , 13 ), 
( 14 , 'Preeti ','Singh ' , 14 ), 
( 15 , 'Kunal ','Tiwari ' , 15 ), 
( 16 , 'Kavita ','Sharma ' , 16 ), 
( 17 , 'Manish ','Shukla ' , 17 ), 
( 18 , 'Nisha ','Yadav ' , 18 ), 
( 19 , 'Anita ','Patel ' , 19 ), 
( 20 , 'Amit ','Patel ' , 20 ),
( 21 , 'Rajiv ','Singh ' , 21 ),
( 22 , 'Sarika ','Dubey ' , 22 ),
( 23 , 'Ramesh ','Kapoor ' , 23 ),
( 24 , 'Smita ','Verma ' , 24 ),
( 25 , 'Vivek ','Srivastava ' , 25 ),
( 26 , 'Radha ','Bhatia ', 26 ),
( 27 , 'Alok ','Joshi ' , 27 ),
( 28 , 'Meenakshi ','Rana ' , 28 ),
( 29 , 'Girish ','Gupta ' , 29 ),
( 30 , 'Sonali ','Sharma ' , 30 );


# Inserting Data into TABLE “Recipient”:


INSERT INTO RECIPIENT VALUES 
( 1 , 'Aditya ' , 'Patel ' , 1 ), 
( 2 , 'Aishwarya ' , 'Sharma ' , 2 ), 
 ( 3 , 'Akash  ' , 'Singh ' , 3 ), 
( 4 , 'Anjali ' , 'Kumar ' , 4 ), 
( 5 , 'Arjun ' , 'Patel ' , 5 ), 
( 6 , 'Avani ' , 'Shah ' , 6 ), 
( 7 , 'Dev ' , 'Singh ' , 7 ), 
( 8 , 'Diya ' , 'Kumar ' , 8 ), 
( 9 , 'Eshaan ' , 'Patel ' , 2 ), 
( 10 , 'Eesha ' , 'Shah ' , 2 ), 
( 11 , 'Gautam ' , 'Singh ' , 3 ), 
( 12 , 'Gayatri ' , 'Kumar ' , 4 ), 
( 13 , 'Ishaan ' , 'Patel ' , 5 ), 
( 14 , 'Isha ' , 'Shah ' , 6 ), 
( 15 , 'Kabir ' , 'Singh ' , 7 ), 
 ( 16 , 'Karishma ' , 'Kumar ' , 8 ), 
( 17 , 'Krishna ' , 'Patel ' , 1 ), 
( 18 , 'Kriti ' , 'Shah ' , 2 ), 
( 19 , 'Lakshman' , 'Singh ' , 3 ), 
( 20 , 'Lakshmi ' , 'Kumar ' , 4 ),
( 21 , 'Madhav ' , 'Patel ' , 5 ),
( 22 , 'Mahi ' , 'Shah ' , 6),
( 23 , 'Manav ' , 'Singh ' , 6 ),
( 24 , 'Meera ' , 'Kumar ' , 7 ),
( 25 , 'Neil ' , 'Patel ' , 8),
( 26 , 'Nisha ' , 'Shah ' , 9 ),
( 27 , 'Om' , 'Singh ' , 1 ),
( 28 , 'Priya ' , 'Kumar ' , 1 ),
( 29 , 'Rahul ' , 'Patel ' , 4 ),
( 30 , 'Samarth ' , 'Singh ' , 4 );



#Inserting Data into TABLE “Blood_Bank”:
INSERT INTO BLOOD_BANK VALUES 
( 1 , 'Maharashtra Lifesaver Blood Bank' , 5000 ), 
( 2 , 'Pune Red Cross Blood Bank' , 8000 ), 
( 3 , 'Mumbai HopeCare Blood Bank' , 6000 ), 
( 4 , 'Nashik BloodLink India' , 5500 ), 
( 5 , 'Aurangabad Miracle Drops Blood Bank' , 7000 ), 
 ( 6 , 'Solapur CareConnect Blood Bank' , 4500 ), 
 ( 7 , 'Kolhapur Unity Lifeline Blood Bank' , 6500 ), 
( 8 , 'Thane HealthFirst Blood Bank' , 7500 ), 
 ( 9 , 'Nagpur StarLife Blood Bank' , 5300 ), 
( 10 , 'Amravati Save-a-Life Blood Bank' , 4800 ), 
 ( 11 , 'Sangli HealthyHarbor Blood Bank' , 5100 ), 
( 12 , 'Panvel Red Drop Blood Bank' , 6200 ), 
( 13 , 'Latur CarePlus Blood Bank' , 5800 ), 
( 14 , 'Melikgazi' , 10000 ), 
( 15 , 'Ratnagiri AidLife Blood Bank' , 5200 ), 
( 16 , 'Akola LifeStream Blood Bank' , 6800 ), 
( 17 , 'Satara LifeLine India Blood Bank' , 4900 ), 
( 18 , 'Jalgaon Good Samaritan Blood Bank' , 5700 ), 
( 19 , 'Raigad Grace Blood Bank' , 5400 ), 
( 20 , 'Kolad LifeSource Blood Bank' , 7300 ),
( 21 , 'Mumbai HealthFirst Blood Bank' , 7600 ),
( 22 , 'Mumbai CarePlus Blood Bank' , 5800 ),
( 23 , 'Mumbai Grace Blood Bank' , 5400 ),
( 24 , 'Mumbai Wellness Blood Bank' , 4900 ),
( 25 , 'Mumbai MercyBlood India' , 5000 ),
( 26 , 'Mumbai CareConnect Blood Bank' , 4500 ),
( 27 , 'Mumbai Miracle Drops Blood Bank' , 8000 ),
( 28 , 'Pimpri-Chinchwad RedPulse Blood Bank' , 7100 ),
( 29 , 'Mumbai LifeForce India' , 7300 ),
( 30 , 'Mumbai HopeLine Blood Bank' , 6000 );

#Inserting Data into TABLE “Medical_Info”:

INSERT INTO MEDICAL_INFO VALUES 
( 150100 , 1 ,  'Low Hemoglobin'), 
( 150101 , 2 ,  'hepatitis B'), 
( 150102 , 3 , 'No disease'), 
( 150103 , 4 ,  'Cancer'), 
( 150104 , 5 ,  'No disease'), 
( 150105 , 6 ,  'HIV'), 
( 150106 , 7 , 'No disease'), 
( 150107 , 8 , 'No disease'), 
( 150108 , 9 ,  'heart conditions'), 
( 150109 , 10 ,  'No disease'),
( 150110 , 11 , 'No disease'), 
( 150111 , 12 ,  'hepatitis B'), 
( 150112 , 13 ,  'No disease'), 
( 150113 , 14 , 'Cancer'), 
( 150114 , 15 ,  'No disease'), 
( 150115 , 16 ,  'HIV'), 
( 150116 , 17 ,  'No disease'), 
( 150117 , 18 ,'No disease'), 
( 150118 , 19 ,  'heart conditions'), 
( 150119 , 20 ,  'Low Hemoglobin'),
( 150120 , 21 ,  'No disease'), 
( 150121 , 22 ,  'hepatitis B'), 
( 150122 , 23 , 'No disease'), 
( 150123 , 24 ,  'Cancer'), 
( 150124 , 25 , 'No disease'), 
( 150125 , 26 ,  'HIV'), 
( 150126 , 27 ,  'No disease'), 
( 150127 , 28 , 'No disease'), 
( 150128 , 29 ,  'heart conditions'), 
( 150129 , 30 ,  'No disease');
 
#Inserting Data into TABLE “Gives_to”:
 
INSERT INTO GIVES_TO VALUES 
( 990001 , 1 , 1 , '2020-03-12' ), 
( 990002 , 2 , 2 , '2020-03-12' ), 
 ( 990003 , 3 , 3 , '2020-03-12' ), 
( 990004 , 4 , 4 , '2020-03-12'  ), 
( 990005 , 5 , 5 , '2020-03-12'  ), 
( 990006 , 6 , 6 , '2020-03-12'  ), 
( 990007 , 7 , 7 , '2020-03-12'  ), 
( 990008 , 8 , 8 , '2020-03-12'  ), 
( 990009 , 9 , 9 , '2020-03-12'  ), 
( 990010 , 10 , 10 , '2020-03-12' );


# Inserting Data into TABLE “Takes_from”:
INSERT INTO TAKES_FROM VALUES 
( 770001 , 1 , 1 , '2020-02-19'  ), 
( 770002 , 2 , 2 , '2020-02-19'   ), 
( 770003 , 3 , 3 , '2020-02-19'   ), 
( 770004 , 4 , 4 , '2020-02-19'   ), 
( 770005 , 5 , 5 , '2020-02-19'   ), 
( 770006 , 6 , 6 , '2020-02-19'   ), 
( 770007 , 7 , 7 , '2020-02-19'  ), 
( 770008 , 8 , 8 , '2020-02-19'   ), 
( 770009 , 9 , 9 , '2020-02-19'   ), 
( 770010 , 10 , 10 , '2020-02-19'   );

select * from Address;   
select * from Status;  
select * from Users;   
select * from Blood_Type;  
select * from Donor;  
select * from Medical_Info ;  
select * from  Recipient;
select * from  Blood_Bank;   
select * from Gives_to ;
select * from Takes_From ;

DESC Address;
DESC Status;
DESC Users;
DESC Blood_Type;
DESC Donor;
DESC Medical_Info ;
DESC  Recipient;
DESC  Blood_Bank;   
DESC Gives_to ;
DESC Takes_From ;

# VIEWS:

#CREATE VIEW users_vu AS
       SELECT User_Id, Status_Id, Address_Id, Phone_No
       FROM Users;
#1 #Create VIEW find_Universal_donors AS
SELECT Blood_code, donor.First_Name, donor.Last_Name 
FROM Blood_Type, donor 
WHERE Blood_Type.Blood_Id = donor.Blood_Id and Blood_code = 'O+';

#Create VIEW find_all_universal_receivers AS#

SELECT Blood_code, Donor.First_Name, recipient.First_Name
FROM Blood_Type, recipient
WHERE Blood_Type.Blood_Id = recipient.recipient_id and Blood_code = 'AB-';

#2 #CREATE VIEW TOP 5 receiver_contact_info AS
SELECT distinct recipient.First_Name, recipient.Last_Name, Users.phone_no, address.city
FROM Users, recipient, address 
WHERE Users.user_Id = recipient.recipient_Id or Users.user_id = address.Address_Id
LIMIT 5;


#Create view final_all_donor_contact_info as 
select distinct donor.First_Name, donor.Last_Name, Users.phone_no, address.city
from Users, donor, address
where Users.user_Id = donor.donor_id or Users.user_id = address.Address_Id;


#Create view find_all_blood_bank_contact_info as
select distinct Blood_bank.Name, Users.phone_no, address.city
from Users, blood_bank, address
where Users.user_Id = blood_bank.bank_id or Users.user_id = address.Address_Id;


#Procedures:

#CREATE PROCEDURE SelectUsers
#AS
SELECT * FROM Users;

#Exec SelectUsers


#Joins:

SELECT Users.User_Id, Users.Status_Id
FROM Users
INNER JOIN Status
ON Users.Status_Id=Status.Status_Id;


#RETRIVAL OF DATA:

Select Address_Id,Phone_No,Status_Id
from Users
where Address_Id>1000001;



#DELETE:

DELETE FROM Donor
WHERE First_Name='sana';
rollback;



    
SELECT first_name,last_name FROM Recipient WHERE Recipient_Id = 4;

select distinct (Blood_Code) from blood_type;


SELECT COUNT(*) AS Address_Count
FROM Address
WHERE Address.City = 'Pune';

SELECT donor_id 
FROM Medical_Info
WHERE Result = 'Cancer';

SELECT First_Name, Last_Name,Result
FROM Donor
INNER JOIN medical_info ON Donor.Donor_Id = medical_info.Donor_Id
WHERE Result = 'No disease' limit 4;

SELECT Blood_Code
FROM Blood_Type
WHERE Donates_to LIKE '%A+%'
ORDER BY Blood_Code;

SELECT Blood_Code1, Blood_Code2 as blood_name
FROM Blood_Type
INNER JOIN Blood_Type ON Blood_Type.Donates_to = Blood_Type.Blood_Code
WHERE Blood_Type.Blood_Id <> Blood_Type.Blood_Id;


# Here are some SQL queries that you can use with the Blood_Type table that you created:

# Find all blood types that can donate to a recipient with blood type A+:

# SQL
SELECT Blood_Code
FROM Blood_Type
WHERE Donates_to LIKE '%A+%'
ORDER BY Blood_Code;

SELECT Donor_Id,First_name,Last_name,Blood_code FROM Donor
INNER JOIN Blood_Type ON Donor.Blood_Id = Blood_Type.Blood_Id
WHERE Blood_Type.Blood_Code  IN ('O+' , 'O-');

SELECT Recipient_Id,First_name, Blood_code
FROM Recipient
INNER JOIN Blood_Type ON Recipient.Blood_Id = Blood_Type.Blood_Id
WHERE Blood_Type.Blood_Code  IN ('A+', 'AB+');

SELECT * FROM Blood_Type limit 8;

SELECT Blood_Code, Donates_to FROM Blood_Type WHERE 'B+' Not IN (Donates_to);

SELECT Blood_Code, Receives_from FROM Blood_Type WHERE 'O+' Not IN (Receives_from);

SELECT * FROM Blood_Type WHERE 'B+'  Not IN (Donates_to);

# Find the name of the blood bank that has the most donors.
SELECT Name FROM Blood_Bank 
INNER JOIN Donor  ON Blood_bank.Bank_Id = donor.Blood_id
GROUP BY Name
ORDER BY COUNT(*) asc
LIMIT 4;


SELECT Blood_Code, COUNT(*) AS Count
FROM Blood_Type 
INNER JOIN Donor  ON blood_type.Blood_Id = Donor.Blood_Id
GROUP BY Blood_Code
ORDER BY Count asc
LIMIT 3;

SELECT Blood_Code, COUNT(*) AS Count
FROM Blood_Type 
INNER JOIN Recipient ON blood_type.Blood_Id = recipient.Blood_Id
GROUP BY Blood_Code
ORDER BY Count desc
LIMIT 4;


SELECT Name, Capacity_liter
FROM Blood_Bank 
ORDER BY Capacity_liter desc
LIMIT 5;

SELECT count(Capacity_liter)
FROM blood_bank ;

# Recipient  first_name and last_name  where blood_id is 2,3 
SELECT Recipient_Id,first_name,last_name
FROM Recipient
WHERE Blood_id = (2 and 3);

Use lab_mysql;

CREATE TABLE IF NOT EXISTS
cars(
VIN VARCHAR(52) PRIMARY KEY,
manufacturer VARCHAR(52),
model VARCHAR(32),
year_car year,
color VARCHAR(32)
);


CREATE TABLE IF NOT EXISTS
customers(
customerID INT PRIMARY KEY,
name_customer VARCHAR(52),
phone VARCHAR(20),
email VARCHAR(32),
address VARCHAR(52),
city VARCHAR(32),
province VARCHAR(32),
country VARCHAR(32),
postal INT
);


CREATE TABLE IF NOT EXISTS
salespersons(
staffID INT PRIMARY KEY,
name_staff VARCHAR(52),
store VARCHAR(32)
);

CREATE TABLE IF NOT EXISTS
invoices(
invoice_number INT PRIMARY KEY,
date_invoice DATE,
car INT,
customer INT,
salesperson INT
);


SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

INSERT INTO cars(VIN,manufacturer,model,year_car,color)
VALUES("3K096I98581DHSNUP","Volkswagen",	"Tiguan",2019, "Blue"),
("ZM8G7BEUQZ97IH46V",	"Peugeot",	"Rifter",	2019,	"Red"),
("RKXVNNIHLVVZOUB4M",	"Ford",	"Fusion",	2018,	"White"),
("HKNDGS7CU31E9Z7JW",	"Toyota",	"RAV4",	2018,	"Silver"),
("DAM41UDN3CHU2WVF6",	"Volvo",	"V60"	,2019,	"Gray"),
("DAM41UDN3CHU2WVF7",	"Volvo",	"V60",	2019,	"Gray");

INSERT INTO salespersons(staffID,name_staff,store)
VALUES(00001,	"Petey Cruiser",	"Madrid"),
(00002,	"Anna Sthesia",	"Barcelona"),
(00003,	"Paul Molive",	"Berlin"),
(00004,	"Gail Forcewind",	"Paris"),
(00005,	"Paige Turner",	"Miami"),
(00006,	"Bob Frapples",	"MExico City"),
(00007,	"Walter Melon",	"Amsterdam"),
(00008,	"Shonda Leer",	"Sao Paulo");

INSERT INTO invoices(invoice_number,date_invoice,car,customer,salesperson)
VALUES(	852399038,	'2018-08-22',	0,	1	,3),
(731166526,	'2018-12-31',	3,	0, 5),
(271135104,	'2019-01-22',	2,	2,	7);

INSERT INTO customers(customerID, name_customer, phone, email, address, city, province, country, postal)
VALUES
  (10001, 'Pablo Picasso', '34 636 17 63 82', '', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
  (20001, 'Abraham Lincoln', '1 305 907 7086', '', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
  (30001, 'Napoléon Bonaparte', '33 1 79 75 40 00', '', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);


	








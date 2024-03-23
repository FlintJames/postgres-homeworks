-- SQL-команды для создания таблиц
CREATE TABLE emploees
(
    employee_id int PRIMARY KEY,
    first_name varchar(30) NOT NULL,
    last_name varchar(50) NOT NULL,
	title varchar(100) NOT NULL,
	bird_date date NOT NULL,
	notes text NOT NULL
);


CREATE TABLE customers
(
    customer_id varchar(5) PRIMARY KEY,
    company_name varchar(100) NOT NULL,
    contact_name varchar(50) NOT NULL
);


CREATE TABLE orders
(
    order_id int PRIMARY KEY,
    customer_id varchar(5) REFERENCES customers(customer_id) NOT NULL,
    employee_id int REFERENCES emploees(employee_id) NOT NULL,
	order_date date NOT NULL,
	ship_city varchar(100) NOT NULL
);
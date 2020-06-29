CREATE TABLE Branch_Table(
    id int NOT NULL PRIMARY KEY,
    branch_name varchar(255),
    branch_code varchar(255),
    branch_city varchar(255),
    branch_add varchar(255),
)

CREATE TABLE customer_table(
    id INT NOT NULL PRIMARY KEY,
    email varchar(20),
    phone varchar(15),
    first_name varchar(75),
    last_name varchar(75),
    password varchar(16),
);

CREATE TABLE Manager_Table(
    id INT NOT NULL PRIMARY KEY,
    name varchar(75),
    address varchar(255),
    phone varchar(12),
    password varchar(20),
)

CREATE TABLE Complain_Table(
    id INT NOT NULL PRIMARY KEY,
    vic_name varchar(75),
    date varchar(20),
    time varchar(20),
    city varchar(20),
    address varchar(255),
    type varchar(20),
    phone varchar(11),
    description varchar(1000),
    post_time varchar(40), 
)

CREATE TABLE Complain_Branch_Rel(
    id INT NOT NULL PRIMARY KEY,
    complain_id varchar(20),
    branch_id varchar(20),
)

CREATE TABLE Coustomer_Complain_Rel(
    id INT NOT NULL PRIMARY KEY,
    complain_id varchar(20),
    coustomer_id varchar(20),
)
CREATE TABLE Manager_Branch_Table(
    id INT NOT NULL PRIMARY KEY,
    manager_id varchar(20),
    branch_id varchar(20),
)

-- USER REGISTRATION

INSERT INTO Coustomer_Table (id, email, phone, first_name, last_name, password)
VALUES(value1, value2, value3, value4, value5, value6);

-- USER LOGIN

SELECT phone, password FROM Coustomer_Table 

-- USER PROFILE

SELECT name,email,phone FROM Coustomer_Table WHERE id = req.session.id

-- USER COMPLAIN FEEDING

INSERT INTO Complain_Table (id, vic_name, date, time, city, address, type, phone, description, post_time)
VALUES(value1, value2, value3, value4, value5, value6, value7, value8, value9, value10);

-- USER COMPLAIN HISTORY

SELECT * FROM coust_comp INNER JOIN complain_table ON complaint_id = complain_table.Id WHERE customer_id=Coustomer_Table.id

-- MANAGER LOGIN

SELECT branch_name, branch_code, password FROM  
((Manager_Branch_Table INNER JOIN Manager_Table ON Manager_Table.id = manager_id)
INNER JOIN Branch_Table ON Branch_Table.id = branch_id);

-- MANAGER COMPLAIN RETRIEVING

SELECT branch_id FROM man_bra WHERE manager_id=req.session.manager_id --get ouput od branch_ids
SELECT * FROM comp_bran INNER JOIN complain_table ON complain_id = complain_table.id WHERE branch_id=branch_id.branch_id


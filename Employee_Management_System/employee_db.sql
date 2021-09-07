 drop database empdb;
create database empdb;
use empdb;


create table department(
department_id int(10) not null primary key auto_increment,
department_nm varchar(25) not null
);

create table employees(
empid int(10) not null primary key auto_increment,
firstname varchar(45),
lastname varchar(45),
dob date,
email varchar(100),
department_id int(10),
foreign key (department_id) references department(department_id)
);

create table compliance(
complianceid int(10) not null primary key auto_increment,
rltype varchar(15),
details varchar(250),
createdate date,
department_id int(10),
foreign key (department_id) references department(department_id)
);

create table statusreport(
complianceid int(10) not null,
statusrptid int(10) not null primary key auto_increment,
empid int(10) not null,
comments varchar(15) not null,
createdate date,
department_id int(10),
foreign key (complianceid) references compliance(complianceid),
foreign key (empid) references employees(empid),
foreign key (department_id) references department(department_id)
);

create table login_master(
userid int(10) not null primary key auto_increment,
-- password varchar(30) not null,
password varchar(128) not null,
role varchar(20) not null,
foreign key (userid) references employees(empid)
);

insert into department(department_nm) values("Software");
insert into department(department_nm) values("Hardware");

insert into employees(firstname, lastname, dob, email, department_id) values("AB", "CD", str_to_date("1948-5-8", "%Y-%m-%d"), "ab@gmail.com", 1);
insert into employees(firstname, lastname, dob, email, department_id) values("EF", "GH", str_to_date("1928-7-1", "%Y-%m-%d"), "cd@gmail.com", 2);

insert into login_master(password, role) values(sha2(sha2("Admin", 512), 512), "admin");
insert into login_master(password, role) values(sha2(sha2("Employee", 512), 512), "user");

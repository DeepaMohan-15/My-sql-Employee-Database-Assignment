create schema employee;
use employee;
create table departments(
     department_id int primary key,
     department_name varchar(100));
     create table location(
     location_id int primary key,
     location varchar(50));
 create table employees(
     employee_id int primary key,
     employee_name varchar(100),
     gender enum('M','F'),
     age int,
     hire_date date,
     designation varchar(100),
     department_id int,
     location_id int,
     salary decimal(10,2),
     foreign key (department_id)
       references departments(department_id),
     foreign key (location_id)
       references location(location_id)); 
       show	 tables;
       select * from employees;
       select* from department_info;
       select* from locations;
       alter table employees
       add email varchar(100);
       alter table employees
       modify designation varchar(150);
       alter table employees
       drop column age;
       alter table employees
       rename column hire_date to date_of_joining;
       rename table departments to department_info;
       rename table location to locations;
       truncate table employees;
       drop table employees;
       drop database employee;
       drop database if exists employee;
       create database employee;
       use employee;
       create table departments ( 
       department_id int primary key,
       department_name varchar(100) not null unique);
       create table location (
       location_id int primary key auto_increment,
       location varchar(50) not null unique);
       select * from location;
       create table employees (
       employee_id int primary key,
       employee_name varchar(100) not null,
       gender enum ('M','F'),
       age int check(age>=18),
       hire_date date default (current_date()),
       designation varchar(100),
       department_id int,
       location_id int,
       salary decimal(10,2),
       foreign key (department_id)
       references  departments(department_id),
       foreign key (location_id)
       references  location(location_id)
       );
       show tables;
       show create table employees;
       desc employees;
       -- Insert department values
       insert into departments (department_id,department_name)
       values(1,'HR'),
         (2,'IT') ; 
         
         select * from departments;
       
       insert into departments (department_id,department_name)
       values(3,'PT');
       -- Insert  Location values
       insert into location (location)
       values('Banglore'),
       ('kannur'),
       ('tvm');
       select * from location;
       -- Insert Employee values
      
              select * from employees;
              
              
             
       delete from employees 
       where employee_id in (1,2,3);
       insert into  employees
       (employee_id, employee_name, gender, age,  designation, department_id, location_id,salary)
       values(1,'Rahul','M',30, 'Manager',1,1,50000.00),
              (2,'Rijul','M',39,'Accountant',2,2,40000.00),
              (3,'Rahul','M',30, 'Engineer',3,3,50000.00);
       
       
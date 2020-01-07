DROP DATABASE IF EXISTS employeesDB;
CREATE database employeesDB;

USE employeesDB;

CREATE TABLE employees (
  emp_id INT(11) AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30) NULL,
  last_name VARCHAR(30) NULL,
  role_id INT NOT NULL,
  mngr_id INT NULL,
  PRIMARY KEY (emp_id)
);

CREATE TABLE roles (
  role_id INT(11) AUTO_INCREMENT NOT NULL,
  title VARCHAR(30) NULL,
  salary DECIMAL(10,2) NULL,
  dept_id INT(4) NOT NULL,
  PRIMARY KEY (role_id)
);

CREATE TABLE departments (
  dept_id INT(4) AUTO_INCREMENT NOT NULL,
  dept_name VARCHAR(30) NULL,
  PRIMARY KEY (dept_id)
);
/* Seeds for SQL table. */
USE employeesDB;

INSERT INTO employees (first_name, last_name, role_id, mngr_id) 
VALUES ("Dmitriy", "Aloyts", 1, 2);
INSERT INTO employees (first_name, last_name, role_id, mngr_id) 
VALUES ("Ivan", "Cumbo", 2, 0);
INSERT INTO employees (first_name, last_name, role_id, mngr_id) 
VALUES ("Nikki", "Lord", 3, 4);
INSERT INTO employees (first_name, last_name, role_id, mngr_id) 
VALUES ("James", "Graff", 4, 0);
INSERT INTO employees (first_name, last_name, role_id, mngr_id) 
VALUES ("Paul", "Busswell", 5, 0);
INSERT INTO employees (first_name, last_name, role_id, mngr_id) 
VALUES ("Leo", "Krem", 6, 7);
INSERT INTO employees (first_name, last_name, role_id, mngr_id) 
VALUES ("Ann", "Smith", 7, 0);

INSERT INTO roles (title, salary, dept_id)
VALUES ("Software Engineer","65000.00", 1);
INSERT INTO roles (title, salary, dept_id)
VALUES ("Lead Engineer","85000.00", 1);
INSERT INTO roles (title, salary, dept_id)
VALUES ("Salesperson","40000.00", 2);
INSERT INTO roles (title, salary, dept_id)
VALUES ("Sale Lead","60000.00", 2);
INSERT INTO roles (title, salary, dept_id)
VALUES ("Accountant","70000.00", 3);
INSERT INTO roles (title, salary, dept_id)
VALUES ("Lawer","80000.00", 4);
INSERT INTO roles (title, salary, dept_id)
VALUES ("Legal Team Lead","90000.00", 4);

INSERT INTO departments (dept_name)
VALUES ("Engineering"), ("Sales"), ("Finance"), ("Legal");

SELECT * FROM employees;
SELECT * FROM roles;
SELECT * FROM departments;
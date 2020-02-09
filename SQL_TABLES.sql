-- CREATE TABLE departments (
--  	dept_no VARCHAR(15) NOT NULL,
--  	dept_name VARCHAR(48) NOT NULL, 
--  	PRIMARY KEY(dept_no)
--  );


--  CREATE TABLE employees (
--  	emp_no INT NOT NULL,
--  	birth_date DATE NOT NULL,
--  	first_name VARCHAR(15) NOT NULL,
--  	last_name VARCHAR(30) NOT NULL,
--  	gender VARCHAR(1) NOT NULL,
--  	hire_date VARCHAR(48) NOT NULL,
--  	PRIMARY KEY(emp_no)
--  );

--  DROP TABLE dept_mgmt;
--  CREATE TABLE dept_mgmt (
--   	dept_no VARCHAR(15) NOT NULL,
--   	emp_no INT NOT NULL,
--   	from_date DATE NOT NULL,
--   	to_date DATE NOT NULL,
--  	PRIMARY KEY(emp_no,dept_no)
--  );



-- DROP TABLE dept_emp;
--   CREATE TABLE dept_emp (
--   	emp_no INT NOT NULL,
--   	dept_no VARCHAR(15) NOT NULL,
--   	from_date DATE NOT NULL,
--   	to_date DATE NOT NULL,
--  	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
--  	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
--  	PRIMARY KEY(emp_no,dept_no)
--  );



--  CREATE TABLE titles (
--  	emp_no INT NOT NULL,
--  	title VARCHAR(58) NOT NULL,
--  	from_date DATE NOT NULL,
--  	to_date DATE NOT NULL,
--  	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
--  	PRIMARY KEY(emp_no,title)
--  );



 CREATE TABLE salary (
  	emp_no INT NOT NULL,
  	salary INT NOT NULL,
  	from_date DATE NOT NULL,
  	to_date DATE NOT NULL,
  	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  	PRIMARY KEY(emp_no,salary)
 );
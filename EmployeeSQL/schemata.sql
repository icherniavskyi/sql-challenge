-- Creating 'departments' table
CREATE TABLE departments (
    dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- Creating 'titles' table
CREATE TABLE titles (
    title_id CHAR(5) NOT NULL PRIMARY KEY,
    title VARCHAR(50)
);

-- Creating 'employees' table
CREATE TABLE employees (
    emp_no CHAR(10) NOT NULL PRIMARY KEY,
    emp_title_id CHAR(5) NOT NULL,
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHAR(1),
    hire_date DATE,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Creating 'dept_emp' table
CREATE TABLE dept_emp (
    emp_no CHAR(10) NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Creating 'dept_manager' table
CREATE TABLE dept_manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no CHAR(10) NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Creating 'salaries' table
CREATE TABLE salaries (
    emp_no CHAR(10) NOT NULL,
    salary INT,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
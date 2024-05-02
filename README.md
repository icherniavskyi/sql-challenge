# sql-challenge

This folder contains the SQL code used to create and interact with a company database. The database consists of several tables that store information about departments, titles, employees, department employment, department management, and salaries. 

## Folder Information
The folder contains three files needed for code's execution and better understandment of database's structure. The documents are:
  - ERD.png file: Contains the visualization of database structure and relationships between its tables.
  - schemata.sql file: Contains a schema for the database and the script fot its creation.
  - queries.sql file: Contains queries needed for the potential analysis.


## Execution

  1. In order to execute the script, create a respective database in PostgreSQL. Run Query Tool on created database and paste the script from schemata.sql file. This script will create a respective tables in the database.
  2. Import the .csv files with data to respective tables using the import tool. Please import the data in the order of tables' creation due to foreign keys constraints.
  3. Individually run each query from queries.sql file to see the result of each query.

## Examples

### Table creation example
Creates a `departments` table with department number (`dept_no`) and department name (`dept_name`).
```sql
CREATE TABLE departments (
    dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);
```

### Query Example
Lists employee number, last name, first name, sex, and salary of each employee.
```sql
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;
```


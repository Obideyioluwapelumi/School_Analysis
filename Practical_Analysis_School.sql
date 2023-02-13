


use practical_analysis;

CREATE TABLE teachers (
id int auto_increment,
first_name varchar(25),
last_name varchar(50),
school varchar(50),
hire_date date,
salary numeric,
primary key (id)
);

INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES ('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
 ('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
 ('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
 ('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
 ('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
 ('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);
 
select * from teachers;
 
SELECT last_name, first_name, salary FROM teachers;
 
SELECT DISTINCT school 
FROM teachers;
 
SELECT DISTINCT school, salary 
FROM teachers;
 
SELECT first_name, last_name, salary 
FROM teachers
ORDER BY salary DESC;

SELECT upper(first_name), last_name, salary 
FROM teachers
ORDER BY salary DESC;
 
SELECT last_name, school, hire_date 
FROM teachers
ORDER BY school ASC, hire_date DESC; 
 
 
SELECT last_name, school, hire_date
FROM teachers
WHERE school = 'Myers Middle School';
 
SELECT first_name, last_name, school
FROM teachers
WHERE first_name = 'Janet';
 
SELECT school
FROM teachers
WHERE school != 'F.D. Roosevelt HS';

select first_name, last_name, hire_date
FROM teachers
WHERE hire_date < '2000-01-01';
 
SELECT first_name, last_name, salary
FROM teachers
WHERE salary >= 43500;

SELECT first_name, last_name, school, salary
FROM teachers
WHERE salary BETWEEN 40000 AND 65000;

SELECT first_name
FROM teachers
WHERE first_name LIKE 'sam%';

SELECT first_name
FROM teachers
WHERE first_name ILIKE 'sam%';

SELECT *
FROM teachers
WHERE school = 'Myers Middle School'
 AND salary < 40000;
 
SELECT *
FROM teachers
WHERE last_name = 'Cole'
 OR last_name = 'Bush';
 
SELECT *
FROM teachers
WHERE school = 'F.D. Roosevelt HS'
AND (salary < 38000 OR salary > 40000);

SELECT first_name, last_name, school, hire_date, salary
FROM teachers
WHERE school LIKE '%Roos%'
ORDER BY hire_date DESC; 

select * from teachers
order by last_name asc;

select * from teachers 
where first_name like '%S%'
and salary > '40000';

select distinct first_name, last_name, school, hire_date, Salary
from teachers
where hire_date >= '2010-01-1'
order by salary desc;

select * from teachers;



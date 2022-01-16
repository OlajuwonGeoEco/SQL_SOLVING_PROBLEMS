
#Select the names and job start dates of all employees who work for the department number 5.

SELECT e.F_NAME, e.L_NAME, j.start_date ,e.DEP_ID
from employees as e INNER JOIN  JOB_HISTORY AS j ON e.EMP_ID=j.EMPL_ID 
WHERE e.DEP_ID = 5;

#Select the names, job start dates, and job titles of all employees who work for the department number 5.

SELECT e.F_NAME, e.L_NAME, j.job_title, jh.start_date
from employees as e 
INNER JOIN  JOBS AS j ON e.JOB_ID=j.JOB_IDENT
INNER JOIN JOB_HISTORY as jh on e.emp_ID= jh.empl_ID
WHERE E.DEP_ID=5 ;

#Perform a Left Outer Join on the EMPLOYEES and DEPARTMENT tables and select employee id, last name, department id and department name for all employees.

SELECT e.EMP_ID, e.L_NAME, e.DEP_ID, d.DEP_NAME 
from employees as e 
LEFT JOIN  DEPARTMENTS AS d ON e.JOB_ID=d.DEPT_ID_DEP;


#Re-write the previous query but limit the result set to include only the rows for employees born before 1980.

SELECT e.EMP_ID, e.L_NAME, e.DEP_ID, d.DEP_NAME 
from employees as e 
LEFT JOIN  DEPARTMENTS AS d ON e.JOB_ID=d.DEPT_ID_DEP
WHERE YEAR(B_DATE)  < 1980;

#Re-write the previous query but have the result set include all the employees but department names for only the employees who were born before 1980.

SELECT e.EMP_ID, e.L_NAME, e.DEP_ID, d.DEP_NAME 
from employees as e 
LEFT JOIN  DEPARTMENTS AS d ON e.JOB_ID=d.DEPT_ID_DEP
AND YEAR(B_DATE)  < 1980;


#Perform a Full Join on the EMPLOYEES and DEPARTMENT tables and select the First name, Last name and Department name of all employees.

SELECT e.F_NAME, e.L_NAME,d.DEP_NAME
from employees as e 
FULL OUTER JOIN  DEPARTMENTS AS d ON e.JOB_ID=d.DEPT_ID_DEP;

#Re-write the previous query but have the result set include all employee names but department id and department names only for male employees.
SELECT e.F_NAME, e.L_NAME,e.sex as SEX, d.DEPT_ID_DEP, d.DEP_NAME
from employees as e 
FULL OUTER JOIN  DEPARTMENTS AS d ON e.JOB_ID=d.DEPT_ID_DEP AND e.SEX ='M';


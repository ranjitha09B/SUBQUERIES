use empl;

-- Subqueries and Nested Queries  
-- Find employees who earn more than the average salary
SELECT id, name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- fetach emplyomee data who get 2nd hightest salary
SELECT NAME,DEPARTMENT,SALARY
FROM EMPLOYEES
WHERE SALARY < (SELECT MAX(SALARY) AS MAX_SALARY
                   FROM EMPLOYEES)
LIMIT 1;

-- USING IN OPERATOR
SELECT id,NAME,DEPARTMENT
FROM employees
WHERE id IN (
    SELECT id
    FROM employees
    WHERE id > 5
);

-- USING EXISTS OPERATOR
SELECT ID,NAME,DEPARTMENT
FROM EMPLOYEES e
WHERE  EXISTS (
	  SELECT department
      FROM EMPLOYEES 
      WHERE SALARY < ( SELECT AVG(SALARY) AS AVG_SALARY
                        FROM EMPLOYEES)
	  AND e.id = employees.id
);

-- USING = OPERTOR
SELECT id, name
FROM employees
WHERE id = (
    SELECT MAX(id)
    FROM employees
);
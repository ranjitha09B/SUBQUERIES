# SUBQUERIES AND Nested Queries
Let's break down the SQL queries  provided, focusing on scalar and correlated subqueries, as well as the use of subqueries with the IN, EXISTS, and = operators. I'll explain each query in detail.

# 1. Find Employees Who Earn More Than the Average Salary
To find who earn more than the average salary we uses a scalar subquery to calculate the average salary of all employees.
The subquery (SELECT AVG(salary) FROM employees) returns a single value (the average salary).
The main query retrieves the id, name, and salary of employees whose salary is greater than this average.

# 2. Fetch Employee Data Who Get 2nd Highest Salary
Qquery aims to find the employee with the second highest salary.
The subquery (SELECT MAX(SALARY) FROM EMPLOYEES) finds the highest salary.
The main query selects employees whose salary is less than this maximum salary.
The LIMIT 1 clause ensures that only one record is returned, which will be the employee with the second highest salary.

# 3. Using IN Operator
This query retrieves the id, NAME, and DEPARTMENT of employees whose id is in the list of IDs returned by the subquery.
The subquery (SELECT id FROM employees WHERE id > 5) generates a list of employee IDs greater than 5.
The main query selects records from the employees table where the id matches any of the IDs from the subquery.

# 4. Using EXISTS Operator
This query retrieves the ID, NAME, and DEPARTMENT of employees who earn less than the average salary.
The subquery (SELECT AVG(SALARY) FROM EMPLOYEES) calculates the average salary.
The EXISTS clause checks if there is at least one record in the subquery that meets the condition of having a salary less than the average and matches the id of the outer query's employee.
This is a correlated subquery because it references the outer query's e.id.

# 5. Using = Operator
This query retrieves the id and name of the employee with the highest id.
The subquery (SELECT MAX(id) FROM employees) returns the maximum id value.
The main query selects the employee whose id matches this maximum value.
This is also a scalar subquery since it returns a single value.

# Summary of Subquery Types
# Scalar Subqueries: 
     Return a single value and can be used in places where a single value is expected (e.g., in comparisons). Examples include the first query and the last query.

# Correlated Subqueries:
     Reference columns from the outer query and are executed once for each row processed by the outer query. The fourth query is an example of this type.

# Using Subqueries with IN, EXISTS, and =
# IN Operator: 
    Used to filter results based on a list of values returned by a subquery. The third query demonstrates this.

# EXISTS Operator: 
    Checks for the existence of rows returned by a subquery. The fourth query illustrates this concept.

# = Operator:
    Used to compare a single value returned by a subquery with a column in the main query. The last query is an example of this.


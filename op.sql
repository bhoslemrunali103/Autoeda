SELECT name, age, department
FROM employee e1
WHERE age > (
    SELECT AVG(age)
    FROM employee 
    WHERE department = e1.department
);
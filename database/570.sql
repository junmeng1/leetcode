#managers with at least 5 direct reports
SELECT Name
FROM Employee
WHERE Id in (SELECT ManagerId
    FROM Employee e
    Where e.ManagerId is not NULL
    Group by e.ManagerId
    Having count(*)>=5)
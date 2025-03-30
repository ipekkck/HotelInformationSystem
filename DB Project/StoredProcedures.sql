
-- This stored procedure calculates the total salary of employees in a specific department.

CREATE PROCEDURE TotalSalary
    @Department_ID INT,       -- Input
    @Total_Salary INT OUTPUT  -- Output
AS
BEGIN
    SET @Total_Salary = 0;

    --Calculate the total salary of all employees in the specified department
    SELECT @Total_Salary = SUM(Salary)
    FROM Employees
    WHERE Department_ID = @Department_ID;

	--Retrieve and display employee names and salaries in the given department
    SELECT Emp_name, Salary
    FROM Employees
    WHERE Department_ID = @Department_ID;

    --Print the total salary as output
	PRINT 'Total Salary for Department ' + CAST(@Department_ID AS VARCHAR(10)) + ' is ' + CAST(@Total_Salary AS VARCHAR(18));
END;

DECLARE @TotalSalary2 INT;
EXEC TotalSalary @Department_ID = 2, @Total_Salary = @TotalSalary2 OUTPUT;
SELECT @TotalSalary2 AS 'Total Salary';

EXEC sp_helptext 'TotalSalary';






DROP PROCEDURE TotalSalary;

















-- Step 1: Create the Student table
CREATE TABLE Student (
    StudentID NUMBER PRIMARY KEY,
    StudentName VARCHAR2(50),
    DepartmentID NUMBER
);

-- Step 2: Enable output
SET SERVEROUTPUT ON;

-- Step 3: Create the procedure
CREATE OR REPLACE PROCEDURE insert_student (
    p_student_id IN NUMBER,
    p_student_name IN VARCHAR2,
    p_department_id IN NUMBER
)
IS
BEGIN
    INSERT INTO Student (StudentID, StudentName, DepartmentID)
    VALUES (p_student_id, p_student_name, p_department_id);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student record inserted successfully.');
END;
/

-- Step 4: Execute the procedure
BEGIN
    insert_student(101, 'Arun', 10);
END;
/

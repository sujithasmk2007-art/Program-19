SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_student IS
        SELECT StudentID, StudentName, DepartmentID
        FROM Student;

    v_StudentID Student.StudentID%TYPE;
    v_StudentName Student.StudentName%TYPE;
    v_DepartmentID Student.DepartmentID%TYPE;
BEGIN
    OPEN c_student;

    LOOP
        FETCH c_student INTO v_StudentID, v_StudentName, v_DepartmentID;
        EXIT WHEN c_student%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'StudentID: ' || v_StudentID ||
            ' StudentName: ' || v_StudentName ||
            ' DepartmentID: ' || v_DepartmentID
        );
    END LOOP;

    CLOSE c_student;
END;
/

-- this function retrieves the table of students and displays it to the user
CREATE OR REPLACE FUNCTION getAllStudents()
-- the function will return a table with the id, first and last name, email and enrollment date of each student
returns table(
	student_id INT,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email VARCHAR(50),
	enrollment_date DATE)
language plpgsql
AS
$$
begin
   return query
-- selects everything from the student table
   select * 
   from students;
end;
$$;

-- this function adds a new student to the table
CREATE OR REPLACE FUNCTION addStudent(new_first_name VARCHAR(20), new_last_name VARCHAR(20), new_email VARCHAR(50), new_enrollment_date DATE)
-- the function does not return anything
returns VOID
language plpgsql
AS
$$
begin
-- inserts a new student into the student table with the given arguments
	INSERT INTO students(first_name, last_name, email, enrollment_date)
	VALUES (new_first_name, new_last_name, new_email, new_enrollment_date);
end;
$$;

-- this function updates the email of the given student
CREATE OR REPLACE FUNCTION updateStudentEmail(student_id_arg INT, new_email_arg varchar(50))
-- the function does not return anything
returns VOID
language plpgsql
AS
$$
begin
-- updates the student table by changing the email of the student that matches the id provided
	UPDATE students
	SET email = new_email_arg
	WHERE student_id=student_id_arg;
end;
$$;

-- this function deletes a student with the given student id
CREATE OR REPLACE FUNCTION deleteStudent(student_id_arg INT)
-- the function does not return anything
returns VOID
language plpgsql
AS
$$
begin
-- deletes student from the table matching the provided id
	DELETE FROM students
	WHERE student_id=student_id_arg;
end;
$$;
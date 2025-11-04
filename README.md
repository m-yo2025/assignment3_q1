# Author: Mo Yeo
# Student ID: 101313512

This repository contains a source code folder, and this README file.
The source code folder contains 2 sql files: 'a3q1_app' and 'a3q1_init'.
The file 'init' simply creates a table called 'student', with 5 attributes.
The file 'app' contains 4 function definitions; adding a student, updating a student's email, deleting a student, and listing the entirety of the student table.

To use code files, you can go into pgAdmin 4, and creating a new database (I would suggest naming it 'a3_database').
Then connect pgAdmin to this database, open the 'init' file and run it. This will create the table called 'students'. 
Open the 'app' file and run that as well. You can right-click on the database, and open the query tool to use the functions from the 'app' file. 

I will list out how to execute each function:

SELECT * FROM getAllStudents(); -- displays the table
SELECT addStudent('FirstName', 'LastName', 'Email@email.com', '2000-01-01'); -- adds a new student
SELECT updateStudentEmail(1, 'NewEmail@email.com') -- updates the email of the student with the given id
SELECT deleteStudent(1) -- deletes the student with the given id from the table

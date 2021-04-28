SELECT sut.students.*, sut.teacher.*
FROM sut.students INNER JOIN sut.teacher
ON sut.students.teacher_id = sut.teacher.id;

SELECT sut.students.*, sut.teacher.*
FROM sut.students INNER JOIN sut.teacher
WHERE sut.students.teacher_id = sut.teacher.id;

SELECT sut.students.*, sut.teacher.*
FROM sut.students INNER JOIN sut.teacher
ON sut.students.teacher_id = sut.teacher.id
WHERE sut.teacher.name = 'yy';

SELECT sut.students.*, sut.teacher.*
FROM sut.students INNER JOIN sut.teacher
ON sut.students.teacher_id = sut.teacher.id
AND sut.teacher.name = 'yy';

SELECT sut.students.*, sut.teacher.*
FROM sut.students INNER JOIN sut.teacher
WHERE sut.students.teacher_id = sut.teacher.id
AND sut.teacher.name = 'yy';

SELECT sut.students.*, sut.teacher.*, sut.major.*
FROM sut.students INNER JOIN sut.teacher INNER JOIN sut.major
ON sut.students.teacher_id = sut.teacher.id
AND sut.students.major_id = sut.major.mid;

SELECT sut.students.id AS 'student id',
sut.students.name AS 'student name', 
sut.teacher.id AS 'teacher id',
sut.teacher.name AS 'teacher name', 
sut.major.mname AS 'major name', 
sut.students.teacher_id AS 'student tid'
FROM sut.students INNER JOIN sut.teacher INNER JOIN sut.major
ON sut.students.teacher_id = sut.teacher.id
AND sut.students.major_id = sut.major.mid
ORDER BY sut.teacher.name DESC
LIMIT 2;		




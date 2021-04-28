SELECT sut.students.*, sut.teacher.*
FROM sut.students RIGHT JOIN sut.teacher
ON sut.students.teacher_id = sut.teacher.id;
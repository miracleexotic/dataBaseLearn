SELECT sut.students.*, sut.teacher.*
FROM sut.students LEFT JOIN sut.teacher
ON sut.students.teacher_id = sut.teacher.id;
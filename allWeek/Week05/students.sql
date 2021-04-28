SELECT * FROM sut.students;

INSERT INTO sut.students VALUE
(4, 'dd', 33),
(1, 'aa', 11),
(2, 'bb', 22),
(3, 'cc', 22);

ALTER TABLE sut.students
MODIFY teacher_id INT NULL;

UPDATE sut.students
SET 
	teacher_id = null
WHERE id = 4;

UPDATE sut.students
SET 
	teacher_id = 33
WHERE id = 3;

ALTER TABLE sut.students
ADD major_id INT,
ADD FOREIGN KEY(major_id) REFERENCES sut.major(mid);

UPDATE sut.students SET major_id = 101 WHERE id = 1;
UPDATE sut.students SET major_id = 101 WHERE id = 2;
UPDATE sut.students SET major_id = 102 WHERE id = 3;
UPDATE sut.students SET major_id = 103 WHERE id = 4;
SELECT * FROM sut.students
WHERE sut.students.major_id = 
(SELECT sut.major.mid FROM sut.major
WHERE sut.major.mname = 'CPE');
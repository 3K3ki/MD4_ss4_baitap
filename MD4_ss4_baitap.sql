select * from subject where Credit=(select max(credit) from subject);

select SubName,Mark from (subject join mark on subject.SubId = Mark.subid) where Mark=(select max(mark) from mark)  ; 

select student.*, AVG(mark)
from student
 join mark on student.StudentId = Mark.StudentId 
 group by StudentId 
 order by avg(mark) desc;
 
 select avg(mark) from mark group by StudentId;
 

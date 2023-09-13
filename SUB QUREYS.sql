select * from EMPLOYEE


SELECT ENAME,SAL FROM EMPLOYEE WHERE DEPTNAME = 'INSURANCE' AND SAL > (select avg(sal) from employee where deptname = 'BANKING')


SELECT ENAME,MGR FROM EMPLOYEE WHERE HIREDATE BETWEEN '17-DEC-1980' AND '03-DEC-1981' AND MGR < (SELECT COUNT(*) FROM EMPLOYEE WHERE MGR = 4)

SELECT ENAME,SAL,DEPTNAME,HIREDATE FROM EMPLOYEE WHERE HIREDATE BETWEEN '17-DEC-1980' AND '03-DEC-1981' AND SAL > (SELECT AVG(SAL) FROM EMPLOYEE WHERE DEPTNAME = 'SERVICES')




create table student(studentid int primary key,name varchar(20))

insert into student values (1,'dileep');
insert into student values (2,'sai');
insert into student values (3,'pavan');
insert into student values (4,'ganesh');
insert into student values (5,'vicky');

select * from student;

create table mark(studentid int primary key,total_marks int);

insert into mark values(1,95);
insert into mark values(2,90);
insert into mark values(3,87);
insert into mark values(4,73);
insert into mark values(5,77);



select * from mark;

select s.studentid,s.name,m.total_marks from student s, mark m where s.studentid = m.studentid and m.total_marks > (select total_marks from mark where studentid = 3)

update student set name = 'Radha' where studentid = (select min(studentid) from student)

delete from student where studentid = (select studentid from student where studentid = 3)

##### we can use insert command also sub quries either we need to insert into new table or we have to have space in that column to insert #####

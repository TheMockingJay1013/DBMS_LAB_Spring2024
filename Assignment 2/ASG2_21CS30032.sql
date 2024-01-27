CREATE table college(
c_id SERIAL PRIMARY KEY,
name VARCHAR(50),
location VARCHAR(50)
);

INSERT INTO college(name,location) VALUES('IIT Kharagpur','Kharagpur');
INSERT INTO college(name,location) VALUES('IIT Bombay','Mumbai');
INSERT INTO college(name,location) VALUES('IIT Delhi','Delhi');
INSERT INTO college(name,location) VALUES('IIT Kanpur','Kanpur');
INSERT INTO college(name,location) VALUES('IIT Madras','Chennai');
INSERT INTO college(name,location) VALUES('IIT Guwahati','Guwahati');

CREATE table student(
roll VARCHAR(50) PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50)
);

INSERT INTO student(roll,name,department) VALUES('21CS10001','Abhiram','CSE');
INSERT INTO student(roll,name,department) VALUES('21CS10002','Abhishek','Mathematics');
INSERT INTO student(roll,name,department) VALUES('21CS10003','Rahul','Mechanical');
INSERT INTO student(roll,name,department) VALUES('21CS10004','Tony','Electrical');
INSERT INTO student(roll,name,department) VALUES('21CS10005','Steve','Civil');
INSERT INTO student(roll,name,department) VALUES('21CS10006','Bruce','CSE');
INSERT INTO student(roll,name,department) VALUES('21CS10007','Natasha','CSE');
INSERT INTO student(roll,name,department) VALUES('21CS10008','Clint','Mathematics');
INSERT INTO student(roll,name,department) VALUES('21CS10009','Thor','Mechanical');
INSERT INTO student(roll,name,department) VALUES('21CS10010','Loki','Electrical');
INSERT INTO student(roll,name,department) VALUES('21CS10011','Peter','Civil');
INSERT INTO student(roll,name,department) VALUES('21CS10012','Wanda','CSE');
INSERT INTO student(roll,name,department) VALUES('21CS10013','Vision','CSE');
INSERT INTO student(roll,name,department) VALUES('21CS10014','Sam','Mathematics');
INSERT INTO student(roll,name,department) VALUES('21CS10015','Bucky','Mechanical');
INSERT INTO student(roll,name,department) VALUES('21CS10016','Scott','Electrical');
INSERT INTO student(roll,name,department) VALUES('21CS10017','Stephen','Civil');
INSERT INTO student(roll,name,department) VALUES('21CS10018','TChalla','CSE');
INSERT INTO student(roll,name,department) VALUES('21CS10019','Gamora','CSE');
INSERT INTO student(roll,name,department) VALUES('21CS10020','Groot','Mathematics');
INSERT INTO student(roll,name,department) VALUES('21CS10021','Rocket','Mechanical');
INSERT INTO student(roll,name,department) VALUES('21CS10022','Drax','Electrical');
INSERT INTO student(roll,name,department) VALUES('21CS10023','Mantis','Civil');
INSERT INTO student(roll,name,department) VALUES('21CS10024','Nebula','CSE');

CREATE table role(
r_id SERIAL PRIMARY KEY,
name VARCHAR(50),
description VARCHAR(255)
);

INSERT INTO role(name,description) VALUES('Secretary','Secretary work');
INSERT INTO role(name,description) VALUES('admin','Administrative work');
INSERT INTO role(name,description) VALUES('Accountant','Accounting work');
INSERT INTO role(name,description) VALUES('Accomodation','Arranging accomodation');
INSERT INTO role(name,description) VALUES('Catering','Arranging food');
INSERT INTO role(name,description) VALUES('Security','Security work');
INSERT INTO role(name,description) VALUES('Transport','Transportation work');
INSERT INTO role(name,description) VALUES('Audio/Video','Audio/Video setup');
INSERT INTO role(name,description) VALUES('Decoration','Decoration work');
INSERT INTO role(name,description) VALUES('Photography','Photography work');


CREATE table event(
e_id SERIAL PRIMARY KEY,
name VARCHAR(50),
type VARCHAR(50),
date DATE
);

INSERT INTO event(name,type,date) VALUES('Megaevent','Megaevent','2021-10-10');
INSERT INTO event(name,type,date) VALUES('Drone racing','Competition','2021-10-10');
INSERT INTO event(name,type,date) VALUES('Robo soccer','Competition','2021-10-11');
INSERT INTO event(name,type,date) VALUES('CODENITE','Competition','2021-10-12');
INSERT INTO event(name,type,date) VALUES('Talk on Mental Health','Guest Lecture','2021-10-12');
INSERT INTO event(name,type,date) VALUES('Talk on Entrepreneurship','Guest Lecture','2021-10-13');
INSERT INTO event(name,type,date) VALUES('Talk on AI','Guest Lecture','2021-10-14');
INSERT INTO event(name,type,date) VALUES('Modern Art','Exhibition','2021-10-15');
INSERT INTO event(name,type,date) VALUES('Photography','Exhibition','2021-10-16');
INSERT INTO event(name,type,date) VALUES('Painting','Exhibition','2021-10-17');
INSERT INTO event(name,type,date) VALUES('Dance','Cultural','2021-10-18');
INSERT INTO event(name,type,date) VALUES('Music','Cultural','2021-10-19');
INSERT INTO event(name,type,date) VALUES('Drama','Cultural','2021-10-20');
INSERT INTO event(name,type,date) VALUES('Fashion Show','Cultural','2021-10-21');  
INSERT INTO event(name,type,date) VALUES('Martin Garix Show','Concert','2021-10-21');  
INSERT INTO event(name,type,date) VALUES('KSHMR Show','Concert','2021-10-22');

CREATE table participant(
p_id SERIAL PRIMARY KEY,
name VARCHAR(50),
college_id INTEGER REFERENCES college(c_id)
);

INSERT INTO participant(name,college_id) VALUES('Tony Stark',1);
INSERT INTO participant(name,college_id) VALUES('Steve Rogers',2);
INSERT INTO participant(name,college_id) VALUES('Bruce Banner',3);
INSERT INTO participant(name,college_id) VALUES('Natasha Romanoff',4);
INSERT INTO participant(name,college_id) VALUES('Clint Barton',5);
INSERT INTO participant(name,college_id) VALUES('Thor Odinson',6);
INSERT INTO participant(name,college_id) VALUES('Loki Laufeyson',1);
INSERT INTO participant(name,college_id) VALUES('Peter Parker',2);
INSERT INTO participant(name,college_id) VALUES('Wanda Maximoff',3);
INSERT INTO participant(name,college_id) VALUES('Vision',4);
INSERT INTO participant(name,college_id) VALUES('Sam Wilson',5);
INSERT INTO participant(name,college_id) VALUES('Bucky Barnes',6);
INSERT INTO participant(name,college_id) VALUES('Scott Lang',1);
INSERT INTO participant(name,college_id) VALUES('Stephen Strange',2);
INSERT INTO participant(name,college_id) VALUES('TChalla',3);
INSERT INTO participant(name,college_id) VALUES('Gamora',4);
INSERT INTO participant(name,college_id) VALUES('Groot',5);
INSERT INTO participant(name,college_id) VALUES('Rocket',6);
INSERT INTO participant(name,college_id) VALUES('Drax',1);
INSERT INTO participant(name,college_id) VALUES('Mantis',2);
INSERT INTO participant(name,college_id) VALUES('Nebula',3);
INSERT INTO participant(name,college_id) VALUES('Salah',4);
INSERT INTO participant(name,college_id) VALUES('Mane',5);
INSERT INTO participant(name,college_id) VALUES('Firmino',6);
INSERT INTO participant(name,college_id) VALUES('Henderson',1);
INSERT INTO participant(name,college_id) VALUES('Van Dijk',2);
INSERT INTO participant(name,college_id) VALUES('Alisson',3);
INSERT INTO participant(name,college_id) VALUES('Fabinho',4);
INSERT INTO participant(name,college_id) VALUES('Robertson',5);
INSERT INTO participant(name,college_id) VALUES('Alexander-Arnold',2);


CREATE table volunteer(
v_id SERIAL PRIMARY KEY,
roll VARCHAR(50) REFERENCES student(roll)
);

INSERT INTO volunteer(roll) VALUES('21CS10001');
INSERT INTO volunteer(roll) VALUES('21CS10002');
INSERT INTO volunteer(roll) VALUES('21CS10003');
INSERT INTO volunteer(roll) VALUES('21CS10004');
INSERT INTO volunteer(roll) VALUES('21CS10005');
INSERT INTO volunteer(roll) VALUES('21CS10006');

CREATE table has_vol(
e_id INTEGER REFERENCES event(e_id),
v_id INTEGER REFERENCES volunteer(v_id)
);

INSERT INTO has_vol(e_id,v_id) VALUES(1,1);
INSERT INTO has_vol(e_id,v_id) VALUES(1,2);
INSERT INTO has_vol(e_id,v_id) VALUES(1,3);
INSERT INTO has_vol(e_id,v_id) VALUES(2,4);
INSERT INTO has_vol(e_id,v_id) VALUES(2,5);
INSERT INTO has_vol(e_id,v_id) VALUES(2,6);
INSERT INTO has_vol(e_id,v_id) VALUES(3,1);
INSERT INTO has_vol(e_id,v_id) VALUES(3,2);
INSERT INTO has_vol(e_id,v_id) VALUES(4,3);
INSERT INTO has_vol(e_id,v_id) VALUES(4,4);
INSERT INTO has_vol(e_id,v_id) VALUES(4,5);



CREATE table has_part(
e_id INTEGER REFERENCES event(e_id),
p_id INTEGER REFERENCES participant(p_id)
);

INSERT INTO has_part(e_id,p_id) VALUES(1,1);
INSERT INTO has_part(e_id,p_id) VALUES(2,2);
INSERT INTO has_part(e_id,p_id) VALUES(3,3);
INSERT INTO has_part(e_id,p_id) VALUES(4,4);
INSERT INTO has_part(e_id,p_id) VALUES(5,5);
INSERT INTO has_part(e_id,p_id) VALUES(6,6);
INSERT INTO has_part(e_id,p_id) VALUES(7,7);
INSERT INTO has_part(e_id,p_id) VALUES(8,8);
INSERT INTO has_part(e_id,p_id) VALUES(9,9);
INSERT INTO has_part(e_id,p_id) VALUES(10,10);
INSERT INTO has_part(e_id,p_id) VALUES(11,11);
INSERT INTO has_part(e_id,p_id) VALUES(12,12);
INSERT INTO has_part(e_id,p_id) VALUES(13,13);
INSERT INTO has_part(e_id,p_id) VALUES(14,14);
INSERT INTO has_part(e_id,p_id) VALUES(1,15);
INSERT INTO has_part(e_id,p_id) VALUES(2,16);
INSERT INTO has_part(e_id,p_id) VALUES(3,17);
INSERT INTO has_part(e_id,p_id) VALUES(4,18);
INSERT INTO has_part(e_id,p_id) VALUES(5,19);
INSERT INTO has_part(e_id,p_id) VALUES(6,20);
INSERT INTO has_part(e_id,p_id) VALUES(1,21);
INSERT INTO has_part(e_id,p_id) VALUES(2,22);
INSERT INTO has_part(e_id,p_id) VALUES(3,23);
INSERT INTO has_part(e_id,p_id) VALUES(1,24);
INSERT INTO has_part(e_id,p_id) VALUES(4,8);
INSERT INTO has_part(e_id,p_id) VALUES(1,8);



CREATE table has_role(
s_id VARCHAR REFERENCES student(roll),
r_id INTEGER REFERENCES role(r_id)
);

INSERT INTO has_role(s_id,r_id) VALUES('21CS10001',1);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10002',2);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10003',3);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10004',4);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10005',5);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10006',6);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10007',7);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10008',8);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10009',9);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10010',10);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10011',11);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10012',12);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10013',13);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10014',14);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10015',15);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10016',16);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10017',1);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10018',2);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10019',3);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10020',4);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10021',5);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10022',6);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10023',7);
INSERT INTO has_role(s_id,r_id) VALUES('21CS10024',8);




CREATE table manages(
s_id VARCHAR REFERENCES student(roll),
e_id INTEGER REFERENCES event(e_id)
);

--assign random students to manage events
INSERT INTO manages(s_id,e_id) VALUES('21CS10001',1);
INSERT INTO manages(s_id,e_id) VALUES('21CS10021',2);
INSERT INTO manages(s_id,e_id) VALUES('21CS10003',3);
INSERT INTO manages(s_id,e_id) VALUES('21CS10020',4);
INSERT INTO manages(s_id,e_id) VALUES('21CS10005',5);
INSERT INTO manages(s_id,e_id) VALUES('21CS10019',6);
INSERT INTO manages(s_id,e_id) VALUES('21CS10007',7);
INSERT INTO manages(s_id,e_id) VALUES('21CS10017',8);
INSERT INTO manages(s_id,e_id) VALUES('21CS10009',9);
INSERT INTO manages(s_id,e_id) VALUES('21CS10015',10);
INSERT INTO manages(s_id,e_id) VALUES('21CS10011',11);
INSERT INTO manages(s_id,e_id) VALUES('21CS10013',12);
INSERT INTO manages(s_id,e_id) VALUES('21CS10023',13);
INSERT INTO manages(s_id,e_id) VALUES('21CS10024',14);
INSERT INTO manages(s_id,e_id) VALUES('21CS10016',15);
INSERT INTO manages(s_id,e_id) VALUES('21CS10018',16);
INSERT INTO manages(s_id,e_id) VALUES('21CS10022',1);
INSERT INTO manages(s_id,e_id) VALUES('21CS10002',2);
INSERT INTO manages(s_id,e_id) VALUES('21CS10004',3);
INSERT INTO manages(s_id,e_id) VALUES('21CS10006',4);
INSERT INTO manages(s_id,e_id) VALUES('21CS10008',5);
INSERT INTO manages(s_id,e_id) VALUES('21CS10010',6);
INSERT INTO manages(s_id,e_id) VALUES('21CS10012',7);
INSERT INTO manages(s_id,e_id) VALUES('21CS10014',8);





-- Queries
-- a)
SELECT student.roll, student.name from student,manages,event where student.roll=manages.s_id and manages.e_id=event.e_id and event.name='Megaevent';

-- b)
SELECT student.roll,student.name from student,manages,event,has_role,role where student.roll = manages.s_id and manages.e_id=event.e_id and event.name='Megaevent' and student.roll = has_role.s_id and has_role.r_id=role.r_id and role.name='Secretary';

-- c)
SELECT name from participant as T where T.p_id in
(select p_id from has_part where e_id in 
(select e_id from event where name='Megaevent')) and T.college_id in
(select c_id from college where name='IIT Bombay');

-- d)
select college.name from college
join participant on college.c_id = participant.college_id
join has_part on participant.p_id = has_part.p_id
join event on has_part.e_id = event.e_id
where event.name = 'Megaevent'
GROUP BY college.name;

-- e)
select event.name from event,manages,student,has_role,role where event.e_id = manages.e_id and manages.s_id = student.roll and student.roll=has_role.s_id and has_role.r_id = role.r_id and role.name ='Secretary' ;

-- f)
select student.name from student,volunteer,has_vol,event where student.roll = volunteer.roll and volunteer.v_id = has_vol.v_id and has_vol.e_id = event.e_id and event.name ='Megaevent' and student.department ='CSE' ;

-- g)
select event.name from event,volunteer,has_vol,student where event.e_id = has_vol.e_id and has_vol.v_id = volunteer.v_id and volunteer.roll = student.roll and student.department ='CSE' ;

-- h)
select college.name , count(participant.p_id) from 
college
join participant on college.c_id = participant.college_id
join has_part on participant.p_id = has_part.p_id
join event on has_part.e_id = event.e_id
where event.name = 'Megaevent'
GROUP BY college.name
ORDER BY count(participant.p_id) DESC LIMIT 1;

-- i) 
select college.name
from participant 
JOIN college on participant.college_id = college.c_id
GROUP BY college.name
ORDER BY count(participant.name) DESC LIMIT 1;

-- j)
select student.department from student
join volunteer on student.roll = volunteer.roll
join manages on student.roll = manages.s_id
where manages.e_id in 
(
select event.e_id from event
join has_part on event.e_id = has_part.e_id
join participant on has_part.p_id = participant.p_id
join college on participant.college_id = college.c_id 
where college.name = 'IIT Bombay'
)
GROUP BY student.department
ORDER BY count(manages.e_id) DESC LIMIT 1;

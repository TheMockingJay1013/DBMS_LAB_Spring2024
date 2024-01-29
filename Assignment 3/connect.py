import mysql.connector 

# Connect to the database
passcode = input("Enter the password for the database: ")
connector = mysql.connector.connect(user='root',password = passcode,host='localhost',database='DBMS')
cursor = connector.cursor()

while(True) : 
    print("1.Test a Query\n2.Exit\n") 
    choice = int(input("Enter your choice: "))
    if(choice == 1) :
        query = int(input("Enter the query number : "))
        spl=""
        if(query == 11):
            spl = input("Enter the name of the event :")
        l = [
            "SELECT student.roll ,student.name from student join manages on student.roll = manages.s_id join event on manages.e_id = event.e_id where event.name = 'Megaevent';",
            "SELECT student.roll,student.name from student join manages on student.roll = manages.s_id join event on manages.e_id = event.e_id join has_role on student.roll = has_role.s_id join role on has_role.r_id = role.r_id where event.name = 'Megaevent' and role.name = 'Secretary';",
            "SELECT name from participant as T where T.p_id in (select p_id from has_part where e_id in  (select e_id from event where name='Megaevent')) and T.college_id in (select c_id from college where name='IIT Bombay');",
            "select college.name from college join participant on college.c_id = participant.college_id join has_part on participant.p_id = has_part.p_id join event on has_part.e_id = event.e_id where event.name = 'Megaevent' GROUP BY college.name;",
            "select event.name from event,manages,student,has_role,role where event.e_id = manages.e_id and manages.s_id = student.roll and student.roll=has_role.s_id and has_role.r_id = role.r_id and role.name ='Secretary' ;",
            "select student.name from student,volunteer,has_vol,event where student.roll = volunteer.roll and volunteer.v_id = has_vol.v_id and has_vol.e_id = event.e_id and event.name ='Megaevent' and student.department ='CSE' ;",
            "select event.name from event,volunteer,has_vol,student where event.e_id = has_vol.e_id and has_vol.v_id = volunteer.v_id and volunteer.roll = student.roll and student.department ='CSE' ;",
            "select college.name , count(participant.p_id) from college join participant on college.c_id = participant.college_id join has_part on participant.p_id = has_part.p_id join event on has_part.e_id = event.e_id where event.name = 'Megaevent' GROUP BY college.name ORDER BY count(participant.p_id) DESC LIMIT 1;",
            "select college.name from participant  JOIN college on participant.college_id = college.c_id GROUP BY college.name ORDER BY count(participant.name) DESC LIMIT 1;",
            "select student.department from student join volunteer on student.roll = volunteer.roll join manages on student.roll = manages.s_id where manages.e_id in  ( select event.e_id from event join has_part on event.e_id = has_part.e_id join participant on has_part.p_id = participant.p_id join college on participant.college_id = college.c_id  where college.name = 'IIT Bombay' ) GROUP BY student.department ORDER BY count(manages.e_id) DESC LIMIT 1;",
            "SELECT student.roll ,student.name from student join manages on student.roll = manages.s_id join event on manages.e_id = event.e_id where event.name = '{}';"
            ]
        
        cursor.execute(l[query-1].format(spl))
        x = cursor.fetchall()
        for i in x :
            print(i)
        print()
    else :
        break
cursor.close()
        
 
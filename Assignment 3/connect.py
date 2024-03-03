# Name : Navaneeth Shaji
# Roll No: 21CS30032
# Assignment 3

import mysql.connector 
import tabulate


try:
    # Connect to the database
    passcode = input("Enter the password for the database: ")
    connector = mysql.connector.connect(user='root',password = passcode,host='localhost',database='DBMS')
    print("Connection successful")
except:
    # If the connection fails
    print("Connection failed")
    exit()

# creating a cursor object
cursor = connector.cursor()

while(True) : 
    # Display the menu
    print("1.Test a Query\n2.Exit\n") 
    
    # Take the user's choice
    choice = int(input("Enter your choice: "))
    
    # If the choice is invalid, ask the user to enter the choice again
    if(choice >2 or choice < 1) :
        print("Invalid choice\n")
        continue
    
    # If the user wants to test a query
    if(choice == 1) :
        # ask the user to enter the query number
        query = int(input("Enter the query number : "))
        spl=""
        
        # If the query number is invalid, ask the user to enter the query number again
        if(query>11 or query<1) :
            print("Invalid query number\n")
            continue
        
        # If the query number is 11, ask the user to enter the name of the event
        if(query == 11):
            spl = input("Enter the name of the event :")
            
        # the following queries are stored in a list l
        l = [
            "SELECT student.roll ,student.name from student join manages on student.roll = manages.s_id join event on manages.e_id = event.e_id where event.name = 'Megaevent';",
            "SELECT student.roll,student.name from student join manages on student.roll = manages.s_id join event on manages.e_id = event.e_id join has_role on student.roll = has_role.s_id join role on has_role.r_id = role.r_id where event.name = 'Megaevent' and role.name = 'Secretary';",
            "SELECT name from participant as T where T.p_id in (select p_id from has_part where e_id in  (select e_id from event where name='Megaevent')) and T.college_id in (select c_id from college where name='IIT Bombay');",
            "select college.name from college join participant on college.c_id = participant.college_id join has_part on participant.p_id = has_part.p_id join event on has_part.e_id = event.e_id where event.name = 'Megaevent' GROUP BY college.name;",
            "select event.name from event,manages,student,has_role,role where event.e_id = manages.e_id and manages.s_id = student.roll and student.roll=has_role.s_id and has_role.r_id = role.r_id and role.name ='Secretary' ;",
            "select student.name from student,volunteer,has_vol,event where student.roll = volunteer.roll and volunteer.v_id = has_vol.v_id and has_vol.e_id = event.e_id and event.name ='Megaevent' and student.department ='CSE' ;",
            "select event.name from event,volunteer,has_vol,student where event.e_id = has_vol.e_id and has_vol.v_id = volunteer.v_id and volunteer.roll = student.roll and student.department ='CSE' ;",
            "select college.name,count(participant.p_id) from college join participant on college.c_id = participant.college_id join has_part on participant.p_id = has_part.p_id join event on has_part.e_id = event.e_id where event.name = 'Megaevent' GROUP BY college.name ORDER BY count(participant.p_id) DESC LIMIT 1;",
            "select college.name from participant JOIN college on participant.college_id = college.c_id GROUP BY college.name ORDER BY count(participant.name) DESC LIMIT 1;",
            "select student.department from student join volunteer on student.roll = volunteer.roll join manages on student.roll = manages.s_id where manages.e_id in  ( select event.e_id from event join has_part on event.e_id = has_part.e_id join participant on has_part.p_id = participant.p_id join college on participant.college_id = college.c_id  where college.name = 'IIT Bombay' ) GROUP BY student.department ORDER BY count(manages.e_id) DESC LIMIT 1;",
            "SELECT student.roll ,student.name from student join manages on student.roll = manages.s_id join event on manages.e_id = event.e_id where event.name = '{}';"
            ]
        
        try:
            # execute the query
            cursor.execute(l[query-1].format(spl))
            print("\nQuery : ")
            print(l[query-1].format(spl))
            print()
        except:
            # if the query execution fails, print the error message
            print("Error in executing the query")
            continue
        
        
        # retrieve the data from the cursor 
        x = cursor.fetchall()
        
        if(len(x) == 0) :
            print("No data found\n\n")
            continue
        
        
        # table headers are obtained from the cursor description
        headers = []
        for i in cursor.description:
            headers.append(i[0])
        
        # printing the data in tabular format using tabulate library 
        print(tabulate.tabulate(x, headers, tablefmt="grid"))
        print("\n\n")
        
    else :
        # if the user wants to exit the program
        break
    
# close the cursor and the connection
cursor.close()
connector.close()
        
 
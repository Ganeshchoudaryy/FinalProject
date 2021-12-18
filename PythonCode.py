import mysql.connector

# function to write database data in file
def write_to_file(table ,s ):
   x = open("{}.txt".formate(table), "w")
   x.write(s + "\n")
   x.close()


# database connection to connect to that databasee
mydb = mysql.connector.connect(host = "localhost",user = 'root',password ='root',database = "hostel",auth_plugin = 'mysql_native_password')

# function to print data 
def print_data(db_connection):
   db_connection.execute("SHOW TABLES")
   myresult = db_connection.fetchall()
   for table in myresult:
       # Query to get all data from the data base
       db_connection.execute("SELECT * FROM {}".format(table))
       res = db_connection.fetchall()
       data = []
       for s in res:
           data.append(s)
   write_to_file(table , s)

print_data(mydb.cursor())


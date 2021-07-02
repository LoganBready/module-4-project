log_file = open("um-server-01.txt")
#line 1 is accessing the um-server-01.txt file so we can use it here.  You are then assinging it to a variable. log_file

def sales_reports(log_file):
    #def is to make a function in python.
    for line in log_file:
        #inside of the function we are doing a for in loop.
        line = line.rstrip()
        #rstrip() removes any trailing characters.
        day = line[0:3]
        #i believe the : is a split or indented block
        if day == "Mon":
            #if the day is equal to mon(monday) it will print the line we specified above.
            print(line)


sales_reports(log_file)
#running this will only print the lines of text from the um-server-01.txt file that have the 'mon' value!
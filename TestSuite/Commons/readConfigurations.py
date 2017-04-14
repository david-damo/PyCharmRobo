import os

path = "C:/Sanjeev/MobileAutomation/TestSuite/Resources/"

file_name = os.path.join(path, "myVariables.py")
my_file = open(file_name)
my_file_contents = my_file.read()
#print(my_file_contents.__getitem__("server"))

myvars = {}
with open(file_name) as myfile:
    for line in myfile:
        name, var = line.partition("=")[::2]
        myvars[name.strip()] = var
        #print(my_file_contents.__getattribute__(${SERVER}))
        #print(myvars["server"])
print(myvars["server"])
print(myvars["browser"])
print(myvars["delay"])



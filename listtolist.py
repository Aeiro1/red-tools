# used to generate list for user.ps1 script, in format to be copy pasted into the $animals variable
# replace animals.txt with list to generate, 1 entry per line

file = open("animals.txt")

formlist = open("userlist.txt", "w")

for line in file:
    line = line.strip()
    formlist.write('"' + line + '", ')

file.close()
formlist.close()
import re

fh = open("mbox-short.txt")

for line in fh:
    line = line.rstrip()
    if re.search('^From (\S+@\S+)', line):
        #x = re.findall('@([^ ]*)', line)
        x = re.findall('@(\S+)', line)
        print(x)

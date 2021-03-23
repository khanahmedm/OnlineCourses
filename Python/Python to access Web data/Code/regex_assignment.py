import re

fh = open("regex_sum_60370.txt")

numlist = list()
for line in fh:
    line = line.strip()
    stuff = re.findall('[0-9]+', line)
    #print(stuff)
    #print('Length:',len(stuff))
    if len(stuff) == 0 : continue
    #print(stuff)
    #print('Length:',len(stuff))
    for item in stuff:
        num = int(item)
        numlist.append(num)
print(sum(numlist))

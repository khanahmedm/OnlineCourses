fh = open("mbox-short.txt")

for line in fh:
    line = line.rstrip()
    #if line.find('From:') >= 0:
    if line.startswith('From:'):
        print(line)

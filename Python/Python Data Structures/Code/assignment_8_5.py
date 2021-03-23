fh = open("mbox-short.txt")
count = 0
for line in fh:
    line = line.strip()
    if not line.startswith('From '): continue
    words = line.split()
    print(words[1])
    count = count + 1
print('There were',count,'lines in the file with From as the first word')

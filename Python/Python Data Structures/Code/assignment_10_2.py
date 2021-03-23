fh = open("mbox-short.txt")
counts = dict()
for line in fh:
    line = line.strip()
    if not line.startswith('From '): continue
    words = line.split()
    words = words[5]
    hours = words.split(':')
    hours = hours[0]
    #print(hours)
    #for hour in hours:
    #    print(word)
    counts[hours] = counts.get(hours,0) + 1

for k,v in sorted(counts.items()):
    print(k,v)

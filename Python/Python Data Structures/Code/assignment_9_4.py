fh = open("mbox-short.txt")
counts = dict()
for line in fh:
    line = line.strip()
    if not line.startswith('From '): continue
    words = line.split()
    words = words[1]
    #print(words)
    #for word in words:
    #    print(word)
    counts[words] = counts.get(words,0) + 1

#print(counts)

bigcount = None
bigword = None
for word,count in counts.items():
    if bigcount is None or count > bigcount:
        bigword = word
        bigcount = count

print(bigword, bigcount)

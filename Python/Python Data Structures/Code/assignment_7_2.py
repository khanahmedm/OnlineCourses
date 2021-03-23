fname = input("Enter file name: ")
fh = open(fname)
total = 0
count = 0
for line in fh:
    if not line.startswith("X-DSPAM-Confidence:") : continue
    pos1 = line.find(' ')
    num = float(line[pos1:].strip())
    count = count + 1
    total = total + num
avg = total/count
print("Average spam confidence:",avg)

score = input("Enter score:")
try:
    s = float(score)
except:
    print("Error: invalid score")
    quit()

if s >= 0.0 and s <= 1.0:
    if s >= 0.9:
        print("A")
    elif s >= 0.8:
        print("B")
    elif s >= 0.7:
        print("C")
    elif s >= 0.6:
        print("D")
    if s < 0.6:
        print("F")
else:
    print("Error: score out of range")

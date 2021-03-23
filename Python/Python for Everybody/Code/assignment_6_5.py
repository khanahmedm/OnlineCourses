text = "X-DSPAM-Confidence:    0.8475"
pos1 = text.find(' ')
num = float(text[pos1:30].strip())
print(num)

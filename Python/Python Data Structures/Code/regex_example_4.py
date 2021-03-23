import re

x = 'From: Using the : character'
y = re.findall('^F.+:', x)
print(y)
z = re.findall('^F.+?:', x)
print(z)
a = re.findall('\sU.+:', x)
print(a)

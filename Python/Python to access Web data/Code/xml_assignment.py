import urllib.request, urllib.parse, urllib.error
import xml.etree.ElementTree as ET

address = input('Enter location: ')

url = address
print('Retrieving', url)
uh = urllib.request.urlopen(url)
data = uh.read()
print('Retrieved', len(data), 'characters')
#print(data.decode())
tree = ET.fromstring(data)

results = tree.findall('.//count')
print('Count:', len(results))

sum = 0
lst = tree.findall('comments/comment')
for item in lst:
    #print('Name:', item.find('name').text)
    #print('count:', item.find('count').text)
    sum = sum + int(item.find('count').text)
print(sum)

import urllib.request, urllib.parse, urllib.error
#import xml.etree.ElementTree as ET
import json

#address = input('Enter location: ')
address = 'http://py4e-data.dr-chuck.net/comments_42.json'

url = address
print('Retrieving', url)
uh = urllib.request.urlopen(url)
#data = uh.read()
data = uh.read().decode()
print('Retrieved', len(data), 'characters')
#print(data.decode())
#tree = ET.fromstring(data)

try:
    js = json.loads(data)
except:
    js = None

#results = tree.findall('.//count')
#print('Count:', len(results))
print('User count:', len(js['comments']))

#print(data)
#print(json.dumps(js, indent=4))

sum = 0
#print('Name', js["comments"][0]["name"])
for item in js['comments']:
    #print('Name', item['name'])
    #print('Count', item['count'])
    sum = sum + int(item['count'])

print('Sum', sum)
#sum = 0
#lst = tree.findall('comments/comment')
#for item in lst:
    #print('Name:', item.find('name').text)
    #print('count:', item.find('count').text)
#    sum = sum + int(item.find('count').text)
#print(sum)

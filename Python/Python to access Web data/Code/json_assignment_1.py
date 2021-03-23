import urllib.request, urllib.parse, urllib.error
import json

address = input('Enter location: ')

url = address
print('Retrieving', url)
uh = urllib.request.urlopen(url)
data = uh.read().decode()
print('Retrieved', len(data), 'characters')

try:
    js = json.loads(data)
except:
    js = None

print('User count:', len(js['comments']))

sum = 0
#print('Name', js["comments"][0]["name"])
for item in js['comments']:
    #print('Name', item['name'])
    #print('Count', item['count'])
    sum = sum + int(item['count'])

print('Sum', sum)

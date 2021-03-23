# To run this, you can install BeautifulSoup
# https://pypi.python.org/pypi/beautifulsoup4

# Or download the file
# http://www.py4e.com/code3/bs4.zip
# and unzip it in the same directory as this file

import urllib.request, urllib.parse, urllib.error
from bs4 import BeautifulSoup
import ssl

# Ignore SSL certificate errors
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

url = input('Enter - ')
count = input('Enter count - ')
vcount = int(count)
position = input('Enter position - ')
vposition = int(position)
#url = 'http://py4e-data.dr-chuck.net/known_by_Fikret.html'
html = urllib.request.urlopen(url, context=ctx).read()
soup = BeautifulSoup(html, 'html.parser')

# Retrieve all of the anchor tags

for i in range(1,vcount+1):
    xcount = 0
    tags = soup('a')
    print ('Retrieving', url)
    for tag in tags:
        #print(tag.get('href', None))
        url = tag.get('href', None)
        xcount = xcount + 1
        if xcount == vposition: break
    html = urllib.request.urlopen(url, context=ctx).read()
    soup = BeautifulSoup(html, 'html.parser')
print ('Retrieving', url)

import urllib.request
get_url = urllib.request.urlopen('http://dev.virtualearth.net/REST/v1/Locations?countryRegion=Australia&adminDistrict=QLD&locality=Runcorn&postalCode=4113&addressLine=Beechel&key=AklX82YXHHg_1qruaAqch-j7YEWp4Tm8xeHTYyMAtzrG5E7g_yBKhaZ9ZP8zAQ2I')
url_filter = (get_url.read())
url_filterDecode = url_filter.decode('utf-8')
import re
crossPoint = print(url_filterDecode[1024:1048])
import webbrowser 
crossPoint1 =  http://dev.virtualearth.net/REST/v1/Imagery/Map/Road/('crossPoint')/15?mapSize=500,500&key=AklX82YXHHg_1qruaAqch-j7YEWp4Tm8xeHTYyMAtzrG5E7g_yBKhaZ9ZP8zAQ2I
webbrowser.open('crossPoint1')


Import nmap
Ps = nmap.PortScanner()
Results = ps.scan(‘localhost’, ‘21’)
FTPResult = Results[‘Scan’][127.0.0.1’][‘TCP’][21][‘VERSION’][‘STATUS’]
Print(FTPResult)
FTP_Detail = open("FTPout.txt","a")
FTP_Detail.write(FTPResults)

Import nmap
Ps = nmap.PortScanner()
Results = ps.scan(‘localhost’, ‘80’, ‘443’)
httpResult = Results[‘Scan’][127.0.0.1’][‘TCP’][80][443][‘VERSION’][‘STATUS’]
Print(httpResult)

HTTP_Detail = open("httpOut.txt","a")
Writing to httpOut
HTTP_Detail = open("httpOut.txt","a")
HTTP_Detail.write(HTTPResults)
import filecmp
  
f1 = "/Home/Vagrant/httpOut.txt"
f2 = "/Home/Vagrant/httpOutbase.txt"
  
httpcomp = filecmp.cmp(f1, f2)
print(result)
httpcomp = filecmp.cmp(f1, f2, shallow=False)
print(result)

-sV  should say what version so assume [version] will give this.

import filecmp
  
f1 = "/Home/Vagrant/FTPout.txt"
f2 = "/Home/Vagrant/FTPoutbase.txt"
ftpcomp = filecmp.cmp(f1, f2, shallow=False)
print(result)

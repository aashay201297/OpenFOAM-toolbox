with open("finals") as f:
    content = f.readlines()
content = [x.strip() for x in content]
# print (content)
i=0
l1 = ""
for l in content:
	import os
	l = "../" + l
	l1 = l1 + " " + l
	# com = "cp " + " -v " + l + " " + " /home/itsme/gsoc/OpenFOAM-toolbox/source "
	# l = l.replace(' ', '')[:-1]
# print l1
com = "g++ -std=c++11 -fPIC -c -I/usr/local/include/scilab -I/home/itsme/gsoc/OpenFOAM-toolbox/include " + l1 
# print com
# i+=1
os.system(com)

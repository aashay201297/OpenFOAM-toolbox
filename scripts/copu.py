with open("source2.txt") as f:
    content = f.readlines()
content = [x.strip() for x in content]
# print (content)
i=0
for l in content:
	import os
	com = "cp " + " -v " + l + " " + " /home/itsme/gsoc/OpenFOAM-toolbox/source "
	print com
	i+=1
	os.system(com)
print "i=",i

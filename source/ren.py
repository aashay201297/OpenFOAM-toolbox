with open("source.txt") as f:
    content = f.readlines()
content = [x.strip() for x in content]
# print (content)
i=0
for l in content:
	import os
	# com = "cp " + " -v " + l + " " + " /home/itsme/gsoc/OpenFOAM-toolbox/source "
	a = l
	l = l.replace(' ', '')[:-1]
	com = "mv " + a +  " " + l + "cpp"
	print com
	i+=1
	os.system(com)
print "i=",i

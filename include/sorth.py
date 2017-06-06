with open("out") as f:
	content = f.readlines()
content = [x.strip() for x in content]

# import re
# allfile =[] 
# for name in content:
# 	pattern = re.compile("\".*\.H\"")

# 	# for i, line in enumerate(open(name)):
# 	# 	print "asd"
# 	# 	for match in re.finditer(pattern, line):
# 	# 		print 'Found on line %s: %s' % (i+1, match.groups())
# 	with open(name) as f1:
# 		for line in f1:
# 			# print line 
# 			result = pattern.findall(line)
# 			# print result
# 			allfile.append(result)

a = open("sorth.txt","w")
content.sort()
for item in content:
	print>>a, item

# print allfile
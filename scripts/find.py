with open("headers.txt") as f:
    content = f.readlines()
content = [x.strip() for x in content]

# import re
# allfile =[]
# for name in content:
# 	pattern = re.compile("\".*\.H\"")

# for i, line in enumerate(open(name)):
# 	print "asd"
# 	for match in re.finditer(pattern, line):
# 		print 'Found on line %s: %s' % (i+1, match.groups())
import subprocess
import os
import re
final = []
cmd = ['sudo', 'find', '/home/itsme/OpenFOAM/OpenFOAM-dev', '-print']
output = subprocess.Popen(cmd, stdout=subprocess.PIPE).communicate()[0]
# result = pattern.findall(line)
out = []
buff = []
for c in output:
    if c == '\n':
        out.append(''.join(buff))
        buff = []
    else:
        buff.append(c)
else:
    if buff:
        out.append(''.join(buff))
for line in content:
    l = '/' + line
    x = filter(lambda x: line in x, out)
    final.append(x[1])
# content = list(set(content))
a = open("source1.txt", "w")
# content.sort()
for item in content:
    print>>a, item

# print allfile

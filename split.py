import sys

if len(sys.argv)!=3:
  print "usage {0} <file> <nodes>"
  print "splits <file> into <nodes> subfiles"
  sys.exit(0)

inFile=sys.argv[1]
nodes=int(sys.argv[2])
txt = open(inFile, 'r')
passwds = txt.readlines()
txt.close()
start = 0
incr = len(passwds)/nodes
end = incr
for i in range(nodes):
  out = open("node_pass"+str(i)+".txt", 'w')
  if i == nodes - 1:
    out.write(''.join(passwds[start:]))
  else:
    out.write(''.join(passwds[start:end]))
  out.close()
  start+=incr
  end+=incr
  

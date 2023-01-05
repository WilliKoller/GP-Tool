import sys
file1 = open('pythonArgs.txt', 'r')
path = file1.readlines()
workingDirectory = path[1]
cubitPath = path[2].replace("\\", "\\\\").replace("\n", "")
mpiexecPath = path[3].replace("\\", "\\\\").replace("\n", "")
sys.path.append(cubitPath)
f = open('testCubitResult.txt', 'w')
f.write('not working')
f.close()

f = open('testCubitResult.txt', 'w')
try:
    import cubit
    cubit.init(["cubit","-nojournal"])
    cubit.cmd("sculpt parallel path mpiexec \"" + mpiexecPath + "\"")
    cubit.cmd("brick x 10 y 10 z 10")
    cubit.cmd("sculpt parallel volume all size 0.5")
    cubit.cmd("export abaqus 'testSculptMesh.inp' block 1 overwrite")
    
except:
   print('Cubit not installed or linked correctly with python')
   f.write('not working')
else:
   print('Cubit working correctly')
   f.write('working')
finally:
   f.close()

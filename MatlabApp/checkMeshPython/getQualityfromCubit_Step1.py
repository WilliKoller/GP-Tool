import sys
import time
file1 = open('pythonArgs.txt', 'r')
path = file1.readlines()
workingDirectory = path[1]
cubitPath = path[2].replace("\\", "\\\\")
path = path[0].replace("\n", "")
sys.path.append(cubitPath)
import cubit
cubit.init(["cubit","-nojournal", "-workingdir", workingDirectory, '-noecho', '-information', 'off'])

file1 = open(path + 'elementList.txt', 'r')
elementIDs = file1.readlines()
cubit.cmd("import abaqus mesh geometry \"" + path + "fullMesh_v0.inp\" feature_angle 135.00")

start = time.time()

# Get all the (Cubit) Hex Ids in a volume
hexID = cubit.get_volume_hexes(1)

# Initialize list to store element information
abaID = []
quality = []
for i in range(0,len(hexID)):
   # Query the current hex element's element ID
   abaID.append(cubit.get_global_element_id("hex", hexID[i]))
   # Query the current hex element's quality
   quality.append(cubit.get_quality_value("hex", hexID[i], "scaled jacobian"))


f = open(path + 'negScaledJacobianElements.txt', 'w')
for i in range(0,len(hexID)):
    if quality[i] < 0:
        f.write(str(abaID[i]) + '\n')

f.close()
end = time.time()
print('elapsed time = %2f s' % (end-start))
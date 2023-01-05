import subprocess
import sys
import pkg_resources
import getpass as gt

print(gt.getuser())

Packages = ["pymeshlab"]

installed_packages = pkg_resources.working_set
installed_packages_list = sorted(["%s==%s" % (i.key, i.version) for i in installed_packages])

for pkg in Packages:
   if any(pkg in s for s in installed_packages_list):
      print(pkg + " already installed")
   else:
      subprocess.check_call([sys.executable, "-m", "pip", "install", pkg])

f = open('testPyMeshLabResult.txt', 'w')
try:
    import pymeshlab
except:
   print('PyMeshLab not installed or linked correctly with python')
   f.write('not working')
   f.write
else:
   print('PyMeshLab working correctly')
   f.write('working')
finally:
    f.close()
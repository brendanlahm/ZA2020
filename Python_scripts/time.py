################################
# Change working directory
import os
#os.chdir("C:/Users/bml99/PycharmProjects/ZA2020")
cwd = os.getcwd()

# Find a file ID
from os import popen
file = r"C:/Users/bml99/Documents/Quast/Za100/Za100_tig6.fa"
output = popen(fr"fsutil file queryfileid {file}").read()
print(output)

file2 = r"C:/Users/bml99/Documents/Quast/Za100/Za100_canu.unitigs.fasta.fai"
output2 = popen(fr"fsutil file queryfileid {file2}").read()
print(output2)

# Get current time
import datetime
now = datetime.datetime.now()
print(now)

### Attempting to find time of last edit of a file
import os, time
file = os.stat("C:/Users/bml99/Documents/Quast/Za100/Za100_tig6.fa")
print(file.st_mtime)





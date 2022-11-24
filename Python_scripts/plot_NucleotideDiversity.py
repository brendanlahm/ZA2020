################################### Plot Nucleotide Diversity across the Genome
import pandas as pd
df = pd.read_table(r"C:/Users/bml99/Documents/R/2020/pi/SNPs4_pi.windowed.pi")
x = df["BIN_START"]
y = df["PI"]

import numpy
x = numpy.asarray(x)
y = numpy.asarray(y)

import matplotlib.pyplot as plt
plt.scatter(x,y)
plt.title("Nucleotide Diversity for 36 Isolates", loc = 'left')
plt.xlabel("Genome Position")
plt.ylabel("Pi")
plt.show()


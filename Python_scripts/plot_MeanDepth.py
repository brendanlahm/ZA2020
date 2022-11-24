######################################## Plot Mean Depth of All Samples
import pandas as pd
df = pd.read_csv(r"C:/Users/bml99/Documents/R/2020/depth_means.csv")
means = df["Depth Mean"]

import numpy
means = numpy.asarray(means)
print(means)

import matplotlib.pyplot as plt
plt.hist(means, 9)
plt.title("Depth of Coverage Distribution in 80 Samples", loc = 'left')
plt.xlabel("Mean Depth")
plt.ylabel("Sample #")
plt.show()


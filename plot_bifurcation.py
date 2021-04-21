#!/usr/bin/env python3
import numpy as np
import matplotlib.pyplot as plt

filename = "plot.png"

plotlist = []

for r in np.arange(2.8,4,0.0001):
    x = 0.1
    print(r)
    for i in range(150):
        x = r*x*(1-x)
        if i >= 100:
            plotlist.append((r,x))

r,x = zip(*plotlist)
plt.scatter(r,x,0.002,marker='o',cmap='hsv',alpha=0.1)
plt.xlim (2.8,4)
plt.savefig(filename,dpi=1200)
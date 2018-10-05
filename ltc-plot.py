#!/usr/bin/env python

from matplotlib import pyplot as plt

# shifts used in point labels
xshift = -0.05
yshift = 0.05

plt.plot([0], [0], 'o', color='red')
plt.plot([1], [0.5], 'o', color='blue')
plt.annotate("$(u^k_0, y^k_0)$", xy=(0+xshift, 0+yshift))
plt.annotate("$(u^k_1, y^k_1)$", xy=(1+xshift, 0.5+yshift))
plt.plot()
plt.show()

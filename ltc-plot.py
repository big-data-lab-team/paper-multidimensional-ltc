#!/usr/bin/env python

from matplotlib import pyplot as plt
from numpy import array

# shifts used in point labels
xshift = -0.05
yshift = 0.02

epsilon = 0.5
size = 'x-large'

x = [0, 1, 2, 3, 4, 5, 6]
y = [0, 1, 3.2, 4, 4, 4.8, 7]
assert(len(x) == len(y))

plt.plot(x[0], y[0], 'o', color='red')
plt.annotate("$(u^0_0, y^0_0)$", xy=(x[0]+xshift, y[0]+yshift), fontsize=size)
plt.plot(x[1], y[1], 'o', color='blue')
plt.annotate("$(u^0_1, y^0_1)$", xy=(x[1]+xshift, y[1]+yshift), fontsize=size)
plt.plot(x[1], y[1]+epsilon, 'o', color='blue')
plt.plot(x[1], y[1]-epsilon, 'o', color='blue')
plt.plot([x[1], x[1]], [y[1]-epsilon, y[1]+epsilon], '-', color='blue')

n = len(x)
lowpoint = y[1] - epsilon
highpoint = y[1] + epsilon
trans_x, trans_y = x[0], y[0]
k = 1
j = 0
for i in range(2, n):
    j += 1
    # Plot point and [y-epsilon, y+epsilon] interval
    plt.plot(x[i], y[i], 'o', color='blue')
    plt.annotate("$(u^{}_{}, y^{}_{})$".format(k, j, k, j), xy=(x[i]+xshift, y[i]+yshift), fontsize=size)
    plt.plot(x[i], y[i]+epsilon, 'o', color='blue')
    plt.plot(x[i], y[i]-epsilon, 'o', color='blue')
    plt.plot([x[i], x[i]], [y[i]-epsilon, y[i]+epsilon], '-', color='blue')
    # plt.annotate("$(u^{}_{}, y^{}_{}+\epsilon)$".format(k, j, k, j), xy=(x[i]+xshift, y[i]+epsilon+yshift), fontsize=size)
    # plt.annotate("$(u^{}_{}, y^{}_{}-\epsilon)$".format(k, j, k, j), xy=(x[i]+xshift, y[i]-epsilon+yshift), fontsize=size)

    new_low = max(y[i]-epsilon, (lowpoint-trans_y)/(x[i-1]-trans_x)*x[i]+trans_y-(lowpoint-trans_y)/(x[i-1]-trans_x)*trans_x)
    new_high = min(y[i]+epsilon, (highpoint-trans_y)/(x[i-1]-trans_x)*x[i]+trans_y-(highpoint-trans_y)/(x[i-1]-trans_x)*trans_x)
    if new_low < new_high:
        lowpoint = new_low
        highpoint = new_high
        continue

    # Plot triangle from previously transmitted point
    triangle = plt.Polygon(array([[trans_x, trans_y], [x[i-1], lowpoint], [x[i-1], highpoint]]), color=(0.8, 0.8, 0.8, 0.5))
    plt.gca().add_patch(triangle)
    # Transmit point
    trans_x = x[i-1]
    trans_y = (lowpoint+highpoint)/2
    # Plot transmitted point in red
    plt.plot(trans_x, trans_y, 'o', color='red')
    plt.annotate("$(u^{}_0, y^{}_0)$".format(k, k), xy=(trans_x+xshift, trans_y+yshift), fontsize=size)
    # Update variables
    lowpoint = y[i] - epsilon
    highpoint = y[i] + epsilon
    k = k + 1
    j = 0



plt.plot()
plt.show()

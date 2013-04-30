#!/usr/bin/env python3
import numpy as np
import matplotlib.pyplot as plt

x_sqrt = [np.sqrt(i) for i in range(1,11)]
x_sqrd = [i*i for i in range(1,11)]

fig = plt.figure()
fig.add_subplot(111)
ax = fig.add_subplot(111)
ax.plot(x_sqrt, marker='o', linestyle='none',
        label='sqrt')
ax.plot(x_sqrd, marker='o',
        label='squared')
ax.legend()
ax.set_xlabel('x value')
ax.set_ylabel('$x^2$ or $\sqrt{x}$')
fig.savefig('test')

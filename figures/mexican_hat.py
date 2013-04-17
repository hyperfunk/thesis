import numpy as np
import matplotlib.pyplot as plt

from matplotlib import cm
from mpl_toolkits.mplot3d import axes3d

def chunks(l, n):
    """ Yield successive n-sized chunks from l.
    """
    for i in xrange(0, len(l), n):
        yield l[i:i+n]

sym_range = 2.05

fig = plt.figure()
ax = fig.gca(projection='3d')
X = np.arange(-sym_range+0.3,sym_range-0.2,0.1)
Y = np.arange(-sym_range+0.3,sym_range-0.2,0.1)
X,Y = np.meshgrid(X,Y)
Z = (-(X**2 + Y**2) + 3)**2

ax.plot_surface(X, Y, Z, rstride=4, cstride=4, alpha=0.3)
cset = ax.contourf(X, Y, Z, 100, zdir='z', offset=0, cmap=cm.coolwarm, vmax=10)

ax.set_xlim(-sym_range, sym_range)
ax.set_ylim(-sym_range, sym_range)
ax.set_zlim(0, 10)

ax.set_title(r'$V = \mu^{2}\Phi^{\dagger}\Phi + \lambda(\Phi^{\dagger}\Phi)^{2}$')
ax.set_xticklabels([""]*len(ax.get_xticklabels()))
ax.set_yticklabels([""]*len(ax.get_yticklabels()))
ax.set_zticklabels([""]*len(ax.get_zticklabels()))

ax.set_xlabel(r'$\Phi$', fontsize=18)
ax.set_ylabel(r'$\Phi^{\dagger}$', fontsize=18)
ax.set_zlabel(r'$V(\Phi,\Phi^{\dagger})$', fontsize=18)

plt.savefig('figures/mexican_hat.pdf')
plt.show()

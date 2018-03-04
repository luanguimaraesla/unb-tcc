import numpy as np
import matplotlib.pyplot as plt

points = [(8,9), (3,7), (5,4), (7,7), (1,3), (2, 1)]
data = np.array(points)

mu = data.mean(axis=0)
data = data - mu

eigenvectors, eigenvalues, V = np.linalg.svd(data.T, full_matrices=False)
projected_data = np.dot(data, eigenvectors)
sigma = projected_data.std(axis=0).mean()

fig, ax = plt.subplots()
ax.scatter(data[:,0], data[:,1])

n_mu = data.mean(axis=0)
colors = ('red', 'green')
for axis, color in zip(eigenvectors,colors):
    start, end = n_mu, n_mu + sigma * axis
    ax.annotate(
        '', xy=end, xycoords='data',
        xytext=start, textcoords='data',
        arrowprops=dict(facecolor=color, width=2.0)
    )

ax.set_aspect('equal')
plt.title("Autovetores")
plt.xlabel("X")
plt.ylabel("Y")
plt.savefig('../images/machine_learning/example_04_pca.png')

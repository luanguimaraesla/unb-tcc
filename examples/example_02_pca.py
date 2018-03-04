from matplotlib import pyplot as plt
import numpy as np

ids = ['A', 'B', 'C', 'D', 'E', 'F']
points = [(8,9), (3,7), (5,4), (7,7), (1,3), (2, 1)]
dataset = np.array(points)
mean = dataset.mean(axis=0)
normalized_dataset = dataset - mean

fig, ax = plt.subplots()

ax.scatter(normalized_dataset[:,0],normalized_dataset[:,1])

for id, point in zip(ids, normalized_dataset):
    ax.annotate(id, xy=point)

ax.set_aspect('equal')
plt.title("Conjunto bidimensional de dados")
plt.xlabel("X")
plt.ylabel("Y")
plt.savefig('../images/machine_learning/example_02_pca.png')

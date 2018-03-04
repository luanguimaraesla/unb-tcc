from matplotlib import pyplot as plt

ids = ['A', 'B', 'C', 'D', 'E', 'F']
dataset = [(8,9), (3,7), (5,4), (7,7), (1,3), (2, 1)]
x, y = zip(*dataset)

fig, ax = plt.subplots()
ax.scatter(x,y)

for id, point in zip(ids, dataset):
    ax.annotate(id, xy=point, xytext=(0.8,-0.8), textcoords='offset points')

ax.set_aspect('equal')
plt.title("Conjunto bidimensional de dados")
plt.xlabel("X")
plt.ylabel("Y")
plt.savefig("../images/machine_learning/example_01_pca.png")

from matplotlib import pyplot as plt
import numpy as np

points = [(8,9), (3,7), (5,4), (7,7), (1,3), (2, 1)]
dataset = np.array(points)
mean = dataset.mean(axis=0)
normalized_dataset = dataset - mean

print("USING COVARIANCE MATRIX\n")

print("Covariance matrix: ")
print(np.cov(normalized_dataset.T))

eig = np.linalg.eig(np.cov(normalized_dataset.T))

print("Eigenvalues: ")
print(eig[0])

print("Eigenvectors: ")
print(eig[1])

print('------------------------------')
print ("USING CORRELATION MATRIX\n")
print("Correlation matrix: ")
print(np.corrcoef(normalized_dataset.T))

eig = np.linalg.eig(np.corrcoef(normalized_dataset.T))

print("Eigenvalues: ")
print(eig[0])

print("Eigenvectors: ")
print(eig[1])

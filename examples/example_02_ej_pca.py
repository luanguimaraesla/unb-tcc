import pandas as pd
from sklearn import decomposition

index = ["A", "B", "C", "D", "E"]
columns = ["Comment 1", "Comment 2", "Comment 3", "Comment 4"]

dataframe = pd.DataFrame(
    [[0  ,1 ,0  ,-1],
    [1  ,0 ,-1 ,-1],
    [1  ,1 ,-1 ,0 ],
    [-1 ,1 ,1  ,1 ],
    [1  ,0 ,1  ,1 ]],
    index=index,
    columns=columns
)

print("High dimensional dataset:\n")
print(dataframe)

print("\n\nPCA Low dimensional dataset:\n")
pca = decomposition.PCA(2)
print(
    pd.DataFrame(
        pca.fit_transform(dataframe.values),
        index=index,
        columns=["X", "Y"]
    )
)


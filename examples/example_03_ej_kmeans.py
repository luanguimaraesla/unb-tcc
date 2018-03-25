import pandas as pd
from sklearn.decomposition import PCA
from sklearn.cluster import KMeans
import matplotlib.pyplot as plt
from sklearn.metrics import silhouette_score

def get_kmeans(data, n_clusters=2):
    kmeans = KMeans(n_clusters=n_clusters, max_iter=300, verbose=0, random_state=0)
    return kmeans.fit(data)

def get_kmeans_with_max_silhouette(data, n_clusters_range):
    first_n_clusters, *rest_n_clusters = n_clusters_range
    n_clusters_limit = len(data) - 1
    silhouette = None
    best_kmeans = get_kmeans(data, first_n_clusters)
    current_silhouette = silhouette_score(data, best_kmeans.labels_)

    sil_l = [current_silhouette]
    kmeans_l = [best_kmeans]

    for n_clusters in rest_n_clusters:
        if n_clusters > n_clusters_limit:
            continue

        kmeans = get_kmeans(data, n_clusters)
        if len(set(kmeans.labels_)) > 1:
            current_silhouette = silhouette_score(data, kmeans.labels_)

            sil_l += [current_silhouette]
            kmeans_l += [kmeans]

            if silhouette is None or current_silhouette > silhouette:
                silhouette = current_silhouette
                best_kmeans = kmeans

    return (best_kmeans, silhouette, kmeans_l, sil_l)


def create_cluster_info_dataframe(votes, pca_votes, users_labels):
    dataframe = pd.DataFrame(pca_votes, index=votes.index, columns=['x', 'y'])
    grouped_dataframe = dataframe.assign(group=users_labels)

    return grouped_dataframe


def normalize_coordinates(cluster_info_dataframe):
    max_values = cluster_info_dataframe.max()
    cluster_info_dataframe['x'] *= 100 / max_values['x']
    cluster_info_dataframe['y'] *= 100 / max_values['y']
    return cluster_info_dataframe


def make_clusters(votes_dataframe, n_clusters_range):
    pca = PCA(2)
    pca_votes = pca.fit_transform(votes_dataframe.values)
    kmeans, max_sil, kmeans_l, sil_l  = get_kmeans_with_max_silhouette(pca_votes, n_clusters_range)

    colors = ['r', 'g', 'b', 'c', 'm', 'y', 'k', 'w']
    idxs = list(range(1,len(sil_l) + 1)) 
    print(idxs)
    for k, km, sil, idx in zip(n_clusters_range, kmeans_l, sil_l, idxs):
        clustered_users_info = create_cluster_info_dataframe(votes_dataframe, pca_votes, km.labels_)
        u_dict = clustered_users_info.T.to_dict()
        xs = [v['x'] for k, v in u_dict.items()]
        ys = [v['y'] for k, v in u_dict.items()]
        cs = [colors[int(v['group'])] for k, v in u_dict.items()]
        plt.subplot( (((idxs[-1] if idxs[-1] % 2 == 0 else idxs[-1]+1)//2) * 100) + 20 + idx)
        plt.scatter(xs,ys, c=cs)
        plt.title("k=" + str(k) + ", sil="+ truncate_float(sil,3))
        plt.xlabel("X")
        plt.ylabel("Y")
        #plt.grid(True)

    plt.subplots_adjust(top=0.92, bottom=0.08, left=0.10, right=0.95, hspace=0.45, wspace=0.55)
    plt.savefig('../images/ej/example_03_ej_kmeans.png')

def truncate_float(f, n):
    s = '{}'.format(f)
    if 'e' in s or 'E' in s:
        return '{0:.{1}f}'.format(f, n)
    i, p, d = s.partition('.')
    return '.'.join([i, (d+'0'*n)[:n]])


if __name__ == "__main__":
    index = ["A", "B", "C", "D", "E"]
    columns = ["Comment 1", "Comment 2", "Comment 3", "Comment 4"]

    votes_dataframe = pd.DataFrame(
        [[0  ,1 ,0  ,-1],
        [1  ,0 ,-1 ,-1],
        [1  ,1 ,-1 ,0 ],
        [-1 ,1 ,1  ,1 ],
        [1  ,0 ,1  ,1 ]],
        index=index,
        columns=columns
    )

    make_clusters(votes_dataframe, [2,3,4])

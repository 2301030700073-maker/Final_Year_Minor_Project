.class public Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;
.super Lcom/google/maps/android/clustering/algo/AbstractAlgorithm;
.source "GridBasedAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/maps/android/clustering/ClusterItem;",
        ">",
        "Lcom/google/maps/android/clustering/algo/AbstractAlgorithm<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_GRID_SIZE:I = 0x64


# instance fields
.field private mGridSize:I

.field private final mItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/google/maps/android/clustering/algo/AbstractAlgorithm;-><init>()V

    const/16 v0, 0x64

    .line 37
    iput v0, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mGridSize:I

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    return-void
.end method

.method private static getCoord(JDD)J
    .locals 0

    long-to-double p0, p0

    .line 149
    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    mul-double/2addr p0, p2

    invoke-static {p4, p5}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    add-double/2addr p0, p2

    double-to-long p0, p0

    return-wide p0
.end method


# virtual methods
.method public addItem(Lcom/google/maps/android/clustering/ClusterItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addItems(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clearItems()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getClusters(F)Ljava/util/Set;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/Set<",
            "+",
            "Lcom/google/maps/android/clustering/Cluster<",
            "TT;>;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    move/from16 v0, p1

    float-to-double v4, v0

    .line 118
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    mul-double/2addr v2, v4

    iget v0, v1, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mGridSize:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    .line 119
    new-instance v0, Lcom/google/maps/android/projection/SphericalMercatorProjection;

    long-to-double v4, v2

    invoke-direct {v0, v4, v5}, Lcom/google/maps/android/projection/SphericalMercatorProjection;-><init>(D)V

    .line 121
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 122
    new-instance v11, Landroidx/collection/LongSparseArray;

    invoke-direct {v11}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 124
    iget-object v12, v1, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    monitor-enter v12

    .line 125
    :try_start_0
    iget-object v4, v1, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/google/maps/android/clustering/ClusterItem;

    .line 126
    invoke-interface {v14}, Lcom/google/maps/android/clustering/ClusterItem;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/maps/android/projection/SphericalMercatorProjection;->toPoint(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/android/projection/Point;

    move-result-object v15

    .line 128
    iget-wide v6, v15, Lcom/google/maps/android/geometry/Point;->x:D

    iget-wide v8, v15, Lcom/google/maps/android/geometry/Point;->y:D

    move-wide v4, v2

    invoke-static/range {v4 .. v9}, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->getCoord(JDD)J

    move-result-wide v4

    .line 130
    invoke-virtual {v11, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/maps/android/clustering/algo/StaticCluster;

    if-nez v6, :cond_0

    .line 132
    new-instance v6, Lcom/google/maps/android/clustering/algo/StaticCluster;

    new-instance v7, Lcom/google/maps/android/geometry/Point;

    iget-wide v8, v15, Lcom/google/maps/android/geometry/Point;->x:D

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v8, v8, v16

    move-wide/from16 v18, v2

    iget-wide v1, v15, Lcom/google/maps/android/geometry/Point;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    add-double v1, v1, v16

    invoke-direct {v7, v8, v9, v1, v2}, Lcom/google/maps/android/geometry/Point;-><init>(DD)V

    invoke-virtual {v0, v7}, Lcom/google/maps/android/projection/SphericalMercatorProjection;->toLatLng(Lcom/google/maps/android/geometry/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/google/maps/android/clustering/algo/StaticCluster;-><init>(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 133
    invoke-virtual {v11, v4, v5, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 134
    invoke-virtual {v10, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-wide/from16 v18, v2

    .line 136
    :goto_1
    invoke-virtual {v6, v14}, Lcom/google/maps/android/clustering/algo/StaticCluster;->add(Lcom/google/maps/android/clustering/ClusterItem;)Z

    move-object/from16 v1, p0

    move-wide/from16 v2, v18

    goto :goto_0

    .line 138
    :cond_1
    monitor-exit v12

    return-object v10

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItems()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    return-object v0
.end method

.method public getMaxDistanceBetweenClusteredItems()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mGridSize:I

    return v0
.end method

.method public removeItem(Lcom/google/maps/android/clustering/ClusterItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeItems(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public setMaxDistanceBetweenClusteredItems(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mGridSize:I

    return-void
.end method

.method public updateItem(Lcom/google/maps/android/clustering/ClusterItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    monitor-enter v0

    .line 97
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->removeItem(Lcom/google/maps/android/clustering/ClusterItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->addItem(Lcom/google/maps/android/clustering/ClusterItem;)Z

    move-result v1

    .line 102
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

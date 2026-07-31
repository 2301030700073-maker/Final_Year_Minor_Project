.class public final Lcoil3/memory/RealMemoryCache;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final lock:Ljava/lang/Object;

.field public final strongMemoryCache:Lcoil3/memory/RealStrongMemoryCache;

.field public final weakMemoryCache:Lokio/PriorityQueue;


# direct methods
.method public constructor <init>(Lcoil3/memory/RealStrongMemoryCache;Lokio/PriorityQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/memory/RealMemoryCache;->strongMemoryCache:Lcoil3/memory/RealStrongMemoryCache;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/memory/RealMemoryCache;->weakMemoryCache:Lokio/PriorityQueue;

    .line 7
    .line 8
    new-instance p1, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcoil3/memory/RealMemoryCache;->lock:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealMemoryCache;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcoil3/memory/RealMemoryCache;->strongMemoryCache:Lcoil3/memory/RealStrongMemoryCache;

    .line 5
    .line 6
    iget-object v1, v1, Lcoil3/memory/RealStrongMemoryCache;->cache:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 9
    .line 10
    const-wide/16 v2, -0x1

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->trimToSize(J)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcoil3/memory/RealMemoryCache;->weakMemoryCache:Lokio/PriorityQueue;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lokio/PriorityQueue;->size:I

    .line 19
    .line 20
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0

    .line 31
    throw p0
.end method

.method public final get(Lcoil3/memory/MemoryCache$Key;)Lcoil3/memory/MemoryCache$Value;
    .locals 9

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealMemoryCache;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcoil3/memory/RealMemoryCache;->strongMemoryCache:Lcoil3/memory/RealStrongMemoryCache;

    .line 5
    .line 6
    iget-object v1, v1, Lcoil3/memory/RealStrongMemoryCache;->cache:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 9
    .line 10
    iget-object v1, v1, Lcoil3/memory/RealStrongMemoryCache$cache$1;->map:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcoil3/memory/RealStrongMemoryCache$InternalValue;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance v3, Lcoil3/memory/MemoryCache$Value;

    .line 22
    .line 23
    iget-object v4, v1, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->image:Lcoil3/Image;

    .line 24
    .line 25
    iget-object v1, v1, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->extras:Ljava/util/Map;

    .line 26
    .line 27
    invoke-direct {v3, v4, v1}, Lcoil3/memory/MemoryCache$Value;-><init>(Lcoil3/Image;Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v3, v2

    .line 32
    :goto_0
    if-nez v3, :cond_5

    .line 33
    .line 34
    iget-object v1, p0, Lcoil3/memory/RealMemoryCache;->weakMemoryCache:Lokio/PriorityQueue;

    .line 35
    .line 36
    iget-object v3, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    goto :goto_4

    .line 49
    :cond_1
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/4 v5, 0x0

    .line 54
    :goto_1
    if-ge v5, v4, :cond_4

    .line 55
    .line 56
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    check-cast v6, Lcoil3/memory/RealWeakMemoryCache$InternalValue;

    .line 61
    .line 62
    iget-object v7, v6, Lcoil3/memory/RealWeakMemoryCache$InternalValue;->image:Ljava/lang/ref/WeakReference;

    .line 63
    .line 64
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Lcoil3/Image;

    .line 69
    .line 70
    if-eqz v7, :cond_2

    .line 71
    .line 72
    new-instance v8, Lcoil3/memory/MemoryCache$Value;

    .line 73
    .line 74
    iget-object v6, v6, Lcoil3/memory/RealWeakMemoryCache$InternalValue;->extras:Ljava/util/Map;

    .line 75
    .line 76
    invoke-direct {v8, v7, v6}, Lcoil3/memory/MemoryCache$Value;-><init>(Lcoil3/Image;Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    move-object v8, v2

    .line 81
    :goto_2
    if-eqz v8, :cond_3

    .line 82
    .line 83
    move-object v2, v8

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    :goto_3
    invoke-virtual {v1}, Lokio/PriorityQueue;->cleanUpIfNecessary()V

    .line 89
    .line 90
    .line 91
    :goto_4
    move-object v3, v2

    .line 92
    goto :goto_5

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto :goto_6

    .line 95
    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    .line 96
    .line 97
    iget-object v1, v3, Lcoil3/memory/MemoryCache$Value;->image:Lcoil3/Image;

    .line 98
    .line 99
    invoke-interface {v1}, Lcoil3/Image;->getShareable()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_6

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcoil3/memory/RealMemoryCache;->remove(Lcoil3/memory/MemoryCache$Key;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    :cond_6
    monitor-exit v0

    .line 109
    return-object v3

    .line 110
    :goto_6
    monitor-exit v0

    .line 111
    throw p0
.end method

.method public final getSize()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealMemoryCache;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcoil3/memory/RealMemoryCache;->strongMemoryCache:Lcoil3/memory/RealStrongMemoryCache;

    .line 5
    .line 6
    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->cache:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->getSize()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    .line 15
    return-wide v1

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0

    .line 18
    throw p0
.end method

.method public final remove(Lcoil3/memory/MemoryCache$Key;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealMemoryCache;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcoil3/memory/RealMemoryCache;->strongMemoryCache:Lcoil3/memory/RealStrongMemoryCache;

    .line 5
    .line 6
    iget-object v1, v1, Lcoil3/memory/RealStrongMemoryCache;->cache:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 9
    .line 10
    iget-object v2, v1, Lcoil3/memory/RealStrongMemoryCache$cache$1;->map:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->getSize()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-virtual {v1, p1, v2}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    sub-long/2addr v3, v5

    .line 27
    iput-wide v3, v1, Lcoil3/memory/RealStrongMemoryCache$cache$1;->size:J

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, p1, v2, v3}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->entryRemoved(Ljava/lang/Object;Ljava/lang/Object;Lcoil3/memory/RealStrongMemoryCache$InternalValue;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    const/4 v3, 0x1

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    move v2, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v2, v1

    .line 40
    :goto_0
    iget-object p0, p0, Lcoil3/memory/RealMemoryCache;->weakMemoryCache:Lokio/PriorityQueue;

    .line 41
    .line 42
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    move v1, v3

    .line 53
    :cond_2
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v0

    .line 57
    throw p0
.end method

.method public final setMaxSize(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealMemoryCache;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcoil3/memory/RealMemoryCache;->strongMemoryCache:Lcoil3/memory/RealStrongMemoryCache;

    .line 5
    .line 6
    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->cache:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 9
    .line 10
    iput-wide p1, p0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->maxSize:J

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->trimToSize(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0

    .line 19
    throw p0
.end method

.method public final trimToSize(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealMemoryCache;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcoil3/memory/RealMemoryCache;->strongMemoryCache:Lcoil3/memory/RealStrongMemoryCache;

    .line 5
    .line 6
    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->cache:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->trimToSize(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0

    .line 17
    throw p0
.end method

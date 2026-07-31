.class public final Lcoil3/memory/RealMemoryCache;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


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
    iget-object v2, v1, Lcoil3/memory/RealStrongMemoryCache$cache$1;->map:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->getSize()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-virtual {v1, p1, v2}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    sub-long/2addr v3, v5

    .line 29
    iput-wide v3, v1, Lcoil3/memory/RealStrongMemoryCache$cache$1;->size:J

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v1, p1, v2, v3}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->entryRemoved(Ljava/lang/Object;Ljava/lang/Object;Lcoil3/memory/RealStrongMemoryCache$InternalValue;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    move v2, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v2, v1

    .line 42
    :goto_0
    iget-object p0, p0, Lcoil3/memory/RealMemoryCache;->weakMemoryCache:Lokio/PriorityQueue;

    .line 43
    .line 44
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    move v1, v3

    .line 55
    :cond_2
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v0

    .line 59
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

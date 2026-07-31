.class public final Lokhttp3/internal/connection/RealRoutePlanner;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final address:Lokhttp3/Address;

.field public final call:Lokhttp3/internal/connection/RealCall;

.field public final connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

.field public final deferredPlans:Lkotlin/collections/ArrayDeque;

.field public final doExtensiveHealthChecks:Z

.field public final fastFallback:Z

.field public nextRouteToTry:Lokhttp3/Route;

.field public final readTimeoutMillis:I

.field public final retryOnConnectionFailure:Z

.field public final routeDatabase:Lokhttp3/ConnectionPool;

.field public routeSelection:Lokio/PriorityQueue;

.field public routeSelector:Lorg/schabi/newpipe/streams/Mp4DashReader;

.field public final socketConnectTimeoutMillis:I

.field public final socketReadTimeoutMillis:I

.field public final taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

.field public final writeTimeoutMillis:I


# direct methods
.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIZZLokhttp3/Address;Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 14
    .line 15
    iput-object p2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 16
    .line 17
    iput p3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->readTimeoutMillis:I

    .line 18
    .line 19
    iput p4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->writeTimeoutMillis:I

    .line 20
    .line 21
    iput p5, p0, Lokhttp3/internal/connection/RealRoutePlanner;->socketConnectTimeoutMillis:I

    .line 22
    .line 23
    iput p6, p0, Lokhttp3/internal/connection/RealRoutePlanner;->socketReadTimeoutMillis:I

    .line 24
    .line 25
    iput-boolean p7, p0, Lokhttp3/internal/connection/RealRoutePlanner;->retryOnConnectionFailure:Z

    .line 26
    .line 27
    iput-boolean p8, p0, Lokhttp3/internal/connection/RealRoutePlanner;->fastFallback:Z

    .line 28
    .line 29
    iput-object p9, p0, Lokhttp3/internal/connection/RealRoutePlanner;->address:Lokhttp3/Address;

    .line 30
    .line 31
    iput-object p10, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeDatabase:Lokhttp3/ConnectionPool;

    .line 32
    .line 33
    iput-object p11, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 34
    .line 35
    iget-object p1, p12, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 36
    .line 37
    const-string p2, "GET"

    .line 38
    .line 39
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    xor-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    iput-boolean p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->doExtensiveHealthChecks:Z

    .line 46
    .line 47
    new-instance p1, Lkotlin/collections/ArrayDeque;

    .line 48
    .line 49
    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->deferredPlans:Lkotlin/collections/ArrayDeque;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final hasNext(Lokhttp3/internal/connection/RealConnection;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->deferredPlans:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->nextRouteToTry:Lokhttp3/Route;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    if-eqz p1, :cond_5

    .line 17
    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    iget v0, p1, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-boolean v0, p1, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 31
    .line 32
    iget-object v0, v0, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 33
    .line 34
    iget-object v0, v0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 35
    .line 36
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->address:Lokhttp3/Address;

    .line 37
    .line 38
    iget-object v3, v3, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 39
    .line 40
    invoke-static {v0, v3}, Lokhttp3/internal/_UtilJvmKt;->canReuseConnectionFor(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    iget-object v2, p1, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    :goto_0
    monitor-exit p1

    .line 50
    if-eqz v2, :cond_5

    .line 51
    .line 52
    iput-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->nextRouteToTry:Lokhttp3/Route;

    .line 53
    .line 54
    return v1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit p1

    .line 57
    throw p0

    .line 58
    :cond_5
    iget-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeSelection:Lokio/PriorityQueue;

    .line 59
    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    iget v0, p1, Lokio/PriorityQueue;->size:I

    .line 63
    .line 64
    iget-object p1, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-ge v0, p1, :cond_6

    .line 73
    .line 74
    return v1

    .line 75
    :cond_6
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeSelector:Lorg/schabi/newpipe/streams/Mp4DashReader;

    .line 76
    .line 77
    if-nez p0, :cond_7

    .line 78
    .line 79
    :goto_1
    return v1

    .line 80
    :cond_7
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    return p0
.end method

.method public final plan()Lokhttp3/internal/connection/RoutePlanner$Plan;
    .locals 7

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    :goto_0
    move-object v2, v1

    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget-boolean v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->doExtensiveHealthChecks:Z

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    monitor-enter v0

    .line 18
    iget-boolean v3, v0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    :try_start_0
    iput-boolean v4, v0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 24
    .line 25
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 26
    .line 27
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealCall;->releaseConnectionNoEvents$okhttp()Ljava/net/Socket;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_3

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_1
    if-nez v3, :cond_4

    .line 36
    .line 37
    iget-object v2, v0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 38
    .line 39
    iget-object v2, v2, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 40
    .line 41
    iget-object v2, v2, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->address:Lokhttp3/Address;

    .line 47
    .line 48
    iget-object v3, v3, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 49
    .line 50
    iget v5, v2, Lokhttp3/HttpUrl;->port:I

    .line 51
    .line 52
    iget v6, v3, Lokhttp3/HttpUrl;->port:I

    .line 53
    .line 54
    if-ne v5, v6, :cond_2

    .line 55
    .line 56
    iget-object v2, v2, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v3, v3, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/4 v4, 0x0

    .line 68
    :goto_1
    if-nez v4, :cond_3

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move-object v2, v1

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    :goto_2
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 74
    .line 75
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealCall;->releaseConnectionNoEvents$okhttp()Ljava/net/Socket;

    .line 76
    .line 77
    .line 78
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_3
    monitor-exit v0

    .line 80
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 81
    .line 82
    iget-object v3, v3, Lokhttp3/internal/connection/RealCall;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 83
    .line 84
    if-eqz v3, :cond_6

    .line 85
    .line 86
    if-nez v2, :cond_5

    .line 87
    .line 88
    new-instance v2, Lokhttp3/internal/connection/ReusePlan;

    .line 89
    .line 90
    invoke-direct {v2, v0}, Lokhttp3/internal/connection/ReusePlan;-><init>(Lokhttp3/internal/connection/RealConnection;)V

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_5
    const-string p0, "Check failed."

    .line 95
    .line 96
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object v1

    .line 100
    :cond_6
    if-eqz v2, :cond_7

    .line 101
    .line 102
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt;->closeQuietly(Ljava/net/Socket;)V

    .line 103
    .line 104
    .line 105
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 106
    .line 107
    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :goto_4
    if-eqz v2, :cond_8

    .line 114
    .line 115
    return-object v2

    .line 116
    :cond_8
    invoke-virtual {p0, v1, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->planReusePooledConnection$okhttp(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_9

    .line 121
    .line 122
    return-object v0

    .line 123
    :cond_9
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->deferredPlans:Lkotlin/collections/ArrayDeque;

    .line 124
    .line 125
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_a

    .line 130
    .line 131
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->deferredPlans:Lkotlin/collections/ArrayDeque;

    .line 132
    .line 133
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 138
    .line 139
    return-object p0

    .line 140
    :cond_a
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->planConnect$okhttp()Lokhttp3/internal/connection/ConnectPlan;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v1, v0, Lokhttp3/internal/connection/ConnectPlan;->routes:Ljava/util/List;

    .line 145
    .line 146
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->planReusePooledConnection$okhttp(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    if-eqz p0, :cond_b

    .line 151
    .line 152
    return-object p0

    .line 153
    :cond_b
    return-object v0

    .line 154
    :goto_5
    monitor-exit v0

    .line 155
    throw p0
.end method

.method public final planConnect$okhttp()Lokhttp3/internal/connection/ConnectPlan;
    .locals 12

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->nextRouteToTry:Lokhttp3/Route;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->nextRouteToTry:Lokhttp3/Route;

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->planConnectToRoute$okhttp(Lokhttp3/Route;Ljava/util/ArrayList;)Lokhttp3/internal/connection/ConnectPlan;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeSelection:Lokio/PriorityQueue;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget v2, v0, Lokio/PriorityQueue;->size:I

    .line 18
    .line 19
    iget-object v3, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ge v2, v3, :cond_2

    .line 28
    .line 29
    iget v2, v0, Lokio/PriorityQueue;->size:I

    .line 30
    .line 31
    iget-object v3, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-ge v2, v4, :cond_1

    .line 40
    .line 41
    iget v2, v0, Lokio/PriorityQueue;->size:I

    .line 42
    .line 43
    add-int/lit8 v4, v2, 0x1

    .line 44
    .line 45
    iput v4, v0, Lokio/PriorityQueue;->size:I

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lokhttp3/Route;

    .line 52
    .line 53
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->planConnectToRoute$okhttp(Lokhttp3/Route;Ljava/util/ArrayList;)Lokhttp3/internal/connection/ConnectPlan;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_1
    invoke-static {}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m()V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeSelector:Lorg/schabi/newpipe/streams/Mp4DashReader;

    .line 63
    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader;

    .line 67
    .line 68
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->address:Lokhttp3/Address;

    .line 69
    .line 70
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeDatabase:Lokhttp3/ConnectionPool;

    .line 71
    .line 72
    iget-object v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 73
    .line 74
    iget-boolean v5, p0, Lokhttp3/internal/connection/RealRoutePlanner;->fastFallback:Z

    .line 75
    .line 76
    invoke-direct {v0, v2, v3, v4, v5}, Lorg/schabi/newpipe/streams/Mp4DashReader;-><init>(Lokhttp3/Address;Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealCall;Z)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeSelector:Lorg/schabi/newpipe/streams/Mp4DashReader;

    .line 80
    .line 81
    :cond_3
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1f

    .line 86
    .line 87
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_1e

    .line 92
    .line 93
    new-instance v2, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    :cond_4
    iget v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->selectedTrack:I

    .line 99
    .line 100
    iget-object v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v4, Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-ge v3, v4, :cond_1a

    .line 109
    .line 110
    const-string v3, "No route to "

    .line 111
    .line 112
    iget v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->selectedTrack:I

    .line 113
    .line 114
    iget-object v5, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v5, Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-ge v4, v5, :cond_19

    .line 123
    .line 124
    iget-object v4, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v4, Ljava/util/List;

    .line 127
    .line 128
    iget v5, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->selectedTrack:I

    .line 129
    .line 130
    add-int/lit8 v6, v5, 0x1

    .line 131
    .line 132
    iput v6, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->selectedTrack:I

    .line 133
    .line 134
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Ljava/net/Proxy;

    .line 139
    .line 140
    new-instance v5, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object v5, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->backupBox:Ljava/lang/Object;

    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 152
    .line 153
    if-eq v6, v7, :cond_8

    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    sget-object v7, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 160
    .line 161
    if-ne v6, v7, :cond_5

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_5
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    instance-of v7, v6, Ljava/net/InetSocketAddress;

    .line 169
    .line 170
    if-eqz v7, :cond_7

    .line 171
    .line 172
    check-cast v6, Ljava/net/InetSocketAddress;

    .line 173
    .line 174
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    if-nez v7, :cond_6

    .line 179
    .line 180
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_6
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    :goto_0
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getPort()I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    goto :goto_2

    .line 200
    :cond_7
    const-string p0, "Proxy.address() is not an InetSocketAddress: "

    .line 201
    .line 202
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v0, p0}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    return-object v1

    .line 210
    :cond_8
    :goto_1
    iget-object v6, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v6, Lokhttp3/Address;

    .line 213
    .line 214
    iget-object v6, v6, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 215
    .line 216
    iget-object v7, v6, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 217
    .line 218
    iget v6, v6, Lokhttp3/HttpUrl;->port:I

    .line 219
    .line 220
    :goto_2
    const/4 v8, 0x1

    .line 221
    if-gt v8, v6, :cond_18

    .line 222
    .line 223
    const/high16 v8, 0x10000

    .line 224
    .line 225
    if-ge v6, v8, :cond_18

    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    sget-object v8, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 232
    .line 233
    if-ne v3, v8, :cond_9

    .line 234
    .line 235
    invoke-static {v7, v6}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    goto/16 :goto_9

    .line 243
    .line 244
    :cond_9
    sget-object v3, Lokhttp3/internal/_HostnamesCommonKt;->VERIFY_AS_IP_ADDRESS:Lkotlin/text/Regex;

    .line 245
    .line 246
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    sget-object v3, Lokhttp3/internal/_HostnamesCommonKt;->VERIFY_AS_IP_ADDRESS:Lkotlin/text/Regex;

    .line 250
    .line 251
    invoke-virtual {v3, v7}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-eqz v3, :cond_a

    .line 256
    .line 257
    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    goto :goto_3

    .line 266
    :cond_a
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->brands:Ljava/lang/Cloneable;

    .line 267
    .line 268
    check-cast v3, Lokhttp3/internal/connection/RealCall;

    .line 269
    .line 270
    iget-object v3, v3, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v3, Lokhttp3/Address;

    .line 278
    .line 279
    iget-object v3, v3, Lokhttp3/Address;->dns:Lokhttp3/HttpUrl$Companion;

    .line 280
    .line 281
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    :try_start_0
    invoke-static {v7}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    invoke-static {v3}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 292
    .line 293
    .line 294
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    if-nez v8, :cond_17

    .line 300
    .line 301
    iget-object v7, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->brands:Ljava/lang/Cloneable;

    .line 302
    .line 303
    check-cast v7, Lokhttp3/internal/connection/RealCall;

    .line 304
    .line 305
    iget-object v7, v7, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 306
    .line 307
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    :goto_3
    iget-boolean v7, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->chunkZero:Z

    .line 311
    .line 312
    if-eqz v7, :cond_13

    .line 313
    .line 314
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    const/4 v8, 0x2

    .line 319
    if-ge v7, v8, :cond_b

    .line 320
    .line 321
    goto/16 :goto_7

    .line 322
    .line 323
    :cond_b
    new-instance v7, Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .line 327
    .line 328
    new-instance v8, Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 334
    .line 335
    .line 336
    move-result-object v9

    .line 337
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 338
    .line 339
    .line 340
    move-result v10

    .line 341
    if-eqz v10, :cond_d

    .line 342
    .line 343
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v10

    .line 347
    move-object v11, v10

    .line 348
    check-cast v11, Ljava/net/InetAddress;

    .line 349
    .line 350
    instance-of v11, v11, Ljava/net/Inet6Address;

    .line 351
    .line 352
    if-eqz v11, :cond_c

    .line 353
    .line 354
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_c
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    goto :goto_4

    .line 362
    :cond_d
    new-instance v9, Lkotlin/Pair;

    .line 363
    .line 364
    invoke-direct {v9, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v9}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v7

    .line 371
    check-cast v7, Ljava/util/List;

    .line 372
    .line 373
    invoke-virtual {v9}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    check-cast v8, Ljava/util/List;

    .line 378
    .line 379
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 380
    .line 381
    .line 382
    move-result v9

    .line 383
    if-nez v9, :cond_13

    .line 384
    .line 385
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 386
    .line 387
    .line 388
    move-result v9

    .line 389
    if-eqz v9, :cond_e

    .line 390
    .line 391
    goto :goto_7

    .line 392
    :cond_e
    sget-object v3, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 393
    .line 394
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 395
    .line 396
    .line 397
    move-result-object v7

    .line 398
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 399
    .line 400
    .line 401
    move-result-object v8

    .line 402
    invoke-static {}, Lorg/jsoup/Jsoup;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 403
    .line 404
    .line 405
    move-result-object v9

    .line 406
    :cond_f
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    if-nez v3, :cond_11

    .line 411
    .line 412
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    if-eqz v3, :cond_10

    .line 417
    .line 418
    goto :goto_6

    .line 419
    :cond_10
    invoke-virtual {v9}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    goto :goto_7

    .line 424
    :cond_11
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    if-eqz v3, :cond_12

    .line 429
    .line 430
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    invoke-virtual {v9, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    :cond_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-eqz v3, :cond_f

    .line 442
    .line 443
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    invoke-virtual {v9, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    goto :goto_5

    .line 451
    :cond_13
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 456
    .line 457
    .line 458
    move-result v7

    .line 459
    if-eqz v7, :cond_14

    .line 460
    .line 461
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v7

    .line 465
    check-cast v7, Ljava/net/InetAddress;

    .line 466
    .line 467
    new-instance v8, Ljava/net/InetSocketAddress;

    .line 468
    .line 469
    invoke-direct {v8, v7, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    goto :goto_8

    .line 476
    :cond_14
    :goto_9
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->backupBox:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v3, Ljava/util/List;

    .line 479
    .line 480
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 485
    .line 486
    .line 487
    move-result v5

    .line 488
    if-eqz v5, :cond_16

    .line 489
    .line 490
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    check-cast v5, Ljava/net/InetSocketAddress;

    .line 495
    .line 496
    new-instance v6, Lokhttp3/Route;

    .line 497
    .line 498
    iget-object v7, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Ljava/lang/Object;

    .line 499
    .line 500
    check-cast v7, Lokhttp3/Address;

    .line 501
    .line 502
    invoke-direct {v6, v7, v4, v5}, Lokhttp3/Route;-><init>(Lokhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 503
    .line 504
    .line 505
    iget-object v5, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->tracks:Ljava/lang/Object;

    .line 506
    .line 507
    check-cast v5, Lokhttp3/ConnectionPool;

    .line 508
    .line 509
    monitor-enter v5

    .line 510
    :try_start_1
    iget-object v7, v5, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 511
    .line 512
    check-cast v7, Ljava/util/LinkedHashSet;

    .line 513
    .line 514
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    monitor-exit v5

    .line 519
    if-eqz v7, :cond_15

    .line 520
    .line 521
    iget-object v5, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v5, Ljava/util/ArrayList;

    .line 524
    .line 525
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    goto :goto_a

    .line 529
    :cond_15
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    goto :goto_a

    .line 533
    :catchall_0
    move-exception p0

    .line 534
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 535
    throw p0

    .line 536
    :cond_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 537
    .line 538
    .line 539
    move-result v3

    .line 540
    if-nez v3, :cond_4

    .line 541
    .line 542
    goto :goto_b

    .line 543
    :cond_17
    new-instance p0, Ljava/net/UnknownHostException;

    .line 544
    .line 545
    iget-object v0, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Ljava/lang/Object;

    .line 546
    .line 547
    check-cast v0, Lokhttp3/Address;

    .line 548
    .line 549
    iget-object v0, v0, Lokhttp3/Address;->dns:Lokhttp3/HttpUrl$Companion;

    .line 550
    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    const-string v0, " returned no addresses for "

    .line 560
    .line 561
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-direct {p0, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    throw p0

    .line 575
    :catch_0
    move-exception p0

    .line 576
    new-instance v0, Ljava/net/UnknownHostException;

    .line 577
    .line 578
    const-string v1, "Broken system behaviour for dns lookup of "

    .line 579
    .line 580
    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 588
    .line 589
    .line 590
    throw v0

    .line 591
    :cond_18
    new-instance p0, Ljava/net/SocketException;

    .line 592
    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    .line 594
    .line 595
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    const/16 v1, 0x3a

    .line 602
    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    const-string v1, "; port is out of range"

    .line 610
    .line 611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    invoke-direct {p0, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    throw p0

    .line 622
    :cond_19
    new-instance p0, Ljava/net/SocketException;

    .line 623
    .line 624
    iget-object v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->stream:Ljava/lang/Object;

    .line 625
    .line 626
    check-cast v1, Lokhttp3/Address;

    .line 627
    .line 628
    iget-object v1, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 629
    .line 630
    iget-object v1, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 631
    .line 632
    const-string v2, "; exhausted proxy configurations: "

    .line 633
    .line 634
    iget-object v0, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->box:Ljava/lang/Object;

    .line 635
    .line 636
    check-cast v0, Ljava/util/List;

    .line 637
    .line 638
    new-instance v4, Ljava/lang/StringBuilder;

    .line 639
    .line 640
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    invoke-direct {p0, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    throw p0

    .line 660
    :cond_1a
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 661
    .line 662
    .line 663
    move-result v3

    .line 664
    if-eqz v3, :cond_1b

    .line 665
    .line 666
    iget-object v3, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Ljava/lang/Object;

    .line 667
    .line 668
    check-cast v3, Ljava/util/ArrayList;

    .line 669
    .line 670
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 671
    .line 672
    .line 673
    iget-object v0, v0, Lorg/schabi/newpipe/streams/Mp4DashReader;->moof:Ljava/lang/Object;

    .line 674
    .line 675
    check-cast v0, Ljava/util/ArrayList;

    .line 676
    .line 677
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 678
    .line 679
    .line 680
    :cond_1b
    new-instance v0, Lokio/PriorityQueue;

    .line 681
    .line 682
    const/16 v3, 0xa

    .line 683
    .line 684
    invoke-direct {v0, v3, v2}, Lokio/PriorityQueue;-><init>(ILjava/util/ArrayList;)V

    .line 685
    .line 686
    .line 687
    iput-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeSelection:Lokio/PriorityQueue;

    .line 688
    .line 689
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 690
    .line 691
    iget-boolean v3, v3, Lokhttp3/internal/connection/RealCall;->canceled:Z

    .line 692
    .line 693
    if-nez v3, :cond_1d

    .line 694
    .line 695
    iget v3, v0, Lokio/PriorityQueue;->size:I

    .line 696
    .line 697
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 698
    .line 699
    .line 700
    move-result v4

    .line 701
    if-ge v3, v4, :cond_1c

    .line 702
    .line 703
    iget v1, v0, Lokio/PriorityQueue;->size:I

    .line 704
    .line 705
    add-int/lit8 v3, v1, 0x1

    .line 706
    .line 707
    iput v3, v0, Lokio/PriorityQueue;->size:I

    .line 708
    .line 709
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    check-cast v0, Lokhttp3/Route;

    .line 714
    .line 715
    invoke-virtual {p0, v0, v2}, Lokhttp3/internal/connection/RealRoutePlanner;->planConnectToRoute$okhttp(Lokhttp3/Route;Ljava/util/ArrayList;)Lokhttp3/internal/connection/ConnectPlan;

    .line 716
    .line 717
    .line 718
    move-result-object p0

    .line 719
    return-object p0

    .line 720
    :cond_1c
    invoke-static {}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m()V

    .line 721
    .line 722
    .line 723
    return-object v1

    .line 724
    :cond_1d
    const-string p0, "Canceled"

    .line 725
    .line 726
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    return-object v1

    .line 730
    :cond_1e
    invoke-static {}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m()V

    .line 731
    .line 732
    .line 733
    return-object v1

    .line 734
    :cond_1f
    const-string p0, "exhausted all routes"

    .line 735
    .line 736
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    return-object v1
.end method

.method public final planConnectToRoute$okhttp(Lokhttp3/Route;Ljava/util/ArrayList;)Lokhttp3/internal/connection/ConnectPlan;
    .locals 15

    .line 1
    move-object/from16 v10, p1

    .line 2
    .line 3
    sget-object v0, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    .line 4
    .line 5
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v10, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 9
    .line 10
    iget-object v2, v1, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 11
    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    iget-object v1, v1, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    .line 15
    .line 16
    sget-object v2, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    .line 17
    .line 18
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, v10, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 25
    .line 26
    iget-object v1, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 27
    .line 28
    iget-object v1, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 29
    .line 30
    sget-object v2, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 31
    .line 32
    sget-object v2, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Ljava/net/UnknownServiceException;

    .line 42
    .line 43
    const-string v0, "CLEARTEXT communication to "

    .line 44
    .line 45
    const-string v2, " not permitted by network security policy"

    .line 46
    .line 47
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p0, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    new-instance p0, Ljava/net/UnknownServiceException;

    .line 56
    .line 57
    const-string v0, "CLEARTEXT communication not enabled for client"

    .line 58
    .line 59
    invoke-direct {p0, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_2
    iget-object v1, v1, Lokhttp3/Address;->protocols:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_6

    .line 70
    .line 71
    :goto_0
    iget-object v1, v10, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    if-eq v1, v2, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object v1, v10, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 84
    .line 85
    iget-object v2, v1, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 86
    .line 87
    if-nez v2, :cond_5

    .line 88
    .line 89
    iget-object v1, v1, Lokhttp3/Address;->protocols:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    :goto_1
    move-object v12, v3

    .line 99
    goto :goto_3

    .line 100
    :cond_5
    :goto_2
    new-instance v0, Lokhttp3/Request$Builder;

    .line 101
    .line 102
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 103
    .line 104
    .line 105
    iget-object v1, v10, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 106
    .line 107
    iget-object v1, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    iput-object v1, v0, Lokhttp3/Request$Builder;->url:Lokhttp3/HttpUrl;

    .line 113
    .line 114
    const-string v1, "CONNECT"

    .line 115
    .line 116
    invoke-virtual {v0, v1, v3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v10, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 120
    .line 121
    iget-object v2, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 122
    .line 123
    const/4 v3, 0x1

    .line 124
    invoke-static {v2, v3}, Lokhttp3/internal/_UtilJvmKt;->toHostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    const-string v3, "Host"

    .line 129
    .line 130
    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v2, "Proxy-Connection"

    .line 134
    .line 135
    const-string v3, "Keep-Alive"

    .line 136
    .line 137
    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v2, "User-Agent"

    .line 141
    .line 142
    const-string v3, "okhttp/5.4.0"

    .line 143
    .line 144
    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance v3, Lokhttp3/Request;

    .line 148
    .line 149
    invoke-direct {v3, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 150
    .line 151
    .line 152
    sget-object v0, Lokhttp3/ResponseBody;->EMPTY:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 153
    .line 154
    new-instance v2, Lokhttp3/Headers$Builder;

    .line 155
    .line 156
    const/4 v4, 0x0

    .line 157
    invoke-direct {v2, v4}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 158
    .line 159
    .line 160
    const-string v4, "Proxy-Authenticate"

    .line 161
    .line 162
    invoke-static {v4}, Lorg/jsoup/Jsoup;->headersCheckName(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string v5, "OkHttp-Preemptive"

    .line 166
    .line 167
    invoke-static {v5, v4}, Lorg/jsoup/Jsoup;->headersCheckValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v4}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v2, v4, v5}, Lorg/jsoup/Jsoup;->commonAddLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    iget-object v0, v1, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/HttpUrl$Companion;

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :goto_3
    new-instance v0, Lokhttp3/internal/connection/ConnectPlan;

    .line 189
    .line 190
    iget-object v1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 191
    .line 192
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 193
    .line 194
    iget v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->readTimeoutMillis:I

    .line 195
    .line 196
    iget v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->writeTimeoutMillis:I

    .line 197
    .line 198
    iget v5, p0, Lokhttp3/internal/connection/RealRoutePlanner;->socketConnectTimeoutMillis:I

    .line 199
    .line 200
    iget v6, p0, Lokhttp3/internal/connection/RealRoutePlanner;->socketReadTimeoutMillis:I

    .line 201
    .line 202
    iget-boolean v7, p0, Lokhttp3/internal/connection/RealRoutePlanner;->retryOnConnectionFailure:Z

    .line 203
    .line 204
    iget-object v8, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 205
    .line 206
    const/4 v13, -0x1

    .line 207
    const/4 v14, 0x0

    .line 208
    move-object v9, p0

    .line 209
    move-object/from16 v11, p2

    .line 210
    .line 211
    invoke-direct/range {v0 .. v14}, Lokhttp3/internal/connection/ConnectPlan;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIZLokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;Lokhttp3/Request;IZ)V

    .line 212
    .line 213
    .line 214
    return-object v0

    .line 215
    :cond_6
    new-instance p0, Ljava/net/UnknownServiceException;

    .line 216
    .line 217
    const-string v0, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    .line 218
    .line 219
    invoke-direct {p0, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw p0
.end method

.method public final planReusePooledConnection$okhttp(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;
    .locals 10

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 2
    .line 3
    iget-boolean v1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->doExtensiveHealthChecks:Z

    .line 4
    .line 5
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->address:Lokhttp3/Address;

    .line 6
    .line 7
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lokhttp3/internal/connection/ConnectPlan;->isReady()Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    move v6, v5

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v6, v4

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/io/Serializable;

    .line 26
    .line 27
    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    const/4 v8, 0x0

    .line 41
    if-eqz v7, :cond_6

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Lokhttp3/internal/connection/RealConnection;

    .line 48
    .line 49
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    monitor-enter v7

    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    :try_start_0
    iget-object v9, v7, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 56
    .line 57
    if-eqz v9, :cond_2

    .line 58
    .line 59
    move v9, v5

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v9, v4

    .line 62
    :goto_2
    if-nez v9, :cond_3

    .line 63
    .line 64
    :goto_3
    move v9, v4

    .line 65
    goto :goto_4

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_5

    .line 68
    :cond_3
    invoke-virtual {v7, v2, p2}, Lokhttp3/internal/connection/RealConnection;->isEligible$okhttp(Lokhttp3/Address;Ljava/util/List;)Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-nez v9, :cond_4

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    invoke-virtual {v3, v7}, Lokhttp3/internal/connection/RealCall;->acquireConnectionNoEvents(Lokhttp3/internal/connection/RealConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    move v9, v5

    .line 79
    :goto_4
    monitor-exit v7

    .line 80
    if-eqz v9, :cond_1

    .line 81
    .line 82
    invoke-virtual {v7, v1}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-eqz v9, :cond_5

    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_5
    monitor-enter v7

    .line 90
    :try_start_1
    iput-boolean v5, v7, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 91
    .line 92
    invoke-virtual {v3}, Lokhttp3/internal/connection/RealCall;->releaseConnectionNoEvents$okhttp()Ljava/net/Socket;

    .line 93
    .line 94
    .line 95
    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    monitor-exit v7

    .line 97
    if-eqz v8, :cond_1

    .line 98
    .line 99
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt;->closeQuietly(Ljava/net/Socket;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    monitor-exit v7

    .line 105
    throw p0

    .line 106
    :goto_5
    monitor-exit v7

    .line 107
    throw p0

    .line 108
    :cond_6
    move-object v7, v8

    .line 109
    :goto_6
    if-nez v7, :cond_7

    .line 110
    .line 111
    return-object v8

    .line 112
    :cond_7
    if-eqz p1, :cond_8

    .line 113
    .line 114
    iget-object p2, p1, Lokhttp3/internal/connection/ConnectPlan;->route:Lokhttp3/Route;

    .line 115
    .line 116
    iput-object p2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->nextRouteToTry:Lokhttp3/Route;

    .line 117
    .line 118
    iget-object p1, p1, Lokhttp3/internal/connection/ConnectPlan;->javaNetSocket:Ljava/net/Socket;

    .line 119
    .line 120
    if-eqz p1, :cond_8

    .line 121
    .line 122
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->closeQuietly(Ljava/net/Socket;)V

    .line 123
    .line 124
    .line 125
    :cond_8
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 126
    .line 127
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    new-instance p0, Lokhttp3/internal/connection/ReusePlan;

    .line 133
    .line 134
    invoke-direct {p0, v7}, Lokhttp3/internal/connection/ReusePlan;-><init>(Lokhttp3/internal/connection/RealConnection;)V

    .line 135
    .line 136
    .line 137
    return-object p0
.end method

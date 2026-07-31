.class public final Lokhttp3/internal/connection/RealRoutePlanner;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


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

.field public routeSelector:Lcoil3/intercept/RealInterceptorChain;

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
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 11
    .line 12
    iput-object p2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 13
    .line 14
    iput p3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->readTimeoutMillis:I

    .line 15
    .line 16
    iput p4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->writeTimeoutMillis:I

    .line 17
    .line 18
    iput p5, p0, Lokhttp3/internal/connection/RealRoutePlanner;->socketConnectTimeoutMillis:I

    .line 19
    .line 20
    iput p6, p0, Lokhttp3/internal/connection/RealRoutePlanner;->socketReadTimeoutMillis:I

    .line 21
    .line 22
    iput-boolean p7, p0, Lokhttp3/internal/connection/RealRoutePlanner;->retryOnConnectionFailure:Z

    .line 23
    .line 24
    iput-boolean p8, p0, Lokhttp3/internal/connection/RealRoutePlanner;->fastFallback:Z

    .line 25
    .line 26
    iput-object p9, p0, Lokhttp3/internal/connection/RealRoutePlanner;->address:Lokhttp3/Address;

    .line 27
    .line 28
    iput-object p10, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeDatabase:Lokhttp3/ConnectionPool;

    .line 29
    .line 30
    iput-object p11, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 31
    .line 32
    iget-object p1, p12, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 33
    .line 34
    const-string p2, "GET"

    .line 35
    .line 36
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    xor-int/lit8 p1, p1, 0x1

    .line 41
    .line 42
    iput-boolean p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->doExtensiveHealthChecks:Z

    .line 43
    .line 44
    new-instance p1, Lkotlin/collections/ArrayDeque;

    .line 45
    .line 46
    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->deferredPlans:Lkotlin/collections/ArrayDeque;

    .line 50
    .line 51
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
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeSelector:Lcoil3/intercept/RealInterceptorChain;

    .line 76
    .line 77
    if-nez p0, :cond_7

    .line 78
    .line 79
    :goto_1
    return v1

    .line 80
    :cond_7
    invoke-virtual {p0}, Lcoil3/intercept/RealInterceptorChain;->hasNext()Z

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
    if-nez v0, :cond_1

    .line 7
    .line 8
    :cond_0
    :goto_0
    move-object v2, v1

    .line 9
    goto :goto_4

    .line 10
    :cond_1
    iget-boolean v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->doExtensiveHealthChecks:Z

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    monitor-enter v0

    .line 17
    iget-boolean v3, v0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    :try_start_0
    iput-boolean v4, v0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 23
    .line 24
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 25
    .line 26
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealCall;->releaseConnectionNoEvents$okhttp()Ljava/net/Socket;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_3

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto/16 :goto_5

    .line 33
    .line 34
    :cond_2
    if-nez v3, :cond_5

    .line 35
    .line 36
    iget-object v2, v0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 37
    .line 38
    iget-object v2, v2, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 39
    .line 40
    iget-object v2, v2, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 41
    .line 42
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->address:Lokhttp3/Address;

    .line 43
    .line 44
    iget-object v3, v3, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 45
    .line 46
    iget v5, v2, Lokhttp3/HttpUrl;->port:I

    .line 47
    .line 48
    iget v6, v3, Lokhttp3/HttpUrl;->port:I

    .line 49
    .line 50
    if-ne v5, v6, :cond_3

    .line 51
    .line 52
    iget-object v2, v2, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v3, v3, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    const/4 v4, 0x0

    .line 64
    :goto_1
    if-nez v4, :cond_4

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    move-object v2, v1

    .line 68
    goto :goto_3

    .line 69
    :cond_5
    :goto_2
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 70
    .line 71
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealCall;->releaseConnectionNoEvents$okhttp()Ljava/net/Socket;

    .line 72
    .line 73
    .line 74
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_3
    monitor-exit v0

    .line 76
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 77
    .line 78
    iget-object v3, v3, Lokhttp3/internal/connection/RealCall;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 79
    .line 80
    if-eqz v3, :cond_7

    .line 81
    .line 82
    if-nez v2, :cond_6

    .line 83
    .line 84
    new-instance v2, Lokhttp3/internal/connection/ReusePlan;

    .line 85
    .line 86
    invoke-direct {v2, v0}, Lokhttp3/internal/connection/ReusePlan;-><init>(Lokhttp3/internal/connection/RealConnection;)V

    .line 87
    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_6
    const-string p0, "Check failed."

    .line 91
    .line 92
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_7
    if-eqz v2, :cond_0

    .line 97
    .line 98
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt;->closeQuietly(Ljava/net/Socket;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :goto_4
    if-eqz v2, :cond_8

    .line 103
    .line 104
    return-object v2

    .line 105
    :cond_8
    invoke-virtual {p0, v1, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->planReusePooledConnection$okhttp(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_9

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_9
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->deferredPlans:Lkotlin/collections/ArrayDeque;

    .line 113
    .line 114
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_a

    .line 119
    .line 120
    iget-object p0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->deferredPlans:Lkotlin/collections/ArrayDeque;

    .line 121
    .line 122
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 127
    .line 128
    return-object p0

    .line 129
    :cond_a
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->planConnect$okhttp()Lokhttp3/internal/connection/ConnectPlan;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v1, v0, Lokhttp3/internal/connection/ConnectPlan;->routes:Ljava/util/List;

    .line 134
    .line 135
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->planReusePooledConnection$okhttp(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    if-eqz p0, :cond_b

    .line 140
    .line 141
    return-object p0

    .line 142
    :cond_b
    return-object v0

    .line 143
    :goto_5
    monitor-exit v0

    .line 144
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
    invoke-static {}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m()V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeSelector:Lcoil3/intercept/RealInterceptorChain;

    .line 63
    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    new-instance v0, Lcoil3/intercept/RealInterceptorChain;

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
    invoke-direct {v0, v2, v3, v4, v5}, Lcoil3/intercept/RealInterceptorChain;-><init>(Lokhttp3/Address;Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealCall;Z)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeSelector:Lcoil3/intercept/RealInterceptorChain;

    .line 80
    .line 81
    :cond_3
    invoke-virtual {v0}, Lcoil3/intercept/RealInterceptorChain;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1f

    .line 86
    .line 87
    invoke-virtual {v0}, Lcoil3/intercept/RealInterceptorChain;->hasNext()Z

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
    iget v3, v0, Lcoil3/intercept/RealInterceptorChain;->index:I

    .line 99
    .line 100
    iget-object v4, v0, Lcoil3/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-ge v3, v4, :cond_1a

    .line 107
    .line 108
    iget-object v3, v0, Lcoil3/intercept/RealInterceptorChain;->initialRequest:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v3, Lokhttp3/Address;

    .line 111
    .line 112
    const-string v4, "No route to "

    .line 113
    .line 114
    iget v5, v0, Lcoil3/intercept/RealInterceptorChain;->index:I

    .line 115
    .line 116
    iget-object v6, v0, Lcoil3/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-ge v5, v6, :cond_19

    .line 123
    .line 124
    iget-object v5, v0, Lcoil3/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 125
    .line 126
    iget v6, v0, Lcoil3/intercept/RealInterceptorChain;->index:I

    .line 127
    .line 128
    add-int/lit8 v7, v6, 0x1

    .line 129
    .line 130
    iput v7, v0, Lcoil3/intercept/RealInterceptorChain;->index:I

    .line 131
    .line 132
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Ljava/net/Proxy;

    .line 137
    .line 138
    new-instance v6, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object v6, v0, Lcoil3/intercept/RealInterceptorChain;->size:Ljava/lang/Object;

    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    sget-object v8, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 150
    .line 151
    if-eq v7, v8, :cond_8

    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    sget-object v8, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 158
    .line 159
    if-ne v7, v8, :cond_5

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_5
    invoke-virtual {v5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    instance-of v8, v7, Ljava/net/InetSocketAddress;

    .line 167
    .line 168
    if-eqz v8, :cond_7

    .line 169
    .line 170
    check-cast v7, Ljava/net/InetSocketAddress;

    .line 171
    .line 172
    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    if-nez v8, :cond_6

    .line 177
    .line 178
    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_6
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    :goto_0
    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    goto :goto_2

    .line 198
    :cond_7
    const-string p0, "Proxy.address() is not an InetSocketAddress: "

    .line 199
    .line 200
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {p0, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    return-object v1

    .line 208
    :cond_8
    :goto_1
    iget-object v7, v3, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 209
    .line 210
    iget-object v8, v7, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 211
    .line 212
    iget v7, v7, Lokhttp3/HttpUrl;->port:I

    .line 213
    .line 214
    :goto_2
    const/4 v9, 0x1

    .line 215
    if-gt v9, v7, :cond_18

    .line 216
    .line 217
    const/high16 v9, 0x10000

    .line 218
    .line 219
    if-ge v7, v9, :cond_18

    .line 220
    .line 221
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 226
    .line 227
    if-ne v4, v9, :cond_9

    .line 228
    .line 229
    invoke-static {v8, v7}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    goto/16 :goto_9

    .line 237
    .line 238
    :cond_9
    sget-object v4, Lokhttp3/internal/_HostnamesCommonKt;->VERIFY_AS_IP_ADDRESS:Lkotlin/text/Regex;

    .line 239
    .line 240
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    sget-object v4, Lokhttp3/internal/_HostnamesCommonKt;->VERIFY_AS_IP_ADDRESS:Lkotlin/text/Regex;

    .line 244
    .line 245
    invoke-virtual {v4, v8}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-eqz v4, :cond_a

    .line 250
    .line 251
    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-static {v3}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    goto :goto_3

    .line 260
    :cond_a
    :try_start_0
    invoke-static {v8}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    invoke-static {v4}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 268
    .line 269
    .line 270
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    if-nez v9, :cond_17

    .line 276
    .line 277
    move-object v3, v4

    .line 278
    :goto_3
    iget-boolean v4, v0, Lcoil3/intercept/RealInterceptorChain;->isPlaceholderCached:Z

    .line 279
    .line 280
    if-eqz v4, :cond_13

    .line 281
    .line 282
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    const/4 v8, 0x2

    .line 287
    if-ge v4, v8, :cond_b

    .line 288
    .line 289
    goto/16 :goto_7

    .line 290
    .line 291
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    .line 292
    .line 293
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .line 295
    .line 296
    new-instance v8, Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    if-eqz v10, :cond_d

    .line 310
    .line 311
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v10

    .line 315
    move-object v11, v10

    .line 316
    check-cast v11, Ljava/net/InetAddress;

    .line 317
    .line 318
    instance-of v11, v11, Ljava/net/Inet6Address;

    .line 319
    .line 320
    if-eqz v11, :cond_c

    .line 321
    .line 322
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_c
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v9

    .line 334
    if-nez v9, :cond_13

    .line 335
    .line 336
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 337
    .line 338
    .line 339
    move-result v9

    .line 340
    if-eqz v9, :cond_e

    .line 341
    .line 342
    goto :goto_7

    .line 343
    :cond_e
    sget-object v3, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 344
    .line 345
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    invoke-static {}, Landroidx/room/Room;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    :cond_f
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    if-nez v3, :cond_11

    .line 362
    .line 363
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-eqz v3, :cond_10

    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_10
    invoke-static {v9}, Landroidx/room/Room;->build(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    goto :goto_7

    .line 375
    :cond_11
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    if-eqz v3, :cond_12

    .line 380
    .line 381
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    invoke-virtual {v9, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    :cond_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    if-eqz v3, :cond_f

    .line 393
    .line 394
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    invoke-virtual {v9, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    goto :goto_5

    .line 402
    :cond_13
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    if-eqz v4, :cond_14

    .line 411
    .line 412
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    check-cast v4, Ljava/net/InetAddress;

    .line 417
    .line 418
    new-instance v8, Ljava/net/InetSocketAddress;

    .line 419
    .line 420
    invoke-direct {v8, v4, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    goto :goto_8

    .line 427
    :cond_14
    :goto_9
    iget-object v3, v0, Lcoil3/intercept/RealInterceptorChain;->size:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v3, Ljava/util/List;

    .line 430
    .line 431
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    if-eqz v4, :cond_16

    .line 440
    .line 441
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    check-cast v4, Ljava/net/InetSocketAddress;

    .line 446
    .line 447
    new-instance v6, Lokhttp3/Route;

    .line 448
    .line 449
    iget-object v7, v0, Lcoil3/intercept/RealInterceptorChain;->initialRequest:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast v7, Lokhttp3/Address;

    .line 452
    .line 453
    invoke-direct {v6, v7, v5, v4}, Lokhttp3/Route;-><init>(Lokhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 454
    .line 455
    .line 456
    iget-object v4, v0, Lcoil3/intercept/RealInterceptorChain;->request:Ljava/lang/Object;

    .line 457
    .line 458
    check-cast v4, Lokhttp3/ConnectionPool;

    .line 459
    .line 460
    monitor-enter v4

    .line 461
    :try_start_1
    iget-object v7, v4, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v7, Ljava/util/LinkedHashSet;

    .line 464
    .line 465
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    monitor-exit v4

    .line 470
    if-eqz v7, :cond_15

    .line 471
    .line 472
    iget-object v4, v0, Lcoil3/intercept/RealInterceptorChain;->eventListener:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast v4, Ljava/util/ArrayList;

    .line 475
    .line 476
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    goto :goto_a

    .line 480
    :cond_15
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    goto :goto_a

    .line 484
    :catchall_0
    move-exception p0

    .line 485
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    throw p0

    .line 487
    :cond_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    if-nez v3, :cond_4

    .line 492
    .line 493
    goto :goto_b

    .line 494
    :cond_17
    new-instance p0, Ljava/net/UnknownHostException;

    .line 495
    .line 496
    iget-object v0, v3, Lokhttp3/Address;->dns:Lokhttp3/CipherSuite$Companion;

    .line 497
    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    const-string v0, " returned no addresses for "

    .line 507
    .line 508
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-direct {p0, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    throw p0

    .line 522
    :catch_0
    move-exception p0

    .line 523
    new-instance v0, Ljava/net/UnknownHostException;

    .line 524
    .line 525
    const-string v1, "Broken system behaviour for dns lookup of "

    .line 526
    .line 527
    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 535
    .line 536
    .line 537
    throw v0

    .line 538
    :cond_18
    new-instance p0, Ljava/net/SocketException;

    .line 539
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    const/16 v1, 0x3a

    .line 549
    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    const-string v1, "; port is out of range"

    .line 557
    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    invoke-direct {p0, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    throw p0

    .line 569
    :cond_19
    new-instance p0, Ljava/net/SocketException;

    .line 570
    .line 571
    iget-object v1, v3, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 572
    .line 573
    iget-object v1, v1, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 574
    .line 575
    const-string v2, "; exhausted proxy configurations: "

    .line 576
    .line 577
    iget-object v0, v0, Lcoil3/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 578
    .line 579
    new-instance v3, Ljava/lang/StringBuilder;

    .line 580
    .line 581
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-direct {p0, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    throw p0

    .line 601
    :cond_1a
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 602
    .line 603
    .line 604
    move-result v3

    .line 605
    if-eqz v3, :cond_1b

    .line 606
    .line 607
    iget-object v3, v0, Lcoil3/intercept/RealInterceptorChain;->eventListener:Ljava/lang/Object;

    .line 608
    .line 609
    check-cast v3, Ljava/util/ArrayList;

    .line 610
    .line 611
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 612
    .line 613
    .line 614
    iget-object v0, v0, Lcoil3/intercept/RealInterceptorChain;->eventListener:Ljava/lang/Object;

    .line 615
    .line 616
    check-cast v0, Ljava/util/ArrayList;

    .line 617
    .line 618
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 619
    .line 620
    .line 621
    :cond_1b
    new-instance v0, Lokio/PriorityQueue;

    .line 622
    .line 623
    invoke-direct {v0, v2}, Lokio/PriorityQueue;-><init>(Ljava/util/ArrayList;)V

    .line 624
    .line 625
    .line 626
    iput-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeSelection:Lokio/PriorityQueue;

    .line 627
    .line 628
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 629
    .line 630
    iget-boolean v3, v3, Lokhttp3/internal/connection/RealCall;->canceled:Z

    .line 631
    .line 632
    if-nez v3, :cond_1d

    .line 633
    .line 634
    iget v3, v0, Lokio/PriorityQueue;->size:I

    .line 635
    .line 636
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 637
    .line 638
    .line 639
    move-result v4

    .line 640
    if-ge v3, v4, :cond_1c

    .line 641
    .line 642
    iget v1, v0, Lokio/PriorityQueue;->size:I

    .line 643
    .line 644
    add-int/lit8 v3, v1, 0x1

    .line 645
    .line 646
    iput v3, v0, Lokio/PriorityQueue;->size:I

    .line 647
    .line 648
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    check-cast v0, Lokhttp3/Route;

    .line 653
    .line 654
    invoke-virtual {p0, v0, v2}, Lokhttp3/internal/connection/RealRoutePlanner;->planConnectToRoute$okhttp(Lokhttp3/Route;Ljava/util/ArrayList;)Lokhttp3/internal/connection/ConnectPlan;

    .line 655
    .line 656
    .line 657
    move-result-object p0

    .line 658
    return-object p0

    .line 659
    :cond_1c
    invoke-static {}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m()V

    .line 660
    .line 661
    .line 662
    return-object v1

    .line 663
    :cond_1d
    const-string p0, "Canceled"

    .line 664
    .line 665
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    return-object v1

    .line 669
    :cond_1e
    invoke-static {}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m()V

    .line 670
    .line 671
    .line 672
    return-object v1

    .line 673
    :cond_1f
    const-string p0, "exhausted all routes"

    .line 674
    .line 675
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    return-object v1
.end method

.method public final planConnectToRoute$okhttp(Lokhttp3/Route;Ljava/util/ArrayList;)Lokhttp3/internal/connection/ConnectPlan;
    .locals 15

    .line 1
    move-object/from16 v10, p1

    .line 2
    .line 3
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v10, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 7
    .line 8
    iget-object v1, v0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget-object v0, v0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    .line 13
    .line 14
    sget-object v1, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, v10, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 23
    .line 24
    iget-object v0, v0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 25
    .line 26
    iget-object v0, v0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 27
    .line 28
    sget-object v1, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 29
    .line 30
    sget-object v1, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p0, Ljava/net/UnknownServiceException;

    .line 40
    .line 41
    const-string v1, "CLEARTEXT communication to "

    .line 42
    .line 43
    const-string v2, " not permitted by network security policy"

    .line 44
    .line 45
    invoke-static {v1, v0, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    new-instance p0, Ljava/net/UnknownServiceException;

    .line 54
    .line 55
    const-string v0, "CLEARTEXT communication not enabled for client"

    .line 56
    .line 57
    invoke-direct {p0, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_2
    iget-object v0, v0, Lokhttp3/Address;->protocols:Ljava/util/List;

    .line 62
    .line 63
    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    .line 64
    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_6

    .line 70
    .line 71
    :goto_0
    iget-object v0, v10, Lokhttp3/Route;->proxy:Ljava/net/Proxy;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    if-eq v0, v1, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object v0, v10, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 84
    .line 85
    iget-object v1, v0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 86
    .line 87
    if-nez v1, :cond_5

    .line 88
    .line 89
    iget-object v0, v0, Lokhttp3/Address;->protocols:Ljava/util/List;

    .line 90
    .line 91
    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    .line 92
    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    :goto_1
    move-object v12, v2

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    :goto_2
    new-instance v0, Lokhttp3/Request$Builder;

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-direct {v0, v1}, Lokhttp3/Request$Builder;-><init>(I)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v10, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 109
    .line 110
    iget-object v1, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 111
    .line 112
    iput-object v1, v0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 113
    .line 114
    const-string v1, "CONNECT"

    .line 115
    .line 116
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v10, Lokhttp3/Route;->address:Lokhttp3/Address;

    .line 120
    .line 121
    iget-object v1, v1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 122
    .line 123
    const/4 v2, 0x1

    .line 124
    invoke-static {v1, v2}, Lokhttp3/internal/_UtilJvmKt;->toHostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const-string v2, "Host"

    .line 129
    .line 130
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v1, "Proxy-Connection"

    .line 134
    .line 135
    const-string v2, "Keep-Alive"

    .line 136
    .line 137
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v1, "User-Agent"

    .line 141
    .line 142
    const-string v2, "okhttp/5.3.2"

    .line 143
    .line 144
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance v2, Lokhttp3/Request;

    .line 148
    .line 149
    invoke-direct {v2, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lokhttp3/Response$Builder;

    .line 153
    .line 154
    invoke-direct {v0}, Lokhttp3/Response$Builder;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object v2, v0, Lokhttp3/Response$Builder;->request:Lokhttp3/Request;

    .line 158
    .line 159
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    iput-object v1, v0, Lokhttp3/Response$Builder;->protocol:Lokhttp3/Protocol;

    .line 165
    .line 166
    const/16 v1, 0x197

    .line 167
    .line 168
    iput v1, v0, Lokhttp3/Response$Builder;->code:I

    .line 169
    .line 170
    const-string v1, "Preemptive Authenticate"

    .line 171
    .line 172
    iput-object v1, v0, Lokhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 173
    .line 174
    const-wide/16 v3, -0x1

    .line 175
    .line 176
    iput-wide v3, v0, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 177
    .line 178
    iput-wide v3, v0, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 179
    .line 180
    const-string v1, "Proxy-Authenticate"

    .line 181
    .line 182
    const-string v3, "OkHttp-Preemptive"

    .line 183
    .line 184
    invoke-virtual {v0, v1, v3}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :goto_3
    new-instance v0, Lokhttp3/internal/connection/ConnectPlan;

    .line 192
    .line 193
    iget-object v1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 194
    .line 195
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 196
    .line 197
    iget v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->readTimeoutMillis:I

    .line 198
    .line 199
    iget v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->writeTimeoutMillis:I

    .line 200
    .line 201
    iget v5, p0, Lokhttp3/internal/connection/RealRoutePlanner;->socketConnectTimeoutMillis:I

    .line 202
    .line 203
    iget v6, p0, Lokhttp3/internal/connection/RealRoutePlanner;->socketReadTimeoutMillis:I

    .line 204
    .line 205
    iget-boolean v7, p0, Lokhttp3/internal/connection/RealRoutePlanner;->retryOnConnectionFailure:Z

    .line 206
    .line 207
    iget-object v8, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 208
    .line 209
    const/4 v13, -0x1

    .line 210
    const/4 v14, 0x0

    .line 211
    move-object v9, p0

    .line 212
    move-object/from16 v11, p2

    .line 213
    .line 214
    invoke-direct/range {v0 .. v14}, Lokhttp3/internal/connection/ConnectPlan;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIZLokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;Lokhttp3/Request;IZ)V

    .line 215
    .line 216
    .line 217
    return-object v0

    .line 218
    :cond_6
    new-instance p0, Ljava/net/UnknownServiceException;

    .line 219
    .line 220
    const-string v0, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    .line 221
    .line 222
    invoke-direct {p0, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
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
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    const/4 v8, 0x0

    .line 36
    if-eqz v7, :cond_6

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    check-cast v7, Lokhttp3/internal/connection/RealConnection;

    .line 43
    .line 44
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    monitor-enter v7

    .line 48
    if-eqz v6, :cond_3

    .line 49
    .line 50
    :try_start_0
    iget-object v9, v7, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 51
    .line 52
    if-eqz v9, :cond_2

    .line 53
    .line 54
    move v9, v5

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move v9, v4

    .line 57
    :goto_2
    if-nez v9, :cond_3

    .line 58
    .line 59
    :goto_3
    move v9, v4

    .line 60
    goto :goto_4

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_5

    .line 63
    :cond_3
    invoke-virtual {v7, v2, p2}, Lokhttp3/internal/connection/RealConnection;->isEligible$okhttp(Lokhttp3/Address;Ljava/util/List;)Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-nez v9, :cond_4

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    invoke-virtual {v3, v7}, Lokhttp3/internal/connection/RealCall;->acquireConnectionNoEvents(Lokhttp3/internal/connection/RealConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    move v9, v5

    .line 74
    :goto_4
    monitor-exit v7

    .line 75
    if-eqz v9, :cond_1

    .line 76
    .line 77
    invoke-virtual {v7, v1}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_5

    .line 82
    .line 83
    goto :goto_6

    .line 84
    :cond_5
    monitor-enter v7

    .line 85
    :try_start_1
    iput-boolean v5, v7, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 86
    .line 87
    invoke-virtual {v3}, Lokhttp3/internal/connection/RealCall;->releaseConnectionNoEvents$okhttp()Ljava/net/Socket;

    .line 88
    .line 89
    .line 90
    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    monitor-exit v7

    .line 92
    if-eqz v8, :cond_1

    .line 93
    .line 94
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt;->closeQuietly(Ljava/net/Socket;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catchall_1
    move-exception p0

    .line 99
    monitor-exit v7

    .line 100
    throw p0

    .line 101
    :goto_5
    monitor-exit v7

    .line 102
    throw p0

    .line 103
    :cond_6
    move-object v7, v8

    .line 104
    :goto_6
    if-nez v7, :cond_7

    .line 105
    .line 106
    return-object v8

    .line 107
    :cond_7
    if-eqz p1, :cond_8

    .line 108
    .line 109
    iget-object p2, p1, Lokhttp3/internal/connection/ConnectPlan;->route:Lokhttp3/Route;

    .line 110
    .line 111
    iput-object p2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->nextRouteToTry:Lokhttp3/Route;

    .line 112
    .line 113
    iget-object p0, p1, Lokhttp3/internal/connection/ConnectPlan;->javaNetSocket:Ljava/net/Socket;

    .line 114
    .line 115
    if-eqz p0, :cond_8

    .line 116
    .line 117
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt;->closeQuietly(Ljava/net/Socket;)V

    .line 118
    .line 119
    .line 120
    :cond_8
    new-instance p0, Lokhttp3/internal/connection/ReusePlan;

    .line 121
    .line 122
    invoke-direct {p0, v7}, Lokhttp3/internal/connection/ReusePlan;-><init>(Lokhttp3/internal/connection/RealConnection;)V

    .line 123
    .line 124
    .line 125
    return-object p0
.end method

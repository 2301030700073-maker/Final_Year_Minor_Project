.class public final Lokhttp3/internal/connection/RouteSelector;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy;


# instance fields
.field public final address:Ljava/lang/Object;

.field public fastFallback:Z

.field public inetSocketAddresses:Ljava/lang/Object;

.field public nextProxyIndex:I

.field public final postponedRoutes:Ljava/lang/Object;

.field public final proxies:Ljava/lang/Object;

.field public final routeDatabase:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/RouteSelector;->address:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lokhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    .line 92
    iput-boolean v0, p0, Lokhttp3/internal/connection/RouteSelector;->fastFallback:Z

    .line 93
    new-instance v1, Landroidx/camera/core/SafeCloseImageReaderProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0}, Landroidx/camera/core/SafeCloseImageReaderProxy$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lokhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/lang/Object;

    .line 94
    iput-object p1, p0, Lokhttp3/internal/connection/RouteSelector;->routeDatabase:Ljava/lang/Object;

    .line 95
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/RouteSelector;->proxies:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/internal/connection/RealCall;Z)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokhttp3/internal/connection/RouteSelector;->address:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lokhttp3/internal/connection/RouteSelector;->routeDatabase:Ljava/lang/Object;

    .line 10
    .line 11
    iput-boolean p4, p0, Lokhttp3/internal/connection/RouteSelector;->fastFallback:Z

    .line 12
    .line 13
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 14
    .line 15
    iput-object p2, p0, Lokhttp3/internal/connection/RouteSelector;->proxies:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p2, p0, Lokhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/lang/Object;

    .line 18
    .line 19
    new-instance p2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lokhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object p2, p1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    const/4 p4, 0x1

    .line 40
    const/4 v0, 0x0

    .line 41
    if-nez p3, :cond_0

    .line 42
    .line 43
    new-array p1, p4, [Ljava/net/Proxy;

    .line 44
    .line 45
    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 46
    .line 47
    aput-object p2, p1, v0

    .line 48
    .line 49
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    iget-object p1, p1, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    :goto_0
    new-array p1, p4, [Ljava/net/Proxy;

    .line 75
    .line 76
    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 77
    .line 78
    aput-object p2, p1, v0

    .line 79
    .line 80
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_1
    iput-object p1, p0, Lokhttp3/internal/connection/RouteSelector;->proxies:Ljava/lang/Object;

    .line 85
    .line 86
    iput v0, p0, Lokhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method public acquireLatestImage()Landroidx/camera/core/ImageProxy;
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector;->address:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/RouteSelector;->routeDatabase:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Landroidx/camera/core/impl/ImageReaderProxy;

    .line 7
    .line 8
    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireLatestImage()Landroidx/camera/core/ImageProxy;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget v2, p0, Lokhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    iput v2, p0, Lokhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    .line 19
    .line 20
    new-instance v2, Landroidx/camera/core/SingleCloseImageProxy;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Landroidx/camera/core/SingleCloseImageProxy;-><init>(Landroidx/camera/core/ImageProxy;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lokhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Landroidx/camera/core/SafeCloseImageReaderProxy$$ExternalSyntheticLambda1;

    .line 28
    .line 29
    invoke-virtual {v2, p0}, Landroidx/camera/core/ForwardingImageProxy;->addOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    :goto_0
    monitor-exit v0

    .line 35
    return-object v2

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public acquireNextImage()Landroidx/camera/core/ImageProxy;
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector;->address:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/RouteSelector;->routeDatabase:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Landroidx/camera/core/impl/ImageReaderProxy;

    .line 7
    .line 8
    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireNextImage()Landroidx/camera/core/ImageProxy;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget v2, p0, Lokhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    iput v2, p0, Lokhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    .line 19
    .line 20
    new-instance v2, Landroidx/camera/core/SingleCloseImageProxy;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Landroidx/camera/core/SingleCloseImageProxy;-><init>(Landroidx/camera/core/ImageProxy;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lokhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Landroidx/camera/core/SafeCloseImageReaderProxy$$ExternalSyntheticLambda1;

    .line 28
    .line 29
    invoke-virtual {v2, p0}, Landroidx/camera/core/ForwardingImageProxy;->addOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    :goto_0
    monitor-exit v0

    .line 35
    return-object v2

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public clearOnImageAvailableListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector;->address:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lokhttp3/internal/connection/RouteSelector;->routeDatabase:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Landroidx/camera/core/impl/ImageReaderProxy;

    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/camera/core/impl/ImageReaderProxy;->clearOnImageAvailableListener()V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector;->address:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/RouteSelector;->proxies:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Landroid/view/Surface;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object p0, p0, Lokhttp3/internal/connection/RouteSelector;->routeDatabase:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Landroidx/camera/core/impl/ImageReaderProxy;

    .line 19
    .line 20
    invoke-interface {p0}, Landroidx/camera/core/impl/ImageReaderProxy;->close()V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector;->address:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lokhttp3/internal/connection/RouteSelector;->routeDatabase:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Landroidx/camera/core/impl/ImageReaderProxy;

    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/camera/core/impl/ImageReaderProxy;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public getImageFormat()I
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector;->address:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lokhttp3/internal/connection/RouteSelector;->routeDatabase:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Landroidx/camera/core/impl/ImageReaderProxy;

    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/camera/core/impl/ImageReaderProxy;->getImageFormat()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public getMaxImages()I
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector;->address:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lokhttp3/internal/connection/RouteSelector;->routeDatabase:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Landroidx/camera/core/impl/ImageReaderProxy;

    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/camera/core/impl/ImageReaderProxy;->getMaxImages()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector;->address:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lokhttp3/internal/connection/RouteSelector;->routeDatabase:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Landroidx/camera/core/impl/ImageReaderProxy;

    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/camera/core/impl/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector;->address:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lokhttp3/internal/connection/RouteSelector;->routeDatabase:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Landroidx/camera/core/impl/ImageReaderProxy;

    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/camera/core/impl/ImageReaderProxy;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/RouteSelector;->proxies:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lokhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public safeClose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector;->address:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/connection/RouteSelector;->fastFallback:Z

    .line 6
    .line 7
    iget-object v1, p0, Lokhttp3/internal/connection/RouteSelector;->routeDatabase:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroidx/camera/core/impl/ImageReaderProxy;

    .line 10
    .line 11
    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->clearOnImageAvailableListener()V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lokhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lokhttp3/internal/connection/RouteSelector;->close()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RouteSelector;->address:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/RouteSelector;->routeDatabase:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Landroidx/camera/core/impl/ImageReaderProxy;

    .line 7
    .line 8
    new-instance v2, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-direct {v2, v3, p0, p1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v2, p2}, Landroidx/camera/core/impl/ImageReaderProxy;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

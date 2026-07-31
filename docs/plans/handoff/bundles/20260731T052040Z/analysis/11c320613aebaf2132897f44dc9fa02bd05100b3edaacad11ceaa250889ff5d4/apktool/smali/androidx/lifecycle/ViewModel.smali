.class public abstract Landroidx/lifecycle/ViewModel;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final impl:Lcom/livefront/bridge/disk/FileDiskHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/livefront/bridge/disk/FileDiskHandler;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/livefront/bridge/disk/FileDiskHandler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->impl:Lcom/livefront/bridge/disk/FileDiskHandler;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final addCloseable(Ljava/lang/String;Ljava/lang/AutoCloseable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/ViewModel;->impl:Lcom/livefront/bridge/disk/FileDiskHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mIsLoadedOrTimedOut:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p2}, Lcom/livefront/bridge/disk/FileDiskHandler;->closeWithRuntimeException(Ljava/lang/AutoCloseable;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mDirectory:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mPendingLoadFuture:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    invoke-static {p0}, Lcom/livefront/bridge/disk/FileDiskHandler;->closeWithRuntimeException(Ljava/lang/AutoCloseable;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0

    .line 35
    throw p0

    .line 36
    :cond_1
    return-void
.end method

.method public final clear$lifecycle_viewmodel()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->impl:Lcom/livefront/bridge/disk/FileDiskHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/livefront/bridge/disk/FileDiskHandler;->mIsLoadedOrTimedOut:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lcom/livefront/bridge/disk/FileDiskHandler;->mIsLoadedOrTimedOut:Z

    .line 12
    .line 13
    iget-object v1, v0, Lcom/livefront/bridge/disk/FileDiskHandler;->mDirectory:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, v0, Lcom/livefront/bridge/disk/FileDiskHandler;->mPendingLoadFuture:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/AutoCloseable;

    .line 41
    .line 42
    invoke-static {v3}, Lcom/livefront/bridge/disk/FileDiskHandler;->closeWithRuntimeException(Ljava/lang/AutoCloseable;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    iget-object v2, v0, Lcom/livefront/bridge/disk/FileDiskHandler;->mKeyByteMap:Ljava/io/Serializable;

    .line 49
    .line 50
    check-cast v2, Ljava/util/LinkedHashSet;

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Ljava/lang/AutoCloseable;

    .line 67
    .line 68
    invoke-static {v3}, Lcom/livefront/bridge/disk/FileDiskHandler;->closeWithRuntimeException(Ljava/lang/AutoCloseable;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v0, v0, Lcom/livefront/bridge/disk/FileDiskHandler;->mKeyByteMap:Ljava/io/Serializable;

    .line 73
    .line 74
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    monitor-exit v1

    .line 80
    goto :goto_3

    .line 81
    :goto_2
    monitor-exit v1

    .line 82
    throw p0

    .line 83
    :cond_3
    :goto_3
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final getCloseable(Ljava/lang/String;)Ljava/lang/AutoCloseable;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/ViewModel;->impl:Lcom/livefront/bridge/disk/FileDiskHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mDirectory:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/livefront/bridge/disk/FileDiskHandler;->mPendingLoadFuture:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0

    .line 24
    throw p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public onCleared()V
    .locals 0

    .line 1
    return-void
.end method

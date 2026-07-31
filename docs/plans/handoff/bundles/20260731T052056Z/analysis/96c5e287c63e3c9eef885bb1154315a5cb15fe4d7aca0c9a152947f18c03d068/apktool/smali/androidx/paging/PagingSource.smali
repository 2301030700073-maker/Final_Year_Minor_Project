.class public abstract Landroidx/paging/PagingSource;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final invalidateCallbackTracker:Landroidx/compose/runtime/Latch;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/Latch;

    .line 5
    .line 6
    new-instance v1, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2}, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroidx/compose/runtime/Latch;-><init>(Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/paging/PagingSource;->invalidateCallbackTracker:Landroidx/compose/runtime/Latch;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public abstract getRefreshKey(Landroidx/paging/PagingState;)V
.end method

.method public final invalidate()V
    .locals 6

    .line 1
    const-string v0, "Paging"

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/paging/PagingSource;->invalidateCallbackTracker:Landroidx/compose/runtime/Latch;

    .line 4
    .line 5
    iget-boolean v2, v1, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v2, v1, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Landroidx/work/impl/AutoMigration_14_15;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    iget-boolean v4, v1, Landroidx/compose/runtime/Latch;->_isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    monitor-exit v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 v3, 0x1

    .line 23
    :try_start_1
    iput-boolean v3, v1, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 24
    .line 25
    iget-object v4, v1, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v4, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget-object v5, v1, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v5, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit v2

    .line 41
    iget-object v1, v1, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v1, v4}, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 64
    .line 65
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    const/4 v1, 0x3

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v2, "Invalidated PagingSource "

    .line 79
    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-static {v0, p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    :cond_3
    return-void

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    monitor-exit v2

    .line 97
    throw p0
.end method

.method public abstract load(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
.end method

.method public final unregisterInvalidatedCallback(Landroidx/room/RoomDatabase$closeBarrier$1;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/paging/PagingSource;->invalidateCallbackTracker:Landroidx/compose/runtime/Latch;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/work/impl/AutoMigration_14_15;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
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

.class public abstract Lio/reactivex/rxjava3/core/Single;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleSource;


# virtual methods
.method public final blockingGet()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->blockingGet()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Single;->subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    const-string/jumbo p1, "subscribeActual failed"

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    throw p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    throw p0
.end method

.method public abstract subscribeActual(Lio/reactivex/rxjava3/core/SingleObserver;)V
.end method

.method public final subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;
    .locals 2

    .line 1
    const-string v0, "scheduler is null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/Scheduler;I)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

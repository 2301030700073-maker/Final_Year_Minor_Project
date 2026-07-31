.class public abstract Lio/reactivex/rxjava3/core/Flowable;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/reactivestreams/Publisher;


# static fields
.field public static final BUFFER_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "rx3.buffer-size"

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sput v0, Lio/reactivex/rxjava3/core/Flowable;->BUFFER_SIZE:I

    .line 19
    .line 20
    return-void
.end method

.method public static combineLatest(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lorg/reactivestreams/Publisher;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    aput-object p1, v0, p0

    .line 9
    .line 10
    new-instance p0, Lokhttp3/ConnectionPool;

    .line 11
    .line 12
    const/16 p1, 0xf

    .line 13
    .line 14
    invoke-direct {p0, p2, p1}, Lokhttp3/ConnectionPool;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    const-string p1, "bufferSize"

    .line 18
    .line 19
    sget p2, Lio/reactivex/rxjava3/core/Flowable;->BUFFER_SIZE:I

    .line 20
    .line 21
    invoke-static {p2, p1}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;

    .line 25
    .line 26
    invoke-direct {p1, v0, p0, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;-><init>([Lorg/reactivestreams/Publisher;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method

.method public static varargs concatArray([Lorg/reactivestreams/Publisher;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableEmpty;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableEmpty;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    array-length v0, p0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    aget-object p0, p0, v0

    .line 13
    .line 14
    instance-of v0, p0, Lio/reactivex/rxjava3/core/Flowable;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p0, Lio/reactivex/rxjava3/core/Flowable;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    const-string v0, "publisher is null"

    .line 22
    .line 23
    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray;

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray;

    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method


# virtual methods
.method public final blockingFirst()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/subscribers/BlockingFirstSubscriber;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    cmp-long p0, v1, v3

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    iget-object v1, v0, Lio/reactivex/rxjava3/internal/subscribers/BlockingFirstSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 26
    .line 27
    sget-object v2, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;

    .line 28
    .line 29
    iput-object v2, v0, Lio/reactivex/rxjava3/internal/subscribers/BlockingFirstSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {v1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    throw p0

    .line 41
    :cond_1
    :goto_0
    iget-object p0, v0, Lio/reactivex/rxjava3/internal/subscribers/BlockingFirstSubscriber;->error:Ljava/lang/Throwable;

    .line 42
    .line 43
    if-nez p0, :cond_3

    .line 44
    .line 45
    iget-object p0, v0, Lio/reactivex/rxjava3/internal/subscribers/BlockingFirstSubscriber;->value:Ljava/lang/Object;

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_2
    invoke-static {}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m()V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return-object p0

    .line 55
    :cond_3
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    throw p0
.end method

.method public final flatMap(Lio/reactivex/rxjava3/functions/Function;II)Lio/reactivex/rxjava3/core/Flowable;
    .locals 1

    .line 1
    const-string v0, "maxConcurrency"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bufferSize"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p0, Lio/reactivex/rxjava3/operators/ScalarSupplier;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p0, Lio/reactivex/rxjava3/operators/ScalarSupplier;

    .line 16
    .line 17
    invoke-interface {p0}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    sget-object p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableEmpty;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableEmpty;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMapPublisher;

    .line 27
    .line 28
    const/4 p3, 0x1

    .line 29
    invoke-direct {p2, p0, p1, p3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMapPublisher;-><init>(Ljava/lang/Object;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 30
    .line 31
    .line 32
    return-object p2

    .line 33
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;

    .line 34
    .line 35
    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Function;II)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public final observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;
    .locals 3

    .line 1
    const-string v0, "scheduler is null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "bufferSize"

    .line 7
    .line 8
    sget v1, Lio/reactivex/rxjava3/core/Flowable;->BUFFER_SIZE:I

    .line 9
    .line 10
    invoke-static {v1, v0}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v0, p0, p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;-><init>(Lio/reactivex/rxjava3/core/Flowable;Ljava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final startWithItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 2

    .line 1
    const-string v0, "item is null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableJust;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableJust;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    new-array p1, p1, [Lorg/reactivestreams/Publisher;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    aput-object v0, p1, v1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-object p0, p1, v0

    .line 19
    .line 20
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Flowable;->concatArray([Lorg/reactivestreams/Publisher;)Lio/reactivex/rxjava3/core/Flowable;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "subscriber is null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Flowable;->subscribeActual(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lkotlin/math/MathKt;->onError(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/NullPointerException;

    .line 19
    .line 20
    const-string v0, "Actually not, but can\'t throw other exceptions due to RS"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :catch_0
    move-exception p0

    .line 30
    throw p0
.end method

.method public final subscribe(Lorg/reactivestreams/Subscriber;)V
    .locals 1

    .line 31
    instance-of v0, p1, Lio/reactivex/rxjava3/core/FlowableSubscriber;

    if-eqz v0, :cond_0

    .line 32
    check-cast p1, Lio/reactivex/rxjava3/core/FlowableSubscriber;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    return-void

    .line 33
    :cond_0
    const-string/jumbo v0, "subscriber is null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    new-instance v0, Lio/reactivex/rxjava3/internal/subscribers/StrictSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/subscribers/StrictSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    return-void
.end method

.method public abstract subscribeActual(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V
.end method

.method public final subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;
    .locals 1

    .line 1
    const-string v0, "scheduler is null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final throttleLatest(J)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest;
    .locals 3

    .line 1
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->COMPUTATION:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;

    .line 2
    .line 3
    const-string/jumbo v1, "unit is null"

    .line 4
    .line 5
    .line 6
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    invoke-static {v2, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string v1, "scheduler is null"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1, p2, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest;-><init>(Lio/reactivex/rxjava3/core/Flowable;JLio/reactivex/rxjava3/core/Scheduler;)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

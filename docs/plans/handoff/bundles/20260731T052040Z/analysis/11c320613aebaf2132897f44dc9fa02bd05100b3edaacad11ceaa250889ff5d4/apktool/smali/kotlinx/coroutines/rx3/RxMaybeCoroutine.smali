.class public final Lkotlinx/coroutines/rx3/RxMaybeCoroutine;
.super Lkotlinx/coroutines/AbstractCoroutine;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final subscriber:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCreate$Emitter;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCreate$Emitter;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lkotlinx/coroutines/AbstractCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/rx3/RxMaybeCoroutine;->subscriber:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCreate$Emitter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCancelled(Ljava/lang/Throwable;Z)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p2, p0, Lkotlinx/coroutines/rx3/RxMaybeCoroutine;->subscriber:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCreate$Emitter;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCreate$Emitter;->tryOnError(Ljava/lang/Throwable;)Z

    .line 4
    .line 5
    .line 6
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p2

    .line 11
    invoke-static {p1, p2}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/AbstractCoroutine;->context:Lkotlin/coroutines/CoroutineContext;

    .line 15
    .line 16
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->handleUndeliverableException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onCompleted(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxMaybeCoroutine;->subscriber:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCreate$Emitter;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCreate$Emitter;->onComplete()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCreate$Emitter;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_0
    iget-object p0, p0, Lkotlinx/coroutines/AbstractCoroutine;->context:Lkotlin/coroutines/CoroutineContext;

    .line 16
    .line 17
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->handleUndeliverableException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

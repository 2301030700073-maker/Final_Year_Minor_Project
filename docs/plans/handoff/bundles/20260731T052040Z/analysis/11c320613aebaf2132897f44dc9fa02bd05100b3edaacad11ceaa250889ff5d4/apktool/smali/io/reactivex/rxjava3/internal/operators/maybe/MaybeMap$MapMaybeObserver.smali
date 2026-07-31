.class public final Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/core/CompletableObserver;
.implements Lio/reactivex/rxjava3/disposables/Disposable;
.implements Lio/reactivex/rxjava3/core/MaybeObserver;


# instance fields
.field public final synthetic $r8$classId:I

.field public final downstream:Ljava/lang/Object;

.field public final mapper:Ljava/lang/Object;

.field public upstream:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/core/MaybeObserver;Ljava/lang/Object;I)V
    .locals 0

    .line 12
    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->$r8$classId:I

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->downstream:Ljava/lang/Object;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->mapper:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->mapper:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->downstream:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 9
    .line 10
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 17
    .line 18
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 19
    .line 20
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 25
    .line 26
    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 31
    .line 32
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 33
    .line 34
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isDisposed()Z
    .locals 1

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 7
    .line 8
    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 14
    .line 15
    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :pswitch_1
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 21
    .line 22
    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :pswitch_2
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 28
    .line 29
    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 3

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    .line 4
    .line 5
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->downstream:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 16
    .line 17
    check-cast v2, Lio/reactivex/rxjava3/core/MaybeObserver;

    .line 18
    .line 19
    invoke-interface {v2}, Lio/reactivex/rxjava3/core/MaybeObserver;->onComplete()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :pswitch_0
    check-cast v2, Lio/reactivex/rxjava3/core/MaybeObserver;

    .line 24
    .line 25
    invoke-interface {v2}, Lio/reactivex/rxjava3/core/MaybeObserver;->onComplete()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    check-cast v2, Lio/reactivex/rxjava3/core/CompletableObserver;

    .line 30
    .line 31
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 32
    .line 33
    if-ne p0, v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-interface {v2}, Lio/reactivex/rxjava3/core/CompletableObserver;->onComplete()V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void

    .line 40
    :pswitch_2
    check-cast v2, Lio/reactivex/rxjava3/core/MaybeObserver;

    .line 41
    .line 42
    invoke-interface {v2}, Lio/reactivex/rxjava3/core/MaybeObserver;->onComplete()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->mapper:Ljava/lang/Object;

    .line 7
    .line 8
    sget-object v5, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    .line 9
    .line 10
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->downstream:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 16
    .line 17
    if-ne v0, v5, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/math/MathKt;->onError(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :try_start_0
    check-cast v4, Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek;

    .line 24
    .line 25
    iget-object v0, v4, Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek;->onErrorCall:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lio/reactivex/rxjava3/exceptions/CompositeException;

    .line 38
    .line 39
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 40
    .line 41
    aput-object p1, v3, v2

    .line 42
    .line 43
    aput-object v0, v3, v1

    .line 44
    .line 45
    invoke-direct {v4, v3}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    move-object p1, v4

    .line 49
    :goto_0
    iput-object v5, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 50
    .line 51
    check-cast v6, Lio/reactivex/rxjava3/core/MaybeObserver;

    .line 52
    .line 53
    invoke-interface {v6, p1}, Lio/reactivex/rxjava3/core/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void

    .line 57
    :pswitch_0
    check-cast v6, Lio/reactivex/rxjava3/core/MaybeObserver;

    .line 58
    .line 59
    invoke-interface {v6, p1}, Lio/reactivex/rxjava3/core/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_1
    check-cast v4, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;

    .line 64
    .line 65
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 66
    .line 67
    if-ne p0, v5, :cond_1

    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/math/MathKt;->onError(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_1
    :try_start_1
    iget-object p0, v4, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->onError:Lio/reactivex/rxjava3/functions/Consumer;

    .line 74
    .line 75
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lio/reactivex/rxjava3/exceptions/CompositeException;

    .line 84
    .line 85
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 86
    .line 87
    aput-object p1, v3, v2

    .line 88
    .line 89
    aput-object p0, v3, v1

    .line 90
    .line 91
    invoke-direct {v0, v3}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    move-object p1, v0

    .line 95
    :goto_2
    check-cast v6, Lio/reactivex/rxjava3/core/CompletableObserver;

    .line 96
    .line 97
    invoke-interface {v6, p1}, Lio/reactivex/rxjava3/core/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :goto_3
    return-void

    .line 101
    :pswitch_2
    check-cast v6, Lio/reactivex/rxjava3/core/MaybeObserver;

    .line 102
    .line 103
    invoke-interface {v6, p1}, Lio/reactivex/rxjava3/core/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 2

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->downstream:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lio/reactivex/rxjava3/core/MaybeObserver;

    .line 9
    .line 10
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 19
    .line 20
    invoke-interface {v1, p0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 33
    .line 34
    check-cast v1, Lio/reactivex/rxjava3/core/MaybeObserver;

    .line 35
    .line 36
    invoke-interface {v1, p0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :pswitch_1
    check-cast v1, Lio/reactivex/rxjava3/core/CompletableObserver;

    .line 41
    .line 42
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->mapper:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;

    .line 45
    .line 46
    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;->onSubscribe:Lio/reactivex/rxjava3/functions/Consumer;

    .line 47
    .line 48
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 52
    .line 53
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 60
    .line 61
    invoke-interface {v1, p0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 70
    .line 71
    .line 72
    sget-object p1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    .line 73
    .line 74
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 75
    .line 76
    sget-object p0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    .line 77
    .line 78
    invoke-interface {v1, p0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    return-void

    .line 85
    :pswitch_2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 86
    .line 87
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 94
    .line 95
    check-cast v1, Lio/reactivex/rxjava3/core/MaybeObserver;

    .line 96
    .line 97
    invoke-interface {v1, p0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    return-void

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->mapper:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->downstream:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 11
    .line 12
    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap$MapMaybeObserver;->upstream:Lio/reactivex/rxjava3/disposables/Disposable;

    .line 18
    .line 19
    check-cast v2, Lio/reactivex/rxjava3/core/MaybeObserver;

    .line 20
    .line 21
    invoke-interface {v2, p1}, Lio/reactivex/rxjava3/core/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :pswitch_1
    check-cast v2, Lio/reactivex/rxjava3/core/MaybeObserver;

    .line 26
    .line 27
    :try_start_0
    check-cast v1, Lio/reactivex/rxjava3/functions/Predicate;

    .line 28
    .line 29
    invoke-interface {v1, p1}, Lio/reactivex/rxjava3/functions/Predicate;->test(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    invoke-interface {v2, p1}, Lio/reactivex/rxjava3/core/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-interface {v2}, Lio/reactivex/rxjava3/core/MaybeObserver;->onComplete()V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v2, p0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-void

    .line 51
    :pswitch_2
    check-cast v2, Lio/reactivex/rxjava3/core/MaybeObserver;

    .line 52
    .line 53
    :try_start_1
    check-cast v1, Lio/reactivex/rxjava3/functions/Function;

    .line 54
    .line 55
    invoke-interface {v1, p1}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string p1, "The mapper returned a null item"

    .line 60
    .line 61
    invoke-static {p0, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .line 63
    .line 64
    invoke-interface {v2, p0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v2, p0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_2
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

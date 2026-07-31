.class public final Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $onSwipeChange:Lkotlin/jvm/functions/Function1;

.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 11
    iput p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->$r8$classId:I

    iput-object p3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->$onSwipeChange:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->$onSwipeChange:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->$onSwipeChange:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, v1, p2, p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;-><init>(ILkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, v1, p2, p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;-><init>(ILkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_1
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;

    .line 27
    .line 28
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    return-object v0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 39
    .line 40
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->$onSwipeChange:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    check-cast p0, Landroidx/room/coroutines/RawConnectionAccessor;

    .line 19
    .line 20
    invoke-interface {p0}, Landroidx/room/coroutines/RawConnectionAccessor;->getRawConnection()Landroidx/sqlite/SQLiteConnection;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    check-cast p0, Landroidx/room/coroutines/RawConnectionAccessor;

    .line 40
    .line 41
    invoke-interface {p0}, Landroidx/room/coroutines/RawConnectionAccessor;->getRawConnection()Landroidx/sqlite/SQLiteConnection;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :pswitch_1
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$3$1$2;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

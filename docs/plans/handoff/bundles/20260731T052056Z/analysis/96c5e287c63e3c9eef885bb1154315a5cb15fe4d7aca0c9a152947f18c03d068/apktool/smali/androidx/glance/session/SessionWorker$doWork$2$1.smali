.class public final Landroidx/glance/session/SessionWorker$doWork$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $$this$withTimerOrNull:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/glance/session/SessionWorker$doWork$2$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/glance/session/SessionWorker$doWork$2$1;->$$this$withTimerOrNull:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/glance/session/SessionWorker$doWork$2$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/glance/session/SessionWorker$doWork$2$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/glance/session/SessionWorker$doWork$2$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/glance/session/SessionWorker$doWork$2$1;->$$this$withTimerOrNull:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroidx/glance/session/SessionWorker$doWork$2$1;

    .line 15
    .line 16
    check-cast p0, Landroidx/compose/animation/core/Animatable;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-direct {v0, p0, v2, p1, v3}, Landroidx/glance/session/SessionWorker$doWork$2$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/glance/session/SessionWorker$doWork$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :pswitch_0
    new-instance v0, Landroidx/glance/session/SessionWorker$doWork$2$1;

    .line 27
    .line 28
    check-cast p0, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 29
    .line 30
    check-cast v2, Landroidx/glance/session/SessionWorker;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v0, p0, v2, p1, v3}, Landroidx/glance/session/SessionWorker$doWork$2$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroidx/glance/session/SessionWorker$doWork$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/glance/session/SessionWorker$doWork$2$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/glance/session/SessionWorker$doWork$2$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/glance/session/SessionWorker$doWork$2$1;->$$this$withTimerOrNull:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    check-cast p0, Landroidx/compose/animation/core/Animatable;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->endAnimation()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroidx/compose/animation/core/Animatable;->clampToBounds(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Landroidx/compose/animation/core/Animatable;->targetValue$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    check-cast p0, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 41
    .line 42
    check-cast v2, Landroidx/glance/session/SessionWorker;

    .line 43
    .line 44
    iget-object p1, v2, Landroidx/glance/session/SessionWorker;->timeouts:Landroidx/glance/session/TimeoutOptions;

    .line 45
    .line 46
    iget-wide v2, p1, Landroidx/glance/session/TimeoutOptions;->idleTimeout:J

    .line 47
    .line 48
    invoke-virtual {p0, v2, v3}, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;->startTimer-LRDsOJo(J)V

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

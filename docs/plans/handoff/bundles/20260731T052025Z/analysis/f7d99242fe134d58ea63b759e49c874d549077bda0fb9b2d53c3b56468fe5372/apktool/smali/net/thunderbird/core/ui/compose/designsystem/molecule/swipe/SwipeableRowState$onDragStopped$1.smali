.class public final Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;->this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;->this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 7
    .line 8
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    iget-object v6, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;->this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;->label:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    if-ne v0, v5, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v1, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, v6, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->pendingOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    new-instance v2, Ljava/lang/Float;

    .line 45
    .line 46
    invoke-direct {v2, v0}, Ljava/lang/Float;-><init>(F)V

    .line 47
    .line 48
    .line 49
    iput v5, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;->label:I

    .line 50
    .line 51
    invoke-virtual {p1, v2, p0}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-ne p0, v4, :cond_2

    .line 56
    .line 57
    move-object v1, v4

    .line 58
    :cond_2
    :goto_0
    return-object v1

    .line 59
    :pswitch_0
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;->label:I

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    if-ne v0, v5, :cond_3

    .line 64
    .line 65
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    move-object v1, v2

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    new-instance v8, Ljava/lang/Float;

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    invoke-direct {v8, p1}, Ljava/lang/Float;-><init>(F)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getActiveBehaviour$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;->getSettleAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    iput v5, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;->label:I

    .line 96
    .line 97
    const/4 v10, 0x0

    .line 98
    const/16 v12, 0xc

    .line 99
    .line 100
    move-object v11, p0

    .line 101
    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    if-ne p0, v4, :cond_5

    .line 106
    .line 107
    move-object v1, v4

    .line 108
    :cond_5
    :goto_1
    return-object v1

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

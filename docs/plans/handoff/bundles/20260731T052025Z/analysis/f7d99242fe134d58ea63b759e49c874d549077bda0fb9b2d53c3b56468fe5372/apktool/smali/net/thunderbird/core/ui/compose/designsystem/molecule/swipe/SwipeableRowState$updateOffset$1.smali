.class public final Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $behaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

.field public final synthetic $finalOffset:F

.field public final synthetic $willSettlePastThreshold:Z

.field public label:I

.field public final synthetic this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;FLnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 2
    .line 3
    iput p2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->$finalOffset:F

    .line 4
    .line 5
    iput-object p3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->$behaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 6
    .line 7
    iput-boolean p4, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->$willSettlePastThreshold:Z

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;

    .line 2
    .line 3
    iget-object v3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->$behaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 4
    .line 5
    iget-boolean v4, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->$willSettlePastThreshold:Z

    .line 6
    .line 7
    iget-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 8
    .line 9
    iget v2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->$finalOffset:F

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;FLnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;ZLkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 2
    .line 3
    iget-object v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->swipeState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 4
    .line 5
    iget v2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->label:I

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v6, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->$behaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 11
    .line 12
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    if-eq v2, v5, :cond_2

    .line 17
    .line 18
    if-eq v2, v4, :cond_1

    .line 19
    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    move-object v12, p0

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object v12, p0

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    new-instance v9, Ljava/lang/Float;

    .line 52
    .line 53
    iget p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->$finalOffset:F

    .line 54
    .line 55
    invoke-direct {v9, p1}, Ljava/lang/Float;-><init>(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getActiveBehaviour$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;->getSettleAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    iput v5, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->label:I

    .line 67
    .line 68
    const/4 v11, 0x0

    .line 69
    const/16 v13, 0xc

    .line 70
    .line 71
    move-object v12, p0

    .line 72
    invoke-static/range {v8 .. v13}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-ne p0, v7, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    :goto_0
    instance-of p0, v6, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;

    .line 80
    .line 81
    iget-boolean p1, v12, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->$willSettlePastThreshold:Z

    .line 82
    .line 83
    if-eqz p0, :cond_7

    .line 84
    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;->Resetting:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 88
    .line 89
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    move-object p0, v6

    .line 93
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;

    .line 94
    .line 95
    iget-wide p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->autoCloseDelayMillis:J

    .line 96
    .line 97
    iput v4, v12, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->label:I

    .line 98
    .line 99
    invoke-static {p0, p1, v12}, Lkotlinx/coroutines/JobKt;->delay-VtjQ1oo(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-ne p0, v7, :cond_5

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    :goto_1
    iget-object p0, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->pendingOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 107
    .line 108
    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    new-instance v9, Ljava/lang/Float;

    .line 117
    .line 118
    invoke-direct {v9, p1}, Ljava/lang/Float;-><init>(F)V

    .line 119
    .line 120
    .line 121
    check-cast v6, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;

    .line 122
    .line 123
    iget-object v10, v6, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->settleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 124
    .line 125
    iput v3, v12, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;->label:I

    .line 126
    .line 127
    const/4 v11, 0x0

    .line 128
    const/16 v13, 0xc

    .line 129
    .line 130
    invoke-static/range {v8 .. v13}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    if-ne p0, v7, :cond_6

    .line 135
    .line 136
    :goto_2
    return-object v7

    .line 137
    :cond_6
    :goto_3
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;->Settled:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 138
    .line 139
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_7
    instance-of p0, v6, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;

    .line 144
    .line 145
    if-eqz p0, :cond_8

    .line 146
    .line 147
    if-eqz p1, :cond_8

    .line 148
    .line 149
    sget-object p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;->Dismissed:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 150
    .line 151
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_8
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 155
    .line 156
    return-object p0
.end method

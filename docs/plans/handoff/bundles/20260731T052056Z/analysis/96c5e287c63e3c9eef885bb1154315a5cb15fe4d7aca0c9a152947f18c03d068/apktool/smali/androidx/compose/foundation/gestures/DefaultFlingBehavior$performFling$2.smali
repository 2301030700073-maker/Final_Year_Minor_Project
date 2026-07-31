.class public final Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $initialVelocity:F

.field public final synthetic $r8$classId:I

.field public final synthetic $this_performFling:Ljava/lang/Object;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(FLandroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$r8$classId:I

    .line 20
    iput p1, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$initialVelocity:F

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$this_performFling:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;FLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$r8$classId:I

    .line 19
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->L$1:Ljava/lang/Object;

    iput p2, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$initialVelocity:F

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->this$0:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$this_performFling:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/compose/LottieCancellationBehavior;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->L$1:Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$initialVelocity:F

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$this_performFling:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    iget p1, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$this_performFling:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v3, p1

    .line 15
    check-cast v3, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->L$1:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v4, p1

    .line 20
    check-cast v4, Lcom/airbnb/lottie/LottieComposition;

    .line 21
    .line 22
    move-object v6, v1

    .line 23
    check-cast v6, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    .line 24
    .line 25
    move-object v7, v0

    .line 26
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 27
    .line 28
    iget v5, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$initialVelocity:F

    .line 29
    .line 30
    move-object v8, p2

    .line 31
    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/compose/LottieCancellationBehavior;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :pswitch_0
    move-object v8, p2

    .line 36
    new-instance v3, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->L$1:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v4, p1

    .line 41
    check-cast v4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 42
    .line 43
    move-object v6, v1

    .line 44
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    move-object v7, v0

    .line 47
    check-cast v7, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 48
    .line 49
    iget v5, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$initialVelocity:F

    .line 50
    .line 51
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;FLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)V

    .line 52
    .line 53
    .line 54
    return-object v3

    .line 55
    :pswitch_1
    move-object v8, p2

    .line 56
    new-instance p1, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;

    .line 57
    .line 58
    check-cast v1, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 59
    .line 60
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;

    .line 61
    .line 62
    iget p0, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$initialVelocity:F

    .line 63
    .line 64
    invoke-direct {p1, p0, v1, v0, v8}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;-><init>(FLandroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;Lkotlin/coroutines/Continuation;)V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    iget v0, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$r8$classId:I

    .line 4
    .line 5
    iget v1, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$initialVelocity:F

    .line 6
    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    iget-object v3, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 12
    .line 13
    const/4 v6, 0x2

    .line 14
    iget-object v7, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$this_performFling:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x1

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    iget-object v0, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v13, v0

    .line 25
    check-cast v13, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    .line 26
    .line 27
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 28
    .line 29
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v1, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->label:I

    .line 32
    .line 33
    sget-object v20, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    if-eq v1, v11, :cond_2

    .line 38
    .line 39
    if-ne v1, v6, :cond_1

    .line 40
    .line 41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    move-object/from16 v8, v20

    .line 45
    .line 46
    goto/16 :goto_9

    .line 47
    .line 48
    :cond_1
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    const/4 v8, 0x0

    .line 52
    goto/16 :goto_9

    .line 53
    .line 54
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_6

    .line 58
    .line 59
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_b

    .line 73
    .line 74
    iput v11, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->label:I

    .line 75
    .line 76
    iget-object v1, v13, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->composition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/airbnb/lottie/LottieComposition;

    .line 83
    .line 84
    iget-object v4, v13, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->clipSpec$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 85
    .line 86
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    if-nez v4, :cond_a

    .line 91
    .line 92
    iget-object v4, v13, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->speed$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 93
    .line 94
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Ljava/lang/Number;

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    cmpg-float v4, v4, v10

    .line 105
    .line 106
    if-gez v4, :cond_4

    .line 107
    .line 108
    if-nez v1, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    if-nez v1, :cond_5

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    if-gez v4, :cond_6

    .line 115
    .line 116
    :goto_1
    move v15, v2

    .line 117
    goto :goto_3

    .line 118
    :cond_6
    :goto_2
    move v15, v10

    .line 119
    :goto_3
    iget-object v1, v13, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->composition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 120
    .line 121
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    move-object v14, v1

    .line 126
    check-cast v14, Lcom/airbnb/lottie/LottieComposition;

    .line 127
    .line 128
    iget-object v1, v13, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->progress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 129
    .line 130
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Ljava/lang/Number;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    cmpg-float v1, v15, v1

    .line 141
    .line 142
    if-nez v1, :cond_7

    .line 143
    .line 144
    move v9, v11

    .line 145
    :cond_7
    xor-int/lit8 v16, v9, 0x1

    .line 146
    .line 147
    iget-object v1, v13, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->mutex:Landroidx/compose/foundation/MutatorMutex;

    .line 148
    .line 149
    new-instance v12, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;

    .line 150
    .line 151
    const/16 v17, 0x0

    .line 152
    .line 153
    invoke-direct/range {v12 .. v17}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$snapTo$2;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;Lcom/airbnb/lottie/LottieComposition;FZLkotlin/coroutines/Continuation;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v1, v12, v5}, Landroidx/compose/foundation/MutatorMutex;->mutate$default(Landroidx/compose/foundation/MutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-ne v1, v0, :cond_8

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_8
    move-object/from16 v1, v20

    .line 164
    .line 165
    :goto_4
    if-ne v1, v0, :cond_9

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_9
    move-object/from16 v1, v20

    .line 169
    .line 170
    :goto_5
    if-ne v1, v0, :cond_b

    .line 171
    .line 172
    goto :goto_8

    .line 173
    :cond_a
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_b
    :goto_6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 178
    .line 179
    invoke-interface {v7, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->L$1:Ljava/lang/Object;

    .line 183
    .line 184
    move-object/from16 v16, v1

    .line 185
    .line 186
    check-cast v16, Lcom/airbnb/lottie/LottieComposition;

    .line 187
    .line 188
    iget-object v1, v13, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->progress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 189
    .line 190
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Ljava/lang/Number;

    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 197
    .line 198
    .line 199
    move-result v17

    .line 200
    move-object/from16 v18, v3

    .line 201
    .line 202
    check-cast v18, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    .line 203
    .line 204
    iput v6, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->label:I

    .line 205
    .line 206
    invoke-virtual {v13}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->getIteration()I

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    iget-object v1, v13, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->mutex:Landroidx/compose/foundation/MutatorMutex;

    .line 211
    .line 212
    new-instance v12, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;

    .line 213
    .line 214
    const/16 v19, 0x0

    .line 215
    .line 216
    iget v15, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$initialVelocity:F

    .line 217
    .line 218
    invoke-direct/range {v12 .. v19}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$animate$2;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;IFLcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/compose/LottieCancellationBehavior;Lkotlin/coroutines/Continuation;)V

    .line 219
    .line 220
    .line 221
    invoke-static {v1, v12, v5}, Landroidx/compose/foundation/MutatorMutex;->mutate$default(Landroidx/compose/foundation/MutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    if-ne v1, v0, :cond_c

    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_c
    move-object/from16 v1, v20

    .line 229
    .line 230
    :goto_7
    if-ne v1, v0, :cond_0

    .line 231
    .line 232
    :goto_8
    move-object v8, v0

    .line 233
    :goto_9
    return-object v8

    .line 234
    :pswitch_0
    move-object v12, v3

    .line 235
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 236
    .line 237
    iget-object v0, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->L$1:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 240
    .line 241
    iget-object v13, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapLayoutInfoProvider:Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;

    .line 242
    .line 243
    sget-object v14, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 244
    .line 245
    iget v2, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->label:I

    .line 246
    .line 247
    if-eqz v2, :cond_f

    .line 248
    .line 249
    if-eq v2, v11, :cond_e

    .line 250
    .line 251
    if-ne v2, v6, :cond_d

    .line 252
    .line 253
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    move-object/from16 v14, p1

    .line 257
    .line 258
    goto/16 :goto_1e

    .line 259
    .line 260
    :cond_d
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    const/4 v14, 0x0

    .line 264
    goto/16 :goto_1e

    .line 265
    .line 266
    :cond_e
    iget-object v1, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->L$0:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v1, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 269
    .line 270
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    move-object/from16 v23, v7

    .line 274
    .line 275
    move/from16 v17, v10

    .line 276
    .line 277
    move-object v15, v12

    .line 278
    move-object v7, v1

    .line 279
    move-object/from16 v1, p1

    .line 280
    .line 281
    goto/16 :goto_e

    .line 282
    .line 283
    :cond_f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    iget-object v2, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 287
    .line 288
    new-instance v3, Lcoil3/ImageLoader$Builder;

    .line 289
    .line 290
    iget-object v2, v2, Landroidx/compose/animation/core/DecayAnimationSpecImpl;->floatDecaySpec:Landroidx/appcompat/widget/PopupMenu$1;

    .line 291
    .line 292
    const/4 v4, 0x3

    .line 293
    invoke-direct {v3, v4, v2}, Lcoil3/ImageLoader$Builder;-><init>(ILjava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    new-instance v2, Landroidx/compose/animation/core/AnimationVector1D;

    .line 297
    .line 298
    invoke-direct {v2, v10}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 299
    .line 300
    .line 301
    new-instance v4, Landroidx/compose/animation/core/AnimationVector1D;

    .line 302
    .line 303
    invoke-direct {v4, v1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v2, v4}, Lcoil3/ImageLoader$Builder;->getTargetValue(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    check-cast v2, Landroidx/compose/animation/core/AnimationVector1D;

    .line 311
    .line 312
    iget v2, v2, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    .line 313
    .line 314
    iget v3, v13, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$r8$classId:I

    .line 315
    .line 316
    packed-switch v3, :pswitch_data_1

    .line 317
    .line 318
    .line 319
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    iget-object v4, v13, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 324
    .line 325
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListState;

    .line 326
    .line 327
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    iget-object v4, v4, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    .line 332
    .line 333
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 334
    .line 335
    .line 336
    move-result v15

    .line 337
    if-eqz v15, :cond_10

    .line 338
    .line 339
    move v4, v9

    .line 340
    move/from16 v17, v10

    .line 341
    .line 342
    goto :goto_b

    .line 343
    :cond_10
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 344
    .line 345
    .line 346
    move-result v15

    .line 347
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 348
    .line 349
    .line 350
    move-result v8

    .line 351
    move/from16 v18, v9

    .line 352
    .line 353
    move/from16 v17, v10

    .line 354
    .line 355
    move/from16 v10, v18

    .line 356
    .line 357
    :goto_a
    if-ge v10, v8, :cond_11

    .line 358
    .line 359
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v19

    .line 363
    move-object/from16 v6, v19

    .line 364
    .line 365
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 366
    .line 367
    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    .line 368
    .line 369
    add-int v18, v18, v6

    .line 370
    .line 371
    add-int/lit8 v10, v10, 0x1

    .line 372
    .line 373
    const/4 v6, 0x2

    .line 374
    goto :goto_a

    .line 375
    :cond_11
    div-int v18, v18, v15

    .line 376
    .line 377
    move/from16 v4, v18

    .line 378
    .line 379
    :goto_b
    int-to-float v4, v4

    .line 380
    sub-float/2addr v3, v4

    .line 381
    cmpg-float v4, v3, v17

    .line 382
    .line 383
    if-gez v4, :cond_12

    .line 384
    .line 385
    move/from16 v3, v17

    .line 386
    .line 387
    :cond_12
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    mul-float/2addr v2, v3

    .line 392
    move-object/from16 v23, v7

    .line 393
    .line 394
    move-object v15, v12

    .line 395
    goto/16 :goto_d

    .line 396
    .line 397
    :pswitch_1
    move/from16 v17, v10

    .line 398
    .line 399
    iget-object v3, v13, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 400
    .line 401
    check-cast v3, Landroidx/compose/foundation/pager/PagerState;

    .line 402
    .line 403
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation()I

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    iget-object v6, v3, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 408
    .line 409
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v8

    .line 413
    check-cast v8, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 414
    .line 415
    iget v8, v8, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    .line 416
    .line 417
    add-int/2addr v8, v4

    .line 418
    if-nez v8, :cond_13

    .line 419
    .line 420
    move-object/from16 v23, v7

    .line 421
    .line 422
    move-object v15, v12

    .line 423
    move/from16 v2, v17

    .line 424
    .line 425
    goto :goto_d

    .line 426
    :cond_13
    cmpg-float v4, v1, v17

    .line 427
    .line 428
    iget v10, v3, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    .line 429
    .line 430
    if-gez v4, :cond_14

    .line 431
    .line 432
    add-int/lit8 v10, v10, 0x1

    .line 433
    .line 434
    :cond_14
    int-to-float v4, v8

    .line 435
    div-float/2addr v2, v4

    .line 436
    float-to-int v2, v2

    .line 437
    add-int/2addr v2, v10

    .line 438
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    .line 439
    .line 440
    .line 441
    move-result v4

    .line 442
    invoke-static {v2, v9, v4}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation()I

    .line 447
    .line 448
    .line 449
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    check-cast v4, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 454
    .line 455
    iget v4, v4, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    .line 456
    .line 457
    move-object v15, v12

    .line 458
    int-to-long v11, v10

    .line 459
    const-wide/16 v18, 0x1

    .line 460
    .line 461
    sub-long v21, v11, v18

    .line 462
    .line 463
    const-wide/16 v23, 0x0

    .line 464
    .line 465
    cmp-long v4, v21, v23

    .line 466
    .line 467
    if-gez v4, :cond_15

    .line 468
    .line 469
    move-wide/from16 v27, v23

    .line 470
    .line 471
    move-object/from16 v23, v7

    .line 472
    .line 473
    move-wide/from16 v6, v27

    .line 474
    .line 475
    goto :goto_c

    .line 476
    :cond_15
    move-object/from16 v23, v7

    .line 477
    .line 478
    move-wide/from16 v6, v21

    .line 479
    .line 480
    :goto_c
    long-to-int v4, v6

    .line 481
    add-long v11, v11, v18

    .line 482
    .line 483
    const-wide/32 v6, 0x7fffffff

    .line 484
    .line 485
    .line 486
    cmp-long v18, v11, v6

    .line 487
    .line 488
    if-lez v18, :cond_16

    .line 489
    .line 490
    move-wide v11, v6

    .line 491
    :cond_16
    long-to-int v6, v11

    .line 492
    invoke-static {v2, v4, v6}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    .line 497
    .line 498
    .line 499
    move-result v3

    .line 500
    invoke-static {v2, v9, v3}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    sub-int/2addr v2, v10

    .line 505
    mul-int/2addr v2, v8

    .line 506
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    sub-int/2addr v2, v8

    .line 511
    if-gez v2, :cond_17

    .line 512
    .line 513
    move v2, v9

    .line 514
    :cond_17
    if-nez v2, :cond_18

    .line 515
    .line 516
    int-to-float v2, v2

    .line 517
    goto :goto_d

    .line 518
    :cond_18
    int-to-float v2, v2

    .line 519
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    mul-float/2addr v2, v3

    .line 524
    :goto_d
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    if-eqz v3, :cond_19

    .line 529
    .line 530
    const-string v3, "calculateApproachOffset returned NaN. Please use a valid value."

    .line 531
    .line 532
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    :cond_19
    new-instance v7, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 536
    .line 537
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 538
    .line 539
    .line 540
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    mul-float/2addr v1, v2

    .line 549
    iput v1, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 550
    .line 551
    new-instance v2, Ljava/lang/Float;

    .line 552
    .line 553
    invoke-direct {v2, v1}, Ljava/lang/Float;-><init>(F)V

    .line 554
    .line 555
    .line 556
    invoke-interface {v15, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-object/from16 v1, v23

    .line 560
    .line 561
    check-cast v1, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 562
    .line 563
    iget v2, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 564
    .line 565
    new-instance v4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$$ExternalSyntheticLambda0;

    .line 566
    .line 567
    invoke-direct {v4, v7, v15, v9}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;I)V

    .line 568
    .line 569
    .line 570
    iput-object v7, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->L$0:Ljava/lang/Object;

    .line 571
    .line 572
    const/4 v6, 0x1

    .line 573
    iput v6, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->label:I

    .line 574
    .line 575
    iget v3, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->$initialVelocity:F

    .line 576
    .line 577
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->tryApproach(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$$ExternalSyntheticLambda0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    if-ne v1, v14, :cond_1a

    .line 582
    .line 583
    goto/16 :goto_1e

    .line 584
    .line 585
    :cond_1a
    :goto_e
    check-cast v1, Landroidx/compose/animation/core/AnimationState;

    .line 586
    .line 587
    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    check-cast v2, Ljava/lang/Number;

    .line 592
    .line 593
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 594
    .line 595
    .line 596
    move-result v2

    .line 597
    iget v3, v13, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$r8$classId:I

    .line 598
    .line 599
    packed-switch v3, :pswitch_data_2

    .line 600
    .line 601
    .line 602
    iget-object v3, v13, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 603
    .line 604
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListState;

    .line 605
    .line 606
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 607
    .line 608
    .line 609
    move-result-object v10

    .line 610
    iget-object v10, v10, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    .line 611
    .line 612
    iget-object v11, v13, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$calculateFinalSnappingBound:Ljava/lang/Object;

    .line 613
    .line 614
    check-cast v11, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 615
    .line 616
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 617
    .line 618
    .line 619
    move-result v12

    .line 620
    move v4, v9

    .line 621
    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 622
    .line 623
    const/high16 v13, -0x800000    # Float.NEGATIVE_INFINITY

    .line 624
    .line 625
    const/high16 v18, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 626
    .line 627
    :goto_f
    if-ge v4, v12, :cond_20

    .line 628
    .line 629
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v19

    .line 633
    move-object/from16 v6, v19

    .line 634
    .line 635
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 636
    .line 637
    if-eqz v6, :cond_1b

    .line 638
    .line 639
    move-object v8, v6

    .line 640
    :goto_10
    const/high16 v19, -0x800000    # Float.NEGATIVE_INFINITY

    .line 641
    .line 642
    goto :goto_11

    .line 643
    :cond_1b
    const/4 v8, 0x0

    .line 644
    goto :goto_10

    .line 645
    :goto_11
    if-eqz v8, :cond_1c

    .line 646
    .line 647
    iget-boolean v8, v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->nonScrollableItem:Z

    .line 648
    .line 649
    const/4 v9, 0x1

    .line 650
    if-ne v8, v9, :cond_1c

    .line 651
    .line 652
    move/from16 v24, v4

    .line 653
    .line 654
    move-object/from16 v25, v10

    .line 655
    .line 656
    move/from16 v26, v12

    .line 657
    .line 658
    goto :goto_14

    .line 659
    :cond_1c
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 660
    .line 661
    .line 662
    move-result-object v8

    .line 663
    iget-object v9, v8, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 664
    .line 665
    move/from16 v24, v4

    .line 666
    .line 667
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 668
    .line 669
    if-ne v9, v4, :cond_1d

    .line 670
    .line 671
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getViewportSize-YbymL2g()J

    .line 672
    .line 673
    .line 674
    move-result-wide v8

    .line 675
    const-wide v25, 0xffffffffL

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    and-long v8, v8, v25

    .line 681
    .line 682
    :goto_12
    long-to-int v4, v8

    .line 683
    goto :goto_13

    .line 684
    :cond_1d
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getViewportSize-YbymL2g()J

    .line 685
    .line 686
    .line 687
    move-result-wide v8

    .line 688
    const/16 v4, 0x20

    .line 689
    .line 690
    shr-long/2addr v8, v4

    .line 691
    goto :goto_12

    .line 692
    :goto_13
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 693
    .line 694
    .line 695
    move-result-object v8

    .line 696
    iget v8, v8, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportStartOffset:I

    .line 697
    .line 698
    neg-int v8, v8

    .line 699
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 700
    .line 701
    .line 702
    move-result-object v9

    .line 703
    iget v9, v9, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->afterContentPadding:I

    .line 704
    .line 705
    move-object/from16 v25, v10

    .line 706
    .line 707
    iget v10, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    .line 708
    .line 709
    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    .line 710
    .line 711
    move/from16 v26, v12

    .line 712
    .line 713
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 714
    .line 715
    .line 716
    move-result-object v12

    .line 717
    iget v12, v12, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->totalItemsCount:I

    .line 718
    .line 719
    invoke-virtual {v11, v4, v10, v8, v9}, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->position(IIII)I

    .line 720
    .line 721
    .line 722
    move-result v4

    .line 723
    int-to-float v4, v4

    .line 724
    int-to-float v6, v6

    .line 725
    sub-float/2addr v6, v4

    .line 726
    cmpg-float v4, v6, v17

    .line 727
    .line 728
    if-gtz v4, :cond_1e

    .line 729
    .line 730
    cmpl-float v4, v6, v13

    .line 731
    .line 732
    if-lez v4, :cond_1e

    .line 733
    .line 734
    move v13, v6

    .line 735
    :cond_1e
    cmpl-float v4, v6, v17

    .line 736
    .line 737
    if-ltz v4, :cond_1f

    .line 738
    .line 739
    cmpg-float v4, v6, v18

    .line 740
    .line 741
    if-gez v4, :cond_1f

    .line 742
    .line 743
    move/from16 v18, v6

    .line 744
    .line 745
    :cond_1f
    :goto_14
    add-int/lit8 v4, v24, 0x1

    .line 746
    .line 747
    move-object/from16 v10, v25

    .line 748
    .line 749
    move/from16 v12, v26

    .line 750
    .line 751
    const/4 v9, 0x0

    .line 752
    goto :goto_f

    .line 753
    :cond_20
    const/high16 v19, -0x800000    # Float.NEGATIVE_INFINITY

    .line 754
    .line 755
    iget-object v3, v3, Landroidx/compose/foundation/lazy/LazyListState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 756
    .line 757
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v3

    .line 761
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 762
    .line 763
    iget-object v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    .line 764
    .line 765
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 766
    .line 767
    .line 768
    move-result v4

    .line 769
    const/high16 v6, 0x43c80000    # 400.0f

    .line 770
    .line 771
    invoke-interface {v3, v6}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 772
    .line 773
    .line 774
    move-result v3

    .line 775
    cmpg-float v3, v4, v3

    .line 776
    .line 777
    if-gez v3, :cond_21

    .line 778
    .line 779
    const/4 v9, 0x0

    .line 780
    goto :goto_15

    .line 781
    :cond_21
    cmpl-float v2, v2, v17

    .line 782
    .line 783
    if-lez v2, :cond_22

    .line 784
    .line 785
    const/4 v9, 0x1

    .line 786
    goto :goto_15

    .line 787
    :cond_22
    const/4 v9, 0x2

    .line 788
    :goto_15
    if-nez v9, :cond_23

    .line 789
    .line 790
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    .line 791
    .line 792
    .line 793
    move-result v2

    .line 794
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 795
    .line 796
    .line 797
    move-result v3

    .line 798
    cmpg-float v2, v2, v3

    .line 799
    .line 800
    if-gtz v2, :cond_25

    .line 801
    .line 802
    goto :goto_16

    .line 803
    :cond_23
    const/4 v6, 0x1

    .line 804
    if-ne v9, v6, :cond_24

    .line 805
    .line 806
    goto :goto_16

    .line 807
    :cond_24
    const/4 v2, 0x2

    .line 808
    if-ne v9, v2, :cond_26

    .line 809
    .line 810
    :cond_25
    move/from16 v18, v13

    .line 811
    .line 812
    goto :goto_16

    .line 813
    :cond_26
    move/from16 v18, v17

    .line 814
    .line 815
    :goto_16
    cmpg-float v2, v18, p1

    .line 816
    .line 817
    if-nez v2, :cond_27

    .line 818
    .line 819
    goto :goto_17

    .line 820
    :cond_27
    cmpg-float v2, v18, v19

    .line 821
    .line 822
    if-nez v2, :cond_28

    .line 823
    .line 824
    :goto_17
    move/from16 v18, v17

    .line 825
    .line 826
    :cond_28
    move/from16 v2, v18

    .line 827
    .line 828
    goto/16 :goto_1d

    .line 829
    .line 830
    :pswitch_2
    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 831
    .line 832
    const/high16 v19, -0x800000    # Float.NEGATIVE_INFINITY

    .line 833
    .line 834
    iget-object v3, v13, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$pagerState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 835
    .line 836
    check-cast v3, Landroidx/compose/foundation/pager/PagerState;

    .line 837
    .line 838
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 839
    .line 840
    .line 841
    move-result-object v4

    .line 842
    iget-object v4, v4, Landroidx/compose/foundation/pager/PagerMeasureResult;->snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 843
    .line 844
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 845
    .line 846
    .line 847
    move-result-object v8

    .line 848
    iget-object v8, v8, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    .line 849
    .line 850
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 851
    .line 852
    .line 853
    move-result v9

    .line 854
    move/from16 v12, p1

    .line 855
    .line 856
    move/from16 v11, v19

    .line 857
    .line 858
    const/4 v10, 0x0

    .line 859
    :goto_18
    if-ge v10, v9, :cond_2b

    .line 860
    .line 861
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object v18

    .line 865
    move-object/from16 v6, v18

    .line 866
    .line 867
    check-cast v6, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 868
    .line 869
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 870
    .line 871
    .line 872
    move-result-object v18

    .line 873
    move-object/from16 v24, v8

    .line 874
    .line 875
    invoke-static/range {v18 .. v18}, Landroidx/work/Operation$State;->getMainAxisViewportSize(Landroidx/compose/foundation/pager/PagerMeasureResult;)I

    .line 876
    .line 877
    .line 878
    move-result v8

    .line 879
    move/from16 v18, v9

    .line 880
    .line 881
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 882
    .line 883
    .line 884
    move-result-object v9

    .line 885
    iget v9, v9, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportStartOffset:I

    .line 886
    .line 887
    neg-int v9, v9

    .line 888
    move/from16 v22, v10

    .line 889
    .line 890
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 891
    .line 892
    .line 893
    move-result-object v10

    .line 894
    iget v10, v10, Landroidx/compose/foundation/pager/PagerMeasureResult;->afterContentPadding:I

    .line 895
    .line 896
    move/from16 v25, v11

    .line 897
    .line 898
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 899
    .line 900
    .line 901
    move-result-object v11

    .line 902
    iget v11, v11, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    .line 903
    .line 904
    iget v6, v6, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    .line 905
    .line 906
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    .line 907
    .line 908
    .line 909
    invoke-virtual {v4, v8, v11, v9, v10}, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->position(IIII)I

    .line 910
    .line 911
    .line 912
    move-result v8

    .line 913
    int-to-float v8, v8

    .line 914
    int-to-float v6, v6

    .line 915
    sub-float/2addr v6, v8

    .line 916
    cmpg-float v8, v6, v17

    .line 917
    .line 918
    if-gtz v8, :cond_29

    .line 919
    .line 920
    cmpl-float v8, v6, v25

    .line 921
    .line 922
    if-lez v8, :cond_29

    .line 923
    .line 924
    move v11, v6

    .line 925
    goto :goto_19

    .line 926
    :cond_29
    move/from16 v11, v25

    .line 927
    .line 928
    :goto_19
    cmpl-float v8, v6, v17

    .line 929
    .line 930
    if-ltz v8, :cond_2a

    .line 931
    .line 932
    cmpg-float v8, v6, v12

    .line 933
    .line 934
    if-gez v8, :cond_2a

    .line 935
    .line 936
    move v12, v6

    .line 937
    :cond_2a
    add-int/lit8 v10, v22, 0x1

    .line 938
    .line 939
    move/from16 v9, v18

    .line 940
    .line 941
    move-object/from16 v8, v24

    .line 942
    .line 943
    goto :goto_18

    .line 944
    :cond_2b
    move/from16 v25, v11

    .line 945
    .line 946
    cmpg-float v4, v25, v19

    .line 947
    .line 948
    if-nez v4, :cond_2c

    .line 949
    .line 950
    move/from16 v25, v12

    .line 951
    .line 952
    :cond_2c
    cmpg-float v4, v12, p1

    .line 953
    .line 954
    if-nez v4, :cond_2d

    .line 955
    .line 956
    move/from16 v12, v25

    .line 957
    .line 958
    :cond_2d
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getCanScrollForward()Z

    .line 959
    .line 960
    .line 961
    move-result v4

    .line 962
    if-nez v4, :cond_2e

    .line 963
    .line 964
    invoke-static {v3, v2}, Landroidx/compose/ui/unit/DpKt;->isScrollingForward(Landroidx/compose/foundation/pager/PagerState;F)Z

    .line 965
    .line 966
    .line 967
    move-result v4

    .line 968
    move/from16 v12, v17

    .line 969
    .line 970
    if-eqz v4, :cond_2e

    .line 971
    .line 972
    move/from16 v25, v12

    .line 973
    .line 974
    :cond_2e
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getCanScrollBackward()Z

    .line 975
    .line 976
    .line 977
    move-result v4

    .line 978
    if-nez v4, :cond_30

    .line 979
    .line 980
    invoke-static {v3, v2}, Landroidx/compose/ui/unit/DpKt;->isScrollingForward(Landroidx/compose/foundation/pager/PagerState;F)Z

    .line 981
    .line 982
    .line 983
    move-result v3

    .line 984
    if-nez v3, :cond_2f

    .line 985
    .line 986
    move/from16 v12, v17

    .line 987
    .line 988
    move/from16 v25, v12

    .line 989
    .line 990
    goto :goto_1a

    .line 991
    :cond_2f
    move/from16 v25, v17

    .line 992
    .line 993
    :cond_30
    :goto_1a
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 994
    .line 995
    .line 996
    move-result-object v3

    .line 997
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 998
    .line 999
    .line 1000
    move-result-object v4

    .line 1001
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 1002
    .line 1003
    .line 1004
    move-result v3

    .line 1005
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 1006
    .line 1007
    .line 1008
    move-result v4

    .line 1009
    iget-object v6, v13, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$calculateFinalSnappingBound:Ljava/lang/Object;

    .line 1010
    .line 1011
    check-cast v6, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;

    .line 1012
    .line 1013
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v2

    .line 1017
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v8

    .line 1021
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v9

    .line 1025
    invoke-virtual {v6, v2, v8, v9}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v2

    .line 1029
    check-cast v2, Ljava/lang/Number;

    .line 1030
    .line 1031
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 1032
    .line 1033
    .line 1034
    move-result v2

    .line 1035
    cmpg-float v6, v2, v3

    .line 1036
    .line 1037
    if-nez v6, :cond_31

    .line 1038
    .line 1039
    goto :goto_1b

    .line 1040
    :cond_31
    cmpg-float v6, v2, v4

    .line 1041
    .line 1042
    if-nez v6, :cond_32

    .line 1043
    .line 1044
    goto :goto_1b

    .line 1045
    :cond_32
    cmpg-float v6, v2, v17

    .line 1046
    .line 1047
    if-nez v6, :cond_33

    .line 1048
    .line 1049
    goto :goto_1b

    .line 1050
    :cond_33
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    const-string v8, "Final Snapping Offset Should Be one of "

    .line 1053
    .line 1054
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1058
    .line 1059
    .line 1060
    const-string v3, ", "

    .line 1061
    .line 1062
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    const-string v3, " or 0.0"

    .line 1069
    .line 1070
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v3

    .line 1077
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1078
    .line 1079
    .line 1080
    :goto_1b
    cmpg-float v3, v2, p1

    .line 1081
    .line 1082
    if-nez v3, :cond_34

    .line 1083
    .line 1084
    goto :goto_1c

    .line 1085
    :cond_34
    cmpg-float v3, v2, v19

    .line 1086
    .line 1087
    if-nez v3, :cond_35

    .line 1088
    .line 1089
    :goto_1c
    move/from16 v2, v17

    .line 1090
    .line 1091
    :cond_35
    :goto_1d
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 1092
    .line 1093
    .line 1094
    move-result v3

    .line 1095
    if-eqz v3, :cond_36

    .line 1096
    .line 1097
    const-string v3, "calculateSnapOffset returned NaN. Please use a valid value."

    .line 1098
    .line 1099
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1100
    .line 1101
    .line 1102
    :cond_36
    iput v2, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1103
    .line 1104
    move-object/from16 v3, v23

    .line 1105
    .line 1106
    check-cast v3, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 1107
    .line 1108
    const/16 v4, 0x1e

    .line 1109
    .line 1110
    move/from16 v6, v17

    .line 1111
    .line 1112
    invoke-static {v1, v6, v6, v4}, Landroidx/compose/animation/core/ArcSplineKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFI)Landroidx/compose/animation/core/AnimationState;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v1

    .line 1116
    iget-object v4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 1117
    .line 1118
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$$ExternalSyntheticLambda0;

    .line 1119
    .line 1120
    const/4 v6, 0x1

    .line 1121
    invoke-direct {v0, v7, v15, v6}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;I)V

    .line 1122
    .line 1123
    .line 1124
    const/4 v7, 0x0

    .line 1125
    iput-object v7, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->L$0:Ljava/lang/Object;

    .line 1126
    .line 1127
    const/4 v6, 0x2

    .line 1128
    iput v6, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->label:I

    .line 1129
    .line 1130
    move-object v7, v3

    .line 1131
    move-object v3, v1

    .line 1132
    move v1, v2

    .line 1133
    move-object v6, v5

    .line 1134
    move-object v5, v0

    .line 1135
    move-object v0, v7

    .line 1136
    invoke-static/range {v0 .. v6}, Landroidx/work/Operation$State;->animateWithTarget(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/SpringSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v0

    .line 1140
    if-ne v0, v14, :cond_37

    .line 1141
    .line 1142
    goto :goto_1e

    .line 1143
    :cond_37
    move-object v14, v0

    .line 1144
    :goto_1e
    return-object v14

    .line 1145
    :pswitch_3
    move-object/from16 v23, v7

    .line 1146
    .line 1147
    const/4 v7, 0x0

    .line 1148
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1149
    .line 1150
    iget v8, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->label:I

    .line 1151
    .line 1152
    if-eqz v8, :cond_39

    .line 1153
    .line 1154
    const/4 v6, 0x1

    .line 1155
    if-ne v8, v6, :cond_38

    .line 1156
    .line 1157
    iget-object v0, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->L$1:Ljava/lang/Object;

    .line 1158
    .line 1159
    check-cast v0, Landroidx/compose/animation/core/AnimationState;

    .line 1160
    .line 1161
    iget-object v1, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->L$0:Ljava/lang/Object;

    .line 1162
    .line 1163
    check-cast v1, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1164
    .line 1165
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1166
    .line 1167
    .line 1168
    goto :goto_1f

    .line 1169
    :cond_38
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1170
    .line 1171
    .line 1172
    move-object v8, v7

    .line 1173
    goto :goto_20

    .line 1174
    :cond_39
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1175
    .line 1176
    .line 1177
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 1178
    .line 1179
    .line 1180
    move-result v4

    .line 1181
    cmpl-float v2, v4, v2

    .line 1182
    .line 1183
    if-lez v2, :cond_3b

    .line 1184
    .line 1185
    new-instance v2, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1186
    .line 1187
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1188
    .line 1189
    .line 1190
    iput v1, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1191
    .line 1192
    new-instance v4, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1193
    .line 1194
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1195
    .line 1196
    .line 1197
    const/16 v7, 0x1c

    .line 1198
    .line 1199
    const/4 v8, 0x0

    .line 1200
    invoke-static {v8, v1, v7}, Landroidx/compose/animation/core/ArcSplineKt;->AnimationState$default(FFI)Landroidx/compose/animation/core/AnimationState;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v1

    .line 1204
    :try_start_1
    check-cast v3, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 1205
    .line 1206
    iget-object v7, v3, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->flingDecay:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 1207
    .line 1208
    move-object/from16 v8, v23

    .line 1209
    .line 1210
    check-cast v8, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;

    .line 1211
    .line 1212
    new-instance v9, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 1213
    .line 1214
    invoke-direct {v9, v4, v8, v2, v3}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;)V

    .line 1215
    .line 1216
    .line 1217
    iput-object v2, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->L$0:Ljava/lang/Object;

    .line 1218
    .line 1219
    iput-object v1, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->L$1:Ljava/lang/Object;

    .line 1220
    .line 1221
    const/4 v6, 0x1

    .line 1222
    iput v6, v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior$performFling$2;->label:I

    .line 1223
    .line 1224
    const/4 v3, 0x0

    .line 1225
    invoke-static {v1, v7, v3, v9, v5}, Landroidx/compose/animation/core/ArcSplineKt;->animateDecay(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpecImpl;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1229
    if-ne v1, v0, :cond_3a

    .line 1230
    .line 1231
    move-object v8, v0

    .line 1232
    goto :goto_20

    .line 1233
    :cond_3a
    move-object v1, v2

    .line 1234
    goto :goto_1f

    .line 1235
    :catch_0
    move-object v0, v1

    .line 1236
    move-object v1, v2

    .line 1237
    :catch_1
    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationState;->getVelocity()Ljava/lang/Object;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v0

    .line 1241
    check-cast v0, Ljava/lang/Number;

    .line 1242
    .line 1243
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 1244
    .line 1245
    .line 1246
    move-result v0

    .line 1247
    iput v0, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1248
    .line 1249
    :goto_1f
    iget v1, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1250
    .line 1251
    :cond_3b
    new-instance v8, Ljava/lang/Float;

    .line 1252
    .line 1253
    invoke-direct {v8, v1}, Ljava/lang/Float;-><init>(F)V

    .line 1254
    .line 1255
    .line 1256
    :goto_20
    return-object v8

    .line 1257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

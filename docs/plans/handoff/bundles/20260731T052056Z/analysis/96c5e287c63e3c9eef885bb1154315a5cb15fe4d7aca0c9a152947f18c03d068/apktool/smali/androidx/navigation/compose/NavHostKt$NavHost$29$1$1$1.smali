.class public final Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $backStackEntry:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public synthetic $transitionState:Ljava/lang/Object;

.field public $value:F

.field public label:I


# direct methods
.method public constructor <init>(FLandroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$r8$classId:I

    .line 3
    .line 4
    iput p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$value:F

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$backStackEntry:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$r8$classId:I

    .line 15
    iput-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$backStackEntry:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Cache$RealCacheRequest;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$r8$classId:I

    .line 16
    iput-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    iput p2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$value:F

    iput-object p3, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$backStackEntry:Ljava/lang/Object;

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$backStackEntry:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lokhttp3/Cache$RealCacheRequest;

    .line 13
    .line 14
    iget p0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$value:F

    .line 15
    .line 16
    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    .line 17
    .line 18
    invoke-direct {p1, v0, p0, v1, p2}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;-><init>(Lokhttp3/Cache$RealCacheRequest;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_0
    new-instance p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;

    .line 23
    .line 24
    check-cast v1, Landroidx/compose/animation/core/Transition;

    .line 25
    .line 26
    invoke-direct {p0, v1, p2}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_1
    new-instance p1, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;

    .line 33
    .line 34
    iget v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$value:F

    .line 35
    .line 36
    iget-object p0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 39
    .line 40
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 41
    .line 42
    invoke-direct {p1, v0, p0, v1, p2}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;-><init>(FLandroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;Lkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 12

    .line 1
    iget v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$backStackEntry:Ljava/lang/Object;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    .line 16
    iget v6, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->label:I

    .line 17
    .line 18
    if-eqz v6, :cond_1

    .line 19
    .line 20
    if-ne v6, v5, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v1, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lokhttp3/Cache$RealCacheRequest;

    .line 37
    .line 38
    iget-object p1, p1, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v6, p1

    .line 41
    check-cast v6, Landroidx/compose/animation/core/Animatable;

    .line 42
    .line 43
    iget p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$value:F

    .line 44
    .line 45
    new-instance v7, Ljava/lang/Float;

    .line 46
    .line 47
    invoke-direct {v7, p1}, Ljava/lang/Float;-><init>(F)V

    .line 48
    .line 49
    .line 50
    move-object v8, v2

    .line 51
    check-cast v8, Landroidx/compose/animation/core/AnimationSpec;

    .line 52
    .line 53
    iput v5, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->label:I

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    const/16 v11, 0xc

    .line 57
    .line 58
    move-object v10, p0

    .line 59
    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-ne p0, v0, :cond_2

    .line 64
    .line 65
    move-object v1, v0

    .line 66
    :cond_2
    :goto_0
    return-object v1

    .line 67
    :pswitch_0
    move-object v10, p0

    .line 68
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 69
    .line 70
    iget v0, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->label:I

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    if-ne v0, v5, :cond_3

    .line 75
    .line 76
    iget v0, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$value:F

    .line 77
    .line 78
    iget-object v3, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 81
    .line 82
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    move-object v1, v4

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 97
    .line 98
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Landroidx/compose/animation/core/ArcSplineKt;->getDurationScale(Lkotlin/coroutines/CoroutineContext;)F

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    move-object v3, p1

    .line 107
    :cond_5
    :goto_1
    invoke-static {v3}, Lkotlinx/coroutines/AwaitKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    move-object p1, v2

    .line 114
    check-cast p1, Landroidx/compose/animation/core/Transition;

    .line 115
    .line 116
    new-instance v4, Lorg/wikipedia/yearinreview/YearInReviewHighlightsScreenKt$$ExternalSyntheticLambda4;

    .line 117
    .line 118
    invoke-direct {v4, p1, v0, v5}, Lorg/wikipedia/yearinreview/YearInReviewHighlightsScreenKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;FI)V

    .line 119
    .line 120
    .line 121
    iput-object v3, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 122
    .line 123
    iput v0, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$value:F

    .line 124
    .line 125
    iput v5, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->label:I

    .line 126
    .line 127
    iget-object p1, v10, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->getMonotonicFrameClock(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-interface {p1, v4, v10}, Landroidx/compose/runtime/MonotonicFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-ne p1, p0, :cond_5

    .line 141
    .line 142
    move-object v1, p0

    .line 143
    :cond_6
    :goto_2
    return-object v1

    .line 144
    :pswitch_1
    move-object v10, p0

    .line 145
    iget-object p0, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 148
    .line 149
    iget v0, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$value:F

    .line 150
    .line 151
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 152
    .line 153
    iget v7, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->label:I

    .line 154
    .line 155
    const/4 v8, 0x0

    .line 156
    const/4 v9, 0x2

    .line 157
    if-eqz v7, :cond_9

    .line 158
    .line 159
    if-eq v7, v5, :cond_8

    .line 160
    .line 161
    if-ne v7, v9, :cond_7

    .line 162
    .line 163
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_7
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    move-object v1, v4

    .line 171
    goto :goto_7

    .line 172
    :cond_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    cmpl-float p1, v0, v8

    .line 180
    .line 181
    if-lez p1, :cond_a

    .line 182
    .line 183
    iput v5, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->label:I

    .line 184
    .line 185
    iget-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 186
    .line 187
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p0, v0, p1, v10}, Landroidx/compose/animation/core/SeekableTransitionState;->seekTo(FLjava/lang/Object;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    if-ne p1, v6, :cond_a

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_a
    :goto_3
    cmpg-float p1, v0, v8

    .line 199
    .line 200
    if-nez p1, :cond_e

    .line 201
    .line 202
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 203
    .line 204
    iput v9, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->label:I

    .line 205
    .line 206
    iget-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    .line 207
    .line 208
    if-nez p1, :cond_c

    .line 209
    .line 210
    :cond_b
    :goto_4
    move-object p0, v1

    .line 211
    goto :goto_5

    .line 212
    :cond_c
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->currentState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 213
    .line 214
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_d

    .line 223
    .line 224
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 225
    .line 226
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_d

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_d
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

    .line 238
    .line 239
    new-instance v3, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;

    .line 240
    .line 241
    invoke-direct {v3, p0, v2, p1, v4}, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Ljava/lang/Object;Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    .line 242
    .line 243
    .line 244
    invoke-static {v0, v3, v10}, Landroidx/compose/animation/core/MutatorMutex;->mutate$default(Landroidx/compose/animation/core/MutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    if-ne p0, v6, :cond_b

    .line 249
    .line 250
    :goto_5
    if-ne p0, v6, :cond_e

    .line 251
    .line 252
    :goto_6
    move-object v1, v6

    .line 253
    :cond_e
    :goto_7
    return-object v1

    .line 254
    nop

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

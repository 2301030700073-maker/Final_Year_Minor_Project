.class public final Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec;"
        }
    .end annotation
.end field

.field final synthetic $targetState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field final synthetic $transition:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/animation/core/SeekableTransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SeekableTransitionState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 2
    .line 3
    iput-object p4, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->$targetState:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->$animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

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
    new-instance v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;

    .line 2
    .line 3
    iget-object v2, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 4
    .line 5
    iget-object v4, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->$targetState:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->$animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->label:I

    .line 4
    .line 5
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v5, 0x5

    .line 8
    const/4 v6, 0x4

    .line 9
    const/4 v7, 0x3

    .line 10
    const/4 v8, 0x2

    .line 11
    const/4 v9, 0x1

    .line 12
    const-wide/16 v10, 0x0

    .line 13
    .line 14
    const/4 v12, 0x0

    .line 15
    const/4 v13, 0x0

    .line 16
    sget-object v14, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    if-eqz v1, :cond_5

    .line 19
    .line 20
    if-eq v1, v9, :cond_4

    .line 21
    .line 22
    if-eq v1, v8, :cond_3

    .line 23
    .line 24
    if-eq v1, v7, :cond_2

    .line 25
    .line 26
    if-eq v1, v6, :cond_1

    .line 27
    .line 28
    if-ne v1, v5, :cond_0

    .line 29
    .line 30
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_d

    .line 34
    .line 35
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 36
    .line 37
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v13

    .line 41
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_b

    .line 45
    .line 46
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const-wide/high16 v16, -0x8000000000000000L

    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    const-wide/high16 v16, -0x8000000000000000L

    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_4
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->L$1:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 63
    .line 64
    iget-object v9, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v9, Lkotlinx/coroutines/sync/Mutex;

    .line 67
    .line 68
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const-wide/high16 v16, -0x8000000000000000L

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 78
    .line 79
    iget-object v1, v1, Landroidx/compose/animation/core/SeekableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v15, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->$targetState:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v15

    .line 91
    if-nez v15, :cond_6

    .line 92
    .line 93
    iget-object v15, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 94
    .line 95
    invoke-static {v15}, Landroidx/compose/animation/core/SeekableTransitionState;->access$moveAnimationToInitialState(Landroidx/compose/animation/core/SeekableTransitionState;)V

    .line 96
    .line 97
    .line 98
    iget-object v15, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 99
    .line 100
    invoke-virtual {v15, v12}, Landroidx/compose/animation/core/SeekableTransitionState;->setFraction(F)V

    .line 101
    .line 102
    .line 103
    iget-object v15, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 104
    .line 105
    const-wide/high16 v16, -0x8000000000000000L

    .line 106
    .line 107
    iget-object v2, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->$targetState:Ljava/lang/Object;

    .line 108
    .line 109
    invoke-virtual {v15, v2}, Landroidx/compose/animation/core/Transition;->updateTarget$animation_core(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object v2, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 113
    .line 114
    invoke-virtual {v2, v10, v11}, Landroidx/compose/animation/core/Transition;->setPlayTimeNanos(J)V

    .line 115
    .line 116
    .line 117
    iget-object v2, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 118
    .line 119
    invoke-virtual {v2, v1}, Landroidx/compose/animation/core/SeekableTransitionState;->setCurrentState$animation_core(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 123
    .line 124
    iget-object v2, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->$targetState:Ljava/lang/Object;

    .line 125
    .line 126
    iget-object v1, v1, Landroidx/compose/animation/core/SeekableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_6
    const-wide/high16 v16, -0x8000000000000000L

    .line 133
    .line 134
    :goto_0
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 135
    .line 136
    iget-object v2, v1, Landroidx/compose/animation/core/SeekableTransitionState;->compositionContinuationMutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 137
    .line 138
    iput-object v2, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->L$0:Ljava/lang/Object;

    .line 139
    .line 140
    iput-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->L$1:Ljava/lang/Object;

    .line 141
    .line 142
    iput v9, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->label:I

    .line 143
    .line 144
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    if-ne v3, v14, :cond_7

    .line 149
    .line 150
    goto/16 :goto_c

    .line 151
    .line 152
    :cond_7
    move-object v9, v2

    .line 153
    :goto_1
    :try_start_0
    iget-object v1, v1, Landroidx/compose/animation/core/SeekableTransitionState;->composedTargetState:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .line 155
    invoke-interface {v9, v13}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    iget-object v2, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->$targetState:Ljava/lang/Object;

    .line 159
    .line 160
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_b

    .line 165
    .line 166
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 167
    .line 168
    iput-object v13, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->L$0:Ljava/lang/Object;

    .line 169
    .line 170
    iput-object v13, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->L$1:Ljava/lang/Object;

    .line 171
    .line 172
    iput v8, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->label:I

    .line 173
    .line 174
    iget-wide v2, v1, Landroidx/compose/animation/core/SeekableTransitionState;->lastFrameTimeNanos:J

    .line 175
    .line 176
    cmp-long v2, v2, v16

    .line 177
    .line 178
    if-nez v2, :cond_8

    .line 179
    .line 180
    iget-object v1, v1, Landroidx/compose/animation/core/SeekableTransitionState;->firstFrameLambda:Landroidx/compose/animation/core/SeekableTransitionState$$ExternalSyntheticLambda1;

    .line 181
    .line 182
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->getMonotonicFrameClock(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-interface {v2, v1, v0}, Landroidx/compose/runtime/MonotonicFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    if-ne v1, v14, :cond_9

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_8
    invoke-virtual {v1, v0}, Landroidx/compose/animation/core/SeekableTransitionState;->animateOneFrame(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    if-ne v1, v14, :cond_9

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_9
    move-object v1, v4

    .line 205
    :goto_2
    if-ne v1, v14, :cond_a

    .line 206
    .line 207
    goto/16 :goto_c

    .line 208
    .line 209
    :cond_a
    :goto_3
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 210
    .line 211
    iput v7, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->label:I

    .line 212
    .line 213
    invoke-static {v1, v0}, Landroidx/compose/animation/core/SeekableTransitionState;->access$waitForCompositionAfterTargetStateChange(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    if-ne v1, v14, :cond_b

    .line 218
    .line 219
    goto/16 :goto_c

    .line 220
    .line 221
    :cond_b
    :goto_4
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 222
    .line 223
    iget-object v1, v1, Landroidx/compose/animation/core/SeekableTransitionState;->currentState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 224
    .line 225
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    iget-object v2, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->$targetState:Ljava/lang/Object;

    .line 230
    .line 231
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-nez v1, :cond_1a

    .line 236
    .line 237
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 238
    .line 239
    iget-object v1, v1, Landroidx/compose/animation/core/SeekableTransitionState;->fraction$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 240
    .line 241
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    const/high16 v2, 0x3f800000    # 1.0f

    .line 246
    .line 247
    cmpg-float v1, v1, v2

    .line 248
    .line 249
    if-gez v1, :cond_17

    .line 250
    .line 251
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 252
    .line 253
    iget-object v1, v1, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 254
    .line 255
    iget-object v3, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->$animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 256
    .line 257
    if-eqz v3, :cond_c

    .line 258
    .line 259
    invoke-interface {v3}, Landroidx/compose/animation/core/FiniteAnimationSpec;->vectorize()Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    goto :goto_5

    .line 264
    :cond_c
    move-object v3, v13

    .line 265
    :goto_5
    if-eqz v1, :cond_d

    .line 266
    .line 267
    iget-object v7, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->animationSpec:Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    .line 268
    .line 269
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    if-nez v7, :cond_17

    .line 274
    .line 275
    :cond_d
    if-eqz v1, :cond_e

    .line 276
    .line 277
    iget-object v7, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->animationSpec:Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    .line 278
    .line 279
    move-object/from16 v18, v7

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_e
    move-object/from16 v18, v13

    .line 283
    .line 284
    :goto_6
    sget-object v22, Landroidx/compose/animation/core/SeekableTransitionState;->Target1:Landroidx/compose/animation/core/AnimationVector1D;

    .line 285
    .line 286
    sget-object v7, Landroidx/compose/animation/core/SeekableTransitionState;->ZeroVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    .line 287
    .line 288
    if-eqz v18, :cond_10

    .line 289
    .line 290
    iget-wide v8, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->progressNanos:J

    .line 291
    .line 292
    iget-object v2, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->start:Landroidx/compose/animation/core/AnimationVector1D;

    .line 293
    .line 294
    iget-object v15, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->initialVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    .line 295
    .line 296
    if-nez v15, :cond_f

    .line 297
    .line 298
    move-object/from16 v23, v7

    .line 299
    .line 300
    :goto_7
    move-object/from16 v21, v2

    .line 301
    .line 302
    move-wide/from16 v19, v8

    .line 303
    .line 304
    goto :goto_8

    .line 305
    :cond_f
    move-object/from16 v23, v15

    .line 306
    .line 307
    goto :goto_7

    .line 308
    :goto_8
    invoke-interface/range {v18 .. v23}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    move-object/from16 v8, v22

    .line 313
    .line 314
    move-object v7, v2

    .line 315
    check-cast v7, Landroidx/compose/animation/core/AnimationVector1D;

    .line 316
    .line 317
    goto :goto_9

    .line 318
    :cond_10
    move-object/from16 v8, v22

    .line 319
    .line 320
    if-eqz v1, :cond_14

    .line 321
    .line 322
    iget-wide v5, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->progressNanos:J

    .line 323
    .line 324
    cmp-long v5, v5, v10

    .line 325
    .line 326
    if-nez v5, :cond_11

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_11
    iget-wide v5, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->durationNanos:J

    .line 330
    .line 331
    cmp-long v9, v5, v16

    .line 332
    .line 333
    if-nez v9, :cond_12

    .line 334
    .line 335
    iget-object v5, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 336
    .line 337
    iget-wide v5, v5, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 338
    .line 339
    :cond_12
    long-to-float v5, v5

    .line 340
    const v6, 0x4e6e6b28    # 1.0E9f

    .line 341
    .line 342
    .line 343
    div-float/2addr v5, v6

    .line 344
    cmpg-float v6, v5, v12

    .line 345
    .line 346
    if-gtz v6, :cond_13

    .line 347
    .line 348
    goto :goto_9

    .line 349
    :cond_13
    new-instance v7, Landroidx/compose/animation/core/AnimationVector1D;

    .line 350
    .line 351
    div-float/2addr v2, v5

    .line 352
    invoke-direct {v7, v2}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 353
    .line 354
    .line 355
    :cond_14
    :goto_9
    if-nez v1, :cond_15

    .line 356
    .line 357
    new-instance v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 358
    .line 359
    invoke-direct {v1}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;-><init>()V

    .line 360
    .line 361
    .line 362
    :cond_15
    iget-object v2, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->start:Landroidx/compose/animation/core/AnimationVector1D;

    .line 363
    .line 364
    iput-object v3, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->animationSpec:Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    .line 365
    .line 366
    const/4 v5, 0x0

    .line 367
    iput-boolean v5, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->isComplete:Z

    .line 368
    .line 369
    iget-object v6, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 370
    .line 371
    iget-object v6, v6, Landroidx/compose/animation/core/SeekableTransitionState;->fraction$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 372
    .line 373
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    iput v6, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->value:F

    .line 378
    .line 379
    iget-object v6, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 380
    .line 381
    iget-object v6, v6, Landroidx/compose/animation/core/SeekableTransitionState;->fraction$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 382
    .line 383
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    invoke-virtual {v2, v6, v5}, Landroidx/compose/animation/core/AnimationVector1D;->set$animation_core(FI)V

    .line 388
    .line 389
    .line 390
    iget-object v5, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 391
    .line 392
    iget-wide v12, v5, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 393
    .line 394
    iput-wide v12, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->durationNanos:J

    .line 395
    .line 396
    iput-wide v10, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->progressNanos:J

    .line 397
    .line 398
    iput-object v7, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->initialVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    .line 399
    .line 400
    if-eqz v3, :cond_16

    .line 401
    .line 402
    invoke-interface {v3, v2, v8, v7}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J

    .line 403
    .line 404
    .line 405
    move-result-wide v2

    .line 406
    goto :goto_a

    .line 407
    :cond_16
    long-to-double v2, v12

    .line 408
    iget-object v5, v5, Landroidx/compose/animation/core/SeekableTransitionState;->fraction$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 409
    .line 410
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 411
    .line 412
    .line 413
    move-result v5

    .line 414
    float-to-double v7, v5

    .line 415
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 416
    .line 417
    sub-double/2addr v9, v7

    .line 418
    mul-double/2addr v9, v2

    .line 419
    invoke-static {v9, v10}, Lkotlin/math/MathKt;->roundToLong(D)J

    .line 420
    .line 421
    .line 422
    move-result-wide v2

    .line 423
    :goto_a
    iput-wide v2, v1, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->animationSpecDuration:J

    .line 424
    .line 425
    iget-object v2, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 426
    .line 427
    iput-object v1, v2, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 428
    .line 429
    :cond_17
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 430
    .line 431
    const/4 v6, 0x0

    .line 432
    iput-object v6, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->L$0:Ljava/lang/Object;

    .line 433
    .line 434
    iput-object v6, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->L$1:Ljava/lang/Object;

    .line 435
    .line 436
    const/4 v2, 0x4

    .line 437
    iput v2, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->label:I

    .line 438
    .line 439
    invoke-static {v1, v0}, Landroidx/compose/animation/core/SeekableTransitionState;->access$runAnimations(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    if-ne v1, v14, :cond_18

    .line 444
    .line 445
    goto :goto_c

    .line 446
    :cond_18
    :goto_b
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 447
    .line 448
    iget-object v2, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->$targetState:Ljava/lang/Object;

    .line 449
    .line 450
    invoke-virtual {v1, v2}, Landroidx/compose/animation/core/SeekableTransitionState;->setCurrentState$animation_core(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 454
    .line 455
    const/4 v15, 0x5

    .line 456
    iput v15, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->label:I

    .line 457
    .line 458
    invoke-static {v1, v0}, Landroidx/compose/animation/core/SeekableTransitionState;->access$waitForComposition(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    if-ne v1, v14, :cond_19

    .line 463
    .line 464
    :goto_c
    return-object v14

    .line 465
    :cond_19
    :goto_d
    iget-object v0, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->this$0:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 466
    .line 467
    const/4 v1, 0x0

    .line 468
    invoke-virtual {v0, v1}, Landroidx/compose/animation/core/SeekableTransitionState;->setFraction(F)V

    .line 469
    .line 470
    .line 471
    :cond_1a
    return-object v4

    .line 472
    :catchall_0
    move-exception v0

    .line 473
    const/4 v6, 0x0

    .line 474
    invoke-interface {v9, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    throw v0
.end method

.class public final Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $hapticFeedback:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic $onSwipeEnd:Lkotlin/jvm/functions/Function1;

.field public final synthetic $state:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

.field public synthetic F$0:F


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;->$state:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;->$hapticFeedback:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;->$onSwipeEnd:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    const/4 p1, 0x3

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 10
    .line 11
    new-instance p2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;

    .line 12
    .line 13
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;->$hapticFeedback:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 14
    .line 15
    iget-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;->$onSwipeEnd:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;->$state:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 18
    .line 19
    invoke-direct {p2, p0, v0, v1, p3}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    iput p1, p2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;->F$0:F

    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    invoke-virtual {p2, p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;->F$0:F

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;->$state:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 7
    .line 8
    iget-object p1, v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->dragAnimationJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 9
    .line 10
    iget-object v7, v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 11
    .line 12
    iget-object v1, v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->pendingOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v8}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-object v8, v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->dragAnimationJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 21
    .line 22
    invoke-virtual {v2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getSwipeState$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v3, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;->Swiping:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 27
    .line 28
    sget-object v4, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;->Revealed:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    if-eq p1, v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getSwipeState$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-ne p1, v4, :cond_10

    .line 38
    .line 39
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v3, 0x0

    .line 44
    cmpg-float p1, p1, v3

    .line 45
    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    goto/16 :goto_6

    .line 49
    .line 50
    :cond_2
    invoke-virtual {v2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ljava/lang/Number;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    cmpl-float p1, p1, v3

    .line 65
    .line 66
    sget-object v6, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;->StartToEnd:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 67
    .line 68
    if-lez p1, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {v2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Ljava/lang/Number;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    cmpg-float p1, p1, v3

    .line 86
    .line 87
    sget-object v9, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;->EndToStart:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 88
    .line 89
    if-gez p1, :cond_4

    .line 90
    .line 91
    :goto_0
    move-object v6, v9

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    cmpl-float p1, v0, v3

    .line 94
    .line 95
    if-lez p1, :cond_5

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    cmpg-float p1, v0, v3

    .line 99
    .line 100
    if-gez p1, :cond_6

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    sget-object v6, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;->Settled:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 104
    .line 105
    :goto_1
    invoke-virtual {v2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getSwipeState$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-ne p1, v4, :cond_7

    .line 110
    .line 111
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->isClosingGesture(F)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_7

    .line 116
    .line 117
    goto/16 :goto_6

    .line 118
    .line 119
    :cond_7
    invoke-virtual {v2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getSwipeState$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-ne p1, v4, :cond_8

    .line 124
    .line 125
    invoke-virtual {v2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getActiveBehaviour$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 126
    .line 127
    .line 128
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    const/4 v4, 0x1

    .line 133
    if-eqz p1, :cond_b

    .line 134
    .line 135
    if-eq p1, v4, :cond_a

    .line 136
    .line 137
    const/4 v9, 0x2

    .line 138
    if-ne p1, v9, :cond_9

    .line 139
    .line 140
    move p1, v4

    .line 141
    goto :goto_3

    .line 142
    :cond_9
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 143
    .line 144
    .line 145
    return-object v8

    .line 146
    :cond_a
    iget-object p1, v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->endToStartBehaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 147
    .line 148
    instance-of p1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Disabled;

    .line 149
    .line 150
    :goto_2
    xor-int/2addr p1, v4

    .line 151
    goto :goto_3

    .line 152
    :cond_b
    iget-object p1, v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->startToEndBehaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 153
    .line 154
    instance-of p1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Disabled;

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :goto_3
    const/4 v9, 0x3

    .line 158
    if-eqz p1, :cond_f

    .line 159
    .line 160
    move p1, v4

    .line 161
    invoke-virtual {v2, v6}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getBehaviour(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;)Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    iget-object v3, v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 166
    .line 167
    invoke-virtual {v2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    invoke-virtual {v10}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    check-cast v10, Ljava/lang/Number;

    .line 176
    .line 177
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    new-instance v11, Lokhttp3/Dispatcher;

    .line 182
    .line 183
    iget-object v3, v3, Landroidx/compose/animation/core/DecayAnimationSpecImpl;->floatDecaySpec:Landroidx/camera/view/PreviewView$1;

    .line 184
    .line 185
    const/4 v12, 0x7

    .line 186
    invoke-direct {v11, v12, v3}, Lokhttp3/Dispatcher;-><init>(ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    new-instance v3, Landroidx/compose/animation/core/AnimationVector1D;

    .line 190
    .line 191
    invoke-direct {v3, v10}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 192
    .line 193
    .line 194
    new-instance v10, Landroidx/compose/animation/core/AnimationVector1D;

    .line 195
    .line 196
    invoke-direct {v10, v0}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v11, v3, v10}, Lokhttp3/Dispatcher;->getTargetValue(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Landroidx/compose/animation/core/AnimationVector1D;

    .line 204
    .line 205
    iget v0, v0, Landroidx/compose/animation/core/AnimationVector1D;->value:F

    .line 206
    .line 207
    invoke-virtual {v2, v4}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getPercentageThreshold(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;)F

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    iget-object v10, v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->layoutWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 212
    .line 213
    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    mul-float/2addr v10, v3

    .line 218
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    cmpl-float v0, v0, v10

    .line 223
    .line 224
    if-ltz v0, :cond_c

    .line 225
    .line 226
    move v0, p1

    .line 227
    goto :goto_4

    .line 228
    :cond_c
    move v0, v5

    .line 229
    :goto_4
    invoke-virtual {v2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v3}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    check-cast v3, Ljava/lang/Number;

    .line 238
    .line 239
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    cmpl-float v3, v3, v10

    .line 248
    .line 249
    if-ltz v3, :cond_d

    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_d
    if-eqz v0, :cond_e

    .line 253
    .line 254
    :goto_5
    move v5, p1

    .line 255
    :cond_e
    invoke-virtual {v2, v5, v6, v4}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->calculateFinalOffset(ZLnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;)F

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 260
    .line 261
    .line 262
    new-instance v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;

    .line 263
    .line 264
    const/4 v6, 0x0

    .line 265
    invoke-direct/range {v1 .. v6}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;FLnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;ZLkotlin/coroutines/Continuation;)V

    .line 266
    .line 267
    .line 268
    invoke-static {v7, v8, v8, v1, v9}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 269
    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_f
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 273
    .line 274
    .line 275
    new-instance p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;

    .line 276
    .line 277
    invoke-direct {p1, v2, v8, v5}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;Lkotlin/coroutines/Continuation;I)V

    .line 278
    .line 279
    .line 280
    invoke-static {v7, v8, v8, p1, v9}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 281
    .line 282
    .line 283
    sget-object p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;->Settled:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 284
    .line 285
    iget-object v0, v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->swipeState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 286
    .line 287
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :cond_10
    :goto_6
    if-eqz v5, :cond_12

    .line 291
    .line 292
    invoke-virtual {v2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getActiveBehaviour$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-interface {p1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;->getEnableHapticFeedback()Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-eqz p1, :cond_11

    .line 301
    .line 302
    const/16 p1, 0x17

    .line 303
    .line 304
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;->$hapticFeedback:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 305
    .line 306
    check-cast v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

    .line 307
    .line 308
    invoke-virtual {v0, p1}, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;->performHapticFeedback-CdsT49E(I)V

    .line 309
    .line 310
    .line 311
    :cond_11
    iget-object p1, v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->swipeDirection$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 312
    .line 313
    invoke-virtual {p1}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    check-cast p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 318
    .line 319
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;->$onSwipeEnd:Lkotlin/jvm/functions/Function1;

    .line 320
    .line 321
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    :cond_12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 325
    .line 326
    return-object p0
.end method

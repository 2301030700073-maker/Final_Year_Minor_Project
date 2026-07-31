.class public final synthetic Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda2;->f$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda2;->f$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->pendingOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 14
    .line 15
    iget-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->layoutWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 16
    .line 17
    iget-object v4, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->endToStartBehaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 18
    .line 19
    iget-object v5, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->startToEndBehaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Float;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getSwipeState$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    sget-object v7, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;->Swiping:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 32
    .line 33
    sget-object v8, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;->Revealed:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 34
    .line 35
    if-eq v6, v7, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getSwipeState$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    if-eq v6, v8, :cond_0

    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getSwipeState$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    if-ne v6, v8, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getActiveBehaviour$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    instance-of v6, v6, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;

    .line 56
    .line 57
    if-eqz v6, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->isClosingGesture(F)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_1

    .line 64
    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_1
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v6}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Ljava/lang/Number;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    add-float v7, v6, p1

    .line 82
    .line 83
    const/4 v8, 0x0

    .line 84
    cmpl-float v9, v7, v8

    .line 85
    .line 86
    if-ltz v9, :cond_2

    .line 87
    .line 88
    move-object v10, v5

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    move-object v10, v4

    .line 91
    :goto_0
    instance-of v11, v10, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;

    .line 92
    .line 93
    if-eqz v11, :cond_3

    .line 94
    .line 95
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    instance-of v11, v10, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;

    .line 101
    .line 102
    if-eqz v11, :cond_4

    .line 103
    .line 104
    invoke-virtual {p0, v10}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getPercentageThreshold(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;)F

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    mul-float/2addr v1, v10

    .line 113
    const/high16 v10, 0x41200000    # 10.0f

    .line 114
    .line 115
    add-float/2addr v1, v10

    .line 116
    goto :goto_1

    .line 117
    :cond_4
    instance-of v1, v10, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Disabled;

    .line 118
    .line 119
    if-eqz v1, :cond_c

    .line 120
    .line 121
    move v1, v8

    .line 122
    :goto_1
    cmpg-float v7, v7, v8

    .line 123
    .line 124
    if-nez v7, :cond_5

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    if-lez v9, :cond_6

    .line 128
    .line 129
    instance-of v5, v5, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Disabled;

    .line 130
    .line 131
    if-eqz v5, :cond_7

    .line 132
    .line 133
    :cond_6
    if-gez v7, :cond_d

    .line 134
    .line 135
    instance-of v4, v4, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Disabled;

    .line 136
    .line 137
    if-nez v4, :cond_d

    .line 138
    .line 139
    :cond_7
    :goto_2
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    cmpg-float v5, v1, v8

    .line 144
    .line 145
    if-gtz v5, :cond_8

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_8
    const v5, 0x3f333333    # 0.7f

    .line 149
    .line 150
    .line 151
    mul-float/2addr v5, v1

    .line 152
    cmpl-float v6, v4, v1

    .line 153
    .line 154
    const v8, 0x3dcccccd    # 0.1f

    .line 155
    .line 156
    .line 157
    if-ltz v6, :cond_9

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_9
    cmpl-float v6, v4, v5

    .line 161
    .line 162
    const/high16 v7, 0x3f800000    # 1.0f

    .line 163
    .line 164
    if-ltz v6, :cond_a

    .line 165
    .line 166
    sub-float/2addr v4, v5

    .line 167
    sub-float/2addr v1, v5

    .line 168
    div-float/2addr v4, v1

    .line 169
    invoke-static {v7, v8, v4}, Landroidx/room/util/DBUtil;->lerp(FFF)F

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    goto :goto_3

    .line 174
    :cond_a
    move v8, v7

    .line 175
    :goto_3
    mul-float/2addr p1, v8

    .line 176
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    add-float/2addr v1, p1

    .line 181
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->dragAnimationJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 185
    .line 186
    if-eqz p1, :cond_b

    .line 187
    .line 188
    invoke-virtual {p1, v3}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 189
    .line 190
    .line 191
    :cond_b
    iget-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 192
    .line 193
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;

    .line 194
    .line 195
    const/4 v1, 0x1

    .line 196
    invoke-direct {v0, p0, v3, v1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$onDragStopped$1;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;Lkotlin/coroutines/Continuation;I)V

    .line 197
    .line 198
    .line 199
    const/4 v1, 0x3

    .line 200
    invoke-static {p1, v3, v3, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->dragAnimationJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_c
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 208
    .line 209
    .line 210
    move-object v2, v3

    .line 211
    :cond_d
    :goto_4
    return-object v2

    .line 212
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/unit/Density;

    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    check-cast p0, Ljava/lang/Number;

    .line 226
    .line 227
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 232
    .line 233
    .line 234
    move-result p0

    .line 235
    int-to-long p0, p0

    .line 236
    shl-long/2addr p0, v1

    .line 237
    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    .line 238
    .line 239
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 240
    .line 241
    .line 242
    return-object v0

    .line 243
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    .line 244
    .line 245
    iget-wide v3, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 246
    .line 247
    shr-long v0, v3, v1

    .line 248
    .line 249
    long-to-int p1, v0

    .line 250
    int-to-float p1, p1

    .line 251
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->layoutWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 252
    .line 253
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 254
    .line 255
    .line 256
    return-object v2

    .line 257
    :pswitch_2
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 258
    .line 259
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    sget-object p1, Landroidx/compose/animation/EnterTransitionImpl;->None:Landroidx/compose/animation/EnterTransitionImpl;

    .line 263
    .line 264
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getActiveBehaviour$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    instance-of v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;

    .line 269
    .line 270
    if-eqz v0, :cond_e

    .line 271
    .line 272
    move-object v3, p0

    .line 273
    check-cast v3, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;

    .line 274
    .line 275
    :cond_e
    if-eqz v3, :cond_f

    .line 276
    .line 277
    iget-object p0, v3, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->dismissTransition:Landroidx/compose/animation/ExitTransitionImpl;

    .line 278
    .line 279
    if-nez p0, :cond_10

    .line 280
    .line 281
    :cond_f
    sget-object p0, Landroidx/compose/animation/ExitTransitionImpl;->None:Landroidx/compose/animation/ExitTransitionImpl;

    .line 282
    .line 283
    :cond_10
    invoke-static {p1, p0}, Landroidx/compose/animation/CrossfadeKt;->togetherWith(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ContentTransform;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    return-object p0

    .line 288
    nop

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

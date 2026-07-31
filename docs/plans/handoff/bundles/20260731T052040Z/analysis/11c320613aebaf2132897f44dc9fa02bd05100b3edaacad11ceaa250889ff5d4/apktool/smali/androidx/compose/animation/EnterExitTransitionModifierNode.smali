.class public final Landroidx/compose/animation/EnterExitTransitionModifierNode;
.super Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public currentAlignment:Landroidx/compose/ui/BiasAlignment;

.field public enter:Landroidx/compose/animation/EnterTransition;

.field public exit:Landroidx/compose/animation/ExitTransition;

.field public graphicsLayerBlock:Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

.field public isEnabled:Lkotlin/jvm/functions/Function0;

.field public lookaheadSize:J

.field public transition:Landroidx/compose/animation/core/Transition;


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->transition:Landroidx/compose/animation/core/Transition;

    .line 6
    .line 7
    iget-object v2, v2, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->transition:Landroidx/compose/animation/core/Transition;

    .line 14
    .line 15
    iget-object v3, v3, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    sget-object v4, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    if-ne v2, v3, :cond_0

    .line 25
    .line 26
    iput-object v5, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/BiasAlignment;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/BiasAlignment;

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->transition:Landroidx/compose/animation/core/Transition;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget-object v3, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    .line 40
    .line 41
    invoke-interface {v2, v4, v3}, Landroidx/compose/animation/core/Transition$Segment;->isTransitioningTo(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->exit:Landroidx/compose/animation/ExitTransition;

    .line 48
    .line 49
    check-cast v2, Landroidx/compose/animation/ExitTransitionImpl;

    .line 50
    .line 51
    iget-object v2, v2, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->exit:Landroidx/compose/animation/ExitTransition;

    .line 55
    .line 56
    check-cast v2, Landroidx/compose/animation/ExitTransitionImpl;

    .line 57
    .line 58
    iget-object v2, v2, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 59
    .line 60
    :goto_0
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 61
    .line 62
    iput-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/BiasAlignment;

    .line 63
    .line 64
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    sget-object v3, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 69
    .line 70
    const-wide v6, 0xffffffffL

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    const/16 v8, 0x20

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget v4, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 84
    .line 85
    iget v5, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 86
    .line 87
    int-to-long v9, v4

    .line 88
    shl-long/2addr v9, v8

    .line 89
    int-to-long v4, v5

    .line 90
    and-long/2addr v4, v6

    .line 91
    or-long/2addr v4, v9

    .line 92
    iput-wide v4, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    .line 93
    .line 94
    shr-long v8, v4, v8

    .line 95
    .line 96
    long-to-int v0, v8

    .line 97
    and-long/2addr v4, v6

    .line 98
    long-to-int v4, v4

    .line 99
    new-instance v5, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$1;

    .line 100
    .line 101
    invoke-direct {v5, v2}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v1, v0, v4, v3, v5}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0

    .line 109
    :cond_3
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->isEnabled:Lkotlin/jvm/functions/Function0;

    .line 110
    .line 111
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_d

    .line 122
    .line 123
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->graphicsLayerBlock:Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    iget-object v9, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 126
    .line 127
    iget-object v10, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 128
    .line 129
    iget-object v11, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/animation/core/Transition;

    .line 130
    .line 131
    iget-object v12, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/animation/EnterTransition;

    .line 132
    .line 133
    iget-object v13, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/animation/ExitTransition;

    .line 134
    .line 135
    iget-object v2, v2, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 136
    .line 137
    if-eqz v9, :cond_4

    .line 138
    .line 139
    new-instance v14, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;

    .line 140
    .line 141
    invoke-direct {v14, v12, v13}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V

    .line 142
    .line 143
    .line 144
    new-instance v15, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2;

    .line 145
    .line 146
    invoke-direct {v15, v12, v13}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9, v14, v15}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    goto :goto_2

    .line 154
    :cond_4
    move-object v9, v5

    .line 155
    :goto_2
    if-eqz v10, :cond_5

    .line 156
    .line 157
    new-instance v14, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1;

    .line 158
    .line 159
    invoke-direct {v14, v12, v13}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V

    .line 160
    .line 161
    .line 162
    new-instance v15, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$2;

    .line 163
    .line 164
    invoke-direct {v15, v12, v13}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$2;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10, v14, v15}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    goto :goto_3

    .line 172
    :cond_5
    move-object v10, v5

    .line 173
    :goto_3
    iget-object v11, v11, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    .line 174
    .line 175
    invoke-virtual {v11}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    if-ne v11, v4, :cond_8

    .line 180
    .line 181
    move-object v4, v12

    .line 182
    check-cast v4, Landroidx/compose/animation/EnterTransitionImpl;

    .line 183
    .line 184
    iget-object v4, v4, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 185
    .line 186
    iget-object v4, v4, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 187
    .line 188
    if-eqz v4, :cond_6

    .line 189
    .line 190
    iget-wide v14, v4, Landroidx/compose/animation/Scale;->transformOrigin:J

    .line 191
    .line 192
    new-instance v4, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 193
    .line 194
    invoke-direct {v4, v14, v15}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_6
    move-object v4, v13

    .line 199
    check-cast v4, Landroidx/compose/animation/ExitTransitionImpl;

    .line 200
    .line 201
    iget-object v4, v4, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 202
    .line 203
    iget-object v4, v4, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 204
    .line 205
    if-eqz v4, :cond_7

    .line 206
    .line 207
    iget-wide v14, v4, Landroidx/compose/animation/Scale;->transformOrigin:J

    .line 208
    .line 209
    new-instance v4, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 210
    .line 211
    invoke-direct {v4, v14, v15}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_7
    move-object v4, v5

    .line 216
    goto :goto_4

    .line 217
    :cond_8
    move-object v4, v13

    .line 218
    check-cast v4, Landroidx/compose/animation/ExitTransitionImpl;

    .line 219
    .line 220
    iget-object v4, v4, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 221
    .line 222
    iget-object v4, v4, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 223
    .line 224
    if-eqz v4, :cond_9

    .line 225
    .line 226
    iget-wide v14, v4, Landroidx/compose/animation/Scale;->transformOrigin:J

    .line 227
    .line 228
    new-instance v4, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 229
    .line 230
    invoke-direct {v4, v14, v15}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_9
    move-object v4, v12

    .line 235
    check-cast v4, Landroidx/compose/animation/EnterTransitionImpl;

    .line 236
    .line 237
    iget-object v4, v4, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 238
    .line 239
    iget-object v4, v4, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    .line 240
    .line 241
    if-eqz v4, :cond_7

    .line 242
    .line 243
    iget-wide v14, v4, Landroidx/compose/animation/Scale;->transformOrigin:J

    .line 244
    .line 245
    new-instance v4, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 246
    .line 247
    invoke-direct {v4, v14, v15}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 248
    .line 249
    .line 250
    :goto_4
    if-eqz v2, :cond_a

    .line 251
    .line 252
    sget-object v5, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;->INSTANCE$5:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4$1;

    .line 253
    .line 254
    new-instance v11, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2;

    .line 255
    .line 256
    invoke-direct {v11, v4, v12, v13}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2;-><init>(Landroidx/compose/ui/graphics/TransformOrigin;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v5, v11}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->animate(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    :cond_a
    new-instance v2, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1;

    .line 264
    .line 265
    invoke-direct {v2, v9, v10, v5}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;)V

    .line 266
    .line 267
    .line 268
    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 269
    .line 270
    .line 271
    move-result-object v12

    .line 272
    iget v4, v12, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 273
    .line 274
    iget v5, v12, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 275
    .line 276
    int-to-long v9, v4

    .line 277
    shl-long/2addr v9, v8

    .line 278
    int-to-long v4, v5

    .line 279
    and-long/2addr v4, v6

    .line 280
    or-long/2addr v4, v9

    .line 281
    iget-wide v9, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    .line 282
    .line 283
    const-wide v13, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    invoke-static {v9, v10, v13, v14}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    if-nez v9, :cond_b

    .line 293
    .line 294
    iget-wide v9, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    .line 295
    .line 296
    move-wide v14, v9

    .line 297
    :goto_5
    move-wide/from16 v9, p3

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_b
    move-wide v14, v4

    .line 301
    goto :goto_5

    .line 302
    :goto_6
    invoke-static {v9, v10, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    .line 303
    .line 304
    .line 305
    move-result-wide v16

    .line 306
    iget-object v13, v0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->currentAlignment:Landroidx/compose/ui/BiasAlignment;

    .line 307
    .line 308
    const-wide/16 v4, 0x0

    .line 309
    .line 310
    if-eqz v13, :cond_c

    .line 311
    .line 312
    sget-object v18, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 313
    .line 314
    invoke-virtual/range {v13 .. v18}, Landroidx/compose/ui/BiasAlignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 315
    .line 316
    .line 317
    move-result-wide v9

    .line 318
    goto :goto_7

    .line 319
    :cond_c
    move-wide v9, v4

    .line 320
    :goto_7
    invoke-static {v9, v10, v4, v5}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    .line 321
    .line 322
    .line 323
    move-result-wide v13

    .line 324
    shr-long v8, v16, v8

    .line 325
    .line 326
    long-to-int v0, v8

    .line 327
    and-long v6, v16, v6

    .line 328
    .line 329
    long-to-int v6, v6

    .line 330
    new-instance v11, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;

    .line 331
    .line 332
    move-object/from16 v17, v2

    .line 333
    .line 334
    move-wide v15, v4

    .line 335
    invoke-direct/range {v11 .. v17}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;-><init>(Landroidx/compose/ui/layout/Placeable;JJLandroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1;)V

    .line 336
    .line 337
    .line 338
    invoke-interface {v1, v0, v6, v3, v11}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    return-object v0

    .line 343
    :cond_d
    move-wide/from16 v9, p3

    .line 344
    .line 345
    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 350
    .line 351
    iget v4, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 352
    .line 353
    new-instance v5, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$3$1;

    .line 354
    .line 355
    invoke-direct {v5, v0}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$3$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 356
    .line 357
    .line 358
    invoke-interface {v1, v2, v4, v3, v5}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    return-object v0
.end method

.method public final onAttach()V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->lookaheadSize:J

    .line 7
    .line 8
    return-void
.end method

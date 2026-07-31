.class public abstract Landroidx/compose/material3/ProgressIndicatorKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final CircularProgressEasing:Landroidx/compose/animation/core/CubicBezierEasing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/tokens/MotionTokens;->EasingStandardCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 2
    .line 3
    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 4
    .line 5
    return-void
.end method

.method public static final CircularProgressIndicator-4lLiAd8(Landroidx/compose/ui/Modifier;JFJIFLandroidx/compose/runtime/Composer;II)V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v12, p1

    .line 4
    .line 5
    move/from16 v0, p9

    .line 6
    .line 7
    move-object/from16 v6, p8

    .line 8
    .line 9
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v2, 0x13db87c1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v2, v0, 0x6

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v2, v3

    .line 31
    :goto_0
    or-int/2addr v2, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v2, v0

    .line 34
    :goto_1
    and-int/lit8 v4, v0, 0x30

    .line 35
    .line 36
    if-nez v4, :cond_3

    .line 37
    .line 38
    invoke-virtual {v6, v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    const/16 v4, 0x20

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 v4, 0x10

    .line 48
    .line 49
    :goto_2
    or-int/2addr v2, v4

    .line 50
    :cond_3
    and-int/lit8 v4, p10, 0x4

    .line 51
    .line 52
    if-eqz v4, :cond_5

    .line 53
    .line 54
    or-int/lit16 v2, v2, 0x180

    .line 55
    .line 56
    :cond_4
    move/from16 v5, p3

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_5
    and-int/lit16 v5, v0, 0x180

    .line 60
    .line 61
    if-nez v5, :cond_4

    .line 62
    .line 63
    move/from16 v5, p3

    .line 64
    .line 65
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_6

    .line 70
    .line 71
    const/16 v7, 0x100

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_6
    const/16 v7, 0x80

    .line 75
    .line 76
    :goto_3
    or-int/2addr v2, v7

    .line 77
    :goto_4
    and-int/lit16 v7, v0, 0xc00

    .line 78
    .line 79
    if-nez v7, :cond_7

    .line 80
    .line 81
    or-int/lit16 v2, v2, 0x400

    .line 82
    .line 83
    :cond_7
    const v7, 0x36000

    .line 84
    .line 85
    .line 86
    or-int/2addr v2, v7

    .line 87
    const v7, 0x12493

    .line 88
    .line 89
    .line 90
    and-int/2addr v7, v2

    .line 91
    const v8, 0x12492

    .line 92
    .line 93
    .line 94
    const/4 v14, 0x0

    .line 95
    const/4 v11, 0x1

    .line 96
    if-eq v7, v8, :cond_8

    .line 97
    .line 98
    move v7, v11

    .line 99
    goto :goto_5

    .line 100
    :cond_8
    move v7, v14

    .line 101
    :goto_5
    and-int/lit8 v8, v2, 0x1

    .line 102
    .line 103
    invoke-virtual {v6, v8, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_14

    .line 108
    .line 109
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 110
    .line 111
    .line 112
    and-int/lit8 v7, v0, 0x1

    .line 113
    .line 114
    if-eqz v7, :cond_a

    .line 115
    .line 116
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_9

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_9
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 124
    .line 125
    .line 126
    and-int/lit16 v2, v2, -0x1c01

    .line 127
    .line 128
    move/from16 v16, p7

    .line 129
    .line 130
    move v7, v2

    .line 131
    move v15, v5

    .line 132
    move-wide/from16 v4, p4

    .line 133
    .line 134
    move/from16 v2, p6

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_a
    :goto_6
    const/high16 v7, 0x40800000    # 4.0f

    .line 138
    .line 139
    if-eqz v4, :cond_b

    .line 140
    .line 141
    move v5, v7

    .line 142
    :cond_b
    sget-wide v15, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 143
    .line 144
    and-int/lit16 v2, v2, -0x1c01

    .line 145
    .line 146
    move-wide/from16 v27, v15

    .line 147
    .line 148
    move v15, v5

    .line 149
    move-wide/from16 v4, v27

    .line 150
    .line 151
    move/from16 v16, v7

    .line 152
    .line 153
    move v7, v2

    .line 154
    move v2, v11

    .line 155
    :goto_7
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 156
    .line 157
    .line 158
    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 159
    .line 160
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 165
    .line 166
    new-instance v17, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 167
    .line 168
    invoke-interface {v8, v15}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    const/16 v18, 0x0

    .line 173
    .line 174
    const/16 v19, 0x1a

    .line 175
    .line 176
    const/16 v20, 0x0

    .line 177
    .line 178
    move/from16 p6, v2

    .line 179
    .line 180
    move/from16 p4, v8

    .line 181
    .line 182
    move-object/from16 p3, v17

    .line 183
    .line 184
    move/from16 p7, v18

    .line 185
    .line 186
    move/from16 p8, v19

    .line 187
    .line 188
    move/from16 p5, v20

    .line 189
    .line 190
    invoke-direct/range {p3 .. p8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 191
    .line 192
    .line 193
    move-object/from16 v2, p3

    .line 194
    .line 195
    move/from16 v17, p6

    .line 196
    .line 197
    invoke-static {v6, v11}, Landroidx/compose/animation/core/ArcSplineKt;->rememberInfiniteTransition(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/InfiniteTransition;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    sget-object v9, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 202
    .line 203
    const/16 v10, 0x1770

    .line 204
    .line 205
    invoke-static {v10, v14, v9, v3}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    const/4 v9, 0x6

    .line 210
    invoke-static {v3, v9}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    move-object/from16 v19, v2

    .line 215
    .line 216
    move-object v2, v8

    .line 217
    const/16 v8, 0x8

    .line 218
    .line 219
    move-wide/from16 v20, v4

    .line 220
    .line 221
    move-object v5, v3

    .line 222
    const/4 v3, 0x0

    .line 223
    const/high16 v4, 0x44870000    # 1080.0f

    .line 224
    .line 225
    move/from16 v22, v7

    .line 226
    .line 227
    const/16 v7, 0x11b8

    .line 228
    .line 229
    move-object/from16 v25, v19

    .line 230
    .line 231
    move-wide/from16 v23, v20

    .line 232
    .line 233
    move/from16 v14, v22

    .line 234
    .line 235
    invoke-static/range {v2 .. v8}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    new-instance v4, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;

    .line 240
    .line 241
    const/16 v5, 0xc

    .line 242
    .line 243
    invoke-direct {v4, v5}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 244
    .line 245
    .line 246
    new-instance v5, Landroidx/compose/animation/core/KeyframesSpec;

    .line 247
    .line 248
    new-instance v8, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 249
    .line 250
    invoke-direct {v8}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4, v8}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    invoke-direct {v5, v8}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v5, v9}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    const/16 v8, 0x8

    .line 264
    .line 265
    move-object v4, v3

    .line 266
    const/4 v3, 0x0

    .line 267
    move-object/from16 v19, v4

    .line 268
    .line 269
    const/high16 v4, 0x43b40000    # 360.0f

    .line 270
    .line 271
    move-object/from16 v26, v19

    .line 272
    .line 273
    invoke-static/range {v2 .. v8}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    new-instance v3, Landroidx/compose/animation/core/KeyframesSpec;

    .line 278
    .line 279
    new-instance v4, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 280
    .line 281
    invoke-direct {v4}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;-><init>()V

    .line 282
    .line 283
    .line 284
    iput v10, v4, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->durationMillis:I

    .line 285
    .line 286
    const v5, 0x3f5eb852    # 0.87f

    .line 287
    .line 288
    .line 289
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    const/16 v7, 0xbb8

    .line 294
    .line 295
    invoke-virtual {v4, v7, v5}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    sget-object v7, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 300
    .line 301
    iput-object v7, v5, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->easing:Landroidx/compose/animation/core/Easing;

    .line 302
    .line 303
    const v5, 0x3dcccccd    # 0.1f

    .line 304
    .line 305
    .line 306
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    invoke-virtual {v4, v10, v5}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(ILjava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 311
    .line 312
    .line 313
    invoke-direct {v3, v4}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    .line 314
    .line 315
    .line 316
    invoke-static {v3, v9}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    move-object v3, v8

    .line 321
    const/16 v8, 0x8

    .line 322
    .line 323
    move-object v4, v3

    .line 324
    const v3, 0x3dcccccd    # 0.1f

    .line 325
    .line 326
    .line 327
    move-object v7, v4

    .line 328
    const v4, 0x3f5eb852    # 0.87f

    .line 329
    .line 330
    .line 331
    move-object v9, v7

    .line 332
    const/16 v7, 0x11b8

    .line 333
    .line 334
    invoke-static/range {v2 .. v8}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    move-object v2, v6

    .line 339
    new-instance v4, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 340
    .line 341
    const/4 v5, 0x3

    .line 342
    invoke-direct {v4, v5}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 343
    .line 344
    .line 345
    invoke-static {v1, v11, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    const/high16 v5, 0x42200000    # 40.0f

    .line 350
    .line 351
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    const v6, 0xe000

    .line 360
    .line 361
    .line 362
    and-int/2addr v6, v14

    .line 363
    const/16 v7, 0x4000

    .line 364
    .line 365
    if-ne v6, v7, :cond_c

    .line 366
    .line 367
    move v6, v11

    .line 368
    goto :goto_8

    .line 369
    :cond_c
    const/4 v6, 0x0

    .line 370
    :goto_8
    or-int/2addr v5, v6

    .line 371
    const/high16 v6, 0x70000

    .line 372
    .line 373
    and-int/2addr v6, v14

    .line 374
    const/high16 v7, 0x20000

    .line 375
    .line 376
    if-ne v6, v7, :cond_d

    .line 377
    .line 378
    move v6, v11

    .line 379
    goto :goto_9

    .line 380
    :cond_d
    const/4 v6, 0x0

    .line 381
    :goto_9
    or-int/2addr v5, v6

    .line 382
    and-int/lit16 v6, v14, 0x380

    .line 383
    .line 384
    const/16 v7, 0x100

    .line 385
    .line 386
    if-ne v6, v7, :cond_e

    .line 387
    .line 388
    move v6, v11

    .line 389
    goto :goto_a

    .line 390
    :cond_e
    const/4 v6, 0x0

    .line 391
    :goto_a
    or-int/2addr v5, v6

    .line 392
    move-object/from16 v7, v26

    .line 393
    .line 394
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v6

    .line 398
    or-int/2addr v5, v6

    .line 399
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    or-int/2addr v5, v6

    .line 404
    move-wide/from16 v11, v23

    .line 405
    .line 406
    invoke-virtual {v2, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 407
    .line 408
    .line 409
    move-result v8

    .line 410
    or-int/2addr v5, v8

    .line 411
    move-object/from16 v8, v25

    .line 412
    .line 413
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v10

    .line 417
    or-int/2addr v5, v10

    .line 418
    and-int/lit8 v10, v14, 0x70

    .line 419
    .line 420
    xor-int/lit8 v10, v10, 0x30

    .line 421
    .line 422
    const/16 v13, 0x20

    .line 423
    .line 424
    move-object/from16 v19, v7

    .line 425
    .line 426
    move-wide/from16 v6, p1

    .line 427
    .line 428
    if-le v10, v13, :cond_f

    .line 429
    .line 430
    invoke-virtual {v2, v6, v7}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 431
    .line 432
    .line 433
    move-result v10

    .line 434
    if-nez v10, :cond_10

    .line 435
    .line 436
    :cond_f
    and-int/lit8 v10, v14, 0x30

    .line 437
    .line 438
    if-ne v10, v13, :cond_11

    .line 439
    .line 440
    :cond_10
    const/4 v10, 0x1

    .line 441
    goto :goto_b

    .line 442
    :cond_11
    const/4 v10, 0x0

    .line 443
    :goto_b
    or-int/2addr v5, v10

    .line 444
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v10

    .line 448
    if-nez v5, :cond_12

    .line 449
    .line 450
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 451
    .line 452
    if-ne v10, v5, :cond_13

    .line 453
    .line 454
    :cond_12
    move-object v5, v2

    .line 455
    goto :goto_c

    .line 456
    :cond_13
    move-object v14, v2

    .line 457
    move-wide/from16 v23, v11

    .line 458
    .line 459
    move v6, v15

    .line 460
    move/from16 v5, v16

    .line 461
    .line 462
    move-object v15, v4

    .line 463
    goto :goto_d

    .line 464
    :goto_c
    new-instance v2, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda0;

    .line 465
    .line 466
    move-wide v13, v11

    .line 467
    move-object v11, v8

    .line 468
    move-object v8, v9

    .line 469
    move-wide v9, v13

    .line 470
    move-object v14, v5

    .line 471
    move-wide v12, v6

    .line 472
    move v6, v15

    .line 473
    move/from16 v5, v16

    .line 474
    .line 475
    move-object/from16 v7, v19

    .line 476
    .line 477
    move-object v15, v4

    .line 478
    move/from16 v4, v17

    .line 479
    .line 480
    invoke-direct/range {v2 .. v13}, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;IFFLandroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;JLandroidx/compose/ui/graphics/drawscope/Stroke;J)V

    .line 481
    .line 482
    .line 483
    move-wide/from16 v23, v9

    .line 484
    .line 485
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    move-object v10, v2

    .line 489
    :goto_d
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 490
    .line 491
    const/4 v2, 0x0

    .line 492
    invoke-static {v2, v14, v15, v10}, Landroidx/compose/foundation/ImageKt;->Canvas(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 493
    .line 494
    .line 495
    move v8, v5

    .line 496
    move v4, v6

    .line 497
    move/from16 v7, v17

    .line 498
    .line 499
    move-wide/from16 v5, v23

    .line 500
    .line 501
    goto :goto_e

    .line 502
    :cond_14
    move-object v14, v6

    .line 503
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 504
    .line 505
    .line 506
    move/from16 v7, p6

    .line 507
    .line 508
    move/from16 v8, p7

    .line 509
    .line 510
    move v4, v5

    .line 511
    move-wide/from16 v5, p4

    .line 512
    .line 513
    :goto_e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 514
    .line 515
    .line 516
    move-result-object v11

    .line 517
    if-eqz v11, :cond_15

    .line 518
    .line 519
    new-instance v0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda1;

    .line 520
    .line 521
    move-wide/from16 v2, p1

    .line 522
    .line 523
    move/from16 v9, p9

    .line 524
    .line 525
    move/from16 v10, p10

    .line 526
    .line 527
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;JFJIFII)V

    .line 528
    .line 529
    .line 530
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 531
    .line 532
    :cond_15
    return-void
.end method

.method public static final drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 12

    .line 1
    move-object/from16 v10, p5

    .line 2
    .line 3
    iget v0, v10, Landroidx/compose/ui/graphics/drawscope/Stroke;->width:F

    .line 4
    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr v0, v1

    .line 8
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const/16 v4, 0x20

    .line 13
    .line 14
    shr-long/2addr v2, v4

    .line 15
    long-to-int v2, v2

    .line 16
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    mul-float/2addr v1, v0

    .line 21
    sub-float/2addr v2, v1

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-long v5, v1

    .line 27
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-long v0, v0

    .line 32
    shl-long/2addr v5, v4

    .line 33
    const-wide v7, 0xffffffffL

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    and-long/2addr v0, v7

    .line 39
    or-long/2addr v5, v0

    .line 40
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    int-to-long v0, v0

    .line 45
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    int-to-long v2, v2

    .line 50
    shl-long/2addr v0, v4

    .line 51
    and-long/2addr v2, v7

    .line 52
    or-long v7, v0, v2

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    const/16 v11, 0x340

    .line 56
    .line 57
    move-object v0, p0

    .line 58
    move v3, p1

    .line 59
    move v4, p2

    .line 60
    move-wide v1, p3

    .line 61
    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/Modifier$-CC;->drawArc-yD3GUKo$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFJJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

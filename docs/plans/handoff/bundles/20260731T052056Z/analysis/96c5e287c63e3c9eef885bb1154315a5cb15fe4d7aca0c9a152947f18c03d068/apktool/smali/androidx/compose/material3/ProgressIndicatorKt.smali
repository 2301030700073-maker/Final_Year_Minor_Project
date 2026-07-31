.class public abstract Landroidx/compose/material3/ProgressIndicatorKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final CircularProgressEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field public static final LinearIndeterminateProgressEasing:Landroidx/compose/animation/core/CubicBezierEasing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/tokens/MotionTokens;->EasingEmphasizedAccelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 2
    .line 3
    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndeterminateProgressEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/material3/tokens/MotionTokens;->EasingStandardCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 8
    .line 9
    return-void
.end method

.method public static final CircularProgressIndicator-4lLiAd8(Landroidx/compose/ui/Modifier;JFJIFLandroidx/compose/runtime/GapComposer;II)V
    .locals 29

    .line 1
    move-wide/from16 v10, p1

    .line 2
    .line 3
    move-object/from16 v4, p8

    .line 4
    .line 5
    move/from16 v12, p9

    .line 6
    .line 7
    const v0, 0x13db87c1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v0, p10, 0x1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    or-int/lit8 v2, v12, 0x6

    .line 19
    .line 20
    move v3, v2

    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    and-int/lit8 v2, v12, 0x6

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    move-object/from16 v2, p0

    .line 29
    .line 30
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const/4 v3, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v3, v1

    .line 39
    :goto_0
    or-int/2addr v3, v12

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object/from16 v2, p0

    .line 42
    .line 43
    move v3, v12

    .line 44
    :goto_1
    invoke-virtual {v4, v10, v11}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    const/16 v5, 0x20

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    const/16 v5, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v3, v5

    .line 56
    and-int/lit8 v5, p10, 0x4

    .line 57
    .line 58
    if-eqz v5, :cond_5

    .line 59
    .line 60
    or-int/lit16 v3, v3, 0x180

    .line 61
    .line 62
    :cond_4
    move/from16 v8, p3

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_5
    and-int/lit16 v8, v12, 0x180

    .line 66
    .line 67
    if-nez v8, :cond_4

    .line 68
    .line 69
    move/from16 v8, p3

    .line 70
    .line 71
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-eqz v9, :cond_6

    .line 76
    .line 77
    const/16 v9, 0x100

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_6
    const/16 v9, 0x80

    .line 81
    .line 82
    :goto_3
    or-int/2addr v3, v9

    .line 83
    :goto_4
    const v9, 0x36400

    .line 84
    .line 85
    .line 86
    or-int/2addr v3, v9

    .line 87
    const v9, 0x12493

    .line 88
    .line 89
    .line 90
    and-int/2addr v9, v3

    .line 91
    const v13, 0x12492

    .line 92
    .line 93
    .line 94
    const/4 v15, 0x1

    .line 95
    if-eq v9, v13, :cond_7

    .line 96
    .line 97
    move v9, v15

    .line 98
    goto :goto_5

    .line 99
    :cond_7
    const/4 v9, 0x0

    .line 100
    :goto_5
    and-int/lit8 v13, v3, 0x1

    .line 101
    .line 102
    invoke-virtual {v4, v13, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-eqz v9, :cond_12

    .line 107
    .line 108
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 109
    .line 110
    .line 111
    and-int/lit8 v9, v12, 0x1

    .line 112
    .line 113
    if-eqz v9, :cond_9

    .line 114
    .line 115
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    if-eqz v9, :cond_8

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_8
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 123
    .line 124
    .line 125
    and-int/lit16 v0, v3, -0x1c01

    .line 126
    .line 127
    move-wide/from16 v16, p4

    .line 128
    .line 129
    move/from16 v21, p6

    .line 130
    .line 131
    move/from16 v9, p7

    .line 132
    .line 133
    move-object v13, v2

    .line 134
    goto :goto_8

    .line 135
    :cond_9
    :goto_6
    if-eqz v0, :cond_a

    .line 136
    .line 137
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_a
    move-object v0, v2

    .line 141
    :goto_7
    const/high16 v2, 0x40800000    # 4.0f

    .line 142
    .line 143
    if-eqz v5, :cond_b

    .line 144
    .line 145
    move v8, v2

    .line 146
    :cond_b
    sget-wide v16, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 147
    .line 148
    and-int/lit16 v3, v3, -0x1c01

    .line 149
    .line 150
    move-object v13, v0

    .line 151
    move v9, v2

    .line 152
    move v0, v3

    .line 153
    move/from16 v21, v15

    .line 154
    .line 155
    :goto_8
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 156
    .line 157
    .line 158
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 159
    .line 160
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 165
    .line 166
    new-instance v18, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 167
    .line 168
    invoke-interface {v2, v8}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 169
    .line 170
    .line 171
    move-result v19

    .line 172
    const/16 v22, 0x0

    .line 173
    .line 174
    const/16 v23, 0x1a

    .line 175
    .line 176
    const/16 v20, 0x0

    .line 177
    .line 178
    invoke-direct/range {v18 .. v23}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 179
    .line 180
    .line 181
    move-object/from16 v27, v18

    .line 182
    .line 183
    move/from16 v18, v9

    .line 184
    .line 185
    move-object/from16 v9, v27

    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    move v3, v0

    .line 189
    invoke-static {v2, v4, v15}, Landroidx/compose/animation/core/ArcSplineKt;->rememberInfiniteTransition(Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/InfiniteTransition;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    sget-object v5, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 194
    .line 195
    const/16 v14, 0x1770

    .line 196
    .line 197
    invoke-static {v14, v1, v5}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    const/4 v5, 0x6

    .line 202
    invoke-static {v1, v2, v5}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    move/from16 v20, v3

    .line 207
    .line 208
    move-object v3, v1

    .line 209
    const/4 v1, 0x0

    .line 210
    move-object/from16 v22, v2

    .line 211
    .line 212
    const/high16 v2, 0x44870000    # 1080.0f

    .line 213
    .line 214
    move/from16 v23, v5

    .line 215
    .line 216
    const/16 v5, 0x11b8

    .line 217
    .line 218
    move-wide/from16 v24, v16

    .line 219
    .line 220
    move/from16 v6, v20

    .line 221
    .line 222
    move-object/from16 v7, v22

    .line 223
    .line 224
    move/from16 v15, v23

    .line 225
    .line 226
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    new-instance v2, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;

    .line 231
    .line 232
    const/16 v3, 0x15

    .line 233
    .line 234
    invoke-direct {v2, v3}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 235
    .line 236
    .line 237
    new-instance v3, Landroidx/compose/animation/core/KeyframesSpec;

    .line 238
    .line 239
    new-instance v4, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 240
    .line 241
    invoke-direct {v4}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v4}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    invoke-direct {v3, v4}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    .line 248
    .line 249
    .line 250
    invoke-static {v3, v7, v15}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    move-object v2, v1

    .line 255
    const/4 v1, 0x0

    .line 256
    move-object v4, v2

    .line 257
    const/high16 v2, 0x43b40000    # 360.0f

    .line 258
    .line 259
    move-object/from16 v26, v4

    .line 260
    .line 261
    move-object/from16 v4, p8

    .line 262
    .line 263
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    new-instance v2, Landroidx/compose/animation/core/KeyframesSpec;

    .line 268
    .line 269
    new-instance v3, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 270
    .line 271
    invoke-direct {v3}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;-><init>()V

    .line 272
    .line 273
    .line 274
    iput v14, v3, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->durationMillis:I

    .line 275
    .line 276
    const v4, 0x3f5eb852    # 0.87f

    .line 277
    .line 278
    .line 279
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    const/16 v5, 0xbb8

    .line 284
    .line 285
    invoke-virtual {v3, v4, v5}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    sget-object v5, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 290
    .line 291
    iput-object v5, v4, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->easing:Landroidx/compose/animation/core/Easing;

    .line 292
    .line 293
    const v4, 0x3dcccccd    # 0.1f

    .line 294
    .line 295
    .line 296
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-virtual {v3, v4, v14}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 301
    .line 302
    .line 303
    invoke-direct {v2, v3}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    .line 304
    .line 305
    .line 306
    invoke-static {v2, v7, v15}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    move-object v2, v1

    .line 311
    const v1, 0x3dcccccd    # 0.1f

    .line 312
    .line 313
    .line 314
    move-object v4, v2

    .line 315
    const v2, 0x3f5eb852    # 0.87f

    .line 316
    .line 317
    .line 318
    move-object v7, v4

    .line 319
    const/16 v5, 0x11b8

    .line 320
    .line 321
    move-object/from16 v4, p8

    .line 322
    .line 323
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    move-object v14, v4

    .line 328
    new-instance v0, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 329
    .line 330
    const/16 v2, 0x1a

    .line 331
    .line 332
    invoke-direct {v0, v2}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 333
    .line 334
    .line 335
    const/4 v2, 0x1

    .line 336
    invoke-static {v13, v2, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    const/high16 v3, 0x42200000    # 40.0f

    .line 341
    .line 342
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 343
    .line 344
    .line 345
    move-result-object v15

    .line 346
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    and-int/lit16 v3, v6, 0x380

    .line 351
    .line 352
    const/16 v4, 0x100

    .line 353
    .line 354
    if-ne v3, v4, :cond_c

    .line 355
    .line 356
    move v3, v2

    .line 357
    goto :goto_9

    .line 358
    :cond_c
    const/4 v3, 0x0

    .line 359
    :goto_9
    or-int/2addr v0, v3

    .line 360
    move-object/from16 v5, v26

    .line 361
    .line 362
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    or-int/2addr v0, v3

    .line 367
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    or-int/2addr v0, v3

    .line 372
    move-wide/from16 v3, v24

    .line 373
    .line 374
    invoke-virtual {v14, v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 375
    .line 376
    .line 377
    move-result v16

    .line 378
    or-int v0, v0, v16

    .line 379
    .line 380
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v16

    .line 384
    or-int v0, v0, v16

    .line 385
    .line 386
    and-int/lit8 v16, v6, 0x70

    .line 387
    .line 388
    xor-int/lit8 v2, v16, 0x30

    .line 389
    .line 390
    move/from16 p0, v0

    .line 391
    .line 392
    const/16 v0, 0x20

    .line 393
    .line 394
    if-le v2, v0, :cond_d

    .line 395
    .line 396
    invoke-virtual {v14, v10, v11}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    if-nez v2, :cond_e

    .line 401
    .line 402
    :cond_d
    and-int/lit8 v2, v6, 0x30

    .line 403
    .line 404
    if-ne v2, v0, :cond_f

    .line 405
    .line 406
    :cond_e
    const/16 v17, 0x1

    .line 407
    .line 408
    goto :goto_a

    .line 409
    :cond_f
    const/16 v17, 0x0

    .line 410
    .line 411
    :goto_a
    or-int v0, p0, v17

    .line 412
    .line 413
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    if-nez v0, :cond_11

    .line 418
    .line 419
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 420
    .line 421
    if-ne v2, v0, :cond_10

    .line 422
    .line 423
    goto :goto_b

    .line 424
    :cond_10
    move-wide/from16 v27, v3

    .line 425
    .line 426
    move v4, v8

    .line 427
    move-wide/from16 v7, v27

    .line 428
    .line 429
    goto :goto_c

    .line 430
    :cond_11
    :goto_b
    new-instance v0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda0;

    .line 431
    .line 432
    move-object v6, v7

    .line 433
    move/from16 v2, v21

    .line 434
    .line 435
    move-wide/from16 v27, v3

    .line 436
    .line 437
    move v4, v8

    .line 438
    move-wide/from16 v7, v27

    .line 439
    .line 440
    move/from16 v3, v18

    .line 441
    .line 442
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;IFFLandroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;JLandroidx/compose/ui/graphics/drawscope/Stroke;J)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    move-object v2, v0

    .line 449
    :goto_c
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 450
    .line 451
    const/4 v0, 0x0

    .line 452
    invoke-static {v15, v2, v14, v0}, Landroidx/compose/foundation/ImageKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 453
    .line 454
    .line 455
    move-wide v5, v7

    .line 456
    move-object v1, v13

    .line 457
    move/from16 v8, v18

    .line 458
    .line 459
    move/from16 v7, v21

    .line 460
    .line 461
    goto :goto_d

    .line 462
    :cond_12
    move-object v14, v4

    .line 463
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 464
    .line 465
    .line 466
    move-wide/from16 v5, p4

    .line 467
    .line 468
    move/from16 v7, p6

    .line 469
    .line 470
    move-object v1, v2

    .line 471
    move v4, v8

    .line 472
    move/from16 v8, p7

    .line 473
    .line 474
    :goto_d
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 475
    .line 476
    .line 477
    move-result-object v11

    .line 478
    if-eqz v11, :cond_13

    .line 479
    .line 480
    new-instance v0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda1;

    .line 481
    .line 482
    move-wide/from16 v2, p1

    .line 483
    .line 484
    move/from16 v10, p10

    .line 485
    .line 486
    move v9, v12

    .line 487
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;JFJIFII)V

    .line 488
    .line 489
    .line 490
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 491
    .line 492
    :cond_13
    return-void
.end method

.method public static final LinearProgressIndicator-rIrjwxo(Landroidx/compose/ui/Modifier;JJIFLandroidx/compose/runtime/GapComposer;I)V
    .locals 21

    .line 1
    move-wide/from16 v7, p1

    .line 2
    .line 3
    move-wide/from16 v4, p3

    .line 4
    .line 5
    move-object/from16 v13, p7

    .line 6
    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v2, 0x21d4b971

    .line 19
    .line 20
    .line 21
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v13, v7, v8}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const/16 v2, 0x20

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/16 v2, 0x10

    .line 34
    .line 35
    :goto_0
    or-int v2, p8, v2

    .line 36
    .line 37
    invoke-virtual {v13, v4, v5}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    const/16 v6, 0x100

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v6, 0x80

    .line 47
    .line 48
    :goto_1
    or-int/2addr v2, v6

    .line 49
    or-int/lit16 v2, v2, 0x6c00

    .line 50
    .line 51
    and-int/lit16 v6, v2, 0x2493

    .line 52
    .line 53
    const/16 v9, 0x2492

    .line 54
    .line 55
    const/4 v10, 0x0

    .line 56
    const/4 v11, 0x1

    .line 57
    if-eq v6, v9, :cond_2

    .line 58
    .line 59
    move v6, v11

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v6, v10

    .line 62
    :goto_2
    and-int/lit8 v9, v2, 0x1

    .line 63
    .line 64
    invoke-virtual {v13, v9, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_d

    .line 69
    .line 70
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 71
    .line 72
    .line 73
    and-int/lit8 v6, p8, 0x1

    .line 74
    .line 75
    const/high16 v9, 0x40800000    # 4.0f

    .line 76
    .line 77
    if-eqz v6, :cond_4

    .line 78
    .line 79
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 87
    .line 88
    .line 89
    move/from16 v6, p5

    .line 90
    .line 91
    move/from16 v16, p6

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_4
    :goto_3
    move/from16 v16, v9

    .line 95
    .line 96
    move v6, v11

    .line 97
    :goto_4
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 98
    .line 99
    .line 100
    const/4 v12, 0x0

    .line 101
    move v14, v9

    .line 102
    invoke-static {v12, v13, v11}, Landroidx/compose/animation/core/ArcSplineKt;->rememberInfiniteTransition(Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/InfiniteTransition;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    new-instance v11, Landroidx/compose/animation/core/KeyframesSpec;

    .line 107
    .line 108
    new-instance v14, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 109
    .line 110
    invoke-direct {v14}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;-><init>()V

    .line 111
    .line 112
    .line 113
    const/16 v3, 0x6d6

    .line 114
    .line 115
    iput v3, v14, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->durationMillis:I

    .line 116
    .line 117
    invoke-virtual {v14, v1, v10}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 118
    .line 119
    .line 120
    move-result-object v15

    .line 121
    sget-object v3, Landroidx/compose/material3/ProgressIndicatorKt;->LinearIndeterminateProgressEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 122
    .line 123
    iput-object v3, v15, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->easing:Landroidx/compose/animation/core/Easing;

    .line 124
    .line 125
    const/16 v15, 0x3e8

    .line 126
    .line 127
    invoke-virtual {v14, v0, v15}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 128
    .line 129
    .line 130
    invoke-direct {v11, v14}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    .line 131
    .line 132
    .line 133
    const/4 v15, 0x6

    .line 134
    invoke-static {v11, v12, v15}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    move v14, v10

    .line 139
    const/4 v10, 0x0

    .line 140
    move-object/from16 v17, v12

    .line 141
    .line 142
    move-object v12, v11

    .line 143
    const/high16 v11, 0x3f800000    # 1.0f

    .line 144
    .line 145
    move/from16 v18, v14

    .line 146
    .line 147
    const/16 v14, 0x11b8

    .line 148
    .line 149
    move/from16 p5, v6

    .line 150
    .line 151
    move-object/from16 v6, v17

    .line 152
    .line 153
    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    new-instance v11, Landroidx/compose/animation/core/KeyframesSpec;

    .line 158
    .line 159
    new-instance v12, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 160
    .line 161
    invoke-direct {v12}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;-><init>()V

    .line 162
    .line 163
    .line 164
    const/16 v13, 0x6d6

    .line 165
    .line 166
    iput v13, v12, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->durationMillis:I

    .line 167
    .line 168
    const/16 v13, 0xfa

    .line 169
    .line 170
    invoke-virtual {v12, v1, v13}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    iput-object v3, v13, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->easing:Landroidx/compose/animation/core/Easing;

    .line 175
    .line 176
    const/16 v13, 0x4e2

    .line 177
    .line 178
    invoke-virtual {v12, v0, v13}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 179
    .line 180
    .line 181
    invoke-direct {v11, v12}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v11, v6, v15}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    move-object v11, v10

    .line 189
    const/4 v10, 0x0

    .line 190
    move-object v13, v11

    .line 191
    const/high16 v11, 0x3f800000    # 1.0f

    .line 192
    .line 193
    move-object/from16 v19, v13

    .line 194
    .line 195
    move-object/from16 v13, p7

    .line 196
    .line 197
    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    new-instance v11, Landroidx/compose/animation/core/KeyframesSpec;

    .line 202
    .line 203
    new-instance v12, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 204
    .line 205
    invoke-direct {v12}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;-><init>()V

    .line 206
    .line 207
    .line 208
    const/16 v13, 0x6d6

    .line 209
    .line 210
    iput v13, v12, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->durationMillis:I

    .line 211
    .line 212
    const/16 v13, 0x28a

    .line 213
    .line 214
    invoke-virtual {v12, v1, v13}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 215
    .line 216
    .line 217
    move-result-object v13

    .line 218
    iput-object v3, v13, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->easing:Landroidx/compose/animation/core/Easing;

    .line 219
    .line 220
    const/16 v13, 0x5dc

    .line 221
    .line 222
    invoke-virtual {v12, v0, v13}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 223
    .line 224
    .line 225
    invoke-direct {v11, v12}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v11, v6, v15}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    move-object v11, v10

    .line 233
    const/4 v10, 0x0

    .line 234
    move-object v13, v11

    .line 235
    const/high16 v11, 0x3f800000    # 1.0f

    .line 236
    .line 237
    move-object/from16 v20, v13

    .line 238
    .line 239
    move-object/from16 v13, p7

    .line 240
    .line 241
    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    new-instance v11, Landroidx/compose/animation/core/KeyframesSpec;

    .line 246
    .line 247
    new-instance v12, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 248
    .line 249
    invoke-direct {v12}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;-><init>()V

    .line 250
    .line 251
    .line 252
    const/16 v13, 0x6d6

    .line 253
    .line 254
    iput v13, v12, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->durationMillis:I

    .line 255
    .line 256
    const/16 v14, 0x384

    .line 257
    .line 258
    invoke-virtual {v12, v1, v14}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    iput-object v3, v1, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->easing:Landroidx/compose/animation/core/Easing;

    .line 263
    .line 264
    invoke-virtual {v12, v0, v13}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 265
    .line 266
    .line 267
    invoke-direct {v11, v12}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    .line 268
    .line 269
    .line 270
    invoke-static {v11, v6, v15}, Landroidx/compose/animation/core/ArcSplineKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 271
    .line 272
    .line 273
    move-result-object v12

    .line 274
    move-object v0, v10

    .line 275
    const/4 v10, 0x0

    .line 276
    const/high16 v11, 0x3f800000    # 1.0f

    .line 277
    .line 278
    move-object/from16 v13, p7

    .line 279
    .line 280
    const/16 v14, 0x11b8

    .line 281
    .line 282
    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/ArcSplineKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 283
    .line 284
    .line 285
    move-result-object v10

    .line 286
    sget-object v1, Landroidx/compose/material3/internal/AccessibilityUtilKt;->IncreaseVerticalSemanticsBounds:Landroidx/compose/ui/Modifier;

    .line 287
    .line 288
    move-object/from16 v11, p0

    .line 289
    .line 290
    invoke-interface {v11, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    new-instance v3, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 295
    .line 296
    const/16 v6, 0x1a

    .line 297
    .line 298
    invoke-direct {v3, v6}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 299
    .line 300
    .line 301
    const/4 v6, 0x1

    .line 302
    invoke-static {v1, v6, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    const/high16 v3, 0x43700000    # 240.0f

    .line 307
    .line 308
    const/high16 v14, 0x40800000    # 4.0f

    .line 309
    .line 310
    invoke-static {v1, v3, v14}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 311
    .line 312
    .line 313
    move-result-object v12

    .line 314
    move-object/from16 v3, v19

    .line 315
    .line 316
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    and-int/lit16 v9, v2, 0x380

    .line 321
    .line 322
    xor-int/lit16 v9, v9, 0x180

    .line 323
    .line 324
    const/16 v14, 0x100

    .line 325
    .line 326
    if-le v9, v14, :cond_5

    .line 327
    .line 328
    invoke-virtual {v13, v4, v5}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 329
    .line 330
    .line 331
    move-result v9

    .line 332
    if-nez v9, :cond_6

    .line 333
    .line 334
    :cond_5
    and-int/lit16 v9, v2, 0x180

    .line 335
    .line 336
    if-ne v9, v14, :cond_7

    .line 337
    .line 338
    :cond_6
    move v9, v6

    .line 339
    goto :goto_5

    .line 340
    :cond_7
    const/4 v9, 0x0

    .line 341
    :goto_5
    or-int/2addr v1, v9

    .line 342
    move-object/from16 v9, v20

    .line 343
    .line 344
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v14

    .line 348
    or-int/2addr v1, v14

    .line 349
    and-int/lit8 v14, v2, 0x70

    .line 350
    .line 351
    xor-int/lit8 v14, v14, 0x30

    .line 352
    .line 353
    const/16 v15, 0x20

    .line 354
    .line 355
    if-le v14, v15, :cond_8

    .line 356
    .line 357
    invoke-virtual {v13, v7, v8}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 358
    .line 359
    .line 360
    move-result v14

    .line 361
    if-nez v14, :cond_a

    .line 362
    .line 363
    :cond_8
    and-int/lit8 v2, v2, 0x30

    .line 364
    .line 365
    if-ne v2, v15, :cond_9

    .line 366
    .line 367
    goto :goto_6

    .line 368
    :cond_9
    const/4 v6, 0x0

    .line 369
    :cond_a
    :goto_6
    or-int/2addr v1, v6

    .line 370
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    or-int/2addr v1, v2

    .line 375
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    or-int/2addr v1, v2

    .line 380
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    if-nez v1, :cond_b

    .line 385
    .line 386
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 387
    .line 388
    if-ne v2, v1, :cond_c

    .line 389
    .line 390
    :cond_b
    move-object/from16 v20, v9

    .line 391
    .line 392
    move-object v9, v0

    .line 393
    goto :goto_7

    .line 394
    :cond_c
    move/from16 v1, p5

    .line 395
    .line 396
    move-object v0, v2

    .line 397
    move/from16 v2, v16

    .line 398
    .line 399
    goto :goto_8

    .line 400
    :goto_7
    new-instance v0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda2;

    .line 401
    .line 402
    move/from16 v1, p5

    .line 403
    .line 404
    move/from16 v2, v16

    .line 405
    .line 406
    move-object/from16 v6, v20

    .line 407
    .line 408
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda2;-><init>(IFLandroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;JLandroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;JLandroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    :goto_8
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 415
    .line 416
    const/4 v14, 0x0

    .line 417
    invoke-static {v12, v0, v13, v14}, Landroidx/compose/foundation/ImageKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 418
    .line 419
    .line 420
    move v6, v1

    .line 421
    move v7, v2

    .line 422
    goto :goto_9

    .line 423
    :cond_d
    move-object/from16 v11, p0

    .line 424
    .line 425
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 426
    .line 427
    .line 428
    move/from16 v6, p5

    .line 429
    .line 430
    move/from16 v7, p6

    .line 431
    .line 432
    :goto_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 433
    .line 434
    .line 435
    move-result-object v9

    .line 436
    if-eqz v9, :cond_e

    .line 437
    .line 438
    new-instance v0, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;

    .line 439
    .line 440
    move-wide/from16 v2, p1

    .line 441
    .line 442
    move-wide/from16 v4, p3

    .line 443
    .line 444
    move/from16 v8, p8

    .line 445
    .line 446
    move-object v1, v11

    .line 447
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ProgressIndicatorKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/Modifier;JJIFI)V

    .line 448
    .line 449
    .line 450
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 451
    .line 452
    :cond_e
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
    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/Modifier$-CC;->drawArc-yD3GUKo$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static final drawLinearIndicator-qYKTg0g(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V
    .locals 21

    .line 1
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    shr-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    const-wide v5, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr v3, v5

    .line 23
    long-to-int v1, v3

    .line 24
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/high16 v3, 0x40000000    # 2.0f

    .line 29
    .line 30
    div-float v4, v1, v3

    .line 31
    .line 32
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 37
    .line 38
    if-ne v7, v8, :cond_0

    .line 39
    .line 40
    const/4 v7, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v7, 0x0

    .line 43
    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    .line 44
    .line 45
    if-eqz v7, :cond_1

    .line 46
    .line 47
    move/from16 v9, p1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    sub-float v9, v8, p2

    .line 51
    .line 52
    :goto_1
    mul-float/2addr v9, v0

    .line 53
    if-eqz v7, :cond_2

    .line 54
    .line 55
    move/from16 v8, p2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    sub-float v8, v8, p1

    .line 59
    .line 60
    :goto_2
    mul-float/2addr v8, v0

    .line 61
    if-nez p6, :cond_3

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    cmpl-float v1, v1, v0

    .line 65
    .line 66
    if-lez v1, :cond_4

    .line 67
    .line 68
    :goto_3
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    int-to-long v0, v0

    .line 73
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    int-to-long v9, v3

    .line 78
    shl-long/2addr v0, v2

    .line 79
    and-long/2addr v9, v5

    .line 80
    or-long v14, v0, v9

    .line 81
    .line 82
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    int-to-long v0, v0

    .line 87
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    int-to-long v3, v3

    .line 92
    shl-long/2addr v0, v2

    .line 93
    and-long/2addr v3, v5

    .line 94
    or-long v16, v0, v3

    .line 95
    .line 96
    const/16 v19, 0x0

    .line 97
    .line 98
    const/16 v20, 0x1f0

    .line 99
    .line 100
    move-object/from16 v11, p0

    .line 101
    .line 102
    move-wide/from16 v12, p3

    .line 103
    .line 104
    move/from16 v18, p5

    .line 105
    .line 106
    invoke-static/range {v11 .. v20}, Landroidx/compose/ui/Modifier$-CC;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFII)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    div-float v1, p5, v3

    .line 111
    .line 112
    sub-float/2addr v0, v1

    .line 113
    cmpg-float v3, v9, v1

    .line 114
    .line 115
    if-gez v3, :cond_5

    .line 116
    .line 117
    move v9, v1

    .line 118
    :cond_5
    cmpl-float v3, v9, v0

    .line 119
    .line 120
    if-lez v3, :cond_6

    .line 121
    .line 122
    move v9, v0

    .line 123
    :cond_6
    cmpg-float v3, v8, v1

    .line 124
    .line 125
    if-gez v3, :cond_7

    .line 126
    .line 127
    move v8, v1

    .line 128
    :cond_7
    cmpl-float v1, v8, v0

    .line 129
    .line 130
    if-lez v1, :cond_8

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_8
    move v0, v8

    .line 134
    :goto_4
    sub-float v1, p2, p1

    .line 135
    .line 136
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    const/4 v3, 0x0

    .line 141
    cmpl-float v1, v1, v3

    .line 142
    .line 143
    if-lez v1, :cond_9

    .line 144
    .line 145
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    int-to-long v7, v1

    .line 150
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    int-to-long v9, v1

    .line 155
    shl-long/2addr v7, v2

    .line 156
    and-long/2addr v9, v5

    .line 157
    or-long/2addr v7, v9

    .line 158
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    int-to-long v0, v0

    .line 163
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    int-to-long v3, v3

    .line 168
    shl-long/2addr v0, v2

    .line 169
    and-long/2addr v3, v5

    .line 170
    or-long v5, v0, v3

    .line 171
    .line 172
    const/16 v9, 0x1e0

    .line 173
    .line 174
    move-object/from16 v0, p0

    .line 175
    .line 176
    move-wide/from16 v1, p3

    .line 177
    .line 178
    move-wide v3, v7

    .line 179
    move/from16 v7, p5

    .line 180
    .line 181
    move/from16 v8, p6

    .line 182
    .line 183
    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/Modifier$-CC;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFII)V

    .line 184
    .line 185
    .line 186
    :cond_9
    return-void
.end method

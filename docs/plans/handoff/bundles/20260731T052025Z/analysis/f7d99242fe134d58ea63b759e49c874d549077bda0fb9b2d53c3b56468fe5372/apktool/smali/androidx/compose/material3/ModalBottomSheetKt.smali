.class public abstract Landroidx/compose/material3/ModalBottomSheetKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final PredictiveBackChildTransformOrigin:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->TransformOrigin(FF)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    sput-wide v0, Landroidx/compose/material3/ModalBottomSheetKt;->PredictiveBackChildTransformOrigin:J

    .line 9
    .line 10
    return-void
.end method

.method public static final ModalBottomSheet-YbuCTN8(Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p16

    .line 6
    .line 7
    move/from16 v3, p17

    .line 8
    .line 9
    move-object/from16 v4, p15

    .line 10
    .line 11
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v5, 0x7188eb30

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v5, v0, 0x6

    .line 20
    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v5, 0x2

    .line 32
    :goto_0
    or-int/2addr v5, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v5, v0

    .line 35
    :goto_1
    and-int/lit8 v7, v0, 0x30

    .line 36
    .line 37
    if-nez v7, :cond_3

    .line 38
    .line 39
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 40
    .line 41
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eqz v7, :cond_2

    .line 46
    .line 47
    const/16 v7, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v7, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v5, v7

    .line 53
    :cond_3
    and-int/lit16 v7, v0, 0x180

    .line 54
    .line 55
    if-nez v7, :cond_5

    .line 56
    .line 57
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_4

    .line 62
    .line 63
    const/16 v7, 0x100

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v7, 0x80

    .line 67
    .line 68
    :goto_3
    or-int/2addr v5, v7

    .line 69
    :cond_5
    or-int/lit16 v7, v5, 0x6c00

    .line 70
    .line 71
    const/high16 v9, 0x30000

    .line 72
    .line 73
    and-int/2addr v9, v0

    .line 74
    if-nez v9, :cond_6

    .line 75
    .line 76
    const v7, 0x16c00

    .line 77
    .line 78
    .line 79
    or-int/2addr v7, v5

    .line 80
    :cond_6
    const/high16 v5, 0x180000

    .line 81
    .line 82
    and-int/2addr v5, v0

    .line 83
    if-nez v5, :cond_7

    .line 84
    .line 85
    const/high16 v5, 0x80000

    .line 86
    .line 87
    or-int/2addr v7, v5

    .line 88
    :cond_7
    const/high16 v5, 0xc00000

    .line 89
    .line 90
    and-int/2addr v5, v0

    .line 91
    if-nez v5, :cond_8

    .line 92
    .line 93
    const/high16 v5, 0x400000

    .line 94
    .line 95
    or-int/2addr v7, v5

    .line 96
    :cond_8
    const/high16 v5, 0x6000000

    .line 97
    .line 98
    or-int/2addr v5, v7

    .line 99
    const/high16 v9, 0x30000000

    .line 100
    .line 101
    and-int/2addr v9, v0

    .line 102
    if-nez v9, :cond_9

    .line 103
    .line 104
    const/high16 v5, 0x16000000

    .line 105
    .line 106
    or-int/2addr v5, v7

    .line 107
    :cond_9
    or-int/lit8 v7, v3, 0x6

    .line 108
    .line 109
    and-int/lit8 v9, v3, 0x30

    .line 110
    .line 111
    if-nez v9, :cond_a

    .line 112
    .line 113
    or-int/lit8 v7, v3, 0x16

    .line 114
    .line 115
    :cond_a
    or-int/lit16 v7, v7, 0x180

    .line 116
    .line 117
    and-int/lit16 v9, v3, 0xc00

    .line 118
    .line 119
    move-object/from16 v15, p14

    .line 120
    .line 121
    if-nez v9, :cond_c

    .line 122
    .line 123
    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-eqz v9, :cond_b

    .line 128
    .line 129
    const/16 v9, 0x800

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_b
    const/16 v9, 0x400

    .line 133
    .line 134
    :goto_4
    or-int/2addr v7, v9

    .line 135
    :cond_c
    const v9, 0x12492493

    .line 136
    .line 137
    .line 138
    and-int/2addr v9, v5

    .line 139
    const v10, 0x12492492

    .line 140
    .line 141
    .line 142
    const/16 v19, 0x1

    .line 143
    .line 144
    if-ne v9, v10, :cond_e

    .line 145
    .line 146
    and-int/lit16 v9, v7, 0x493

    .line 147
    .line 148
    const/16 v10, 0x492

    .line 149
    .line 150
    if-eq v9, v10, :cond_d

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_d
    const/4 v9, 0x0

    .line 154
    goto :goto_6

    .line 155
    :cond_e
    :goto_5
    move/from16 v9, v19

    .line 156
    .line 157
    :goto_6
    and-int/lit8 v10, v5, 0x1

    .line 158
    .line 159
    invoke-virtual {v4, v10, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-eqz v9, :cond_30

    .line 164
    .line 165
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 166
    .line 167
    .line 168
    and-int/lit8 v9, v0, 0x1

    .line 169
    .line 170
    const v10, -0x71ff0001

    .line 171
    .line 172
    .line 173
    if-eqz v9, :cond_10

    .line 174
    .line 175
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    if-eqz v9, :cond_f

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_f
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 183
    .line 184
    .line 185
    and-int/2addr v5, v10

    .line 186
    and-int/lit8 v7, v7, -0x71

    .line 187
    .line 188
    move/from16 v9, p2

    .line 189
    .line 190
    move/from16 v10, p3

    .line 191
    .line 192
    move-object/from16 v11, p4

    .line 193
    .line 194
    move-wide/from16 v12, p5

    .line 195
    .line 196
    move-wide/from16 v14, p7

    .line 197
    .line 198
    move-wide/from16 v16, p9

    .line 199
    .line 200
    move-object/from16 v20, p12

    .line 201
    .line 202
    move-object/from16 v21, p13

    .line 203
    .line 204
    move/from16 v22, v7

    .line 205
    .line 206
    move v7, v5

    .line 207
    move-object/from16 v5, p11

    .line 208
    .line 209
    goto :goto_8

    .line 210
    :cond_10
    :goto_7
    sget v9, Landroidx/compose/material3/BottomSheetDefaults;->SheetMaxWidth:F

    .line 211
    .line 212
    sget-object v12, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    .line 213
    .line 214
    sget-object v12, Landroidx/compose/material3/tokens/ListTokens;->DockedContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 215
    .line 216
    invoke-static {v12, v4}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    sget-object v13, Landroidx/compose/material3/tokens/ListTokens;->DockedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 221
    .line 222
    invoke-static {v13, v4}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 223
    .line 224
    .line 225
    move-result-wide v13

    .line 226
    invoke-static {v13, v14, v4}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J

    .line 227
    .line 228
    .line 229
    move-result-wide v16

    .line 230
    move/from16 p15, v10

    .line 231
    .line 232
    sget-object v10, Landroidx/compose/material3/tokens/ListTokens;->ContainerColor$9:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 233
    .line 234
    move-object/from16 p2, v12

    .line 235
    .line 236
    invoke-static {v10, v4}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 237
    .line 238
    .line 239
    move-result-wide v11

    .line 240
    const v10, 0x3ea3d70a    # 0.32f

    .line 241
    .line 242
    .line 243
    invoke-static {v10, v11, v12}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 244
    .line 245
    .line 246
    move-result-wide v10

    .line 247
    and-int v5, v5, p15

    .line 248
    .line 249
    sget-object v12, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheetKt;->lambda$1121996006:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 250
    .line 251
    sget-object v20, Landroidx/compose/material3/SnackbarKt$Snackbar$3;->INSTANCE$4:Landroidx/compose/material3/SnackbarKt$Snackbar$3;

    .line 252
    .line 253
    and-int/lit8 v7, v7, -0x71

    .line 254
    .line 255
    new-instance v21, Landroidx/compose/material3/ModalBottomSheetProperties;

    .line 256
    .line 257
    invoke-direct/range {v21 .. v21}, Landroidx/compose/material3/ModalBottomSheetProperties;-><init>()V

    .line 258
    .line 259
    .line 260
    move/from16 v22, v7

    .line 261
    .line 262
    move v7, v5

    .line 263
    move-object v5, v12

    .line 264
    move-wide v12, v13

    .line 265
    move-wide/from16 v14, v16

    .line 266
    .line 267
    move-wide/from16 v16, v10

    .line 268
    .line 269
    move/from16 v10, v19

    .line 270
    .line 271
    move-object/from16 v11, p2

    .line 272
    .line 273
    :goto_8
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 274
    .line 275
    .line 276
    sget-object v6, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 277
    .line 278
    invoke-static {v6, v4}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    invoke-static {v6, v4}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    sget-object v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 287
    .line 288
    invoke-static {v0, v4}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    and-int/lit16 v3, v7, 0x380

    .line 293
    .line 294
    xor-int/lit16 v3, v3, 0x180

    .line 295
    .line 296
    move-object/from16 p8, v5

    .line 297
    .line 298
    const/16 v5, 0x100

    .line 299
    .line 300
    if-le v3, v5, :cond_11

    .line 301
    .line 302
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v23

    .line 306
    if-nez v23, :cond_12

    .line 307
    .line 308
    :cond_11
    and-int/lit16 v2, v7, 0x180

    .line 309
    .line 310
    if-ne v2, v5, :cond_13

    .line 311
    .line 312
    :cond_12
    move/from16 v2, v19

    .line 313
    .line 314
    goto :goto_9

    .line 315
    :cond_13
    const/4 v2, 0x0

    .line 316
    :goto_9
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    or-int/2addr v2, v5

    .line 321
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    or-int/2addr v2, v5

    .line 326
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    or-int/2addr v2, v5

    .line 331
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    move-object/from16 p5, v0

    .line 336
    .line 337
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 338
    .line 339
    if-nez v2, :cond_15

    .line 340
    .line 341
    if-ne v5, v0, :cond_14

    .line 342
    .line 343
    goto :goto_a

    .line 344
    :cond_14
    move-object/from16 v2, p1

    .line 345
    .line 346
    goto :goto_b

    .line 347
    :cond_15
    :goto_a
    new-instance v2, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;

    .line 348
    .line 349
    const/4 v5, 0x4

    .line 350
    move-object/from16 p3, p1

    .line 351
    .line 352
    move-object/from16 p2, v2

    .line 353
    .line 354
    move/from16 p7, v5

    .line 355
    .line 356
    move-object/from16 p4, v6

    .line 357
    .line 358
    move-object/from16 p6, v8

    .line 359
    .line 360
    invoke-direct/range {p2 .. p7}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 361
    .line 362
    .line 363
    move-object/from16 v5, p2

    .line 364
    .line 365
    move-object/from16 v2, p3

    .line 366
    .line 367
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    :goto_b
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 371
    .line 372
    invoke-static {v5, v4}, Landroidx/compose/runtime/Updater;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    if-ne v5, v0, :cond_16

    .line 380
    .line 381
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    :cond_16
    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    .line 389
    .line 390
    const/16 v6, 0x100

    .line 391
    .line 392
    if-le v3, v6, :cond_17

    .line 393
    .line 394
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v8

    .line 398
    if-nez v8, :cond_18

    .line 399
    .line 400
    :cond_17
    and-int/lit16 v8, v7, 0x180

    .line 401
    .line 402
    if-ne v8, v6, :cond_19

    .line 403
    .line 404
    :cond_18
    move/from16 v6, v19

    .line 405
    .line 406
    goto :goto_c

    .line 407
    :cond_19
    const/4 v6, 0x0

    .line 408
    :goto_c
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v8

    .line 412
    or-int/2addr v6, v8

    .line 413
    and-int/lit8 v8, v7, 0xe

    .line 414
    .line 415
    move/from16 p2, v6

    .line 416
    .line 417
    const/4 v6, 0x4

    .line 418
    if-ne v8, v6, :cond_1a

    .line 419
    .line 420
    move/from16 v6, v19

    .line 421
    .line 422
    goto :goto_d

    .line 423
    :cond_1a
    const/4 v6, 0x0

    .line 424
    :goto_d
    or-int v6, p2, v6

    .line 425
    .line 426
    move/from16 p2, v6

    .line 427
    .line 428
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    if-nez p2, :cond_1b

    .line 433
    .line 434
    if-ne v6, v0, :cond_1c

    .line 435
    .line 436
    :cond_1b
    new-instance v6, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda3;

    .line 437
    .line 438
    invoke-direct {v6, v2, v5, v1}, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    :cond_1c
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 445
    .line 446
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v24

    .line 450
    move-object/from16 p9, v6

    .line 451
    .line 452
    const/16 v6, 0x100

    .line 453
    .line 454
    if-le v3, v6, :cond_1e

    .line 455
    .line 456
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v23

    .line 460
    if-nez v23, :cond_1d

    .line 461
    .line 462
    goto :goto_e

    .line 463
    :cond_1d
    move/from16 p10, v9

    .line 464
    .line 465
    goto :goto_f

    .line 466
    :cond_1e
    :goto_e
    move/from16 p10, v9

    .line 467
    .line 468
    and-int/lit16 v9, v7, 0x180

    .line 469
    .line 470
    if-ne v9, v6, :cond_1f

    .line 471
    .line 472
    :goto_f
    move/from16 v6, v19

    .line 473
    .line 474
    goto :goto_10

    .line 475
    :cond_1f
    const/4 v6, 0x0

    .line 476
    :goto_10
    or-int v6, v24, v6

    .line 477
    .line 478
    const/4 v9, 0x4

    .line 479
    if-ne v8, v9, :cond_20

    .line 480
    .line 481
    move/from16 v9, v19

    .line 482
    .line 483
    goto :goto_11

    .line 484
    :cond_20
    const/4 v9, 0x0

    .line 485
    :goto_11
    or-int/2addr v6, v9

    .line 486
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v9

    .line 490
    if-nez v6, :cond_21

    .line 491
    .line 492
    if-ne v9, v0, :cond_22

    .line 493
    .line 494
    :cond_21
    new-instance v9, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 495
    .line 496
    const/16 v6, 0xd

    .line 497
    .line 498
    invoke-direct {v9, v5, v2, v1, v6}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    :cond_22
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 505
    .line 506
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v6

    .line 510
    if-ne v6, v0, :cond_23

    .line 511
    .line 512
    const/4 v6, 0x0

    .line 513
    invoke-static {v6}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    .line 514
    .line 515
    .line 516
    move-result-object v6

    .line 517
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    :cond_23
    check-cast v6, Landroidx/compose/animation/core/Animatable;

    .line 521
    .line 522
    const/16 v1, 0x100

    .line 523
    .line 524
    if-le v3, v1, :cond_24

    .line 525
    .line 526
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result v23

    .line 530
    if-nez v23, :cond_25

    .line 531
    .line 532
    :cond_24
    and-int/lit16 v2, v7, 0x180

    .line 533
    .line 534
    if-ne v2, v1, :cond_26

    .line 535
    .line 536
    :cond_25
    move/from16 v2, v19

    .line 537
    .line 538
    goto :goto_12

    .line 539
    :cond_26
    const/4 v2, 0x0

    .line 540
    :goto_12
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v23

    .line 544
    or-int v2, v2, v23

    .line 545
    .line 546
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v23

    .line 550
    or-int v2, v2, v23

    .line 551
    .line 552
    const/4 v1, 0x4

    .line 553
    if-ne v8, v1, :cond_27

    .line 554
    .line 555
    move/from16 v1, v19

    .line 556
    .line 557
    goto :goto_13

    .line 558
    :cond_27
    const/4 v1, 0x0

    .line 559
    :goto_13
    or-int/2addr v1, v2

    .line 560
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    if-nez v1, :cond_28

    .line 565
    .line 566
    if-ne v2, v0, :cond_29

    .line 567
    .line 568
    :cond_28
    new-instance v1, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;

    .line 569
    .line 570
    const/4 v2, 0x5

    .line 571
    move-object/from16 p6, p0

    .line 572
    .line 573
    move-object/from16 p3, p1

    .line 574
    .line 575
    move-object/from16 p2, v1

    .line 576
    .line 577
    move/from16 p7, v2

    .line 578
    .line 579
    move-object/from16 p4, v5

    .line 580
    .line 581
    move-object/from16 p5, v6

    .line 582
    .line 583
    invoke-direct/range {p2 .. p7}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 584
    .line 585
    .line 586
    move-object/from16 v2, p2

    .line 587
    .line 588
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 589
    .line 590
    .line 591
    :cond_29
    move-object/from16 v24, v2

    .line 592
    .line 593
    check-cast v24, Lkotlin/jvm/functions/Function0;

    .line 594
    .line 595
    move-object v1, v0

    .line 596
    new-instance v0, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$4;

    .line 597
    .line 598
    move-object/from16 v18, p14

    .line 599
    .line 600
    move-object/from16 v28, v1

    .line 601
    .line 602
    move/from16 v27, v3

    .line 603
    .line 604
    move-object/from16 v25, v4

    .line 605
    .line 606
    move/from16 v26, v7

    .line 607
    .line 608
    move-object v8, v9

    .line 609
    move-wide/from16 v1, v16

    .line 610
    .line 611
    move-object/from16 v17, v20

    .line 612
    .line 613
    move-object/from16 v4, p1

    .line 614
    .line 615
    move-object/from16 v16, p8

    .line 616
    .line 617
    move-object/from16 v3, p9

    .line 618
    .line 619
    move/from16 v9, p10

    .line 620
    .line 621
    move-object v7, v5

    .line 622
    move-object/from16 v5, v21

    .line 623
    .line 624
    invoke-direct/range {v0 .. v18}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$4;-><init>(JLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;FZLandroidx/compose/ui/graphics/Shape;JJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 625
    .line 626
    .line 627
    move-object v3, v0

    .line 628
    move-wide v0, v1

    .line 629
    move-object v2, v4

    .line 630
    const v4, 0x3c33c970

    .line 631
    .line 632
    .line 633
    move-object/from16 v7, v25

    .line 634
    .line 635
    invoke-static {v4, v3, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    move/from16 v4, v22

    .line 640
    .line 641
    and-int/lit16 v4, v4, 0x380

    .line 642
    .line 643
    or-int/lit16 v4, v4, 0x7000

    .line 644
    .line 645
    move-object/from16 p7, v3

    .line 646
    .line 647
    move/from16 p9, v4

    .line 648
    .line 649
    move-object/from16 p5, v5

    .line 650
    .line 651
    move-object/from16 p6, v6

    .line 652
    .line 653
    move-object/from16 p8, v7

    .line 654
    .line 655
    move-wide/from16 p3, v14

    .line 656
    .line 657
    move-object/from16 p2, v24

    .line 658
    .line 659
    invoke-static/range {p2 .. p9}, Landroidx/compose/material3/CardKt;->ModalBottomSheetDialog-sW7UJKQ(Lkotlin/jvm/functions/Function0;JLandroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 660
    .line 661
    .line 662
    iget-object v3, v2, Landroidx/compose/material3/SheetState;->anchoredDraggableState:Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 663
    .line 664
    invoke-virtual {v3}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/MapDraggableAnchors;

    .line 665
    .line 666
    .line 667
    move-result-object v3

    .line 668
    sget-object v4, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    .line 669
    .line 670
    iget-object v3, v3, Landroidx/compose/material3/internal/MapDraggableAnchors;->anchors:Ljava/util/Map;

    .line 671
    .line 672
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    move-result v3

    .line 676
    if-eqz v3, :cond_2f

    .line 677
    .line 678
    const v3, 0x2c9c96f2

    .line 679
    .line 680
    .line 681
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 682
    .line 683
    .line 684
    move/from16 v3, v27

    .line 685
    .line 686
    const/16 v6, 0x100

    .line 687
    .line 688
    if-le v3, v6, :cond_2a

    .line 689
    .line 690
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    move-result v3

    .line 694
    if-nez v3, :cond_2c

    .line 695
    .line 696
    :cond_2a
    move/from16 v3, v26

    .line 697
    .line 698
    and-int/lit16 v3, v3, 0x180

    .line 699
    .line 700
    if-ne v3, v6, :cond_2b

    .line 701
    .line 702
    goto :goto_14

    .line 703
    :cond_2b
    const/16 v19, 0x0

    .line 704
    .line 705
    :cond_2c
    :goto_14
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v3

    .line 709
    if-nez v19, :cond_2e

    .line 710
    .line 711
    move-object/from16 v4, v28

    .line 712
    .line 713
    if-ne v3, v4, :cond_2d

    .line 714
    .line 715
    goto :goto_15

    .line 716
    :cond_2d
    const/4 v6, 0x0

    .line 717
    goto :goto_16

    .line 718
    :cond_2e
    :goto_15
    new-instance v3, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$5$1;

    .line 719
    .line 720
    const/4 v4, 0x0

    .line 721
    const/4 v6, 0x0

    .line 722
    invoke-direct {v3, v2, v4, v6}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheet$5$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/coroutines/Continuation;I)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 726
    .line 727
    .line 728
    :goto_16
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 729
    .line 730
    invoke-static {v7, v2, v3}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 734
    .line 735
    .line 736
    goto :goto_17

    .line 737
    :cond_2f
    const/4 v6, 0x0

    .line 738
    const v3, 0x2c9d8732

    .line 739
    .line 740
    .line 741
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 745
    .line 746
    .line 747
    :goto_17
    move-object/from16 v25, v7

    .line 748
    .line 749
    move v3, v9

    .line 750
    move v4, v10

    .line 751
    move-wide v6, v12

    .line 752
    move-wide v8, v14

    .line 753
    move-object/from16 v12, v16

    .line 754
    .line 755
    move-object/from16 v13, v17

    .line 756
    .line 757
    move-object v14, v5

    .line 758
    move-object v5, v11

    .line 759
    move-wide v10, v0

    .line 760
    goto :goto_18

    .line 761
    :cond_30
    move-object v7, v4

    .line 762
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 763
    .line 764
    .line 765
    move/from16 v3, p2

    .line 766
    .line 767
    move/from16 v4, p3

    .line 768
    .line 769
    move-object/from16 v5, p4

    .line 770
    .line 771
    move-wide/from16 v8, p7

    .line 772
    .line 773
    move-wide/from16 v10, p9

    .line 774
    .line 775
    move-object/from16 v12, p11

    .line 776
    .line 777
    move-object/from16 v13, p12

    .line 778
    .line 779
    move-object/from16 v14, p13

    .line 780
    .line 781
    move-object/from16 v25, v7

    .line 782
    .line 783
    move-wide/from16 v6, p5

    .line 784
    .line 785
    :goto_18
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    if-eqz v0, :cond_31

    .line 790
    .line 791
    move-object v1, v0

    .line 792
    new-instance v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;

    .line 793
    .line 794
    move-object/from16 v15, p14

    .line 795
    .line 796
    move/from16 v16, p16

    .line 797
    .line 798
    move/from16 v17, p17

    .line 799
    .line 800
    move-object/from16 v29, v1

    .line 801
    .line 802
    move-object/from16 v1, p0

    .line 803
    .line 804
    invoke-direct/range {v0 .. v17}, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 805
    .line 806
    .line 807
    move-object/from16 v1, v29

    .line 808
    .line 809
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 810
    .line 811
    :cond_31
    return-void
.end method

.method public static final ModalBottomSheetContent-7---e2Q(Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v9, p3

    move-object/from16 v3, p4

    move/from16 v10, p5

    move/from16 v7, p6

    .line 1
    move-object/from16 v11, p16

    check-cast v11, Landroidx/compose/runtime/GapComposer;

    const v0, -0x23aaf70

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    or-int v0, p17, v0

    move-object/from16 v5, p1

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x100

    goto :goto_1

    :cond_1
    const/16 v6, 0x80

    :goto_1
    or-int/2addr v0, v6

    move-object/from16 v6, p2

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v13, 0x800

    goto :goto_2

    :cond_2
    const/16 v13, 0x400

    :goto_2
    or-int/2addr v0, v13

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    const/16 v16, 0x2000

    if-eqz v13, :cond_3

    const/16 v13, 0x4000

    goto :goto_3

    :cond_3
    move/from16 v13, v16

    :goto_3
    or-int/2addr v0, v13

    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v17

    const/high16 v18, 0x10000

    const/high16 v19, 0x20000

    if-eqz v17, :cond_4

    move/from16 v17, v19

    goto :goto_4

    :cond_4
    move/from16 v17, v18

    :goto_4
    or-int v0, v0, v17

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/high16 v17, 0x100000

    goto :goto_5

    :cond_5
    const/high16 v17, 0x80000

    :goto_5
    or-int v0, v0, v17

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_6

    const/high16 v17, 0x800000

    goto :goto_6

    :cond_6
    const/high16 v17, 0x400000

    :goto_6
    or-int v0, v0, v17

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_7

    const/high16 v17, 0x4000000

    goto :goto_7

    :cond_7
    const/high16 v17, 0x2000000

    :goto_7
    or-int v0, v0, v17

    move-object/from16 v14, p7

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    const/high16 v21, 0x20000000

    goto :goto_8

    :cond_8
    const/high16 v21, 0x10000000

    :goto_8
    or-int v21, v0, v21

    move-wide/from16 v4, p8

    invoke-virtual {v11, v4, v5}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v22

    if-eqz v22, :cond_9

    const/16 v22, 0x4

    :goto_9
    move-wide/from16 v8, p10

    goto :goto_a

    :cond_9
    const/16 v22, 0x2

    goto :goto_9

    :goto_a
    invoke-virtual {v11, v8, v9}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v24

    if-eqz v24, :cond_a

    const/16 v24, 0x20

    goto :goto_b

    :cond_a
    const/16 v24, 0x10

    :goto_b
    or-int v22, v22, v24

    move/from16 v15, p12

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    move-result v25

    if-eqz v25, :cond_b

    const/16 v20, 0x100

    goto :goto_c

    :cond_b
    const/16 v20, 0x80

    :goto_c
    or-int v20, v22, v20

    move-object/from16 v0, p13

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    const/16 v17, 0x800

    goto :goto_d

    :cond_c
    const/16 v17, 0x400

    :goto_d
    or-int v17, v20, v17

    move-object/from16 v2, p14

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/16 v16, 0x4000

    :cond_d
    or-int v16, v17, v16

    move-object/from16 v12, p15

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    move/from16 v18, v19

    :cond_e
    or-int v16, v16, v18

    const v18, 0x12492493

    and-int v0, v21, v18

    const v2, 0x12492492

    const/4 v4, 0x1

    if-ne v0, v2, :cond_10

    const v0, 0x12493

    and-int v0, v16, v0

    const v2, 0x12492

    if-eq v0, v2, :cond_f

    goto :goto_e

    :cond_f
    const/4 v0, 0x0

    goto :goto_f

    :cond_10
    :goto_e
    move v0, v4

    :goto_f
    and-int/lit8 v2, v21, 0x1

    invoke-virtual {v11, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v0, p17, 0x1

    if-eqz v0, :cond_12

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_10

    .line 2
    :cond_11
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    :cond_12
    :goto_10
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    const v0, 0x7f1203c6

    .line 3
    invoke-static {v11, v0}, Landroidx/compose/material3/internal/Icons$Filled;->getString-2EP1pXo(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v5, v13, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v5, 0x0

    .line 5
    invoke-static {v2, v5, v10, v4}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 6
    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v2, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 7
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    const/high16 v22, 0x180000

    const/high16 v24, 0x380000

    if-eqz v7, :cond_18

    const v5, -0x5e4bf1b7

    .line 8
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    and-int v5, v21, v24

    xor-int v5, v5, v22

    const/high16 v6, 0x100000

    if-le v5, v6, :cond_13

    .line 9
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    :cond_13
    and-int v5, v21, v22

    if-ne v5, v6, :cond_15

    :cond_14
    const/4 v5, 0x1

    goto :goto_11

    :cond_15
    const/4 v5, 0x0

    .line 10
    :goto_11
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_17

    if-ne v6, v4, :cond_16

    goto :goto_12

    :cond_16
    move-object/from16 v5, p3

    goto :goto_13

    .line 11
    :cond_17
    :goto_12
    sget-object v5, Landroidx/compose/material3/SheetDefaultsKt;->BottomSheetAnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 12
    new-instance v6, Landroidx/compose/material3/SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;

    move-object/from16 v5, p3

    invoke-direct {v6, v3, v5}, Landroidx/compose/material3/SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function1;)V

    .line 13
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 14
    :goto_13
    check-cast v6, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    const/4 v7, 0x0

    .line 15
    invoke-static {v13, v6, v7}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    const/4 v6, 0x0

    .line 16
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_14

    :cond_18
    move-object/from16 v5, p3

    const/4 v6, 0x0

    const v7, -0x5e4bb908

    .line 17
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 18
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 19
    :goto_14
    invoke-interface {v2, v13}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 20
    iget-object v6, v3, Landroidx/compose/material3/SheetState;->anchoredDraggableState:Landroidx/compose/material3/internal/AnchoredDraggableState;

    iget-object v7, v3, Landroidx/compose/material3/SheetState;->anchoredDraggableState:Landroidx/compose/material3/internal/AnchoredDraggableState;

    and-int v13, v21, v24

    xor-int v13, v13, v22

    const/high16 v8, 0x100000

    if-le v13, v8, :cond_19

    .line 21
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    :cond_19
    and-int v9, v21, v22

    if-ne v9, v8, :cond_1b

    :cond_1a
    const/4 v8, 0x1

    goto :goto_15

    :cond_1b
    const/4 v8, 0x0

    .line 22
    :goto_15
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_1c

    if-ne v9, v4, :cond_1d

    .line 23
    :cond_1c
    new-instance v9, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    const/16 v8, 0xd

    invoke-direct {v9, v8, v3}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 24
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_1d
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v6, v9}, Landroidx/compose/material3/internal/Icons$Filled;->draggableAnchors(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/AnchoredDraggableState;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 26
    iget-object v6, v7, Landroidx/compose/material3/internal/AnchoredDraggableState;->draggableState:Landroidx/cardview/widget/CardView$1;

    if-eqz p6, :cond_1e

    .line 27
    invoke-virtual {v3}, Landroidx/compose/material3/SheetState;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1e

    const/16 v28, 0x1

    goto :goto_16

    :cond_1e
    const/16 v28, 0x0

    .line 28
    :goto_16
    iget-object v8, v7, Landroidx/compose/material3/internal/AnchoredDraggableState;->dragTarget$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 29
    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1f

    const/16 v29, 0x1

    goto :goto_17

    :cond_1f
    const/16 v29, 0x0

    :goto_17
    const v9, 0xe000

    and-int v8, v21, v9

    move/from16 v24, v9

    const/16 v9, 0x4000

    if-ne v8, v9, :cond_20

    const/4 v8, 0x1

    goto :goto_18

    :cond_20
    const/4 v8, 0x0

    .line 30
    :goto_18
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_21

    if-ne v9, v4, :cond_22

    .line 31
    :cond_21
    new-instance v9, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$4$1;

    const/4 v8, 0x0

    invoke-direct {v9, v5, v8}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$4$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 32
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 33
    :cond_22
    move-object/from16 v31, v9

    check-cast v31, Lkotlin/jvm/functions/Function3;

    .line 34
    sget-object v30, Landroidx/compose/foundation/gestures/DraggableKt;->NoOpOnDragStarted:Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 35
    new-instance v26, Landroidx/compose/foundation/gestures/DraggableElement;

    move-object/from16 v27, v6

    invoke-direct/range {v26 .. v31}, Landroidx/compose/foundation/gestures/DraggableElement;-><init>(Landroidx/compose/foundation/gestures/DraggableState;ZZLandroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;Lkotlin/jvm/functions/Function3;)V

    move-object/from16 v6, v26

    .line 36
    invoke-interface {v2, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 37
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .line 38
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_23

    if-ne v8, v4, :cond_24

    .line 39
    :cond_23
    new-instance v8, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;

    const/4 v6, 0x3

    invoke-direct {v8, v0, v6}, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 41
    :cond_24
    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    .line 42
    invoke-static {v2, v6, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 43
    iget-object v2, v7, Landroidx/compose/material3/internal/AnchoredDraggableState;->offset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 44
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v2

    float-to-int v6, v2

    if-gez v6, :cond_25

    const/4 v6, 0x0

    .line 45
    :cond_25
    new-instance v2, Landroidx/compose/foundation/layout/FixedIntInsets;

    invoke-direct {v2, v6}, Landroidx/compose/foundation/layout/FixedIntInsets;-><init>(I)V

    .line 46
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/OffsetKt;->consumeWindowInsets(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/FixedIntInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v6, 0x100000

    if-le v13, v6, :cond_26

    .line 47
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_26
    and-int v2, v21, v22

    if-ne v2, v6, :cond_28

    :cond_27
    const/4 v6, 0x1

    goto :goto_19

    :cond_28
    const/4 v6, 0x0

    :goto_19
    and-int/lit8 v2, v21, 0x70

    const/16 v7, 0x20

    if-eq v2, v7, :cond_2a

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_1a

    :cond_29
    const/16 v19, 0x0

    goto :goto_1b

    :cond_2a
    :goto_1a
    const/16 v19, 0x1

    :goto_1b
    or-int v2, v6, v19

    .line 48
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_2b

    if-ne v6, v4, :cond_2c

    .line 49
    :cond_2b
    new-instance v6, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    const/16 v2, 0x10

    invoke-direct {v6, v2, v3, v1}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 51
    :cond_2c
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v6}, Landroidx/compose/ui/graphics/ColorKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 52
    new-instance v2, Landroidx/compose/material3/BottomSheetScaffoldKt$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6}, Landroidx/compose/material3/BottomSheetScaffoldKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/SheetState;I)V

    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/ColorKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 53
    new-instance v0, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$7;

    move-object/from16 v7, p1

    move-object/from16 v6, p2

    move/from16 v8, p6

    move-object/from16 v4, p13

    move-object v2, v1

    move-object v5, v12

    move-object/from16 v1, p14

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ModalBottomSheetKt$ModalBottomSheetContent$7;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/animation/core/Animatable;Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Z)V

    const v1, 0x2b6fbd6b

    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v20

    shr-int/lit8 v0, v21, 0x18

    and-int/lit8 v0, v0, 0x70

    const/high16 v1, 0xc00000

    or-int/2addr v0, v1

    shl-int/lit8 v1, v16, 0x6

    and-int/lit16 v2, v1, 0x380

    or-int/2addr v0, v2

    and-int/lit16 v2, v1, 0x1c00

    or-int/2addr v0, v2

    and-int v1, v1, v24

    or-int v22, v0, v1

    const/16 v23, 0x60

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v21, v11

    move-object v12, v14

    move/from16 v17, v15

    move-wide/from16 v13, p8

    move-wide/from16 v15, p10

    move-object v11, v9

    .line 54
    invoke-static/range {v11 .. v23}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1c

    :cond_2d
    move-object/from16 v21, v11

    .line 55
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 56
    :goto_1c
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2e

    move-object v1, v0

    new-instance v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda16;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v11, p10

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p17

    move-object/from16 v32, v1

    move v6, v10

    move-object/from16 v1, p0

    move-wide/from16 v9, p8

    invoke-direct/range {v0 .. v17}, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda16;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    move-object/from16 v1, v32

    .line 57
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2e
    return-void
.end method

.method public static final Scrim-KTwxG1Y(JLkotlin/jvm/functions/Function0;ZZLandroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-wide/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move/from16 v4, p3

    .line 6
    .line 7
    move/from16 v5, p4

    .line 8
    .line 9
    move-object/from16 v9, p5

    .line 10
    .line 11
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, -0x17578dd7

    .line 14
    .line 15
    .line 16
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v9, v1, v2}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int v0, p6, v0

    .line 29
    .line 30
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/16 v13, 0x20

    .line 35
    .line 36
    if-eqz v6, :cond_1

    .line 37
    .line 38
    move v6, v13

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v6, 0x10

    .line 41
    .line 42
    :goto_1
    or-int/2addr v0, v6

    .line 43
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_2

    .line 48
    .line 49
    const/16 v6, 0x100

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v6, 0x80

    .line 53
    .line 54
    :goto_2
    or-int/2addr v0, v6

    .line 55
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_3

    .line 60
    .line 61
    const/16 v6, 0x800

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/16 v6, 0x400

    .line 65
    .line 66
    :goto_3
    or-int/2addr v0, v6

    .line 67
    and-int/lit16 v6, v0, 0x493

    .line 68
    .line 69
    const/16 v7, 0x492

    .line 70
    .line 71
    if-eq v6, v7, :cond_4

    .line 72
    .line 73
    const/4 v6, 0x1

    .line 74
    goto :goto_4

    .line 75
    :cond_4
    const/4 v6, 0x0

    .line 76
    :goto_4
    and-int/lit8 v7, v0, 0x1

    .line 77
    .line 78
    invoke-virtual {v9, v7, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_11

    .line 83
    .line 84
    const-wide/16 v6, 0x10

    .line 85
    .line 86
    cmp-long v6, v1, v6

    .line 87
    .line 88
    if-eqz v6, :cond_10

    .line 89
    .line 90
    const v6, -0x55bf0636

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 94
    .line 95
    .line 96
    if-eqz v4, :cond_5

    .line 97
    .line 98
    const/high16 v6, 0x3f800000    # 1.0f

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_5
    const/4 v6, 0x0

    .line 102
    :goto_5
    sget-object v7, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 103
    .line 104
    invoke-static {v7, v9}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    const/4 v10, 0x0

    .line 109
    const/16 v11, 0x1c

    .line 110
    .line 111
    const/4 v8, 0x0

    .line 112
    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    const v7, 0x7f120212

    .line 117
    .line 118
    .line 119
    invoke-static {v9, v7}, Landroidx/compose/material3/internal/Icons$Filled;->getString-2EP1pXo(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 124
    .line 125
    if-eqz v5, :cond_c

    .line 126
    .line 127
    const v10, -0x55ba773b

    .line 128
    .line 129
    .line 130
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 131
    .line 132
    .line 133
    and-int/lit8 v10, v0, 0x70

    .line 134
    .line 135
    if-ne v10, v13, :cond_6

    .line 136
    .line 137
    const/4 v11, 0x1

    .line 138
    goto :goto_6

    .line 139
    :cond_6
    const/4 v11, 0x0

    .line 140
    :goto_6
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    if-nez v11, :cond_7

    .line 145
    .line 146
    if-ne v12, v8, :cond_8

    .line 147
    .line 148
    :cond_7
    new-instance v12, Landroidx/compose/material3/ExposedDropdownMenuKt$expandable$1;

    .line 149
    .line 150
    const/4 v11, 0x7

    .line 151
    invoke-direct {v12, v11, v3}, Landroidx/compose/material3/ExposedDropdownMenuKt$expandable$1;-><init>(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_8
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 158
    .line 159
    new-instance v11, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 160
    .line 161
    const/4 v15, 0x0

    .line 162
    const/4 v14, 0x6

    .line 163
    invoke-direct {v11, v3, v15, v12, v14}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v12

    .line 170
    if-ne v10, v13, :cond_9

    .line 171
    .line 172
    const/4 v10, 0x1

    .line 173
    goto :goto_7

    .line 174
    :cond_9
    const/4 v10, 0x0

    .line 175
    :goto_7
    or-int/2addr v10, v12

    .line 176
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    if-nez v10, :cond_a

    .line 181
    .line 182
    if-ne v12, v8, :cond_b

    .line 183
    .line 184
    :cond_a
    new-instance v12, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 185
    .line 186
    const/16 v10, 0xf

    .line 187
    .line 188
    invoke-direct {v12, v10, v7, v3}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    :cond_b
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 195
    .line 196
    const/4 v7, 0x1

    .line 197
    invoke-static {v11, v7, v12}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    const/4 v11, 0x0

    .line 202
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 203
    .line 204
    .line 205
    goto :goto_8

    .line 206
    :cond_c
    const/4 v7, 0x1

    .line 207
    const/4 v11, 0x0

    .line 208
    const v10, -0x55b3f66f

    .line 209
    .line 210
    .line 211
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 215
    .line 216
    .line 217
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 218
    .line 219
    :goto_8
    sget-object v11, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 220
    .line 221
    invoke-interface {v11, v10}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    and-int/lit8 v0, v0, 0xe

    .line 226
    .line 227
    const/4 v11, 0x4

    .line 228
    if-ne v0, v11, :cond_d

    .line 229
    .line 230
    move v14, v7

    .line 231
    goto :goto_9

    .line 232
    :cond_d
    const/4 v14, 0x0

    .line 233
    :goto_9
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    or-int/2addr v0, v14

    .line 238
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    if-nez v0, :cond_e

    .line 243
    .line 244
    if-ne v7, v8, :cond_f

    .line 245
    .line 246
    :cond_e
    new-instance v7, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda11;

    .line 247
    .line 248
    invoke-direct {v7, v1, v2, v6}, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda11;-><init>(JLandroidx/compose/runtime/State;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    :cond_f
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 255
    .line 256
    const/4 v11, 0x0

    .line 257
    invoke-static {v11, v9, v10, v7}, Landroidx/compose/foundation/ImageKt;->Canvas(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 261
    .line 262
    .line 263
    goto :goto_a

    .line 264
    :cond_10
    const/4 v11, 0x0

    .line 265
    const v0, -0x55b13247

    .line 266
    .line 267
    .line 268
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 272
    .line 273
    .line 274
    goto :goto_a

    .line 275
    :cond_11
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 276
    .line 277
    .line 278
    :goto_a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    if-eqz v7, :cond_12

    .line 283
    .line 284
    new-instance v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda12;

    .line 285
    .line 286
    move/from16 v6, p6

    .line 287
    .line 288
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda12;-><init>(JLkotlin/jvm/functions/Function0;ZZI)V

    .line 289
    .line 290
    .line 291
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 292
    .line 293
    :cond_12
    return-void
.end method

.method public static final calculatePredictiveBackScaleX(Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;F)F
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    shr-long/2addr v0, v2

    .line 6
    long-to-int v0, v0

    .line 7
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/high16 v2, 0x3f800000    # 1.0f

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    cmpg-float v3, v0, v1

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    .line 26
    .line 27
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    const/high16 v3, 0x42400000    # 48.0f

    .line 32
    .line 33
    mul-float/2addr p0, v3

    .line 34
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-static {v1, p0, p1}, Landroidx/room/util/DBUtil;->lerp(FFF)F

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    div-float/2addr p0, v0

    .line 43
    sub-float/2addr v2, p0

    .line 44
    :cond_1
    :goto_0
    return v2
.end method

.method public static final calculatePredictiveBackScaleY(Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;F)F
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    .line 2
    .line 3
    const-wide v2, 0xffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    and-long/2addr v0, v2

    .line 9
    long-to-int v0, v0

    .line 10
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    cmpg-float v3, v0, v1

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    .line 29
    .line 30
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/high16 v3, 0x41c00000    # 24.0f

    .line 35
    .line 36
    mul-float/2addr p0, v3

    .line 37
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-static {v1, p0, p1}, Landroidx/room/util/DBUtil;->lerp(FFF)F

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    div-float/2addr p0, v0

    .line 46
    sub-float/2addr v2, p0

    .line 47
    :cond_1
    :goto_0
    return v2
.end method

.method public static final rememberModalBottomSheetState(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/SheetState;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;

    .line 13
    .line 14
    const/4 v3, 0x7

    .line 15
    invoke-direct {v1, v3}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    move-object v7, v1

    .line 22
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    sget-object v0, Landroidx/compose/material3/SheetDefaultsKt;->BottomSheetAnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 25
    .line 26
    sget v0, Landroidx/compose/material3/BottomSheetDefaults;->PositionalThreshold:F

    .line 27
    .line 28
    sget v1, Landroidx/compose/material3/BottomSheetDefaults;->VelocityThreshold:F

    .line 29
    .line 30
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 31
    .line 32
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 39
    .line 40
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    or-int/2addr v4, v5

    .line 49
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const/4 v9, 0x0

    .line 54
    if-nez v4, :cond_1

    .line 55
    .line 56
    if-ne v5, v2, :cond_2

    .line 57
    .line 58
    :cond_1
    new-instance v5, Landroidx/compose/material3/SheetDefaultsKt$$ExternalSyntheticLambda1;

    .line 59
    .line 60
    invoke-direct {v5, v3, v0, v9}, Landroidx/compose/material3/SheetDefaultsKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/unit/Density;FI)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    move-object v4, v5

    .line 67
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 68
    .line 69
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    or-int/2addr v0, v5

    .line 78
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const/4 v6, 0x1

    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    if-ne v5, v2, :cond_4

    .line 86
    .line 87
    :cond_3
    new-instance v5, Landroidx/compose/material3/SheetDefaultsKt$$ExternalSyntheticLambda1;

    .line 88
    .line 89
    invoke-direct {v5, v3, v1, v6}, Landroidx/compose/material3/SheetDefaultsKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/unit/Density;FI)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 96
    .line 97
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const/4 v1, 0x3

    .line 102
    new-array v10, v1, [Ljava/lang/Object;

    .line 103
    .line 104
    aput-object v0, v10, v9

    .line 105
    .line 106
    aput-object v7, v10, v6

    .line 107
    .line 108
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 109
    .line 110
    const/4 v3, 0x2

    .line 111
    aput-object v0, v10, v3

    .line 112
    .line 113
    new-instance v0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda0;

    .line 114
    .line 115
    const/16 v3, 0xb

    .line 116
    .line 117
    invoke-direct {v0, v3}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 118
    .line 119
    .line 120
    new-instance v3, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 121
    .line 122
    const/16 v6, 0xf

    .line 123
    .line 124
    invoke-direct {v3, v4, v5, v7, v6}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 125
    .line 126
    .line 127
    new-instance v11, Landroidx/compose/ui/platform/WeakCache;

    .line 128
    .line 129
    invoke-direct {v11, v1, v0, v3}, Landroidx/compose/ui/platform/WeakCache;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    or-int/2addr v0, v1

    .line 141
    invoke-virtual {p0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    or-int/2addr v0, v1

    .line 146
    invoke-virtual {p0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    or-int/2addr v0, v1

    .line 151
    invoke-virtual {p0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    or-int/2addr v0, v1

    .line 156
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-nez v0, :cond_5

    .line 161
    .line 162
    if-ne v1, v2, :cond_6

    .line 163
    .line 164
    :cond_5
    new-instance v3, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;

    .line 165
    .line 166
    const/4 v8, 0x6

    .line 167
    sget-object v6, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    .line 168
    .line 169
    invoke-direct/range {v3 .. v8}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    move-object v1, v3

    .line 176
    :cond_6
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 177
    .line 178
    invoke-static {v10, v11, v1, p0, v9}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    check-cast p0, Landroidx/compose/material3/SheetState;

    .line 183
    .line 184
    return-object p0
.end method

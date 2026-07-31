.class public abstract Lorg/jsoup/helper/Validate;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static _expandMore:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static _outbox:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method public static final ButtonOutlined(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/vector/ImageVector;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p5

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move/from16 v9, p9

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-object/from16 v3, p8

    .line 16
    .line 17
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    const v4, -0x15472a83

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    and-int/lit8 v4, v9, 0x6

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    const/4 v4, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v4, v5

    .line 39
    :goto_0
    or-int/2addr v4, v9

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v4, v9

    .line 42
    :goto_1
    and-int/lit8 v6, v9, 0x30

    .line 43
    .line 44
    move-object/from16 v10, p1

    .line 45
    .line 46
    if-nez v6, :cond_3

    .line 47
    .line 48
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    const/16 v6, 0x20

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/16 v6, 0x10

    .line 58
    .line 59
    :goto_2
    or-int/2addr v4, v6

    .line 60
    :cond_3
    and-int/lit8 v6, p10, 0x4

    .line 61
    .line 62
    if-eqz v6, :cond_5

    .line 63
    .line 64
    or-int/lit16 v4, v4, 0x180

    .line 65
    .line 66
    :cond_4
    move-object/from16 v7, p2

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_5
    and-int/lit16 v7, v9, 0x180

    .line 70
    .line 71
    if-nez v7, :cond_4

    .line 72
    .line 73
    move-object/from16 v7, p2

    .line 74
    .line 75
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_6

    .line 80
    .line 81
    const/16 v8, 0x100

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_6
    const/16 v8, 0x80

    .line 85
    .line 86
    :goto_3
    or-int/2addr v4, v8

    .line 87
    :goto_4
    and-int/lit8 v8, p10, 0x8

    .line 88
    .line 89
    if-eqz v8, :cond_8

    .line 90
    .line 91
    or-int/lit16 v4, v4, 0xc00

    .line 92
    .line 93
    :cond_7
    move/from16 v11, p3

    .line 94
    .line 95
    goto :goto_6

    .line 96
    :cond_8
    and-int/lit16 v11, v9, 0xc00

    .line 97
    .line 98
    if-nez v11, :cond_7

    .line 99
    .line 100
    move/from16 v11, p3

    .line 101
    .line 102
    invoke-virtual {v3, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    if-eqz v12, :cond_9

    .line 107
    .line 108
    const/16 v12, 0x800

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_9
    const/16 v12, 0x400

    .line 112
    .line 113
    :goto_5
    or-int/2addr v4, v12

    .line 114
    :goto_6
    and-int/lit8 v12, p10, 0x10

    .line 115
    .line 116
    if-eqz v12, :cond_b

    .line 117
    .line 118
    or-int/lit16 v4, v4, 0x6000

    .line 119
    .line 120
    :cond_a
    move-object/from16 v13, p4

    .line 121
    .line 122
    goto :goto_8

    .line 123
    :cond_b
    and-int/lit16 v13, v9, 0x6000

    .line 124
    .line 125
    if-nez v13, :cond_a

    .line 126
    .line 127
    move-object/from16 v13, p4

    .line 128
    .line 129
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    if-eqz v14, :cond_c

    .line 134
    .line 135
    const/16 v14, 0x4000

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_c
    const/16 v14, 0x2000

    .line 139
    .line 140
    :goto_7
    or-int/2addr v4, v14

    .line 141
    :goto_8
    const/high16 v14, 0x30000

    .line 142
    .line 143
    and-int/2addr v14, v9

    .line 144
    if-nez v14, :cond_f

    .line 145
    .line 146
    and-int/lit8 v14, p10, 0x20

    .line 147
    .line 148
    if-nez v14, :cond_e

    .line 149
    .line 150
    const/high16 v14, 0x40000

    .line 151
    .line 152
    and-int/2addr v14, v9

    .line 153
    if-nez v14, :cond_d

    .line 154
    .line 155
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    goto :goto_9

    .line 160
    :cond_d
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    :goto_9
    if-eqz v14, :cond_e

    .line 165
    .line 166
    const/high16 v14, 0x20000

    .line 167
    .line 168
    goto :goto_a

    .line 169
    :cond_e
    const/high16 v14, 0x10000

    .line 170
    .line 171
    :goto_a
    or-int/2addr v4, v14

    .line 172
    :cond_f
    const/high16 v14, 0x180000

    .line 173
    .line 174
    and-int/2addr v14, v9

    .line 175
    if-nez v14, :cond_12

    .line 176
    .line 177
    and-int/lit8 v14, p10, 0x40

    .line 178
    .line 179
    if-nez v14, :cond_11

    .line 180
    .line 181
    const/high16 v14, 0x200000

    .line 182
    .line 183
    and-int/2addr v14, v9

    .line 184
    if-nez v14, :cond_10

    .line 185
    .line 186
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v14

    .line 190
    goto :goto_b

    .line 191
    :cond_10
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v14

    .line 195
    :goto_b
    if-eqz v14, :cond_11

    .line 196
    .line 197
    const/high16 v14, 0x100000

    .line 198
    .line 199
    goto :goto_c

    .line 200
    :cond_11
    const/high16 v14, 0x80000

    .line 201
    .line 202
    :goto_c
    or-int/2addr v4, v14

    .line 203
    :cond_12
    const/high16 v14, 0xc00000

    .line 204
    .line 205
    and-int/2addr v14, v9

    .line 206
    if-nez v14, :cond_13

    .line 207
    .line 208
    const/high16 v14, 0x400000

    .line 209
    .line 210
    or-int/2addr v4, v14

    .line 211
    :cond_13
    const v14, 0x492493

    .line 212
    .line 213
    .line 214
    and-int/2addr v14, v4

    .line 215
    const v15, 0x492492

    .line 216
    .line 217
    .line 218
    const/16 v16, 0x1

    .line 219
    .line 220
    if-eq v14, v15, :cond_14

    .line 221
    .line 222
    move/from16 v14, v16

    .line 223
    .line 224
    goto :goto_d

    .line 225
    :cond_14
    const/4 v14, 0x0

    .line 226
    :goto_d
    and-int/lit8 v15, v4, 0x1

    .line 227
    .line 228
    invoke-virtual {v3, v15, v14}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 229
    .line 230
    .line 231
    move-result v14

    .line 232
    if-eqz v14, :cond_1f

    .line 233
    .line 234
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 235
    .line 236
    .line 237
    and-int/lit8 v14, v9, 0x1

    .line 238
    .line 239
    const/4 v15, 0x0

    .line 240
    const v17, -0x1c00001

    .line 241
    .line 242
    .line 243
    const v18, -0x380001

    .line 244
    .line 245
    .line 246
    const v19, -0x70001

    .line 247
    .line 248
    .line 249
    if-eqz v14, :cond_18

    .line 250
    .line 251
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 252
    .line 253
    .line 254
    move-result v14

    .line 255
    if-eqz v14, :cond_15

    .line 256
    .line 257
    goto :goto_f

    .line 258
    :cond_15
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 259
    .line 260
    .line 261
    and-int/lit8 v6, p10, 0x20

    .line 262
    .line 263
    if-eqz v6, :cond_16

    .line 264
    .line 265
    and-int v4, v4, v19

    .line 266
    .line 267
    :cond_16
    and-int/lit8 v6, p10, 0x40

    .line 268
    .line 269
    if-eqz v6, :cond_17

    .line 270
    .line 271
    and-int v4, v4, v18

    .line 272
    .line 273
    :cond_17
    and-int v4, v4, v17

    .line 274
    .line 275
    move-object/from16 v16, p7

    .line 276
    .line 277
    move v12, v11

    .line 278
    move-object v11, v7

    .line 279
    :goto_e
    move v6, v4

    .line 280
    move-object v4, v2

    .line 281
    move-object v2, v0

    .line 282
    move-object v0, v13

    .line 283
    goto :goto_11

    .line 284
    :cond_18
    :goto_f
    if-eqz v6, :cond_19

    .line 285
    .line 286
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 287
    .line 288
    goto :goto_10

    .line 289
    :cond_19
    move-object v6, v7

    .line 290
    :goto_10
    if-eqz v8, :cond_1a

    .line 291
    .line 292
    move/from16 v11, v16

    .line 293
    .line 294
    :cond_1a
    if-eqz v12, :cond_1b

    .line 295
    .line 296
    move-object v13, v15

    .line 297
    :cond_1b
    and-int/lit8 v7, p10, 0x20

    .line 298
    .line 299
    if-eqz v7, :cond_1c

    .line 300
    .line 301
    const-wide/16 v7, 0x0

    .line 302
    .line 303
    const/16 v0, 0x3f

    .line 304
    .line 305
    invoke-static {v7, v8, v3, v0}, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonDefaults;->outlinedButtonColors-5tl4gsc(JLandroidx/compose/runtime/Composer;I)Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    and-int v4, v4, v19

    .line 310
    .line 311
    :cond_1c
    and-int/lit8 v7, p10, 0x40

    .line 312
    .line 313
    if-eqz v7, :cond_1d

    .line 314
    .line 315
    shr-int/lit8 v2, v4, 0x9

    .line 316
    .line 317
    and-int/lit8 v2, v2, 0xe

    .line 318
    .line 319
    or-int/lit16 v2, v2, 0xc00

    .line 320
    .line 321
    const/4 v7, 0x6

    .line 322
    invoke-static {v11, v15, v3, v2, v7}, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonDefaults;->outlinedShape(ZLapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonBorderStroke;Landroidx/compose/runtime/Composer;II)Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    and-int v4, v4, v18

    .line 327
    .line 328
    :cond_1d
    sget-object v7, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 329
    .line 330
    and-int v4, v4, v17

    .line 331
    .line 332
    move-object/from16 v16, v7

    .line 333
    .line 334
    move v12, v11

    .line 335
    move-object v11, v6

    .line 336
    goto :goto_e

    .line 337
    :goto_11
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 338
    .line 339
    .line 340
    iget-object v13, v4, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 341
    .line 342
    invoke-static {v2}, Landroidx/work/OperationKt;->toMaterial3Colors(Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;)Landroidx/compose/material3/ButtonColors;

    .line 343
    .line 344
    .line 345
    move-result-object v14

    .line 346
    iget-object v7, v4, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;->borderStroke:Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonBorderStroke;

    .line 347
    .line 348
    if-eqz v7, :cond_1e

    .line 349
    .line 350
    new-instance v15, Landroidx/compose/foundation/BorderStroke;

    .line 351
    .line 352
    iget v8, v7, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonBorderStroke;->width:F

    .line 353
    .line 354
    iget-object v7, v7, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonBorderStroke;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 355
    .line 356
    invoke-direct {v15, v8, v7}, Landroidx/compose/foundation/BorderStroke;-><init>(FLandroidx/compose/ui/graphics/Brush;)V

    .line 357
    .line 358
    .line 359
    :cond_1e
    new-instance v7, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;

    .line 360
    .line 361
    invoke-direct {v7, v0, v1, v2, v5}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 362
    .line 363
    .line 364
    const v5, -0x23907f91

    .line 365
    .line 366
    .line 367
    invoke-static {v5, v7, v3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 368
    .line 369
    .line 370
    move-result-object v17

    .line 371
    shr-int/lit8 v5, v6, 0x3

    .line 372
    .line 373
    and-int/lit8 v6, v5, 0xe

    .line 374
    .line 375
    const/high16 v7, 0x30000000

    .line 376
    .line 377
    or-int/2addr v6, v7

    .line 378
    and-int/lit8 v7, v5, 0x70

    .line 379
    .line 380
    or-int/2addr v6, v7

    .line 381
    and-int/lit16 v5, v5, 0x380

    .line 382
    .line 383
    or-int v19, v6, v5

    .line 384
    .line 385
    move-object/from16 v18, v3

    .line 386
    .line 387
    invoke-static/range {v10 .. v19}, Landroidx/compose/material3/CardKt;->OutlinedButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 388
    .line 389
    .line 390
    move-object v5, v0

    .line 391
    move-object v6, v2

    .line 392
    move-object v7, v4

    .line 393
    move-object v3, v11

    .line 394
    move v4, v12

    .line 395
    move-object/from16 v8, v16

    .line 396
    .line 397
    goto :goto_12

    .line 398
    :cond_1f
    move-object/from16 v18, v3

    .line 399
    .line 400
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 401
    .line 402
    .line 403
    move-object/from16 v8, p7

    .line 404
    .line 405
    move-object v6, v0

    .line 406
    move-object v3, v7

    .line 407
    move v4, v11

    .line 408
    move-object v5, v13

    .line 409
    move-object v7, v2

    .line 410
    :goto_12
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 411
    .line 412
    .line 413
    move-result-object v11

    .line 414
    if-eqz v11, :cond_20

    .line 415
    .line 416
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda3;

    .line 417
    .line 418
    move-object/from16 v2, p1

    .line 419
    .line 420
    move/from16 v10, p10

    .line 421
    .line 422
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/vector/ImageVector;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;Landroidx/compose/foundation/layout/PaddingValues;II)V

    .line 423
    .line 424
    .line 425
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 426
    .line 427
    :cond_20
    return-void
.end method

.method public static final CameraPreviewView(Landroidx/compose/ui/draw/DrawResult;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p3

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object/from16 v0, p2

    .line 11
    .line 12
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v1, -0x1c5680a9

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v3, 0x4

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x2

    .line 30
    :goto_0
    or-int/2addr v1, v8

    .line 31
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    const/16 v4, 0x20

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v4, 0x10

    .line 41
    .line 42
    :goto_1
    or-int v9, v1, v4

    .line 43
    .line 44
    and-int/lit8 v1, v9, 0x13

    .line 45
    .line 46
    const/16 v4, 0x12

    .line 47
    .line 48
    const/4 v10, 0x1

    .line 49
    const/4 v5, 0x0

    .line 50
    if-eq v1, v4, :cond_2

    .line 51
    .line 52
    move v1, v10

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v1, v5

    .line 55
    :goto_2
    and-int/lit8 v4, v9, 0x1

    .line 56
    .line 57
    invoke-virtual {v0, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_a

    .line 62
    .line 63
    sget-object v1, Landroidx/compose/ui/platform/InspectionModeKt;->LocalInspectionMode:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    const v1, 0x499c0e08    # 1278401.0f

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 81
    .line 82
    .line 83
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->DarkGray:J

    .line 84
    .line 85
    sget-object v1, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 86
    .line 87
    invoke-static {v7, v3, v4, v1}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    new-instance v13, Landroidx/compose/ui/text/style/TextAlign;

    .line 92
    .line 93
    const/4 v1, 0x3

    .line 94
    invoke-direct {v13, v1}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 95
    .line 96
    .line 97
    const/16 v17, 0x6

    .line 98
    .line 99
    const/16 v18, 0x34

    .line 100
    .line 101
    const-string v9, "Camera preview"

    .line 102
    .line 103
    const-wide/16 v11, 0x0

    .line 104
    .line 105
    const/4 v14, 0x0

    .line 106
    const/4 v15, 0x0

    .line 107
    move-object/from16 v16, v0

    .line 108
    .line 109
    invoke-static/range {v9 .. v18}, Landroidx/room/util/DBUtil;->TextTitleLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 110
    .line 111
    .line 112
    move-object/from16 v11, v16

    .line 113
    .line 114
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_b

    .line 122
    .line 123
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/ui/CameraPreviewViewKt$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    invoke-direct {v1, v2, v7, v8, v5}, Lapp/k9mail/feature/migration/qrcode/ui/CameraPreviewViewKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/draw/DrawResult;Landroidx/compose/ui/Modifier;II)V

    .line 126
    .line 127
    .line 128
    :goto_3
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    move-object v11, v0

    .line 132
    const v0, 0x499eea0b

    .line 133
    .line 134
    .line 135
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 139
    .line 140
    .line 141
    sget-object v0, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 142
    .line 143
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 148
    .line 149
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 150
    .line 151
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Landroid/content/Context;

    .line 156
    .line 157
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 162
    .line 163
    if-ne v4, v12, :cond_4

    .line 164
    .line 165
    new-instance v4, Landroidx/camera/view/PreviewView;

    .line 166
    .line 167
    invoke-direct {v4, v1}, Landroidx/camera/view/PreviewView;-><init>(Landroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 171
    .line 172
    .line 173
    sget-object v6, Landroidx/camera/view/PreviewView$ScaleType;->FIT_CENTER:Landroidx/camera/view/PreviewView$ScaleType;

    .line 174
    .line 175
    invoke-virtual {v4, v6}, Landroidx/camera/view/PreviewView;->setScaleType(Landroidx/camera/view/PreviewView$ScaleType;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_4
    check-cast v4, Landroidx/camera/view/PreviewView;

    .line 182
    .line 183
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v13

    .line 187
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    and-int/lit8 v14, v9, 0xe

    .line 192
    .line 193
    if-eq v14, v3, :cond_5

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_5
    move v5, v10

    .line 197
    :goto_4
    or-int v3, v6, v5

    .line 198
    .line 199
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    or-int/2addr v3, v5

    .line 204
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    or-int/2addr v3, v5

    .line 209
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    if-nez v3, :cond_6

    .line 214
    .line 215
    if-ne v5, v12, :cond_7

    .line 216
    .line 217
    :cond_6
    move-object v3, v0

    .line 218
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    .line 219
    .line 220
    const/4 v5, 0x0

    .line 221
    const/16 v6, 0x14

    .line 222
    .line 223
    invoke-direct/range {v0 .. v6}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    move-object v5, v0

    .line 230
    :cond_7
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 231
    .line 232
    invoke-static {v11, v13, v5}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    if-nez v0, :cond_8

    .line 244
    .line 245
    if-ne v1, v12, :cond_9

    .line 246
    .line 247
    :cond_8
    new-instance v1, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 248
    .line 249
    const/16 v0, 0x1a

    .line 250
    .line 251
    invoke-direct {v1, v0, v4}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :cond_9
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 258
    .line 259
    and-int/lit8 v0, v9, 0x70

    .line 260
    .line 261
    const/4 v3, 0x0

    .line 262
    invoke-static {v1, v7, v3, v11, v0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 263
    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_a
    move-object v11, v0

    .line 267
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 268
    .line 269
    .line 270
    :goto_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    if-eqz v0, :cond_b

    .line 275
    .line 276
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/ui/CameraPreviewViewKt$$ExternalSyntheticLambda0;

    .line 277
    .line 278
    invoke-direct {v1, v2, v7, v8, v10}, Lapp/k9mail/feature/migration/qrcode/ui/CameraPreviewViewKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/draw/DrawResult;Landroidx/compose/ui/Modifier;II)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_3

    .line 282
    .line 283
    :cond_b
    return-void
.end method

.method public static final ClientCertificateInput(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object/from16 v10, p5

    .line 11
    .line 12
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v0, -0x3b47fd7

    .line 15
    .line 16
    .line 17
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x2

    .line 29
    :goto_0
    or-int v0, p6, v0

    .line 30
    .line 31
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/16 v6, 0x20

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    move v4, v6

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v4, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v0, v4

    .line 44
    or-int/lit16 v0, v0, 0x180

    .line 45
    .line 46
    move-object/from16 v9, p3

    .line 47
    .line 48
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    const/16 v4, 0x800

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/16 v4, 0x400

    .line 58
    .line 59
    :goto_2
    or-int/2addr v0, v4

    .line 60
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    const/16 v4, 0x4000

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    const/16 v4, 0x2000

    .line 70
    .line 71
    :goto_3
    or-int/2addr v0, v4

    .line 72
    and-int/lit16 v4, v0, 0x2493

    .line 73
    .line 74
    const/16 v7, 0x2492

    .line 75
    .line 76
    const/4 v8, 0x0

    .line 77
    if-eq v4, v7, :cond_4

    .line 78
    .line 79
    const/4 v4, 0x1

    .line 80
    goto :goto_4

    .line 81
    :cond_4
    move v4, v8

    .line 82
    :goto_4
    and-int/lit8 v7, v0, 0x1

    .line 83
    .line 84
    invoke-virtual {v10, v7, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_d

    .line 89
    .line 90
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 91
    .line 92
    .line 93
    and-int/lit8 v4, p6, 0x1

    .line 94
    .line 95
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 96
    .line 97
    if-eqz v4, :cond_6

    .line 98
    .line 99
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_5

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_5
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 107
    .line 108
    .line 109
    move-object/from16 v4, p2

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_6
    :goto_5
    move-object v4, v7

    .line 113
    :goto_6
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 114
    .line 115
    .line 116
    invoke-static {v7, v5}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    sget-object v11, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 121
    .line 122
    invoke-interface {v7, v11}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-interface {v7, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    sget-object v13, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 131
    .line 132
    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 133
    .line 134
    invoke-static {v13, v14, v10, v8}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    iget-wide v14, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 139
    .line 140
    ushr-long v16, v14, v6

    .line 141
    .line 142
    xor-long v14, v14, v16

    .line 143
    .line 144
    long-to-int v14, v14

    .line 145
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 146
    .line 147
    .line 148
    move-result-object v15

    .line 149
    invoke-static {v10, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 154
    .line 155
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 159
    .line 160
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 161
    .line 162
    .line 163
    iget-boolean v3, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 164
    .line 165
    if-eqz v3, :cond_7

    .line 166
    .line 167
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 168
    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_7
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 172
    .line 173
    .line 174
    :goto_7
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 175
    .line 176
    invoke-static {v10, v13, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 177
    .line 178
    .line 179
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 180
    .line 181
    invoke-static {v10, v15, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 189
    .line 190
    invoke-static {v10, v3, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 191
    .line 192
    .line 193
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 194
    .line 195
    invoke-static {v10, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 196
    .line 197
    .line 198
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 199
    .line 200
    invoke-static {v10, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 201
    .line 202
    .line 203
    sget-object v3, Landroidx/activity/compose/LocalActivityKt;->LocalActivity:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 204
    .line 205
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    check-cast v3, Landroid/app/Activity;

    .line 213
    .line 214
    if-nez v1, :cond_8

    .line 215
    .line 216
    const v7, -0xf6b8a7c

    .line 217
    .line 218
    .line 219
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 220
    .line 221
    .line 222
    const v7, 0x7f12005e

    .line 223
    .line 224
    .line 225
    invoke-static {v10, v7}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 230
    .line 231
    .line 232
    goto :goto_8

    .line 233
    :cond_8
    const v7, -0xf6b8b93

    .line 234
    .line 235
    .line 236
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 240
    .line 241
    .line 242
    move-object v7, v1

    .line 243
    :goto_8
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    and-int/lit8 v13, v0, 0x70

    .line 248
    .line 249
    if-ne v13, v6, :cond_9

    .line 250
    .line 251
    const/4 v6, 0x1

    .line 252
    goto :goto_9

    .line 253
    :cond_9
    move v6, v8

    .line 254
    :goto_9
    or-int/2addr v6, v12

    .line 255
    and-int/lit8 v12, v0, 0xe

    .line 256
    .line 257
    const/4 v13, 0x4

    .line 258
    if-ne v12, v13, :cond_a

    .line 259
    .line 260
    const/4 v8, 0x1

    .line 261
    :cond_a
    or-int/2addr v6, v8

    .line 262
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v8

    .line 266
    if-nez v6, :cond_b

    .line 267
    .line 268
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 269
    .line 270
    if-ne v8, v6, :cond_c

    .line 271
    .line 272
    :cond_b
    new-instance v8, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 273
    .line 274
    const/16 v6, 0xb

    .line 275
    .line 276
    invoke-direct {v8, v3, v2, v1, v6}, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    :cond_c
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 283
    .line 284
    and-int/lit16 v0, v0, 0x1c00

    .line 285
    .line 286
    or-int/lit16 v0, v0, 0x180

    .line 287
    .line 288
    move-object v6, v7

    .line 289
    move-object v7, v8

    .line 290
    move-object v8, v11

    .line 291
    move v11, v0

    .line 292
    invoke-static/range {v6 .. v11}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldLabelKt;->TextFieldOutlinedFakeSelect(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 293
    .line 294
    .line 295
    const/4 v0, 0x1

    .line 296
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 297
    .line 298
    .line 299
    move-object v3, v4

    .line 300
    goto :goto_a

    .line 301
    :cond_d
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 302
    .line 303
    .line 304
    move-object/from16 v3, p2

    .line 305
    .line 306
    :goto_a
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    if-eqz v8, :cond_e

    .line 311
    .line 312
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;

    .line 313
    .line 314
    const/4 v7, 0x4

    .line 315
    move-object/from16 v4, p3

    .line 316
    .line 317
    move/from16 v6, p6

    .line 318
    .line 319
    invoke-direct/range {v0 .. v7}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 320
    .line 321
    .line 322
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 323
    .line 324
    :cond_e
    return-void
.end method

.method public static final MessageItemContent(Lcom/fsck/k9/ui/messagelist/MessageListItem;ZZLapp/k9mail/core/android/common/contact/ContactRepository;Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/fsck/k9/ui/messagelist/MessageListAppearance;Landroidx/compose/runtime/Composer;I)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v6, p3

    .line 8
    .line 9
    move-object/from16 v10, p9

    .line 10
    .line 11
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayName:Ljava/lang/CharSequence;

    .line 12
    .line 13
    iget-object v4, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayAddress:Lcom/fsck/k9/mail/Address;

    .line 14
    .line 15
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-object/from16 v7, p10

    .line 37
    .line 38
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 39
    .line 40
    const v5, 0x3eb883c5

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    const/4 v5, 0x4

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v5, 0x2

    .line 55
    :goto_0
    or-int v5, p11, v5

    .line 56
    .line 57
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-eqz v9, :cond_1

    .line 62
    .line 63
    const/16 v9, 0x20

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/16 v9, 0x10

    .line 67
    .line 68
    :goto_1
    or-int/2addr v5, v9

    .line 69
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    if-eqz v9, :cond_2

    .line 74
    .line 75
    const/16 v9, 0x100

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const/16 v9, 0x80

    .line 79
    .line 80
    :goto_2
    or-int/2addr v5, v9

    .line 81
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-eqz v9, :cond_3

    .line 86
    .line 87
    const/16 v9, 0x800

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    const/16 v9, 0x400

    .line 91
    .line 92
    :goto_3
    or-int/2addr v5, v9

    .line 93
    move-object/from16 v9, p4

    .line 94
    .line 95
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    if-eqz v13, :cond_4

    .line 100
    .line 101
    const/16 v13, 0x4000

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_4
    const/16 v13, 0x2000

    .line 105
    .line 106
    :goto_4
    or-int/2addr v5, v13

    .line 107
    move-object/from16 v14, p5

    .line 108
    .line 109
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    if-eqz v13, :cond_5

    .line 114
    .line 115
    const/high16 v13, 0x20000

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_5
    const/high16 v13, 0x10000

    .line 119
    .line 120
    :goto_5
    or-int/2addr v5, v13

    .line 121
    move-object/from16 v15, p6

    .line 122
    .line 123
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    if-eqz v13, :cond_6

    .line 128
    .line 129
    const/high16 v13, 0x100000

    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_6
    const/high16 v13, 0x80000

    .line 133
    .line 134
    :goto_6
    or-int/2addr v5, v13

    .line 135
    move-object/from16 v13, p7

    .line 136
    .line 137
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v16

    .line 141
    if-eqz v16, :cond_7

    .line 142
    .line 143
    const/high16 v16, 0x800000

    .line 144
    .line 145
    goto :goto_7

    .line 146
    :cond_7
    const/high16 v16, 0x400000

    .line 147
    .line 148
    :goto_7
    or-int v5, v5, v16

    .line 149
    .line 150
    move-object/from16 v12, p8

    .line 151
    .line 152
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v16

    .line 156
    if-eqz v16, :cond_8

    .line 157
    .line 158
    const/high16 v16, 0x4000000

    .line 159
    .line 160
    goto :goto_8

    .line 161
    :cond_8
    const/high16 v16, 0x2000000

    .line 162
    .line 163
    :goto_8
    or-int v5, v5, v16

    .line 164
    .line 165
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v16

    .line 169
    if-eqz v16, :cond_9

    .line 170
    .line 171
    const/high16 v16, 0x20000000

    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_9
    const/high16 v16, 0x10000000

    .line 175
    .line 176
    :goto_9
    or-int v5, v5, v16

    .line 177
    .line 178
    const v16, 0x12492493

    .line 179
    .line 180
    .line 181
    and-int v11, v5, v16

    .line 182
    .line 183
    const v8, 0x12492492

    .line 184
    .line 185
    .line 186
    const/16 v19, 0x1

    .line 187
    .line 188
    if-eq v11, v8, :cond_a

    .line 189
    .line 190
    move/from16 v8, v19

    .line 191
    .line 192
    goto :goto_a

    .line 193
    :cond_a
    const/4 v8, 0x0

    .line 194
    :goto_a
    and-int/lit8 v11, v5, 0x1

    .line 195
    .line 196
    invoke-virtual {v7, v11, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    if-eqz v8, :cond_2a

    .line 201
    .line 202
    if-eqz v4, :cond_b

    .line 203
    .line 204
    iget-object v11, v4, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 205
    .line 206
    goto :goto_b

    .line 207
    :cond_b
    const/4 v11, 0x0

    .line 208
    :goto_b
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 217
    .line 218
    if-nez v11, :cond_c

    .line 219
    .line 220
    if-ne v8, v6, :cond_f

    .line 221
    .line 222
    :cond_c
    if-eqz v4, :cond_d

    .line 223
    .line 224
    iget-object v8, v4, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 225
    .line 226
    if-nez v8, :cond_e

    .line 227
    .line 228
    :cond_d
    const-string v8, ""

    .line 229
    .line 230
    :cond_e
    move-object/from16 v11, p3

    .line 231
    .line 232
    check-cast v11, Lapp/k9mail/core/android/common/contact/CachingContactRepository;

    .line 233
    .line 234
    invoke-virtual {v11, v8}, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->getPhotoUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    :cond_f
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v11

    .line 251
    move-object/from16 v21, v1

    .line 252
    .line 253
    if-eqz v4, :cond_10

    .line 254
    .line 255
    iget-object v1, v4, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 256
    .line 257
    goto :goto_c

    .line 258
    :cond_10
    const/4 v1, 0x0

    .line 259
    :goto_c
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v11

    .line 263
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    or-int/2addr v1, v11

    .line 268
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    if-nez v1, :cond_11

    .line 273
    .line 274
    if-ne v11, v6, :cond_13

    .line 275
    .line 276
    :cond_11
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    if-eqz v4, :cond_12

    .line 281
    .line 282
    iget-object v4, v4, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 283
    .line 284
    goto :goto_d

    .line 285
    :cond_12
    const/4 v4, 0x0

    .line 286
    :goto_d
    invoke-static {v1, v4}, Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;->create(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    :cond_13
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 298
    .line 299
    iget-boolean v1, v10, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showContactPicture:Z

    .line 300
    .line 301
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    check-cast v4, Ljava/lang/String;

    .line 306
    .line 307
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    check-cast v8, Landroid/net/Uri;

    .line 312
    .line 313
    if-eqz v8, :cond_14

    .line 314
    .line 315
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    goto :goto_e

    .line 320
    :cond_14
    const/4 v8, 0x0

    .line 321
    :goto_e
    and-int/lit8 v11, v5, 0xe

    .line 322
    .line 323
    const/16 v21, 0x8

    .line 324
    .line 325
    or-int v11, v21, v11

    .line 326
    .line 327
    and-int/lit16 v9, v5, 0x380

    .line 328
    .line 329
    or-int/2addr v9, v11

    .line 330
    shl-int/lit8 v11, v5, 0x6

    .line 331
    .line 332
    and-int/lit16 v11, v11, 0x1c00

    .line 333
    .line 334
    or-int/2addr v9, v11

    .line 335
    and-int/lit8 v11, v9, 0xe

    .line 336
    .line 337
    xor-int/lit8 v11, v11, 0x6

    .line 338
    .line 339
    move/from16 v21, v5

    .line 340
    .line 341
    const/4 v5, 0x4

    .line 342
    if-le v11, v5, :cond_15

    .line 343
    .line 344
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v11

    .line 348
    if-nez v11, :cond_16

    .line 349
    .line 350
    :cond_15
    and-int/lit8 v11, v9, 0x6

    .line 351
    .line 352
    if-ne v11, v5, :cond_17

    .line 353
    .line 354
    :cond_16
    move/from16 v5, v19

    .line 355
    .line 356
    goto :goto_f

    .line 357
    :cond_17
    const/4 v5, 0x0

    .line 358
    :goto_f
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 359
    .line 360
    .line 361
    move-result v11

    .line 362
    or-int/2addr v5, v11

    .line 363
    and-int/lit16 v11, v9, 0x380

    .line 364
    .line 365
    xor-int/lit16 v11, v11, 0x180

    .line 366
    .line 367
    const/16 v0, 0x100

    .line 368
    .line 369
    if-le v11, v0, :cond_18

    .line 370
    .line 371
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 372
    .line 373
    .line 374
    move-result v11

    .line 375
    if-nez v11, :cond_19

    .line 376
    .line 377
    :cond_18
    and-int/lit16 v11, v9, 0x180

    .line 378
    .line 379
    if-ne v11, v0, :cond_1a

    .line 380
    .line 381
    :cond_19
    move/from16 v0, v19

    .line 382
    .line 383
    goto :goto_10

    .line 384
    :cond_1a
    const/4 v0, 0x0

    .line 385
    :goto_10
    or-int/2addr v0, v5

    .line 386
    and-int/lit16 v5, v9, 0x1c00

    .line 387
    .line 388
    xor-int/lit16 v5, v5, 0xc00

    .line 389
    .line 390
    const/16 v11, 0x800

    .line 391
    .line 392
    if-le v5, v11, :cond_1b

    .line 393
    .line 394
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    if-nez v5, :cond_1c

    .line 399
    .line 400
    :cond_1b
    and-int/lit16 v5, v9, 0xc00

    .line 401
    .line 402
    if-ne v5, v11, :cond_1d

    .line 403
    .line 404
    :cond_1c
    move/from16 v5, v19

    .line 405
    .line 406
    goto :goto_11

    .line 407
    :cond_1d
    const/4 v5, 0x0

    .line 408
    :goto_11
    or-int/2addr v0, v5

    .line 409
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    or-int/2addr v0, v5

    .line 414
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    or-int/2addr v0, v5

    .line 419
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v5

    .line 423
    if-nez v0, :cond_1e

    .line 424
    .line 425
    if-ne v5, v6, :cond_1f

    .line 426
    .line 427
    :cond_1e
    move v0, v3

    .line 428
    move v3, v2

    .line 429
    move v2, v0

    .line 430
    move-object/from16 v0, p0

    .line 431
    .line 432
    move-object v5, v8

    .line 433
    goto :goto_12

    .line 434
    :cond_1f
    move-object/from16 v0, p0

    .line 435
    .line 436
    goto :goto_13

    .line 437
    :goto_12
    invoke-static/range {v0 .. v5}, Lorg/jsoup/helper/Validate;->toMessageItemUi(Lcom/fsck/k9/ui/messagelist/MessageListItem;ZZZLjava/lang/String;Ljava/lang/String;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    :goto_13
    move-object v11, v5

    .line 445
    check-cast v11, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 446
    .line 447
    const/high16 v1, 0x70000000

    .line 448
    .line 449
    and-int v1, v21, v1

    .line 450
    .line 451
    const/high16 v2, 0x20000000

    .line 452
    .line 453
    if-eq v1, v2, :cond_21

    .line 454
    .line 455
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    if-eqz v2, :cond_20

    .line 460
    .line 461
    goto :goto_14

    .line 462
    :cond_20
    const/4 v2, 0x0

    .line 463
    goto :goto_15

    .line 464
    :cond_21
    :goto_14
    move/from16 v2, v19

    .line 465
    .line 466
    :goto_15
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    if-nez v2, :cond_22

    .line 471
    .line 472
    if-ne v3, v6, :cond_23

    .line 473
    .line 474
    :cond_22
    new-instance v22, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 475
    .line 476
    iget-object v2, v10, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 477
    .line 478
    iget-boolean v3, v10, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showingThreadedList:Z

    .line 479
    .line 480
    iget-boolean v4, v10, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showContactPicture:Z

    .line 481
    .line 482
    iget-boolean v5, v10, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->stars:Z

    .line 483
    .line 484
    iget-boolean v8, v10, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->senderAboveSubject:Z

    .line 485
    .line 486
    iget v9, v10, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->previewLines:I

    .line 487
    .line 488
    move-object/from16 v23, v2

    .line 489
    .line 490
    iget-object v2, v10, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 491
    .line 492
    move-object/from16 v30, v2

    .line 493
    .line 494
    iget-boolean v2, v10, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->backGroundAsReadIndicator:Z

    .line 495
    .line 496
    sget-object v31, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->EMPTY:Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 497
    .line 498
    const/16 v25, 0x0

    .line 499
    .line 500
    move/from16 v32, v2

    .line 501
    .line 502
    move/from16 v24, v3

    .line 503
    .line 504
    move/from16 v26, v4

    .line 505
    .line 506
    move/from16 v27, v5

    .line 507
    .line 508
    move/from16 v28, v8

    .line 509
    .line 510
    move/from16 v29, v9

    .line 511
    .line 512
    invoke-direct/range {v22 .. v32}, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;-><init>(Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;ZZZZZILnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;Lkotlinx/collections/immutable/ImmutableSet;Z)V

    .line 513
    .line 514
    .line 515
    move-object/from16 v3, v22

    .line 516
    .line 517
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    :cond_23
    check-cast v3, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 521
    .line 522
    const/high16 v2, 0x20000000

    .line 523
    .line 524
    if-eq v1, v2, :cond_25

    .line 525
    .line 526
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    if-eqz v1, :cond_24

    .line 531
    .line 532
    goto :goto_16

    .line 533
    :cond_24
    const/16 v19, 0x0

    .line 534
    .line 535
    :cond_25
    :goto_16
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    if-nez v19, :cond_26

    .line 540
    .line 541
    if-ne v1, v6, :cond_28

    .line 542
    .line 543
    :cond_26
    iget-boolean v1, v10, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showAccountIndicator:Z

    .line 544
    .line 545
    if-eqz v1, :cond_27

    .line 546
    .line 547
    new-instance v8, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;

    .line 548
    .line 549
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 550
    .line 551
    iget-object v1, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 552
    .line 553
    iget v1, v1, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->color:I

    .line 554
    .line 555
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 556
    .line 557
    .line 558
    move-result-wide v1

    .line 559
    invoke-direct {v8, v1, v2}, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;-><init>(J)V

    .line 560
    .line 561
    .line 562
    goto :goto_17

    .line 563
    :cond_27
    const/4 v8, 0x0

    .line 564
    :goto_17
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    move-object v1, v8

    .line 568
    :cond_28
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;

    .line 569
    .line 570
    iget-boolean v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 571
    .line 572
    const v4, 0x3ffc00

    .line 573
    .line 574
    .line 575
    if-eqz v2, :cond_29

    .line 576
    .line 577
    const v2, 0x72a795fd

    .line 578
    .line 579
    .line 580
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 581
    .line 582
    .line 583
    shr-int/lit8 v2, v21, 0x6

    .line 584
    .line 585
    and-int v20, v2, v4

    .line 586
    .line 587
    const/16 v21, 0x80

    .line 588
    .line 589
    const/16 v18, 0x0

    .line 590
    .line 591
    move-object/from16 v19, v7

    .line 592
    .line 593
    move-object/from16 v17, v12

    .line 594
    .line 595
    move-object/from16 v16, v13

    .line 596
    .line 597
    move-object v13, v1

    .line 598
    move-object v12, v3

    .line 599
    invoke-static/range {v11 .. v21}, Lokhttp3/CacheControl$Companion;->ReadMessageItem(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 600
    .line 601
    .line 602
    move-object/from16 v1, v19

    .line 603
    .line 604
    const/4 v2, 0x0

    .line 605
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 606
    .line 607
    .line 608
    goto :goto_18

    .line 609
    :cond_29
    move-object v13, v1

    .line 610
    move-object v12, v3

    .line 611
    move-object v1, v7

    .line 612
    const/4 v2, 0x0

    .line 613
    const v3, 0x72a7bf3f

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 617
    .line 618
    .line 619
    shr-int/lit8 v3, v21, 0x6

    .line 620
    .line 621
    and-int v20, v3, v4

    .line 622
    .line 623
    const/16 v21, 0x80

    .line 624
    .line 625
    const/16 v18, 0x0

    .line 626
    .line 627
    move-object/from16 v14, p5

    .line 628
    .line 629
    move-object/from16 v15, p6

    .line 630
    .line 631
    move-object/from16 v16, p7

    .line 632
    .line 633
    move-object/from16 v17, p8

    .line 634
    .line 635
    move-object/from16 v19, v1

    .line 636
    .line 637
    invoke-static/range {v11 .. v21}, Lokhttp3/Cookie$Companion;->UnreadMessageItem(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 641
    .line 642
    .line 643
    goto :goto_18

    .line 644
    :cond_2a
    move-object v1, v7

    .line 645
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 646
    .line 647
    .line 648
    :goto_18
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 649
    .line 650
    .line 651
    move-result-object v12

    .line 652
    if-eqz v12, :cond_2b

    .line 653
    .line 654
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionKt$$ExternalSyntheticLambda2;

    .line 655
    .line 656
    move-object/from16 v1, p0

    .line 657
    .line 658
    move/from16 v2, p1

    .line 659
    .line 660
    move/from16 v3, p2

    .line 661
    .line 662
    move-object/from16 v4, p3

    .line 663
    .line 664
    move-object/from16 v5, p4

    .line 665
    .line 666
    move-object/from16 v6, p5

    .line 667
    .line 668
    move-object/from16 v7, p6

    .line 669
    .line 670
    move-object/from16 v8, p7

    .line 671
    .line 672
    move-object/from16 v9, p8

    .line 673
    .line 674
    move/from16 v11, p11

    .line 675
    .line 676
    invoke-direct/range {v0 .. v11}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionKt$$ExternalSyntheticLambda2;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListItem;ZZLapp/k9mail/core/android/common/contact/ContactRepository;Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/fsck/k9/ui/messagelist/MessageListAppearance;I)V

    .line 677
    .line 678
    .line 679
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 680
    .line 681
    :cond_2b
    return-void
.end method

.method public static final ServerValidationScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V
    .locals 17

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move-object/from16 v6, p3

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-object/from16 v7, p6

    .line 18
    .line 19
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    const v0, -0x5af89d08

    .line 22
    .line 23
    .line 24
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    .line 27
    move-object/from16 v3, p0

    .line 28
    .line 29
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v8, 0x4

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    move v0, v8

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x2

    .line 39
    :goto_0
    or-int v0, p7, v0

    .line 40
    .line 41
    move-object/from16 v2, p1

    .line 42
    .line 43
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    const/16 v4, 0x20

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/16 v4, 0x10

    .line 53
    .line 54
    :goto_1
    or-int/2addr v0, v4

    .line 55
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    const/16 v4, 0x100

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/16 v4, 0x80

    .line 65
    .line 66
    :goto_2
    or-int/2addr v0, v4

    .line 67
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_3

    .line 72
    .line 73
    const/16 v4, 0x800

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    const/16 v4, 0x400

    .line 77
    .line 78
    :goto_3
    or-int/2addr v0, v4

    .line 79
    or-int/lit16 v4, v0, 0x6000

    .line 80
    .line 81
    and-int/lit8 v5, p8, 0x20

    .line 82
    .line 83
    if-eqz v5, :cond_4

    .line 84
    .line 85
    const v4, 0x36000

    .line 86
    .line 87
    .line 88
    or-int/2addr v0, v4

    .line 89
    move v9, v0

    .line 90
    move-object/from16 v0, p5

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_4
    move-object/from16 v0, p5

    .line 94
    .line 95
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_5

    .line 100
    .line 101
    const/high16 v9, 0x20000

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    const/high16 v9, 0x10000

    .line 105
    .line 106
    :goto_4
    or-int/2addr v4, v9

    .line 107
    move v9, v4

    .line 108
    :goto_5
    const v4, 0x12493

    .line 109
    .line 110
    .line 111
    and-int/2addr v4, v9

    .line 112
    const v10, 0x12492

    .line 113
    .line 114
    .line 115
    const/4 v12, 0x0

    .line 116
    if-eq v4, v10, :cond_6

    .line 117
    .line 118
    const/4 v4, 0x1

    .line 119
    goto :goto_6

    .line 120
    :cond_6
    move v4, v12

    .line 121
    :goto_6
    and-int/lit8 v10, v9, 0x1

    .line 122
    .line 123
    invoke-virtual {v7, v10, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_17

    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    if-eqz v5, :cond_7

    .line 131
    .line 132
    move-object v10, v2

    .line 133
    goto :goto_7

    .line 134
    :cond_7
    move-object v10, v0

    .line 135
    :goto_7
    shr-int/lit8 v13, v9, 0x6

    .line 136
    .line 137
    iget-object v0, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 138
    .line 139
    invoke-static {v0, v7}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 140
    .line 141
    .line 142
    move-result-object v14

    .line 143
    and-int/lit8 v0, v13, 0xe

    .line 144
    .line 145
    xor-int/lit8 v0, v0, 0x6

    .line 146
    .line 147
    if-le v0, v8, :cond_8

    .line 148
    .line 149
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_9

    .line 154
    .line 155
    :cond_8
    and-int/lit8 v0, v13, 0x6

    .line 156
    .line 157
    if-ne v0, v8, :cond_a

    .line 158
    .line 159
    :cond_9
    const/4 v0, 0x1

    .line 160
    goto :goto_8

    .line 161
    :cond_a
    move v0, v12

    .line 162
    :goto_8
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 167
    .line 168
    if-nez v0, :cond_b

    .line 169
    .line 170
    if-ne v4, v15, :cond_c

    .line 171
    .line 172
    :cond_b
    new-instance v4, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;

    .line 173
    .line 174
    const/4 v0, 0x5

    .line 175
    invoke-direct {v4, v1, v0}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_c
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 182
    .line 183
    iget-object v0, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 184
    .line 185
    move-object v5, v0

    .line 186
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2;

    .line 187
    .line 188
    move-object/from16 v16, v5

    .line 189
    .line 190
    const/4 v5, 0x3

    .line 191
    move-object/from16 p4, v4

    .line 192
    .line 193
    move-object/from16 v11, v16

    .line 194
    .line 195
    move-object/from16 v4, p1

    .line 196
    .line 197
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 198
    .line 199
    .line 200
    invoke-static {v7, v11, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    move-object/from16 v4, p4

    .line 210
    .line 211
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    if-nez v0, :cond_d

    .line 220
    .line 221
    if-ne v1, v15, :cond_e

    .line 222
    .line 223
    :cond_d
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;

    .line 224
    .line 225
    invoke-direct {v1, v8, v2, v4}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;-><init>(ILkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    :cond_e
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 232
    .line 233
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 234
    .line 235
    invoke-static {v7, v0, v1}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    if-nez v0, :cond_f

    .line 247
    .line 248
    if-ne v1, v15, :cond_10

    .line 249
    .line 250
    :cond_f
    new-instance v1, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 251
    .line 252
    const/16 v0, 0x15

    .line 253
    .line 254
    invoke-direct {v1, v0, v4}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    :cond_10
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 261
    .line 262
    const/4 v0, 0x1

    .line 263
    invoke-static {v12, v1, v7, v12, v0}, Landroidx/core/util/DebugUtils;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 264
    .line 265
    .line 266
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 271
    .line 272
    iget-object v0, v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->error:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;

    .line 273
    .line 274
    instance-of v0, v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error$CertificateError;

    .line 275
    .line 276
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 277
    .line 278
    if-eqz v0, :cond_15

    .line 279
    .line 280
    const v0, -0x69602695

    .line 281
    .line 282
    .line 283
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    if-nez v0, :cond_11

    .line 295
    .line 296
    if-ne v1, v15, :cond_12

    .line 297
    .line 298
    :cond_11
    new-instance v1, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 299
    .line 300
    const/16 v0, 0x16

    .line 301
    .line 302
    invoke-direct {v1, v0, v4}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    :cond_12
    move-object v0, v1

    .line 309
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 310
    .line 311
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    if-nez v1, :cond_13

    .line 320
    .line 321
    if-ne v3, v15, :cond_14

    .line 322
    .line 323
    :cond_13
    new-instance v3, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 324
    .line 325
    const/16 v1, 0x17

    .line 326
    .line 327
    invoke-direct {v3, v1, v4}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    :cond_14
    move-object v1, v3

    .line 334
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 335
    .line 336
    const/4 v3, 0x0

    .line 337
    const/16 v5, 0x180

    .line 338
    .line 339
    move-object v4, v7

    .line 340
    move-object/from16 v7, p2

    .line 341
    .line 342
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/IntOffsetKt;->ServerCertificateErrorScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;Landroidx/compose/runtime/Composer;I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 346
    .line 347
    .line 348
    goto :goto_a

    .line 349
    :cond_15
    move-object v4, v7

    .line 350
    move-object/from16 v7, p2

    .line 351
    .line 352
    const v0, -0x695c9852

    .line 353
    .line 354
    .line 355
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 356
    .line 357
    .line 358
    if-eqz v10, :cond_16

    .line 359
    .line 360
    const v0, -0x695c44a5

    .line 361
    .line 362
    .line 363
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 364
    .line 365
    .line 366
    shr-int/lit8 v0, v9, 0xf

    .line 367
    .line 368
    and-int/lit8 v0, v0, 0xe

    .line 369
    .line 370
    shr-int/lit8 v1, v9, 0x3

    .line 371
    .line 372
    and-int/lit8 v1, v1, 0x70

    .line 373
    .line 374
    or-int/2addr v0, v1

    .line 375
    or-int/lit16 v0, v0, 0x180

    .line 376
    .line 377
    invoke-static {v10, v7, v2, v4, v0}, Landroidx/room/util/DBUtil;->ServerValidationToolbarScreen(Ljava/lang/String;Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 381
    .line 382
    .line 383
    goto :goto_9

    .line 384
    :cond_16
    const v0, -0x695984ba

    .line 385
    .line 386
    .line 387
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 388
    .line 389
    .line 390
    and-int/lit16 v0, v13, 0x3fe

    .line 391
    .line 392
    invoke-static {v7, v6, v2, v4, v0}, Landroidx/compose/ui/unit/IntRectKt;->ServerValidationMainScreen(Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 396
    .line 397
    .line 398
    :goto_9
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 399
    .line 400
    .line 401
    :goto_a
    move-object v5, v2

    .line 402
    move-object v6, v10

    .line 403
    goto :goto_b

    .line 404
    :cond_17
    move-object v4, v7

    .line 405
    move-object v7, v1

    .line 406
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 407
    .line 408
    .line 409
    move-object/from16 v5, p4

    .line 410
    .line 411
    move-object v6, v0

    .line 412
    :goto_b
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 413
    .line 414
    .line 415
    move-result-object v9

    .line 416
    if-eqz v9, :cond_18

    .line 417
    .line 418
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;

    .line 419
    .line 420
    move-object/from16 v1, p0

    .line 421
    .line 422
    move-object/from16 v2, p1

    .line 423
    .line 424
    move-object/from16 v4, p3

    .line 425
    .line 426
    move/from16 v8, p8

    .line 427
    .line 428
    move-object v3, v7

    .line 429
    move/from16 v7, p7

    .line 430
    .line 431
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Landroidx/compose/ui/Modifier;Ljava/lang/String;II)V

    .line 432
    .line 433
    .line 434
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 435
    .line 436
    :cond_18
    return-void
.end method

.method public static final TextLabelLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V
    .locals 31

    .line 1
    move/from16 v7, p7

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v0, p6

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v1, -0x7d39839

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    and-int/lit8 v1, v7, 0x6

    .line 17
    .line 18
    move-object/from16 v8, p0

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x2

    .line 31
    :goto_0
    or-int/2addr v1, v7

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v7

    .line 34
    :goto_1
    and-int/lit8 v2, p8, 0x2

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    or-int/lit8 v1, v1, 0x30

    .line 39
    .line 40
    :cond_2
    move-object/from16 v3, p1

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    and-int/lit8 v3, v7, 0x30

    .line 44
    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    move-object/from16 v3, p1

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    const/16 v4, 0x20

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    const/16 v4, 0x10

    .line 59
    .line 60
    :goto_2
    or-int/2addr v1, v4

    .line 61
    :goto_3
    and-int/lit8 v4, p8, 0x4

    .line 62
    .line 63
    if-eqz v4, :cond_6

    .line 64
    .line 65
    or-int/lit16 v1, v1, 0x180

    .line 66
    .line 67
    :cond_5
    move-wide/from16 v5, p2

    .line 68
    .line 69
    goto :goto_5

    .line 70
    :cond_6
    and-int/lit16 v5, v7, 0x180

    .line 71
    .line 72
    if-nez v5, :cond_5

    .line 73
    .line 74
    move-wide/from16 v5, p2

    .line 75
    .line 76
    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_7

    .line 81
    .line 82
    const/16 v9, 0x100

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_7
    const/16 v9, 0x80

    .line 86
    .line 87
    :goto_4
    or-int/2addr v1, v9

    .line 88
    :goto_5
    or-int/lit16 v9, v1, 0xc00

    .line 89
    .line 90
    and-int/lit8 v10, p8, 0x10

    .line 91
    .line 92
    if-eqz v10, :cond_9

    .line 93
    .line 94
    or-int/lit16 v9, v1, 0x6c00

    .line 95
    .line 96
    :cond_8
    move/from16 v1, p4

    .line 97
    .line 98
    goto :goto_7

    .line 99
    :cond_9
    and-int/lit16 v1, v7, 0x6000

    .line 100
    .line 101
    if-nez v1, :cond_8

    .line 102
    .line 103
    move/from16 v1, p4

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    if-eqz v11, :cond_a

    .line 110
    .line 111
    const/16 v11, 0x4000

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_a
    const/16 v11, 0x2000

    .line 115
    .line 116
    :goto_6
    or-int/2addr v9, v11

    .line 117
    :goto_7
    and-int/lit8 v11, p8, 0x20

    .line 118
    .line 119
    const/high16 v12, 0x30000

    .line 120
    .line 121
    if-eqz v11, :cond_c

    .line 122
    .line 123
    or-int/2addr v9, v12

    .line 124
    :cond_b
    move/from16 v12, p5

    .line 125
    .line 126
    goto :goto_9

    .line 127
    :cond_c
    and-int/2addr v12, v7

    .line 128
    if-nez v12, :cond_b

    .line 129
    .line 130
    move/from16 v12, p5

    .line 131
    .line 132
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    if-eqz v13, :cond_d

    .line 137
    .line 138
    const/high16 v13, 0x20000

    .line 139
    .line 140
    goto :goto_8

    .line 141
    :cond_d
    const/high16 v13, 0x10000

    .line 142
    .line 143
    :goto_8
    or-int/2addr v9, v13

    .line 144
    :goto_9
    const v13, 0x12493

    .line 145
    .line 146
    .line 147
    and-int/2addr v13, v9

    .line 148
    const v14, 0x12492

    .line 149
    .line 150
    .line 151
    const/4 v15, 0x1

    .line 152
    if-eq v13, v14, :cond_e

    .line 153
    .line 154
    move v13, v15

    .line 155
    goto :goto_a

    .line 156
    :cond_e
    const/4 v13, 0x0

    .line 157
    :goto_a
    and-int/lit8 v14, v9, 0x1

    .line 158
    .line 159
    invoke-virtual {v0, v14, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 160
    .line 161
    .line 162
    move-result v13

    .line 163
    if-eqz v13, :cond_13

    .line 164
    .line 165
    if-eqz v2, :cond_f

    .line 166
    .line 167
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 168
    .line 169
    goto :goto_b

    .line 170
    :cond_f
    move-object v2, v3

    .line 171
    :goto_b
    if-eqz v4, :cond_10

    .line 172
    .line 173
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 174
    .line 175
    move-wide/from16 v29, v3

    .line 176
    .line 177
    move v3, v10

    .line 178
    move v4, v11

    .line 179
    move-wide/from16 v10, v29

    .line 180
    .line 181
    goto :goto_c

    .line 182
    :cond_10
    move v3, v10

    .line 183
    move v4, v11

    .line 184
    move-wide v10, v5

    .line 185
    :goto_c
    if-eqz v3, :cond_11

    .line 186
    .line 187
    move/from16 v19, v15

    .line 188
    .line 189
    goto :goto_d

    .line 190
    :cond_11
    move/from16 v19, v1

    .line 191
    .line 192
    :goto_d
    if-eqz v4, :cond_12

    .line 193
    .line 194
    const v1, 0x7fffffff

    .line 195
    .line 196
    .line 197
    move/from16 v21, v1

    .line 198
    .line 199
    goto :goto_e

    .line 200
    :cond_12
    move/from16 v21, v12

    .line 201
    .line 202
    :goto_e
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypographyKt;->LocalThemeTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 209
    .line 210
    iget-object v1, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 211
    .line 212
    and-int/lit16 v3, v9, 0x3fe

    .line 213
    .line 214
    shr-int/lit8 v4, v9, 0x9

    .line 215
    .line 216
    and-int/lit8 v4, v4, 0xe

    .line 217
    .line 218
    shr-int/lit8 v5, v9, 0x6

    .line 219
    .line 220
    and-int/lit16 v5, v5, 0x380

    .line 221
    .line 222
    or-int/2addr v4, v5

    .line 223
    shr-int/lit8 v5, v9, 0x3

    .line 224
    .line 225
    const v6, 0xe000

    .line 226
    .line 227
    .line 228
    and-int/2addr v5, v6

    .line 229
    or-int v27, v4, v5

    .line 230
    .line 231
    const v28, 0x1abf8

    .line 232
    .line 233
    .line 234
    const-wide/16 v12, 0x0

    .line 235
    .line 236
    const-wide/16 v14, 0x0

    .line 237
    .line 238
    const/16 v16, 0x0

    .line 239
    .line 240
    const-wide/16 v17, 0x0

    .line 241
    .line 242
    const/16 v20, 0x0

    .line 243
    .line 244
    const/16 v22, 0x0

    .line 245
    .line 246
    const/16 v23, 0x0

    .line 247
    .line 248
    move-object/from16 v25, v0

    .line 249
    .line 250
    move-object/from16 v24, v1

    .line 251
    .line 252
    move-object v9, v2

    .line 253
    move/from16 v26, v3

    .line 254
    .line 255
    invoke-static/range {v8 .. v28}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 256
    .line 257
    .line 258
    move-wide v3, v10

    .line 259
    move/from16 v5, v19

    .line 260
    .line 261
    move/from16 v6, v21

    .line 262
    .line 263
    goto :goto_f

    .line 264
    :cond_13
    move-object/from16 v25, v0

    .line 265
    .line 266
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 267
    .line 268
    .line 269
    move-object v2, v3

    .line 270
    move-wide v3, v5

    .line 271
    move v6, v12

    .line 272
    move v5, v1

    .line 273
    :goto_f
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 274
    .line 275
    .line 276
    move-result-object v10

    .line 277
    if-eqz v10, :cond_14

    .line 278
    .line 279
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;

    .line 280
    .line 281
    const/4 v9, 0x0

    .line 282
    move-object/from16 v1, p0

    .line 283
    .line 284
    move/from16 v8, p8

    .line 285
    .line 286
    invoke-direct/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;JIIIII)V

    .line 287
    .line 288
    .line 289
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 290
    .line 291
    :cond_14
    return-void
.end method

.method public static final TextLabelLarge-ZHfKjFs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILkotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/Composer;I)V
    .locals 31

    .line 1
    move/from16 v8, p8

    .line 2
    .line 3
    move-object/from16 v0, p7

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, -0x63efd99d

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, v8, 0x6

    .line 14
    .line 15
    move-object/from16 v9, p0

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x2

    .line 28
    :goto_0
    or-int/2addr v1, v8

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v1, v8

    .line 31
    :goto_1
    and-int/lit8 v2, v8, 0x30

    .line 32
    .line 33
    move-object/from16 v10, p1

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    const/16 v2, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v2, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v1, v2

    .line 49
    :cond_3
    and-int/lit16 v2, v8, 0x180

    .line 50
    .line 51
    move-wide/from16 v11, p2

    .line 52
    .line 53
    if-nez v2, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    const/16 v2, 0x100

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v2, 0x80

    .line 65
    .line 66
    :goto_3
    or-int/2addr v1, v2

    .line 67
    :cond_5
    const v2, 0x1b6c00

    .line 68
    .line 69
    .line 70
    or-int/2addr v1, v2

    .line 71
    const v2, 0x92493

    .line 72
    .line 73
    .line 74
    and-int/2addr v2, v1

    .line 75
    const v3, 0x92492

    .line 76
    .line 77
    .line 78
    if-eq v2, v3, :cond_6

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    goto :goto_4

    .line 82
    :cond_6
    const/4 v2, 0x0

    .line 83
    :goto_4
    and-int/lit8 v3, v1, 0x1

    .line 84
    .line 85
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_7

    .line 90
    .line 91
    sget-object v24, Lkotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMap;->EMPTY:Lkotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMap;

    .line 92
    .line 93
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypographyKt;->LocalThemeTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 103
    .line 104
    iget-object v2, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 105
    .line 106
    and-int/lit16 v3, v1, 0x3fe

    .line 107
    .line 108
    shr-int/lit8 v4, v1, 0x9

    .line 109
    .line 110
    and-int/lit8 v4, v4, 0xe

    .line 111
    .line 112
    shr-int/lit8 v5, v1, 0x6

    .line 113
    .line 114
    and-int/lit16 v5, v5, 0x380

    .line 115
    .line 116
    or-int/2addr v4, v5

    .line 117
    shr-int/lit8 v5, v1, 0x3

    .line 118
    .line 119
    const v6, 0xe000

    .line 120
    .line 121
    .line 122
    and-int/2addr v5, v6

    .line 123
    or-int/2addr v4, v5

    .line 124
    const/high16 v5, 0x380000

    .line 125
    .line 126
    and-int/2addr v1, v5

    .line 127
    or-int v29, v4, v1

    .line 128
    .line 129
    const v30, 0x2abf8

    .line 130
    .line 131
    .line 132
    const-wide/16 v13, 0x0

    .line 133
    .line 134
    const-wide/16 v15, 0x0

    .line 135
    .line 136
    const/16 v17, 0x0

    .line 137
    .line 138
    const-wide/16 v18, 0x0

    .line 139
    .line 140
    const/16 v20, 0x1

    .line 141
    .line 142
    const/16 v21, 0x0

    .line 143
    .line 144
    const v22, 0x7fffffff

    .line 145
    .line 146
    .line 147
    const/16 v23, 0x0

    .line 148
    .line 149
    const/16 v25, 0x0

    .line 150
    .line 151
    move-object/from16 v27, v0

    .line 152
    .line 153
    move-object/from16 v26, v2

    .line 154
    .line 155
    move/from16 v28, v3

    .line 156
    .line 157
    invoke-static/range {v9 .. v30}, Landroidx/compose/material3/TextKt;->Text-Z58ophY(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 158
    .line 159
    .line 160
    move/from16 v5, v20

    .line 161
    .line 162
    move/from16 v6, v22

    .line 163
    .line 164
    move-object/from16 v7, v24

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_7
    move-object/from16 v27, v0

    .line 168
    .line 169
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 170
    .line 171
    .line 172
    move/from16 v5, p4

    .line 173
    .line 174
    move/from16 v6, p5

    .line 175
    .line 176
    move-object/from16 v7, p6

    .line 177
    .line 178
    :goto_5
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    if-eqz v9, :cond_8

    .line 183
    .line 184
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda1;

    .line 185
    .line 186
    move-object/from16 v1, p0

    .line 187
    .line 188
    move-object/from16 v2, p1

    .line 189
    .line 190
    move-wide/from16 v3, p2

    .line 191
    .line 192
    invoke-direct/range {v0 .. v8}, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILkotlinx/collections/immutable/PersistentMap;I)V

    .line 193
    .line 194
    .line 195
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 196
    .line 197
    :cond_8
    return-void
.end method

.method public static final add-impl(Landroidx/collection/MutableIntList;I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/collection/MutableIntList;->_size:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->get(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eq v0, p1, :cond_0

    .line 11
    .line 12
    iget v0, p0, Landroidx/collection/MutableIntList;->_size:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, p1, :cond_1

    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    iget v0, p0, Landroidx/collection/MutableIntList;->_size:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntList;->add(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    if-lez v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 v1, v0, 0x1

    .line 31
    .line 32
    ushr-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroidx/collection/MutableIntList;->get(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-le p1, v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, v0, v2}, Landroidx/collection/MutableIntList;->set(II)V

    .line 43
    .line 44
    .line 45
    move v0, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableIntList;->set(II)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/MapBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    .line 4
    .line 5
    .line 6
    iget v0, v0, Lkotlin/collections/builders/MapBuilder;->size:I

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object p0, Lkotlin/collections/builders/SetBuilder;->Empty:Lkotlin/collections/builders/SetBuilder;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final callPoolingContainerOnRelease(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/core/view/ViewKt$allViews$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, p0, v1, v2}, Landroidx/core/view/ViewKt$allViews$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lorg/minidns/util/Base64;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/View;

    .line 26
    .line 27
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->getPoolingContainerListenerHolder(Landroid/view/View;)Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;->listeners:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->getLastIndex(Ljava/util/List;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :goto_0
    const/4 v2, -0x1

    .line 38
    if-ge v2, v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    iget-object v2, v2, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/platform/AbstractComposeView;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AbstractComposeView;->disposeComposition()V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method public static checkMainThread()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/jsoup/helper/Validate;->isMainThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Not in application\'s main thread"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static clamp(III)I
    .locals 0

    .line 1
    if-ge p0, p1, :cond_0

    .line 2
    .line 3
    return p1

    .line 4
    :cond_0
    if-le p0, p2, :cond_1

    .line 5
    .line 6
    return p2

    .line 7
    :cond_1
    return p0
.end method

.method public static convertToLongArray(Ljava/io/Serializable;)[J
    .locals 4

    .line 1
    instance-of v0, p0, [I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, [I

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    new-array v0, v0, [J

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p0

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    aget v2, p0, v1

    .line 15
    .line 16
    int-to-long v2, v2

    .line 17
    aput-wide v2, v0, v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v0

    .line 23
    :cond_1
    instance-of v0, p0, [J

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    check-cast p0, [J

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public static final currentThreadId()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 0

    .line 1
    cmp-long p0, p0, p2

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public static from(Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2, p1}, Landroidx/compose/ui/text/ParagraphKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->inputTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->density:Landroidx/compose/ui/unit/DensityImpl;

    .line 24
    .line 25
    iget v1, v1, Landroidx/compose/ui/unit/DensityImpl;->density:F

    .line 26
    .line 27
    cmpg-float v0, v0, v1

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 32
    .line 33
    if-ne p4, v0, :cond_0

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    sget-object p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->last:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 41
    .line 42
    if-ne p1, v0, :cond_1

    .line 43
    .line 44
    invoke-static {p2, p1}, Landroidx/compose/ui/text/ParagraphKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->inputTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->density:Landroidx/compose/ui/unit/DensityImpl;

    .line 61
    .line 62
    iget v1, v1, Landroidx/compose/ui/unit/DensityImpl;->density:F

    .line 63
    .line 64
    cmpg-float v0, v0, v1

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 69
    .line 70
    if-ne p4, v0, :cond_1

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_1
    new-instance p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 74
    .line 75
    invoke-static {p2, p1}, Landroidx/compose/ui/text/ParagraphKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    new-instance v1, Landroidx/compose/ui/unit/DensityImpl;

    .line 88
    .line 89
    invoke-direct {v1, v0, p3}, Landroidx/compose/ui/unit/DensityImpl;-><init>(FF)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1, p2, v1, p4}, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;-><init>(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/DensityImpl;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 93
    .line 94
    .line 95
    sput-object p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->last:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 96
    .line 97
    return-object p0
.end method

.method public static from-PVuDhNw$camera_camera2_pipe(Ljava/lang/Exception;)I
    .locals 7

    .line 1
    instance-of v0, p0, Landroid/hardware/camera2/CameraAccessException;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xb

    .line 5
    .line 6
    const-string v3, "CXCP"

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    check-cast p0, Landroid/hardware/camera2/CameraAccessException;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v4, 0x3

    .line 17
    const/4 v5, 0x1

    .line 18
    if-eq v0, v5, :cond_4

    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    if-eq v0, v6, :cond_3

    .line 22
    .line 23
    if-eq v0, v4, :cond_2

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x5

    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "Unexpected CameraAccessException: "

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return v2

    .line 49
    :cond_0
    return v6

    .line 50
    :cond_1
    return v5

    .line 51
    :cond_2
    return v1

    .line 52
    :cond_3
    const/4 p0, 0x6

    .line 53
    return p0

    .line 54
    :cond_4
    return v4

    .line 55
    :cond_5
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    const/4 p0, 0x7

    .line 60
    return p0

    .line 61
    :cond_6
    instance-of v0, p0, Ljava/lang/SecurityException;

    .line 62
    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    const/16 p0, 0x8

    .line 66
    .line 67
    return p0

    .line 68
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    .line 70
    const/16 v4, 0x1c

    .line 71
    .line 72
    if-ne v0, v4, :cond_a

    .line 73
    .line 74
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 75
    .line 76
    if-nez v0, :cond_8

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_8
    move-object v0, p0

    .line 80
    check-cast v0, Ljava/lang/RuntimeException;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    array-length v4, v0

    .line 90
    if-nez v4, :cond_9

    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    goto :goto_0

    .line 94
    :cond_9
    aget-object v0, v0, v1

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :goto_0
    const-string v1, "_enableShutterSound"

    .line 101
    .line 102
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    :goto_1
    if-eqz v1, :cond_a

    .line 107
    .line 108
    const/16 p0, 0xa

    .line 109
    .line 110
    return p0

    .line 111
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v1, "Unexpected throwable: "

    .line 114
    .line 115
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    return v2
.end method

.method public static final fromServerSettingsType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x316053

    .line 9
    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const v1, 0x349802

    .line 14
    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const v1, 0x35ee56

    .line 19
    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    const-string v0, "smtp"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const-string p0, "SMTP"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_0
    const-string v0, "pop3"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const-string p0, "POP3"

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_1
    const-string v0, "imap"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const-string p0, "IMAP"

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_2
    const-string v0, "Unsupported type: "

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    return-object p0
.end method

.method public static final generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/work/impl/model/WorkGenerationalId;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 7
    .line 8
    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->generation:I

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Landroidx/work/impl/model/WorkGenerationalId;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static final get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :goto_0
    const/4 v0, 0x0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    const v1, 0x7f090480

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    instance-of v2, v1, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v1, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move-object v1, v0

    .line 22
    :goto_1
    if-eqz v1, :cond_1

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_1
    invoke-static {p0}, Landroidx/work/OperationKt;->getParentOrViewTreeDisjointParent(Landroid/view/View;)Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    instance-of v1, p0, Landroid/view/View;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    check-cast p0, Landroid/view/View;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move-object p0, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    return-object v0
.end method

.method public static final getEllipsizedLeftPadding(Landroid/text/Layout;ILandroid/graphics/Paint;)F
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineLeft(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Landroidx/compose/ui/text/android/TextLayout_androidKt;->SharedTextAndroidCanvas:Ljava/lang/ThreadLocal;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-lez v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne v1, v3, :cond_2

    .line 20
    .line 21
    cmpg-float v1, v0, v2

    .line 22
    .line 23
    if-gez v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/2addr v2, v1

    .line 34
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sub-float/2addr v1, v0

    .line 39
    const-string/jumbo v2, "\u2026"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    add-float/2addr p2, v1

    .line 47
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-nez p1, :cond_0

    .line 52
    .line 53
    const/4 p1, -0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget-object v1, Landroidx/compose/ui/text/android/style/IndentationFixSpan_androidKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    aget p1, v1, p1

    .line 62
    .line 63
    :goto_0
    if-ne p1, v3, :cond_1

    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    int-to-float p0, p0

    .line 74
    sub-float/2addr p0, p2

    .line 75
    const/high16 p2, 0x40000000    # 2.0f

    .line 76
    .line 77
    div-float/2addr p0, p2

    .line 78
    :goto_1
    add-float/2addr p0, p1

    .line 79
    return p0

    .line 80
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    int-to-float p0, p0

    .line 89
    sub-float/2addr p0, p2

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    return v2
.end method

.method public static final getEllipsizedRightPadding(Landroid/text/Layout;ILandroid/graphics/Paint;)F
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/ui/text/android/TextLayout_androidKt;->SharedTextAndroidCanvas:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    cmpg-float v0, v0, v2

    .line 26
    .line 27
    if-gez v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    add-int/2addr v2, v0

    .line 38
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    sub-float/2addr v2, v0

    .line 47
    const-string/jumbo v0, "\u2026"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    add-float/2addr p2, v2

    .line 55
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    sget-object v1, Landroidx/compose/ui/text/android/style/IndentationFixSpan_androidKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    aget v1, v1, v0

    .line 69
    .line 70
    :goto_0
    const/4 v0, 0x1

    .line 71
    if-ne v1, v0, :cond_1

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    int-to-float v0, v0

    .line 78
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    sub-float/2addr v0, p1

    .line 83
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    int-to-float p0, p0

    .line 88
    sub-float/2addr p0, p2

    .line 89
    const/high16 p1, 0x40000000    # 2.0f

    .line 90
    .line 91
    div-float/2addr p0, p1

    .line 92
    :goto_1
    sub-float/2addr v0, p0

    .line 93
    return v0

    .line 94
    :cond_1
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    int-to-float v0, v0

    .line 99
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    sub-float/2addr v0, p1

    .line 104
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    int-to-float p0, p0

    .line 109
    sub-float/2addr p0, p2

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    const/4 p0, 0x0

    .line 112
    return p0
.end method

.method public static getFingerprintErrorString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x7

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "Unknown error code: "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "BiometricUtils"

    .line 30
    .line 31
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const p1, 0x7f120286

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :pswitch_0
    const p1, 0x7f1202e0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :pswitch_1
    const p1, 0x7f1202e2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :pswitch_2
    const p1, 0x7f1202e3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_1
    :pswitch_3
    const p1, 0x7f1202e1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_2
    const p1, 0x7f1202df

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getOutbox()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 15

    .line 1
    sget-object v0, Lorg/jsoup/helper/Validate;->_outbox:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    const/16 v11, 0x60

    .line 10
    .line 11
    const-string v2, "Filled.Outbox"

    .line 12
    .line 13
    const/high16 v3, 0x41c00000    # 24.0f

    .line 14
    .line 15
    const/high16 v4, 0x41c00000    # 24.0f

    .line 16
    .line 17
    const/high16 v5, 0x41c00000    # 24.0f

    .line 18
    .line 19
    const/high16 v6, 0x41c00000    # 24.0f

    .line 20
    .line 21
    const-wide/16 v7, 0x0

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 25
    .line 26
    .line 27
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 28
    .line 29
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 30
    .line 31
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 32
    .line 33
    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 34
    .line 35
    .line 36
    new-instance v6, Lokhttp3/Headers$Builder;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-direct {v6, v0}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 40
    .line 41
    .line 42
    const/high16 v0, 0x41980000    # 19.0f

    .line 43
    .line 44
    const/high16 v2, 0x40400000    # 3.0f

    .line 45
    .line 46
    invoke-virtual {v6, v0, v2}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 47
    .line 48
    .line 49
    const v4, 0x409fae14    # 4.99f

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v4, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 53
    .line 54
    .line 55
    const v11, -0x40028f5c    # -1.98f

    .line 56
    .line 57
    .line 58
    const/high16 v12, 0x40000000    # 2.0f

    .line 59
    .line 60
    const v7, -0x4071eb85    # -1.11f

    .line 61
    .line 62
    .line 63
    const/4 v8, 0x0

    .line 64
    const v9, -0x40028f5c    # -1.98f

    .line 65
    .line 66
    .line 67
    const v10, 0x3f666666    # 0.9f

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v2, v0}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 74
    .line 75
    .line 76
    const v11, 0x3ffeb852    # 1.99f

    .line 77
    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    const v8, 0x3f8ccccd    # 1.1f

    .line 81
    .line 82
    .line 83
    const v9, 0x3f6147ae    # 0.88f

    .line 84
    .line 85
    .line 86
    const/high16 v10, 0x40000000    # 2.0f

    .line 87
    .line 88
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 89
    .line 90
    .line 91
    const/high16 v5, 0x41a80000    # 21.0f

    .line 92
    .line 93
    invoke-virtual {v6, v0, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 94
    .line 95
    .line 96
    const/high16 v11, 0x40000000    # 2.0f

    .line 97
    .line 98
    const/high16 v12, -0x40000000    # -2.0f

    .line 99
    .line 100
    const v7, 0x3f8ccccd    # 1.1f

    .line 101
    .line 102
    .line 103
    const/4 v8, 0x0

    .line 104
    const/high16 v9, 0x40000000    # 2.0f

    .line 105
    .line 106
    const v10, -0x4099999a    # -0.9f

    .line 107
    .line 108
    .line 109
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 110
    .line 111
    .line 112
    const/high16 v13, 0x40a00000    # 5.0f

    .line 113
    .line 114
    invoke-virtual {v6, v5, v13}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 115
    .line 116
    .line 117
    const/high16 v11, -0x40000000    # -2.0f

    .line 118
    .line 119
    const/4 v7, 0x0

    .line 120
    const v8, -0x40733333    # -1.1f

    .line 121
    .line 122
    .line 123
    const v9, -0x4099999a    # -0.9f

    .line 124
    .line 125
    .line 126
    const/high16 v10, -0x40000000    # -2.0f

    .line 127
    .line 128
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->close()V

    .line 132
    .line 133
    .line 134
    const/high16 v5, 0x41700000    # 15.0f

    .line 135
    .line 136
    invoke-virtual {v6, v0, v5}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 137
    .line 138
    .line 139
    const/high16 v14, -0x3f800000    # -4.0f

    .line 140
    .line 141
    invoke-virtual {v6, v14}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 142
    .line 143
    .line 144
    const/high16 v11, -0x3fc00000    # -3.0f

    .line 145
    .line 146
    const/high16 v12, 0x40400000    # 3.0f

    .line 147
    .line 148
    const v8, 0x3fd47ae1    # 1.66f

    .line 149
    .line 150
    .line 151
    const v9, -0x40533333    # -1.35f

    .line 152
    .line 153
    .line 154
    const/high16 v10, 0x40400000    # 3.0f

    .line 155
    .line 156
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 157
    .line 158
    .line 159
    const v7, -0x40547ae1    # -1.34f

    .line 160
    .line 161
    .line 162
    const/high16 v8, -0x3fc00000    # -3.0f

    .line 163
    .line 164
    invoke-virtual {v6, v8, v7, v8, v8}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6, v4, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, v4, v13}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v0, v13}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 174
    .line 175
    .line 176
    const/high16 v0, 0x41200000    # 10.0f

    .line 177
    .line 178
    invoke-virtual {v6, v0}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->close()V

    .line 182
    .line 183
    .line 184
    const/high16 v0, 0x41000000    # 8.0f

    .line 185
    .line 186
    const/high16 v4, 0x41300000    # 11.0f

    .line 187
    .line 188
    invoke-virtual {v6, v0, v4}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 189
    .line 190
    .line 191
    const/high16 v0, 0x40000000    # 2.0f

    .line 192
    .line 193
    invoke-virtual {v6, v0}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v2}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 197
    .line 198
    .line 199
    const/high16 v2, 0x40800000    # 4.0f

    .line 200
    .line 201
    invoke-virtual {v6, v2}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6, v8}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6, v0}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 208
    .line 209
    .line 210
    invoke-static {v6, v14, v14, v14, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 211
    .line 212
    .line 213
    iget-object v2, v6, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 214
    .line 215
    const/high16 v4, 0x3f800000    # 1.0f

    .line 216
    .line 217
    const/high16 v5, 0x3f800000    # 1.0f

    .line 218
    .line 219
    const/high16 v6, 0x3f800000    # 1.0f

    .line 220
    .line 221
    const/4 v7, 0x2

    .line 222
    const/high16 v8, 0x3f800000    # 1.0f

    .line 223
    .line 224
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    sput-object v0, Lorg/jsoup/helper/Validate;->_outbox:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 232
    .line 233
    return-object v0
.end method

.method public static final getPoolingContainerListenerHolder(Landroid/view/View;)Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;
    .locals 2

    .line 1
    const v0, 0x7f09033e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    .line 13
    .line 14
    invoke-direct {v1}, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object v1
.end method

.method public static isMainThread()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public static isTrue(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance p1, Lorg/jsoup/helper/ValidationException;

    .line 13
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1
.end method

.method public static isTrue(Z)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    .line 5
    .line 6
    const-string v0, "Must be true"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public static minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 79
    check-cast p0, Ljava/lang/Iterable;

    .line 80
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 81
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    move v4, v1

    :cond_1
    if-eqz v4, :cond_0

    .line 82
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Ljava/util/Collection;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Ljava/util/Collection;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    check-cast p0, Ljava/lang/Iterable;

    .line 22
    .line 23
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1
    instance-of v0, p1, Ljava/util/Set;

    .line 29
    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    check-cast p0, Ljava/lang/Iterable;

    .line 33
    .line 34
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v2, p1

    .line 54
    check-cast v2, Ljava/util/Set;

    .line 55
    .line 56
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    return-object v0

    .line 67
    :cond_4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 68
    .line 69
    check-cast p0, Ljava/util/Collection;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 75
    .line 76
    .line 77
    return-object v0
.end method

.method public static varargs mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toCollection([Ljava/lang/Object;Ljava/util/AbstractSet;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final navOptions(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;
    .locals 3

    .line 1
    new-instance v0, Landroidx/navigation/NavOptionsBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/navigation/NavOptionsBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object p0, v0, Landroidx/navigation/NavOptionsBuilder;->builder:Landroidx/navigation/NavOptions$Builder;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Landroidx/navigation/NavOptions$Builder;->singleTop:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Landroidx/navigation/NavOptions$Builder;->restoreState:Z

    .line 15
    .line 16
    iget-object v1, v0, Landroidx/navigation/NavOptionsBuilder;->popUpToRoute:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-boolean v2, v0, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    .line 21
    .line 22
    iget-boolean v0, v0, Landroidx/navigation/NavOptionsBuilder;->saveState:Z

    .line 23
    .line 24
    iput-object v1, p0, Landroidx/navigation/NavOptions$Builder;->popUpToRoute:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    iput v1, p0, Landroidx/navigation/NavOptions$Builder;->popUpToId:I

    .line 28
    .line 29
    iput-boolean v2, p0, Landroidx/navigation/NavOptions$Builder;->popUpToInclusive:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Landroidx/navigation/NavOptions$Builder;->popUpToSaveState:Z

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget v1, v0, Landroidx/navigation/NavOptionsBuilder;->popUpToId:I

    .line 35
    .line 36
    iget-boolean v2, v0, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    .line 37
    .line 38
    iget-boolean v0, v0, Landroidx/navigation/NavOptionsBuilder;->saveState:Z

    .line 39
    .line 40
    iput v1, p0, Landroidx/navigation/NavOptions$Builder;->popUpToId:I

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Landroidx/navigation/NavOptions$Builder;->popUpToRoute:Ljava/lang/String;

    .line 44
    .line 45
    iput-boolean v2, p0, Landroidx/navigation/NavOptions$Builder;->popUpToInclusive:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Landroidx/navigation/NavOptions$Builder;->popUpToSaveState:Z

    .line 48
    .line 49
    :goto_0
    invoke-virtual {p0}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public static notEmpty(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    .line 11
    .line 12
    const-string v0, "String must not be empty"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public static notEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 19
    :cond_0
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method

.method public static notNull(Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    .line 5
    .line 6
    const-string v0, "Object must not be null"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public static final parse(Ljava/io/ByteArrayInputStream;Lcom/fsck/k9/mail/message/MessageHeaderCollector;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1, v1}, Lorg/apache/james/mime4j/stream/MimeConfig;-><init>(III)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lorg/jsoup/internal/SoftPool;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lorg/jsoup/internal/SoftPool;-><init>(Lorg/apache/james/mime4j/stream/MimeConfig;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroidx/work/Configuration$Builder;

    .line 13
    .line 14
    const/16 v2, 0x18

    .line 15
    .line 16
    invoke-direct {v0, v2, p1}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, v1, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    :try_start_0
    invoke-virtual {v1, p0}, Lorg/jsoup/internal/SoftPool;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p0

    .line 27
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 28
    .line 29
    const-string v1, "I/O error parsing headers"

    .line 30
    .line 31
    invoke-direct {v0, v1, p1, p0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :catch_1
    move-exception p0

    .line 36
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 37
    .line 38
    const-string v1, "Error parsing headers"

    .line 39
    .line 40
    invoke-direct {v0, v1, p1, p0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public static plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    instance-of v0, p1, Ljava/util/Collection;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Ljava/util/Collection;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v1, v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    mul-int/lit8 v1, v0, 0x2

    .line 41
    .line 42
    :goto_1
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 49
    .line 50
    .line 51
    check-cast p0, Ljava/util/Collection;

    .line 52
    .line 53
    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 57
    .line 58
    .line 59
    return-object v1
.end method

.method public static plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 61
    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static runOnMain(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/jsoup/helper/Validate;->isMainThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const-string v0, "Unable to post to main thread"

    .line 25
    .line 26
    invoke-static {v0, p0}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static setOf(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public static startsWith([B[B)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_1

    .line 5
    :cond_0
    array-length v1, p0

    .line 6
    array-length v2, p1

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_1
    move v1, v0

    .line 11
    :goto_0
    array-length v2, p1

    .line 12
    if-ge v1, v2, :cond_3

    .line 13
    .line 14
    aget-byte v2, p0, v1

    .line 15
    .line 16
    aget-byte v3, p1, v1

    .line 17
    .line 18
    if-eq v2, v3, :cond_2

    .line 19
    .line 20
    :goto_1
    return v0

    .line 21
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public static final takeMax-impl(Landroidx/collection/MutableIntList;)I
    .locals 10

    .line 1
    iget v0, p0, Landroidx/collection/MutableIntList;->_size:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->get(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    :cond_0
    iget v2, p0, Landroidx/collection/MutableIntList;->_size:I

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->get(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ne v2, v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/collection/MutableIntList;->last()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p0, v0, v2}, Landroidx/collection/MutableIntList;->set(II)V

    .line 23
    .line 24
    .line 25
    iget v2, p0, Landroidx/collection/MutableIntList;->_size:I

    .line 26
    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroidx/collection/MutableIntList;->removeAt(I)V

    .line 30
    .line 31
    .line 32
    iget v2, p0, Landroidx/collection/MutableIntList;->_size:I

    .line 33
    .line 34
    ushr-int/lit8 v3, v2, 0x1

    .line 35
    .line 36
    move v4, v0

    .line 37
    :goto_0
    if-ge v4, v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Landroidx/collection/MutableIntList;->get(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    add-int/lit8 v6, v4, 0x1

    .line 44
    .line 45
    mul-int/lit8 v6, v6, 0x2

    .line 46
    .line 47
    add-int/lit8 v7, v6, -0x1

    .line 48
    .line 49
    invoke-virtual {p0, v7}, Landroidx/collection/MutableIntList;->get(I)I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-ge v6, v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0, v6}, Landroidx/collection/MutableIntList;->get(I)I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-le v9, v8, :cond_1

    .line 60
    .line 61
    if-le v9, v5, :cond_0

    .line 62
    .line 63
    invoke-virtual {p0, v4, v9}, Landroidx/collection/MutableIntList;->set(II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v6, v5}, Landroidx/collection/MutableIntList;->set(II)V

    .line 67
    .line 68
    .line 69
    move v4, v6

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    if-le v8, v5, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0, v4, v8}, Landroidx/collection/MutableIntList;->set(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v7, v5}, Landroidx/collection/MutableIntList;->set(II)V

    .line 77
    .line 78
    .line 79
    move v4, v7

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    return v1
.end method

.method public static final toConnectionSecurity(Lcom/fsck/k9/mail/ConnectionSecurity;)Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-ne p0, v0, :cond_0

    .line 15
    .line 16
    sget-object p0, Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;->TLS:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :cond_1
    sget-object p0, Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;->StartTLS:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    sget-object p0, Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;->None:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 28
    .line 29
    return-object p0
.end method

.method public static final toMailConnectionSecurity(Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;)Lcom/fsck/k9/mail/ConnectionSecurity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-ne p0, v0, :cond_0

    .line 15
    .line 16
    sget-object p0, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :cond_1
    sget-object p0, Lcom/fsck/k9/mail/ConnectionSecurity;->STARTTLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    sget-object p0, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 28
    .line 29
    return-object p0
.end method

.method public static final toMessageItemUi(Lcom/fsck/k9/ui/messagelist/MessageListItem;ZZZLjava/lang/String;Ljava/lang/String;)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 12
    .line 13
    iget-boolean v3, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    sget-object v4, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;->Read:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;

    .line 18
    .line 19
    :goto_0
    move-object v5, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    sget-object v4, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;->Unread:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :goto_1
    iget-object v2, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageUid:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v6}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    move-object v7, v4

    .line 35
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 36
    .line 37
    iget-object v8, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 38
    .line 39
    iget-object v9, v8, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 40
    .line 41
    iget-object v8, v8, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 42
    .line 43
    iget v8, v8, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->color:I

    .line 44
    .line 45
    invoke-static {v8}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 46
    .line 47
    .line 48
    move-result-wide v10

    .line 49
    invoke-direct {v4, v9, v10, v11}, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;-><init>(Lnet/thunderbird/feature/account/AccountId;J)V

    .line 50
    .line 51
    .line 52
    move-object v8, v5

    .line 53
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 54
    .line 55
    iget-object v9, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayAddress:Lcom/fsck/k9/mail/Address;

    .line 56
    .line 57
    if-eqz v9, :cond_1

    .line 58
    .line 59
    iget-object v9, v9, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 60
    .line 61
    if-nez v9, :cond_2

    .line 62
    .line 63
    :cond_1
    const-string v9, ""

    .line 64
    .line 65
    :cond_2
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    iget-object v11, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayName:Ljava/lang/CharSequence;

    .line 70
    .line 71
    const/16 v12, 0x2c

    .line 72
    .line 73
    const/4 v13, 0x6

    .line 74
    const/4 v14, 0x0

    .line 75
    invoke-static {v11, v12, v14, v13}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    const/4 v12, -0x1

    .line 80
    const/4 v13, 0x0

    .line 81
    if-ne v11, v12, :cond_3

    .line 82
    .line 83
    if-nez v3, :cond_3

    .line 84
    .line 85
    new-instance v3, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Bold;

    .line 86
    .line 87
    invoke-direct {v3, v13}, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Bold;-><init>(Ljava/lang/Integer;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v10, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    if-ltz v11, :cond_4

    .line 95
    .line 96
    const v12, 0x7fffffff

    .line 97
    .line 98
    .line 99
    if-gt v11, v12, :cond_4

    .line 100
    .line 101
    if-nez v3, :cond_4

    .line 102
    .line 103
    new-instance v3, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Bold;

    .line 104
    .line 105
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    invoke-direct {v3, v12}, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Bold;-><init>(Ljava/lang/Integer;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    new-instance v3, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Regular;

    .line 116
    .line 117
    invoke-direct {v3, v11}, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Regular;-><init>(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    new-instance v3, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Regular;

    .line 125
    .line 126
    invoke-direct {v3, v14}, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Regular;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-static {v10}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-static {v3}, Lokio/Okio;->toPersistentList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    if-nez p1, :cond_5

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    if-eqz p1, :cond_6

    .line 144
    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    new-instance v13, Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar$Image;

    .line 148
    .line 149
    invoke-direct {v13, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar$Image;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    new-instance v13, Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar$Monogram;

    .line 154
    .line 155
    move-object/from16 v1, p4

    .line 156
    .line 157
    invoke-direct {v13, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar$Monogram;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_3
    iget v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->contactColor:I

    .line 161
    .line 162
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 163
    .line 164
    .line 165
    move-result-wide v10

    .line 166
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 167
    .line 168
    invoke-direct {v1, v10, v11}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 169
    .line 170
    .line 171
    invoke-direct {v5, v9, v3, v13, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;-><init>(Ljava/lang/String;Lkotlinx/collections/immutable/ImmutableList;Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;Landroidx/compose/ui/graphics/Color;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->subject:Ljava/lang/String;

    .line 175
    .line 176
    if-nez v1, :cond_7

    .line 177
    .line 178
    const-string v1, "n/a"

    .line 179
    .line 180
    :cond_7
    move-object v3, v7

    .line 181
    iget-object v7, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->previewText:Ljava/lang/String;

    .line 182
    .line 183
    move-object v9, v8

    .line 184
    iget-object v8, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayMessageDateTime:Ljava/lang/String;

    .line 185
    .line 186
    move-object v10, v9

    .line 187
    iget-boolean v9, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->hasAttachments:Z

    .line 188
    .line 189
    move-object v11, v10

    .line 190
    iget-boolean v10, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 191
    .line 192
    move-object v12, v11

    .line 193
    iget-boolean v11, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isMessageEncrypted:Z

    .line 194
    .line 195
    move-object v13, v12

    .line 196
    iget-boolean v12, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isAnswered:Z

    .line 197
    .line 198
    move-object v14, v13

    .line 199
    iget-boolean v13, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isForwarded:Z

    .line 200
    .line 201
    iget v15, v0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadCount:I

    .line 202
    .line 203
    move-object v0, v6

    .line 204
    move-object v6, v1

    .line 205
    move-object v1, v3

    .line 206
    move-object v3, v0

    .line 207
    move/from16 v16, p3

    .line 208
    .line 209
    move-object v0, v14

    .line 210
    move/from16 v14, p2

    .line 211
    .line 212
    invoke-direct/range {v0 .. v16}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;Ljava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/state/Account;Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZIZ)V

    .line 213
    .line 214
    .line 215
    move-object v10, v0

    .line 216
    return-object v10
.end method

.method public static final toSize-ozmzZPI(J)J
    .locals 6

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v1, p0, v0

    .line 4
    .line 5
    long-to-int v1, v1

    .line 6
    int-to-float v1, v1

    .line 7
    const-wide v2, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long/2addr p0, v2

    .line 13
    long-to-int p0, p0

    .line 14
    int-to-float p0, p0

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    int-to-long v4, p1

    .line 20
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    int-to-long p0, p0

    .line 25
    shl-long v0, v4, v0

    .line 26
    .line 27
    and-long/2addr p0, v2

    .line 28
    or-long/2addr p0, v0

    .line 29
    return-wide p0
.end method

.method public static final toSmtpDefaultPort(Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const-wide/16 v0, 0x24b

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq p0, v2, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    const-wide/16 v0, 0x1d1

    .line 19
    .line 20
    return-wide v0

    .line 21
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 22
    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    :cond_1
    return-wide v0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v0, p0, v0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-wide v2, 0xffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    and-long/2addr p0, v2

    .line 16
    long-to-int p0, p0

    .line 17
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    cmpg-float p1, v1, p1

    .line 22
    .line 23
    const/16 v1, 0x29

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p1, "CornerRadius.circular("

    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {p1}, Landroidx/sqlite/SQLite;->toStringAsFixed(F)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "CornerRadius.elliptical("

    .line 56
    .line 57
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {v0}, Landroidx/sqlite/SQLite;->toStringAsFixed(F)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, ", "

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-static {p0}, Landroidx/sqlite/SQLite;->toStringAsFixed(F)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method


# virtual methods
.method public abstract getCornerPath(Lcom/google/android/material/shape/ShapePath;FF)V
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 0

    .line 1
    return-void
.end method

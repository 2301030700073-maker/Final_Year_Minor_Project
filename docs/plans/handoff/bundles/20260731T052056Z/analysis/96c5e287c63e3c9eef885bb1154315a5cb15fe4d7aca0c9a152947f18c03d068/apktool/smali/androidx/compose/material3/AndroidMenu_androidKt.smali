.class public abstract Landroidx/compose/material3/AndroidMenu_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final DefaultMenuProperties:Landroidx/compose/ui/window/PopupProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/window/PopupProperties;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/window/PopupProperties;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/material3/AndroidMenu_androidKt;->DefaultMenuProperties:Landroidx/compose/ui/window/PopupProperties;

    .line 8
    .line 9
    return-void
.end method

.method public static final DropdownMenu-IlH_yew(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V
    .locals 24

    .line 1
    move-object/from16 v4, p12

    .line 2
    .line 3
    move/from16 v13, p13

    .line 4
    .line 5
    const v0, 0x66dab59f

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v0, v13, 0x6

    .line 12
    .line 13
    move/from16 v7, p0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    :goto_0
    or-int/2addr v0, v13

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v0, v13

    .line 29
    :goto_1
    and-int/lit8 v1, v13, 0x30

    .line 30
    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    move-object/from16 v1, p1

    .line 34
    .line 35
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    const/16 v5, 0x20

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/16 v5, 0x10

    .line 45
    .line 46
    :goto_2
    or-int/2addr v0, v5

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    move-object/from16 v1, p1

    .line 49
    .line 50
    :goto_3
    and-int/lit8 v5, p14, 0x4

    .line 51
    .line 52
    if-eqz v5, :cond_5

    .line 53
    .line 54
    or-int/lit16 v0, v0, 0x180

    .line 55
    .line 56
    :cond_4
    move-object/from16 v6, p2

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_5
    and-int/lit16 v6, v13, 0x180

    .line 60
    .line 61
    if-nez v6, :cond_4

    .line 62
    .line 63
    move-object/from16 v6, p2

    .line 64
    .line 65
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-eqz v8, :cond_6

    .line 70
    .line 71
    const/16 v8, 0x100

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_6
    const/16 v8, 0x80

    .line 75
    .line 76
    :goto_4
    or-int/2addr v0, v8

    .line 77
    :goto_5
    and-int/lit8 v8, p14, 0x8

    .line 78
    .line 79
    const/16 v9, 0x800

    .line 80
    .line 81
    if-eqz v8, :cond_8

    .line 82
    .line 83
    or-int/lit16 v0, v0, 0xc00

    .line 84
    .line 85
    :cond_7
    move-wide/from16 v10, p3

    .line 86
    .line 87
    goto :goto_7

    .line 88
    :cond_8
    and-int/lit16 v10, v13, 0xc00

    .line 89
    .line 90
    if-nez v10, :cond_7

    .line 91
    .line 92
    move-wide/from16 v10, p3

    .line 93
    .line 94
    invoke-virtual {v4, v10, v11}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    if-eqz v12, :cond_9

    .line 99
    .line 100
    move v12, v9

    .line 101
    goto :goto_6

    .line 102
    :cond_9
    const/16 v12, 0x400

    .line 103
    .line 104
    :goto_6
    or-int/2addr v0, v12

    .line 105
    :goto_7
    and-int/lit16 v12, v13, 0x6000

    .line 106
    .line 107
    if-nez v12, :cond_a

    .line 108
    .line 109
    or-int/lit16 v0, v0, 0x2000

    .line 110
    .line 111
    :cond_a
    const/high16 v12, 0x30000

    .line 112
    .line 113
    or-int/2addr v12, v0

    .line 114
    const/high16 v14, 0x180000

    .line 115
    .line 116
    and-int/2addr v14, v13

    .line 117
    if-nez v14, :cond_b

    .line 118
    .line 119
    const/high16 v12, 0xb0000

    .line 120
    .line 121
    or-int/2addr v12, v0

    .line 122
    :cond_b
    const/high16 v0, 0xc00000

    .line 123
    .line 124
    and-int/2addr v0, v13

    .line 125
    move-wide/from16 v14, p8

    .line 126
    .line 127
    if-nez v0, :cond_d

    .line 128
    .line 129
    invoke-virtual {v4, v14, v15}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_c

    .line 134
    .line 135
    const/high16 v0, 0x800000

    .line 136
    .line 137
    goto :goto_8

    .line 138
    :cond_c
    const/high16 v0, 0x400000

    .line 139
    .line 140
    :goto_8
    or-int/2addr v12, v0

    .line 141
    :cond_d
    const/high16 v0, 0x36000000

    .line 142
    .line 143
    or-int/2addr v0, v12

    .line 144
    const v12, 0x12492493

    .line 145
    .line 146
    .line 147
    and-int/2addr v12, v0

    .line 148
    const/16 v16, 0x20

    .line 149
    .line 150
    const v2, 0x12492492

    .line 151
    .line 152
    .line 153
    const/4 v6, 0x0

    .line 154
    const/16 v17, 0x1

    .line 155
    .line 156
    if-ne v12, v2, :cond_e

    .line 157
    .line 158
    move v2, v6

    .line 159
    goto :goto_9

    .line 160
    :cond_e
    move/from16 v2, v17

    .line 161
    .line 162
    :goto_9
    and-int/lit8 v12, v0, 0x1

    .line 163
    .line 164
    invoke-virtual {v4, v12, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_1a

    .line 169
    .line 170
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 171
    .line 172
    .line 173
    and-int/lit8 v2, v13, 0x1

    .line 174
    .line 175
    const v12, -0x38e001

    .line 176
    .line 177
    .line 178
    if-eqz v2, :cond_10

    .line 179
    .line 180
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_f

    .line 185
    .line 186
    goto :goto_a

    .line 187
    :cond_f
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 188
    .line 189
    .line 190
    and-int/2addr v0, v12

    .line 191
    move-object/from16 v2, p2

    .line 192
    .line 193
    move-object/from16 v18, p5

    .line 194
    .line 195
    move-object/from16 v13, p6

    .line 196
    .line 197
    move-object/from16 v19, p7

    .line 198
    .line 199
    move/from16 v22, p10

    .line 200
    .line 201
    goto :goto_d

    .line 202
    :cond_10
    :goto_a
    if-eqz v5, :cond_11

    .line 203
    .line 204
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 205
    .line 206
    goto :goto_b

    .line 207
    :cond_11
    move-object/from16 v2, p2

    .line 208
    .line 209
    :goto_b
    if-eqz v8, :cond_12

    .line 210
    .line 211
    const/4 v5, 0x0

    .line 212
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    int-to-long v10, v8

    .line 217
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    move v8, v12

    .line 222
    int-to-long v12, v5

    .line 223
    shl-long v10, v10, v16

    .line 224
    .line 225
    const-wide v18, 0xffffffffL

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    and-long v12, v12, v18

    .line 231
    .line 232
    or-long/2addr v10, v12

    .line 233
    goto :goto_c

    .line 234
    :cond_12
    move v8, v12

    .line 235
    :goto_c
    invoke-static {v4}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/ScrollState;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    sget v12, Landroidx/compose/material3/MenuDefaults;->ShadowElevation:F

    .line 240
    .line 241
    sget-object v12, Landroidx/compose/material3/tokens/MenuTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 242
    .line 243
    invoke-static {v12, v4}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/Shape;

    .line 244
    .line 245
    .line 246
    move-result-object v12

    .line 247
    and-int/2addr v0, v8

    .line 248
    sget v8, Landroidx/compose/material3/MenuDefaults;->ShadowElevation:F

    .line 249
    .line 250
    sget-object v13, Landroidx/compose/material3/AndroidMenu_androidKt;->DefaultMenuProperties:Landroidx/compose/ui/window/PopupProperties;

    .line 251
    .line 252
    move-object/from16 v18, v5

    .line 253
    .line 254
    move/from16 v22, v8

    .line 255
    .line 256
    move-object/from16 v19, v12

    .line 257
    .line 258
    :goto_d
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 266
    .line 267
    if-ne v5, v8, :cond_13

    .line 268
    .line 269
    new-instance v5, Landroidx/compose/animation/core/MutableTransitionState;

    .line 270
    .line 271
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 272
    .line 273
    invoke-direct {v5, v12}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_13
    check-cast v5, Landroidx/compose/animation/core/MutableTransitionState;

    .line 280
    .line 281
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 282
    .line 283
    .line 284
    move-result-object v12

    .line 285
    iget-object v3, v5, Landroidx/compose/animation/core/MutableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 286
    .line 287
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    iget-object v3, v5, Landroidx/compose/animation/core/MutableTransitionState;->currentState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 291
    .line 292
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    check-cast v3, Ljava/lang/Boolean;

    .line 297
    .line 298
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    if-nez v3, :cond_15

    .line 303
    .line 304
    iget-object v3, v5, Landroidx/compose/animation/core/MutableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 305
    .line 306
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    check-cast v3, Ljava/lang/Boolean;

    .line 311
    .line 312
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-eqz v3, :cond_14

    .line 317
    .line 318
    goto :goto_e

    .line 319
    :cond_14
    const v0, 0x458e7b43

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 326
    .line 327
    .line 328
    move-object v15, v2

    .line 329
    move-object v2, v13

    .line 330
    goto/16 :goto_10

    .line 331
    .line 332
    :cond_15
    :goto_e
    const v3, 0x457e4eb4

    .line 333
    .line 334
    .line 335
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    if-ne v3, v8, :cond_16

    .line 343
    .line 344
    sget-wide v6, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    .line 345
    .line 346
    new-instance v3, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 347
    .line 348
    invoke-direct {v3, v6, v7}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 349
    .line 350
    .line 351
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    :cond_16
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 359
    .line 360
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 361
    .line 362
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 367
    .line 368
    and-int/lit16 v7, v0, 0x1c00

    .line 369
    .line 370
    if-ne v7, v9, :cond_17

    .line 371
    .line 372
    goto :goto_f

    .line 373
    :cond_17
    const/16 v17, 0x0

    .line 374
    .line 375
    :goto_f
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v7

    .line 379
    or-int v7, v17, v7

    .line 380
    .line 381
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v9

    .line 385
    if-nez v7, :cond_18

    .line 386
    .line 387
    if-ne v9, v8, :cond_19

    .line 388
    .line 389
    :cond_18
    new-instance v9, Landroidx/compose/material3/internal/DropdownMenuPositionProvider;

    .line 390
    .line 391
    new-instance v7, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 392
    .line 393
    const/16 v8, 0x10

    .line 394
    .line 395
    invoke-direct {v7, v8, v3}, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    invoke-direct {v9, v10, v11, v6, v7}, Landroidx/compose/material3/internal/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    :cond_19
    check-cast v9, Landroidx/compose/material3/internal/DropdownMenuPositionProvider;

    .line 405
    .line 406
    new-instance v14, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;

    .line 407
    .line 408
    move-wide/from16 v20, p8

    .line 409
    .line 410
    move-object/from16 v23, p11

    .line 411
    .line 412
    move-object v15, v2

    .line 413
    move-object/from16 v17, v3

    .line 414
    .line 415
    move-object/from16 v16, v5

    .line 416
    .line 417
    invoke-direct/range {v14 .. v23}, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 418
    .line 419
    .line 420
    const v2, -0x36afd328    # -852685.5f

    .line 421
    .line 422
    .line 423
    invoke-static {v2, v14, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    and-int/lit8 v2, v0, 0x70

    .line 428
    .line 429
    or-int/lit16 v2, v2, 0xc00

    .line 430
    .line 431
    shr-int/lit8 v0, v0, 0x9

    .line 432
    .line 433
    and-int/lit16 v0, v0, 0x380

    .line 434
    .line 435
    or-int v5, v2, v0

    .line 436
    .line 437
    const/4 v6, 0x0

    .line 438
    move-object v0, v9

    .line 439
    move-object v2, v13

    .line 440
    const/4 v12, 0x0

    .line 441
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 445
    .line 446
    .line 447
    :goto_10
    move-object v7, v2

    .line 448
    move-wide v4, v10

    .line 449
    move-object v3, v15

    .line 450
    move-object/from16 v6, v18

    .line 451
    .line 452
    move-object/from16 v8, v19

    .line 453
    .line 454
    move/from16 v11, v22

    .line 455
    .line 456
    goto :goto_11

    .line 457
    :cond_1a
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 458
    .line 459
    .line 460
    move-object/from16 v3, p2

    .line 461
    .line 462
    move-object/from16 v6, p5

    .line 463
    .line 464
    move-object/from16 v7, p6

    .line 465
    .line 466
    move-object/from16 v8, p7

    .line 467
    .line 468
    move-wide v4, v10

    .line 469
    move/from16 v11, p10

    .line 470
    .line 471
    :goto_11
    invoke-virtual/range {p12 .. p12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 472
    .line 473
    .line 474
    move-result-object v15

    .line 475
    if-eqz v15, :cond_1b

    .line 476
    .line 477
    new-instance v0, Landroidx/compose/material3/AndroidMenu_androidKt$$ExternalSyntheticLambda1;

    .line 478
    .line 479
    move/from16 v1, p0

    .line 480
    .line 481
    move-object/from16 v2, p1

    .line 482
    .line 483
    move-wide/from16 v9, p8

    .line 484
    .line 485
    move-object/from16 v12, p11

    .line 486
    .line 487
    move/from16 v13, p13

    .line 488
    .line 489
    move/from16 v14, p14

    .line 490
    .line 491
    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/AndroidMenu_androidKt$$ExternalSyntheticLambda1;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 492
    .line 493
    .line 494
    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 495
    .line 496
    :cond_1b
    return-void
.end method

.method public static final DropdownMenuItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V
    .locals 28

    .line 1
    move-object/from16 v8, p8

    .line 2
    .line 3
    move/from16 v10, p9

    .line 4
    .line 5
    move/from16 v11, p10

    .line 6
    .line 7
    const v0, -0x1fc44f8d

    .line 8
    .line 9
    .line 10
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x20

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0x10

    .line 25
    .line 26
    :goto_0
    or-int/2addr v0, v10

    .line 27
    or-int/lit16 v2, v0, 0x180

    .line 28
    .line 29
    and-int/lit8 v3, v11, 0x8

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    or-int/lit16 v2, v0, 0xd80

    .line 34
    .line 35
    :cond_1
    move-object/from16 v0, p3

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    and-int/lit16 v0, v10, 0xc00

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    move-object/from16 v0, p3

    .line 43
    .line 44
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    const/16 v4, 0x800

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/16 v4, 0x400

    .line 54
    .line 55
    :goto_1
    or-int/2addr v2, v4

    .line 56
    :goto_2
    and-int/lit8 v4, v11, 0x10

    .line 57
    .line 58
    if-eqz v4, :cond_5

    .line 59
    .line 60
    or-int/lit16 v2, v2, 0x6000

    .line 61
    .line 62
    :cond_4
    move-object/from16 v5, p4

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_5
    and-int/lit16 v5, v10, 0x6000

    .line 66
    .line 67
    if-nez v5, :cond_4

    .line 68
    .line 69
    move-object/from16 v5, p4

    .line 70
    .line 71
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_6

    .line 76
    .line 77
    const/16 v6, 0x4000

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_6
    const/16 v6, 0x2000

    .line 81
    .line 82
    :goto_3
    or-int/2addr v2, v6

    .line 83
    :goto_4
    const/high16 v6, 0xb0000

    .line 84
    .line 85
    or-int/2addr v6, v2

    .line 86
    and-int/lit16 v7, v11, 0x80

    .line 87
    .line 88
    if-eqz v7, :cond_8

    .line 89
    .line 90
    const/high16 v6, 0xcb0000

    .line 91
    .line 92
    or-int/2addr v6, v2

    .line 93
    :cond_7
    move-object/from16 v2, p7

    .line 94
    .line 95
    goto :goto_6

    .line 96
    :cond_8
    const/high16 v2, 0xc00000

    .line 97
    .line 98
    and-int/2addr v2, v10

    .line 99
    if-nez v2, :cond_7

    .line 100
    .line 101
    move-object/from16 v2, p7

    .line 102
    .line 103
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-eqz v9, :cond_9

    .line 108
    .line 109
    const/high16 v9, 0x800000

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_9
    const/high16 v9, 0x400000

    .line 113
    .line 114
    :goto_5
    or-int/2addr v6, v9

    .line 115
    :goto_6
    const/high16 v9, 0x6000000

    .line 116
    .line 117
    or-int/2addr v6, v9

    .line 118
    const v9, 0x2492493

    .line 119
    .line 120
    .line 121
    and-int/2addr v9, v6

    .line 122
    const v12, 0x2492492

    .line 123
    .line 124
    .line 125
    if-eq v9, v12, :cond_a

    .line 126
    .line 127
    const/4 v9, 0x1

    .line 128
    goto :goto_7

    .line 129
    :cond_a
    const/4 v9, 0x0

    .line 130
    :goto_7
    and-int/lit8 v12, v6, 0x1

    .line 131
    .line 132
    invoke-virtual {v8, v12, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-eqz v9, :cond_11

    .line 137
    .line 138
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 139
    .line 140
    .line 141
    and-int/lit8 v9, v10, 0x1

    .line 142
    .line 143
    const v12, -0x380001

    .line 144
    .line 145
    .line 146
    if-eqz v9, :cond_c

    .line 147
    .line 148
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    if-eqz v9, :cond_b

    .line 153
    .line 154
    goto :goto_8

    .line 155
    :cond_b
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 156
    .line 157
    .line 158
    and-int v3, v6, v12

    .line 159
    .line 160
    move v4, v3

    .line 161
    move-object v3, v0

    .line 162
    move v0, v4

    .line 163
    move-object/from16 v6, p6

    .line 164
    .line 165
    move-object v7, v2

    .line 166
    move-object v4, v5

    .line 167
    move-object/from16 v2, p2

    .line 168
    .line 169
    move/from16 v5, p5

    .line 170
    .line 171
    goto/16 :goto_a

    .line 172
    .line 173
    :cond_c
    :goto_8
    const/4 v9, 0x0

    .line 174
    if-eqz v3, :cond_d

    .line 175
    .line 176
    move-object v0, v9

    .line 177
    :cond_d
    if-eqz v4, :cond_e

    .line 178
    .line 179
    move-object v5, v9

    .line 180
    :cond_e
    sget v3, Landroidx/compose/material3/MenuDefaults;->ShadowElevation:F

    .line 181
    .line 182
    sget-object v3, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 183
    .line 184
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    check-cast v3, Landroidx/compose/material3/ColorScheme;

    .line 189
    .line 190
    iget-object v4, v3, Landroidx/compose/material3/ColorScheme;->defaultMenuItemColorsCached:Landroidx/compose/material3/MenuItemColors;

    .line 191
    .line 192
    if-nez v4, :cond_f

    .line 193
    .line 194
    new-instance v14, Landroidx/compose/material3/MenuItemColors;

    .line 195
    .line 196
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 197
    .line 198
    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 199
    .line 200
    .line 201
    move-result-wide v15

    .line 202
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 203
    .line 204
    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 205
    .line 206
    .line 207
    move-result-wide v17

    .line 208
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 209
    .line 210
    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 211
    .line 212
    .line 213
    move-result-wide v19

    .line 214
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 215
    .line 216
    move/from16 v27, v12

    .line 217
    .line 218
    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 219
    .line 220
    .line 221
    move-result-wide v12

    .line 222
    sget v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLabelTextOpacity:F

    .line 223
    .line 224
    invoke-static {v4, v12, v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 225
    .line 226
    .line 227
    move-result-wide v21

    .line 228
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 229
    .line 230
    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 231
    .line 232
    .line 233
    move-result-wide v12

    .line 234
    sget v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLeadingIconOpacity:F

    .line 235
    .line 236
    invoke-static {v4, v12, v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 237
    .line 238
    .line 239
    move-result-wide v23

    .line 240
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 241
    .line 242
    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 243
    .line 244
    .line 245
    move-result-wide v12

    .line 246
    sget v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledTrailingIconOpacity:F

    .line 247
    .line 248
    invoke-static {v4, v12, v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 249
    .line 250
    .line 251
    move-result-wide v25

    .line 252
    invoke-direct/range {v14 .. v26}, Landroidx/compose/material3/MenuItemColors;-><init>(JJJJJJ)V

    .line 253
    .line 254
    .line 255
    iput-object v14, v3, Landroidx/compose/material3/ColorScheme;->defaultMenuItemColorsCached:Landroidx/compose/material3/MenuItemColors;

    .line 256
    .line 257
    goto :goto_9

    .line 258
    :cond_f
    move/from16 v27, v12

    .line 259
    .line 260
    move-object v14, v4

    .line 261
    :goto_9
    and-int v3, v6, v27

    .line 262
    .line 263
    if-eqz v7, :cond_10

    .line 264
    .line 265
    sget-object v2, Landroidx/compose/material3/MenuDefaults;->DropdownMenuItemContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 266
    .line 267
    :cond_10
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 268
    .line 269
    move v6, v3

    .line 270
    move-object v3, v0

    .line 271
    move v0, v6

    .line 272
    move-object v7, v2

    .line 273
    move-object v2, v4

    .line 274
    move-object v4, v5

    .line 275
    move-object v6, v14

    .line 276
    const/4 v5, 0x1

    .line 277
    :goto_a
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 278
    .line 279
    .line 280
    const v9, 0xffffffe

    .line 281
    .line 282
    .line 283
    and-int/2addr v9, v0

    .line 284
    move-object/from16 v0, p0

    .line 285
    .line 286
    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/CardKt;->DropdownMenuItemContent(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;I)V

    .line 287
    .line 288
    .line 289
    move-object v8, v7

    .line 290
    move-object v7, v6

    .line 291
    move v6, v5

    .line 292
    move-object v5, v4

    .line 293
    move-object v4, v3

    .line 294
    move-object v3, v2

    .line 295
    goto :goto_b

    .line 296
    :cond_11
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 297
    .line 298
    .line 299
    move-object/from16 v3, p2

    .line 300
    .line 301
    move/from16 v6, p5

    .line 302
    .line 303
    move-object/from16 v7, p6

    .line 304
    .line 305
    move-object v4, v0

    .line 306
    move-object v8, v2

    .line 307
    :goto_b
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 308
    .line 309
    .line 310
    move-result-object v12

    .line 311
    if-eqz v12, :cond_12

    .line 312
    .line 313
    new-instance v0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda1;

    .line 314
    .line 315
    move-object/from16 v1, p0

    .line 316
    .line 317
    move-object/from16 v2, p1

    .line 318
    .line 319
    move v9, v10

    .line 320
    move v10, v11

    .line 321
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;II)V

    .line 322
    .line 323
    .line 324
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 325
    .line 326
    :cond_12
    return-void
.end method

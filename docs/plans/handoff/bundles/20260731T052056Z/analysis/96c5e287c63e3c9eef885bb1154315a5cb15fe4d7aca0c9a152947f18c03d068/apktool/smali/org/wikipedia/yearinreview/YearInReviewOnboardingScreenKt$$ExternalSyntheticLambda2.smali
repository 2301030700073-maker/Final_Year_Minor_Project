.class public final synthetic Lorg/wikipedia/yearinreview/YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const v1, 0x7f1207da

    .line 6
    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    const v3, 0x7f0802e2

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x3

    .line 15
    const/16 v6, 0x12

    .line 16
    .line 17
    const/4 v7, 0x2

    .line 18
    const/4 v8, 0x4

    .line 19
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 20
    .line 21
    const/16 v10, 0x10

    .line 22
    .line 23
    const/4 v11, 0x1

    .line 24
    const/4 v12, 0x0

    .line 25
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    packed-switch v0, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    move-object/from16 v0, p1

    .line 31
    .line 32
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 33
    .line 34
    move-object/from16 v6, p2

    .line 35
    .line 36
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 37
    .line 38
    move-object/from16 v1, p3

    .line 39
    .line 40
    check-cast v1, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    and-int/lit8 v0, v1, 0x11

    .line 50
    .line 51
    if-eq v0, v10, :cond_0

    .line 52
    .line 53
    move v0, v11

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v0, v12

    .line 56
    :goto_0
    and-int/2addr v1, v11

    .line 57
    invoke-virtual {v6, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    const/high16 v0, 0x41a00000    # 20.0f

    .line 64
    .line 65
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 66
    .line 67
    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const v0, 0x7f080175

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v12, v6}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    sget-wide v16, Landroidx/compose/ui/graphics/Color;->White:J

    .line 79
    .line 80
    const/16 v7, 0xdb8

    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    const/4 v2, 0x0

    .line 84
    move-wide/from16 v4, v16

    .line 85
    .line 86
    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 87
    .line 88
    .line 89
    const/16 v18, 0x0

    .line 90
    .line 91
    const/16 v19, 0xe

    .line 92
    .line 93
    const/high16 v15, 0x40c00000    # 6.0f

    .line 94
    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    const/16 v17, 0x0

    .line 98
    .line 99
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 100
    .line 101
    .line 102
    move-result-object v15

    .line 103
    const v0, 0x7f120a9d

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v6}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 111
    .line 112
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 117
    .line 118
    iget-object v0, v0, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 119
    .line 120
    const/16 v36, 0x0

    .line 121
    .line 122
    const v37, 0x1fff8

    .line 123
    .line 124
    .line 125
    const/16 v18, 0x0

    .line 126
    .line 127
    const-wide/16 v19, 0x0

    .line 128
    .line 129
    const/16 v21, 0x0

    .line 130
    .line 131
    const/16 v22, 0x0

    .line 132
    .line 133
    const-wide/16 v23, 0x0

    .line 134
    .line 135
    const/16 v25, 0x0

    .line 136
    .line 137
    const-wide/16 v26, 0x0

    .line 138
    .line 139
    const/16 v28, 0x0

    .line 140
    .line 141
    const/16 v29, 0x0

    .line 142
    .line 143
    const/16 v30, 0x0

    .line 144
    .line 145
    const/16 v31, 0x0

    .line 146
    .line 147
    const/16 v32, 0x0

    .line 148
    .line 149
    const/16 v35, 0x1b0

    .line 150
    .line 151
    move-object/from16 v33, v0

    .line 152
    .line 153
    move-wide/from16 v16, v4

    .line 154
    .line 155
    move-object/from16 v34, v6

    .line 156
    .line 157
    invoke-static/range {v14 .. v37}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 162
    .line 163
    .line 164
    :goto_1
    return-object v13

    .line 165
    :pswitch_0
    move-object/from16 v0, p1

    .line 166
    .line 167
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 168
    .line 169
    move-object/from16 v1, p2

    .line 170
    .line 171
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 172
    .line 173
    move-object/from16 v2, p3

    .line 174
    .line 175
    check-cast v2, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    and-int/lit8 v0, v2, 0x11

    .line 185
    .line 186
    if-eq v0, v10, :cond_2

    .line 187
    .line 188
    move v12, v11

    .line 189
    :cond_2
    and-int/lit8 v0, v2, 0x1

    .line 190
    .line 191
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_3

    .line 196
    .line 197
    const v0, 0x7f120ab5

    .line 198
    .line 199
    .line 200
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v14

    .line 204
    sget-wide v16, Lorg/wikipedia/compose/ComposeColors;->White:J

    .line 205
    .line 206
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 207
    .line 208
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 213
    .line 214
    iget-object v0, v0, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 215
    .line 216
    const/16 v36, 0x0

    .line 217
    .line 218
    const v37, 0x1fffa

    .line 219
    .line 220
    .line 221
    const/4 v15, 0x0

    .line 222
    const/16 v18, 0x0

    .line 223
    .line 224
    const-wide/16 v19, 0x0

    .line 225
    .line 226
    const/16 v21, 0x0

    .line 227
    .line 228
    const/16 v22, 0x0

    .line 229
    .line 230
    const-wide/16 v23, 0x0

    .line 231
    .line 232
    const/16 v25, 0x0

    .line 233
    .line 234
    const-wide/16 v26, 0x0

    .line 235
    .line 236
    const/16 v28, 0x0

    .line 237
    .line 238
    const/16 v29, 0x0

    .line 239
    .line 240
    const/16 v30, 0x0

    .line 241
    .line 242
    const/16 v31, 0x0

    .line 243
    .line 244
    const/16 v32, 0x0

    .line 245
    .line 246
    const/16 v35, 0x180

    .line 247
    .line 248
    move-object/from16 v33, v0

    .line 249
    .line 250
    move-object/from16 v34, v1

    .line 251
    .line 252
    invoke-static/range {v14 .. v37}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_3
    move-object/from16 v34, v1

    .line 257
    .line 258
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 259
    .line 260
    .line 261
    :goto_2
    return-object v13

    .line 262
    :pswitch_1
    move-object/from16 v0, p1

    .line 263
    .line 264
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 265
    .line 266
    move-object/from16 v1, p2

    .line 267
    .line 268
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 269
    .line 270
    move-object/from16 v2, p3

    .line 271
    .line 272
    check-cast v2, Ljava/lang/Integer;

    .line 273
    .line 274
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    and-int/lit8 v0, v2, 0x11

    .line 282
    .line 283
    if-eq v0, v10, :cond_4

    .line 284
    .line 285
    move v12, v11

    .line 286
    :cond_4
    and-int/lit8 v0, v2, 0x1

    .line 287
    .line 288
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_5

    .line 293
    .line 294
    const v0, 0x7f120a9e

    .line 295
    .line 296
    .line 297
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v14

    .line 301
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 302
    .line 303
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 308
    .line 309
    iget-object v0, v0, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 310
    .line 311
    const/16 v36, 0x0

    .line 312
    .line 313
    const v37, 0x1fffe

    .line 314
    .line 315
    .line 316
    const/4 v15, 0x0

    .line 317
    const-wide/16 v16, 0x0

    .line 318
    .line 319
    const/16 v18, 0x0

    .line 320
    .line 321
    const-wide/16 v19, 0x0

    .line 322
    .line 323
    const/16 v21, 0x0

    .line 324
    .line 325
    const/16 v22, 0x0

    .line 326
    .line 327
    const-wide/16 v23, 0x0

    .line 328
    .line 329
    const/16 v25, 0x0

    .line 330
    .line 331
    const-wide/16 v26, 0x0

    .line 332
    .line 333
    const/16 v28, 0x0

    .line 334
    .line 335
    const/16 v29, 0x0

    .line 336
    .line 337
    const/16 v30, 0x0

    .line 338
    .line 339
    const/16 v31, 0x0

    .line 340
    .line 341
    const/16 v32, 0x0

    .line 342
    .line 343
    const/16 v35, 0x0

    .line 344
    .line 345
    move-object/from16 v33, v0

    .line 346
    .line 347
    move-object/from16 v34, v1

    .line 348
    .line 349
    invoke-static/range {v14 .. v37}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 350
    .line 351
    .line 352
    goto :goto_3

    .line 353
    :cond_5
    move-object/from16 v34, v1

    .line 354
    .line 355
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 356
    .line 357
    .line 358
    :goto_3
    return-object v13

    .line 359
    :pswitch_2
    move-object/from16 v0, p1

    .line 360
    .line 361
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 362
    .line 363
    move-object/from16 v1, p2

    .line 364
    .line 365
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 366
    .line 367
    move-object/from16 v2, p3

    .line 368
    .line 369
    check-cast v2, Ljava/lang/Integer;

    .line 370
    .line 371
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    and-int/lit8 v0, v2, 0x11

    .line 379
    .line 380
    if-eq v0, v10, :cond_6

    .line 381
    .line 382
    move v12, v11

    .line 383
    :cond_6
    and-int/lit8 v0, v2, 0x1

    .line 384
    .line 385
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-eqz v0, :cond_7

    .line 390
    .line 391
    const v0, 0x7f120ab8

    .line 392
    .line 393
    .line 394
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v14

    .line 398
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 399
    .line 400
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 405
    .line 406
    iget-object v0, v0, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 407
    .line 408
    const/16 v36, 0x0

    .line 409
    .line 410
    const v37, 0x1fffe

    .line 411
    .line 412
    .line 413
    const/4 v15, 0x0

    .line 414
    const-wide/16 v16, 0x0

    .line 415
    .line 416
    const/16 v18, 0x0

    .line 417
    .line 418
    const-wide/16 v19, 0x0

    .line 419
    .line 420
    const/16 v21, 0x0

    .line 421
    .line 422
    const/16 v22, 0x0

    .line 423
    .line 424
    const-wide/16 v23, 0x0

    .line 425
    .line 426
    const/16 v25, 0x0

    .line 427
    .line 428
    const-wide/16 v26, 0x0

    .line 429
    .line 430
    const/16 v28, 0x0

    .line 431
    .line 432
    const/16 v29, 0x0

    .line 433
    .line 434
    const/16 v30, 0x0

    .line 435
    .line 436
    const/16 v31, 0x0

    .line 437
    .line 438
    const/16 v32, 0x0

    .line 439
    .line 440
    const/16 v35, 0x0

    .line 441
    .line 442
    move-object/from16 v33, v0

    .line 443
    .line 444
    move-object/from16 v34, v1

    .line 445
    .line 446
    invoke-static/range {v14 .. v37}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 447
    .line 448
    .line 449
    goto :goto_4

    .line 450
    :cond_7
    move-object/from16 v34, v1

    .line 451
    .line 452
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 453
    .line 454
    .line 455
    :goto_4
    return-object v13

    .line 456
    :pswitch_3
    move-object/from16 v0, p1

    .line 457
    .line 458
    check-cast v0, Landroidx/glance/layout/RowScopeImplInstance;

    .line 459
    .line 460
    move-object/from16 v5, p2

    .line 461
    .line 462
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 463
    .line 464
    move-object/from16 v1, p3

    .line 465
    .line 466
    check-cast v1, Ljava/lang/Integer;

    .line 467
    .line 468
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    new-instance v1, Landroidx/glance/AndroidResourceImageProvider;

    .line 475
    .line 476
    const v0, 0x7f080211

    .line 477
    .line 478
    .line 479
    invoke-direct {v1, v0}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 480
    .line 481
    .line 482
    const/high16 v0, 0x42100000    # 36.0f

    .line 483
    .line 484
    invoke-static {v0}, Landroidx/compose/ui/unit/DpKt;->size-3ABfNKs(F)Landroidx/glance/GlanceModifier;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    const/16 v6, 0x30

    .line 489
    .line 490
    const/16 v7, 0x18

    .line 491
    .line 492
    const/4 v3, 0x0

    .line 493
    const/4 v4, 0x0

    .line 494
    invoke-static/range {v1 .. v7}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 495
    .line 496
    .line 497
    return-object v13

    .line 498
    :pswitch_4
    move-object/from16 v0, p1

    .line 499
    .line 500
    check-cast v0, Landroidx/glance/appwidget/lazy/LazyListKt$applyListScope$1$1$2$1;

    .line 501
    .line 502
    move-object/from16 v1, p2

    .line 503
    .line 504
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 505
    .line 506
    move-object/from16 v2, p3

    .line 507
    .line 508
    check-cast v2, Ljava/lang/Integer;

    .line 509
    .line 510
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    .line 515
    .line 516
    new-instance v0, Landroidx/glance/layout/HeightModifier;

    .line 517
    .line 518
    new-instance v2, Landroidx/glance/unit/Dimension$Dp;

    .line 519
    .line 520
    const/high16 v3, 0x41000000    # 8.0f

    .line 521
    .line 522
    invoke-direct {v2, v3}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 523
    .line 524
    .line 525
    invoke-direct {v0, v2}, Landroidx/glance/layout/HeightModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 526
    .line 527
    .line 528
    invoke-static {v0, v1, v12}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 529
    .line 530
    .line 531
    return-object v13

    .line 532
    :pswitch_5
    move-object/from16 v0, p1

    .line 533
    .line 534
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .line 535
    .line 536
    move-object/from16 v1, p2

    .line 537
    .line 538
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 539
    .line 540
    move-object/from16 v5, p3

    .line 541
    .line 542
    check-cast v5, Ljava/lang/Integer;

    .line 543
    .line 544
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 545
    .line 546
    .line 547
    move-result v5

    .line 548
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    .line 550
    .line 551
    and-int/lit8 v10, v5, 0x6

    .line 552
    .line 553
    if-nez v10, :cond_9

    .line 554
    .line 555
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v10

    .line 559
    if-eqz v10, :cond_8

    .line 560
    .line 561
    move v7, v8

    .line 562
    :cond_8
    or-int/2addr v5, v7

    .line 563
    :cond_9
    and-int/lit8 v7, v5, 0x13

    .line 564
    .line 565
    if-eq v7, v6, :cond_a

    .line 566
    .line 567
    move v6, v11

    .line 568
    goto :goto_5

    .line 569
    :cond_a
    move v6, v12

    .line 570
    :goto_5
    and-int/2addr v5, v11

    .line 571
    invoke-virtual {v1, v5, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 572
    .line 573
    .line 574
    move-result v5

    .line 575
    if-eqz v5, :cond_c

    .line 576
    .line 577
    sget-object v16, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 578
    .line 579
    invoke-static {v3, v12, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 580
    .line 581
    .line 582
    move-result-object v14

    .line 583
    const/16 v22, 0x61b8

    .line 584
    .line 585
    const/16 v23, 0x68

    .line 586
    .line 587
    const/4 v15, 0x0

    .line 588
    const/16 v17, 0x0

    .line 589
    .line 590
    sget-object v18, Landroidx/compose/ui/layout/ContentScale$Companion;->FillWidth:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 591
    .line 592
    const/16 v19, 0x0

    .line 593
    .line 594
    const/16 v20, 0x0

    .line 595
    .line 596
    move-object/from16 v21, v1

    .line 597
    .line 598
    invoke-static/range {v14 .. v23}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 599
    .line 600
    .line 601
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 602
    .line 603
    invoke-interface {v0, v9, v3}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    invoke-static {v0, v4, v2, v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    const/high16 v2, 0x41400000    # 12.0f

    .line 612
    .line 613
    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    sget-object v5, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 618
    .line 619
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v5

    .line 623
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 624
    .line 625
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->overlayColor:J

    .line 626
    .line 627
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 628
    .line 629
    .line 630
    move-result v4

    .line 631
    int-to-long v7, v4

    .line 632
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 633
    .line 634
    .line 635
    move-result v2

    .line 636
    int-to-long v9, v2

    .line 637
    const/16 v2, 0x20

    .line 638
    .line 639
    shl-long/2addr v7, v2

    .line 640
    const-wide v14, 0xffffffffL

    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    and-long/2addr v9, v14

    .line 646
    or-long v15, v7, v9

    .line 647
    .line 648
    new-instance v14, Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 649
    .line 650
    const-wide/16 v7, 0x10

    .line 651
    .line 652
    cmp-long v2, v5, v7

    .line 653
    .line 654
    if-eqz v2, :cond_b

    .line 655
    .line 656
    :goto_6
    move-wide/from16 v17, v5

    .line 657
    .line 658
    goto :goto_7

    .line 659
    :cond_b
    sget-wide v5, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 660
    .line 661
    goto :goto_6

    .line 662
    :goto_7
    const/high16 v19, 0x3f800000    # 1.0f

    .line 663
    .line 664
    invoke-direct/range {v14 .. v19}, Landroidx/compose/ui/graphics/shadow/Shadow;-><init>(JJF)V

    .line 665
    .line 666
    .line 667
    new-instance v2, Landroidx/compose/ui/draw/SimpleDropShadowElement;

    .line 668
    .line 669
    invoke-direct {v2, v3, v14}, Landroidx/compose/ui/draw/SimpleDropShadowElement;-><init>(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/ui/graphics/shadow/Shadow;)V

    .line 670
    .line 671
    .line 672
    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 673
    .line 674
    .line 675
    move-result-object v16

    .line 676
    const v0, 0x7f0802e4

    .line 677
    .line 678
    .line 679
    invoke-static {v0, v12, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 680
    .line 681
    .line 682
    move-result-object v14

    .line 683
    const/16 v22, 0x38

    .line 684
    .line 685
    const/16 v23, 0x78

    .line 686
    .line 687
    const/4 v15, 0x0

    .line 688
    const/16 v17, 0x0

    .line 689
    .line 690
    const/16 v18, 0x0

    .line 691
    .line 692
    const/16 v19, 0x0

    .line 693
    .line 694
    const/16 v20, 0x0

    .line 695
    .line 696
    move-object/from16 v21, v1

    .line 697
    .line 698
    invoke-static/range {v14 .. v23}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 699
    .line 700
    .line 701
    goto :goto_8

    .line 702
    :cond_c
    move-object/from16 v21, v1

    .line 703
    .line 704
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 705
    .line 706
    .line 707
    :goto_8
    return-object v13

    .line 708
    :pswitch_6
    move-object/from16 v0, p1

    .line 709
    .line 710
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 711
    .line 712
    move-object/from16 v1, p2

    .line 713
    .line 714
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 715
    .line 716
    move-object/from16 v2, p3

    .line 717
    .line 718
    check-cast v2, Ljava/lang/Integer;

    .line 719
    .line 720
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 721
    .line 722
    .line 723
    move-result v2

    .line 724
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 725
    .line 726
    .line 727
    and-int/lit8 v0, v2, 0x11

    .line 728
    .line 729
    if-eq v0, v10, :cond_d

    .line 730
    .line 731
    move v12, v11

    .line 732
    :cond_d
    and-int/lit8 v0, v2, 0x1

    .line 733
    .line 734
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 735
    .line 736
    .line 737
    move-result v0

    .line 738
    if-eqz v0, :cond_e

    .line 739
    .line 740
    const v0, 0x7f12070f

    .line 741
    .line 742
    .line 743
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v14

    .line 747
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 748
    .line 749
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 754
    .line 755
    iget-object v0, v0, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 756
    .line 757
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 758
    .line 759
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v2

    .line 763
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 764
    .line 765
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 766
    .line 767
    new-instance v4, Landroidx/compose/ui/text/style/TextAlign;

    .line 768
    .line 769
    invoke-direct {v4, v5}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 770
    .line 771
    .line 772
    const/16 v36, 0x0

    .line 773
    .line 774
    const v37, 0x1fbfa

    .line 775
    .line 776
    .line 777
    const/4 v15, 0x0

    .line 778
    const/16 v18, 0x0

    .line 779
    .line 780
    const-wide/16 v19, 0x0

    .line 781
    .line 782
    const/16 v21, 0x0

    .line 783
    .line 784
    const/16 v22, 0x0

    .line 785
    .line 786
    const-wide/16 v23, 0x0

    .line 787
    .line 788
    const-wide/16 v26, 0x0

    .line 789
    .line 790
    const/16 v28, 0x0

    .line 791
    .line 792
    const/16 v29, 0x0

    .line 793
    .line 794
    const/16 v30, 0x0

    .line 795
    .line 796
    const/16 v31, 0x0

    .line 797
    .line 798
    const/16 v32, 0x0

    .line 799
    .line 800
    const/16 v35, 0x0

    .line 801
    .line 802
    move-object/from16 v33, v0

    .line 803
    .line 804
    move-object/from16 v34, v1

    .line 805
    .line 806
    move-wide/from16 v16, v2

    .line 807
    .line 808
    move-object/from16 v25, v4

    .line 809
    .line 810
    invoke-static/range {v14 .. v37}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 811
    .line 812
    .line 813
    goto :goto_9

    .line 814
    :cond_e
    move-object/from16 v34, v1

    .line 815
    .line 816
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 817
    .line 818
    .line 819
    :goto_9
    return-object v13

    .line 820
    :pswitch_7
    move-object/from16 v0, p1

    .line 821
    .line 822
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .line 823
    .line 824
    move-object/from16 v1, p2

    .line 825
    .line 826
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 827
    .line 828
    move-object/from16 v5, p3

    .line 829
    .line 830
    check-cast v5, Ljava/lang/Integer;

    .line 831
    .line 832
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 833
    .line 834
    .line 835
    move-result v5

    .line 836
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 837
    .line 838
    .line 839
    and-int/lit8 v10, v5, 0x6

    .line 840
    .line 841
    if-nez v10, :cond_10

    .line 842
    .line 843
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v10

    .line 847
    if-eqz v10, :cond_f

    .line 848
    .line 849
    move v7, v8

    .line 850
    :cond_f
    or-int/2addr v5, v7

    .line 851
    :cond_10
    and-int/lit8 v7, v5, 0x13

    .line 852
    .line 853
    if-eq v7, v6, :cond_11

    .line 854
    .line 855
    move v6, v11

    .line 856
    goto :goto_a

    .line 857
    :cond_11
    move v6, v12

    .line 858
    :goto_a
    and-int/2addr v5, v11

    .line 859
    invoke-virtual {v1, v5, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 860
    .line 861
    .line 862
    move-result v5

    .line 863
    if-eqz v5, :cond_12

    .line 864
    .line 865
    sget-object v16, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 866
    .line 867
    invoke-static {v3, v12, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 868
    .line 869
    .line 870
    move-result-object v14

    .line 871
    const/16 v22, 0x61b8

    .line 872
    .line 873
    const/16 v23, 0x68

    .line 874
    .line 875
    const/4 v15, 0x0

    .line 876
    const/16 v17, 0x0

    .line 877
    .line 878
    sget-object v18, Landroidx/compose/ui/layout/ContentScale$Companion;->FillWidth:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 879
    .line 880
    const/16 v19, 0x0

    .line 881
    .line 882
    const/16 v20, 0x0

    .line 883
    .line 884
    move-object/from16 v21, v1

    .line 885
    .line 886
    invoke-static/range {v14 .. v23}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 887
    .line 888
    .line 889
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 890
    .line 891
    invoke-interface {v0, v9, v3}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    invoke-static {v0, v4, v2, v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 896
    .line 897
    .line 898
    move-result-object v16

    .line 899
    const v0, 0x7f080313

    .line 900
    .line 901
    .line 902
    invoke-static {v0, v12, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 903
    .line 904
    .line 905
    move-result-object v14

    .line 906
    const/16 v22, 0x6038

    .line 907
    .line 908
    invoke-static/range {v14 .. v23}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 909
    .line 910
    .line 911
    goto :goto_b

    .line 912
    :cond_12
    move-object/from16 v21, v1

    .line 913
    .line 914
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 915
    .line 916
    .line 917
    :goto_b
    return-object v13

    .line 918
    :pswitch_8
    move-object/from16 v0, p1

    .line 919
    .line 920
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 921
    .line 922
    move-object/from16 v1, p2

    .line 923
    .line 924
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 925
    .line 926
    move-object/from16 v2, p3

    .line 927
    .line 928
    check-cast v2, Ljava/lang/Integer;

    .line 929
    .line 930
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 931
    .line 932
    .line 933
    move-result v2

    .line 934
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 935
    .line 936
    .line 937
    and-int/lit8 v0, v2, 0x11

    .line 938
    .line 939
    if-eq v0, v10, :cond_13

    .line 940
    .line 941
    move v12, v11

    .line 942
    :cond_13
    and-int/lit8 v0, v2, 0x1

    .line 943
    .line 944
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 945
    .line 946
    .line 947
    move-result v0

    .line 948
    if-eqz v0, :cond_14

    .line 949
    .line 950
    const/16 v36, 0x0

    .line 951
    .line 952
    const v37, 0x3fffe

    .line 953
    .line 954
    .line 955
    const-string v14, "Save"

    .line 956
    .line 957
    const/4 v15, 0x0

    .line 958
    const-wide/16 v16, 0x0

    .line 959
    .line 960
    const/16 v18, 0x0

    .line 961
    .line 962
    const-wide/16 v19, 0x0

    .line 963
    .line 964
    const/16 v21, 0x0

    .line 965
    .line 966
    const/16 v22, 0x0

    .line 967
    .line 968
    const-wide/16 v23, 0x0

    .line 969
    .line 970
    const/16 v25, 0x0

    .line 971
    .line 972
    const-wide/16 v26, 0x0

    .line 973
    .line 974
    const/16 v28, 0x0

    .line 975
    .line 976
    const/16 v29, 0x0

    .line 977
    .line 978
    const/16 v30, 0x0

    .line 979
    .line 980
    const/16 v31, 0x0

    .line 981
    .line 982
    const/16 v32, 0x0

    .line 983
    .line 984
    const/16 v33, 0x0

    .line 985
    .line 986
    const/16 v35, 0x6

    .line 987
    .line 988
    move-object/from16 v34, v1

    .line 989
    .line 990
    invoke-static/range {v14 .. v37}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 991
    .line 992
    .line 993
    goto :goto_c

    .line 994
    :cond_14
    move-object/from16 v34, v1

    .line 995
    .line 996
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 997
    .line 998
    .line 999
    :goto_c
    return-object v13

    .line 1000
    :pswitch_9
    move-object/from16 v0, p1

    .line 1001
    .line 1002
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1003
    .line 1004
    move-object/from16 v1, p2

    .line 1005
    .line 1006
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1007
    .line 1008
    move-object/from16 v2, p3

    .line 1009
    .line 1010
    check-cast v2, Ljava/lang/Integer;

    .line 1011
    .line 1012
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1013
    .line 1014
    .line 1015
    move-result v2

    .line 1016
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1017
    .line 1018
    .line 1019
    and-int/lit8 v0, v2, 0x11

    .line 1020
    .line 1021
    if-eq v0, v10, :cond_15

    .line 1022
    .line 1023
    move v12, v11

    .line 1024
    :cond_15
    and-int/lit8 v0, v2, 0x1

    .line 1025
    .line 1026
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1027
    .line 1028
    .line 1029
    move-result v0

    .line 1030
    if-eqz v0, :cond_16

    .line 1031
    .line 1032
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1033
    .line 1034
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v0

    .line 1038
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1039
    .line 1040
    iget-wide v2, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1041
    .line 1042
    const/16 v36, 0x0

    .line 1043
    .line 1044
    const v37, 0x3fffa

    .line 1045
    .line 1046
    .line 1047
    const-string v14, "Reset All"

    .line 1048
    .line 1049
    const/4 v15, 0x0

    .line 1050
    const/16 v18, 0x0

    .line 1051
    .line 1052
    const-wide/16 v19, 0x0

    .line 1053
    .line 1054
    const/16 v21, 0x0

    .line 1055
    .line 1056
    const/16 v22, 0x0

    .line 1057
    .line 1058
    const-wide/16 v23, 0x0

    .line 1059
    .line 1060
    const/16 v25, 0x0

    .line 1061
    .line 1062
    const-wide/16 v26, 0x0

    .line 1063
    .line 1064
    const/16 v28, 0x0

    .line 1065
    .line 1066
    const/16 v29, 0x0

    .line 1067
    .line 1068
    const/16 v30, 0x0

    .line 1069
    .line 1070
    const/16 v31, 0x0

    .line 1071
    .line 1072
    const/16 v32, 0x0

    .line 1073
    .line 1074
    const/16 v33, 0x0

    .line 1075
    .line 1076
    const/16 v35, 0x6

    .line 1077
    .line 1078
    move-object/from16 v34, v1

    .line 1079
    .line 1080
    move-wide/from16 v16, v2

    .line 1081
    .line 1082
    invoke-static/range {v14 .. v37}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1083
    .line 1084
    .line 1085
    goto :goto_d

    .line 1086
    :cond_16
    move-object/from16 v34, v1

    .line 1087
    .line 1088
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1089
    .line 1090
    .line 1091
    :goto_d
    return-object v13

    .line 1092
    :pswitch_a
    move-object/from16 v0, p1

    .line 1093
    .line 1094
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1095
    .line 1096
    move-object/from16 v1, p2

    .line 1097
    .line 1098
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1099
    .line 1100
    move-object/from16 v2, p3

    .line 1101
    .line 1102
    check-cast v2, Ljava/lang/Integer;

    .line 1103
    .line 1104
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1105
    .line 1106
    .line 1107
    move-result v2

    .line 1108
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1109
    .line 1110
    .line 1111
    and-int/lit8 v0, v2, 0x11

    .line 1112
    .line 1113
    if-eq v0, v10, :cond_17

    .line 1114
    .line 1115
    move v12, v11

    .line 1116
    :cond_17
    and-int/lit8 v0, v2, 0x1

    .line 1117
    .line 1118
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1119
    .line 1120
    .line 1121
    move-result v0

    .line 1122
    if-eqz v0, :cond_18

    .line 1123
    .line 1124
    const/16 v36, 0x0

    .line 1125
    .line 1126
    const v37, 0x3fffe

    .line 1127
    .line 1128
    .line 1129
    const-string v14, "Save"

    .line 1130
    .line 1131
    const/4 v15, 0x0

    .line 1132
    const-wide/16 v16, 0x0

    .line 1133
    .line 1134
    const/16 v18, 0x0

    .line 1135
    .line 1136
    const-wide/16 v19, 0x0

    .line 1137
    .line 1138
    const/16 v21, 0x0

    .line 1139
    .line 1140
    const/16 v22, 0x0

    .line 1141
    .line 1142
    const-wide/16 v23, 0x0

    .line 1143
    .line 1144
    const/16 v25, 0x0

    .line 1145
    .line 1146
    const-wide/16 v26, 0x0

    .line 1147
    .line 1148
    const/16 v28, 0x0

    .line 1149
    .line 1150
    const/16 v29, 0x0

    .line 1151
    .line 1152
    const/16 v30, 0x0

    .line 1153
    .line 1154
    const/16 v31, 0x0

    .line 1155
    .line 1156
    const/16 v32, 0x0

    .line 1157
    .line 1158
    const/16 v33, 0x0

    .line 1159
    .line 1160
    const/16 v35, 0x6

    .line 1161
    .line 1162
    move-object/from16 v34, v1

    .line 1163
    .line 1164
    invoke-static/range {v14 .. v37}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1165
    .line 1166
    .line 1167
    goto :goto_e

    .line 1168
    :cond_18
    move-object/from16 v34, v1

    .line 1169
    .line 1170
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1171
    .line 1172
    .line 1173
    :goto_e
    return-object v13

    .line 1174
    :pswitch_b
    move-object/from16 v0, p1

    .line 1175
    .line 1176
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1177
    .line 1178
    move-object/from16 v1, p2

    .line 1179
    .line 1180
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1181
    .line 1182
    move-object/from16 v2, p3

    .line 1183
    .line 1184
    check-cast v2, Ljava/lang/Integer;

    .line 1185
    .line 1186
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1187
    .line 1188
    .line 1189
    move-result v2

    .line 1190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1191
    .line 1192
    .line 1193
    and-int/lit8 v0, v2, 0x11

    .line 1194
    .line 1195
    if-eq v0, v10, :cond_19

    .line 1196
    .line 1197
    move v12, v11

    .line 1198
    :cond_19
    and-int/lit8 v0, v2, 0x1

    .line 1199
    .line 1200
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1201
    .line 1202
    .line 1203
    move-result v0

    .line 1204
    if-eqz v0, :cond_1a

    .line 1205
    .line 1206
    const/16 v36, 0x0

    .line 1207
    .line 1208
    const v37, 0x3fffe

    .line 1209
    .line 1210
    .line 1211
    const-string v14, "Save"

    .line 1212
    .line 1213
    const/4 v15, 0x0

    .line 1214
    const-wide/16 v16, 0x0

    .line 1215
    .line 1216
    const/16 v18, 0x0

    .line 1217
    .line 1218
    const-wide/16 v19, 0x0

    .line 1219
    .line 1220
    const/16 v21, 0x0

    .line 1221
    .line 1222
    const/16 v22, 0x0

    .line 1223
    .line 1224
    const-wide/16 v23, 0x0

    .line 1225
    .line 1226
    const/16 v25, 0x0

    .line 1227
    .line 1228
    const-wide/16 v26, 0x0

    .line 1229
    .line 1230
    const/16 v28, 0x0

    .line 1231
    .line 1232
    const/16 v29, 0x0

    .line 1233
    .line 1234
    const/16 v30, 0x0

    .line 1235
    .line 1236
    const/16 v31, 0x0

    .line 1237
    .line 1238
    const/16 v32, 0x0

    .line 1239
    .line 1240
    const/16 v33, 0x0

    .line 1241
    .line 1242
    const/16 v35, 0x6

    .line 1243
    .line 1244
    move-object/from16 v34, v1

    .line 1245
    .line 1246
    invoke-static/range {v14 .. v37}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1247
    .line 1248
    .line 1249
    goto :goto_f

    .line 1250
    :cond_1a
    move-object/from16 v34, v1

    .line 1251
    .line 1252
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1253
    .line 1254
    .line 1255
    :goto_f
    return-object v13

    .line 1256
    :pswitch_c
    move-object/from16 v0, p1

    .line 1257
    .line 1258
    check-cast v0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    .line 1259
    .line 1260
    move-object/from16 v1, p2

    .line 1261
    .line 1262
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1263
    .line 1264
    move-object/from16 v2, p3

    .line 1265
    .line 1266
    check-cast v2, Ljava/lang/Integer;

    .line 1267
    .line 1268
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1269
    .line 1270
    .line 1271
    move-result v2

    .line 1272
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1273
    .line 1274
    .line 1275
    and-int/lit8 v3, v2, 0x6

    .line 1276
    .line 1277
    if-nez v3, :cond_1c

    .line 1278
    .line 1279
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1280
    .line 1281
    .line 1282
    move-result v3

    .line 1283
    if-eqz v3, :cond_1b

    .line 1284
    .line 1285
    move v7, v8

    .line 1286
    :cond_1b
    or-int/2addr v2, v7

    .line 1287
    :cond_1c
    and-int/lit8 v3, v2, 0x13

    .line 1288
    .line 1289
    if-eq v3, v6, :cond_1d

    .line 1290
    .line 1291
    move v3, v11

    .line 1292
    goto :goto_10

    .line 1293
    :cond_1d
    move v3, v12

    .line 1294
    :goto_10
    and-int/2addr v2, v11

    .line 1295
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1296
    .line 1297
    .line 1298
    move-result v2

    .line 1299
    if-eqz v2, :cond_1e

    .line 1300
    .line 1301
    iget-object v0, v0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->visuals:Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;

    .line 1302
    .line 1303
    iget-object v0, v0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->message:Ljava/lang/String;

    .line 1304
    .line 1305
    const/4 v2, 0x0

    .line 1306
    invoke-static {v12, v1, v2, v0}, Lorg/wikipedia/compose/components/TabsBoxKt;->Snackbar(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V

    .line 1307
    .line 1308
    .line 1309
    goto :goto_11

    .line 1310
    :cond_1e
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1311
    .line 1312
    .line 1313
    :goto_11
    return-object v13

    .line 1314
    :pswitch_d
    move-object/from16 v0, p1

    .line 1315
    .line 1316
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1317
    .line 1318
    move-object/from16 v1, p2

    .line 1319
    .line 1320
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1321
    .line 1322
    move-object/from16 v2, p3

    .line 1323
    .line 1324
    check-cast v2, Ljava/lang/Integer;

    .line 1325
    .line 1326
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1327
    .line 1328
    .line 1329
    move-result v2

    .line 1330
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1331
    .line 1332
    .line 1333
    and-int/lit8 v0, v2, 0x11

    .line 1334
    .line 1335
    if-eq v0, v10, :cond_1f

    .line 1336
    .line 1337
    move v12, v11

    .line 1338
    :cond_1f
    and-int/lit8 v0, v2, 0x1

    .line 1339
    .line 1340
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1341
    .line 1342
    .line 1343
    move-result v0

    .line 1344
    if-eqz v0, :cond_20

    .line 1345
    .line 1346
    const v0, 0x7f12050f

    .line 1347
    .line 1348
    .line 1349
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v14

    .line 1353
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1354
    .line 1355
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v0

    .line 1359
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 1360
    .line 1361
    iget-object v0, v0, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1362
    .line 1363
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1364
    .line 1365
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v2

    .line 1369
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1370
    .line 1371
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 1372
    .line 1373
    new-instance v4, Landroidx/compose/ui/text/style/TextAlign;

    .line 1374
    .line 1375
    invoke-direct {v4, v5}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 1376
    .line 1377
    .line 1378
    const/16 v36, 0x0

    .line 1379
    .line 1380
    const v37, 0x1fbfa

    .line 1381
    .line 1382
    .line 1383
    const/4 v15, 0x0

    .line 1384
    const/16 v18, 0x0

    .line 1385
    .line 1386
    const-wide/16 v19, 0x0

    .line 1387
    .line 1388
    const/16 v21, 0x0

    .line 1389
    .line 1390
    const/16 v22, 0x0

    .line 1391
    .line 1392
    const-wide/16 v23, 0x0

    .line 1393
    .line 1394
    const-wide/16 v26, 0x0

    .line 1395
    .line 1396
    const/16 v28, 0x0

    .line 1397
    .line 1398
    const/16 v29, 0x0

    .line 1399
    .line 1400
    const/16 v30, 0x0

    .line 1401
    .line 1402
    const/16 v31, 0x0

    .line 1403
    .line 1404
    const/16 v32, 0x0

    .line 1405
    .line 1406
    const/16 v35, 0x0

    .line 1407
    .line 1408
    move-object/from16 v33, v0

    .line 1409
    .line 1410
    move-object/from16 v34, v1

    .line 1411
    .line 1412
    move-wide/from16 v16, v2

    .line 1413
    .line 1414
    move-object/from16 v25, v4

    .line 1415
    .line 1416
    invoke-static/range {v14 .. v37}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1417
    .line 1418
    .line 1419
    goto :goto_12

    .line 1420
    :cond_20
    move-object/from16 v34, v1

    .line 1421
    .line 1422
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1423
    .line 1424
    .line 1425
    :goto_12
    return-object v13

    .line 1426
    :pswitch_e
    move-object/from16 v0, p1

    .line 1427
    .line 1428
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1429
    .line 1430
    move-object/from16 v1, p2

    .line 1431
    .line 1432
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1433
    .line 1434
    move-object/from16 v2, p3

    .line 1435
    .line 1436
    check-cast v2, Ljava/lang/Integer;

    .line 1437
    .line 1438
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1439
    .line 1440
    .line 1441
    move-result v2

    .line 1442
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1443
    .line 1444
    .line 1445
    and-int/lit8 v0, v2, 0x11

    .line 1446
    .line 1447
    if-eq v0, v10, :cond_21

    .line 1448
    .line 1449
    move v12, v11

    .line 1450
    :cond_21
    and-int/lit8 v0, v2, 0x1

    .line 1451
    .line 1452
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1453
    .line 1454
    .line 1455
    move-result v0

    .line 1456
    if-eqz v0, :cond_22

    .line 1457
    .line 1458
    const v0, 0x7f1202c4

    .line 1459
    .line 1460
    .line 1461
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v14

    .line 1465
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1466
    .line 1467
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v0

    .line 1471
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 1472
    .line 1473
    iget-object v0, v0, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1474
    .line 1475
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1476
    .line 1477
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v2

    .line 1481
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1482
    .line 1483
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 1484
    .line 1485
    new-instance v4, Landroidx/compose/ui/text/style/TextAlign;

    .line 1486
    .line 1487
    invoke-direct {v4, v5}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 1488
    .line 1489
    .line 1490
    const/16 v36, 0x0

    .line 1491
    .line 1492
    const v37, 0x1fbfa

    .line 1493
    .line 1494
    .line 1495
    const/4 v15, 0x0

    .line 1496
    const/16 v18, 0x0

    .line 1497
    .line 1498
    const-wide/16 v19, 0x0

    .line 1499
    .line 1500
    const/16 v21, 0x0

    .line 1501
    .line 1502
    const/16 v22, 0x0

    .line 1503
    .line 1504
    const-wide/16 v23, 0x0

    .line 1505
    .line 1506
    const-wide/16 v26, 0x0

    .line 1507
    .line 1508
    const/16 v28, 0x0

    .line 1509
    .line 1510
    const/16 v29, 0x0

    .line 1511
    .line 1512
    const/16 v30, 0x0

    .line 1513
    .line 1514
    const/16 v31, 0x0

    .line 1515
    .line 1516
    const/16 v32, 0x0

    .line 1517
    .line 1518
    const/16 v35, 0x0

    .line 1519
    .line 1520
    move-object/from16 v33, v0

    .line 1521
    .line 1522
    move-object/from16 v34, v1

    .line 1523
    .line 1524
    move-wide/from16 v16, v2

    .line 1525
    .line 1526
    move-object/from16 v25, v4

    .line 1527
    .line 1528
    invoke-static/range {v14 .. v37}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1529
    .line 1530
    .line 1531
    goto :goto_13

    .line 1532
    :cond_22
    move-object/from16 v34, v1

    .line 1533
    .line 1534
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1535
    .line 1536
    .line 1537
    :goto_13
    return-object v13

    .line 1538
    :pswitch_f
    move-object/from16 v0, p1

    .line 1539
    .line 1540
    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScopeImpl;

    .line 1541
    .line 1542
    move-object/from16 v1, p2

    .line 1543
    .line 1544
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1545
    .line 1546
    move-object/from16 v2, p3

    .line 1547
    .line 1548
    check-cast v2, Ljava/lang/Integer;

    .line 1549
    .line 1550
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1551
    .line 1552
    .line 1553
    move-result v2

    .line 1554
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1555
    .line 1556
    .line 1557
    and-int/lit8 v0, v2, 0x11

    .line 1558
    .line 1559
    if-eq v0, v10, :cond_23

    .line 1560
    .line 1561
    move v12, v11

    .line 1562
    :cond_23
    and-int/lit8 v0, v2, 0x1

    .line 1563
    .line 1564
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1565
    .line 1566
    .line 1567
    move-result v0

    .line 1568
    if-eqz v0, :cond_24

    .line 1569
    .line 1570
    const/high16 v0, 0x42800000    # 64.0f

    .line 1571
    .line 1572
    invoke-static {v9, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v0

    .line 1576
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 1577
    .line 1578
    .line 1579
    goto :goto_14

    .line 1580
    :cond_24
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1581
    .line 1582
    .line 1583
    :goto_14
    return-object v13

    .line 1584
    :pswitch_10
    move-object/from16 v0, p1

    .line 1585
    .line 1586
    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScopeImpl;

    .line 1587
    .line 1588
    move-object/from16 v2, p2

    .line 1589
    .line 1590
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1591
    .line 1592
    move-object/from16 v3, p3

    .line 1593
    .line 1594
    check-cast v3, Ljava/lang/Integer;

    .line 1595
    .line 1596
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1597
    .line 1598
    .line 1599
    move-result v3

    .line 1600
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1601
    .line 1602
    .line 1603
    and-int/lit8 v0, v3, 0x11

    .line 1604
    .line 1605
    if-eq v0, v10, :cond_25

    .line 1606
    .line 1607
    move v12, v11

    .line 1608
    :cond_25
    and-int/lit8 v0, v3, 0x1

    .line 1609
    .line 1610
    invoke-virtual {v2, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1611
    .line 1612
    .line 1613
    move-result v0

    .line 1614
    if-eqz v0, :cond_26

    .line 1615
    .line 1616
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1617
    .line 1618
    invoke-static {v9, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v0

    .line 1622
    const/high16 v3, 0x40800000    # 4.0f

    .line 1623
    .line 1624
    const/high16 v4, 0x41800000    # 16.0f

    .line 1625
    .line 1626
    const/high16 v6, 0x42400000    # 48.0f

    .line 1627
    .line 1628
    invoke-static {v0, v4, v6, v4, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v15

    .line 1632
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1633
    .line 1634
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v0

    .line 1638
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 1639
    .line 1640
    iget-object v0, v0, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1641
    .line 1642
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1643
    .line 1644
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v3

    .line 1648
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1649
    .line 1650
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1651
    .line 1652
    invoke-static {v1, v2}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1653
    .line 1654
    .line 1655
    move-result-object v14

    .line 1656
    new-instance v1, Landroidx/compose/ui/text/style/TextAlign;

    .line 1657
    .line 1658
    invoke-direct {v1, v5}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 1659
    .line 1660
    .line 1661
    const/16 v36, 0x0

    .line 1662
    .line 1663
    const v37, 0x1fbf8

    .line 1664
    .line 1665
    .line 1666
    const/16 v18, 0x0

    .line 1667
    .line 1668
    const-wide/16 v19, 0x0

    .line 1669
    .line 1670
    const/16 v21, 0x0

    .line 1671
    .line 1672
    const/16 v22, 0x0

    .line 1673
    .line 1674
    const-wide/16 v23, 0x0

    .line 1675
    .line 1676
    const-wide/16 v26, 0x0

    .line 1677
    .line 1678
    const/16 v28, 0x0

    .line 1679
    .line 1680
    const/16 v29, 0x0

    .line 1681
    .line 1682
    const/16 v30, 0x0

    .line 1683
    .line 1684
    const/16 v31, 0x0

    .line 1685
    .line 1686
    const/16 v32, 0x0

    .line 1687
    .line 1688
    const/16 v35, 0x0

    .line 1689
    .line 1690
    move-object/from16 v33, v0

    .line 1691
    .line 1692
    move-object/from16 v25, v1

    .line 1693
    .line 1694
    move-object/from16 v34, v2

    .line 1695
    .line 1696
    move-wide/from16 v16, v3

    .line 1697
    .line 1698
    invoke-static/range {v14 .. v37}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1699
    .line 1700
    .line 1701
    goto :goto_15

    .line 1702
    :cond_26
    move-object/from16 v34, v2

    .line 1703
    .line 1704
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1705
    .line 1706
    .line 1707
    :goto_15
    return-object v13

    .line 1708
    :pswitch_11
    move-object/from16 v0, p1

    .line 1709
    .line 1710
    check-cast v0, Landroidx/compose/animation/AnimatedVisibilityScope;

    .line 1711
    .line 1712
    move-object/from16 v2, p2

    .line 1713
    .line 1714
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1715
    .line 1716
    move-object/from16 v3, p3

    .line 1717
    .line 1718
    check-cast v3, Ljava/lang/Integer;

    .line 1719
    .line 1720
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1721
    .line 1722
    .line 1723
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1724
    .line 1725
    .line 1726
    invoke-static {v1, v2}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v14

    .line 1730
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1731
    .line 1732
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v0

    .line 1736
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1737
    .line 1738
    iget-wide v0, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1739
    .line 1740
    sget-object v3, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1741
    .line 1742
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1743
    .line 1744
    .line 1745
    move-result-object v3

    .line 1746
    check-cast v3, Landroidx/compose/material3/Typography;

    .line 1747
    .line 1748
    iget-object v15, v3, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1749
    .line 1750
    const/16 v3, 0x14

    .line 1751
    .line 1752
    invoke-static {v3}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 1753
    .line 1754
    .line 1755
    move-result-wide v18

    .line 1756
    sget-object v20, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 1757
    .line 1758
    const/16 v26, 0x0

    .line 1759
    .line 1760
    const v27, 0xfffff9

    .line 1761
    .line 1762
    .line 1763
    const-wide/16 v16, 0x0

    .line 1764
    .line 1765
    const/16 v21, 0x0

    .line 1766
    .line 1767
    const-wide/16 v22, 0x0

    .line 1768
    .line 1769
    const-wide/16 v24, 0x0

    .line 1770
    .line 1771
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 1772
    .line 1773
    .line 1774
    move-result-object v33

    .line 1775
    const/16 v36, 0x0

    .line 1776
    .line 1777
    const v37, 0x1fffa

    .line 1778
    .line 1779
    .line 1780
    const/4 v15, 0x0

    .line 1781
    const/16 v18, 0x0

    .line 1782
    .line 1783
    const-wide/16 v19, 0x0

    .line 1784
    .line 1785
    const/16 v22, 0x0

    .line 1786
    .line 1787
    const-wide/16 v23, 0x0

    .line 1788
    .line 1789
    const/16 v25, 0x0

    .line 1790
    .line 1791
    const-wide/16 v26, 0x0

    .line 1792
    .line 1793
    const/16 v28, 0x0

    .line 1794
    .line 1795
    const/16 v29, 0x0

    .line 1796
    .line 1797
    const/16 v30, 0x0

    .line 1798
    .line 1799
    const/16 v31, 0x0

    .line 1800
    .line 1801
    const/16 v32, 0x0

    .line 1802
    .line 1803
    const/16 v35, 0x0

    .line 1804
    .line 1805
    move-wide/from16 v16, v0

    .line 1806
    .line 1807
    move-object/from16 v34, v2

    .line 1808
    .line 1809
    invoke-static/range {v14 .. v37}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1810
    .line 1811
    .line 1812
    return-object v13

    .line 1813
    :pswitch_12
    move-object/from16 v0, p1

    .line 1814
    .line 1815
    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 1816
    .line 1817
    move-object/from16 v1, p2

    .line 1818
    .line 1819
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1820
    .line 1821
    move-object/from16 v2, p3

    .line 1822
    .line 1823
    check-cast v2, Ljava/lang/Integer;

    .line 1824
    .line 1825
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1826
    .line 1827
    .line 1828
    move-result v2

    .line 1829
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1830
    .line 1831
    .line 1832
    and-int/lit8 v3, v2, 0x6

    .line 1833
    .line 1834
    if-nez v3, :cond_28

    .line 1835
    .line 1836
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1837
    .line 1838
    .line 1839
    move-result v3

    .line 1840
    if-eqz v3, :cond_27

    .line 1841
    .line 1842
    move v7, v8

    .line 1843
    :cond_27
    or-int/2addr v2, v7

    .line 1844
    :cond_28
    and-int/lit8 v3, v2, 0x13

    .line 1845
    .line 1846
    if-eq v3, v6, :cond_29

    .line 1847
    .line 1848
    move v3, v11

    .line 1849
    goto :goto_16

    .line 1850
    :cond_29
    move v3, v12

    .line 1851
    :goto_16
    and-int/2addr v2, v11

    .line 1852
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1853
    .line 1854
    .line 1855
    move-result v2

    .line 1856
    if-eqz v2, :cond_2a

    .line 1857
    .line 1858
    invoke-static {v9, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v0

    .line 1862
    invoke-static {v0, v1, v12}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->YearInReviewOnboardingContent(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 1863
    .line 1864
    .line 1865
    goto :goto_17

    .line 1866
    :cond_2a
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1867
    .line 1868
    .line 1869
    :goto_17
    return-object v13

    .line 1870
    nop

    .line 1871
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    const/16 p1, 0xf

    .line 2
    .line 3
    iput p1, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IB)V
    .locals 0

    .line 9
    iput p1, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 4
    .line 5
    const v1, 0x7f120140

    .line 6
    .line 7
    .line 8
    const/high16 v2, 0x41c00000    # 24.0f

    .line 9
    .line 10
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 11
    .line 12
    const v4, 0x7f120a99

    .line 13
    .line 14
    .line 15
    const v5, 0x7f120ab7

    .line 16
    .line 17
    .line 18
    const v6, 0x7f0800c2

    .line 19
    .line 20
    .line 21
    const v7, 0x7f080144

    .line 22
    .line 23
    .line 24
    const/4 v8, 0x2

    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v10, 0x1

    .line 27
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 28
    .line 29
    packed-switch v0, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    move-object/from16 v0, p1

    .line 33
    .line 34
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 35
    .line 36
    move-object/from16 v1, p2

    .line 37
    .line 38
    check-cast v1, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1, v0}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->LoadingIndicator(ILandroidx/compose/runtime/GapComposer;)V

    .line 48
    .line 49
    .line 50
    return-object v11

    .line 51
    :pswitch_0
    move-object/from16 v7, p1

    .line 52
    .line 53
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 54
    .line 55
    move-object/from16 v0, p2

    .line 56
    .line 57
    check-cast v0, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    and-int/lit8 v1, v0, 0x3

    .line 64
    .line 65
    if-eq v1, v8, :cond_0

    .line 66
    .line 67
    move v1, v10

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move v1, v9

    .line 70
    :goto_0
    and-int/2addr v0, v10

    .line 71
    invoke-virtual {v7, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    invoke-static {v6, v9, v7}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 82
    .line 83
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 88
    .line 89
    iget-wide v0, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 90
    .line 91
    invoke-static {v5, v7}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const/16 v8, 0x8

    .line 96
    .line 97
    const/4 v9, 0x4

    .line 98
    const/4 v4, 0x0

    .line 99
    move-wide v5, v0

    .line 100
    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 105
    .line 106
    .line 107
    :goto_1
    return-object v11

    .line 108
    :pswitch_1
    move-object/from16 v0, p1

    .line 109
    .line 110
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 111
    .line 112
    move-object/from16 v1, p2

    .line 113
    .line 114
    check-cast v1, Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    and-int/lit8 v2, v1, 0x3

    .line 121
    .line 122
    if-eq v2, v8, :cond_2

    .line 123
    .line 124
    move v2, v10

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    move v2, v9

    .line 127
    :goto_2
    and-int/2addr v1, v10

    .line 128
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_3

    .line 133
    .line 134
    const v1, 0x7f08011a

    .line 135
    .line 136
    .line 137
    invoke-static {v1, v9, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 148
    .line 149
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 150
    .line 151
    const v3, 0x7f120ac1

    .line 152
    .line 153
    .line 154
    invoke-static {v3, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v13

    .line 158
    const/16 v18, 0x8

    .line 159
    .line 160
    const/16 v19, 0x4

    .line 161
    .line 162
    const/4 v14, 0x0

    .line 163
    move-object/from16 v17, v0

    .line 164
    .line 165
    move-wide v15, v1

    .line 166
    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_3
    move-object/from16 v17, v0

    .line 171
    .line 172
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 173
    .line 174
    .line 175
    :goto_3
    return-object v11

    .line 176
    :pswitch_2
    move-object/from16 v5, p1

    .line 177
    .line 178
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 179
    .line 180
    move-object/from16 v0, p2

    .line 181
    .line 182
    check-cast v0, Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    and-int/lit8 v1, v0, 0x3

    .line 189
    .line 190
    if-eq v1, v8, :cond_4

    .line 191
    .line 192
    move v1, v10

    .line 193
    goto :goto_4

    .line 194
    :cond_4
    move v1, v9

    .line 195
    :goto_4
    and-int/2addr v0, v10

    .line 196
    invoke-virtual {v5, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_5

    .line 201
    .line 202
    const v0, 0x7f0801e7

    .line 203
    .line 204
    .line 205
    invoke-static {v0, v9, v5}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 210
    .line 211
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 216
    .line 217
    iget-wide v3, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 218
    .line 219
    const v1, 0x7f120acf

    .line 220
    .line 221
    .line 222
    invoke-static {v1, v5}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    const/16 v6, 0x8

    .line 227
    .line 228
    const/4 v7, 0x4

    .line 229
    const/4 v2, 0x0

    .line 230
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 231
    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_5
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 235
    .line 236
    .line 237
    :goto_5
    return-object v11

    .line 238
    :pswitch_3
    move-object/from16 v0, p1

    .line 239
    .line 240
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 241
    .line 242
    move-object/from16 v1, p2

    .line 243
    .line 244
    check-cast v1, Ljava/lang/Integer;

    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    and-int/lit8 v2, v1, 0x3

    .line 251
    .line 252
    if-eq v2, v8, :cond_6

    .line 253
    .line 254
    move v2, v10

    .line 255
    goto :goto_6

    .line 256
    :cond_6
    move v2, v9

    .line 257
    :goto_6
    and-int/2addr v1, v10

    .line 258
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_7

    .line 263
    .line 264
    invoke-static {v7, v9, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 275
    .line 276
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 277
    .line 278
    invoke-static {v4, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v13

    .line 282
    const/16 v18, 0x8

    .line 283
    .line 284
    const/16 v19, 0x4

    .line 285
    .line 286
    const/4 v14, 0x0

    .line 287
    move-object/from16 v17, v0

    .line 288
    .line 289
    move-wide v15, v1

    .line 290
    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 291
    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_7
    move-object/from16 v17, v0

    .line 295
    .line 296
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 297
    .line 298
    .line 299
    :goto_7
    return-object v11

    .line 300
    :pswitch_4
    move-object/from16 v0, p1

    .line 301
    .line 302
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 303
    .line 304
    move-object/from16 v1, p2

    .line 305
    .line 306
    check-cast v1, Ljava/lang/Integer;

    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    and-int/lit8 v2, v1, 0x3

    .line 313
    .line 314
    if-eq v2, v8, :cond_8

    .line 315
    .line 316
    move v9, v10

    .line 317
    :cond_8
    and-int/2addr v1, v10

    .line 318
    invoke-virtual {v0, v1, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_9

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 326
    .line 327
    .line 328
    :goto_8
    return-object v11

    .line 329
    :pswitch_5
    move-object/from16 v0, p1

    .line 330
    .line 331
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 332
    .line 333
    move-object/from16 v1, p2

    .line 334
    .line 335
    check-cast v1, Ljava/lang/Integer;

    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    and-int/lit8 v2, v1, 0x3

    .line 342
    .line 343
    if-eq v2, v8, :cond_a

    .line 344
    .line 345
    move v2, v10

    .line 346
    goto :goto_9

    .line 347
    :cond_a
    move v2, v9

    .line 348
    :goto_9
    and-int/2addr v1, v10

    .line 349
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_b

    .line 354
    .line 355
    invoke-static {v7, v9, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 360
    .line 361
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 366
    .line 367
    iget-wide v5, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 368
    .line 369
    invoke-static {v4, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    const/16 v8, 0x8

    .line 374
    .line 375
    const/4 v9, 0x4

    .line 376
    const/4 v4, 0x0

    .line 377
    move-object v7, v0

    .line 378
    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 379
    .line 380
    .line 381
    goto :goto_a

    .line 382
    :cond_b
    move-object v7, v0

    .line 383
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 384
    .line 385
    .line 386
    :goto_a
    return-object v11

    .line 387
    :pswitch_6
    move-object/from16 v0, p1

    .line 388
    .line 389
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 390
    .line 391
    move-object/from16 v1, p2

    .line 392
    .line 393
    check-cast v1, Ljava/lang/Integer;

    .line 394
    .line 395
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    and-int/lit8 v2, v1, 0x3

    .line 400
    .line 401
    if-eq v2, v8, :cond_c

    .line 402
    .line 403
    move v9, v10

    .line 404
    :cond_c
    and-int/2addr v1, v10

    .line 405
    invoke-virtual {v0, v1, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-eqz v1, :cond_d

    .line 410
    .line 411
    goto :goto_b

    .line 412
    :cond_d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 413
    .line 414
    .line 415
    :goto_b
    return-object v11

    .line 416
    :pswitch_7
    move-object/from16 v7, p1

    .line 417
    .line 418
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 419
    .line 420
    move-object/from16 v0, p2

    .line 421
    .line 422
    check-cast v0, Ljava/lang/Integer;

    .line 423
    .line 424
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    and-int/lit8 v1, v0, 0x3

    .line 429
    .line 430
    if-eq v1, v8, :cond_e

    .line 431
    .line 432
    move v1, v10

    .line 433
    goto :goto_c

    .line 434
    :cond_e
    move v1, v9

    .line 435
    :goto_c
    and-int/2addr v0, v10

    .line 436
    invoke-virtual {v7, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-eqz v0, :cond_f

    .line 441
    .line 442
    invoke-static {v6, v9, v7}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 447
    .line 448
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 453
    .line 454
    iget-wide v0, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 455
    .line 456
    invoke-static {v5, v7}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    const/16 v8, 0x8

    .line 461
    .line 462
    const/4 v9, 0x4

    .line 463
    const/4 v4, 0x0

    .line 464
    move-wide v5, v0

    .line 465
    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 466
    .line 467
    .line 468
    goto :goto_d

    .line 469
    :cond_f
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 470
    .line 471
    .line 472
    :goto_d
    return-object v11

    .line 473
    :pswitch_8
    move-object/from16 v4, p1

    .line 474
    .line 475
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 476
    .line 477
    move-object/from16 v0, p2

    .line 478
    .line 479
    check-cast v0, Ljava/lang/Integer;

    .line 480
    .line 481
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    and-int/lit8 v1, v0, 0x3

    .line 486
    .line 487
    if-eq v1, v8, :cond_10

    .line 488
    .line 489
    move v9, v10

    .line 490
    :cond_10
    and-int/2addr v0, v10

    .line 491
    invoke-virtual {v4, v0, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_11

    .line 496
    .line 497
    new-instance v0, Landroidx/glance/AndroidResourceImageProvider;

    .line 498
    .line 499
    const v1, 0x7f080312

    .line 500
    .line 501
    .line 502
    invoke-direct {v0, v1}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 503
    .line 504
    .line 505
    sget-object v7, Landroidx/glance/GlanceModifier$Companion;->$$INSTANCE:Landroidx/glance/GlanceModifier$Companion;

    .line 506
    .line 507
    invoke-static {v7}, Landroidx/compose/ui/unit/DpKt;->fillMaxSize(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    const/16 v5, 0x30

    .line 512
    .line 513
    const/16 v6, 0x18

    .line 514
    .line 515
    const/4 v2, 0x0

    .line 516
    const/4 v3, 0x0

    .line 517
    invoke-static/range {v0 .. v6}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 518
    .line 519
    .line 520
    invoke-static {v7}, Landroidx/compose/ui/unit/DpKt;->fillMaxWidth(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    const/high16 v1, 0x41800000    # 16.0f

    .line 525
    .line 526
    invoke-static {v1}, Lkotlin/text/UStringsKt;->toPadding-0680j_4(F)Landroidx/glance/layout/PaddingDimension;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    new-instance v2, Landroidx/glance/layout/PaddingModifier;

    .line 531
    .line 532
    invoke-direct {v2, v1, v1, v1, v1}, Landroidx/glance/layout/PaddingModifier;-><init>(Landroidx/glance/layout/PaddingDimension;Landroidx/glance/layout/PaddingDimension;Landroidx/glance/layout/PaddingDimension;Landroidx/glance/layout/PaddingDimension;)V

    .line 533
    .line 534
    .line 535
    invoke-interface {v0, v2}, Landroidx/glance/GlanceModifier;->then(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    sget-object v3, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->lambda$1663097143:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 540
    .line 541
    const/16 v5, 0xc00

    .line 542
    .line 543
    const/4 v6, 0x4

    .line 544
    const/4 v1, 0x2

    .line 545
    const/4 v2, 0x0

    .line 546
    invoke-static/range {v0 .. v6}, Lkotlin/uuid/UuidKt;->Row-lMAjyxE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 547
    .line 548
    .line 549
    goto :goto_e

    .line 550
    :cond_11
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 551
    .line 552
    .line 553
    :goto_e
    return-object v11

    .line 554
    :pswitch_9
    move-object/from16 v0, p1

    .line 555
    .line 556
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 557
    .line 558
    move-object/from16 v1, p2

    .line 559
    .line 560
    check-cast v1, Ljava/lang/Integer;

    .line 561
    .line 562
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    and-int/lit8 v2, v1, 0x3

    .line 567
    .line 568
    if-eq v2, v8, :cond_12

    .line 569
    .line 570
    move v9, v10

    .line 571
    :cond_12
    and-int/2addr v1, v10

    .line 572
    invoke-virtual {v0, v1, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 573
    .line 574
    .line 575
    move-result v1

    .line 576
    if-eqz v1, :cond_13

    .line 577
    .line 578
    goto :goto_f

    .line 579
    :cond_13
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 580
    .line 581
    .line 582
    :goto_f
    return-object v11

    .line 583
    :pswitch_a
    move-object/from16 v0, p1

    .line 584
    .line 585
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 586
    .line 587
    move-object/from16 v1, p2

    .line 588
    .line 589
    check-cast v1, Ljava/lang/Integer;

    .line 590
    .line 591
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    and-int/lit8 v2, v1, 0x3

    .line 596
    .line 597
    if-eq v2, v8, :cond_14

    .line 598
    .line 599
    move v9, v10

    .line 600
    :cond_14
    and-int/2addr v1, v10

    .line 601
    invoke-virtual {v0, v1, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 602
    .line 603
    .line 604
    move-result v1

    .line 605
    if-eqz v1, :cond_15

    .line 606
    .line 607
    goto :goto_10

    .line 608
    :cond_15
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 609
    .line 610
    .line 611
    :goto_10
    return-object v11

    .line 612
    :pswitch_b
    move-object/from16 v0, p1

    .line 613
    .line 614
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 615
    .line 616
    move-object/from16 v1, p2

    .line 617
    .line 618
    check-cast v1, Ljava/lang/Integer;

    .line 619
    .line 620
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    and-int/lit8 v2, v1, 0x3

    .line 625
    .line 626
    if-eq v2, v8, :cond_16

    .line 627
    .line 628
    move v2, v10

    .line 629
    goto :goto_11

    .line 630
    :cond_16
    move v2, v9

    .line 631
    :goto_11
    and-int/2addr v1, v10

    .line 632
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 633
    .line 634
    .line 635
    move-result v1

    .line 636
    if-eqz v1, :cond_17

    .line 637
    .line 638
    new-array v1, v9, [Ljava/lang/Object;

    .line 639
    .line 640
    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    const v2, 0x7f120740

    .line 645
    .line 646
    .line 647
    invoke-static {v2, v1, v0}, Lcoil3/util/UtilsKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v12

    .line 651
    const/16 v34, 0x0

    .line 652
    .line 653
    const v35, 0x3fffe

    .line 654
    .line 655
    .line 656
    const/4 v13, 0x0

    .line 657
    const-wide/16 v14, 0x0

    .line 658
    .line 659
    const/16 v16, 0x0

    .line 660
    .line 661
    const-wide/16 v17, 0x0

    .line 662
    .line 663
    const/16 v19, 0x0

    .line 664
    .line 665
    const/16 v20, 0x0

    .line 666
    .line 667
    const-wide/16 v21, 0x0

    .line 668
    .line 669
    const/16 v23, 0x0

    .line 670
    .line 671
    const-wide/16 v24, 0x0

    .line 672
    .line 673
    const/16 v26, 0x0

    .line 674
    .line 675
    const/16 v27, 0x0

    .line 676
    .line 677
    const/16 v28, 0x0

    .line 678
    .line 679
    const/16 v29, 0x0

    .line 680
    .line 681
    const/16 v30, 0x0

    .line 682
    .line 683
    const/16 v31, 0x0

    .line 684
    .line 685
    const/16 v33, 0x0

    .line 686
    .line 687
    move-object/from16 v32, v0

    .line 688
    .line 689
    invoke-static/range {v12 .. v35}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 690
    .line 691
    .line 692
    goto :goto_12

    .line 693
    :cond_17
    move-object/from16 v32, v0

    .line 694
    .line 695
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 696
    .line 697
    .line 698
    :goto_12
    return-object v11

    .line 699
    :pswitch_c
    move-object/from16 v5, p1

    .line 700
    .line 701
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 702
    .line 703
    move-object/from16 v0, p2

    .line 704
    .line 705
    check-cast v0, Ljava/lang/Integer;

    .line 706
    .line 707
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 708
    .line 709
    .line 710
    move-result v0

    .line 711
    and-int/lit8 v4, v0, 0x3

    .line 712
    .line 713
    if-eq v4, v8, :cond_18

    .line 714
    .line 715
    move v4, v10

    .line 716
    goto :goto_13

    .line 717
    :cond_18
    move v4, v9

    .line 718
    :goto_13
    and-int/2addr v0, v10

    .line 719
    invoke-virtual {v5, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 720
    .line 721
    .line 722
    move-result v0

    .line 723
    if-eqz v0, :cond_19

    .line 724
    .line 725
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 726
    .line 727
    .line 728
    move-result-object v2

    .line 729
    invoke-static {v7, v9, v5}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-static {v1, v5}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 738
    .line 739
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v3

    .line 743
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 744
    .line 745
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 746
    .line 747
    const/16 v6, 0x188

    .line 748
    .line 749
    const/4 v7, 0x0

    .line 750
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 751
    .line 752
    .line 753
    goto :goto_14

    .line 754
    :cond_19
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 755
    .line 756
    .line 757
    :goto_14
    return-object v11

    .line 758
    :pswitch_d
    move-object/from16 v0, p1

    .line 759
    .line 760
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 761
    .line 762
    move-object/from16 v4, p2

    .line 763
    .line 764
    check-cast v4, Ljava/lang/Integer;

    .line 765
    .line 766
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 767
    .line 768
    .line 769
    move-result v4

    .line 770
    and-int/lit8 v5, v4, 0x3

    .line 771
    .line 772
    if-eq v5, v8, :cond_1a

    .line 773
    .line 774
    move v5, v10

    .line 775
    goto :goto_15

    .line 776
    :cond_1a
    move v5, v9

    .line 777
    :goto_15
    and-int/2addr v4, v10

    .line 778
    invoke-virtual {v0, v4, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 779
    .line 780
    .line 781
    move-result v4

    .line 782
    if-eqz v4, :cond_1b

    .line 783
    .line 784
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 785
    .line 786
    .line 787
    move-result-object v14

    .line 788
    invoke-static {v7, v9, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 789
    .line 790
    .line 791
    move-result-object v12

    .line 792
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v13

    .line 796
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 797
    .line 798
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 803
    .line 804
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 805
    .line 806
    const/16 v18, 0x188

    .line 807
    .line 808
    const/16 v19, 0x0

    .line 809
    .line 810
    move-object/from16 v17, v0

    .line 811
    .line 812
    move-wide v15, v1

    .line 813
    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 814
    .line 815
    .line 816
    goto :goto_16

    .line 817
    :cond_1b
    move-object/from16 v17, v0

    .line 818
    .line 819
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 820
    .line 821
    .line 822
    :goto_16
    return-object v11

    .line 823
    :pswitch_e
    move-object/from16 v0, p1

    .line 824
    .line 825
    check-cast v0, Landroidx/compose/foundation/pager/PagerState;

    .line 826
    .line 827
    move-object/from16 v1, p2

    .line 828
    .line 829
    check-cast v1, Lorg/wikipedia/yearinreview/YearInReviewScreenData;

    .line 830
    .line 831
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 832
    .line 833
    .line 834
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 835
    .line 836
    .line 837
    return-object v11

    .line 838
    nop

    .line 839
    :pswitch_data_0
    .packed-switch 0x0
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

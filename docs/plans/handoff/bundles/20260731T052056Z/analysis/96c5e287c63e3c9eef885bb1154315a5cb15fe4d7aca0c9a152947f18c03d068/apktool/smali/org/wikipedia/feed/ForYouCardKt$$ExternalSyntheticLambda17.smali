.class public final synthetic Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;
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
    iput p1, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 57

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;->$r8$classId:I

    .line 4
    .line 5
    const v1, 0x7f08020f

    .line 6
    .line 7
    .line 8
    const v2, 0x7f08011a

    .line 9
    .line 10
    .line 11
    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    .line 13
    const v4, 0x7f1207f5

    .line 14
    .line 15
    .line 16
    const v5, 0x7f120814

    .line 17
    .line 18
    .line 19
    const/high16 v6, 0x41c00000    # 24.0f

    .line 20
    .line 21
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 22
    .line 23
    const/4 v8, 0x2

    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v10, 0x1

    .line 26
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    .line 28
    packed-switch v0, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    move-object/from16 v0, p1

    .line 32
    .line 33
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 34
    .line 35
    move-object/from16 v1, p2

    .line 36
    .line 37
    check-cast v1, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    and-int/lit8 v2, v1, 0x3

    .line 44
    .line 45
    if-eq v2, v8, :cond_0

    .line 46
    .line 47
    move v9, v10

    .line 48
    :cond_0
    and-int/2addr v1, v10

    .line 49
    invoke-virtual {v0, v1, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    const v1, 0x7f1207fe

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 69
    .line 70
    iget-object v1, v1, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 71
    .line 72
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 79
    .line 80
    iget-wide v14, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 81
    .line 82
    const/16 v34, 0x0

    .line 83
    .line 84
    const v35, 0x1fffa

    .line 85
    .line 86
    .line 87
    const/4 v13, 0x0

    .line 88
    const/16 v16, 0x0

    .line 89
    .line 90
    const-wide/16 v17, 0x0

    .line 91
    .line 92
    const/16 v19, 0x0

    .line 93
    .line 94
    const/16 v20, 0x0

    .line 95
    .line 96
    const-wide/16 v21, 0x0

    .line 97
    .line 98
    const/16 v23, 0x0

    .line 99
    .line 100
    const-wide/16 v24, 0x0

    .line 101
    .line 102
    const/16 v26, 0x0

    .line 103
    .line 104
    const/16 v27, 0x0

    .line 105
    .line 106
    const/16 v28, 0x0

    .line 107
    .line 108
    const/16 v29, 0x0

    .line 109
    .line 110
    const/16 v30, 0x0

    .line 111
    .line 112
    const/16 v33, 0x0

    .line 113
    .line 114
    move-object/from16 v32, v0

    .line 115
    .line 116
    move-object/from16 v31, v1

    .line 117
    .line 118
    invoke-static/range {v12 .. v35}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    move-object/from16 v32, v0

    .line 123
    .line 124
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 125
    .line 126
    .line 127
    :goto_0
    return-object v11

    .line 128
    :pswitch_0
    move-object/from16 v0, p1

    .line 129
    .line 130
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 131
    .line 132
    move-object/from16 v1, p2

    .line 133
    .line 134
    check-cast v1, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    and-int/lit8 v2, v1, 0x3

    .line 141
    .line 142
    if-eq v2, v8, :cond_2

    .line 143
    .line 144
    move v2, v10

    .line 145
    goto :goto_1

    .line 146
    :cond_2
    move v2, v9

    .line 147
    :goto_1
    and-int/2addr v1, v10

    .line 148
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_3

    .line 153
    .line 154
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    const v1, 0x7f080226

    .line 159
    .line 160
    .line 161
    invoke-static {v1, v9, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 166
    .line 167
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 172
    .line 173
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 174
    .line 175
    move-object v6, v1

    .line 176
    invoke-static {v5, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    move-object v5, v0

    .line 181
    move-object v0, v6

    .line 182
    const/16 v6, 0x188

    .line 183
    .line 184
    const/4 v7, 0x0

    .line 185
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_3
    move-object v5, v0

    .line 190
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 191
    .line 192
    .line 193
    :goto_2
    return-object v11

    .line 194
    :pswitch_1
    move-object/from16 v0, p1

    .line 195
    .line 196
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 197
    .line 198
    move-object/from16 v1, p2

    .line 199
    .line 200
    check-cast v1, Ljava/lang/Integer;

    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    and-int/lit8 v2, v1, 0x3

    .line 207
    .line 208
    if-eq v2, v8, :cond_4

    .line 209
    .line 210
    move v9, v10

    .line 211
    :cond_4
    and-int/2addr v1, v10

    .line 212
    invoke-virtual {v0, v1, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_5

    .line 217
    .line 218
    const v1, 0x7f1207f6

    .line 219
    .line 220
    .line 221
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v12

    .line 225
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 232
    .line 233
    iget-object v1, v1, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 234
    .line 235
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 236
    .line 237
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 242
    .line 243
    iget-wide v14, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 244
    .line 245
    const/16 v34, 0x0

    .line 246
    .line 247
    const v35, 0x1fffa

    .line 248
    .line 249
    .line 250
    const/4 v13, 0x0

    .line 251
    const/16 v16, 0x0

    .line 252
    .line 253
    const-wide/16 v17, 0x0

    .line 254
    .line 255
    const/16 v19, 0x0

    .line 256
    .line 257
    const/16 v20, 0x0

    .line 258
    .line 259
    const-wide/16 v21, 0x0

    .line 260
    .line 261
    const/16 v23, 0x0

    .line 262
    .line 263
    const-wide/16 v24, 0x0

    .line 264
    .line 265
    const/16 v26, 0x0

    .line 266
    .line 267
    const/16 v27, 0x0

    .line 268
    .line 269
    const/16 v28, 0x0

    .line 270
    .line 271
    const/16 v29, 0x0

    .line 272
    .line 273
    const/16 v30, 0x0

    .line 274
    .line 275
    const/16 v33, 0x0

    .line 276
    .line 277
    move-object/from16 v32, v0

    .line 278
    .line 279
    move-object/from16 v31, v1

    .line 280
    .line 281
    invoke-static/range {v12 .. v35}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 282
    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_5
    move-object/from16 v32, v0

    .line 286
    .line 287
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 288
    .line 289
    .line 290
    :goto_3
    return-object v11

    .line 291
    :pswitch_2
    move-object/from16 v0, p1

    .line 292
    .line 293
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 294
    .line 295
    move-object/from16 v1, p2

    .line 296
    .line 297
    check-cast v1, Ljava/lang/Integer;

    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    and-int/lit8 v2, v1, 0x3

    .line 304
    .line 305
    if-eq v2, v8, :cond_6

    .line 306
    .line 307
    move v2, v10

    .line 308
    goto :goto_4

    .line 309
    :cond_6
    move v2, v9

    .line 310
    :goto_4
    and-int/2addr v1, v10

    .line 311
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_7

    .line 316
    .line 317
    const v1, 0x7f0800ce

    .line 318
    .line 319
    .line 320
    invoke-static {v1, v9, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 325
    .line 326
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 331
    .line 332
    iget-wide v3, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 333
    .line 334
    move-object v2, v1

    .line 335
    invoke-static {v5, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    const/16 v6, 0x188

    .line 340
    .line 341
    const/4 v7, 0x0

    .line 342
    move-object v5, v0

    .line 343
    move-object v0, v2

    .line 344
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 345
    .line 346
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 347
    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_7
    move-object v5, v0

    .line 351
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 352
    .line 353
    .line 354
    :goto_5
    return-object v11

    .line 355
    :pswitch_3
    move-object/from16 v0, p1

    .line 356
    .line 357
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 358
    .line 359
    move-object/from16 v1, p2

    .line 360
    .line 361
    check-cast v1, Ljava/lang/Integer;

    .line 362
    .line 363
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    and-int/lit8 v2, v1, 0x3

    .line 368
    .line 369
    if-eq v2, v8, :cond_8

    .line 370
    .line 371
    move v9, v10

    .line 372
    :cond_8
    and-int/2addr v1, v10

    .line 373
    invoke-virtual {v0, v1, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    if-eqz v1, :cond_9

    .line 378
    .line 379
    invoke-static {v5, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v12

    .line 383
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 384
    .line 385
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 390
    .line 391
    iget-object v1, v1, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 392
    .line 393
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 394
    .line 395
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 400
    .line 401
    iget-wide v14, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 402
    .line 403
    const/16 v34, 0x0

    .line 404
    .line 405
    const v35, 0x1fffa

    .line 406
    .line 407
    .line 408
    const/4 v13, 0x0

    .line 409
    const/16 v16, 0x0

    .line 410
    .line 411
    const-wide/16 v17, 0x0

    .line 412
    .line 413
    const/16 v19, 0x0

    .line 414
    .line 415
    const/16 v20, 0x0

    .line 416
    .line 417
    const-wide/16 v21, 0x0

    .line 418
    .line 419
    const/16 v23, 0x0

    .line 420
    .line 421
    const-wide/16 v24, 0x0

    .line 422
    .line 423
    const/16 v26, 0x0

    .line 424
    .line 425
    const/16 v27, 0x0

    .line 426
    .line 427
    const/16 v28, 0x0

    .line 428
    .line 429
    const/16 v29, 0x0

    .line 430
    .line 431
    const/16 v30, 0x0

    .line 432
    .line 433
    const/16 v33, 0x0

    .line 434
    .line 435
    move-object/from16 v32, v0

    .line 436
    .line 437
    move-object/from16 v31, v1

    .line 438
    .line 439
    invoke-static/range {v12 .. v35}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 440
    .line 441
    .line 442
    goto :goto_6

    .line 443
    :cond_9
    move-object/from16 v32, v0

    .line 444
    .line 445
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 446
    .line 447
    .line 448
    :goto_6
    return-object v11

    .line 449
    :pswitch_4
    move-object/from16 v0, p1

    .line 450
    .line 451
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 452
    .line 453
    move-object/from16 v1, p2

    .line 454
    .line 455
    check-cast v1, Ljava/lang/Integer;

    .line 456
    .line 457
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    and-int/lit8 v2, v1, 0x3

    .line 462
    .line 463
    if-eq v2, v8, :cond_a

    .line 464
    .line 465
    move v9, v10

    .line 466
    :cond_a
    and-int/2addr v1, v10

    .line 467
    invoke-virtual {v0, v1, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    if-eqz v1, :cond_b

    .line 472
    .line 473
    const v1, 0x7f120801

    .line 474
    .line 475
    .line 476
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v33

    .line 480
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 481
    .line 482
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 487
    .line 488
    iget-object v1, v1, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 489
    .line 490
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 491
    .line 492
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 497
    .line 498
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 499
    .line 500
    const/16 v55, 0x0

    .line 501
    .line 502
    const v56, 0x1fffa

    .line 503
    .line 504
    .line 505
    const/16 v34, 0x0

    .line 506
    .line 507
    const/16 v37, 0x0

    .line 508
    .line 509
    const-wide/16 v38, 0x0

    .line 510
    .line 511
    const/16 v40, 0x0

    .line 512
    .line 513
    const/16 v41, 0x0

    .line 514
    .line 515
    const-wide/16 v42, 0x0

    .line 516
    .line 517
    const/16 v44, 0x0

    .line 518
    .line 519
    const-wide/16 v45, 0x0

    .line 520
    .line 521
    const/16 v47, 0x0

    .line 522
    .line 523
    const/16 v48, 0x0

    .line 524
    .line 525
    const/16 v49, 0x0

    .line 526
    .line 527
    const/16 v50, 0x0

    .line 528
    .line 529
    const/16 v51, 0x0

    .line 530
    .line 531
    const/16 v54, 0x0

    .line 532
    .line 533
    move-object/from16 v53, v0

    .line 534
    .line 535
    move-object/from16 v52, v1

    .line 536
    .line 537
    move-wide/from16 v35, v2

    .line 538
    .line 539
    invoke-static/range {v33 .. v56}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 540
    .line 541
    .line 542
    goto :goto_7

    .line 543
    :cond_b
    move-object/from16 v53, v0

    .line 544
    .line 545
    invoke-virtual/range {v53 .. v53}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 546
    .line 547
    .line 548
    :goto_7
    return-object v11

    .line 549
    :pswitch_5
    move-object/from16 v5, p1

    .line 550
    .line 551
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 552
    .line 553
    move-object/from16 v0, p2

    .line 554
    .line 555
    check-cast v0, Ljava/lang/Integer;

    .line 556
    .line 557
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 558
    .line 559
    .line 560
    move-result v0

    .line 561
    and-int/lit8 v1, v0, 0x3

    .line 562
    .line 563
    if-eq v1, v8, :cond_c

    .line 564
    .line 565
    move v1, v10

    .line 566
    goto :goto_8

    .line 567
    :cond_c
    move v1, v9

    .line 568
    :goto_8
    and-int/2addr v0, v10

    .line 569
    invoke-virtual {v5, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 570
    .line 571
    .line 572
    move-result v0

    .line 573
    if-eqz v0, :cond_d

    .line 574
    .line 575
    const v0, 0x7f0802e5

    .line 576
    .line 577
    .line 578
    invoke-static {v0, v9, v5}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 583
    .line 584
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 589
    .line 590
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 591
    .line 592
    move-wide v2, v1

    .line 593
    invoke-static {v4, v5}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    const/16 v6, 0x188

    .line 598
    .line 599
    const/4 v7, 0x0

    .line 600
    move-wide v3, v2

    .line 601
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 602
    .line 603
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 604
    .line 605
    .line 606
    goto :goto_9

    .line 607
    :cond_d
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 608
    .line 609
    .line 610
    :goto_9
    return-object v11

    .line 611
    :pswitch_6
    move-object/from16 v0, p1

    .line 612
    .line 613
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 614
    .line 615
    move-object/from16 v1, p2

    .line 616
    .line 617
    check-cast v1, Ljava/lang/Integer;

    .line 618
    .line 619
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 620
    .line 621
    .line 622
    move-result v1

    .line 623
    and-int/lit8 v2, v1, 0x3

    .line 624
    .line 625
    if-eq v2, v8, :cond_e

    .line 626
    .line 627
    move v2, v10

    .line 628
    goto :goto_a

    .line 629
    :cond_e
    move v2, v9

    .line 630
    :goto_a
    and-int/2addr v1, v10

    .line 631
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 632
    .line 633
    .line 634
    move-result v1

    .line 635
    if-eqz v1, :cond_f

    .line 636
    .line 637
    const v1, 0x7f0802b8

    .line 638
    .line 639
    .line 640
    invoke-static {v1, v9, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 641
    .line 642
    .line 643
    move-result-object v12

    .line 644
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 645
    .line 646
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 651
    .line 652
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 653
    .line 654
    invoke-static {v4, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v13

    .line 658
    const/16 v18, 0x188

    .line 659
    .line 660
    const/16 v19, 0x0

    .line 661
    .line 662
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 663
    .line 664
    move-object/from16 v17, v0

    .line 665
    .line 666
    move-wide v15, v1

    .line 667
    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 668
    .line 669
    .line 670
    goto :goto_b

    .line 671
    :cond_f
    move-object/from16 v17, v0

    .line 672
    .line 673
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 674
    .line 675
    .line 676
    :goto_b
    return-object v11

    .line 677
    :pswitch_7
    move-object/from16 v0, p1

    .line 678
    .line 679
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 680
    .line 681
    move-object/from16 v1, p2

    .line 682
    .line 683
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 684
    .line 685
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 689
    .line 690
    .line 691
    iget-wide v1, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 692
    .line 693
    iget-wide v3, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 694
    .line 695
    invoke-static {v1, v2, v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 696
    .line 697
    .line 698
    move-result v0

    .line 699
    :goto_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    return-object v0

    .line 704
    :pswitch_8
    move-object/from16 v0, p1

    .line 705
    .line 706
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 707
    .line 708
    move-object/from16 v1, p2

    .line 709
    .line 710
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 711
    .line 712
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 716
    .line 717
    .line 718
    iget-wide v2, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 719
    .line 720
    iget-wide v0, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 721
    .line 722
    invoke-static {v2, v3, v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 723
    .line 724
    .line 725
    move-result v0

    .line 726
    goto :goto_c

    .line 727
    :pswitch_9
    move-object/from16 v0, p1

    .line 728
    .line 729
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 730
    .line 731
    move-object/from16 v1, p2

    .line 732
    .line 733
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 734
    .line 735
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 739
    .line 740
    .line 741
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->getAccentInvariantTitle()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->getAccentInvariantTitle()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 750
    .line 751
    .line 752
    move-result v0

    .line 753
    goto :goto_c

    .line 754
    :pswitch_a
    move-object/from16 v0, p1

    .line 755
    .line 756
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 757
    .line 758
    move-object/from16 v1, p2

    .line 759
    .line 760
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 761
    .line 762
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 763
    .line 764
    .line 765
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 766
    .line 767
    .line 768
    iget-wide v2, v0, Lorg/wikipedia/readinglist/database/ReadingList;->mtime:J

    .line 769
    .line 770
    iget-wide v0, v1, Lorg/wikipedia/readinglist/database/ReadingList;->mtime:J

    .line 771
    .line 772
    invoke-static {v2, v3, v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 773
    .line 774
    .line 775
    move-result v0

    .line 776
    goto :goto_c

    .line 777
    :pswitch_b
    move-object/from16 v0, p1

    .line 778
    .line 779
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 780
    .line 781
    move-object/from16 v1, p2

    .line 782
    .line 783
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 784
    .line 785
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 786
    .line 787
    .line 788
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 789
    .line 790
    .line 791
    iget-wide v1, v1, Lorg/wikipedia/readinglist/database/ReadingList;->mtime:J

    .line 792
    .line 793
    iget-wide v3, v0, Lorg/wikipedia/readinglist/database/ReadingList;->mtime:J

    .line 794
    .line 795
    invoke-static {v1, v2, v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 796
    .line 797
    .line 798
    move-result v0

    .line 799
    goto :goto_c

    .line 800
    :pswitch_c
    move-object/from16 v0, p1

    .line 801
    .line 802
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 803
    .line 804
    move-object/from16 v1, p2

    .line 805
    .line 806
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 807
    .line 808
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 809
    .line 810
    .line 811
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingList;->getAccentInvariantTitle()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->getAccentInvariantTitle()Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 823
    .line 824
    .line 825
    move-result v0

    .line 826
    goto :goto_c

    .line 827
    :pswitch_d
    move-object/from16 v0, p1

    .line 828
    .line 829
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 830
    .line 831
    move-object/from16 v1, p2

    .line 832
    .line 833
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 834
    .line 835
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 839
    .line 840
    .line 841
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->getAccentInvariantTitle()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingList;->getAccentInvariantTitle()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v1

    .line 849
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 850
    .line 851
    .line 852
    move-result v0

    .line 853
    goto/16 :goto_c

    .line 854
    .line 855
    :pswitch_e
    move-object/from16 v0, p1

    .line 856
    .line 857
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 858
    .line 859
    move-object/from16 v1, p2

    .line 860
    .line 861
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 862
    .line 863
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 864
    .line 865
    .line 866
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 867
    .line 868
    .line 869
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->getAccentInvariantTitle()Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->getAccentInvariantTitle()Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v1

    .line 877
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 878
    .line 879
    .line 880
    move-result v0

    .line 881
    goto/16 :goto_c

    .line 882
    .line 883
    :pswitch_f
    move-object/from16 v6, p1

    .line 884
    .line 885
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 886
    .line 887
    move-object/from16 v0, p2

    .line 888
    .line 889
    check-cast v0, Ljava/lang/Integer;

    .line 890
    .line 891
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 892
    .line 893
    .line 894
    move-result v0

    .line 895
    and-int/lit8 v1, v0, 0x3

    .line 896
    .line 897
    if-eq v1, v8, :cond_10

    .line 898
    .line 899
    move v1, v10

    .line 900
    goto :goto_d

    .line 901
    :cond_10
    move v1, v9

    .line 902
    :goto_d
    and-int/2addr v0, v10

    .line 903
    invoke-virtual {v6, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 904
    .line 905
    .line 906
    move-result v0

    .line 907
    if-eqz v0, :cond_11

    .line 908
    .line 909
    const v0, 0x7f080113

    .line 910
    .line 911
    .line 912
    invoke-static {v0, v9, v6}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 913
    .line 914
    .line 915
    move-result-object v1

    .line 916
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->White:J

    .line 917
    .line 918
    const v0, 0x7f12083f

    .line 919
    .line 920
    .line 921
    invoke-static {v0, v6}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v2

    .line 925
    const/16 v7, 0xc08

    .line 926
    .line 927
    const/4 v8, 0x4

    .line 928
    const/4 v3, 0x0

    .line 929
    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 930
    .line 931
    .line 932
    goto :goto_e

    .line 933
    :cond_11
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 934
    .line 935
    .line 936
    :goto_e
    return-object v11

    .line 937
    :pswitch_10
    move-object/from16 v0, p1

    .line 938
    .line 939
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 940
    .line 941
    move-object/from16 v1, p2

    .line 942
    .line 943
    check-cast v1, Ljava/lang/Integer;

    .line 944
    .line 945
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 946
    .line 947
    .line 948
    move-result v1

    .line 949
    and-int/lit8 v2, v1, 0x3

    .line 950
    .line 951
    if-eq v2, v8, :cond_12

    .line 952
    .line 953
    move v2, v10

    .line 954
    goto :goto_f

    .line 955
    :cond_12
    move v2, v9

    .line 956
    :goto_f
    and-int/2addr v1, v10

    .line 957
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 958
    .line 959
    .line 960
    move-result v1

    .line 961
    if-eqz v1, :cond_13

    .line 962
    .line 963
    const v1, 0x7f0802f9

    .line 964
    .line 965
    .line 966
    invoke-static {v1, v9, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 967
    .line 968
    .line 969
    move-result-object v12

    .line 970
    invoke-static {v7, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 971
    .line 972
    .line 973
    move-result-object v14

    .line 974
    const/16 v20, 0x1b8

    .line 975
    .line 976
    const/16 v21, 0x78

    .line 977
    .line 978
    const/4 v13, 0x0

    .line 979
    const/4 v15, 0x0

    .line 980
    const/16 v16, 0x0

    .line 981
    .line 982
    const/16 v17, 0x0

    .line 983
    .line 984
    const/16 v18, 0x0

    .line 985
    .line 986
    move-object/from16 v19, v0

    .line 987
    .line 988
    invoke-static/range {v12 .. v21}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 989
    .line 990
    .line 991
    goto :goto_10

    .line 992
    :cond_13
    move-object/from16 v19, v0

    .line 993
    .line 994
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 995
    .line 996
    .line 997
    :goto_10
    return-object v11

    .line 998
    :pswitch_11
    move-object/from16 v5, p1

    .line 999
    .line 1000
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1001
    .line 1002
    move-object/from16 v0, p2

    .line 1003
    .line 1004
    check-cast v0, Ljava/lang/Integer;

    .line 1005
    .line 1006
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1007
    .line 1008
    .line 1009
    move-result v0

    .line 1010
    and-int/lit8 v1, v0, 0x3

    .line 1011
    .line 1012
    if-eq v1, v8, :cond_14

    .line 1013
    .line 1014
    move v1, v10

    .line 1015
    goto :goto_11

    .line 1016
    :cond_14
    move v1, v9

    .line 1017
    :goto_11
    and-int/2addr v0, v10

    .line 1018
    invoke-virtual {v5, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v0

    .line 1022
    if-eqz v0, :cond_15

    .line 1023
    .line 1024
    invoke-static {v2, v9, v5}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1029
    .line 1030
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v1

    .line 1034
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1035
    .line 1036
    iget-wide v3, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 1037
    .line 1038
    const v1, 0x7f120460

    .line 1039
    .line 1040
    .line 1041
    invoke-static {v1, v5}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v1

    .line 1045
    const/16 v6, 0x8

    .line 1046
    .line 1047
    const/4 v7, 0x4

    .line 1048
    const/4 v2, 0x0

    .line 1049
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1050
    .line 1051
    .line 1052
    goto :goto_12

    .line 1053
    :cond_15
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1054
    .line 1055
    .line 1056
    :goto_12
    return-object v11

    .line 1057
    :pswitch_12
    move-object/from16 v0, p1

    .line 1058
    .line 1059
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1060
    .line 1061
    move-object/from16 v1, p2

    .line 1062
    .line 1063
    check-cast v1, Ljava/lang/Integer;

    .line 1064
    .line 1065
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1066
    .line 1067
    .line 1068
    move-result v1

    .line 1069
    and-int/lit8 v3, v1, 0x3

    .line 1070
    .line 1071
    if-eq v3, v8, :cond_16

    .line 1072
    .line 1073
    move v3, v10

    .line 1074
    goto :goto_13

    .line 1075
    :cond_16
    move v3, v9

    .line 1076
    :goto_13
    and-int/2addr v1, v10

    .line 1077
    invoke-virtual {v0, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1078
    .line 1079
    .line 1080
    move-result v1

    .line 1081
    if-eqz v1, :cond_17

    .line 1082
    .line 1083
    invoke-static {v2, v9, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v12

    .line 1087
    const v1, 0x7f120514

    .line 1088
    .line 1089
    .line 1090
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v13

    .line 1094
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1095
    .line 1096
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v1

    .line 1100
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1101
    .line 1102
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 1103
    .line 1104
    const/16 v18, 0x8

    .line 1105
    .line 1106
    const/16 v19, 0x4

    .line 1107
    .line 1108
    const/4 v14, 0x0

    .line 1109
    move-object/from16 v17, v0

    .line 1110
    .line 1111
    move-wide v15, v1

    .line 1112
    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1113
    .line 1114
    .line 1115
    goto :goto_14

    .line 1116
    :cond_17
    move-object/from16 v17, v0

    .line 1117
    .line 1118
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1119
    .line 1120
    .line 1121
    :goto_14
    return-object v11

    .line 1122
    :pswitch_13
    move-object/from16 v0, p1

    .line 1123
    .line 1124
    check-cast v0, Lorg/wikipedia/feed/model/Card;

    .line 1125
    .line 1126
    move-object/from16 v1, p2

    .line 1127
    .line 1128
    check-cast v1, Ljava/lang/Integer;

    .line 1129
    .line 1130
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1134
    .line 1135
    .line 1136
    return-object v11

    .line 1137
    :pswitch_14
    move-object/from16 v0, p1

    .line 1138
    .line 1139
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1140
    .line 1141
    move-object/from16 v1, p2

    .line 1142
    .line 1143
    check-cast v1, Ljava/lang/Integer;

    .line 1144
    .line 1145
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1146
    .line 1147
    .line 1148
    move-result v1

    .line 1149
    and-int/lit8 v2, v1, 0x3

    .line 1150
    .line 1151
    if-eq v2, v8, :cond_18

    .line 1152
    .line 1153
    move v2, v10

    .line 1154
    goto :goto_15

    .line 1155
    :cond_18
    move v2, v9

    .line 1156
    :goto_15
    and-int/2addr v1, v10

    .line 1157
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1158
    .line 1159
    .line 1160
    move-result v1

    .line 1161
    if-eqz v1, :cond_19

    .line 1162
    .line 1163
    const v1, 0x7f080304

    .line 1164
    .line 1165
    .line 1166
    invoke-static {v1, v9, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v12

    .line 1170
    invoke-static {v7, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v14

    .line 1174
    const/16 v20, 0x1b8

    .line 1175
    .line 1176
    const/16 v21, 0x78

    .line 1177
    .line 1178
    const/4 v13, 0x0

    .line 1179
    const/4 v15, 0x0

    .line 1180
    const/16 v16, 0x0

    .line 1181
    .line 1182
    const/16 v17, 0x0

    .line 1183
    .line 1184
    const/16 v18, 0x0

    .line 1185
    .line 1186
    move-object/from16 v19, v0

    .line 1187
    .line 1188
    invoke-static/range {v12 .. v21}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 1189
    .line 1190
    .line 1191
    goto :goto_16

    .line 1192
    :cond_19
    move-object/from16 v19, v0

    .line 1193
    .line 1194
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1195
    .line 1196
    .line 1197
    :goto_16
    return-object v11

    .line 1198
    :pswitch_15
    move-object/from16 v5, p1

    .line 1199
    .line 1200
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1201
    .line 1202
    move-object/from16 v0, p2

    .line 1203
    .line 1204
    check-cast v0, Ljava/lang/Integer;

    .line 1205
    .line 1206
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1207
    .line 1208
    .line 1209
    move-result v0

    .line 1210
    and-int/lit8 v1, v0, 0x3

    .line 1211
    .line 1212
    if-eq v1, v8, :cond_1a

    .line 1213
    .line 1214
    move v1, v10

    .line 1215
    goto :goto_17

    .line 1216
    :cond_1a
    move v1, v9

    .line 1217
    :goto_17
    and-int/2addr v0, v10

    .line 1218
    invoke-virtual {v5, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1219
    .line 1220
    .line 1221
    move-result v0

    .line 1222
    if-eqz v0, :cond_1b

    .line 1223
    .line 1224
    const v0, 0x7f080128

    .line 1225
    .line 1226
    .line 1227
    invoke-static {v0, v9, v5}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v0

    .line 1231
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1232
    .line 1233
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v1

    .line 1237
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1238
    .line 1239
    iget-wide v3, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 1240
    .line 1241
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v2

    .line 1245
    const/16 v6, 0x1b8

    .line 1246
    .line 1247
    const/4 v7, 0x0

    .line 1248
    const/4 v1, 0x0

    .line 1249
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1250
    .line 1251
    .line 1252
    goto :goto_18

    .line 1253
    :cond_1b
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1254
    .line 1255
    .line 1256
    :goto_18
    return-object v11

    .line 1257
    :pswitch_16
    move-object/from16 v0, p1

    .line 1258
    .line 1259
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1260
    .line 1261
    move-object/from16 v2, p2

    .line 1262
    .line 1263
    check-cast v2, Ljava/lang/Integer;

    .line 1264
    .line 1265
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1266
    .line 1267
    .line 1268
    move-result v2

    .line 1269
    and-int/lit8 v3, v2, 0x3

    .line 1270
    .line 1271
    if-eq v3, v8, :cond_1c

    .line 1272
    .line 1273
    move v3, v10

    .line 1274
    goto :goto_19

    .line 1275
    :cond_1c
    move v3, v9

    .line 1276
    :goto_19
    and-int/2addr v2, v10

    .line 1277
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1278
    .line 1279
    .line 1280
    move-result v2

    .line 1281
    if-eqz v2, :cond_1d

    .line 1282
    .line 1283
    invoke-static {v1, v9, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v12

    .line 1287
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1288
    .line 1289
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v1

    .line 1293
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1294
    .line 1295
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 1296
    .line 1297
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v14

    .line 1301
    const/16 v18, 0x1b8

    .line 1302
    .line 1303
    const/16 v19, 0x0

    .line 1304
    .line 1305
    const/4 v13, 0x0

    .line 1306
    move-object/from16 v17, v0

    .line 1307
    .line 1308
    move-wide v15, v1

    .line 1309
    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1310
    .line 1311
    .line 1312
    goto :goto_1a

    .line 1313
    :cond_1d
    move-object/from16 v17, v0

    .line 1314
    .line 1315
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1316
    .line 1317
    .line 1318
    :goto_1a
    return-object v11

    .line 1319
    :pswitch_17
    move-object/from16 v5, p1

    .line 1320
    .line 1321
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1322
    .line 1323
    move-object/from16 v0, p2

    .line 1324
    .line 1325
    check-cast v0, Ljava/lang/Integer;

    .line 1326
    .line 1327
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1328
    .line 1329
    .line 1330
    move-result v0

    .line 1331
    and-int/lit8 v1, v0, 0x3

    .line 1332
    .line 1333
    if-eq v1, v8, :cond_1e

    .line 1334
    .line 1335
    move v1, v10

    .line 1336
    goto :goto_1b

    .line 1337
    :cond_1e
    move v1, v9

    .line 1338
    :goto_1b
    and-int/2addr v0, v10

    .line 1339
    invoke-virtual {v5, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1340
    .line 1341
    .line 1342
    move-result v0

    .line 1343
    if-eqz v0, :cond_1f

    .line 1344
    .line 1345
    const v0, 0x7f0801ad

    .line 1346
    .line 1347
    .line 1348
    invoke-static {v0, v9, v5}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v0

    .line 1352
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1353
    .line 1354
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v1

    .line 1358
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1359
    .line 1360
    iget-wide v3, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 1361
    .line 1362
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v2

    .line 1366
    const/16 v6, 0x1b8

    .line 1367
    .line 1368
    const/4 v7, 0x0

    .line 1369
    const/4 v1, 0x0

    .line 1370
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1371
    .line 1372
    .line 1373
    goto :goto_1c

    .line 1374
    :cond_1f
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1375
    .line 1376
    .line 1377
    :goto_1c
    return-object v11

    .line 1378
    :pswitch_18
    move-object/from16 v0, p1

    .line 1379
    .line 1380
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1381
    .line 1382
    move-object/from16 v1, p2

    .line 1383
    .line 1384
    check-cast v1, Ljava/lang/Integer;

    .line 1385
    .line 1386
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1387
    .line 1388
    .line 1389
    move-result v1

    .line 1390
    and-int/lit8 v2, v1, 0x3

    .line 1391
    .line 1392
    if-eq v2, v8, :cond_20

    .line 1393
    .line 1394
    move v2, v10

    .line 1395
    goto :goto_1d

    .line 1396
    :cond_20
    move v2, v9

    .line 1397
    :goto_1d
    and-int/2addr v1, v10

    .line 1398
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1399
    .line 1400
    .line 1401
    move-result v1

    .line 1402
    if-eqz v1, :cond_21

    .line 1403
    .line 1404
    const v1, 0x7f08012a

    .line 1405
    .line 1406
    .line 1407
    invoke-static {v1, v9, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v12

    .line 1411
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1412
    .line 1413
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v1

    .line 1417
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1418
    .line 1419
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 1420
    .line 1421
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v14

    .line 1425
    const/16 v18, 0x1b8

    .line 1426
    .line 1427
    const/16 v19, 0x0

    .line 1428
    .line 1429
    const/4 v13, 0x0

    .line 1430
    move-object/from16 v17, v0

    .line 1431
    .line 1432
    move-wide v15, v1

    .line 1433
    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1434
    .line 1435
    .line 1436
    goto :goto_1e

    .line 1437
    :cond_21
    move-object/from16 v17, v0

    .line 1438
    .line 1439
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1440
    .line 1441
    .line 1442
    :goto_1e
    return-object v11

    .line 1443
    :pswitch_19
    move-object/from16 v5, p1

    .line 1444
    .line 1445
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1446
    .line 1447
    move-object/from16 v0, p2

    .line 1448
    .line 1449
    check-cast v0, Ljava/lang/Integer;

    .line 1450
    .line 1451
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1452
    .line 1453
    .line 1454
    move-result v0

    .line 1455
    and-int/lit8 v1, v0, 0x3

    .line 1456
    .line 1457
    if-eq v1, v8, :cond_22

    .line 1458
    .line 1459
    move v1, v10

    .line 1460
    goto :goto_1f

    .line 1461
    :cond_22
    move v1, v9

    .line 1462
    :goto_1f
    and-int/2addr v0, v10

    .line 1463
    invoke-virtual {v5, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1464
    .line 1465
    .line 1466
    move-result v0

    .line 1467
    if-eqz v0, :cond_23

    .line 1468
    .line 1469
    const v0, 0x7f0801e7

    .line 1470
    .line 1471
    .line 1472
    invoke-static {v0, v9, v5}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v0

    .line 1476
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1477
    .line 1478
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v1

    .line 1482
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1483
    .line 1484
    iget-wide v3, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 1485
    .line 1486
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v2

    .line 1490
    const/16 v6, 0x1b8

    .line 1491
    .line 1492
    const/4 v7, 0x0

    .line 1493
    const/4 v1, 0x0

    .line 1494
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1495
    .line 1496
    .line 1497
    goto :goto_20

    .line 1498
    :cond_23
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1499
    .line 1500
    .line 1501
    :goto_20
    return-object v11

    .line 1502
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1503
    .line 1504
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1505
    .line 1506
    move-object/from16 v1, p2

    .line 1507
    .line 1508
    check-cast v1, Ljava/lang/Integer;

    .line 1509
    .line 1510
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1511
    .line 1512
    .line 1513
    move-result v1

    .line 1514
    and-int/lit8 v2, v1, 0x3

    .line 1515
    .line 1516
    if-eq v2, v8, :cond_24

    .line 1517
    .line 1518
    move v9, v10

    .line 1519
    :cond_24
    and-int/2addr v1, v10

    .line 1520
    invoke-virtual {v0, v1, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1521
    .line 1522
    .line 1523
    move-result v1

    .line 1524
    if-eqz v1, :cond_25

    .line 1525
    .line 1526
    goto :goto_21

    .line 1527
    :cond_25
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1528
    .line 1529
    .line 1530
    :goto_21
    return-object v11

    .line 1531
    :pswitch_1b
    move-object/from16 v0, p1

    .line 1532
    .line 1533
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1534
    .line 1535
    move-object/from16 v2, p2

    .line 1536
    .line 1537
    check-cast v2, Ljava/lang/Integer;

    .line 1538
    .line 1539
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1540
    .line 1541
    .line 1542
    move-result v2

    .line 1543
    and-int/lit8 v3, v2, 0x3

    .line 1544
    .line 1545
    if-eq v3, v8, :cond_26

    .line 1546
    .line 1547
    move v3, v10

    .line 1548
    goto :goto_22

    .line 1549
    :cond_26
    move v3, v9

    .line 1550
    :goto_22
    and-int/2addr v2, v10

    .line 1551
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1552
    .line 1553
    .line 1554
    move-result v2

    .line 1555
    if-eqz v2, :cond_27

    .line 1556
    .line 1557
    invoke-static {v1, v9, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v2

    .line 1561
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1562
    .line 1563
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v1

    .line 1567
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1568
    .line 1569
    iget-wide v3, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 1570
    .line 1571
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v1

    .line 1575
    const/16 v8, 0x1b8

    .line 1576
    .line 1577
    const/4 v9, 0x0

    .line 1578
    move-wide v5, v3

    .line 1579
    const/4 v3, 0x0

    .line 1580
    move-object v7, v0

    .line 1581
    move-object v4, v1

    .line 1582
    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1583
    .line 1584
    .line 1585
    goto :goto_23

    .line 1586
    :cond_27
    move-object v7, v0

    .line 1587
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1588
    .line 1589
    .line 1590
    :goto_23
    return-object v11

    .line 1591
    :pswitch_1c
    move-object/from16 v0, p1

    .line 1592
    .line 1593
    check-cast v0, Lorg/wikipedia/feed/ForYouModule;

    .line 1594
    .line 1595
    move-object/from16 v1, p2

    .line 1596
    .line 1597
    check-cast v1, Lorg/wikipedia/feed/model/ForYouCard;

    .line 1598
    .line 1599
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1600
    .line 1601
    .line 1602
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1603
    .line 1604
    .line 1605
    return-object v11

    .line 1606
    nop

    .line 1607
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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

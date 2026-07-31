.class public final synthetic Lkotlinx/coroutines/CoroutineContextKt$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lkotlinx/coroutines/CoroutineContextKt$$ExternalSyntheticLambda0;->$r8$classId:I

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
    .locals 56

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget v1, v1, Lkotlinx/coroutines/CoroutineContextKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 6
    .line 7
    sget-object v2, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lorg/wikipedia/login/LoginClient;

    .line 8
    .line 9
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 10
    .line 11
    const/high16 v4, 0x3f800000    # 1.0f

    .line 12
    .line 13
    const v5, 0x7f12083f

    .line 14
    .line 15
    .line 16
    const v6, 0x7f080113

    .line 17
    .line 18
    .line 19
    const v7, 0x7f080144

    .line 20
    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 24
    .line 25
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    const/4 v11, 0x0

    .line 28
    const/4 v12, 0x2

    .line 29
    const/4 v13, 0x1

    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
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
    if-eq v2, v12, :cond_0

    .line 46
    .line 47
    move v11, v13

    .line 48
    :cond_0
    and-int/2addr v1, v13

    .line 49
    invoke-virtual {v0, v1, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    const v1, 0x7f1201fc

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v14

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
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 81
    .line 82
    const/16 v36, 0x0

    .line 83
    .line 84
    const v37, 0x1fffa

    .line 85
    .line 86
    .line 87
    const/4 v15, 0x0

    .line 88
    const/16 v18, 0x0

    .line 89
    .line 90
    const-wide/16 v19, 0x0

    .line 91
    .line 92
    const/16 v21, 0x0

    .line 93
    .line 94
    const/16 v22, 0x0

    .line 95
    .line 96
    const-wide/16 v23, 0x0

    .line 97
    .line 98
    const/16 v25, 0x0

    .line 99
    .line 100
    const-wide/16 v26, 0x0

    .line 101
    .line 102
    const/16 v28, 0x0

    .line 103
    .line 104
    const/16 v29, 0x0

    .line 105
    .line 106
    const/16 v30, 0x0

    .line 107
    .line 108
    const/16 v31, 0x0

    .line 109
    .line 110
    const/16 v32, 0x0

    .line 111
    .line 112
    const/16 v35, 0x0

    .line 113
    .line 114
    move-object/from16 v34, v0

    .line 115
    .line 116
    move-object/from16 v33, v1

    .line 117
    .line 118
    move-wide/from16 v16, v2

    .line 119
    .line 120
    invoke-static/range {v14 .. v37}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    move-object/from16 v34, v0

    .line 125
    .line 126
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 127
    .line 128
    .line 129
    :goto_0
    return-object v10

    .line 130
    :pswitch_0
    move-object v5, v0

    .line 131
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 132
    .line 133
    move-object/from16 v0, p2

    .line 134
    .line 135
    check-cast v0, Ljava/lang/Integer;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    and-int/lit8 v1, v0, 0x3

    .line 142
    .line 143
    if-eq v1, v12, :cond_2

    .line 144
    .line 145
    move v1, v13

    .line 146
    goto :goto_1

    .line 147
    :cond_2
    move v1, v11

    .line 148
    :goto_1
    and-int/2addr v0, v13

    .line 149
    invoke-virtual {v5, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    const v0, 0x7f0801ad

    .line 156
    .line 157
    .line 158
    invoke-static {v0, v11, v5}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 163
    .line 164
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 169
    .line 170
    iget-wide v3, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 171
    .line 172
    const/high16 v1, 0x41c00000    # 24.0f

    .line 173
    .line 174
    invoke-static {v9, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    const/16 v6, 0x1b8

    .line 179
    .line 180
    const/4 v7, 0x0

    .line 181
    const/4 v1, 0x0

    .line 182
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_3
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 187
    .line 188
    .line 189
    :goto_2
    return-object v10

    .line 190
    :pswitch_1
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 191
    .line 192
    move-object/from16 v1, p2

    .line 193
    .line 194
    check-cast v1, Ljava/lang/Integer;

    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    and-int/lit8 v2, v1, 0x3

    .line 201
    .line 202
    if-eq v2, v12, :cond_4

    .line 203
    .line 204
    move v11, v13

    .line 205
    :cond_4
    and-int/2addr v1, v13

    .line 206
    invoke-virtual {v0, v1, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_5

    .line 211
    .line 212
    const v1, 0x7f1203d9

    .line 213
    .line 214
    .line 215
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 226
    .line 227
    iget-object v1, v1, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 228
    .line 229
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 230
    .line 231
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 236
    .line 237
    iget-wide v13, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 238
    .line 239
    const/16 v33, 0x0

    .line 240
    .line 241
    const v34, 0x1fffa

    .line 242
    .line 243
    .line 244
    const/4 v12, 0x0

    .line 245
    const/4 v15, 0x0

    .line 246
    const-wide/16 v16, 0x0

    .line 247
    .line 248
    const/16 v18, 0x0

    .line 249
    .line 250
    const/16 v19, 0x0

    .line 251
    .line 252
    const-wide/16 v20, 0x0

    .line 253
    .line 254
    const/16 v22, 0x0

    .line 255
    .line 256
    const-wide/16 v23, 0x0

    .line 257
    .line 258
    const/16 v25, 0x0

    .line 259
    .line 260
    const/16 v26, 0x0

    .line 261
    .line 262
    const/16 v27, 0x0

    .line 263
    .line 264
    const/16 v28, 0x0

    .line 265
    .line 266
    const/16 v29, 0x0

    .line 267
    .line 268
    const/16 v32, 0x0

    .line 269
    .line 270
    move-object/from16 v31, v0

    .line 271
    .line 272
    move-object/from16 v30, v1

    .line 273
    .line 274
    invoke-static/range {v11 .. v34}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_5
    move-object/from16 v31, v0

    .line 279
    .line 280
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 281
    .line 282
    .line 283
    :goto_3
    return-object v10

    .line 284
    :pswitch_2
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 285
    .line 286
    move-object/from16 v1, p2

    .line 287
    .line 288
    check-cast v1, Ljava/lang/Integer;

    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    and-int/lit8 v2, v1, 0x3

    .line 295
    .line 296
    if-eq v2, v12, :cond_6

    .line 297
    .line 298
    move v11, v13

    .line 299
    :cond_6
    and-int/2addr v1, v13

    .line 300
    invoke-virtual {v0, v1, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_7

    .line 305
    .line 306
    const/high16 v1, 0x41400000    # 12.0f

    .line 307
    .line 308
    const/4 v2, 0x0

    .line 309
    invoke-static {v9, v1, v2, v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 310
    .line 311
    .line 312
    move-result-object v33

    .line 313
    const/16 v54, 0x0

    .line 314
    .line 315
    const v55, 0x3fffc

    .line 316
    .line 317
    .line 318
    const-string v32, "articles"

    .line 319
    .line 320
    const-wide/16 v34, 0x0

    .line 321
    .line 322
    const/16 v36, 0x0

    .line 323
    .line 324
    const-wide/16 v37, 0x0

    .line 325
    .line 326
    const/16 v39, 0x0

    .line 327
    .line 328
    const/16 v40, 0x0

    .line 329
    .line 330
    const-wide/16 v41, 0x0

    .line 331
    .line 332
    const/16 v43, 0x0

    .line 333
    .line 334
    const-wide/16 v44, 0x0

    .line 335
    .line 336
    const/16 v46, 0x0

    .line 337
    .line 338
    const/16 v47, 0x0

    .line 339
    .line 340
    const/16 v48, 0x0

    .line 341
    .line 342
    const/16 v49, 0x0

    .line 343
    .line 344
    const/16 v50, 0x0

    .line 345
    .line 346
    const/16 v51, 0x0

    .line 347
    .line 348
    const/16 v53, 0x36

    .line 349
    .line 350
    move-object/from16 v52, v0

    .line 351
    .line 352
    invoke-static/range {v32 .. v55}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 353
    .line 354
    .line 355
    goto :goto_4

    .line 356
    :cond_7
    move-object/from16 v52, v0

    .line 357
    .line 358
    invoke-virtual/range {v52 .. v52}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 359
    .line 360
    .line 361
    :goto_4
    return-object v10

    .line 362
    :pswitch_3
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 363
    .line 364
    move-object/from16 v1, p2

    .line 365
    .line 366
    check-cast v1, Ljava/lang/Integer;

    .line 367
    .line 368
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    and-int/lit8 v2, v1, 0x3

    .line 373
    .line 374
    if-eq v2, v12, :cond_8

    .line 375
    .line 376
    move v11, v13

    .line 377
    :cond_8
    and-int/2addr v1, v13

    .line 378
    invoke-virtual {v0, v1, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-eqz v1, :cond_9

    .line 383
    .line 384
    const/4 v6, 0x0

    .line 385
    const/16 v7, 0xe

    .line 386
    .line 387
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 388
    .line 389
    const/high16 v3, 0x41800000    # 16.0f

    .line 390
    .line 391
    const/4 v4, 0x0

    .line 392
    const/4 v5, 0x0

    .line 393
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 394
    .line 395
    .line 396
    move-result-object v12

    .line 397
    const/16 v33, 0x0

    .line 398
    .line 399
    const v34, 0x3fffc

    .line 400
    .line 401
    .line 402
    const-string v11, "$"

    .line 403
    .line 404
    const-wide/16 v13, 0x0

    .line 405
    .line 406
    const/4 v15, 0x0

    .line 407
    const-wide/16 v16, 0x0

    .line 408
    .line 409
    const/16 v18, 0x0

    .line 410
    .line 411
    const/16 v19, 0x0

    .line 412
    .line 413
    const-wide/16 v20, 0x0

    .line 414
    .line 415
    const/16 v22, 0x0

    .line 416
    .line 417
    const-wide/16 v23, 0x0

    .line 418
    .line 419
    const/16 v25, 0x0

    .line 420
    .line 421
    const/16 v26, 0x0

    .line 422
    .line 423
    const/16 v27, 0x0

    .line 424
    .line 425
    const/16 v28, 0x0

    .line 426
    .line 427
    const/16 v29, 0x0

    .line 428
    .line 429
    const/16 v30, 0x0

    .line 430
    .line 431
    const/16 v32, 0x36

    .line 432
    .line 433
    move-object/from16 v31, v0

    .line 434
    .line 435
    invoke-static/range {v11 .. v34}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 436
    .line 437
    .line 438
    goto :goto_5

    .line 439
    :cond_9
    move-object/from16 v31, v0

    .line 440
    .line 441
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 442
    .line 443
    .line 444
    :goto_5
    return-object v10

    .line 445
    :pswitch_4
    move-object v5, v0

    .line 446
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 447
    .line 448
    move-object/from16 v0, p2

    .line 449
    .line 450
    check-cast v0, Ljava/lang/Integer;

    .line 451
    .line 452
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    and-int/lit8 v1, v0, 0x3

    .line 457
    .line 458
    if-eq v1, v12, :cond_a

    .line 459
    .line 460
    move v1, v13

    .line 461
    goto :goto_6

    .line 462
    :cond_a
    move v1, v11

    .line 463
    :goto_6
    and-int/2addr v0, v13

    .line 464
    invoke-virtual {v5, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    if-eqz v0, :cond_b

    .line 469
    .line 470
    const v0, 0x7f0800c2

    .line 471
    .line 472
    .line 473
    invoke-static {v0, v11, v5}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 478
    .line 479
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 484
    .line 485
    iget-wide v3, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->destructiveColor:J

    .line 486
    .line 487
    const/16 v6, 0x38

    .line 488
    .line 489
    const/4 v7, 0x4

    .line 490
    const/4 v1, 0x0

    .line 491
    const/4 v2, 0x0

    .line 492
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 493
    .line 494
    .line 495
    goto :goto_7

    .line 496
    :cond_b
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 497
    .line 498
    .line 499
    :goto_7
    return-object v10

    .line 500
    :pswitch_5
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 501
    .line 502
    move-object/from16 v1, p2

    .line 503
    .line 504
    check-cast v1, Ljava/lang/Integer;

    .line 505
    .line 506
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    and-int/lit8 v2, v1, 0x3

    .line 511
    .line 512
    if-eq v2, v12, :cond_c

    .line 513
    .line 514
    move v11, v13

    .line 515
    :cond_c
    and-int/2addr v1, v13

    .line 516
    invoke-virtual {v0, v1, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    if-eqz v1, :cond_d

    .line 521
    .line 522
    const v1, 0x7f120183

    .line 523
    .line 524
    .line 525
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v11

    .line 529
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 530
    .line 531
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 536
    .line 537
    iget-object v1, v1, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 538
    .line 539
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 540
    .line 541
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 546
    .line 547
    iget-wide v13, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 548
    .line 549
    const/16 v33, 0x0

    .line 550
    .line 551
    const v34, 0x1fffa

    .line 552
    .line 553
    .line 554
    const/4 v12, 0x0

    .line 555
    const/4 v15, 0x0

    .line 556
    const-wide/16 v16, 0x0

    .line 557
    .line 558
    const/16 v18, 0x0

    .line 559
    .line 560
    const/16 v19, 0x0

    .line 561
    .line 562
    const-wide/16 v20, 0x0

    .line 563
    .line 564
    const/16 v22, 0x0

    .line 565
    .line 566
    const-wide/16 v23, 0x0

    .line 567
    .line 568
    const/16 v25, 0x0

    .line 569
    .line 570
    const/16 v26, 0x0

    .line 571
    .line 572
    const/16 v27, 0x0

    .line 573
    .line 574
    const/16 v28, 0x0

    .line 575
    .line 576
    const/16 v29, 0x0

    .line 577
    .line 578
    const/16 v32, 0x0

    .line 579
    .line 580
    move-object/from16 v31, v0

    .line 581
    .line 582
    move-object/from16 v30, v1

    .line 583
    .line 584
    invoke-static/range {v11 .. v34}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 585
    .line 586
    .line 587
    goto :goto_8

    .line 588
    :cond_d
    move-object/from16 v31, v0

    .line 589
    .line 590
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 591
    .line 592
    .line 593
    :goto_8
    return-object v10

    .line 594
    :pswitch_6
    move-object v5, v0

    .line 595
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 596
    .line 597
    move-object/from16 v0, p2

    .line 598
    .line 599
    check-cast v0, Ljava/lang/Integer;

    .line 600
    .line 601
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 602
    .line 603
    .line 604
    move-result v0

    .line 605
    and-int/lit8 v1, v0, 0x3

    .line 606
    .line 607
    if-eq v1, v12, :cond_e

    .line 608
    .line 609
    move v1, v13

    .line 610
    goto :goto_9

    .line 611
    :cond_e
    move v1, v11

    .line 612
    :goto_9
    and-int/2addr v0, v13

    .line 613
    invoke-virtual {v5, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 614
    .line 615
    .line 616
    move-result v0

    .line 617
    if-eqz v0, :cond_f

    .line 618
    .line 619
    const v0, 0x7f080116

    .line 620
    .line 621
    .line 622
    invoke-static {v0, v11, v5}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 627
    .line 628
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 633
    .line 634
    iget-wide v3, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 635
    .line 636
    const/16 v6, 0x38

    .line 637
    .line 638
    const/4 v7, 0x4

    .line 639
    const/4 v1, 0x0

    .line 640
    const/4 v2, 0x0

    .line 641
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 642
    .line 643
    .line 644
    goto :goto_a

    .line 645
    :cond_f
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 646
    .line 647
    .line 648
    :goto_a
    return-object v10

    .line 649
    :pswitch_7
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 650
    .line 651
    move-object/from16 v1, p2

    .line 652
    .line 653
    check-cast v1, Ljava/lang/Integer;

    .line 654
    .line 655
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    and-int/lit8 v2, v1, 0x3

    .line 660
    .line 661
    if-eq v2, v12, :cond_10

    .line 662
    .line 663
    move v11, v13

    .line 664
    :cond_10
    and-int/2addr v1, v13

    .line 665
    invoke-virtual {v0, v1, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 666
    .line 667
    .line 668
    move-result v1

    .line 669
    if-eqz v1, :cond_11

    .line 670
    .line 671
    const v1, 0x7f12017a

    .line 672
    .line 673
    .line 674
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v11

    .line 678
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 679
    .line 680
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 685
    .line 686
    iget-object v1, v1, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 687
    .line 688
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 689
    .line 690
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 695
    .line 696
    iget-wide v13, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 697
    .line 698
    const/16 v33, 0x0

    .line 699
    .line 700
    const v34, 0x1fffa

    .line 701
    .line 702
    .line 703
    const/4 v12, 0x0

    .line 704
    const/4 v15, 0x0

    .line 705
    const-wide/16 v16, 0x0

    .line 706
    .line 707
    const/16 v18, 0x0

    .line 708
    .line 709
    const/16 v19, 0x0

    .line 710
    .line 711
    const-wide/16 v20, 0x0

    .line 712
    .line 713
    const/16 v22, 0x0

    .line 714
    .line 715
    const-wide/16 v23, 0x0

    .line 716
    .line 717
    const/16 v25, 0x0

    .line 718
    .line 719
    const/16 v26, 0x0

    .line 720
    .line 721
    const/16 v27, 0x0

    .line 722
    .line 723
    const/16 v28, 0x0

    .line 724
    .line 725
    const/16 v29, 0x0

    .line 726
    .line 727
    const/16 v32, 0x0

    .line 728
    .line 729
    move-object/from16 v31, v0

    .line 730
    .line 731
    move-object/from16 v30, v1

    .line 732
    .line 733
    invoke-static/range {v11 .. v34}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 734
    .line 735
    .line 736
    goto :goto_b

    .line 737
    :cond_11
    move-object/from16 v31, v0

    .line 738
    .line 739
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 740
    .line 741
    .line 742
    :goto_b
    return-object v10

    .line 743
    :pswitch_8
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 744
    .line 745
    move-object/from16 v1, p2

    .line 746
    .line 747
    check-cast v1, Ljava/lang/Integer;

    .line 748
    .line 749
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 750
    .line 751
    .line 752
    move-result v1

    .line 753
    and-int/lit8 v2, v1, 0x3

    .line 754
    .line 755
    if-eq v2, v12, :cond_12

    .line 756
    .line 757
    move v11, v13

    .line 758
    :cond_12
    and-int/2addr v1, v13

    .line 759
    invoke-virtual {v0, v1, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 760
    .line 761
    .line 762
    move-result v1

    .line 763
    if-eqz v1, :cond_13

    .line 764
    .line 765
    const v1, 0x7f12017c

    .line 766
    .line 767
    .line 768
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v32

    .line 772
    const/16 v54, 0x0

    .line 773
    .line 774
    const v55, 0x3fffe

    .line 775
    .line 776
    .line 777
    const/16 v33, 0x0

    .line 778
    .line 779
    const-wide/16 v34, 0x0

    .line 780
    .line 781
    const/16 v36, 0x0

    .line 782
    .line 783
    const-wide/16 v37, 0x0

    .line 784
    .line 785
    const/16 v39, 0x0

    .line 786
    .line 787
    const/16 v40, 0x0

    .line 788
    .line 789
    const-wide/16 v41, 0x0

    .line 790
    .line 791
    const/16 v43, 0x0

    .line 792
    .line 793
    const-wide/16 v44, 0x0

    .line 794
    .line 795
    const/16 v46, 0x0

    .line 796
    .line 797
    const/16 v47, 0x0

    .line 798
    .line 799
    const/16 v48, 0x0

    .line 800
    .line 801
    const/16 v49, 0x0

    .line 802
    .line 803
    const/16 v50, 0x0

    .line 804
    .line 805
    const/16 v51, 0x0

    .line 806
    .line 807
    const/16 v53, 0x0

    .line 808
    .line 809
    move-object/from16 v52, v0

    .line 810
    .line 811
    invoke-static/range {v32 .. v55}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 812
    .line 813
    .line 814
    goto :goto_c

    .line 815
    :cond_13
    move-object/from16 v52, v0

    .line 816
    .line 817
    invoke-virtual/range {v52 .. v52}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 818
    .line 819
    .line 820
    :goto_c
    return-object v10

    .line 821
    :pswitch_9
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 822
    .line 823
    move-object/from16 v1, p2

    .line 824
    .line 825
    check-cast v1, Ljava/lang/Integer;

    .line 826
    .line 827
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 828
    .line 829
    .line 830
    move-result v1

    .line 831
    and-int/lit8 v2, v1, 0x3

    .line 832
    .line 833
    if-eq v2, v12, :cond_14

    .line 834
    .line 835
    move v2, v13

    .line 836
    goto :goto_d

    .line 837
    :cond_14
    move v2, v11

    .line 838
    :goto_d
    and-int/2addr v1, v13

    .line 839
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 840
    .line 841
    .line 842
    move-result v1

    .line 843
    if-eqz v1, :cond_15

    .line 844
    .line 845
    const v1, -0x21c54fc9

    .line 846
    .line 847
    .line 848
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 849
    .line 850
    .line 851
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 852
    .line 853
    .line 854
    goto :goto_e

    .line 855
    :cond_15
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 856
    .line 857
    .line 858
    :goto_e
    return-object v10

    .line 859
    :pswitch_a
    move-object v7, v0

    .line 860
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 861
    .line 862
    move-object/from16 v0, p2

    .line 863
    .line 864
    check-cast v0, Ljava/lang/Integer;

    .line 865
    .line 866
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 867
    .line 868
    .line 869
    move-result v0

    .line 870
    and-int/lit8 v1, v0, 0x3

    .line 871
    .line 872
    if-eq v1, v12, :cond_16

    .line 873
    .line 874
    move v1, v13

    .line 875
    goto :goto_f

    .line 876
    :cond_16
    move v1, v11

    .line 877
    :goto_f
    and-int/2addr v0, v13

    .line 878
    invoke-virtual {v7, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 879
    .line 880
    .line 881
    move-result v0

    .line 882
    if-eqz v0, :cond_17

    .line 883
    .line 884
    const v0, 0x7f0802d9

    .line 885
    .line 886
    .line 887
    invoke-static {v0, v11, v7}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 888
    .line 889
    .line 890
    move-result-object v2

    .line 891
    const v0, 0x7f120848

    .line 892
    .line 893
    .line 894
    invoke-static {v0, v7}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v3

    .line 898
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 899
    .line 900
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object v0

    .line 904
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 905
    .line 906
    iget-wide v5, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 907
    .line 908
    const/16 v8, 0x8

    .line 909
    .line 910
    const/4 v9, 0x4

    .line 911
    const/4 v4, 0x0

    .line 912
    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 913
    .line 914
    .line 915
    goto :goto_10

    .line 916
    :cond_17
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 917
    .line 918
    .line 919
    :goto_10
    return-object v10

    .line 920
    :pswitch_b
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 921
    .line 922
    move-object/from16 v1, p2

    .line 923
    .line 924
    check-cast v1, Ljava/lang/Integer;

    .line 925
    .line 926
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 927
    .line 928
    .line 929
    move-result v1

    .line 930
    and-int/lit8 v2, v1, 0x3

    .line 931
    .line 932
    if-eq v2, v12, :cond_18

    .line 933
    .line 934
    move v2, v13

    .line 935
    goto :goto_11

    .line 936
    :cond_18
    move v2, v11

    .line 937
    :goto_11
    and-int/2addr v1, v13

    .line 938
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 939
    .line 940
    .line 941
    move-result v1

    .line 942
    if-eqz v1, :cond_19

    .line 943
    .line 944
    invoke-static {v7, v11, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 945
    .line 946
    .line 947
    move-result-object v11

    .line 948
    const v1, 0x7f120840

    .line 949
    .line 950
    .line 951
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v12

    .line 955
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 956
    .line 957
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    move-result-object v1

    .line 961
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 962
    .line 963
    iget-wide v14, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->placeholderColor:J

    .line 964
    .line 965
    const/16 v17, 0x8

    .line 966
    .line 967
    const/16 v18, 0x4

    .line 968
    .line 969
    const/4 v13, 0x0

    .line 970
    move-object/from16 v16, v0

    .line 971
    .line 972
    invoke-static/range {v11 .. v18}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 973
    .line 974
    .line 975
    goto :goto_12

    .line 976
    :cond_19
    move-object/from16 v16, v0

    .line 977
    .line 978
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 979
    .line 980
    .line 981
    :goto_12
    return-object v10

    .line 982
    :pswitch_c
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 983
    .line 984
    move-object/from16 v1, p2

    .line 985
    .line 986
    check-cast v1, Ljava/lang/Integer;

    .line 987
    .line 988
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 989
    .line 990
    .line 991
    move-result v1

    .line 992
    and-int/lit8 v2, v1, 0x3

    .line 993
    .line 994
    if-eq v2, v12, :cond_1a

    .line 995
    .line 996
    move v2, v13

    .line 997
    goto :goto_13

    .line 998
    :cond_1a
    move v2, v11

    .line 999
    :goto_13
    and-int/2addr v1, v13

    .line 1000
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v1

    .line 1004
    if-eqz v1, :cond_1b

    .line 1005
    .line 1006
    invoke-static {v6, v11, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v1

    .line 1010
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1011
    .line 1012
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v2

    .line 1016
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1017
    .line 1018
    iget-wide v3, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1019
    .line 1020
    move-object v2, v1

    .line 1021
    invoke-static {v5, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v1

    .line 1025
    const/16 v6, 0x8

    .line 1026
    .line 1027
    const/4 v7, 0x4

    .line 1028
    move-object v5, v0

    .line 1029
    move-object v0, v2

    .line 1030
    const/4 v2, 0x0

    .line 1031
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1032
    .line 1033
    .line 1034
    goto :goto_14

    .line 1035
    :cond_1b
    move-object v5, v0

    .line 1036
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1037
    .line 1038
    .line 1039
    :goto_14
    return-object v10

    .line 1040
    :pswitch_d
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1041
    .line 1042
    move-object/from16 v1, p2

    .line 1043
    .line 1044
    check-cast v1, Ljava/lang/Integer;

    .line 1045
    .line 1046
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1047
    .line 1048
    .line 1049
    move-result v1

    .line 1050
    and-int/lit8 v2, v1, 0x3

    .line 1051
    .line 1052
    if-eq v2, v12, :cond_1c

    .line 1053
    .line 1054
    move v2, v13

    .line 1055
    goto :goto_15

    .line 1056
    :cond_1c
    move v2, v11

    .line 1057
    :goto_15
    and-int/2addr v1, v13

    .line 1058
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1059
    .line 1060
    .line 1061
    move-result v1

    .line 1062
    if-eqz v1, :cond_1d

    .line 1063
    .line 1064
    invoke-static {v6, v11, v0}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v11

    .line 1068
    invoke-static {v5, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v12

    .line 1072
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1073
    .line 1074
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v1

    .line 1078
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1079
    .line 1080
    iget-wide v14, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1081
    .line 1082
    const/16 v17, 0x8

    .line 1083
    .line 1084
    const/16 v18, 0x4

    .line 1085
    .line 1086
    const/4 v13, 0x0

    .line 1087
    move-object/from16 v16, v0

    .line 1088
    .line 1089
    invoke-static/range {v11 .. v18}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1090
    .line 1091
    .line 1092
    goto :goto_16

    .line 1093
    :cond_1d
    move-object/from16 v16, v0

    .line 1094
    .line 1095
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1096
    .line 1097
    .line 1098
    :goto_16
    return-object v10

    .line 1099
    :pswitch_e
    move-object v7, v0

    .line 1100
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 1101
    .line 1102
    move-object/from16 v0, p2

    .line 1103
    .line 1104
    check-cast v0, Ljava/lang/Integer;

    .line 1105
    .line 1106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1107
    .line 1108
    .line 1109
    move-result v0

    .line 1110
    and-int/lit8 v1, v0, 0x3

    .line 1111
    .line 1112
    if-eq v1, v12, :cond_1e

    .line 1113
    .line 1114
    move v11, v13

    .line 1115
    :cond_1e
    and-int/2addr v0, v13

    .line 1116
    invoke-virtual {v7, v0, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v0

    .line 1120
    if-eqz v0, :cond_20

    .line 1121
    .line 1122
    invoke-static {v9, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v1

    .line 1126
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    if-ne v0, v3, :cond_1f

    .line 1131
    .line 1132
    new-instance v0, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 1133
    .line 1134
    invoke-direct {v0, v12}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1138
    .line 1139
    .line 1140
    :cond_1f
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1141
    .line 1142
    sget-object v6, Lorg/wikipedia/compose/components/TabsBoxKt;->lambda$1632420701:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1143
    .line 1144
    const/16 v8, 0x6036

    .line 1145
    .line 1146
    const/16 v9, 0xc

    .line 1147
    .line 1148
    const-wide/16 v2, 0x0

    .line 1149
    .line 1150
    const-wide/16 v4, 0x0

    .line 1151
    .line 1152
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/compose/components/TabsBoxKt;->AppButton-t6yy7ic(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 1153
    .line 1154
    .line 1155
    goto :goto_17

    .line 1156
    :cond_20
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1157
    .line 1158
    .line 1159
    :goto_17
    return-object v10

    .line 1160
    :pswitch_f
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1161
    .line 1162
    move-object/from16 v1, p2

    .line 1163
    .line 1164
    check-cast v1, Ljava/lang/Integer;

    .line 1165
    .line 1166
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1167
    .line 1168
    .line 1169
    move-result v1

    .line 1170
    and-int/lit8 v2, v1, 0x3

    .line 1171
    .line 1172
    if-eq v2, v12, :cond_21

    .line 1173
    .line 1174
    move v11, v13

    .line 1175
    :cond_21
    and-int/2addr v1, v13

    .line 1176
    invoke-virtual {v0, v1, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1177
    .line 1178
    .line 1179
    move-result v1

    .line 1180
    if-eqz v1, :cond_22

    .line 1181
    .line 1182
    const/16 v33, 0x0

    .line 1183
    .line 1184
    const v34, 0x3fffe

    .line 1185
    .line 1186
    .line 1187
    const-string v11, "Add"

    .line 1188
    .line 1189
    const/4 v12, 0x0

    .line 1190
    const-wide/16 v13, 0x0

    .line 1191
    .line 1192
    const/4 v15, 0x0

    .line 1193
    const-wide/16 v16, 0x0

    .line 1194
    .line 1195
    const/16 v18, 0x0

    .line 1196
    .line 1197
    const/16 v19, 0x0

    .line 1198
    .line 1199
    const-wide/16 v20, 0x0

    .line 1200
    .line 1201
    const/16 v22, 0x0

    .line 1202
    .line 1203
    const-wide/16 v23, 0x0

    .line 1204
    .line 1205
    const/16 v25, 0x0

    .line 1206
    .line 1207
    const/16 v26, 0x0

    .line 1208
    .line 1209
    const/16 v27, 0x0

    .line 1210
    .line 1211
    const/16 v28, 0x0

    .line 1212
    .line 1213
    const/16 v29, 0x0

    .line 1214
    .line 1215
    const/16 v30, 0x0

    .line 1216
    .line 1217
    const/16 v32, 0x6

    .line 1218
    .line 1219
    move-object/from16 v31, v0

    .line 1220
    .line 1221
    invoke-static/range {v11 .. v34}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1222
    .line 1223
    .line 1224
    goto :goto_18

    .line 1225
    :cond_22
    move-object/from16 v31, v0

    .line 1226
    .line 1227
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1228
    .line 1229
    .line 1230
    :goto_18
    return-object v10

    .line 1231
    :pswitch_10
    move-object v7, v0

    .line 1232
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 1233
    .line 1234
    move-object/from16 v0, p2

    .line 1235
    .line 1236
    check-cast v0, Ljava/lang/Integer;

    .line 1237
    .line 1238
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1239
    .line 1240
    .line 1241
    move-result v0

    .line 1242
    and-int/lit8 v1, v0, 0x3

    .line 1243
    .line 1244
    if-eq v1, v12, :cond_23

    .line 1245
    .line 1246
    move v11, v13

    .line 1247
    :cond_23
    and-int/2addr v0, v13

    .line 1248
    invoke-virtual {v7, v0, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1249
    .line 1250
    .line 1251
    move-result v0

    .line 1252
    if-eqz v0, :cond_25

    .line 1253
    .line 1254
    invoke-static {v9, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v1

    .line 1258
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v0

    .line 1262
    if-ne v0, v3, :cond_24

    .line 1263
    .line 1264
    new-instance v0, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;

    .line 1265
    .line 1266
    invoke-direct {v0, v13}, Lorg/wikipedia/database/AppDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1270
    .line 1271
    .line 1272
    :cond_24
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1273
    .line 1274
    sget-object v6, Lorg/wikipedia/compose/components/TabsBoxKt;->lambda$1536430504:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1275
    .line 1276
    const/16 v8, 0x6036

    .line 1277
    .line 1278
    const/16 v9, 0xc

    .line 1279
    .line 1280
    const-wide/16 v2, 0x0

    .line 1281
    .line 1282
    const-wide/16 v4, 0x0

    .line 1283
    .line 1284
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/compose/components/TabsBoxKt;->AppButton-t6yy7ic(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 1285
    .line 1286
    .line 1287
    goto :goto_19

    .line 1288
    :cond_25
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1289
    .line 1290
    .line 1291
    :goto_19
    return-object v10

    .line 1292
    :pswitch_11
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1293
    .line 1294
    move-object/from16 v1, p2

    .line 1295
    .line 1296
    check-cast v1, Ljava/lang/Integer;

    .line 1297
    .line 1298
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1299
    .line 1300
    .line 1301
    move-result v1

    .line 1302
    and-int/lit8 v2, v1, 0x3

    .line 1303
    .line 1304
    if-eq v2, v12, :cond_26

    .line 1305
    .line 1306
    move v11, v13

    .line 1307
    :cond_26
    and-int/2addr v1, v13

    .line 1308
    invoke-virtual {v0, v1, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1309
    .line 1310
    .line 1311
    move-result v1

    .line 1312
    if-eqz v1, :cond_27

    .line 1313
    .line 1314
    const/16 v33, 0x0

    .line 1315
    .line 1316
    const v34, 0x3fffe

    .line 1317
    .line 1318
    .line 1319
    const-string v11, "Add"

    .line 1320
    .line 1321
    const/4 v12, 0x0

    .line 1322
    const-wide/16 v13, 0x0

    .line 1323
    .line 1324
    const/4 v15, 0x0

    .line 1325
    const-wide/16 v16, 0x0

    .line 1326
    .line 1327
    const/16 v18, 0x0

    .line 1328
    .line 1329
    const/16 v19, 0x0

    .line 1330
    .line 1331
    const-wide/16 v20, 0x0

    .line 1332
    .line 1333
    const/16 v22, 0x0

    .line 1334
    .line 1335
    const-wide/16 v23, 0x0

    .line 1336
    .line 1337
    const/16 v25, 0x0

    .line 1338
    .line 1339
    const/16 v26, 0x0

    .line 1340
    .line 1341
    const/16 v27, 0x0

    .line 1342
    .line 1343
    const/16 v28, 0x0

    .line 1344
    .line 1345
    const/16 v29, 0x0

    .line 1346
    .line 1347
    const/16 v30, 0x0

    .line 1348
    .line 1349
    const/16 v32, 0x6

    .line 1350
    .line 1351
    move-object/from16 v31, v0

    .line 1352
    .line 1353
    invoke-static/range {v11 .. v34}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1354
    .line 1355
    .line 1356
    goto :goto_1a

    .line 1357
    :cond_27
    move-object/from16 v31, v0

    .line 1358
    .line 1359
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1360
    .line 1361
    .line 1362
    :goto_1a
    return-object v10

    .line 1363
    :pswitch_12
    move-object v5, v0

    .line 1364
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1365
    .line 1366
    move-object/from16 v0, p2

    .line 1367
    .line 1368
    check-cast v0, Ljava/lang/Integer;

    .line 1369
    .line 1370
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1371
    .line 1372
    .line 1373
    move-result v0

    .line 1374
    and-int/lit8 v1, v0, 0x3

    .line 1375
    .line 1376
    if-eq v1, v12, :cond_28

    .line 1377
    .line 1378
    move v1, v13

    .line 1379
    goto :goto_1b

    .line 1380
    :cond_28
    move v1, v11

    .line 1381
    :goto_1b
    and-int/2addr v0, v13

    .line 1382
    invoke-virtual {v5, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1383
    .line 1384
    .line 1385
    move-result v0

    .line 1386
    if-eqz v0, :cond_29

    .line 1387
    .line 1388
    invoke-static {v7, v11, v5}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v0

    .line 1392
    const v1, 0x7f120140

    .line 1393
    .line 1394
    .line 1395
    invoke-static {v1, v5}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v1

    .line 1399
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1400
    .line 1401
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v2

    .line 1405
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1406
    .line 1407
    iget-wide v3, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1408
    .line 1409
    const/16 v6, 0x8

    .line 1410
    .line 1411
    const/4 v7, 0x4

    .line 1412
    const/4 v2, 0x0

    .line 1413
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1414
    .line 1415
    .line 1416
    goto :goto_1c

    .line 1417
    :cond_29
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1418
    .line 1419
    .line 1420
    :goto_1c
    return-object v10

    .line 1421
    :pswitch_13
    check-cast v0, Lkotlin/reflect/KClass;

    .line 1422
    .line 1423
    move-object/from16 v1, p2

    .line 1424
    .line 1425
    check-cast v1, Ljava/util/List;

    .line 1426
    .line 1427
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1428
    .line 1429
    .line 1430
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1431
    .line 1432
    .line 1433
    invoke-static {v2, v1, v13}, Lkotlin/TuplesKt;->serializersForParameters(Lorg/wikipedia/login/LoginClient;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v2

    .line 1437
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1438
    .line 1439
    .line 1440
    new-instance v3, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;

    .line 1441
    .line 1442
    const/4 v4, 0x3

    .line 1443
    invoke-direct {v3, v1, v4}, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;I)V

    .line 1444
    .line 1445
    .line 1446
    invoke-static {v0, v2, v3}, Lkotlin/TuplesKt;->parametrizedSerializerOrNull(Lkotlin/reflect/KClass;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/KSerializer;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v0

    .line 1450
    if-eqz v0, :cond_2a

    .line 1451
    .line 1452
    invoke-static {v0}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v8

    .line 1456
    :cond_2a
    return-object v8

    .line 1457
    :pswitch_14
    check-cast v0, Lkotlin/reflect/KClass;

    .line 1458
    .line 1459
    move-object/from16 v1, p2

    .line 1460
    .line 1461
    check-cast v1, Ljava/util/List;

    .line 1462
    .line 1463
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1464
    .line 1465
    .line 1466
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1467
    .line 1468
    .line 1469
    invoke-static {v2, v1, v13}, Lkotlin/TuplesKt;->serializersForParameters(Lorg/wikipedia/login/LoginClient;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v2

    .line 1473
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1474
    .line 1475
    .line 1476
    new-instance v3, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;

    .line 1477
    .line 1478
    invoke-direct {v3, v1, v12}, Lokhttp3/Handshake$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;I)V

    .line 1479
    .line 1480
    .line 1481
    invoke-static {v0, v2, v3}, Lkotlin/TuplesKt;->parametrizedSerializerOrNull(Lkotlin/reflect/KClass;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/KSerializer;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v0

    .line 1485
    return-object v0

    .line 1486
    :pswitch_15
    check-cast v0, Lkotlinx/coroutines/internal/ThreadState;

    .line 1487
    .line 1488
    move-object/from16 v1, p2

    .line 1489
    .line 1490
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 1491
    .line 1492
    instance-of v2, v1, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 1493
    .line 1494
    if-eqz v2, :cond_2b

    .line 1495
    .line 1496
    check-cast v1, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 1497
    .line 1498
    iget-object v2, v0, Lkotlinx/coroutines/internal/ThreadState;->context:Lkotlin/coroutines/CoroutineContext;

    .line 1499
    .line 1500
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ThreadLocalElement;->updateThreadContext()Ljava/lang/Object;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v2

    .line 1504
    iget-object v3, v0, Lkotlinx/coroutines/internal/ThreadState;->values:[Ljava/lang/Object;

    .line 1505
    .line 1506
    iget v4, v0, Lkotlinx/coroutines/internal/ThreadState;->i:I

    .line 1507
    .line 1508
    aput-object v2, v3, v4

    .line 1509
    .line 1510
    iget-object v2, v0, Lkotlinx/coroutines/internal/ThreadState;->elements:[Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 1511
    .line 1512
    add-int/lit8 v3, v4, 0x1

    .line 1513
    .line 1514
    iput v3, v0, Lkotlinx/coroutines/internal/ThreadState;->i:I

    .line 1515
    .line 1516
    aput-object v1, v2, v4

    .line 1517
    .line 1518
    :cond_2b
    return-object v0

    .line 1519
    :pswitch_16
    check-cast v0, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 1520
    .line 1521
    move-object/from16 v1, p2

    .line 1522
    .line 1523
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 1524
    .line 1525
    if-eqz v0, :cond_2c

    .line 1526
    .line 1527
    move-object v8, v0

    .line 1528
    goto :goto_1d

    .line 1529
    :cond_2c
    instance-of v0, v1, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 1530
    .line 1531
    if-eqz v0, :cond_2d

    .line 1532
    .line 1533
    move-object v8, v1

    .line 1534
    check-cast v8, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 1535
    .line 1536
    :cond_2d
    :goto_1d
    return-object v8

    .line 1537
    :pswitch_17
    move-object/from16 v1, p2

    .line 1538
    .line 1539
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 1540
    .line 1541
    instance-of v2, v1, Lkotlinx/coroutines/internal/ThreadLocalElement;

    .line 1542
    .line 1543
    if-eqz v2, :cond_31

    .line 1544
    .line 1545
    instance-of v2, v0, Ljava/lang/Integer;

    .line 1546
    .line 1547
    if-eqz v2, :cond_2e

    .line 1548
    .line 1549
    move-object v8, v0

    .line 1550
    check-cast v8, Ljava/lang/Integer;

    .line 1551
    .line 1552
    :cond_2e
    if-eqz v8, :cond_2f

    .line 1553
    .line 1554
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 1555
    .line 1556
    .line 1557
    move-result v0

    .line 1558
    goto :goto_1e

    .line 1559
    :cond_2f
    move v0, v13

    .line 1560
    :goto_1e
    if-nez v0, :cond_30

    .line 1561
    .line 1562
    move-object v0, v1

    .line 1563
    goto :goto_1f

    .line 1564
    :cond_30
    add-int/2addr v0, v13

    .line 1565
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v0

    .line 1569
    :cond_31
    :goto_1f
    return-object v0

    .line 1570
    :pswitch_18
    check-cast v0, Ljava/lang/Integer;

    .line 1571
    .line 1572
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1573
    .line 1574
    .line 1575
    move-result v0

    .line 1576
    move-object/from16 v1, p2

    .line 1577
    .line 1578
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 1579
    .line 1580
    add-int/2addr v0, v13

    .line 1581
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v0

    .line 1585
    return-object v0

    .line 1586
    :pswitch_19
    invoke-static/range {p1 .. p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1587
    .line 1588
    .line 1589
    move-result v0

    .line 1590
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v0

    .line 1594
    return-object v0

    .line 1595
    :pswitch_1a
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 1596
    .line 1597
    move-object/from16 v1, p2

    .line 1598
    .line 1599
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 1600
    .line 1601
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v0

    .line 1605
    return-object v0

    .line 1606
    :pswitch_1b
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 1607
    .line 1608
    move-object/from16 v1, p2

    .line 1609
    .line 1610
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 1611
    .line 1612
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v0

    .line 1616
    return-object v0

    .line 1617
    :pswitch_1c
    check-cast v0, Ljava/lang/Boolean;

    .line 1618
    .line 1619
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    .line 1621
    .line 1622
    move-result v0

    .line 1623
    move-object/from16 v1, p2

    .line 1624
    .line 1625
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 1626
    .line 1627
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v0

    .line 1631
    return-object v0

    .line 1632
    nop

    .line 1633
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

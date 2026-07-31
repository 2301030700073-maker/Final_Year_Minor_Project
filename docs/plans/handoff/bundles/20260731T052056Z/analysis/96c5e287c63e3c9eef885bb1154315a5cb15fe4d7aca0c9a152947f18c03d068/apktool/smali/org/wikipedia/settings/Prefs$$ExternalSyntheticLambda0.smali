.class public final synthetic Lorg/wikipedia/settings/Prefs$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lorg/wikipedia/settings/Prefs$$ExternalSyntheticLambda0;->$r8$classId:I

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
    .locals 48

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lorg/wikipedia/settings/Prefs$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object/from16 v0, p1

    .line 14
    .line 15
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    move-object/from16 v5, p2

    .line 18
    .line 19
    check-cast v5, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    and-int/lit8 v6, v5, 0x3

    .line 26
    .line 27
    if-eq v6, v2, :cond_0

    .line 28
    .line 29
    move v3, v4

    .line 30
    :cond_0
    and-int/lit8 v2, v5, 0x1

    .line 31
    .line 32
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-object v1

    .line 43
    :pswitch_0
    move-object/from16 v0, p1

    .line 44
    .line 45
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 46
    .line 47
    move-object/from16 v5, p2

    .line 48
    .line 49
    check-cast v5, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    and-int/lit8 v6, v5, 0x3

    .line 56
    .line 57
    if-eq v6, v2, :cond_2

    .line 58
    .line 59
    move v3, v4

    .line 60
    :cond_2
    and-int/lit8 v2, v5, 0x1

    .line 61
    .line 62
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-object v1

    .line 73
    :pswitch_1
    move-object/from16 v0, p1

    .line 74
    .line 75
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 76
    .line 77
    move-object/from16 v5, p2

    .line 78
    .line 79
    check-cast v5, Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    and-int/lit8 v6, v5, 0x3

    .line 86
    .line 87
    if-eq v6, v2, :cond_4

    .line 88
    .line 89
    move v3, v4

    .line 90
    :cond_4
    and-int/lit8 v2, v5, 0x1

    .line 91
    .line 92
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 105
    .line 106
    iget-wide v5, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 107
    .line 108
    const/16 v25, 0x0

    .line 109
    .line 110
    const v26, 0x3fffa

    .line 111
    .line 112
    .line 113
    const-string v3, "Today"

    .line 114
    .line 115
    const/4 v4, 0x0

    .line 116
    const/4 v7, 0x0

    .line 117
    const-wide/16 v8, 0x0

    .line 118
    .line 119
    const/4 v10, 0x0

    .line 120
    const/4 v11, 0x0

    .line 121
    const-wide/16 v12, 0x0

    .line 122
    .line 123
    const/4 v14, 0x0

    .line 124
    const-wide/16 v15, 0x0

    .line 125
    .line 126
    const/16 v17, 0x0

    .line 127
    .line 128
    const/16 v18, 0x0

    .line 129
    .line 130
    const/16 v19, 0x0

    .line 131
    .line 132
    const/16 v20, 0x0

    .line 133
    .line 134
    const/16 v21, 0x0

    .line 135
    .line 136
    const/16 v22, 0x0

    .line 137
    .line 138
    const/16 v24, 0x6

    .line 139
    .line 140
    move-object/from16 v23, v0

    .line 141
    .line 142
    invoke-static/range {v3 .. v26}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_5
    move-object/from16 v23, v0

    .line 147
    .line 148
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 149
    .line 150
    .line 151
    :goto_2
    return-object v1

    .line 152
    :pswitch_2
    move-object/from16 v0, p1

    .line 153
    .line 154
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 155
    .line 156
    move-object/from16 v5, p2

    .line 157
    .line 158
    check-cast v5, Ljava/lang/Integer;

    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    and-int/lit8 v6, v5, 0x3

    .line 165
    .line 166
    if-eq v6, v2, :cond_6

    .line 167
    .line 168
    move v3, v4

    .line 169
    :cond_6
    and-int/lit8 v2, v5, 0x1

    .line 170
    .line 171
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_7

    .line 176
    .line 177
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 184
    .line 185
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 186
    .line 187
    const/16 v46, 0x0

    .line 188
    .line 189
    const v47, 0x3fffa

    .line 190
    .line 191
    .line 192
    const-string v24, "YYYY-MM-DD"

    .line 193
    .line 194
    const/16 v25, 0x0

    .line 195
    .line 196
    const/16 v28, 0x0

    .line 197
    .line 198
    const-wide/16 v29, 0x0

    .line 199
    .line 200
    const/16 v31, 0x0

    .line 201
    .line 202
    const/16 v32, 0x0

    .line 203
    .line 204
    const-wide/16 v33, 0x0

    .line 205
    .line 206
    const/16 v35, 0x0

    .line 207
    .line 208
    const-wide/16 v36, 0x0

    .line 209
    .line 210
    const/16 v38, 0x0

    .line 211
    .line 212
    const/16 v39, 0x0

    .line 213
    .line 214
    const/16 v40, 0x0

    .line 215
    .line 216
    const/16 v41, 0x0

    .line 217
    .line 218
    const/16 v42, 0x0

    .line 219
    .line 220
    const/16 v43, 0x0

    .line 221
    .line 222
    const/16 v45, 0x6

    .line 223
    .line 224
    move-object/from16 v44, v0

    .line 225
    .line 226
    move-wide/from16 v26, v2

    .line 227
    .line 228
    invoke-static/range {v24 .. v47}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_7
    move-object/from16 v44, v0

    .line 233
    .line 234
    invoke-virtual/range {v44 .. v44}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 235
    .line 236
    .line 237
    :goto_3
    return-object v1

    .line 238
    :pswitch_3
    move-object/from16 v0, p1

    .line 239
    .line 240
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 241
    .line 242
    move-object/from16 v5, p2

    .line 243
    .line 244
    check-cast v5, Ljava/lang/Integer;

    .line 245
    .line 246
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    and-int/lit8 v6, v5, 0x3

    .line 251
    .line 252
    if-eq v6, v2, :cond_8

    .line 253
    .line 254
    move v3, v4

    .line 255
    :cond_8
    and-int/lit8 v2, v5, 0x1

    .line 256
    .line 257
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_9

    .line 262
    .line 263
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 264
    .line 265
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 270
    .line 271
    iget-wide v4, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 272
    .line 273
    const/16 v24, 0x0

    .line 274
    .line 275
    const v25, 0x3fffa

    .line 276
    .line 277
    .line 278
    const-string v2, "+"

    .line 279
    .line 280
    const/4 v3, 0x0

    .line 281
    const/4 v6, 0x0

    .line 282
    const-wide/16 v7, 0x0

    .line 283
    .line 284
    const/4 v9, 0x0

    .line 285
    const/4 v10, 0x0

    .line 286
    const-wide/16 v11, 0x0

    .line 287
    .line 288
    const/4 v13, 0x0

    .line 289
    const-wide/16 v14, 0x0

    .line 290
    .line 291
    const/16 v16, 0x0

    .line 292
    .line 293
    const/16 v17, 0x0

    .line 294
    .line 295
    const/16 v18, 0x0

    .line 296
    .line 297
    const/16 v19, 0x0

    .line 298
    .line 299
    const/16 v20, 0x0

    .line 300
    .line 301
    const/16 v21, 0x0

    .line 302
    .line 303
    const/16 v23, 0x6

    .line 304
    .line 305
    move-object/from16 v22, v0

    .line 306
    .line 307
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_9
    move-object/from16 v22, v0

    .line 312
    .line 313
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 314
    .line 315
    .line 316
    :goto_4
    return-object v1

    .line 317
    :pswitch_4
    move-object/from16 v0, p1

    .line 318
    .line 319
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 320
    .line 321
    move-object/from16 v5, p2

    .line 322
    .line 323
    check-cast v5, Ljava/lang/Integer;

    .line 324
    .line 325
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    and-int/lit8 v6, v5, 0x3

    .line 330
    .line 331
    if-eq v6, v2, :cond_a

    .line 332
    .line 333
    move v3, v4

    .line 334
    :cond_a
    and-int/lit8 v2, v5, 0x1

    .line 335
    .line 336
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-eqz v2, :cond_b

    .line 341
    .line 342
    const/16 v45, 0x0

    .line 343
    .line 344
    const v46, 0x3fffe

    .line 345
    .line 346
    .line 347
    const-string/jumbo v23, "\u2212"

    .line 348
    .line 349
    .line 350
    const/16 v24, 0x0

    .line 351
    .line 352
    const-wide/16 v25, 0x0

    .line 353
    .line 354
    const/16 v27, 0x0

    .line 355
    .line 356
    const-wide/16 v28, 0x0

    .line 357
    .line 358
    const/16 v30, 0x0

    .line 359
    .line 360
    const/16 v31, 0x0

    .line 361
    .line 362
    const-wide/16 v32, 0x0

    .line 363
    .line 364
    const/16 v34, 0x0

    .line 365
    .line 366
    const-wide/16 v35, 0x0

    .line 367
    .line 368
    const/16 v37, 0x0

    .line 369
    .line 370
    const/16 v38, 0x0

    .line 371
    .line 372
    const/16 v39, 0x0

    .line 373
    .line 374
    const/16 v40, 0x0

    .line 375
    .line 376
    const/16 v41, 0x0

    .line 377
    .line 378
    const/16 v42, 0x0

    .line 379
    .line 380
    const/16 v44, 0x6

    .line 381
    .line 382
    move-object/from16 v43, v0

    .line 383
    .line 384
    invoke-static/range {v23 .. v46}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 385
    .line 386
    .line 387
    goto :goto_5

    .line 388
    :cond_b
    move-object/from16 v43, v0

    .line 389
    .line 390
    invoke-virtual/range {v43 .. v43}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 391
    .line 392
    .line 393
    :goto_5
    return-object v1

    .line 394
    :pswitch_5
    move-object/from16 v0, p1

    .line 395
    .line 396
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 397
    .line 398
    move-object/from16 v5, p2

    .line 399
    .line 400
    check-cast v5, Ljava/lang/Integer;

    .line 401
    .line 402
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 403
    .line 404
    .line 405
    move-result v5

    .line 406
    and-int/lit8 v6, v5, 0x3

    .line 407
    .line 408
    if-eq v6, v2, :cond_c

    .line 409
    .line 410
    move v3, v4

    .line 411
    :cond_c
    and-int/lit8 v2, v5, 0x1

    .line 412
    .line 413
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    if-eqz v2, :cond_d

    .line 418
    .line 419
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 420
    .line 421
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 426
    .line 427
    iget-wide v4, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 428
    .line 429
    const/16 v24, 0x0

    .line 430
    .line 431
    const v25, 0x3fffa

    .line 432
    .line 433
    .line 434
    const-string v2, "YYYY-MM-DD"

    .line 435
    .line 436
    const/4 v3, 0x0

    .line 437
    const/4 v6, 0x0

    .line 438
    const-wide/16 v7, 0x0

    .line 439
    .line 440
    const/4 v9, 0x0

    .line 441
    const/4 v10, 0x0

    .line 442
    const-wide/16 v11, 0x0

    .line 443
    .line 444
    const/4 v13, 0x0

    .line 445
    const-wide/16 v14, 0x0

    .line 446
    .line 447
    const/16 v16, 0x0

    .line 448
    .line 449
    const/16 v17, 0x0

    .line 450
    .line 451
    const/16 v18, 0x0

    .line 452
    .line 453
    const/16 v19, 0x0

    .line 454
    .line 455
    const/16 v20, 0x0

    .line 456
    .line 457
    const/16 v21, 0x0

    .line 458
    .line 459
    const/16 v23, 0x6

    .line 460
    .line 461
    move-object/from16 v22, v0

    .line 462
    .line 463
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 464
    .line 465
    .line 466
    goto :goto_6

    .line 467
    :cond_d
    move-object/from16 v22, v0

    .line 468
    .line 469
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 470
    .line 471
    .line 472
    :goto_6
    return-object v1

    .line 473
    :pswitch_6
    move-object/from16 v0, p1

    .line 474
    .line 475
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 476
    .line 477
    move-object/from16 v5, p2

    .line 478
    .line 479
    check-cast v5, Ljava/lang/Integer;

    .line 480
    .line 481
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 482
    .line 483
    .line 484
    move-result v5

    .line 485
    and-int/lit8 v6, v5, 0x3

    .line 486
    .line 487
    if-eq v6, v2, :cond_e

    .line 488
    .line 489
    move v3, v4

    .line 490
    :cond_e
    and-int/lit8 v2, v5, 0x1

    .line 491
    .line 492
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    if-eqz v2, :cond_f

    .line 497
    .line 498
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 499
    .line 500
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 505
    .line 506
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 507
    .line 508
    const/16 v45, 0x0

    .line 509
    .line 510
    const v46, 0x3fffa

    .line 511
    .line 512
    .line 513
    const-string v23, "YYYY-MM-DD"

    .line 514
    .line 515
    const/16 v24, 0x0

    .line 516
    .line 517
    const/16 v27, 0x0

    .line 518
    .line 519
    const-wide/16 v28, 0x0

    .line 520
    .line 521
    const/16 v30, 0x0

    .line 522
    .line 523
    const/16 v31, 0x0

    .line 524
    .line 525
    const-wide/16 v32, 0x0

    .line 526
    .line 527
    const/16 v34, 0x0

    .line 528
    .line 529
    const-wide/16 v35, 0x0

    .line 530
    .line 531
    const/16 v37, 0x0

    .line 532
    .line 533
    const/16 v38, 0x0

    .line 534
    .line 535
    const/16 v39, 0x0

    .line 536
    .line 537
    const/16 v40, 0x0

    .line 538
    .line 539
    const/16 v41, 0x0

    .line 540
    .line 541
    const/16 v42, 0x0

    .line 542
    .line 543
    const/16 v44, 0x6

    .line 544
    .line 545
    move-object/from16 v43, v0

    .line 546
    .line 547
    move-wide/from16 v25, v2

    .line 548
    .line 549
    invoke-static/range {v23 .. v46}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 550
    .line 551
    .line 552
    goto :goto_7

    .line 553
    :cond_f
    move-object/from16 v43, v0

    .line 554
    .line 555
    invoke-virtual/range {v43 .. v43}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 556
    .line 557
    .line 558
    :goto_7
    return-object v1

    .line 559
    :pswitch_7
    move-object/from16 v0, p1

    .line 560
    .line 561
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 562
    .line 563
    move-object/from16 v5, p2

    .line 564
    .line 565
    check-cast v5, Ljava/lang/Integer;

    .line 566
    .line 567
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 568
    .line 569
    .line 570
    move-result v5

    .line 571
    and-int/lit8 v6, v5, 0x3

    .line 572
    .line 573
    if-eq v6, v2, :cond_10

    .line 574
    .line 575
    move v3, v4

    .line 576
    :cond_10
    and-int/lit8 v2, v5, 0x1

    .line 577
    .line 578
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    if-eqz v2, :cond_11

    .line 583
    .line 584
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 585
    .line 586
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 591
    .line 592
    iget-wide v4, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 593
    .line 594
    const/16 v24, 0x0

    .line 595
    .line 596
    const v25, 0x3fffa

    .line 597
    .line 598
    .line 599
    const-string v2, "Clear"

    .line 600
    .line 601
    const/4 v3, 0x0

    .line 602
    const/4 v6, 0x0

    .line 603
    const-wide/16 v7, 0x0

    .line 604
    .line 605
    const/4 v9, 0x0

    .line 606
    const/4 v10, 0x0

    .line 607
    const-wide/16 v11, 0x0

    .line 608
    .line 609
    const/4 v13, 0x0

    .line 610
    const-wide/16 v14, 0x0

    .line 611
    .line 612
    const/16 v16, 0x0

    .line 613
    .line 614
    const/16 v17, 0x0

    .line 615
    .line 616
    const/16 v18, 0x0

    .line 617
    .line 618
    const/16 v19, 0x0

    .line 619
    .line 620
    const/16 v20, 0x0

    .line 621
    .line 622
    const/16 v21, 0x0

    .line 623
    .line 624
    const/16 v23, 0x6

    .line 625
    .line 626
    move-object/from16 v22, v0

    .line 627
    .line 628
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 629
    .line 630
    .line 631
    goto :goto_8

    .line 632
    :cond_11
    move-object/from16 v22, v0

    .line 633
    .line 634
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 635
    .line 636
    .line 637
    :goto_8
    return-object v1

    .line 638
    :pswitch_8
    move-object/from16 v0, p1

    .line 639
    .line 640
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 641
    .line 642
    move-object/from16 v5, p2

    .line 643
    .line 644
    check-cast v5, Ljava/lang/Integer;

    .line 645
    .line 646
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 647
    .line 648
    .line 649
    move-result v5

    .line 650
    and-int/lit8 v6, v5, 0x3

    .line 651
    .line 652
    if-eq v6, v2, :cond_12

    .line 653
    .line 654
    move v3, v4

    .line 655
    :cond_12
    and-int/lit8 v2, v5, 0x1

    .line 656
    .line 657
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 658
    .line 659
    .line 660
    move-result v2

    .line 661
    if-eqz v2, :cond_13

    .line 662
    .line 663
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 664
    .line 665
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 670
    .line 671
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 672
    .line 673
    const/16 v45, 0x0

    .line 674
    .line 675
    const v46, 0x3fffa

    .line 676
    .line 677
    .line 678
    const-string v23, "3 Days Ago"

    .line 679
    .line 680
    const/16 v24, 0x0

    .line 681
    .line 682
    const/16 v27, 0x0

    .line 683
    .line 684
    const-wide/16 v28, 0x0

    .line 685
    .line 686
    const/16 v30, 0x0

    .line 687
    .line 688
    const/16 v31, 0x0

    .line 689
    .line 690
    const-wide/16 v32, 0x0

    .line 691
    .line 692
    const/16 v34, 0x0

    .line 693
    .line 694
    const-wide/16 v35, 0x0

    .line 695
    .line 696
    const/16 v37, 0x0

    .line 697
    .line 698
    const/16 v38, 0x0

    .line 699
    .line 700
    const/16 v39, 0x0

    .line 701
    .line 702
    const/16 v40, 0x0

    .line 703
    .line 704
    const/16 v41, 0x0

    .line 705
    .line 706
    const/16 v42, 0x0

    .line 707
    .line 708
    const/16 v44, 0x6

    .line 709
    .line 710
    move-object/from16 v43, v0

    .line 711
    .line 712
    move-wide/from16 v25, v2

    .line 713
    .line 714
    invoke-static/range {v23 .. v46}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 715
    .line 716
    .line 717
    goto :goto_9

    .line 718
    :cond_13
    move-object/from16 v43, v0

    .line 719
    .line 720
    invoke-virtual/range {v43 .. v43}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 721
    .line 722
    .line 723
    :goto_9
    return-object v1

    .line 724
    :pswitch_9
    move-object/from16 v0, p1

    .line 725
    .line 726
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 727
    .line 728
    move-object/from16 v5, p2

    .line 729
    .line 730
    check-cast v5, Ljava/lang/Integer;

    .line 731
    .line 732
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 733
    .line 734
    .line 735
    move-result v5

    .line 736
    and-int/lit8 v6, v5, 0x3

    .line 737
    .line 738
    if-eq v6, v2, :cond_14

    .line 739
    .line 740
    move v3, v4

    .line 741
    :cond_14
    and-int/lit8 v2, v5, 0x1

    .line 742
    .line 743
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 744
    .line 745
    .line 746
    move-result v2

    .line 747
    if-eqz v2, :cond_15

    .line 748
    .line 749
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 750
    .line 751
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v2

    .line 755
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 756
    .line 757
    iget-wide v4, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 758
    .line 759
    const/16 v24, 0x0

    .line 760
    .line 761
    const v25, 0x3fffa

    .line 762
    .line 763
    .line 764
    const-string v2, "Yesterday"

    .line 765
    .line 766
    const/4 v3, 0x0

    .line 767
    const/4 v6, 0x0

    .line 768
    const-wide/16 v7, 0x0

    .line 769
    .line 770
    const/4 v9, 0x0

    .line 771
    const/4 v10, 0x0

    .line 772
    const-wide/16 v11, 0x0

    .line 773
    .line 774
    const/4 v13, 0x0

    .line 775
    const-wide/16 v14, 0x0

    .line 776
    .line 777
    const/16 v16, 0x0

    .line 778
    .line 779
    const/16 v17, 0x0

    .line 780
    .line 781
    const/16 v18, 0x0

    .line 782
    .line 783
    const/16 v19, 0x0

    .line 784
    .line 785
    const/16 v20, 0x0

    .line 786
    .line 787
    const/16 v21, 0x0

    .line 788
    .line 789
    const/16 v23, 0x6

    .line 790
    .line 791
    move-object/from16 v22, v0

    .line 792
    .line 793
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 794
    .line 795
    .line 796
    goto :goto_a

    .line 797
    :cond_15
    move-object/from16 v22, v0

    .line 798
    .line 799
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 800
    .line 801
    .line 802
    :goto_a
    return-object v1

    .line 803
    :pswitch_a
    move-object/from16 v7, p1

    .line 804
    .line 805
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 806
    .line 807
    move-object/from16 v0, p2

    .line 808
    .line 809
    check-cast v0, Ljava/lang/Integer;

    .line 810
    .line 811
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 812
    .line 813
    .line 814
    move-result v0

    .line 815
    and-int/lit8 v5, v0, 0x3

    .line 816
    .line 817
    if-eq v5, v2, :cond_16

    .line 818
    .line 819
    move v2, v4

    .line 820
    goto :goto_b

    .line 821
    :cond_16
    move v2, v3

    .line 822
    :goto_b
    and-int/2addr v0, v4

    .line 823
    invoke-virtual {v7, v0, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 824
    .line 825
    .line 826
    move-result v0

    .line 827
    if-eqz v0, :cond_17

    .line 828
    .line 829
    const v0, 0x7f080113

    .line 830
    .line 831
    .line 832
    invoke-static {v0, v3, v7}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    const v0, 0x7f12045d

    .line 837
    .line 838
    .line 839
    invoke-static {v0, v7}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v3

    .line 843
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 844
    .line 845
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 850
    .line 851
    iget-wide v5, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 852
    .line 853
    const/16 v8, 0x8

    .line 854
    .line 855
    const/4 v9, 0x4

    .line 856
    const/4 v4, 0x0

    .line 857
    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 858
    .line 859
    .line 860
    goto :goto_c

    .line 861
    :cond_17
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 862
    .line 863
    .line 864
    :goto_c
    return-object v1

    .line 865
    :pswitch_b
    move-object/from16 v0, p1

    .line 866
    .line 867
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 868
    .line 869
    move-object/from16 v5, p2

    .line 870
    .line 871
    check-cast v5, Ljava/lang/Integer;

    .line 872
    .line 873
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 874
    .line 875
    .line 876
    move-result v5

    .line 877
    and-int/lit8 v6, v5, 0x3

    .line 878
    .line 879
    if-eq v6, v2, :cond_18

    .line 880
    .line 881
    move v3, v4

    .line 882
    :cond_18
    and-int/lit8 v2, v5, 0x1

    .line 883
    .line 884
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 885
    .line 886
    .line 887
    move-result v2

    .line 888
    if-eqz v2, :cond_19

    .line 889
    .line 890
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 891
    .line 892
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v2

    .line 896
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 897
    .line 898
    iget-wide v10, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 899
    .line 900
    const/16 v30, 0x0

    .line 901
    .line 902
    const v31, 0x3fffa

    .line 903
    .line 904
    .line 905
    const-string v8, "Year"

    .line 906
    .line 907
    const/4 v9, 0x0

    .line 908
    const/4 v12, 0x0

    .line 909
    const-wide/16 v13, 0x0

    .line 910
    .line 911
    const/4 v15, 0x0

    .line 912
    const/16 v16, 0x0

    .line 913
    .line 914
    const-wide/16 v17, 0x0

    .line 915
    .line 916
    const/16 v19, 0x0

    .line 917
    .line 918
    const-wide/16 v20, 0x0

    .line 919
    .line 920
    const/16 v22, 0x0

    .line 921
    .line 922
    const/16 v23, 0x0

    .line 923
    .line 924
    const/16 v24, 0x0

    .line 925
    .line 926
    const/16 v25, 0x0

    .line 927
    .line 928
    const/16 v26, 0x0

    .line 929
    .line 930
    const/16 v27, 0x0

    .line 931
    .line 932
    const/16 v29, 0x6

    .line 933
    .line 934
    move-object/from16 v28, v0

    .line 935
    .line 936
    invoke-static/range {v8 .. v31}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 937
    .line 938
    .line 939
    goto :goto_d

    .line 940
    :cond_19
    move-object/from16 v28, v0

    .line 941
    .line 942
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 943
    .line 944
    .line 945
    :goto_d
    return-object v1

    .line 946
    :pswitch_c
    move-object/from16 v0, p1

    .line 947
    .line 948
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 949
    .line 950
    move-object/from16 v5, p2

    .line 951
    .line 952
    check-cast v5, Ljava/lang/Integer;

    .line 953
    .line 954
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 955
    .line 956
    .line 957
    move-result v5

    .line 958
    and-int/lit8 v6, v5, 0x3

    .line 959
    .line 960
    if-eq v6, v2, :cond_1a

    .line 961
    .line 962
    move v3, v4

    .line 963
    :cond_1a
    and-int/lit8 v2, v5, 0x1

    .line 964
    .line 965
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 966
    .line 967
    .line 968
    move-result v2

    .line 969
    if-eqz v2, :cond_1b

    .line 970
    .line 971
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 972
    .line 973
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v2

    .line 977
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 978
    .line 979
    iget-wide v4, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 980
    .line 981
    const/16 v24, 0x0

    .line 982
    .line 983
    const v25, 0x3fffa

    .line 984
    .line 985
    .line 986
    const-string v2, "language code"

    .line 987
    .line 988
    const/4 v3, 0x0

    .line 989
    const/4 v6, 0x0

    .line 990
    const-wide/16 v7, 0x0

    .line 991
    .line 992
    const/4 v9, 0x0

    .line 993
    const/4 v10, 0x0

    .line 994
    const-wide/16 v11, 0x0

    .line 995
    .line 996
    const/4 v13, 0x0

    .line 997
    const-wide/16 v14, 0x0

    .line 998
    .line 999
    const/16 v16, 0x0

    .line 1000
    .line 1001
    const/16 v17, 0x0

    .line 1002
    .line 1003
    const/16 v18, 0x0

    .line 1004
    .line 1005
    const/16 v19, 0x0

    .line 1006
    .line 1007
    const/16 v20, 0x0

    .line 1008
    .line 1009
    const/16 v21, 0x0

    .line 1010
    .line 1011
    const/16 v23, 0x6

    .line 1012
    .line 1013
    move-object/from16 v22, v0

    .line 1014
    .line 1015
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1016
    .line 1017
    .line 1018
    goto :goto_e

    .line 1019
    :cond_1b
    move-object/from16 v22, v0

    .line 1020
    .line 1021
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1022
    .line 1023
    .line 1024
    :goto_e
    return-object v1

    .line 1025
    :pswitch_d
    move-object/from16 v0, p1

    .line 1026
    .line 1027
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1028
    .line 1029
    move-object/from16 v5, p2

    .line 1030
    .line 1031
    check-cast v5, Ljava/lang/Integer;

    .line 1032
    .line 1033
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1034
    .line 1035
    .line 1036
    move-result v5

    .line 1037
    and-int/lit8 v6, v5, 0x3

    .line 1038
    .line 1039
    if-eq v6, v2, :cond_1c

    .line 1040
    .line 1041
    move v3, v4

    .line 1042
    :cond_1c
    and-int/lit8 v2, v5, 0x1

    .line 1043
    .line 1044
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1045
    .line 1046
    .line 1047
    move-result v2

    .line 1048
    if-eqz v2, :cond_1d

    .line 1049
    .line 1050
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1051
    .line 1052
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v2

    .line 1056
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1057
    .line 1058
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1059
    .line 1060
    const/16 v45, 0x0

    .line 1061
    .line 1062
    const v46, 0x3fffa

    .line 1063
    .line 1064
    .line 1065
    const-string v23, "Title"

    .line 1066
    .line 1067
    const/16 v24, 0x0

    .line 1068
    .line 1069
    const/16 v27, 0x0

    .line 1070
    .line 1071
    const-wide/16 v28, 0x0

    .line 1072
    .line 1073
    const/16 v30, 0x0

    .line 1074
    .line 1075
    const/16 v31, 0x0

    .line 1076
    .line 1077
    const-wide/16 v32, 0x0

    .line 1078
    .line 1079
    const/16 v34, 0x0

    .line 1080
    .line 1081
    const-wide/16 v35, 0x0

    .line 1082
    .line 1083
    const/16 v37, 0x0

    .line 1084
    .line 1085
    const/16 v38, 0x0

    .line 1086
    .line 1087
    const/16 v39, 0x0

    .line 1088
    .line 1089
    const/16 v40, 0x0

    .line 1090
    .line 1091
    const/16 v41, 0x0

    .line 1092
    .line 1093
    const/16 v42, 0x0

    .line 1094
    .line 1095
    const/16 v44, 0x6

    .line 1096
    .line 1097
    move-object/from16 v43, v0

    .line 1098
    .line 1099
    move-wide/from16 v25, v2

    .line 1100
    .line 1101
    invoke-static/range {v23 .. v46}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1102
    .line 1103
    .line 1104
    goto :goto_f

    .line 1105
    :cond_1d
    move-object/from16 v43, v0

    .line 1106
    .line 1107
    invoke-virtual/range {v43 .. v43}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1108
    .line 1109
    .line 1110
    :goto_f
    return-object v1

    .line 1111
    :pswitch_e
    move-object/from16 v0, p1

    .line 1112
    .line 1113
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1114
    .line 1115
    move-object/from16 v5, p2

    .line 1116
    .line 1117
    check-cast v5, Ljava/lang/Integer;

    .line 1118
    .line 1119
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1120
    .line 1121
    .line 1122
    move-result v5

    .line 1123
    and-int/lit8 v6, v5, 0x3

    .line 1124
    .line 1125
    if-eq v6, v2, :cond_1e

    .line 1126
    .line 1127
    move v3, v4

    .line 1128
    :cond_1e
    and-int/lit8 v2, v5, 0x1

    .line 1129
    .line 1130
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1131
    .line 1132
    .line 1133
    move-result v2

    .line 1134
    if-eqz v2, :cond_1f

    .line 1135
    .line 1136
    const/16 v24, 0x0

    .line 1137
    .line 1138
    const v25, 0x3fffe

    .line 1139
    .line 1140
    .line 1141
    const-string v2, "Filter"

    .line 1142
    .line 1143
    const/4 v3, 0x0

    .line 1144
    const-wide/16 v4, 0x0

    .line 1145
    .line 1146
    const/4 v6, 0x0

    .line 1147
    const-wide/16 v7, 0x0

    .line 1148
    .line 1149
    const/4 v9, 0x0

    .line 1150
    const/4 v10, 0x0

    .line 1151
    const-wide/16 v11, 0x0

    .line 1152
    .line 1153
    const/4 v13, 0x0

    .line 1154
    const-wide/16 v14, 0x0

    .line 1155
    .line 1156
    const/16 v16, 0x0

    .line 1157
    .line 1158
    const/16 v17, 0x0

    .line 1159
    .line 1160
    const/16 v18, 0x0

    .line 1161
    .line 1162
    const/16 v19, 0x0

    .line 1163
    .line 1164
    const/16 v20, 0x0

    .line 1165
    .line 1166
    const/16 v21, 0x0

    .line 1167
    .line 1168
    const/16 v23, 0x6

    .line 1169
    .line 1170
    move-object/from16 v22, v0

    .line 1171
    .line 1172
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1173
    .line 1174
    .line 1175
    goto :goto_10

    .line 1176
    :cond_1f
    move-object/from16 v22, v0

    .line 1177
    .line 1178
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1179
    .line 1180
    .line 1181
    :goto_10
    return-object v1

    .line 1182
    :pswitch_f
    move-object/from16 v0, p1

    .line 1183
    .line 1184
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1185
    .line 1186
    move-object/from16 v5, p2

    .line 1187
    .line 1188
    check-cast v5, Ljava/lang/Integer;

    .line 1189
    .line 1190
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1191
    .line 1192
    .line 1193
    move-result v5

    .line 1194
    and-int/lit8 v6, v5, 0x3

    .line 1195
    .line 1196
    if-eq v6, v2, :cond_20

    .line 1197
    .line 1198
    move v3, v4

    .line 1199
    :cond_20
    and-int/lit8 v2, v5, 0x1

    .line 1200
    .line 1201
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1202
    .line 1203
    .line 1204
    move-result v2

    .line 1205
    if-eqz v2, :cond_21

    .line 1206
    .line 1207
    const/16 v45, 0x0

    .line 1208
    .line 1209
    const v46, 0x3fffe

    .line 1210
    .line 1211
    .line 1212
    const-string v23, "Year"

    .line 1213
    .line 1214
    const/16 v24, 0x0

    .line 1215
    .line 1216
    const-wide/16 v25, 0x0

    .line 1217
    .line 1218
    const/16 v27, 0x0

    .line 1219
    .line 1220
    const-wide/16 v28, 0x0

    .line 1221
    .line 1222
    const/16 v30, 0x0

    .line 1223
    .line 1224
    const/16 v31, 0x0

    .line 1225
    .line 1226
    const-wide/16 v32, 0x0

    .line 1227
    .line 1228
    const/16 v34, 0x0

    .line 1229
    .line 1230
    const-wide/16 v35, 0x0

    .line 1231
    .line 1232
    const/16 v37, 0x0

    .line 1233
    .line 1234
    const/16 v38, 0x0

    .line 1235
    .line 1236
    const/16 v39, 0x0

    .line 1237
    .line 1238
    const/16 v40, 0x0

    .line 1239
    .line 1240
    const/16 v41, 0x0

    .line 1241
    .line 1242
    const/16 v42, 0x0

    .line 1243
    .line 1244
    const/16 v44, 0x6

    .line 1245
    .line 1246
    move-object/from16 v43, v0

    .line 1247
    .line 1248
    invoke-static/range {v23 .. v46}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1249
    .line 1250
    .line 1251
    goto :goto_11

    .line 1252
    :cond_21
    move-object/from16 v43, v0

    .line 1253
    .line 1254
    invoke-virtual/range {v43 .. v43}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1255
    .line 1256
    .line 1257
    :goto_11
    return-object v1

    .line 1258
    :pswitch_10
    move-object/from16 v0, p1

    .line 1259
    .line 1260
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1261
    .line 1262
    move-object/from16 v5, p2

    .line 1263
    .line 1264
    check-cast v5, Ljava/lang/Integer;

    .line 1265
    .line 1266
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1267
    .line 1268
    .line 1269
    move-result v5

    .line 1270
    and-int/lit8 v6, v5, 0x3

    .line 1271
    .line 1272
    if-eq v6, v2, :cond_22

    .line 1273
    .line 1274
    move v3, v4

    .line 1275
    :cond_22
    and-int/lit8 v2, v5, 0x1

    .line 1276
    .line 1277
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1278
    .line 1279
    .line 1280
    move-result v2

    .line 1281
    if-eqz v2, :cond_23

    .line 1282
    .line 1283
    const/16 v24, 0x0

    .line 1284
    .line 1285
    const v25, 0x3fffe

    .line 1286
    .line 1287
    .line 1288
    const-string v2, "Delete Before"

    .line 1289
    .line 1290
    const/4 v3, 0x0

    .line 1291
    const-wide/16 v4, 0x0

    .line 1292
    .line 1293
    const/4 v6, 0x0

    .line 1294
    const-wide/16 v7, 0x0

    .line 1295
    .line 1296
    const/4 v9, 0x0

    .line 1297
    const/4 v10, 0x0

    .line 1298
    const-wide/16 v11, 0x0

    .line 1299
    .line 1300
    const/4 v13, 0x0

    .line 1301
    const-wide/16 v14, 0x0

    .line 1302
    .line 1303
    const/16 v16, 0x0

    .line 1304
    .line 1305
    const/16 v17, 0x0

    .line 1306
    .line 1307
    const/16 v18, 0x0

    .line 1308
    .line 1309
    const/16 v19, 0x0

    .line 1310
    .line 1311
    const/16 v20, 0x0

    .line 1312
    .line 1313
    const/16 v21, 0x0

    .line 1314
    .line 1315
    const/16 v23, 0x6

    .line 1316
    .line 1317
    move-object/from16 v22, v0

    .line 1318
    .line 1319
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1320
    .line 1321
    .line 1322
    goto :goto_12

    .line 1323
    :cond_23
    move-object/from16 v22, v0

    .line 1324
    .line 1325
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1326
    .line 1327
    .line 1328
    :goto_12
    return-object v1

    .line 1329
    :pswitch_11
    move-object/from16 v0, p1

    .line 1330
    .line 1331
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1332
    .line 1333
    move-object/from16 v5, p2

    .line 1334
    .line 1335
    check-cast v5, Ljava/lang/Integer;

    .line 1336
    .line 1337
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1338
    .line 1339
    .line 1340
    move-result v5

    .line 1341
    and-int/lit8 v6, v5, 0x3

    .line 1342
    .line 1343
    if-eq v6, v2, :cond_24

    .line 1344
    .line 1345
    move v3, v4

    .line 1346
    :cond_24
    and-int/lit8 v2, v5, 0x1

    .line 1347
    .line 1348
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1349
    .line 1350
    .line 1351
    move-result v2

    .line 1352
    if-eqz v2, :cond_25

    .line 1353
    .line 1354
    const/16 v45, 0x0

    .line 1355
    .line 1356
    const v46, 0x3fffe

    .line 1357
    .line 1358
    .line 1359
    const-string v23, "Years before"

    .line 1360
    .line 1361
    const/16 v24, 0x0

    .line 1362
    .line 1363
    const-wide/16 v25, 0x0

    .line 1364
    .line 1365
    const/16 v27, 0x0

    .line 1366
    .line 1367
    const-wide/16 v28, 0x0

    .line 1368
    .line 1369
    const/16 v30, 0x0

    .line 1370
    .line 1371
    const/16 v31, 0x0

    .line 1372
    .line 1373
    const-wide/16 v32, 0x0

    .line 1374
    .line 1375
    const/16 v34, 0x0

    .line 1376
    .line 1377
    const-wide/16 v35, 0x0

    .line 1378
    .line 1379
    const/16 v37, 0x0

    .line 1380
    .line 1381
    const/16 v38, 0x0

    .line 1382
    .line 1383
    const/16 v39, 0x0

    .line 1384
    .line 1385
    const/16 v40, 0x0

    .line 1386
    .line 1387
    const/16 v41, 0x0

    .line 1388
    .line 1389
    const/16 v42, 0x0

    .line 1390
    .line 1391
    const/16 v44, 0x6

    .line 1392
    .line 1393
    move-object/from16 v43, v0

    .line 1394
    .line 1395
    invoke-static/range {v23 .. v46}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1396
    .line 1397
    .line 1398
    goto :goto_13

    .line 1399
    :cond_25
    move-object/from16 v43, v0

    .line 1400
    .line 1401
    invoke-virtual/range {v43 .. v43}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1402
    .line 1403
    .line 1404
    :goto_13
    return-object v1

    .line 1405
    :pswitch_12
    move-object/from16 v0, p1

    .line 1406
    .line 1407
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1408
    .line 1409
    move-object/from16 v5, p2

    .line 1410
    .line 1411
    check-cast v5, Ljava/lang/Integer;

    .line 1412
    .line 1413
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1414
    .line 1415
    .line 1416
    move-result v5

    .line 1417
    and-int/lit8 v6, v5, 0x3

    .line 1418
    .line 1419
    if-eq v6, v2, :cond_26

    .line 1420
    .line 1421
    move v3, v4

    .line 1422
    :cond_26
    and-int/lit8 v2, v5, 0x1

    .line 1423
    .line 1424
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1425
    .line 1426
    .line 1427
    move-result v2

    .line 1428
    if-eqz v2, :cond_27

    .line 1429
    .line 1430
    const/16 v24, 0x0

    .line 1431
    .line 1432
    const v25, 0x3fffe

    .line 1433
    .line 1434
    .line 1435
    const-string v2, "Add Random Entries"

    .line 1436
    .line 1437
    const/4 v3, 0x0

    .line 1438
    const-wide/16 v4, 0x0

    .line 1439
    .line 1440
    const/4 v6, 0x0

    .line 1441
    const-wide/16 v7, 0x0

    .line 1442
    .line 1443
    const/4 v9, 0x0

    .line 1444
    const/4 v10, 0x0

    .line 1445
    const-wide/16 v11, 0x0

    .line 1446
    .line 1447
    const/4 v13, 0x0

    .line 1448
    const-wide/16 v14, 0x0

    .line 1449
    .line 1450
    const/16 v16, 0x0

    .line 1451
    .line 1452
    const/16 v17, 0x0

    .line 1453
    .line 1454
    const/16 v18, 0x0

    .line 1455
    .line 1456
    const/16 v19, 0x0

    .line 1457
    .line 1458
    const/16 v20, 0x0

    .line 1459
    .line 1460
    const/16 v21, 0x0

    .line 1461
    .line 1462
    const/16 v23, 0x6

    .line 1463
    .line 1464
    move-object/from16 v22, v0

    .line 1465
    .line 1466
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1467
    .line 1468
    .line 1469
    goto :goto_14

    .line 1470
    :cond_27
    move-object/from16 v22, v0

    .line 1471
    .line 1472
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1473
    .line 1474
    .line 1475
    :goto_14
    return-object v1

    .line 1476
    :pswitch_13
    move-object/from16 v0, p1

    .line 1477
    .line 1478
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1479
    .line 1480
    move-object/from16 v5, p2

    .line 1481
    .line 1482
    check-cast v5, Ljava/lang/Integer;

    .line 1483
    .line 1484
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1485
    .line 1486
    .line 1487
    move-result v5

    .line 1488
    and-int/lit8 v6, v5, 0x3

    .line 1489
    .line 1490
    if-eq v6, v2, :cond_28

    .line 1491
    .line 1492
    move v3, v4

    .line 1493
    :cond_28
    and-int/lit8 v2, v5, 0x1

    .line 1494
    .line 1495
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1496
    .line 1497
    .line 1498
    move-result v2

    .line 1499
    if-eqz v2, :cond_29

    .line 1500
    .line 1501
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1502
    .line 1503
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v2

    .line 1507
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1508
    .line 1509
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1510
    .line 1511
    const/16 v45, 0x0

    .line 1512
    .line 1513
    const v46, 0x3fffa

    .line 1514
    .line 1515
    .line 1516
    const-string v23, "Year"

    .line 1517
    .line 1518
    const/16 v24, 0x0

    .line 1519
    .line 1520
    const/16 v27, 0x0

    .line 1521
    .line 1522
    const-wide/16 v28, 0x0

    .line 1523
    .line 1524
    const/16 v30, 0x0

    .line 1525
    .line 1526
    const/16 v31, 0x0

    .line 1527
    .line 1528
    const-wide/16 v32, 0x0

    .line 1529
    .line 1530
    const/16 v34, 0x0

    .line 1531
    .line 1532
    const-wide/16 v35, 0x0

    .line 1533
    .line 1534
    const/16 v37, 0x0

    .line 1535
    .line 1536
    const/16 v38, 0x0

    .line 1537
    .line 1538
    const/16 v39, 0x0

    .line 1539
    .line 1540
    const/16 v40, 0x0

    .line 1541
    .line 1542
    const/16 v41, 0x0

    .line 1543
    .line 1544
    const/16 v42, 0x0

    .line 1545
    .line 1546
    const/16 v44, 0x6

    .line 1547
    .line 1548
    move-object/from16 v43, v0

    .line 1549
    .line 1550
    move-wide/from16 v25, v2

    .line 1551
    .line 1552
    invoke-static/range {v23 .. v46}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1553
    .line 1554
    .line 1555
    goto :goto_15

    .line 1556
    :cond_29
    move-object/from16 v43, v0

    .line 1557
    .line 1558
    invoke-virtual/range {v43 .. v43}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1559
    .line 1560
    .line 1561
    :goto_15
    return-object v1

    .line 1562
    :pswitch_14
    move-object/from16 v0, p1

    .line 1563
    .line 1564
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1565
    .line 1566
    move-object/from16 v5, p2

    .line 1567
    .line 1568
    check-cast v5, Ljava/lang/Integer;

    .line 1569
    .line 1570
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1571
    .line 1572
    .line 1573
    move-result v5

    .line 1574
    and-int/lit8 v6, v5, 0x3

    .line 1575
    .line 1576
    if-eq v6, v2, :cond_2a

    .line 1577
    .line 1578
    move v3, v4

    .line 1579
    :cond_2a
    and-int/lit8 v2, v5, 0x1

    .line 1580
    .line 1581
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1582
    .line 1583
    .line 1584
    move-result v2

    .line 1585
    if-eqz v2, :cond_2b

    .line 1586
    .line 1587
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1588
    .line 1589
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v2

    .line 1593
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1594
    .line 1595
    iget-wide v4, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1596
    .line 1597
    const/16 v24, 0x0

    .line 1598
    .line 1599
    const v25, 0x3fffa

    .line 1600
    .line 1601
    .line 1602
    const-string v2, "Number of Rows"

    .line 1603
    .line 1604
    const/4 v3, 0x0

    .line 1605
    const/4 v6, 0x0

    .line 1606
    const-wide/16 v7, 0x0

    .line 1607
    .line 1608
    const/4 v9, 0x0

    .line 1609
    const/4 v10, 0x0

    .line 1610
    const-wide/16 v11, 0x0

    .line 1611
    .line 1612
    const/4 v13, 0x0

    .line 1613
    const-wide/16 v14, 0x0

    .line 1614
    .line 1615
    const/16 v16, 0x0

    .line 1616
    .line 1617
    const/16 v17, 0x0

    .line 1618
    .line 1619
    const/16 v18, 0x0

    .line 1620
    .line 1621
    const/16 v19, 0x0

    .line 1622
    .line 1623
    const/16 v20, 0x0

    .line 1624
    .line 1625
    const/16 v21, 0x0

    .line 1626
    .line 1627
    const/16 v23, 0x6

    .line 1628
    .line 1629
    move-object/from16 v22, v0

    .line 1630
    .line 1631
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1632
    .line 1633
    .line 1634
    goto :goto_16

    .line 1635
    :cond_2b
    move-object/from16 v22, v0

    .line 1636
    .line 1637
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1638
    .line 1639
    .line 1640
    :goto_16
    return-object v1

    .line 1641
    :pswitch_15
    move-object/from16 v0, p1

    .line 1642
    .line 1643
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1644
    .line 1645
    move-object/from16 v5, p2

    .line 1646
    .line 1647
    check-cast v5, Ljava/lang/Integer;

    .line 1648
    .line 1649
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1650
    .line 1651
    .line 1652
    move-result v5

    .line 1653
    and-int/lit8 v6, v5, 0x3

    .line 1654
    .line 1655
    if-eq v6, v2, :cond_2c

    .line 1656
    .line 1657
    move v3, v4

    .line 1658
    :cond_2c
    and-int/lit8 v2, v5, 0x1

    .line 1659
    .line 1660
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1661
    .line 1662
    .line 1663
    move-result v2

    .line 1664
    if-eqz v2, :cond_2d

    .line 1665
    .line 1666
    const/16 v45, 0x0

    .line 1667
    .line 1668
    const v46, 0x3fffe

    .line 1669
    .line 1670
    .line 1671
    const-string v23, "Add Entry"

    .line 1672
    .line 1673
    const/16 v24, 0x0

    .line 1674
    .line 1675
    const-wide/16 v25, 0x0

    .line 1676
    .line 1677
    const/16 v27, 0x0

    .line 1678
    .line 1679
    const-wide/16 v28, 0x0

    .line 1680
    .line 1681
    const/16 v30, 0x0

    .line 1682
    .line 1683
    const/16 v31, 0x0

    .line 1684
    .line 1685
    const-wide/16 v32, 0x0

    .line 1686
    .line 1687
    const/16 v34, 0x0

    .line 1688
    .line 1689
    const-wide/16 v35, 0x0

    .line 1690
    .line 1691
    const/16 v37, 0x0

    .line 1692
    .line 1693
    const/16 v38, 0x0

    .line 1694
    .line 1695
    const/16 v39, 0x0

    .line 1696
    .line 1697
    const/16 v40, 0x0

    .line 1698
    .line 1699
    const/16 v41, 0x0

    .line 1700
    .line 1701
    const/16 v42, 0x0

    .line 1702
    .line 1703
    const/16 v44, 0x6

    .line 1704
    .line 1705
    move-object/from16 v43, v0

    .line 1706
    .line 1707
    invoke-static/range {v23 .. v46}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1708
    .line 1709
    .line 1710
    goto :goto_17

    .line 1711
    :cond_2d
    move-object/from16 v43, v0

    .line 1712
    .line 1713
    invoke-virtual/range {v43 .. v43}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1714
    .line 1715
    .line 1716
    :goto_17
    return-object v1

    .line 1717
    :pswitch_16
    move-object/from16 v0, p1

    .line 1718
    .line 1719
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1720
    .line 1721
    move-object/from16 v5, p2

    .line 1722
    .line 1723
    check-cast v5, Ljava/lang/Integer;

    .line 1724
    .line 1725
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1726
    .line 1727
    .line 1728
    move-result v5

    .line 1729
    and-int/lit8 v6, v5, 0x3

    .line 1730
    .line 1731
    if-eq v6, v2, :cond_2e

    .line 1732
    .line 1733
    move v3, v4

    .line 1734
    :cond_2e
    and-int/lit8 v2, v5, 0x1

    .line 1735
    .line 1736
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1737
    .line 1738
    .line 1739
    move-result v2

    .line 1740
    if-eqz v2, :cond_2f

    .line 1741
    .line 1742
    const/16 v24, 0x0

    .line 1743
    .line 1744
    const v25, 0x3fffe

    .line 1745
    .line 1746
    .line 1747
    const-string v2, "Delete All"

    .line 1748
    .line 1749
    const/4 v3, 0x0

    .line 1750
    const-wide/16 v4, 0x0

    .line 1751
    .line 1752
    const/4 v6, 0x0

    .line 1753
    const-wide/16 v7, 0x0

    .line 1754
    .line 1755
    const/4 v9, 0x0

    .line 1756
    const/4 v10, 0x0

    .line 1757
    const-wide/16 v11, 0x0

    .line 1758
    .line 1759
    const/4 v13, 0x0

    .line 1760
    const-wide/16 v14, 0x0

    .line 1761
    .line 1762
    const/16 v16, 0x0

    .line 1763
    .line 1764
    const/16 v17, 0x0

    .line 1765
    .line 1766
    const/16 v18, 0x0

    .line 1767
    .line 1768
    const/16 v19, 0x0

    .line 1769
    .line 1770
    const/16 v20, 0x0

    .line 1771
    .line 1772
    const/16 v21, 0x0

    .line 1773
    .line 1774
    const/16 v23, 0x6

    .line 1775
    .line 1776
    move-object/from16 v22, v0

    .line 1777
    .line 1778
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1779
    .line 1780
    .line 1781
    goto :goto_18

    .line 1782
    :cond_2f
    move-object/from16 v22, v0

    .line 1783
    .line 1784
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1785
    .line 1786
    .line 1787
    :goto_18
    return-object v1

    .line 1788
    :pswitch_17
    move-object/from16 v0, p1

    .line 1789
    .line 1790
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1791
    .line 1792
    move-object/from16 v5, p2

    .line 1793
    .line 1794
    check-cast v5, Ljava/lang/Integer;

    .line 1795
    .line 1796
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1797
    .line 1798
    .line 1799
    move-result v5

    .line 1800
    and-int/lit8 v6, v5, 0x3

    .line 1801
    .line 1802
    if-eq v6, v2, :cond_30

    .line 1803
    .line 1804
    move v3, v4

    .line 1805
    :cond_30
    and-int/lit8 v2, v5, 0x1

    .line 1806
    .line 1807
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1808
    .line 1809
    .line 1810
    move-result v2

    .line 1811
    if-eqz v2, :cond_31

    .line 1812
    .line 1813
    const v2, 0x7f1202e9

    .line 1814
    .line 1815
    .line 1816
    invoke-static {v2, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1817
    .line 1818
    .line 1819
    move-result-object v23

    .line 1820
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1821
    .line 1822
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1823
    .line 1824
    .line 1825
    move-result-object v2

    .line 1826
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 1827
    .line 1828
    iget-object v2, v2, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1829
    .line 1830
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1831
    .line 1832
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v3

    .line 1836
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1837
    .line 1838
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->destructiveColor:J

    .line 1839
    .line 1840
    const/16 v45, 0x0

    .line 1841
    .line 1842
    const v46, 0x1fffa

    .line 1843
    .line 1844
    .line 1845
    const/16 v24, 0x0

    .line 1846
    .line 1847
    const/16 v27, 0x0

    .line 1848
    .line 1849
    const-wide/16 v28, 0x0

    .line 1850
    .line 1851
    const/16 v30, 0x0

    .line 1852
    .line 1853
    const/16 v31, 0x0

    .line 1854
    .line 1855
    const-wide/16 v32, 0x0

    .line 1856
    .line 1857
    const/16 v34, 0x0

    .line 1858
    .line 1859
    const-wide/16 v35, 0x0

    .line 1860
    .line 1861
    const/16 v37, 0x0

    .line 1862
    .line 1863
    const/16 v38, 0x0

    .line 1864
    .line 1865
    const/16 v39, 0x0

    .line 1866
    .line 1867
    const/16 v40, 0x0

    .line 1868
    .line 1869
    const/16 v41, 0x0

    .line 1870
    .line 1871
    const/16 v44, 0x0

    .line 1872
    .line 1873
    move-object/from16 v43, v0

    .line 1874
    .line 1875
    move-object/from16 v42, v2

    .line 1876
    .line 1877
    move-wide/from16 v25, v3

    .line 1878
    .line 1879
    invoke-static/range {v23 .. v46}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1880
    .line 1881
    .line 1882
    goto :goto_19

    .line 1883
    :cond_31
    move-object/from16 v43, v0

    .line 1884
    .line 1885
    invoke-virtual/range {v43 .. v43}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1886
    .line 1887
    .line 1888
    :goto_19
    return-object v1

    .line 1889
    :pswitch_18
    move-object/from16 v0, p1

    .line 1890
    .line 1891
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1892
    .line 1893
    move-object/from16 v5, p2

    .line 1894
    .line 1895
    check-cast v5, Ljava/lang/Integer;

    .line 1896
    .line 1897
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1898
    .line 1899
    .line 1900
    move-result v5

    .line 1901
    and-int/lit8 v6, v5, 0x3

    .line 1902
    .line 1903
    if-eq v6, v2, :cond_32

    .line 1904
    .line 1905
    move v3, v4

    .line 1906
    :cond_32
    and-int/lit8 v2, v5, 0x1

    .line 1907
    .line 1908
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1909
    .line 1910
    .line 1911
    move-result v2

    .line 1912
    if-eqz v2, :cond_33

    .line 1913
    .line 1914
    const v2, 0x7f1202c4

    .line 1915
    .line 1916
    .line 1917
    invoke-static {v2, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1918
    .line 1919
    .line 1920
    move-result-object v2

    .line 1921
    sget-object v3, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1922
    .line 1923
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1924
    .line 1925
    .line 1926
    move-result-object v3

    .line 1927
    check-cast v3, Landroidx/compose/material3/Typography;

    .line 1928
    .line 1929
    iget-object v3, v3, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1930
    .line 1931
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1932
    .line 1933
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1934
    .line 1935
    .line 1936
    move-result-object v4

    .line 1937
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1938
    .line 1939
    iget-wide v4, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1940
    .line 1941
    const/16 v24, 0x0

    .line 1942
    .line 1943
    const v25, 0x1fffa

    .line 1944
    .line 1945
    .line 1946
    move-object/from16 v21, v3

    .line 1947
    .line 1948
    const/4 v3, 0x0

    .line 1949
    const/4 v6, 0x0

    .line 1950
    const-wide/16 v7, 0x0

    .line 1951
    .line 1952
    const/4 v9, 0x0

    .line 1953
    const/4 v10, 0x0

    .line 1954
    const-wide/16 v11, 0x0

    .line 1955
    .line 1956
    const/4 v13, 0x0

    .line 1957
    const-wide/16 v14, 0x0

    .line 1958
    .line 1959
    const/16 v16, 0x0

    .line 1960
    .line 1961
    const/16 v17, 0x0

    .line 1962
    .line 1963
    const/16 v18, 0x0

    .line 1964
    .line 1965
    const/16 v19, 0x0

    .line 1966
    .line 1967
    const/16 v20, 0x0

    .line 1968
    .line 1969
    const/16 v23, 0x0

    .line 1970
    .line 1971
    move-object/from16 v22, v0

    .line 1972
    .line 1973
    invoke-static/range {v2 .. v25}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1974
    .line 1975
    .line 1976
    goto :goto_1a

    .line 1977
    :cond_33
    move-object/from16 v22, v0

    .line 1978
    .line 1979
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1980
    .line 1981
    .line 1982
    :goto_1a
    return-object v1

    .line 1983
    :pswitch_19
    move-object/from16 v8, p1

    .line 1984
    .line 1985
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 1986
    .line 1987
    move-object/from16 v0, p2

    .line 1988
    .line 1989
    check-cast v0, Ljava/lang/Integer;

    .line 1990
    .line 1991
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1992
    .line 1993
    .line 1994
    move-result v0

    .line 1995
    and-int/lit8 v5, v0, 0x3

    .line 1996
    .line 1997
    if-eq v5, v2, :cond_34

    .line 1998
    .line 1999
    move v3, v4

    .line 2000
    :cond_34
    and-int/2addr v0, v4

    .line 2001
    invoke-virtual {v8, v0, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 2002
    .line 2003
    .line 2004
    move-result v0

    .line 2005
    if-eqz v0, :cond_35

    .line 2006
    .line 2007
    sget-object v0, Lorg/wikipedia/search/NoSearchResultsKt;->lambda$-2047687325:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 2008
    .line 2009
    sget v2, Landroidx/compose/material3/TopAppBarDefaults;->TopAppBarExpandedHeight:F

    .line 2010
    .line 2011
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2012
    .line 2013
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v2

    .line 2017
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 2018
    .line 2019
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 2020
    .line 2021
    const-wide/16 v6, 0x0

    .line 2022
    .line 2023
    const/16 v9, 0x3e

    .line 2024
    .line 2025
    const-wide/16 v4, 0x0

    .line 2026
    .line 2027
    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/TopAppBarDefaults;->topAppBarColors-5tl4gsc(JJJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/TopAppBarColors;

    .line 2028
    .line 2029
    .line 2030
    move-result-object v2

    .line 2031
    const/4 v11, 0x6

    .line 2032
    const/16 v12, 0xbe

    .line 2033
    .line 2034
    const/4 v3, 0x0

    .line 2035
    const/4 v4, 0x0

    .line 2036
    const/4 v5, 0x0

    .line 2037
    const/4 v6, 0x0

    .line 2038
    const/4 v7, 0x0

    .line 2039
    const/4 v9, 0x0

    .line 2040
    move-object v10, v8

    .line 2041
    move-object v8, v2

    .line 2042
    move-object v2, v0

    .line 2043
    invoke-static/range {v2 .. v12}, Landroidx/compose/material3/AppBarKt;->TopAppBar-GHTll3U(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/PinnedScrollBehavior;Landroidx/compose/runtime/GapComposer;II)V

    .line 2044
    .line 2045
    .line 2046
    goto :goto_1b

    .line 2047
    :cond_35
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2048
    .line 2049
    .line 2050
    :goto_1b
    return-object v1

    .line 2051
    :pswitch_1a
    move-object/from16 v0, p1

    .line 2052
    .line 2053
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 2054
    .line 2055
    move-object/from16 v5, p2

    .line 2056
    .line 2057
    check-cast v5, Ljava/lang/Integer;

    .line 2058
    .line 2059
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 2060
    .line 2061
    .line 2062
    move-result v5

    .line 2063
    and-int/lit8 v6, v5, 0x3

    .line 2064
    .line 2065
    if-eq v6, v2, :cond_36

    .line 2066
    .line 2067
    move v6, v4

    .line 2068
    goto :goto_1c

    .line 2069
    :cond_36
    move v6, v3

    .line 2070
    :goto_1c
    and-int/2addr v5, v4

    .line 2071
    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 2072
    .line 2073
    .line 2074
    move-result v5

    .line 2075
    if-eqz v5, :cond_39

    .line 2076
    .line 2077
    const/high16 v10, 0x42000000    # 32.0f

    .line 2078
    .line 2079
    const/4 v11, 0x5

    .line 2080
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 2081
    .line 2082
    const/4 v7, 0x0

    .line 2083
    const/high16 v8, 0x42680000    # 58.0f

    .line 2084
    .line 2085
    const/4 v9, 0x0

    .line 2086
    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 2087
    .line 2088
    .line 2089
    move-result-object v5

    .line 2090
    const/high16 v7, 0x41400000    # 12.0f

    .line 2091
    .line 2092
    const/4 v8, 0x0

    .line 2093
    invoke-static {v5, v7, v8, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 2094
    .line 2095
    .line 2096
    move-result-object v2

    .line 2097
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 2098
    .line 2099
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 2100
    .line 2101
    invoke-static {v5, v7, v0, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 2102
    .line 2103
    .line 2104
    move-result-object v5

    .line 2105
    iget-wide v7, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 2106
    .line 2107
    const/16 v9, 0x20

    .line 2108
    .line 2109
    ushr-long v10, v7, v9

    .line 2110
    .line 2111
    xor-long/2addr v7, v10

    .line 2112
    long-to-int v7, v7

    .line 2113
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 2114
    .line 2115
    .line 2116
    move-result-object v8

    .line 2117
    invoke-static {v0, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 2118
    .line 2119
    .line 2120
    move-result-object v2

    .line 2121
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 2122
    .line 2123
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2124
    .line 2125
    .line 2126
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 2127
    .line 2128
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 2129
    .line 2130
    .line 2131
    iget-boolean v11, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 2132
    .line 2133
    if-eqz v11, :cond_37

    .line 2134
    .line 2135
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 2136
    .line 2137
    .line 2138
    goto :goto_1d

    .line 2139
    :cond_37
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 2140
    .line 2141
    .line 2142
    :goto_1d
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 2143
    .line 2144
    invoke-static {v0, v5, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2145
    .line 2146
    .line 2147
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 2148
    .line 2149
    invoke-static {v0, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2150
    .line 2151
    .line 2152
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2153
    .line 2154
    .line 2155
    move-result-object v7

    .line 2156
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 2157
    .line 2158
    invoke-static {v0, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2159
    .line 2160
    .line 2161
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 2162
    .line 2163
    invoke-static {v0, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 2164
    .line 2165
    .line 2166
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 2167
    .line 2168
    invoke-static {v0, v2, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2169
    .line 2170
    .line 2171
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2172
    .line 2173
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2174
    .line 2175
    .line 2176
    move-result-object v13

    .line 2177
    check-cast v13, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 2178
    .line 2179
    iget-wide v13, v13, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 2180
    .line 2181
    const/high16 v15, 0x41800000    # 16.0f

    .line 2182
    .line 2183
    invoke-static {v15}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 2184
    .line 2185
    .line 2186
    move-result-object v15

    .line 2187
    invoke-static {v6, v13, v14, v15}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 2188
    .line 2189
    .line 2190
    move-result-object v13

    .line 2191
    const/high16 v14, 0x41200000    # 10.0f

    .line 2192
    .line 2193
    const/high16 v15, 0x3f800000    # 1.0f

    .line 2194
    .line 2195
    invoke-static {v13, v14, v15}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 2196
    .line 2197
    .line 2198
    move-result-object v13

    .line 2199
    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 2200
    .line 2201
    invoke-static {v14, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 2202
    .line 2203
    .line 2204
    move-result-object v3

    .line 2205
    iget-wide v14, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 2206
    .line 2207
    ushr-long v16, v14, v9

    .line 2208
    .line 2209
    xor-long v14, v14, v16

    .line 2210
    .line 2211
    long-to-int v9, v14

    .line 2212
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 2213
    .line 2214
    .line 2215
    move-result-object v14

    .line 2216
    invoke-static {v0, v13}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 2217
    .line 2218
    .line 2219
    move-result-object v13

    .line 2220
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 2221
    .line 2222
    .line 2223
    iget-boolean v15, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 2224
    .line 2225
    if-eqz v15, :cond_38

    .line 2226
    .line 2227
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 2228
    .line 2229
    .line 2230
    goto :goto_1e

    .line 2231
    :cond_38
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 2232
    .line 2233
    .line 2234
    :goto_1e
    invoke-static {v0, v3, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2235
    .line 2236
    .line 2237
    invoke-static {v0, v14, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2238
    .line 2239
    .line 2240
    invoke-static {v9, v0, v8, v0, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 2241
    .line 2242
    .line 2243
    invoke-static {v0, v13, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2244
    .line 2245
    .line 2246
    const v3, 0x7f1202bc

    .line 2247
    .line 2248
    .line 2249
    invoke-static {v3, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 2250
    .line 2251
    .line 2252
    move-result-object v3

    .line 2253
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2254
    .line 2255
    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 2256
    .line 2257
    .line 2258
    move-result-object v9

    .line 2259
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2260
    .line 2261
    .line 2262
    sget-object v3, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2263
    .line 2264
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2265
    .line 2266
    .line 2267
    move-result-object v5

    .line 2268
    check-cast v5, Landroidx/compose/material3/Typography;

    .line 2269
    .line 2270
    iget-object v5, v5, Landroidx/compose/material3/Typography;->labelSmall:Landroidx/compose/ui/text/TextStyle;

    .line 2271
    .line 2272
    sget-object v16, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 2273
    .line 2274
    sget-wide v11, Landroidx/compose/ui/graphics/Color;->White:J

    .line 2275
    .line 2276
    const/16 v31, 0x0

    .line 2277
    .line 2278
    const v32, 0x1ffba

    .line 2279
    .line 2280
    .line 2281
    const/4 v10, 0x0

    .line 2282
    const/4 v13, 0x0

    .line 2283
    const-wide/16 v14, 0x0

    .line 2284
    .line 2285
    const/16 v17, 0x0

    .line 2286
    .line 2287
    const-wide/16 v18, 0x0

    .line 2288
    .line 2289
    const/16 v20, 0x0

    .line 2290
    .line 2291
    const-wide/16 v21, 0x0

    .line 2292
    .line 2293
    const/16 v23, 0x0

    .line 2294
    .line 2295
    const/16 v24, 0x0

    .line 2296
    .line 2297
    const/16 v25, 0x0

    .line 2298
    .line 2299
    const/16 v26, 0x0

    .line 2300
    .line 2301
    const/16 v27, 0x0

    .line 2302
    .line 2303
    const v30, 0x180180

    .line 2304
    .line 2305
    .line 2306
    move-object/from16 v29, v0

    .line 2307
    .line 2308
    move-object/from16 v28, v5

    .line 2309
    .line 2310
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 2311
    .line 2312
    .line 2313
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2314
    .line 2315
    .line 2316
    const/high16 v5, 0x41000000    # 8.0f

    .line 2317
    .line 2318
    invoke-static {v6, v5}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2319
    .line 2320
    .line 2321
    move-result-object v5

    .line 2322
    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 2323
    .line 2324
    .line 2325
    const v5, 0x7f1202c8

    .line 2326
    .line 2327
    .line 2328
    invoke-static {v5, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 2329
    .line 2330
    .line 2331
    move-result-object v9

    .line 2332
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2333
    .line 2334
    .line 2335
    move-result-object v3

    .line 2336
    check-cast v3, Landroidx/compose/material3/Typography;

    .line 2337
    .line 2338
    iget-object v10, v3, Landroidx/compose/material3/Typography;->headlineLarge:Landroidx/compose/ui/text/TextStyle;

    .line 2339
    .line 2340
    sget-object v15, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 2341
    .line 2342
    const/16 v21, 0x0

    .line 2343
    .line 2344
    const v22, 0xfffffb

    .line 2345
    .line 2346
    .line 2347
    const-wide/16 v11, 0x0

    .line 2348
    .line 2349
    const-wide/16 v13, 0x0

    .line 2350
    .line 2351
    const/16 v16, 0x0

    .line 2352
    .line 2353
    const-wide/16 v17, 0x0

    .line 2354
    .line 2355
    const-wide/16 v19, 0x0

    .line 2356
    .line 2357
    invoke-static/range {v10 .. v22}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 2358
    .line 2359
    .line 2360
    move-result-object v28

    .line 2361
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2362
    .line 2363
    .line 2364
    move-result-object v2

    .line 2365
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 2366
    .line 2367
    iget-wide v11, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 2368
    .line 2369
    const v32, 0x1fffa

    .line 2370
    .line 2371
    .line 2372
    const/4 v10, 0x0

    .line 2373
    const/4 v13, 0x0

    .line 2374
    const-wide/16 v14, 0x0

    .line 2375
    .line 2376
    const/16 v17, 0x0

    .line 2377
    .line 2378
    const-wide/16 v18, 0x0

    .line 2379
    .line 2380
    const/16 v20, 0x0

    .line 2381
    .line 2382
    const-wide/16 v21, 0x0

    .line 2383
    .line 2384
    const/16 v30, 0x0

    .line 2385
    .line 2386
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 2387
    .line 2388
    .line 2389
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2390
    .line 2391
    .line 2392
    goto :goto_1f

    .line 2393
    :cond_39
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2394
    .line 2395
    .line 2396
    :goto_1f
    return-object v1

    .line 2397
    :pswitch_1b
    move-object/from16 v10, p1

    .line 2398
    .line 2399
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 2400
    .line 2401
    move-object/from16 v0, p2

    .line 2402
    .line 2403
    check-cast v0, Ljava/lang/Integer;

    .line 2404
    .line 2405
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2406
    .line 2407
    .line 2408
    move-result v0

    .line 2409
    and-int/lit8 v5, v0, 0x3

    .line 2410
    .line 2411
    if-eq v5, v2, :cond_3a

    .line 2412
    .line 2413
    move v2, v4

    .line 2414
    goto :goto_20

    .line 2415
    :cond_3a
    move v2, v3

    .line 2416
    :goto_20
    and-int/2addr v0, v4

    .line 2417
    invoke-virtual {v10, v0, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 2418
    .line 2419
    .line 2420
    move-result v0

    .line 2421
    if-eqz v0, :cond_3b

    .line 2422
    .line 2423
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 2424
    .line 2425
    const/high16 v2, 0x41c00000    # 24.0f

    .line 2426
    .line 2427
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2428
    .line 2429
    .line 2430
    move-result-object v7

    .line 2431
    const v0, 0x7f0802c7

    .line 2432
    .line 2433
    .line 2434
    invoke-static {v0, v3, v10}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 2435
    .line 2436
    .line 2437
    move-result-object v5

    .line 2438
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2439
    .line 2440
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2441
    .line 2442
    .line 2443
    move-result-object v0

    .line 2444
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 2445
    .line 2446
    iget-wide v8, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 2447
    .line 2448
    const v0, 0x7f120814

    .line 2449
    .line 2450
    .line 2451
    invoke-static {v0, v10}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 2452
    .line 2453
    .line 2454
    move-result-object v6

    .line 2455
    const/16 v11, 0x188

    .line 2456
    .line 2457
    const/4 v12, 0x0

    .line 2458
    invoke-static/range {v5 .. v12}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 2459
    .line 2460
    .line 2461
    goto :goto_21

    .line 2462
    :cond_3b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2463
    .line 2464
    .line 2465
    :goto_21
    return-object v1

    .line 2466
    :pswitch_1c
    move-object/from16 v0, p1

    .line 2467
    .line 2468
    check-cast v0, Landroid/location/Location;

    .line 2469
    .line 2470
    move-object/from16 v1, p2

    .line 2471
    .line 2472
    check-cast v1, Landroid/location/Location;

    .line 2473
    .line 2474
    const/4 v2, 0x0

    .line 2475
    if-eqz v0, :cond_3c

    .line 2476
    .line 2477
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    .line 2478
    .line 2479
    .line 2480
    move-result-wide v5

    .line 2481
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2482
    .line 2483
    .line 2484
    move-result-object v5

    .line 2485
    goto :goto_22

    .line 2486
    :cond_3c
    move-object v5, v2

    .line 2487
    :goto_22
    if-eqz v1, :cond_3d

    .line 2488
    .line 2489
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    .line 2490
    .line 2491
    .line 2492
    move-result-wide v6

    .line 2493
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2494
    .line 2495
    .line 2496
    move-result-object v6

    .line 2497
    goto :goto_23

    .line 2498
    :cond_3d
    move-object v6, v2

    .line 2499
    :goto_23
    if-nez v5, :cond_3e

    .line 2500
    .line 2501
    if-nez v6, :cond_42

    .line 2502
    .line 2503
    goto :goto_24

    .line 2504
    :cond_3e
    if-eqz v6, :cond_42

    .line 2505
    .line 2506
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 2507
    .line 2508
    .line 2509
    move-result-wide v7

    .line 2510
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 2511
    .line 2512
    .line 2513
    move-result-wide v5

    .line 2514
    cmpl-double v5, v7, v5

    .line 2515
    .line 2516
    if-nez v5, :cond_42

    .line 2517
    .line 2518
    :goto_24
    if-eqz v0, :cond_3f

    .line 2519
    .line 2520
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    .line 2521
    .line 2522
    .line 2523
    move-result-wide v5

    .line 2524
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2525
    .line 2526
    .line 2527
    move-result-object v0

    .line 2528
    goto :goto_25

    .line 2529
    :cond_3f
    move-object v0, v2

    .line 2530
    :goto_25
    if-eqz v1, :cond_40

    .line 2531
    .line 2532
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    .line 2533
    .line 2534
    .line 2535
    move-result-wide v1

    .line 2536
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2537
    .line 2538
    .line 2539
    move-result-object v2

    .line 2540
    :cond_40
    if-nez v0, :cond_41

    .line 2541
    .line 2542
    if-nez v2, :cond_42

    .line 2543
    .line 2544
    goto :goto_26

    .line 2545
    :cond_41
    if-eqz v2, :cond_42

    .line 2546
    .line 2547
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 2548
    .line 2549
    .line 2550
    move-result-wide v0

    .line 2551
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 2552
    .line 2553
    .line 2554
    move-result-wide v5

    .line 2555
    cmpl-double v0, v0, v5

    .line 2556
    .line 2557
    if-nez v0, :cond_42

    .line 2558
    .line 2559
    :goto_26
    move v3, v4

    .line 2560
    :cond_42
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2561
    .line 2562
    .line 2563
    move-result-object v0

    .line 2564
    return-object v0

    .line 2565
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

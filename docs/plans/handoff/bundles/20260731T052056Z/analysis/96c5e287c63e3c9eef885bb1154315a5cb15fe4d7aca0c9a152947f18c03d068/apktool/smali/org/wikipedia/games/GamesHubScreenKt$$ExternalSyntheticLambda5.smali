.class public final synthetic Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-boolean p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda5;->f$0:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 51

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    iget-boolean v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda5;->f$0:Z

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    move-object/from16 v6, p2

    .line 20
    .line 21
    check-cast v6, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    and-int/lit8 v7, v6, 0x3

    .line 28
    .line 29
    if-eq v7, v3, :cond_0

    .line 30
    .line 31
    move v5, v4

    .line 32
    :cond_0
    and-int/lit8 v3, v6, 0x1

    .line 33
    .line 34
    invoke-virtual {v1, v3, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const v0, 0x7f120853

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const v0, 0x7f120854

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const/16 v28, 0x0

    .line 54
    .line 55
    const v29, 0x3fffe

    .line 56
    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    const-wide/16 v8, 0x0

    .line 60
    .line 61
    const/4 v10, 0x0

    .line 62
    const-wide/16 v11, 0x0

    .line 63
    .line 64
    const/4 v13, 0x0

    .line 65
    const/4 v14, 0x0

    .line 66
    const-wide/16 v15, 0x0

    .line 67
    .line 68
    const/16 v17, 0x0

    .line 69
    .line 70
    const-wide/16 v18, 0x0

    .line 71
    .line 72
    const/16 v20, 0x0

    .line 73
    .line 74
    const/16 v21, 0x0

    .line 75
    .line 76
    const/16 v22, 0x0

    .line 77
    .line 78
    const/16 v23, 0x0

    .line 79
    .line 80
    const/16 v24, 0x0

    .line 81
    .line 82
    const/16 v25, 0x0

    .line 83
    .line 84
    const/16 v27, 0x0

    .line 85
    .line 86
    move-object/from16 v26, v1

    .line 87
    .line 88
    invoke-static/range {v6 .. v29}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move-object/from16 v26, v1

    .line 93
    .line 94
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 95
    .line 96
    .line 97
    :goto_1
    return-object v2

    .line 98
    :pswitch_0
    move-object/from16 v1, p1

    .line 99
    .line 100
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 101
    .line 102
    move-object/from16 v6, p2

    .line 103
    .line 104
    check-cast v6, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    and-int/lit8 v7, v6, 0x3

    .line 111
    .line 112
    if-eq v7, v3, :cond_3

    .line 113
    .line 114
    move v3, v4

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    move v3, v5

    .line 117
    :goto_2
    and-int/2addr v4, v6

    .line 118
    invoke-virtual {v1, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_5

    .line 123
    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    const v0, 0x4675bf91

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 130
    .line 131
    .line 132
    const v0, 0x7f120814

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v27

    .line 139
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 146
    .line 147
    iget-wide v3, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 148
    .line 149
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 156
    .line 157
    iget-object v6, v0, Landroidx/compose/material3/Typography;->headlineSmall:Landroidx/compose/ui/text/TextStyle;

    .line 158
    .line 159
    sget-object v11, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 160
    .line 161
    const/16 v0, 0x18

    .line 162
    .line 163
    invoke-static {v0}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 164
    .line 165
    .line 166
    move-result-wide v15

    .line 167
    const/16 v17, 0x0

    .line 168
    .line 169
    const v18, 0xfdfffb

    .line 170
    .line 171
    .line 172
    const-wide/16 v7, 0x0

    .line 173
    .line 174
    const-wide/16 v9, 0x0

    .line 175
    .line 176
    const/4 v12, 0x0

    .line 177
    const-wide/16 v13, 0x0

    .line 178
    .line 179
    invoke-static/range {v6 .. v18}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 180
    .line 181
    .line 182
    move-result-object v46

    .line 183
    const/16 v49, 0x0

    .line 184
    .line 185
    const v50, 0x1fffa

    .line 186
    .line 187
    .line 188
    const/16 v28, 0x0

    .line 189
    .line 190
    const/16 v31, 0x0

    .line 191
    .line 192
    const-wide/16 v32, 0x0

    .line 193
    .line 194
    const/16 v34, 0x0

    .line 195
    .line 196
    const/16 v35, 0x0

    .line 197
    .line 198
    const-wide/16 v36, 0x0

    .line 199
    .line 200
    const/16 v38, 0x0

    .line 201
    .line 202
    const-wide/16 v39, 0x0

    .line 203
    .line 204
    const/16 v41, 0x0

    .line 205
    .line 206
    const/16 v42, 0x0

    .line 207
    .line 208
    const/16 v43, 0x0

    .line 209
    .line 210
    const/16 v44, 0x0

    .line 211
    .line 212
    const/16 v45, 0x0

    .line 213
    .line 214
    const/16 v48, 0x0

    .line 215
    .line 216
    move-object/from16 v47, v1

    .line 217
    .line 218
    move-wide/from16 v29, v3

    .line 219
    .line 220
    invoke-static/range {v27 .. v50}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 221
    .line 222
    .line 223
    move-object/from16 v0, v47

    .line 224
    .line 225
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_4
    move-object v0, v1

    .line 230
    const v1, 0x467cfdff

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_5
    move-object v0, v1

    .line 241
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 242
    .line 243
    .line 244
    :goto_3
    return-object v2

    .line 245
    :pswitch_1
    move-object/from16 v11, p1

    .line 246
    .line 247
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 248
    .line 249
    move-object/from16 v1, p2

    .line 250
    .line 251
    check-cast v1, Ljava/lang/Integer;

    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    and-int/lit8 v6, v1, 0x3

    .line 258
    .line 259
    if-eq v6, v3, :cond_6

    .line 260
    .line 261
    move v3, v4

    .line 262
    goto :goto_4

    .line 263
    :cond_6
    move v3, v5

    .line 264
    :goto_4
    and-int/2addr v1, v4

    .line 265
    invoke-virtual {v11, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_8

    .line 270
    .line 271
    const v1, 0x7f0801d8

    .line 272
    .line 273
    .line 274
    invoke-static {v1, v5, v11}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 279
    .line 280
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 285
    .line 286
    iget-wide v3, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 287
    .line 288
    if-eqz v0, :cond_7

    .line 289
    .line 290
    const/high16 v0, 0x3f800000    # 1.0f

    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_7
    const/high16 v0, 0x3f000000    # 0.5f

    .line 294
    .line 295
    :goto_5
    invoke-static {v0, v3, v4}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 296
    .line 297
    .line 298
    move-result-wide v9

    .line 299
    const/16 v12, 0x38

    .line 300
    .line 301
    const/4 v13, 0x4

    .line 302
    const/4 v7, 0x0

    .line 303
    const/4 v8, 0x0

    .line 304
    invoke-static/range {v6 .. v13}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 305
    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_8
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 309
    .line 310
    .line 311
    :goto_6
    return-object v2

    .line 312
    :pswitch_2
    move-object/from16 v1, p1

    .line 313
    .line 314
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 315
    .line 316
    move-object/from16 v6, p2

    .line 317
    .line 318
    check-cast v6, Ljava/lang/Integer;

    .line 319
    .line 320
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    and-int/lit8 v7, v6, 0x3

    .line 325
    .line 326
    if-eq v7, v3, :cond_9

    .line 327
    .line 328
    move v3, v4

    .line 329
    goto :goto_7

    .line 330
    :cond_9
    move v3, v5

    .line 331
    :goto_7
    and-int/2addr v4, v6

    .line 332
    invoke-virtual {v1, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    if-eqz v3, :cond_b

    .line 337
    .line 338
    if-eqz v0, :cond_a

    .line 339
    .line 340
    const v0, -0x140ad96f

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 344
    .line 345
    .line 346
    const v0, 0x7f080139

    .line 347
    .line 348
    .line 349
    invoke-static {v0, v5, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 350
    .line 351
    .line 352
    move-result-object v12

    .line 353
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 354
    .line 355
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 360
    .line 361
    iget-wide v3, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 362
    .line 363
    const/16 v18, 0x38

    .line 364
    .line 365
    const/16 v19, 0x4

    .line 366
    .line 367
    const/4 v13, 0x0

    .line 368
    const/4 v14, 0x0

    .line 369
    move-object/from16 v17, v1

    .line 370
    .line 371
    move-wide v15, v3

    .line 372
    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 373
    .line 374
    .line 375
    move-object/from16 v0, v17

    .line 376
    .line 377
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 378
    .line 379
    .line 380
    goto :goto_8

    .line 381
    :cond_a
    move-object v0, v1

    .line 382
    const v1, -0x14078b1c

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 389
    .line 390
    .line 391
    goto :goto_8

    .line 392
    :cond_b
    move-object v0, v1

    .line 393
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 394
    .line 395
    .line 396
    :goto_8
    return-object v2

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

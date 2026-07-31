.class public final synthetic Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;->f$0:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;IB)V
    .locals 0

    .line 10
    iput p2, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;->f$0:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 8
    .line 9
    iget-object v4, v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;->f$0:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v15, p1

    .line 20
    .line 21
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    move-object/from16 v0, p2

    .line 24
    .line 25
    check-cast v0, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    and-int/lit8 v1, v0, 0x3

    .line 32
    .line 33
    if-eq v1, v5, :cond_0

    .line 34
    .line 35
    move v7, v8

    .line 36
    :cond_0
    and-int/2addr v0, v8

    .line 37
    invoke-virtual {v15, v0, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    if-ne v1, v3, :cond_2

    .line 54
    .line 55
    :cond_1
    new-instance v1, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;

    .line 56
    .line 57
    const/16 v0, 0x10

    .line 58
    .line 59
    invoke-direct {v1, v0, v4}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    move-object v9, v1

    .line 66
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 67
    .line 68
    sget-object v14, Lorg/wikipedia/yearinreview/YearInReviewDialog;->lambda$-692359811:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 69
    .line 70
    const/high16 v16, 0x180000

    .line 71
    .line 72
    const/16 v17, 0x3e

    .line 73
    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v12, 0x0

    .line 77
    const/4 v13, 0x0

    .line 78
    invoke-static/range {v9 .. v17}, Landroidx/compose/material3/CardKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-object v6

    .line 86
    :pswitch_0
    move-object/from16 v0, p1

    .line 87
    .line 88
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 89
    .line 90
    move-object/from16 v1, p2

    .line 91
    .line 92
    check-cast v1, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    and-int/lit8 v3, v1, 0x3

    .line 99
    .line 100
    if-eq v3, v5, :cond_4

    .line 101
    .line 102
    move v3, v8

    .line 103
    goto :goto_1

    .line 104
    :cond_4
    move v3, v7

    .line 105
    :goto_1
    and-int/2addr v1, v8

    .line 106
    invoke-virtual {v0, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    sget v1, Landroidx/compose/material3/TopAppBarDefaults;->TopAppBarExpandedHeight:F

    .line 113
    .line 114
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 121
    .line 122
    iget-wide v8, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 123
    .line 124
    const-wide/16 v20, 0x0

    .line 125
    .line 126
    const/16 v23, 0x3e

    .line 127
    .line 128
    const-wide/16 v18, 0x0

    .line 129
    .line 130
    move-object/from16 v22, v0

    .line 131
    .line 132
    move-wide/from16 v16, v8

    .line 133
    .line 134
    invoke-static/range {v16 .. v23}, Landroidx/compose/material3/TopAppBarDefaults;->topAppBarColors-5tl4gsc(JJJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/TopAppBarColors;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    move-object/from16 v1, v22

    .line 139
    .line 140
    sget-object v16, Lorg/wikipedia/yearinreview/YearInReviewDialog;->lambda$375127261:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 141
    .line 142
    new-instance v3, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;

    .line 143
    .line 144
    invoke-direct {v3, v4, v2, v7}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;-><init>(Lkotlin/jvm/functions/Function0;IB)V

    .line 145
    .line 146
    .line 147
    const v2, -0x5eee5521

    .line 148
    .line 149
    .line 150
    invoke-static {v2, v3, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 151
    .line 152
    .line 153
    move-result-object v18

    .line 154
    const/16 v25, 0x186

    .line 155
    .line 156
    const/16 v26, 0xba

    .line 157
    .line 158
    const/16 v17, 0x0

    .line 159
    .line 160
    const/16 v19, 0x0

    .line 161
    .line 162
    const/16 v20, 0x0

    .line 163
    .line 164
    const/16 v21, 0x0

    .line 165
    .line 166
    const/16 v23, 0x0

    .line 167
    .line 168
    move-object/from16 v22, v0

    .line 169
    .line 170
    move-object/from16 v24, v1

    .line 171
    .line 172
    invoke-static/range {v16 .. v26}, Landroidx/compose/material3/AppBarKt;->TopAppBar-GHTll3U(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/PinnedScrollBehavior;Landroidx/compose/runtime/GapComposer;II)V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_5
    move-object v1, v0

    .line 177
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 178
    .line 179
    .line 180
    :goto_2
    return-object v6

    .line 181
    :pswitch_1
    move-object/from16 v12, p1

    .line 182
    .line 183
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 184
    .line 185
    move-object/from16 v0, p2

    .line 186
    .line 187
    check-cast v0, Ljava/lang/Integer;

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    and-int/lit8 v1, v0, 0x3

    .line 194
    .line 195
    if-eq v1, v5, :cond_6

    .line 196
    .line 197
    move v7, v8

    .line 198
    :cond_6
    and-int/2addr v0, v8

    .line 199
    invoke-virtual {v12, v0, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_9

    .line 204
    .line 205
    const v0, 0x7f1202b4

    .line 206
    .line 207
    .line 208
    invoke-static {v0, v12}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    if-nez v0, :cond_7

    .line 221
    .line 222
    if-ne v1, v3, :cond_8

    .line 223
    .line 224
    :cond_7
    new-instance v1, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;

    .line 225
    .line 226
    const/16 v0, 0xc

    .line 227
    .line 228
    invoke-direct {v1, v0, v4}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_8
    move-object v9, v1

    .line 235
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 236
    .line 237
    const/4 v13, 0x0

    .line 238
    const/16 v14, 0x39

    .line 239
    .line 240
    const/4 v7, 0x0

    .line 241
    const/4 v10, 0x0

    .line 242
    const/4 v11, 0x0

    .line 243
    invoke-static/range {v7 .. v14}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiTopAppBar-WH-ejsw(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 248
    .line 249
    .line 250
    :goto_3
    return-object v6

    .line 251
    :pswitch_2
    move-object/from16 v0, p1

    .line 252
    .line 253
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 254
    .line 255
    move-object/from16 v1, p2

    .line 256
    .line 257
    check-cast v1, Ljava/lang/Integer;

    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    and-int/lit8 v9, v1, 0x3

    .line 264
    .line 265
    if-eq v9, v5, :cond_a

    .line 266
    .line 267
    move v7, v8

    .line 268
    :cond_a
    and-int/2addr v1, v8

    .line 269
    invoke-virtual {v0, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_d

    .line 274
    .line 275
    const v1, 0x7f12029b

    .line 276
    .line 277
    .line 278
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v14

    .line 282
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    if-nez v1, :cond_b

    .line 291
    .line 292
    if-ne v5, v3, :cond_c

    .line 293
    .line 294
    :cond_b
    new-instance v5, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;

    .line 295
    .line 296
    invoke-direct {v5, v2, v4}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    :cond_c
    move-object v15, v5

    .line 303
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 304
    .line 305
    const/16 v19, 0x0

    .line 306
    .line 307
    const/16 v20, 0x39

    .line 308
    .line 309
    const/4 v13, 0x0

    .line 310
    const/16 v16, 0x0

    .line 311
    .line 312
    const/16 v17, 0x0

    .line 313
    .line 314
    move-object/from16 v18, v0

    .line 315
    .line 316
    invoke-static/range {v13 .. v20}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiTopAppBar-WH-ejsw(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_d
    move-object/from16 v18, v0

    .line 321
    .line 322
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 323
    .line 324
    .line 325
    :goto_4
    return-object v6

    .line 326
    :pswitch_3
    move-object/from16 v12, p1

    .line 327
    .line 328
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 329
    .line 330
    move-object/from16 v1, p2

    .line 331
    .line 332
    check-cast v1, Ljava/lang/Integer;

    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    and-int/lit8 v2, v1, 0x3

    .line 339
    .line 340
    if-eq v2, v5, :cond_e

    .line 341
    .line 342
    move v7, v8

    .line 343
    :cond_e
    and-int/2addr v1, v8

    .line 344
    invoke-virtual {v12, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-eqz v1, :cond_f

    .line 349
    .line 350
    const v1, 0x7f1202b6

    .line 351
    .line 352
    .line 353
    invoke-static {v1, v12}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    const/4 v13, 0x0

    .line 358
    const/16 v14, 0x39

    .line 359
    .line 360
    const/4 v7, 0x0

    .line 361
    iget-object v9, v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;->f$0:Lkotlin/jvm/functions/Function0;

    .line 362
    .line 363
    const/4 v10, 0x0

    .line 364
    const/4 v11, 0x0

    .line 365
    invoke-static/range {v7 .. v14}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiTopAppBar-WH-ejsw(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 366
    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_f
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 370
    .line 371
    .line 372
    :goto_5
    return-object v6

    .line 373
    :pswitch_4
    move-object/from16 v1, p1

    .line 374
    .line 375
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 376
    .line 377
    move-object/from16 v2, p2

    .line 378
    .line 379
    check-cast v2, Ljava/lang/Integer;

    .line 380
    .line 381
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    and-int/lit8 v3, v2, 0x3

    .line 386
    .line 387
    if-eq v3, v5, :cond_10

    .line 388
    .line 389
    move v7, v8

    .line 390
    :cond_10
    and-int/2addr v2, v8

    .line 391
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    if-eqz v2, :cond_11

    .line 396
    .line 397
    const/16 v19, 0x30

    .line 398
    .line 399
    const/16 v20, 0x39

    .line 400
    .line 401
    const/4 v13, 0x0

    .line 402
    const-string v14, "Category Playground"

    .line 403
    .line 404
    iget-object v15, v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;->f$0:Lkotlin/jvm/functions/Function0;

    .line 405
    .line 406
    const/16 v16, 0x0

    .line 407
    .line 408
    const/16 v17, 0x0

    .line 409
    .line 410
    move-object/from16 v18, v1

    .line 411
    .line 412
    invoke-static/range {v13 .. v20}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiTopAppBar-WH-ejsw(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 413
    .line 414
    .line 415
    goto :goto_6

    .line 416
    :cond_11
    move-object/from16 v18, v1

    .line 417
    .line 418
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 419
    .line 420
    .line 421
    :goto_6
    return-object v6

    .line 422
    :pswitch_5
    move-object/from16 v12, p1

    .line 423
    .line 424
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 425
    .line 426
    move-object/from16 v1, p2

    .line 427
    .line 428
    check-cast v1, Ljava/lang/Integer;

    .line 429
    .line 430
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 431
    .line 432
    .line 433
    move-result v1

    .line 434
    and-int/lit8 v2, v1, 0x3

    .line 435
    .line 436
    if-eq v2, v5, :cond_12

    .line 437
    .line 438
    move v7, v8

    .line 439
    :cond_12
    and-int/2addr v1, v8

    .line 440
    invoke-virtual {v12, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-eqz v1, :cond_13

    .line 445
    .line 446
    const v1, 0x7f12001b

    .line 447
    .line 448
    .line 449
    invoke-static {v1, v12}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v8

    .line 453
    const/4 v13, 0x0

    .line 454
    const/16 v14, 0x39

    .line 455
    .line 456
    const/4 v7, 0x0

    .line 457
    iget-object v9, v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;->f$0:Lkotlin/jvm/functions/Function0;

    .line 458
    .line 459
    const/4 v10, 0x0

    .line 460
    const/4 v11, 0x0

    .line 461
    invoke-static/range {v7 .. v14}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiTopAppBar-WH-ejsw(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 462
    .line 463
    .line 464
    goto :goto_7

    .line 465
    :cond_13
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 466
    .line 467
    .line 468
    :goto_7
    return-object v6

    .line 469
    :pswitch_6
    move-object/from16 v1, p1

    .line 470
    .line 471
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 472
    .line 473
    move-object/from16 v2, p2

    .line 474
    .line 475
    check-cast v2, Ljava/lang/Integer;

    .line 476
    .line 477
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    and-int/lit8 v3, v2, 0x3

    .line 482
    .line 483
    if-eq v3, v5, :cond_14

    .line 484
    .line 485
    move v7, v8

    .line 486
    :cond_14
    and-int/2addr v2, v8

    .line 487
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    if-eqz v2, :cond_15

    .line 492
    .line 493
    const v2, 0x7f120800

    .line 494
    .line 495
    .line 496
    invoke-static {v2, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v14

    .line 500
    const/16 v19, 0x0

    .line 501
    .line 502
    const/16 v20, 0x39

    .line 503
    .line 504
    const/4 v13, 0x0

    .line 505
    iget-object v15, v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;->f$0:Lkotlin/jvm/functions/Function0;

    .line 506
    .line 507
    const/16 v16, 0x0

    .line 508
    .line 509
    const/16 v17, 0x0

    .line 510
    .line 511
    move-object/from16 v18, v1

    .line 512
    .line 513
    invoke-static/range {v13 .. v20}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiTopAppBar-WH-ejsw(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 514
    .line 515
    .line 516
    goto :goto_8

    .line 517
    :cond_15
    move-object/from16 v18, v1

    .line 518
    .line 519
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 520
    .line 521
    .line 522
    :goto_8
    return-object v6

    .line 523
    :pswitch_7
    move-object/from16 v13, p1

    .line 524
    .line 525
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 526
    .line 527
    move-object/from16 v1, p2

    .line 528
    .line 529
    check-cast v1, Ljava/lang/Integer;

    .line 530
    .line 531
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    and-int/lit8 v2, v1, 0x3

    .line 536
    .line 537
    if-eq v2, v5, :cond_16

    .line 538
    .line 539
    move v7, v8

    .line 540
    :cond_16
    and-int/2addr v1, v8

    .line 541
    invoke-virtual {v13, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    if-eqz v1, :cond_19

    .line 546
    .line 547
    const/high16 v1, 0x3f800000    # 1.0f

    .line 548
    .line 549
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 550
    .line 551
    invoke-static {v14, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 552
    .line 553
    .line 554
    move-result-object v15

    .line 555
    const/high16 v19, 0x41c00000    # 24.0f

    .line 556
    .line 557
    const/16 v20, 0x5

    .line 558
    .line 559
    const/16 v16, 0x0

    .line 560
    .line 561
    const/high16 v17, 0x41800000    # 16.0f

    .line 562
    .line 563
    const/16 v18, 0x0

    .line 564
    .line 565
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    move/from16 v2, v17

    .line 570
    .line 571
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 572
    .line 573
    sget-object v4, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 574
    .line 575
    const/16 v5, 0x30

    .line 576
    .line 577
    invoke-static {v4, v3, v13, v5}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 578
    .line 579
    .line 580
    move-result-object v3

    .line 581
    iget-wide v4, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 582
    .line 583
    const/16 v7, 0x20

    .line 584
    .line 585
    ushr-long v9, v4, v7

    .line 586
    .line 587
    xor-long/2addr v4, v9

    .line 588
    long-to-int v4, v4

    .line 589
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 590
    .line 591
    .line 592
    move-result-object v5

    .line 593
    invoke-static {v13, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 598
    .line 599
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    .line 601
    .line 602
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 603
    .line 604
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 605
    .line 606
    .line 607
    iget-boolean v9, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 608
    .line 609
    if-eqz v9, :cond_17

    .line 610
    .line 611
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 612
    .line 613
    .line 614
    goto :goto_9

    .line 615
    :cond_17
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 616
    .line 617
    .line 618
    :goto_9
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 619
    .line 620
    invoke-static {v13, v3, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 621
    .line 622
    .line 623
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 624
    .line 625
    invoke-static {v13, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 626
    .line 627
    .line 628
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 633
    .line 634
    invoke-static {v13, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 635
    .line 636
    .line 637
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 638
    .line 639
    invoke-static {v13, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 640
    .line 641
    .line 642
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 643
    .line 644
    invoke-static {v13, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 645
    .line 646
    .line 647
    const v1, 0x7f1204f0

    .line 648
    .line 649
    .line 650
    invoke-static {v1, v13}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v19

    .line 654
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 655
    .line 656
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v3

    .line 660
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 661
    .line 662
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 663
    .line 664
    sget-object v5, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 665
    .line 666
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v7

    .line 670
    check-cast v7, Landroidx/compose/material3/Typography;

    .line 671
    .line 672
    iget-object v7, v7, Landroidx/compose/material3/Typography;->titleSmall:Landroidx/compose/ui/text/TextStyle;

    .line 673
    .line 674
    sget-object v25, Landroidx/compose/ui/text/font/FontWeight;->SemiBold:Landroidx/compose/ui/text/font/FontWeight;

    .line 675
    .line 676
    const/16 v31, 0x0

    .line 677
    .line 678
    const v32, 0xfffffb

    .line 679
    .line 680
    .line 681
    const-wide/16 v21, 0x0

    .line 682
    .line 683
    const-wide/16 v23, 0x0

    .line 684
    .line 685
    const/16 v26, 0x0

    .line 686
    .line 687
    const-wide/16 v27, 0x0

    .line 688
    .line 689
    const-wide/16 v29, 0x0

    .line 690
    .line 691
    move-object/from16 v20, v7

    .line 692
    .line 693
    invoke-static/range {v20 .. v32}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 694
    .line 695
    .line 696
    move-result-object v38

    .line 697
    const/16 v41, 0x0

    .line 698
    .line 699
    const v42, 0x1fffa

    .line 700
    .line 701
    .line 702
    const/16 v20, 0x0

    .line 703
    .line 704
    const/16 v23, 0x0

    .line 705
    .line 706
    const-wide/16 v24, 0x0

    .line 707
    .line 708
    const/16 v27, 0x0

    .line 709
    .line 710
    const-wide/16 v28, 0x0

    .line 711
    .line 712
    const/16 v30, 0x0

    .line 713
    .line 714
    const-wide/16 v31, 0x0

    .line 715
    .line 716
    const/16 v33, 0x0

    .line 717
    .line 718
    const/16 v34, 0x0

    .line 719
    .line 720
    const/16 v35, 0x0

    .line 721
    .line 722
    const/16 v36, 0x0

    .line 723
    .line 724
    const/16 v37, 0x0

    .line 725
    .line 726
    const/16 v40, 0x0

    .line 727
    .line 728
    move-wide/from16 v21, v3

    .line 729
    .line 730
    move-object/from16 v39, v13

    .line 731
    .line 732
    invoke-static/range {v19 .. v42}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 733
    .line 734
    .line 735
    const/16 v18, 0x0

    .line 736
    .line 737
    const/16 v19, 0xd

    .line 738
    .line 739
    const/4 v15, 0x0

    .line 740
    const/high16 v16, 0x41000000    # 8.0f

    .line 741
    .line 742
    const/16 v17, 0x0

    .line 743
    .line 744
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 745
    .line 746
    .line 747
    move-result-object v20

    .line 748
    const v3, 0x7f1204ef

    .line 749
    .line 750
    .line 751
    invoke-static {v3, v13}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v19

    .line 755
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v3

    .line 759
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 760
    .line 761
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 762
    .line 763
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v5

    .line 767
    check-cast v5, Landroidx/compose/material3/Typography;

    .line 768
    .line 769
    iget-object v5, v5, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 770
    .line 771
    const v42, 0x1fff8

    .line 772
    .line 773
    .line 774
    const/16 v40, 0x30

    .line 775
    .line 776
    move-wide/from16 v21, v3

    .line 777
    .line 778
    move-object/from16 v38, v5

    .line 779
    .line 780
    invoke-static/range {v19 .. v42}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 781
    .line 782
    .line 783
    const/16 v19, 0xd

    .line 784
    .line 785
    move/from16 v16, v2

    .line 786
    .line 787
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    sget-object v3, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 792
    .line 793
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v1

    .line 797
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 798
    .line 799
    iget-wide v9, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 800
    .line 801
    sget-wide v11, Landroidx/compose/ui/graphics/Color;->White:J

    .line 802
    .line 803
    const/16 v14, 0xc

    .line 804
    .line 805
    invoke-static/range {v9 .. v14}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/ButtonColors;

    .line 806
    .line 807
    .line 808
    move-result-object v1

    .line 809
    const/16 v3, 0x1e

    .line 810
    .line 811
    and-int/2addr v3, v8

    .line 812
    if-eqz v3, :cond_18

    .line 813
    .line 814
    sget v3, Landroidx/compose/material3/tokens/ElevatedButtonTokens;->ContainerElevation:F

    .line 815
    .line 816
    goto :goto_a

    .line 817
    :cond_18
    const/high16 v3, 0x40000000    # 2.0f

    .line 818
    .line 819
    :goto_a
    sget v4, Landroidx/compose/material3/tokens/ElevatedButtonTokens;->PressedContainerElevation:F

    .line 820
    .line 821
    sget v5, Landroidx/compose/material3/tokens/ElevatedButtonTokens;->FocusedContainerElevation:F

    .line 822
    .line 823
    sget v7, Landroidx/compose/material3/tokens/ElevatedButtonTokens;->HoveredContainerElevation:F

    .line 824
    .line 825
    new-instance v14, Landroidx/compose/material3/ButtonElevation;

    .line 826
    .line 827
    invoke-direct {v14, v3, v4, v5, v7}, Landroidx/compose/material3/ButtonElevation;-><init>(FFFF)V

    .line 828
    .line 829
    .line 830
    const/4 v15, 0x0

    .line 831
    const v17, 0x30000030

    .line 832
    .line 833
    .line 834
    iget-object v9, v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;->f$0:Lkotlin/jvm/functions/Function0;

    .line 835
    .line 836
    const/4 v11, 0x0

    .line 837
    const/4 v12, 0x0

    .line 838
    move-object v10, v2

    .line 839
    move-object/from16 v16, v13

    .line 840
    .line 841
    move-object v13, v1

    .line 842
    invoke-static/range {v9 .. v17}, Landroidx/compose/material3/CardKt;->ElevatedButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;I)V

    .line 843
    .line 844
    .line 845
    move-object/from16 v13, v16

    .line 846
    .line 847
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 848
    .line 849
    .line 850
    goto :goto_b

    .line 851
    :cond_19
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 852
    .line 853
    .line 854
    :goto_b
    return-object v6

    .line 855
    :pswitch_8
    move-object/from16 v1, p1

    .line 856
    .line 857
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 858
    .line 859
    move-object/from16 v2, p2

    .line 860
    .line 861
    check-cast v2, Ljava/lang/Integer;

    .line 862
    .line 863
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 864
    .line 865
    .line 866
    move-result v2

    .line 867
    and-int/lit8 v3, v2, 0x3

    .line 868
    .line 869
    if-eq v3, v5, :cond_1a

    .line 870
    .line 871
    move v7, v8

    .line 872
    :cond_1a
    and-int/2addr v2, v8

    .line 873
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 874
    .line 875
    .line 876
    move-result v2

    .line 877
    if-eqz v2, :cond_1b

    .line 878
    .line 879
    const v2, 0x7f12005a

    .line 880
    .line 881
    .line 882
    invoke-static {v2, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v15

    .line 886
    const/16 v20, 0x0

    .line 887
    .line 888
    const/16 v21, 0x39

    .line 889
    .line 890
    const/4 v14, 0x0

    .line 891
    iget-object v0, v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda16;->f$0:Lkotlin/jvm/functions/Function0;

    .line 892
    .line 893
    const/16 v17, 0x0

    .line 894
    .line 895
    const/16 v18, 0x0

    .line 896
    .line 897
    move-object/from16 v16, v0

    .line 898
    .line 899
    move-object/from16 v19, v1

    .line 900
    .line 901
    invoke-static/range {v14 .. v21}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiTopAppBar-WH-ejsw(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 902
    .line 903
    .line 904
    goto :goto_c

    .line 905
    :cond_1b
    move-object/from16 v19, v1

    .line 906
    .line 907
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 908
    .line 909
    .line 910
    :goto_c
    return-object v6

    .line 911
    :pswitch_9
    move-object/from16 v0, p1

    .line 912
    .line 913
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 914
    .line 915
    move-object/from16 v1, p2

    .line 916
    .line 917
    check-cast v1, Ljava/lang/Integer;

    .line 918
    .line 919
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 920
    .line 921
    .line 922
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 923
    .line 924
    .line 925
    move-result v1

    .line 926
    invoke-static {v4, v0, v1}, Lorg/wikipedia/random/RandomScreenKt;->ShakeToAdvance(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 927
    .line 928
    .line 929
    return-object v6

    .line 930
    nop

    .line 931
    :pswitch_data_0
    .packed-switch 0x0
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

.class public final synthetic Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;->$r8$classId:I

    iput-object p2, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$Adaptive;Landroidx/compose/foundation/layout/Arrangement$Horizontal;)V
    .locals 0

    .line 1
    const/4 p2, 0x7

    .line 2
    iput p2, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 13
    iput p4, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 46

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;->$r8$classId:I

    .line 6
    .line 7
    const/16 v3, 0xf

    .line 8
    .line 9
    const/16 v4, 0xa

    .line 10
    .line 11
    const/16 v5, 0x20

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const-string v7, "-"

    .line 15
    .line 16
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 17
    .line 18
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 19
    .line 20
    const/16 v10, 0x31

    .line 21
    .line 22
    const/4 v11, 0x2

    .line 23
    const/4 v12, 0x0

    .line 24
    const/4 v13, 0x1

    .line 25
    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    iget-object v15, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;->f$1:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v0, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    .line 30
    .line 31
    packed-switch v2, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    check-cast v0, Ljava/lang/String;

    .line 35
    .line 36
    check-cast v15, Ljava/lang/String;

    .line 37
    .line 38
    move-object/from16 v6, p1

    .line 39
    .line 40
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 41
    .line 42
    check-cast v1, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    and-int/lit8 v2, v1, 0x3

    .line 49
    .line 50
    if-eq v2, v11, :cond_0

    .line 51
    .line 52
    move v2, v13

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v2, v12

    .line 55
    :goto_0
    and-int/2addr v1, v13

    .line 56
    invoke-virtual {v6, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    const v0, 0xb311db6

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 72
    .line 73
    .line 74
    const v0, 0x7f080139

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v12, v6}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 82
    .line 83
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 88
    .line 89
    iget-wide v4, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 90
    .line 91
    const/16 v7, 0x38

    .line 92
    .line 93
    const/4 v8, 0x4

    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    const v0, 0xb35c3b3

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 114
    .line 115
    .line 116
    :goto_1
    return-object v14

    .line 117
    :pswitch_0
    check-cast v0, Lorg/wikipedia/language/AppLanguageState;

    .line 118
    .line 119
    check-cast v15, Ljava/lang/String;

    .line 120
    .line 121
    move-object/from16 v2, p1

    .line 122
    .line 123
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 124
    .line 125
    check-cast v1, Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    and-int/lit8 v3, v1, 0x3

    .line 132
    .line 133
    if-eq v3, v11, :cond_3

    .line 134
    .line 135
    move v12, v13

    .line 136
    :cond_3
    and-int/2addr v1, v13

    .line 137
    invoke-virtual {v2, v1, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_6

    .line 142
    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    invoke-virtual {v0, v15}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-nez v0, :cond_4

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    move-object/from16 v16, v0

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_5
    :goto_2
    move-object/from16 v16, v15

    .line 156
    .line 157
    :goto_3
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 158
    .line 159
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 164
    .line 165
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 166
    .line 167
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 168
    .line 169
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 174
    .line 175
    iget-wide v3, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 176
    .line 177
    const/16 v38, 0x0

    .line 178
    .line 179
    const v39, 0x1fffa

    .line 180
    .line 181
    .line 182
    const/16 v17, 0x0

    .line 183
    .line 184
    const/16 v20, 0x0

    .line 185
    .line 186
    const-wide/16 v21, 0x0

    .line 187
    .line 188
    const/16 v23, 0x0

    .line 189
    .line 190
    const/16 v24, 0x0

    .line 191
    .line 192
    const-wide/16 v25, 0x0

    .line 193
    .line 194
    const/16 v27, 0x0

    .line 195
    .line 196
    const-wide/16 v28, 0x0

    .line 197
    .line 198
    const/16 v30, 0x0

    .line 199
    .line 200
    const/16 v31, 0x0

    .line 201
    .line 202
    const/16 v32, 0x0

    .line 203
    .line 204
    const/16 v33, 0x0

    .line 205
    .line 206
    const/16 v34, 0x0

    .line 207
    .line 208
    const/16 v37, 0x0

    .line 209
    .line 210
    move-object/from16 v35, v0

    .line 211
    .line 212
    move-object/from16 v36, v2

    .line 213
    .line 214
    move-wide/from16 v18, v3

    .line 215
    .line 216
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 217
    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_6
    move-object/from16 v36, v2

    .line 221
    .line 222
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 223
    .line 224
    .line 225
    :goto_4
    return-object v14

    .line 226
    :pswitch_1
    check-cast v0, Ljava/lang/Throwable;

    .line 227
    .line 228
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 229
    .line 230
    move-object/from16 v2, p1

    .line 231
    .line 232
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 233
    .line 234
    check-cast v1, Ljava/lang/Integer;

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    invoke-static {v0, v15, v2, v1}, Lorg/wikipedia/feed/ForYouCardKt;->ErrorState(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 244
    .line 245
    .line 246
    return-object v14

    .line 247
    :pswitch_2
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 248
    .line 249
    check-cast v15, Lorg/wikipedia/dataclient/WikiSite;

    .line 250
    .line 251
    move-object/from16 v2, p1

    .line 252
    .line 253
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 254
    .line 255
    check-cast v1, Ljava/lang/Integer;

    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    const/4 v1, 0x7

    .line 261
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    invoke-static {v0, v15, v2, v1}, Lorg/wikipedia/feed/ForYouCardKt;->CommunityDisclaimer(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Landroidx/compose/runtime/GapComposer;I)V

    .line 266
    .line 267
    .line 268
    return-object v14

    .line 269
    :pswitch_3
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 270
    .line 271
    check-cast v15, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;

    .line 272
    .line 273
    move-object/from16 v2, p1

    .line 274
    .line 275
    check-cast v2, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 276
    .line 277
    check-cast v1, Ljava/lang/Integer;

    .line 278
    .line 279
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    new-instance v3, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;

    .line 287
    .line 288
    iget-object v4, v15, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;->date:Ljava/lang/String;

    .line 289
    .line 290
    new-instance v5, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v6, "dyk-"

    .line 293
    .line 294
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-direct {v3, v15, v2, v10, v1}, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/dataclient/page/PageSummary;ILjava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    return-object v14

    .line 317
    :pswitch_4
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 318
    .line 319
    check-cast v15, Lorg/wikipedia/feed/topread/TopReadCard;

    .line 320
    .line 321
    move-object/from16 v2, p1

    .line 322
    .line 323
    check-cast v2, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 324
    .line 325
    check-cast v1, Ljava/lang/Integer;

    .line 326
    .line 327
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    new-instance v3, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;

    .line 335
    .line 336
    iget v4, v15, Lorg/wikipedia/feed/topread/TopReadCard;->age:I

    .line 337
    .line 338
    const-string/jumbo v5, "top-read-"

    .line 339
    .line 340
    .line 341
    invoke-static {v4, v1, v5, v7}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    const/16 v4, 0xe

    .line 346
    .line 347
    invoke-direct {v3, v15, v2, v4, v1}, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/dataclient/page/PageSummary;ILjava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    return-object v14

    .line 354
    :pswitch_5
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 355
    .line 356
    check-cast v15, Landroidx/compose/material3/TooltipStateImpl;

    .line 357
    .line 358
    move-object/from16 v2, p1

    .line 359
    .line 360
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 361
    .line 362
    check-cast v1, Ljava/lang/Integer;

    .line 363
    .line 364
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    and-int/lit8 v3, v1, 0x3

    .line 369
    .line 370
    if-eq v3, v11, :cond_7

    .line 371
    .line 372
    move v3, v13

    .line 373
    goto :goto_5

    .line 374
    :cond_7
    move v3, v12

    .line 375
    :goto_5
    and-int/2addr v1, v13

    .line 376
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-eqz v1, :cond_a

    .line 381
    .line 382
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    or-int/2addr v1, v3

    .line 391
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    if-nez v1, :cond_8

    .line 396
    .line 397
    if-ne v3, v9, :cond_9

    .line 398
    .line 399
    :cond_8
    new-instance v3, Landroidx/compose/material3/internal/BasicTooltipKt$$ExternalSyntheticLambda7;

    .line 400
    .line 401
    invoke-direct {v3, v0, v15, v13}, Landroidx/compose/material3/internal/BasicTooltipKt$$ExternalSyntheticLambda7;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TooltipStateImpl;I)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    :cond_9
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 408
    .line 409
    invoke-static {v8, v3}, Lorg/jsoup/Jsoup;->noRippleClickable$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    .line 410
    .line 411
    .line 412
    move-result-object v18

    .line 413
    const v0, 0x7f08018e

    .line 414
    .line 415
    .line 416
    invoke-static {v0, v12, v2}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 417
    .line 418
    .line 419
    move-result-object v16

    .line 420
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 421
    .line 422
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 427
    .line 428
    iget-wide v0, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 429
    .line 430
    const/16 v22, 0x38

    .line 431
    .line 432
    const/16 v23, 0x0

    .line 433
    .line 434
    const/16 v17, 0x0

    .line 435
    .line 436
    move-wide/from16 v19, v0

    .line 437
    .line 438
    move-object/from16 v21, v2

    .line 439
    .line 440
    invoke-static/range {v16 .. v23}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 441
    .line 442
    .line 443
    goto :goto_6

    .line 444
    :cond_a
    move-object/from16 v21, v2

    .line 445
    .line 446
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 447
    .line 448
    .line 449
    :goto_6
    return-object v14

    .line 450
    :pswitch_6
    move-object/from16 v22, v0

    .line 451
    .line 452
    check-cast v22, Ljava/lang/String;

    .line 453
    .line 454
    move-object/from16 v41, v15

    .line 455
    .line 456
    check-cast v41, Landroidx/compose/ui/text/TextStyle;

    .line 457
    .line 458
    move-object/from16 v0, p1

    .line 459
    .line 460
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 461
    .line 462
    check-cast v1, Ljava/lang/Integer;

    .line 463
    .line 464
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    and-int/lit8 v2, v1, 0x3

    .line 469
    .line 470
    if-eq v2, v11, :cond_b

    .line 471
    .line 472
    move v12, v13

    .line 473
    :cond_b
    and-int/2addr v1, v13

    .line 474
    invoke-virtual {v0, v1, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    if-eqz v1, :cond_c

    .line 479
    .line 480
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 481
    .line 482
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 487
    .line 488
    iget-wide v1, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 489
    .line 490
    const/16 v44, 0x0

    .line 491
    .line 492
    const v45, 0x1fffa

    .line 493
    .line 494
    .line 495
    const/16 v23, 0x0

    .line 496
    .line 497
    const/16 v26, 0x0

    .line 498
    .line 499
    const-wide/16 v27, 0x0

    .line 500
    .line 501
    const/16 v29, 0x0

    .line 502
    .line 503
    const/16 v30, 0x0

    .line 504
    .line 505
    const-wide/16 v31, 0x0

    .line 506
    .line 507
    const/16 v33, 0x0

    .line 508
    .line 509
    const-wide/16 v34, 0x0

    .line 510
    .line 511
    const/16 v36, 0x0

    .line 512
    .line 513
    const/16 v37, 0x0

    .line 514
    .line 515
    const/16 v38, 0x0

    .line 516
    .line 517
    const/16 v39, 0x0

    .line 518
    .line 519
    const/16 v40, 0x0

    .line 520
    .line 521
    const/16 v43, 0x0

    .line 522
    .line 523
    move-object/from16 v42, v0

    .line 524
    .line 525
    move-wide/from16 v24, v1

    .line 526
    .line 527
    invoke-static/range {v22 .. v45}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 528
    .line 529
    .line 530
    goto :goto_7

    .line 531
    :cond_c
    move-object/from16 v42, v0

    .line 532
    .line 533
    invoke-virtual/range {v42 .. v42}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 534
    .line 535
    .line 536
    :goto_7
    return-object v14

    .line 537
    :pswitch_7
    check-cast v0, Ljava/lang/String;

    .line 538
    .line 539
    check-cast v15, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 540
    .line 541
    move-object/from16 v2, p1

    .line 542
    .line 543
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 544
    .line 545
    check-cast v1, Ljava/lang/Integer;

    .line 546
    .line 547
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 548
    .line 549
    .line 550
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    invoke-static {v0, v15, v2, v1}, Lorg/wikipedia/compose/components/TabsBoxKt;->SettingsSection(Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 555
    .line 556
    .line 557
    return-object v14

    .line 558
    :pswitch_8
    check-cast v0, Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 559
    .line 560
    check-cast v15, Landroidx/compose/ui/Modifier;

    .line 561
    .line 562
    move-object/from16 v2, p1

    .line 563
    .line 564
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 565
    .line 566
    check-cast v1, Ljava/lang/Integer;

    .line 567
    .line 568
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 569
    .line 570
    .line 571
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 572
    .line 573
    .line 574
    move-result v1

    .line 575
    invoke-static {v0, v15, v2, v1}, Lorg/wikipedia/activitytab/timeline/TimelineModuleKt;->TimelineContent(Lorg/wikipedia/activitytab/timeline/TimelineItem;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 576
    .line 577
    .line 578
    return-object v14

    .line 579
    :pswitch_9
    check-cast v0, Ljava/util/List;

    .line 580
    .line 581
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 582
    .line 583
    move-object/from16 v2, p1

    .line 584
    .line 585
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 586
    .line 587
    check-cast v1, Ljava/lang/Integer;

    .line 588
    .line 589
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    and-int/lit8 v7, v1, 0x3

    .line 594
    .line 595
    if-eq v7, v11, :cond_d

    .line 596
    .line 597
    move v7, v13

    .line 598
    goto :goto_8

    .line 599
    :cond_d
    move v7, v12

    .line 600
    :goto_8
    and-int/2addr v1, v13

    .line 601
    invoke-virtual {v2, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 602
    .line 603
    .line 604
    move-result v1

    .line 605
    if-eqz v1, :cond_15

    .line 606
    .line 607
    sget-object v1, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 608
    .line 609
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 610
    .line 611
    invoke-static {v1, v7, v2, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    move-object v7, v14

    .line 616
    iget-wide v13, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 617
    .line 618
    ushr-long v16, v13, v5

    .line 619
    .line 620
    xor-long v13, v13, v16

    .line 621
    .line 622
    long-to-int v10, v13

    .line 623
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 624
    .line 625
    .line 626
    move-result-object v13

    .line 627
    invoke-static {v2, v8}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 628
    .line 629
    .line 630
    move-result-object v14

    .line 631
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 632
    .line 633
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 634
    .line 635
    .line 636
    move/from16 v41, v5

    .line 637
    .line 638
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 639
    .line 640
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 641
    .line 642
    .line 643
    iget-boolean v11, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 644
    .line 645
    if-eqz v11, :cond_e

    .line 646
    .line 647
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 648
    .line 649
    .line 650
    goto :goto_9

    .line 651
    :cond_e
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 652
    .line 653
    .line 654
    :goto_9
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 655
    .line 656
    invoke-static {v2, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 657
    .line 658
    .line 659
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 660
    .line 661
    invoke-static {v2, v13, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 662
    .line 663
    .line 664
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 669
    .line 670
    invoke-static {v2, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 671
    .line 672
    .line 673
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 674
    .line 675
    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 676
    .line 677
    .line 678
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 679
    .line 680
    invoke-static {v2, v14, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 681
    .line 682
    .line 683
    const/high16 v1, 0x41000000    # 8.0f

    .line 684
    .line 685
    const/high16 v5, 0x41800000    # 16.0f

    .line 686
    .line 687
    invoke-static {v8, v5, v5, v5, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 688
    .line 689
    .line 690
    move-result-object v16

    .line 691
    const v1, 0x7f080137

    .line 692
    .line 693
    .line 694
    invoke-static {v1, v12, v2}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 695
    .line 696
    .line 697
    move-result-object v17

    .line 698
    const v1, 0x7f120060

    .line 699
    .line 700
    .line 701
    invoke-static {v1, v2}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v18

    .line 705
    const/16 v23, 0x40

    .line 706
    .line 707
    const/16 v24, 0x38

    .line 708
    .line 709
    const/16 v19, 0x0

    .line 710
    .line 711
    const/16 v20, 0x0

    .line 712
    .line 713
    const/16 v21, 0x0

    .line 714
    .line 715
    move-object/from16 v22, v2

    .line 716
    .line 717
    invoke-static/range {v16 .. v24}, Lorg/wikipedia/activitytab/ImpactModuleKt;->CommonCardHeader(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/runtime/GapComposer;II)V

    .line 718
    .line 719
    .line 720
    move-object/from16 v1, v22

    .line 721
    .line 722
    const v2, 0x2a9d9e12

    .line 723
    .line 724
    .line 725
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 726
    .line 727
    .line 728
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 729
    .line 730
    .line 731
    move-result-object v2

    .line 732
    move v10, v12

    .line 733
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 734
    .line 735
    .line 736
    move-result v11

    .line 737
    if-eqz v11, :cond_14

    .line 738
    .line 739
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v11

    .line 743
    add-int/lit8 v13, v10, 0x1

    .line 744
    .line 745
    if-ltz v10, :cond_13

    .line 746
    .line 747
    check-cast v11, Lorg/wikipedia/categories/db/Category;

    .line 748
    .line 749
    const/high16 v14, 0x3f800000    # 1.0f

    .line 750
    .line 751
    invoke-static {v8, v14}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 752
    .line 753
    .line 754
    move-result-object v14

    .line 755
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    move-result v16

    .line 759
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    move-result v17

    .line 763
    or-int v16, v16, v17

    .line 764
    .line 765
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v5

    .line 769
    if-nez v16, :cond_f

    .line 770
    .line 771
    if-ne v5, v9, :cond_10

    .line 772
    .line 773
    :cond_f
    new-instance v5, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    .line 774
    .line 775
    invoke-direct {v5, v4, v15, v11}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 779
    .line 780
    .line 781
    :cond_10
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 782
    .line 783
    invoke-static {v3, v14, v6, v5, v12}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 784
    .line 785
    .line 786
    move-result-object v5

    .line 787
    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 788
    .line 789
    invoke-static {v14, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 790
    .line 791
    .line 792
    move-result-object v14

    .line 793
    move-object/from16 v43, v6

    .line 794
    .line 795
    move-object/from16 v44, v7

    .line 796
    .line 797
    iget-wide v6, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 798
    .line 799
    ushr-long v16, v6, v41

    .line 800
    .line 801
    xor-long v6, v6, v16

    .line 802
    .line 803
    long-to-int v6, v6

    .line 804
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 805
    .line 806
    .line 807
    move-result-object v7

    .line 808
    invoke-static {v1, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 809
    .line 810
    .line 811
    move-result-object v5

    .line 812
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 813
    .line 814
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 815
    .line 816
    .line 817
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 818
    .line 819
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 820
    .line 821
    .line 822
    iget-boolean v4, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 823
    .line 824
    if-eqz v4, :cond_11

    .line 825
    .line 826
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 827
    .line 828
    .line 829
    goto :goto_b

    .line 830
    :cond_11
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 831
    .line 832
    .line 833
    :goto_b
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 834
    .line 835
    invoke-static {v1, v14, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 836
    .line 837
    .line 838
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 839
    .line 840
    invoke-static {v1, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 841
    .line 842
    .line 843
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 844
    .line 845
    .line 846
    move-result-object v3

    .line 847
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 848
    .line 849
    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 850
    .line 851
    .line 852
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 853
    .line 854
    invoke-static {v1, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 855
    .line 856
    .line 857
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 858
    .line 859
    invoke-static {v1, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 860
    .line 861
    .line 862
    const/high16 v3, 0x42000000    # 32.0f

    .line 863
    .line 864
    const/high16 v4, 0x41800000    # 16.0f

    .line 865
    .line 866
    invoke-static {v8, v3, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 867
    .line 868
    .line 869
    move-result-object v17

    .line 870
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 871
    .line 872
    iget-object v3, v11, Lorg/wikipedia/categories/db/Category;->title:Ljava/lang/String;

    .line 873
    .line 874
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v16

    .line 878
    sget-object v3, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 879
    .line 880
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v3

    .line 884
    check-cast v3, Landroidx/compose/material3/Typography;

    .line 885
    .line 886
    iget-object v3, v3, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 887
    .line 888
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 889
    .line 890
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v5

    .line 894
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 895
    .line 896
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 897
    .line 898
    const/16 v38, 0x0

    .line 899
    .line 900
    const v39, 0x1fff8

    .line 901
    .line 902
    .line 903
    const/16 v20, 0x0

    .line 904
    .line 905
    const-wide/16 v21, 0x0

    .line 906
    .line 907
    const/16 v23, 0x0

    .line 908
    .line 909
    const/16 v24, 0x0

    .line 910
    .line 911
    const-wide/16 v25, 0x0

    .line 912
    .line 913
    const/16 v27, 0x0

    .line 914
    .line 915
    const-wide/16 v28, 0x0

    .line 916
    .line 917
    const/16 v30, 0x0

    .line 918
    .line 919
    const/16 v31, 0x0

    .line 920
    .line 921
    const/16 v32, 0x0

    .line 922
    .line 923
    const/16 v33, 0x0

    .line 924
    .line 925
    const/16 v34, 0x0

    .line 926
    .line 927
    const/16 v37, 0x30

    .line 928
    .line 929
    move-object/from16 v36, v1

    .line 930
    .line 931
    move-object/from16 v35, v3

    .line 932
    .line 933
    move-wide/from16 v18, v5

    .line 934
    .line 935
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 936
    .line 937
    .line 938
    const/4 v3, 0x1

    .line 939
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 940
    .line 941
    .line 942
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 943
    .line 944
    .line 945
    move-result v5

    .line 946
    sub-int/2addr v5, v3

    .line 947
    if-ge v10, v5, :cond_12

    .line 948
    .line 949
    const v3, -0x5fa77aa5

    .line 950
    .line 951
    .line 952
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 953
    .line 954
    .line 955
    const/4 v3, 0x0

    .line 956
    const/4 v5, 0x2

    .line 957
    const/high16 v6, 0x41800000    # 16.0f

    .line 958
    .line 959
    invoke-static {v8, v6, v3, v5}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 960
    .line 961
    .line 962
    move-result-object v16

    .line 963
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 964
    .line 965
    .line 966
    move-result-object v3

    .line 967
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 968
    .line 969
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 970
    .line 971
    const/16 v21, 0x6

    .line 972
    .line 973
    const/16 v22, 0x2

    .line 974
    .line 975
    const/16 v17, 0x0

    .line 976
    .line 977
    move-object/from16 v20, v1

    .line 978
    .line 979
    move-wide/from16 v18, v3

    .line 980
    .line 981
    invoke-static/range {v16 .. v22}, Landroidx/compose/material3/CardKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/GapComposer;II)V

    .line 982
    .line 983
    .line 984
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 985
    .line 986
    .line 987
    goto :goto_c

    .line 988
    :cond_12
    const/high16 v6, 0x41800000    # 16.0f

    .line 989
    .line 990
    const v3, -0x5fa4448a

    .line 991
    .line 992
    .line 993
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 994
    .line 995
    .line 996
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 997
    .line 998
    .line 999
    :goto_c
    move v5, v6

    .line 1000
    move v10, v13

    .line 1001
    move-object/from16 v6, v43

    .line 1002
    .line 1003
    move-object/from16 v7, v44

    .line 1004
    .line 1005
    const/16 v3, 0xf

    .line 1006
    .line 1007
    const/16 v4, 0xa

    .line 1008
    .line 1009
    goto/16 :goto_a

    .line 1010
    .line 1011
    :cond_13
    move-object/from16 v43, v6

    .line 1012
    .line 1013
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 1014
    .line 1015
    .line 1016
    throw v43

    .line 1017
    :cond_14
    move-object/from16 v44, v7

    .line 1018
    .line 1019
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1020
    .line 1021
    .line 1022
    const/4 v3, 0x1

    .line 1023
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1024
    .line 1025
    .line 1026
    goto :goto_d

    .line 1027
    :cond_15
    move-object v1, v2

    .line 1028
    move-object/from16 v44, v14

    .line 1029
    .line 1030
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1031
    .line 1032
    .line 1033
    :goto_d
    return-object v44

    .line 1034
    :pswitch_a
    move v3, v13

    .line 1035
    move-object/from16 v44, v14

    .line 1036
    .line 1037
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 1038
    .line 1039
    check-cast v15, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1040
    .line 1041
    move-object/from16 v2, p1

    .line 1042
    .line 1043
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1044
    .line 1045
    check-cast v1, Ljava/lang/Integer;

    .line 1046
    .line 1047
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1048
    .line 1049
    .line 1050
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1051
    .line 1052
    .line 1053
    move-result v1

    .line 1054
    invoke-static {v0, v15, v2, v1}, Landroidx/work/Operation$State;->SaveableStateProvider(Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 1055
    .line 1056
    .line 1057
    return-object v44

    .line 1058
    :pswitch_b
    move v3, v13

    .line 1059
    move-object/from16 v44, v14

    .line 1060
    .line 1061
    check-cast v0, Ljava/util/List;

    .line 1062
    .line 1063
    check-cast v15, Ljava/util/Collection;

    .line 1064
    .line 1065
    move-object/from16 v2, p1

    .line 1066
    .line 1067
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1068
    .line 1069
    check-cast v1, Ljava/lang/Integer;

    .line 1070
    .line 1071
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1072
    .line 1073
    .line 1074
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1075
    .line 1076
    .line 1077
    move-result v1

    .line 1078
    invoke-static {v0, v15, v2, v1}, Landroidx/compose/ui/unit/DpKt;->PopulateVisibleList(Ljava/util/List;Ljava/util/Collection;Landroidx/compose/runtime/GapComposer;I)V

    .line 1079
    .line 1080
    .line 1081
    return-object v44

    .line 1082
    :pswitch_c
    move-object/from16 v44, v14

    .line 1083
    .line 1084
    check-cast v0, Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 1085
    .line 1086
    check-cast v15, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 1087
    .line 1088
    move-object/from16 v2, p1

    .line 1089
    .line 1090
    check-cast v2, Ljava/lang/Integer;

    .line 1091
    .line 1092
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1093
    .line 1094
    .line 1095
    move-result v2

    .line 1096
    instance-of v3, v1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 1097
    .line 1098
    if-eqz v3, :cond_16

    .line 1099
    .line 1100
    check-cast v1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 1101
    .line 1102
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 1103
    .line 1104
    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 1105
    .line 1106
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 1107
    .line 1108
    .line 1109
    goto :goto_e

    .line 1110
    :cond_16
    instance-of v3, v1, Landroidx/compose/runtime/ReusableGapRememberObserverHolder;

    .line 1111
    .line 1112
    if-nez v3, :cond_18

    .line 1113
    .line 1114
    instance-of v3, v1, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 1115
    .line 1116
    if-eqz v3, :cond_17

    .line 1117
    .line 1118
    invoke-static {v15, v2, v1}, Landroidx/compose/runtime/Updater;->removeData(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;ILjava/lang/Object;)V

    .line 1119
    .line 1120
    .line 1121
    check-cast v1, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 1122
    .line 1123
    invoke-virtual {v0, v1}, Lorg/wikipedia/databinding/ActivityLoginBinding;->forgetting(Landroidx/compose/runtime/GapRememberObserverHolder;)V

    .line 1124
    .line 1125
    .line 1126
    goto :goto_e

    .line 1127
    :cond_17
    instance-of v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1128
    .line 1129
    if-eqz v0, :cond_18

    .line 1130
    .line 1131
    invoke-static {v15, v2, v1}, Landroidx/compose/runtime/Updater;->removeData(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;ILjava/lang/Object;)V

    .line 1132
    .line 1133
    .line 1134
    move-object v0, v1

    .line 1135
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1136
    .line 1137
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    .line 1138
    .line 1139
    .line 1140
    :cond_18
    :goto_e
    return-object v44

    .line 1141
    :pswitch_d
    move-object/from16 v44, v14

    .line 1142
    .line 1143
    check-cast v0, Landroidx/compose/ui/text/TextStyle;

    .line 1144
    .line 1145
    check-cast v15, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1146
    .line 1147
    move-object/from16 v2, p1

    .line 1148
    .line 1149
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1150
    .line 1151
    check-cast v1, Ljava/lang/Integer;

    .line 1152
    .line 1153
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1154
    .line 1155
    .line 1156
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1157
    .line 1158
    .line 1159
    move-result v1

    .line 1160
    invoke-static {v0, v15, v2, v1}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 1161
    .line 1162
    .line 1163
    return-object v44

    .line 1164
    :pswitch_e
    move-object/from16 v44, v14

    .line 1165
    .line 1166
    check-cast v0, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    .line 1167
    .line 1168
    check-cast v15, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    .line 1169
    .line 1170
    move-object/from16 v2, p1

    .line 1171
    .line 1172
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1173
    .line 1174
    check-cast v1, Ljava/lang/Integer;

    .line 1175
    .line 1176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1177
    .line 1178
    .line 1179
    const/16 v40, 0x1

    .line 1180
    .line 1181
    invoke-static/range {v40 .. v40}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1182
    .line 1183
    .line 1184
    move-result v1

    .line 1185
    invoke-virtual {v0, v15, v2, v1}, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;->SingleRowTopAppBar(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;Landroidx/compose/runtime/GapComposer;I)V

    .line 1186
    .line 1187
    .line 1188
    return-object v44

    .line 1189
    :pswitch_f
    move/from16 v40, v13

    .line 1190
    .line 1191
    move-object/from16 v44, v14

    .line 1192
    .line 1193
    check-cast v0, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;

    .line 1194
    .line 1195
    check-cast v15, Lcoil3/ImageLoader$Builder;

    .line 1196
    .line 1197
    move-object/from16 v2, p1

    .line 1198
    .line 1199
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1200
    .line 1201
    check-cast v1, Ljava/lang/Integer;

    .line 1202
    .line 1203
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1204
    .line 1205
    .line 1206
    invoke-static/range {v40 .. v40}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1207
    .line 1208
    .line 1209
    move-result v1

    .line 1210
    invoke-virtual {v0, v15, v2, v1}, Landroidx/compose/material3/DefaultBasicAlertDialogOverride;->BasicAlertDialog(Lcoil3/ImageLoader$Builder;Landroidx/compose/runtime/GapComposer;I)V

    .line 1211
    .line 1212
    .line 1213
    return-object v44

    .line 1214
    :pswitch_10
    move/from16 v41, v5

    .line 1215
    .line 1216
    move-object/from16 v43, v6

    .line 1217
    .line 1218
    move-object/from16 v44, v14

    .line 1219
    .line 1220
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1221
    .line 1222
    check-cast v15, Lkotlinx/coroutines/CoroutineScope;

    .line 1223
    .line 1224
    move-object/from16 v1, p1

    .line 1225
    .line 1226
    check-cast v1, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 1227
    .line 1228
    move-object/from16 v2, p2

    .line 1229
    .line 1230
    check-cast v2, Landroid/content/Context;

    .line 1231
    .line 1232
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEditable()Z

    .line 1233
    .line 1234
    .line 1235
    move-result v3

    .line 1236
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getTransformedText$foundation()Landroidx/compose/ui/text/AnnotatedString;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v4

    .line 1240
    if-eqz v4, :cond_19

    .line 1241
    .line 1242
    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1243
    .line 1244
    goto :goto_f

    .line 1245
    :cond_19
    move-object/from16 v4, v43

    .line 1246
    .line 1247
    :goto_f
    iget-object v5, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->latestSelection:Landroidx/compose/ui/text/TextRange;

    .line 1248
    .line 1249
    if-eqz v5, :cond_1a

    .line 1250
    .line 1251
    iget-wide v5, v5, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 1252
    .line 1253
    iget-object v7, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 1254
    .line 1255
    shr-long v8, v5, v41

    .line 1256
    .line 1257
    long-to-int v8, v8

    .line 1258
    invoke-interface {v7, v8}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 1259
    .line 1260
    .line 1261
    move-result v8

    .line 1262
    const-wide v9, 0xffffffffL

    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    and-long/2addr v5, v9

    .line 1268
    long-to-int v5, v5

    .line 1269
    invoke-interface {v7, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 1270
    .line 1271
    .line 1272
    move-result v5

    .line 1273
    invoke-static {v8, v5}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 1274
    .line 1275
    .line 1276
    move-result-wide v5

    .line 1277
    new-instance v7, Landroidx/compose/ui/text/TextRange;

    .line 1278
    .line 1279
    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 1280
    .line 1281
    .line 1282
    move-object v5, v7

    .line 1283
    goto :goto_10

    .line 1284
    :cond_1a
    move-object/from16 v5, v43

    .line 1285
    .line 1286
    :goto_10
    iget-object v6, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 1287
    .line 1288
    new-instance v7, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 1289
    .line 1290
    const/16 v8, 0xa

    .line 1291
    .line 1292
    invoke-direct {v7, v0, v15, v2, v8}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1293
    .line 1294
    .line 1295
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->addPlatformTextContextMenuItems-71BSaZU(Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;Landroid/content/Context;ZLjava/lang/CharSequence;Landroidx/compose/ui/text/TextRange;Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;Lkotlin/jvm/functions/Function1;)V

    .line 1296
    .line 1297
    .line 1298
    return-object v44

    .line 1299
    :pswitch_11
    move-object/from16 v44, v14

    .line 1300
    .line 1301
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;

    .line 1302
    .line 1303
    check-cast v15, Landroid/graphics/drawable/Drawable;

    .line 1304
    .line 1305
    move-object/from16 v1, p1

    .line 1306
    .line 1307
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1308
    .line 1309
    move-object/from16 v2, p2

    .line 1310
    .line 1311
    check-cast v2, Ljava/lang/Integer;

    .line 1312
    .line 1313
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1314
    .line 1315
    .line 1316
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1317
    .line 1318
    .line 1319
    move-result v2

    .line 1320
    invoke-virtual {v0, v15, v1, v2}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->IconBox(Landroid/graphics/drawable/Drawable;Landroidx/compose/runtime/GapComposer;I)V

    .line 1321
    .line 1322
    .line 1323
    return-object v44

    .line 1324
    :pswitch_12
    move-object/from16 v44, v14

    .line 1325
    .line 1326
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 1327
    .line 1328
    check-cast v15, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 1329
    .line 1330
    move-object/from16 v1, p1

    .line 1331
    .line 1332
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1333
    .line 1334
    move-object/from16 v2, p2

    .line 1335
    .line 1336
    check-cast v2, Ljava/lang/Integer;

    .line 1337
    .line 1338
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1339
    .line 1340
    .line 1341
    const/16 v40, 0x1

    .line 1342
    .line 1343
    invoke-static/range {v40 .. v40}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1344
    .line 1345
    .line 1346
    move-result v2

    .line 1347
    invoke-static {v0, v15, v1, v2}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->DefaultTextContextMenuDropdown(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroidx/compose/runtime/GapComposer;I)V

    .line 1348
    .line 1349
    .line 1350
    return-object v44

    .line 1351
    :pswitch_13
    move-object/from16 v44, v14

    .line 1352
    .line 1353
    move-object v5, v0

    .line 1354
    check-cast v5, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 1355
    .line 1356
    check-cast v15, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 1357
    .line 1358
    move-object/from16 v0, p1

    .line 1359
    .line 1360
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1361
    .line 1362
    move-object/from16 v1, p2

    .line 1363
    .line 1364
    check-cast v1, Ljava/lang/Integer;

    .line 1365
    .line 1366
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1367
    .line 1368
    .line 1369
    move-result v1

    .line 1370
    and-int/lit8 v2, v1, 0x3

    .line 1371
    .line 1372
    const/4 v3, 0x2

    .line 1373
    if-eq v2, v3, :cond_1b

    .line 1374
    .line 1375
    const/4 v2, 0x1

    .line 1376
    :goto_11
    const/16 v40, 0x1

    .line 1377
    .line 1378
    goto :goto_12

    .line 1379
    :cond_1b
    move v2, v12

    .line 1380
    goto :goto_11

    .line 1381
    :goto_12
    and-int/lit8 v1, v1, 0x1

    .line 1382
    .line 1383
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1384
    .line 1385
    .line 1386
    move-result v1

    .line 1387
    if-eqz v1, :cond_1e

    .line 1388
    .line 1389
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1390
    .line 1391
    .line 1392
    move-result v1

    .line 1393
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v2

    .line 1397
    if-nez v1, :cond_1c

    .line 1398
    .line 1399
    if-ne v2, v9, :cond_1d

    .line 1400
    .line 1401
    :cond_1c
    new-instance v3, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 1402
    .line 1403
    const/4 v9, 0x0

    .line 1404
    const/4 v10, 0x2

    .line 1405
    const/4 v4, 0x0

    .line 1406
    const-class v6, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 1407
    .line 1408
    const-string v7, "data"

    .line 1409
    .line 1410
    const-string v8, "data()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;"

    .line 1411
    .line 1412
    invoke-direct/range {v3 .. v10}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1413
    .line 1414
    .line 1415
    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v2

    .line 1419
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1420
    .line 1421
    .line 1422
    :cond_1d
    check-cast v2, Landroidx/compose/runtime/State;

    .line 1423
    .line 1424
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v1

    .line 1428
    check-cast v1, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 1429
    .line 1430
    invoke-static {v15, v1, v0, v12}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->DefaultTextContextMenuDropdown(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroidx/compose/runtime/GapComposer;I)V

    .line 1431
    .line 1432
    .line 1433
    goto :goto_13

    .line 1434
    :cond_1e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1435
    .line 1436
    .line 1437
    :goto_13
    return-object v44

    .line 1438
    :pswitch_14
    move-object/from16 v44, v14

    .line 1439
    .line 1440
    check-cast v0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1441
    .line 1442
    check-cast v15, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;

    .line 1443
    .line 1444
    move-object/from16 v1, p1

    .line 1445
    .line 1446
    check-cast v1, Ljava/lang/Float;

    .line 1447
    .line 1448
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 1449
    .line 1450
    .line 1451
    move-result v1

    .line 1452
    move-object/from16 v2, p2

    .line 1453
    .line 1454
    check-cast v2, Ljava/lang/Float;

    .line 1455
    .line 1456
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1457
    .line 1458
    .line 1459
    iget v2, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1460
    .line 1461
    sub-float/2addr v1, v2

    .line 1462
    iget-object v2, v15, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;->$$delegate_0:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 1463
    .line 1464
    invoke-interface {v2, v1}, Landroidx/compose/foundation/gestures/ScrollScope;->scrollBy(F)F

    .line 1465
    .line 1466
    .line 1467
    move-result v1

    .line 1468
    iget v2, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1469
    .line 1470
    add-float/2addr v2, v1

    .line 1471
    iput v2, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1472
    .line 1473
    return-object v44

    .line 1474
    :pswitch_15
    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 1475
    .line 1476
    move-object v1, v15

    .line 1477
    check-cast v1, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 1478
    .line 1479
    move-object/from16 v2, p1

    .line 1480
    .line 1481
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 1482
    .line 1483
    move-object/from16 v3, p2

    .line 1484
    .line 1485
    check-cast v3, Landroidx/compose/ui/unit/Constraints;

    .line 1486
    .line 1487
    iget-wide v4, v3, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1488
    .line 1489
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 1490
    .line 1491
    .line 1492
    move-result v4

    .line 1493
    const v5, 0x7fffffff

    .line 1494
    .line 1495
    .line 1496
    if-eq v4, v5, :cond_1f

    .line 1497
    .line 1498
    goto :goto_14

    .line 1499
    :cond_1f
    const-string v4, "LazyVerticalStaggeredGrid\'s width should be bound by parent."

    .line 1500
    .line 1501
    invoke-static {v4}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1502
    .line 1503
    .line 1504
    :goto_14
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1505
    .line 1506
    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/OffsetKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 1507
    .line 1508
    .line 1509
    move-result v5

    .line 1510
    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/OffsetKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 1511
    .line 1512
    .line 1513
    move-result v0

    .line 1514
    add-float/2addr v0, v5

    .line 1515
    iget-wide v3, v3, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1516
    .line 1517
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 1518
    .line 1519
    .line 1520
    move-result v3

    .line 1521
    invoke-interface {v2, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 1522
    .line 1523
    .line 1524
    move-result v0

    .line 1525
    sub-int/2addr v3, v0

    .line 1526
    invoke-interface {v1}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    .line 1527
    .line 1528
    .line 1529
    move-result v0

    .line 1530
    invoke-interface {v2, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 1531
    .line 1532
    .line 1533
    move-result v0

    .line 1534
    add-int v4, v3, v0

    .line 1535
    .line 1536
    const/high16 v5, 0x430c0000    # 140.0f

    .line 1537
    .line 1538
    invoke-interface {v2, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 1539
    .line 1540
    .line 1541
    move-result v5

    .line 1542
    add-int/2addr v5, v0

    .line 1543
    div-int/2addr v4, v5

    .line 1544
    const/4 v5, 0x1

    .line 1545
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 1546
    .line 1547
    .line 1548
    move-result v4

    .line 1549
    add-int/lit8 v5, v4, -0x1

    .line 1550
    .line 1551
    mul-int/2addr v5, v0

    .line 1552
    sub-int v0, v3, v5

    .line 1553
    .line 1554
    div-int v5, v0, v4

    .line 1555
    .line 1556
    rem-int/2addr v0, v4

    .line 1557
    new-array v6, v4, [I

    .line 1558
    .line 1559
    move v7, v12

    .line 1560
    :goto_15
    if-ge v7, v4, :cond_22

    .line 1561
    .line 1562
    if-gez v5, :cond_20

    .line 1563
    .line 1564
    move v8, v12

    .line 1565
    goto :goto_17

    .line 1566
    :cond_20
    if-ge v7, v0, :cond_21

    .line 1567
    .line 1568
    const/4 v8, 0x1

    .line 1569
    goto :goto_16

    .line 1570
    :cond_21
    move v8, v12

    .line 1571
    :goto_16
    add-int/2addr v8, v5

    .line 1572
    :goto_17
    aput v8, v6, v7

    .line 1573
    .line 1574
    add-int/lit8 v7, v7, 0x1

    .line 1575
    .line 1576
    goto :goto_15

    .line 1577
    :cond_22
    new-array v0, v4, [I

    .line 1578
    .line 1579
    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1580
    .line 1581
    move-object v4, v6

    .line 1582
    move-object v6, v0

    .line 1583
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 1584
    .line 1585
    .line 1586
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 1587
    .line 1588
    invoke-direct {v0, v6, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;-><init>([I[I)V

    .line 1589
    .line 1590
    .line 1591
    return-object v0

    .line 1592
    :pswitch_16
    move-object/from16 v44, v14

    .line 1593
    .line 1594
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1595
    .line 1596
    check-cast v15, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 1597
    .line 1598
    move-object/from16 v1, p1

    .line 1599
    .line 1600
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1601
    .line 1602
    move-object/from16 v2, p2

    .line 1603
    .line 1604
    check-cast v2, Ljava/lang/Integer;

    .line 1605
    .line 1606
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1607
    .line 1608
    .line 1609
    move-result v2

    .line 1610
    and-int/lit8 v3, v2, 0x3

    .line 1611
    .line 1612
    const/4 v5, 0x2

    .line 1613
    if-eq v3, v5, :cond_23

    .line 1614
    .line 1615
    const/4 v3, 0x1

    .line 1616
    :goto_18
    const/16 v40, 0x1

    .line 1617
    .line 1618
    goto :goto_19

    .line 1619
    :cond_23
    move v3, v12

    .line 1620
    goto :goto_18

    .line 1621
    :goto_19
    and-int/lit8 v2, v2, 0x1

    .line 1622
    .line 1623
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1624
    .line 1625
    .line 1626
    move-result v2

    .line 1627
    if-eqz v2, :cond_24

    .line 1628
    .line 1629
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v2

    .line 1633
    invoke-virtual {v0, v15, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    .line 1635
    .line 1636
    goto :goto_1a

    .line 1637
    :cond_24
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1638
    .line 1639
    .line 1640
    :goto_1a
    return-object v44

    .line 1641
    :pswitch_17
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 1642
    .line 1643
    check-cast v15, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    .line 1644
    .line 1645
    move-object/from16 v1, p1

    .line 1646
    .line 1647
    check-cast v1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 1648
    .line 1649
    move-object/from16 v2, p2

    .line 1650
    .line 1651
    check-cast v2, Landroidx/compose/ui/unit/Constraints;

    .line 1652
    .line 1653
    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    .line 1654
    .line 1655
    invoke-direct {v3, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeMeasureScope;)V

    .line 1656
    .line 1657
    .line 1658
    iget-wide v0, v2, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1659
    .line 1660
    invoke-interface {v15, v3, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;->measure-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v0

    .line 1664
    return-object v0

    .line 1665
    :pswitch_18
    move-object/from16 v44, v14

    .line 1666
    .line 1667
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 1668
    .line 1669
    check-cast v15, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;

    .line 1670
    .line 1671
    move-object/from16 v5, p1

    .line 1672
    .line 1673
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1674
    .line 1675
    move-object/from16 v1, p2

    .line 1676
    .line 1677
    check-cast v1, Ljava/lang/Integer;

    .line 1678
    .line 1679
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1680
    .line 1681
    .line 1682
    move-result v1

    .line 1683
    and-int/lit8 v2, v1, 0x3

    .line 1684
    .line 1685
    const/4 v3, 0x2

    .line 1686
    if-eq v2, v3, :cond_25

    .line 1687
    .line 1688
    const/4 v2, 0x1

    .line 1689
    :goto_1b
    const/16 v40, 0x1

    .line 1690
    .line 1691
    goto :goto_1c

    .line 1692
    :cond_25
    move v2, v12

    .line 1693
    goto :goto_1b

    .line 1694
    :goto_1c
    and-int/lit8 v1, v1, 0x1

    .line 1695
    .line 1696
    invoke-virtual {v5, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1697
    .line 1698
    .line 1699
    move-result v1

    .line 1700
    if-eqz v1, :cond_2b

    .line 1701
    .line 1702
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->itemProvider:Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;

    .line 1703
    .line 1704
    invoke-virtual {v1}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;->invoke()Ljava/lang/Object;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v1

    .line 1708
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 1709
    .line 1710
    iget v2, v15, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->index:I

    .line 1711
    .line 1712
    iget-object v7, v15, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->key:Ljava/lang/Object;

    .line 1713
    .line 1714
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    .line 1715
    .line 1716
    .line 1717
    move-result v3

    .line 1718
    const/4 v4, -0x1

    .line 1719
    if-ge v2, v3, :cond_27

    .line 1720
    .line 1721
    invoke-interface {v1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v3

    .line 1725
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1726
    .line 1727
    .line 1728
    move-result v3

    .line 1729
    if-nez v3, :cond_26

    .line 1730
    .line 1731
    goto :goto_1e

    .line 1732
    :cond_26
    :goto_1d
    move v3, v2

    .line 1733
    goto :goto_1f

    .line 1734
    :cond_27
    :goto_1e
    invoke-interface {v1, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getIndex(Ljava/lang/Object;)I

    .line 1735
    .line 1736
    .line 1737
    move-result v2

    .line 1738
    if-eq v2, v4, :cond_26

    .line 1739
    .line 1740
    iput v2, v15, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->index:I

    .line 1741
    .line 1742
    goto :goto_1d

    .line 1743
    :goto_1f
    if-eq v3, v4, :cond_28

    .line 1744
    .line 1745
    const v2, -0x6339ef97

    .line 1746
    .line 1747
    .line 1748
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1749
    .line 1750
    .line 1751
    iget-object v2, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->saveableStateHolder:Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 1752
    .line 1753
    iget-object v4, v15, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->key:Ljava/lang/Object;

    .line 1754
    .line 1755
    const/4 v6, 0x0

    .line 1756
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->SkippableItem-JVlU9Rs(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/GapComposer;I)V

    .line 1757
    .line 1758
    .line 1759
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1760
    .line 1761
    .line 1762
    goto :goto_20

    .line 1763
    :cond_28
    const v0, -0x633657e2

    .line 1764
    .line 1765
    .line 1766
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1767
    .line 1768
    .line 1769
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1770
    .line 1771
    .line 1772
    :goto_20
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1773
    .line 1774
    .line 1775
    move-result v0

    .line 1776
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v1

    .line 1780
    if-nez v0, :cond_29

    .line 1781
    .line 1782
    if-ne v1, v9, :cond_2a

    .line 1783
    .line 1784
    :cond_29
    new-instance v1, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;

    .line 1785
    .line 1786
    const/16 v0, 0xd

    .line 1787
    .line 1788
    invoke-direct {v1, v0, v15}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 1789
    .line 1790
    .line 1791
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1792
    .line 1793
    .line 1794
    :cond_2a
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1795
    .line 1796
    invoke-static {v7, v1, v5}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;)V

    .line 1797
    .line 1798
    .line 1799
    goto :goto_21

    .line 1800
    :cond_2b
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1801
    .line 1802
    .line 1803
    :goto_21
    return-object v44

    .line 1804
    :pswitch_19
    move-object/from16 v44, v14

    .line 1805
    .line 1806
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1807
    .line 1808
    check-cast v15, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    .line 1809
    .line 1810
    move-object/from16 v1, p1

    .line 1811
    .line 1812
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1813
    .line 1814
    move-object/from16 v2, p2

    .line 1815
    .line 1816
    check-cast v2, Ljava/lang/Integer;

    .line 1817
    .line 1818
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1819
    .line 1820
    .line 1821
    move-result v2

    .line 1822
    and-int/lit8 v3, v2, 0x3

    .line 1823
    .line 1824
    const/4 v5, 0x2

    .line 1825
    if-eq v3, v5, :cond_2c

    .line 1826
    .line 1827
    const/4 v3, 0x1

    .line 1828
    :goto_22
    const/16 v40, 0x1

    .line 1829
    .line 1830
    goto :goto_23

    .line 1831
    :cond_2c
    move v3, v12

    .line 1832
    goto :goto_22

    .line 1833
    :goto_23
    and-int/lit8 v2, v2, 0x1

    .line 1834
    .line 1835
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1836
    .line 1837
    .line 1838
    move-result v2

    .line 1839
    if-eqz v2, :cond_2d

    .line 1840
    .line 1841
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v2

    .line 1845
    invoke-virtual {v0, v15, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    .line 1847
    .line 1848
    goto :goto_24

    .line 1849
    :cond_2d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1850
    .line 1851
    .line 1852
    :goto_24
    return-object v44

    .line 1853
    :pswitch_1a
    move-object/from16 v44, v14

    .line 1854
    .line 1855
    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1856
    .line 1857
    check-cast v15, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1858
    .line 1859
    move-object/from16 v1, p1

    .line 1860
    .line 1861
    check-cast v1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 1862
    .line 1863
    move-object/from16 v2, p2

    .line 1864
    .line 1865
    check-cast v2, Landroidx/compose/ui/unit/Constraints;

    .line 1866
    .line 1867
    new-instance v3, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    .line 1868
    .line 1869
    iget-wide v4, v2, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1870
    .line 1871
    invoke-direct {v3, v1, v4, v5}, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;-><init>(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)V

    .line 1872
    .line 1873
    .line 1874
    new-instance v4, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;

    .line 1875
    .line 1876
    const/4 v5, 0x3

    .line 1877
    invoke-direct {v4, v5, v15, v3}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1878
    .line 1879
    .line 1880
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1881
    .line 1882
    const v5, -0x19bf96da

    .line 1883
    .line 1884
    .line 1885
    const/4 v6, 0x1

    .line 1886
    invoke-direct {v3, v4, v6, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 1887
    .line 1888
    .line 1889
    move-object/from16 v7, v44

    .line 1890
    .line 1891
    invoke-interface {v1, v7, v3}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v3

    .line 1895
    iget-wide v4, v2, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1896
    .line 1897
    invoke-interface {v0, v1, v3, v4, v5}, Landroidx/compose/ui/layout/MeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v0

    .line 1901
    return-object v0

    .line 1902
    :pswitch_1b
    move v6, v13

    .line 1903
    move-object v7, v14

    .line 1904
    check-cast v0, Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    .line 1905
    .line 1906
    check-cast v15, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 1907
    .line 1908
    move-object/from16 v1, p1

    .line 1909
    .line 1910
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1911
    .line 1912
    move-object/from16 v2, p2

    .line 1913
    .line 1914
    check-cast v2, Ljava/lang/Integer;

    .line 1915
    .line 1916
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1917
    .line 1918
    .line 1919
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1920
    .line 1921
    .line 1922
    move-result v2

    .line 1923
    invoke-virtual {v0, v15, v1, v2}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->Content$foundation(Landroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/runtime/GapComposer;I)V

    .line 1924
    .line 1925
    .line 1926
    return-object v7

    .line 1927
    :pswitch_1c
    move-object v7, v14

    .line 1928
    check-cast v0, Lorg/wikipedia/feed/TabsState;

    .line 1929
    .line 1930
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 1931
    .line 1932
    move-object/from16 v1, p1

    .line 1933
    .line 1934
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1935
    .line 1936
    move-object/from16 v2, p2

    .line 1937
    .line 1938
    check-cast v2, Ljava/lang/Integer;

    .line 1939
    .line 1940
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1941
    .line 1942
    .line 1943
    move-result v2

    .line 1944
    and-int/lit8 v3, v2, 0x3

    .line 1945
    .line 1946
    const/4 v5, 0x2

    .line 1947
    if-eq v3, v5, :cond_2e

    .line 1948
    .line 1949
    const/4 v3, 0x1

    .line 1950
    :goto_25
    const/16 v40, 0x1

    .line 1951
    .line 1952
    goto :goto_26

    .line 1953
    :cond_2e
    move v3, v12

    .line 1954
    goto :goto_25

    .line 1955
    :goto_26
    and-int/lit8 v2, v2, 0x1

    .line 1956
    .line 1957
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1958
    .line 1959
    .line 1960
    move-result v2

    .line 1961
    if-eqz v2, :cond_32

    .line 1962
    .line 1963
    const/high16 v2, 0x41a80000    # 21.0f

    .line 1964
    .line 1965
    invoke-static {v8, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1966
    .line 1967
    .line 1968
    move-result-object v2

    .line 1969
    const/high16 v3, 0x41a00000    # 20.0f

    .line 1970
    .line 1971
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v2

    .line 1975
    iget-boolean v3, v0, Lorg/wikipedia/feed/TabsState;->pulse:Z

    .line 1976
    .line 1977
    if-eqz v3, :cond_31

    .line 1978
    .line 1979
    const v3, 0xf744bd9

    .line 1980
    .line 1981
    .line 1982
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1983
    .line 1984
    .line 1985
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1986
    .line 1987
    .line 1988
    move-result v3

    .line 1989
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1990
    .line 1991
    .line 1992
    move-result-object v4

    .line 1993
    if-nez v3, :cond_2f

    .line 1994
    .line 1995
    if-ne v4, v9, :cond_30

    .line 1996
    .line 1997
    :cond_2f
    new-instance v4, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 1998
    .line 1999
    const/16 v3, 0xf

    .line 2000
    .line 2001
    invoke-direct {v4, v3, v15}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 2002
    .line 2003
    .line 2004
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2005
    .line 2006
    .line 2007
    :cond_30
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 2008
    .line 2009
    sget-object v3, Landroidx/compose/animation/core/EasingKt;->FastOutSlowInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 2010
    .line 2011
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2012
    .line 2013
    .line 2014
    new-instance v5, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;

    .line 2015
    .line 2016
    const/16 v6, 0x8

    .line 2017
    .line 2018
    invoke-direct {v5, v6, v3, v4}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2019
    .line 2020
    .line 2021
    invoke-static {v8, v5}, Landroidx/compose/ui/AbsoluteAlignment;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v8

    .line 2025
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2026
    .line 2027
    .line 2028
    goto :goto_27

    .line 2029
    :cond_31
    const v3, 0xf79e406

    .line 2030
    .line 2031
    .line 2032
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2033
    .line 2034
    .line 2035
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2036
    .line 2037
    .line 2038
    :goto_27
    invoke-interface {v2, v8}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 2039
    .line 2040
    .line 2041
    move-result-object v16

    .line 2042
    sget-wide v18, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 2043
    .line 2044
    iget v0, v0, Lorg/wikipedia/feed/TabsState;->count:I

    .line 2045
    .line 2046
    const-wide/16 v23, 0x0

    .line 2047
    .line 2048
    const/16 v26, 0x180

    .line 2049
    .line 2050
    const-wide/16 v20, 0x0

    .line 2051
    .line 2052
    const/16 v22, 0x0

    .line 2053
    .line 2054
    move/from16 v17, v0

    .line 2055
    .line 2056
    move-object/from16 v25, v1

    .line 2057
    .line 2058
    invoke-static/range {v16 .. v26}, Lorg/wikipedia/compose/components/TabsBoxKt;->TabsBox-X34t5lA(Landroidx/compose/ui/Modifier;IJJLandroidx/compose/foundation/shape/RoundedCornerShape;JLandroidx/compose/runtime/GapComposer;I)V

    .line 2059
    .line 2060
    .line 2061
    goto :goto_28

    .line 2062
    :cond_32
    move-object/from16 v25, v1

    .line 2063
    .line 2064
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2065
    .line 2066
    .line 2067
    :goto_28
    return-object v7

    .line 2068
    nop

    .line 2069
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

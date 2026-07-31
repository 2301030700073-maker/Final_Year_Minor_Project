.class public final synthetic Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda7;->f$0:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda7;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 4
    .line 5
    const v2, 0x7f08011a

    .line 6
    .line 7
    .line 8
    const/high16 v3, 0x41000000    # 8.0f

    .line 9
    .line 10
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 13
    .line 14
    const/16 v6, 0x10

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x1

    .line 18
    iget-object v9, v0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda7;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 19
    .line 20
    iget-object v0, v0, Lorg/wikipedia/feed/random/RandomModuleKt$$ExternalSyntheticLambda7;->f$0:Landroid/content/Context;

    .line 21
    .line 22
    packed-switch v1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    move-object/from16 v1, p1

    .line 26
    .line 27
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 28
    .line 29
    move-object/from16 v15, p2

    .line 30
    .line 31
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 32
    .line 33
    move-object/from16 v10, p3

    .line 34
    .line 35
    check-cast v10, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    and-int/lit8 v1, v10, 0x11

    .line 45
    .line 46
    if-eq v1, v6, :cond_0

    .line 47
    .line 48
    move v1, v8

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v1, v7

    .line 51
    :goto_0
    and-int/lit8 v6, v10, 0x1

    .line 52
    .line 53
    invoke-virtual {v15, v6, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget-object v1, v9, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 60
    .line 61
    new-array v6, v7, [Ljava/lang/Object;

    .line 62
    .line 63
    const v8, 0x7f1209f3

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1, v8, v6}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 71
    .line 72
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 77
    .line 78
    iget-object v1, v1, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 79
    .line 80
    sget-object v6, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 81
    .line 82
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    check-cast v11, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 87
    .line 88
    iget-wide v12, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 89
    .line 90
    sget-object v17, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 91
    .line 92
    const/16 v32, 0x0

    .line 93
    .line 94
    const v33, 0x1ffba

    .line 95
    .line 96
    .line 97
    const/4 v11, 0x0

    .line 98
    const/4 v14, 0x0

    .line 99
    move-object/from16 v30, v15

    .line 100
    .line 101
    const-wide/16 v15, 0x0

    .line 102
    .line 103
    const/16 v18, 0x0

    .line 104
    .line 105
    const-wide/16 v19, 0x0

    .line 106
    .line 107
    const/16 v21, 0x0

    .line 108
    .line 109
    const-wide/16 v22, 0x0

    .line 110
    .line 111
    const/16 v24, 0x0

    .line 112
    .line 113
    const/16 v25, 0x0

    .line 114
    .line 115
    const/16 v26, 0x0

    .line 116
    .line 117
    const/16 v27, 0x0

    .line 118
    .line 119
    const/16 v28, 0x0

    .line 120
    .line 121
    const/high16 v31, 0x180000

    .line 122
    .line 123
    move-object/from16 v29, v1

    .line 124
    .line 125
    invoke-static/range {v10 .. v33}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 126
    .line 127
    .line 128
    move-object/from16 v15, v30

    .line 129
    .line 130
    invoke-static {v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v15, v1}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v2, v7, v15}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    iget-object v1, v9, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 142
    .line 143
    new-array v2, v7, [Ljava/lang/Object;

    .line 144
    .line 145
    invoke-static {v0, v1, v8, v2}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 154
    .line 155
    iget-wide v13, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 156
    .line 157
    const/16 v16, 0x8

    .line 158
    .line 159
    const/16 v17, 0x4

    .line 160
    .line 161
    const/4 v12, 0x0

    .line 162
    invoke-static/range {v10 .. v17}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_1
    move-object/from16 v30, v15

    .line 167
    .line 168
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 169
    .line 170
    .line 171
    :goto_1
    return-object v4

    .line 172
    :pswitch_0
    move-object/from16 v1, p1

    .line 173
    .line 174
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 175
    .line 176
    move-object/from16 v15, p2

    .line 177
    .line 178
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 179
    .line 180
    move-object/from16 v10, p3

    .line 181
    .line 182
    check-cast v10, Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    and-int/lit8 v1, v10, 0x11

    .line 192
    .line 193
    if-eq v1, v6, :cond_2

    .line 194
    .line 195
    move v1, v8

    .line 196
    goto :goto_2

    .line 197
    :cond_2
    move v1, v7

    .line 198
    :goto_2
    and-int/lit8 v6, v10, 0x1

    .line 199
    .line 200
    invoke-virtual {v15, v6, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-eqz v1, :cond_3

    .line 205
    .line 206
    iget-object v1, v9, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 207
    .line 208
    new-array v6, v7, [Ljava/lang/Object;

    .line 209
    .line 210
    const v8, 0x7f12040e

    .line 211
    .line 212
    .line 213
    invoke-static {v0, v1, v8, v6}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 218
    .line 219
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 224
    .line 225
    iget-object v1, v1, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 226
    .line 227
    sget-object v6, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 228
    .line 229
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v11

    .line 233
    check-cast v11, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 234
    .line 235
    iget-wide v12, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 236
    .line 237
    sget-object v17, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 238
    .line 239
    const/16 v32, 0x0

    .line 240
    .line 241
    const v33, 0x1ffba

    .line 242
    .line 243
    .line 244
    const/4 v11, 0x0

    .line 245
    const/4 v14, 0x0

    .line 246
    move-object/from16 v30, v15

    .line 247
    .line 248
    const-wide/16 v15, 0x0

    .line 249
    .line 250
    const/16 v18, 0x0

    .line 251
    .line 252
    const-wide/16 v19, 0x0

    .line 253
    .line 254
    const/16 v21, 0x0

    .line 255
    .line 256
    const-wide/16 v22, 0x0

    .line 257
    .line 258
    const/16 v24, 0x0

    .line 259
    .line 260
    const/16 v25, 0x0

    .line 261
    .line 262
    const/16 v26, 0x0

    .line 263
    .line 264
    const/16 v27, 0x0

    .line 265
    .line 266
    const/16 v28, 0x0

    .line 267
    .line 268
    const/high16 v31, 0x180000

    .line 269
    .line 270
    move-object/from16 v29, v1

    .line 271
    .line 272
    invoke-static/range {v10 .. v33}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 273
    .line 274
    .line 275
    move-object/from16 v15, v30

    .line 276
    .line 277
    invoke-static {v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-static {v15, v1}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v2, v7, v15}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 285
    .line 286
    .line 287
    move-result-object v10

    .line 288
    iget-object v1, v9, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 289
    .line 290
    new-array v2, v7, [Ljava/lang/Object;

    .line 291
    .line 292
    invoke-static {v0, v1, v8, v2}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v11

    .line 296
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 301
    .line 302
    iget-wide v13, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 303
    .line 304
    const/16 v16, 0x8

    .line 305
    .line 306
    const/16 v17, 0x4

    .line 307
    .line 308
    const/4 v12, 0x0

    .line 309
    invoke-static/range {v10 .. v17}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 310
    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_3
    move-object/from16 v30, v15

    .line 314
    .line 315
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 316
    .line 317
    .line 318
    :goto_3
    return-object v4

    .line 319
    :pswitch_1
    move-object/from16 v1, p1

    .line 320
    .line 321
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 322
    .line 323
    move-object/from16 v15, p2

    .line 324
    .line 325
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 326
    .line 327
    move-object/from16 v2, p3

    .line 328
    .line 329
    check-cast v2, Ljava/lang/Integer;

    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    and-int/lit8 v1, v2, 0x11

    .line 339
    .line 340
    if-eq v1, v6, :cond_4

    .line 341
    .line 342
    move v1, v8

    .line 343
    goto :goto_4

    .line 344
    :cond_4
    move v1, v7

    .line 345
    :goto_4
    and-int/2addr v2, v8

    .line 346
    invoke-virtual {v15, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-eqz v1, :cond_5

    .line 351
    .line 352
    const v1, 0x7f080198

    .line 353
    .line 354
    .line 355
    invoke-static {v1, v7, v15}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 356
    .line 357
    .line 358
    move-result-object v10

    .line 359
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 360
    .line 361
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 366
    .line 367
    iget-wide v13, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 368
    .line 369
    const/16 v16, 0x38

    .line 370
    .line 371
    const/16 v17, 0x4

    .line 372
    .line 373
    const/4 v11, 0x0

    .line 374
    const/4 v12, 0x0

    .line 375
    invoke-static/range {v10 .. v17}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 376
    .line 377
    .line 378
    invoke-static {v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-static {v15, v2}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 383
    .line 384
    .line 385
    iget-object v2, v9, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 386
    .line 387
    const v3, 0x7f120278

    .line 388
    .line 389
    .line 390
    new-array v5, v7, [Ljava/lang/Object;

    .line 391
    .line 392
    invoke-static {v0, v2, v3, v5}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v10

    .line 396
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 397
    .line 398
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 403
    .line 404
    iget-object v0, v0, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 405
    .line 406
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 411
    .line 412
    iget-wide v12, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 413
    .line 414
    const/16 v32, 0x0

    .line 415
    .line 416
    const v33, 0x1fffa

    .line 417
    .line 418
    .line 419
    const/4 v14, 0x0

    .line 420
    move-object/from16 v30, v15

    .line 421
    .line 422
    const-wide/16 v15, 0x0

    .line 423
    .line 424
    const/16 v17, 0x0

    .line 425
    .line 426
    const/16 v18, 0x0

    .line 427
    .line 428
    const-wide/16 v19, 0x0

    .line 429
    .line 430
    const/16 v21, 0x0

    .line 431
    .line 432
    const-wide/16 v22, 0x0

    .line 433
    .line 434
    const/16 v24, 0x0

    .line 435
    .line 436
    const/16 v25, 0x0

    .line 437
    .line 438
    const/16 v26, 0x0

    .line 439
    .line 440
    const/16 v27, 0x0

    .line 441
    .line 442
    const/16 v28, 0x0

    .line 443
    .line 444
    const/16 v31, 0x0

    .line 445
    .line 446
    move-object/from16 v29, v0

    .line 447
    .line 448
    invoke-static/range {v10 .. v33}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 449
    .line 450
    .line 451
    goto :goto_5

    .line 452
    :cond_5
    move-object/from16 v30, v15

    .line 453
    .line 454
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 455
    .line 456
    .line 457
    :goto_5
    return-object v4

    .line 458
    :pswitch_2
    move-object/from16 v1, p1

    .line 459
    .line 460
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 461
    .line 462
    move-object/from16 v15, p2

    .line 463
    .line 464
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 465
    .line 466
    move-object/from16 v10, p3

    .line 467
    .line 468
    check-cast v10, Ljava/lang/Integer;

    .line 469
    .line 470
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 471
    .line 472
    .line 473
    move-result v10

    .line 474
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    .line 476
    .line 477
    and-int/lit8 v1, v10, 0x11

    .line 478
    .line 479
    if-eq v1, v6, :cond_6

    .line 480
    .line 481
    move v1, v8

    .line 482
    goto :goto_6

    .line 483
    :cond_6
    move v1, v7

    .line 484
    :goto_6
    and-int/lit8 v6, v10, 0x1

    .line 485
    .line 486
    invoke-virtual {v15, v6, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    if-eqz v1, :cond_7

    .line 491
    .line 492
    iget-object v1, v9, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 493
    .line 494
    new-array v6, v7, [Ljava/lang/Object;

    .line 495
    .line 496
    const v8, 0x7f120271

    .line 497
    .line 498
    .line 499
    invoke-static {v0, v1, v8, v6}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v10

    .line 503
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 504
    .line 505
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 510
    .line 511
    iget-object v1, v1, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 512
    .line 513
    sget-object v6, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 514
    .line 515
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v11

    .line 519
    check-cast v11, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 520
    .line 521
    iget-wide v12, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 522
    .line 523
    sget-object v17, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 524
    .line 525
    const/16 v32, 0x0

    .line 526
    .line 527
    const v33, 0x1ffba

    .line 528
    .line 529
    .line 530
    const/4 v11, 0x0

    .line 531
    const/4 v14, 0x0

    .line 532
    move-object/from16 v30, v15

    .line 533
    .line 534
    const-wide/16 v15, 0x0

    .line 535
    .line 536
    const/16 v18, 0x0

    .line 537
    .line 538
    const-wide/16 v19, 0x0

    .line 539
    .line 540
    const/16 v21, 0x0

    .line 541
    .line 542
    const-wide/16 v22, 0x0

    .line 543
    .line 544
    const/16 v24, 0x0

    .line 545
    .line 546
    const/16 v25, 0x0

    .line 547
    .line 548
    const/16 v26, 0x0

    .line 549
    .line 550
    const/16 v27, 0x0

    .line 551
    .line 552
    const/16 v28, 0x0

    .line 553
    .line 554
    const/high16 v31, 0x180000

    .line 555
    .line 556
    move-object/from16 v29, v1

    .line 557
    .line 558
    invoke-static/range {v10 .. v33}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 559
    .line 560
    .line 561
    move-object/from16 v15, v30

    .line 562
    .line 563
    invoke-static {v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    invoke-static {v15, v1}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 568
    .line 569
    .line 570
    invoke-static {v2, v7, v15}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 571
    .line 572
    .line 573
    move-result-object v10

    .line 574
    iget-object v1, v9, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 575
    .line 576
    new-array v2, v7, [Ljava/lang/Object;

    .line 577
    .line 578
    invoke-static {v0, v1, v8, v2}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v11

    .line 582
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 587
    .line 588
    iget-wide v13, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 589
    .line 590
    const/16 v16, 0x8

    .line 591
    .line 592
    const/16 v17, 0x4

    .line 593
    .line 594
    const/4 v12, 0x0

    .line 595
    invoke-static/range {v10 .. v17}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 596
    .line 597
    .line 598
    goto :goto_7

    .line 599
    :cond_7
    move-object/from16 v30, v15

    .line 600
    .line 601
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 602
    .line 603
    .line 604
    :goto_7
    return-object v4

    .line 605
    :pswitch_3
    move-object/from16 v1, p1

    .line 606
    .line 607
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 608
    .line 609
    move-object/from16 v15, p2

    .line 610
    .line 611
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 612
    .line 613
    move-object/from16 v2, p3

    .line 614
    .line 615
    check-cast v2, Ljava/lang/Integer;

    .line 616
    .line 617
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 618
    .line 619
    .line 620
    move-result v2

    .line 621
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    .line 623
    .line 624
    and-int/lit8 v1, v2, 0x11

    .line 625
    .line 626
    if-eq v1, v6, :cond_8

    .line 627
    .line 628
    move v1, v8

    .line 629
    goto :goto_8

    .line 630
    :cond_8
    move v1, v7

    .line 631
    :goto_8
    and-int/2addr v2, v8

    .line 632
    invoke-virtual {v15, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 633
    .line 634
    .line 635
    move-result v1

    .line 636
    if-eqz v1, :cond_a

    .line 637
    .line 638
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 639
    .line 640
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 641
    .line 642
    const/16 v3, 0x30

    .line 643
    .line 644
    invoke-static {v2, v1, v15, v3}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    iget-wide v2, v15, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 649
    .line 650
    const/16 v6, 0x20

    .line 651
    .line 652
    ushr-long v10, v2, v6

    .line 653
    .line 654
    xor-long/2addr v2, v10

    .line 655
    long-to-int v2, v2

    .line 656
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 657
    .line 658
    .line 659
    move-result-object v3

    .line 660
    invoke-static {v15, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 661
    .line 662
    .line 663
    move-result-object v6

    .line 664
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 665
    .line 666
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 667
    .line 668
    .line 669
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 670
    .line 671
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 672
    .line 673
    .line 674
    iget-boolean v11, v15, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 675
    .line 676
    if-eqz v11, :cond_9

    .line 677
    .line 678
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 679
    .line 680
    .line 681
    goto :goto_9

    .line 682
    :cond_9
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 683
    .line 684
    .line 685
    :goto_9
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 686
    .line 687
    invoke-static {v15, v1, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 688
    .line 689
    .line 690
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 691
    .line 692
    invoke-static {v15, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 693
    .line 694
    .line 695
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 700
    .line 701
    invoke-static {v15, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 702
    .line 703
    .line 704
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 705
    .line 706
    invoke-static {v15, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 707
    .line 708
    .line 709
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 710
    .line 711
    invoke-static {v15, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 712
    .line 713
    .line 714
    const v1, 0x7f080150

    .line 715
    .line 716
    .line 717
    invoke-static {v1, v7, v15}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 718
    .line 719
    .line 720
    move-result-object v10

    .line 721
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 722
    .line 723
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v2

    .line 727
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 728
    .line 729
    iget-wide v13, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 730
    .line 731
    const/16 v16, 0x38

    .line 732
    .line 733
    const/16 v17, 0x4

    .line 734
    .line 735
    const/4 v11, 0x0

    .line 736
    const/4 v12, 0x0

    .line 737
    invoke-static/range {v10 .. v17}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 738
    .line 739
    .line 740
    const/high16 v2, 0x40800000    # 4.0f

    .line 741
    .line 742
    invoke-static {v5, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 743
    .line 744
    .line 745
    move-result-object v2

    .line 746
    invoke-static {v15, v2}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 747
    .line 748
    .line 749
    iget-object v2, v9, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 750
    .line 751
    const v3, 0x7f12028c

    .line 752
    .line 753
    .line 754
    new-array v5, v7, [Ljava/lang/Object;

    .line 755
    .line 756
    invoke-static {v0, v2, v3, v5}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v10

    .line 760
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 761
    .line 762
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 767
    .line 768
    iget-object v0, v0, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 769
    .line 770
    sget-object v17, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 771
    .line 772
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v1

    .line 776
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 777
    .line 778
    iget-wide v12, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 779
    .line 780
    const/16 v32, 0x0

    .line 781
    .line 782
    const v33, 0x1ffba

    .line 783
    .line 784
    .line 785
    const/4 v14, 0x0

    .line 786
    move-object/from16 v30, v15

    .line 787
    .line 788
    const-wide/16 v15, 0x0

    .line 789
    .line 790
    const/16 v18, 0x0

    .line 791
    .line 792
    const-wide/16 v19, 0x0

    .line 793
    .line 794
    const/16 v21, 0x0

    .line 795
    .line 796
    const-wide/16 v22, 0x0

    .line 797
    .line 798
    const/16 v24, 0x0

    .line 799
    .line 800
    const/16 v25, 0x0

    .line 801
    .line 802
    const/16 v26, 0x0

    .line 803
    .line 804
    const/16 v27, 0x0

    .line 805
    .line 806
    const/16 v28, 0x0

    .line 807
    .line 808
    const/high16 v31, 0x180000

    .line 809
    .line 810
    move-object/from16 v29, v0

    .line 811
    .line 812
    invoke-static/range {v10 .. v33}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 813
    .line 814
    .line 815
    move-object/from16 v15, v30

    .line 816
    .line 817
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 818
    .line 819
    .line 820
    goto :goto_a

    .line 821
    :cond_a
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 822
    .line 823
    .line 824
    :goto_a
    return-object v4

    .line 825
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

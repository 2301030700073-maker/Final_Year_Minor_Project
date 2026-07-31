.class public final synthetic Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x7

    .line 2
    iput p1, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .line 10
    iput p2, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 54

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 6
    .line 7
    const v3, 0x7f08016a

    .line 8
    .line 9
    .line 10
    const-class v4, Lorg/wikipedia/widgets/readingchallenge/HomeAction;

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    move-object/from16 v2, p2

    .line 25
    .line 26
    check-cast v2, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    and-int/lit8 v9, v2, 0x3

    .line 33
    .line 34
    if-eq v9, v5, :cond_0

    .line 35
    .line 36
    move v5, v6

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v5, v7

    .line 39
    :goto_0
    and-int/2addr v2, v6

    .line 40
    invoke-virtual {v1, v2, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    new-array v2, v7, [Landroidx/glance/action/ActionParameters$Pair;

    .line 47
    .line 48
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, [Landroidx/glance/action/ActionParameters$Pair;

    .line 53
    .line 54
    invoke-static {v2}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-instance v10, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 59
    .line 60
    invoke-direct {v10, v4, v2}, Landroidx/glance/appwidget/action/RunCallbackAction;-><init>(Ljava/lang/Class;Landroidx/glance/action/MutableActionParameters;)V

    .line 61
    .line 62
    .line 63
    sget-wide v11, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->challengeConcludedIncompleteButtonBackground:J

    .line 64
    .line 65
    sget-wide v13, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->primary:J

    .line 66
    .line 67
    new-instance v15, Landroidx/glance/AndroidResourceImageProvider;

    .line 68
    .line 69
    invoke-direct {v15, v3}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 70
    .line 71
    .line 72
    const/16 v18, 0xd80

    .line 73
    .line 74
    const/16 v19, 0x20

    .line 75
    .line 76
    iget-object v9, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 77
    .line 78
    const/16 v16, 0x0

    .line 79
    .line 80
    move-object/from16 v17, v1

    .line 81
    .line 82
    invoke-static/range {v9 .. v19}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetButton-Y0xEhic(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;JJLandroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    move-object/from16 v17, v1

    .line 87
    .line 88
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 89
    .line 90
    .line 91
    :goto_1
    return-object v8

    .line 92
    :pswitch_0
    move-object/from16 v1, p1

    .line 93
    .line 94
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 95
    .line 96
    move-object/from16 v2, p2

    .line 97
    .line 98
    check-cast v2, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    and-int/lit8 v9, v2, 0x3

    .line 105
    .line 106
    if-eq v9, v5, :cond_2

    .line 107
    .line 108
    move v5, v6

    .line 109
    goto :goto_2

    .line 110
    :cond_2
    move v5, v7

    .line 111
    :goto_2
    and-int/2addr v2, v6

    .line 112
    invoke-virtual {v1, v2, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_3

    .line 117
    .line 118
    new-array v2, v7, [Landroidx/glance/action/ActionParameters$Pair;

    .line 119
    .line 120
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, [Landroidx/glance/action/ActionParameters$Pair;

    .line 125
    .line 126
    invoke-static {v2}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    new-instance v5, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 131
    .line 132
    invoke-direct {v5, v4, v2}, Landroidx/glance/appwidget/action/RunCallbackAction;-><init>(Ljava/lang/Class;Landroidx/glance/action/MutableActionParameters;)V

    .line 133
    .line 134
    .line 135
    sget-wide v20, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->challengeConcludedIncompleteButtonBackground:J

    .line 136
    .line 137
    sget-wide v22, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->primary:J

    .line 138
    .line 139
    new-instance v2, Landroidx/glance/AndroidResourceImageProvider;

    .line 140
    .line 141
    invoke-direct {v2, v3}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 142
    .line 143
    .line 144
    const v27, 0x30d80

    .line 145
    .line 146
    .line 147
    const/16 v28, 0x0

    .line 148
    .line 149
    iget-object v0, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 150
    .line 151
    sget-object v25, Landroidx/glance/GlanceModifier$Companion;->$$INSTANCE:Landroidx/glance/GlanceModifier$Companion;

    .line 152
    .line 153
    move-object/from16 v18, v0

    .line 154
    .line 155
    move-object/from16 v26, v1

    .line 156
    .line 157
    move-object/from16 v24, v2

    .line 158
    .line 159
    move-object/from16 v19, v5

    .line 160
    .line 161
    invoke-static/range {v18 .. v28}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetButton-Y0xEhic(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;JJLandroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_3
    move-object/from16 v26, v1

    .line 166
    .line 167
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 168
    .line 169
    .line 170
    :goto_3
    return-object v8

    .line 171
    :pswitch_1
    move-object/from16 v1, p1

    .line 172
    .line 173
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 174
    .line 175
    move-object/from16 v2, p2

    .line 176
    .line 177
    check-cast v2, Ljava/lang/Integer;

    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    and-int/lit8 v3, v2, 0x3

    .line 184
    .line 185
    if-eq v3, v5, :cond_4

    .line 186
    .line 187
    move v7, v6

    .line 188
    :cond_4
    and-int/2addr v2, v6

    .line 189
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_5

    .line 194
    .line 195
    const/16 v2, 0x10

    .line 196
    .line 197
    invoke-static {v2}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 198
    .line 199
    .line 200
    move-result-wide v10

    .line 201
    sget-wide v2, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->primary:J

    .line 202
    .line 203
    new-instance v15, Landroidx/compose/ui/graphics/Color;

    .line 204
    .line 205
    invoke-direct {v15, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 206
    .line 207
    .line 208
    const v20, 0x1b0c30

    .line 209
    .line 210
    .line 211
    const/16 v21, 0x90

    .line 212
    .line 213
    iget-object v9, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 214
    .line 215
    const v12, 0x7f08016a

    .line 216
    .line 217
    .line 218
    const/high16 v13, 0x41c00000    # 24.0f

    .line 219
    .line 220
    const/4 v14, 0x0

    .line 221
    const/16 v18, 0x0

    .line 222
    .line 223
    move-object/from16 v19, v1

    .line 224
    .line 225
    move-wide/from16 v16, v2

    .line 226
    .line 227
    invoke-static/range {v9 .. v21}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetBadge-LNF6LQw(Ljava/lang/String;JIFFLandroidx/compose/ui/graphics/Color;JLandroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 228
    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_5
    move-object/from16 v19, v1

    .line 232
    .line 233
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 234
    .line 235
    .line 236
    :goto_4
    return-object v8

    .line 237
    :pswitch_2
    move-object/from16 v1, p1

    .line 238
    .line 239
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 240
    .line 241
    move-object/from16 v3, p2

    .line 242
    .line 243
    check-cast v3, Ljava/lang/Integer;

    .line 244
    .line 245
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    and-int/lit8 v4, v3, 0x3

    .line 250
    .line 251
    if-eq v4, v5, :cond_6

    .line 252
    .line 253
    move v7, v6

    .line 254
    :cond_6
    and-int/2addr v3, v6

    .line 255
    invoke-virtual {v1, v3, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-eqz v3, :cond_7

    .line 260
    .line 261
    const/4 v3, 0x0

    .line 262
    const/high16 v4, 0x41800000    # 16.0f

    .line 263
    .line 264
    invoke-static {v2, v3, v4, v6}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 265
    .line 266
    .line 267
    move-result-object v21

    .line 268
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 269
    .line 270
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 275
    .line 276
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 277
    .line 278
    const/16 v42, 0x0

    .line 279
    .line 280
    const v43, 0x3fff8

    .line 281
    .line 282
    .line 283
    iget-object v0, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 284
    .line 285
    const/16 v24, 0x0

    .line 286
    .line 287
    const-wide/16 v25, 0x0

    .line 288
    .line 289
    const/16 v27, 0x0

    .line 290
    .line 291
    const/16 v28, 0x0

    .line 292
    .line 293
    const-wide/16 v29, 0x0

    .line 294
    .line 295
    const/16 v31, 0x0

    .line 296
    .line 297
    const-wide/16 v32, 0x0

    .line 298
    .line 299
    const/16 v34, 0x0

    .line 300
    .line 301
    const/16 v35, 0x0

    .line 302
    .line 303
    const/16 v36, 0x0

    .line 304
    .line 305
    const/16 v37, 0x0

    .line 306
    .line 307
    const/16 v38, 0x0

    .line 308
    .line 309
    const/16 v39, 0x0

    .line 310
    .line 311
    const/16 v41, 0x30

    .line 312
    .line 313
    move-object/from16 v20, v0

    .line 314
    .line 315
    move-object/from16 v40, v1

    .line 316
    .line 317
    move-wide/from16 v22, v2

    .line 318
    .line 319
    invoke-static/range {v20 .. v43}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_7
    move-object/from16 v40, v1

    .line 324
    .line 325
    invoke-virtual/range {v40 .. v40}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 326
    .line 327
    .line 328
    :goto_5
    return-object v8

    .line 329
    :pswitch_3
    move-object/from16 v1, p1

    .line 330
    .line 331
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 332
    .line 333
    move-object/from16 v2, p2

    .line 334
    .line 335
    check-cast v2, Ljava/lang/Integer;

    .line 336
    .line 337
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    and-int/lit8 v3, v2, 0x3

    .line 342
    .line 343
    if-eq v3, v5, :cond_8

    .line 344
    .line 345
    move v7, v6

    .line 346
    :cond_8
    and-int/2addr v2, v6

    .line 347
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    if-eqz v2, :cond_9

    .line 352
    .line 353
    const/4 v13, 0x0

    .line 354
    const/16 v14, 0xd

    .line 355
    .line 356
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 357
    .line 358
    const/4 v10, 0x0

    .line 359
    const/high16 v11, 0x40800000    # 4.0f

    .line 360
    .line 361
    const/4 v12, 0x0

    .line 362
    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 367
    .line 368
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 373
    .line 374
    iget-object v2, v2, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 375
    .line 376
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 377
    .line 378
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 383
    .line 384
    iget-wide v11, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 385
    .line 386
    const/16 v31, 0x0

    .line 387
    .line 388
    const v32, 0x1fff8

    .line 389
    .line 390
    .line 391
    iget-object v9, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 392
    .line 393
    const/4 v13, 0x0

    .line 394
    const-wide/16 v14, 0x0

    .line 395
    .line 396
    const/16 v16, 0x0

    .line 397
    .line 398
    const/16 v17, 0x0

    .line 399
    .line 400
    const-wide/16 v18, 0x0

    .line 401
    .line 402
    const/16 v20, 0x0

    .line 403
    .line 404
    const-wide/16 v21, 0x0

    .line 405
    .line 406
    const/16 v23, 0x0

    .line 407
    .line 408
    const/16 v24, 0x0

    .line 409
    .line 410
    const/16 v25, 0x0

    .line 411
    .line 412
    const/16 v26, 0x0

    .line 413
    .line 414
    const/16 v27, 0x0

    .line 415
    .line 416
    const/16 v30, 0x30

    .line 417
    .line 418
    move-object/from16 v29, v1

    .line 419
    .line 420
    move-object/from16 v28, v2

    .line 421
    .line 422
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 423
    .line 424
    .line 425
    goto :goto_6

    .line 426
    :cond_9
    move-object/from16 v29, v1

    .line 427
    .line 428
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 429
    .line 430
    .line 431
    :goto_6
    return-object v8

    .line 432
    :pswitch_4
    move-object/from16 v1, p1

    .line 433
    .line 434
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 435
    .line 436
    move-object/from16 v2, p2

    .line 437
    .line 438
    check-cast v2, Ljava/lang/Integer;

    .line 439
    .line 440
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    and-int/lit8 v3, v2, 0x3

    .line 445
    .line 446
    if-eq v3, v5, :cond_a

    .line 447
    .line 448
    move v7, v6

    .line 449
    :cond_a
    and-int/2addr v2, v6

    .line 450
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    if-eqz v2, :cond_b

    .line 455
    .line 456
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 457
    .line 458
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 463
    .line 464
    iget-object v2, v2, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 465
    .line 466
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 467
    .line 468
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 473
    .line 474
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 475
    .line 476
    const/16 v52, 0x0

    .line 477
    .line 478
    const v53, 0x1fffa

    .line 479
    .line 480
    .line 481
    iget-object v0, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 482
    .line 483
    const/16 v31, 0x0

    .line 484
    .line 485
    const/16 v34, 0x0

    .line 486
    .line 487
    const-wide/16 v35, 0x0

    .line 488
    .line 489
    const/16 v37, 0x0

    .line 490
    .line 491
    const/16 v38, 0x0

    .line 492
    .line 493
    const-wide/16 v39, 0x0

    .line 494
    .line 495
    const/16 v41, 0x0

    .line 496
    .line 497
    const-wide/16 v42, 0x0

    .line 498
    .line 499
    const/16 v44, 0x0

    .line 500
    .line 501
    const/16 v45, 0x0

    .line 502
    .line 503
    const/16 v46, 0x0

    .line 504
    .line 505
    const/16 v47, 0x0

    .line 506
    .line 507
    const/16 v48, 0x0

    .line 508
    .line 509
    const/16 v51, 0x0

    .line 510
    .line 511
    move-object/from16 v30, v0

    .line 512
    .line 513
    move-object/from16 v50, v1

    .line 514
    .line 515
    move-object/from16 v49, v2

    .line 516
    .line 517
    move-wide/from16 v32, v3

    .line 518
    .line 519
    invoke-static/range {v30 .. v53}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 520
    .line 521
    .line 522
    goto :goto_7

    .line 523
    :cond_b
    move-object/from16 v50, v1

    .line 524
    .line 525
    invoke-virtual/range {v50 .. v50}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 526
    .line 527
    .line 528
    :goto_7
    return-object v8

    .line 529
    :pswitch_5
    move-object/from16 v1, p1

    .line 530
    .line 531
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 532
    .line 533
    move-object/from16 v2, p2

    .line 534
    .line 535
    check-cast v2, Ljava/lang/Integer;

    .line 536
    .line 537
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    and-int/lit8 v3, v2, 0x3

    .line 542
    .line 543
    if-eq v3, v5, :cond_c

    .line 544
    .line 545
    move v7, v6

    .line 546
    :cond_c
    and-int/2addr v2, v6

    .line 547
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    if-eqz v2, :cond_d

    .line 552
    .line 553
    const/16 v31, 0x0

    .line 554
    .line 555
    const v32, 0x3fffe

    .line 556
    .line 557
    .line 558
    iget-object v9, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 559
    .line 560
    const/4 v10, 0x0

    .line 561
    const-wide/16 v11, 0x0

    .line 562
    .line 563
    const/4 v13, 0x0

    .line 564
    const-wide/16 v14, 0x0

    .line 565
    .line 566
    const/16 v16, 0x0

    .line 567
    .line 568
    const/16 v17, 0x0

    .line 569
    .line 570
    const-wide/16 v18, 0x0

    .line 571
    .line 572
    const/16 v20, 0x0

    .line 573
    .line 574
    const-wide/16 v21, 0x0

    .line 575
    .line 576
    const/16 v23, 0x0

    .line 577
    .line 578
    const/16 v24, 0x0

    .line 579
    .line 580
    const/16 v25, 0x0

    .line 581
    .line 582
    const/16 v26, 0x0

    .line 583
    .line 584
    const/16 v27, 0x0

    .line 585
    .line 586
    const/16 v28, 0x0

    .line 587
    .line 588
    const/16 v30, 0x0

    .line 589
    .line 590
    move-object/from16 v29, v1

    .line 591
    .line 592
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 593
    .line 594
    .line 595
    goto :goto_8

    .line 596
    :cond_d
    move-object/from16 v29, v1

    .line 597
    .line 598
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 599
    .line 600
    .line 601
    :goto_8
    return-object v8

    .line 602
    :pswitch_6
    move-object/from16 v1, p1

    .line 603
    .line 604
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 605
    .line 606
    move-object/from16 v2, p2

    .line 607
    .line 608
    check-cast v2, Ljava/lang/Integer;

    .line 609
    .line 610
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 611
    .line 612
    .line 613
    move-result v2

    .line 614
    and-int/lit8 v3, v2, 0x3

    .line 615
    .line 616
    if-eq v3, v5, :cond_e

    .line 617
    .line 618
    move v7, v6

    .line 619
    :cond_e
    and-int/2addr v2, v6

    .line 620
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 621
    .line 622
    .line 623
    move-result v2

    .line 624
    if-eqz v2, :cond_f

    .line 625
    .line 626
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 627
    .line 628
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 633
    .line 634
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->destructiveColor:J

    .line 635
    .line 636
    const/16 v52, 0x0

    .line 637
    .line 638
    const v53, 0x3fffa

    .line 639
    .line 640
    .line 641
    iget-object v0, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 642
    .line 643
    const/16 v31, 0x0

    .line 644
    .line 645
    const/16 v34, 0x0

    .line 646
    .line 647
    const-wide/16 v35, 0x0

    .line 648
    .line 649
    const/16 v37, 0x0

    .line 650
    .line 651
    const/16 v38, 0x0

    .line 652
    .line 653
    const-wide/16 v39, 0x0

    .line 654
    .line 655
    const/16 v41, 0x0

    .line 656
    .line 657
    const-wide/16 v42, 0x0

    .line 658
    .line 659
    const/16 v44, 0x0

    .line 660
    .line 661
    const/16 v45, 0x0

    .line 662
    .line 663
    const/16 v46, 0x0

    .line 664
    .line 665
    const/16 v47, 0x0

    .line 666
    .line 667
    const/16 v48, 0x0

    .line 668
    .line 669
    const/16 v49, 0x0

    .line 670
    .line 671
    const/16 v51, 0x0

    .line 672
    .line 673
    move-object/from16 v30, v0

    .line 674
    .line 675
    move-object/from16 v50, v1

    .line 676
    .line 677
    move-wide/from16 v32, v2

    .line 678
    .line 679
    invoke-static/range {v30 .. v53}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 680
    .line 681
    .line 682
    goto :goto_9

    .line 683
    :cond_f
    move-object/from16 v50, v1

    .line 684
    .line 685
    invoke-virtual/range {v50 .. v50}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 686
    .line 687
    .line 688
    :goto_9
    return-object v8

    .line 689
    :pswitch_7
    move-object/from16 v1, p1

    .line 690
    .line 691
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 692
    .line 693
    move-object/from16 v2, p2

    .line 694
    .line 695
    check-cast v2, Ljava/lang/Integer;

    .line 696
    .line 697
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    const/4 v2, 0x7

    .line 701
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 702
    .line 703
    .line 704
    move-result v2

    .line 705
    iget-object v0, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 706
    .line 707
    invoke-static {v0, v1, v2}, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt;->InfoTooltip(Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)V

    .line 708
    .line 709
    .line 710
    return-object v8

    .line 711
    :pswitch_8
    move-object/from16 v1, p1

    .line 712
    .line 713
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 714
    .line 715
    move-object/from16 v2, p2

    .line 716
    .line 717
    check-cast v2, Ljava/lang/Integer;

    .line 718
    .line 719
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 720
    .line 721
    .line 722
    move-result v2

    .line 723
    and-int/lit8 v3, v2, 0x3

    .line 724
    .line 725
    if-eq v3, v5, :cond_10

    .line 726
    .line 727
    move v7, v6

    .line 728
    :cond_10
    and-int/2addr v2, v6

    .line 729
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 730
    .line 731
    .line 732
    move-result v2

    .line 733
    if-eqz v2, :cond_11

    .line 734
    .line 735
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 736
    .line 737
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 742
    .line 743
    iget-object v2, v2, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 744
    .line 745
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 746
    .line 747
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v3

    .line 751
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 752
    .line 753
    iget-wide v11, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 754
    .line 755
    const/16 v31, 0x0

    .line 756
    .line 757
    const v32, 0x1fffa

    .line 758
    .line 759
    .line 760
    iget-object v9, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 761
    .line 762
    const/4 v10, 0x0

    .line 763
    const/4 v13, 0x0

    .line 764
    const-wide/16 v14, 0x0

    .line 765
    .line 766
    const/16 v16, 0x0

    .line 767
    .line 768
    const/16 v17, 0x0

    .line 769
    .line 770
    const-wide/16 v18, 0x0

    .line 771
    .line 772
    const/16 v20, 0x0

    .line 773
    .line 774
    const-wide/16 v21, 0x0

    .line 775
    .line 776
    const/16 v23, 0x0

    .line 777
    .line 778
    const/16 v24, 0x0

    .line 779
    .line 780
    const/16 v25, 0x0

    .line 781
    .line 782
    const/16 v26, 0x0

    .line 783
    .line 784
    const/16 v27, 0x0

    .line 785
    .line 786
    const/16 v30, 0x0

    .line 787
    .line 788
    move-object/from16 v29, v1

    .line 789
    .line 790
    move-object/from16 v28, v2

    .line 791
    .line 792
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 793
    .line 794
    .line 795
    goto :goto_a

    .line 796
    :cond_11
    move-object/from16 v29, v1

    .line 797
    .line 798
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 799
    .line 800
    .line 801
    :goto_a
    return-object v8

    .line 802
    :pswitch_9
    move-object/from16 v1, p1

    .line 803
    .line 804
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 805
    .line 806
    move-object/from16 v2, p2

    .line 807
    .line 808
    check-cast v2, Ljava/lang/Integer;

    .line 809
    .line 810
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 811
    .line 812
    .line 813
    move-result v2

    .line 814
    and-int/lit8 v3, v2, 0x3

    .line 815
    .line 816
    if-eq v3, v5, :cond_12

    .line 817
    .line 818
    move v7, v6

    .line 819
    :cond_12
    and-int/2addr v2, v6

    .line 820
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 821
    .line 822
    .line 823
    move-result v2

    .line 824
    if-eqz v2, :cond_13

    .line 825
    .line 826
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 827
    .line 828
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 833
    .line 834
    iget-object v2, v2, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 835
    .line 836
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 837
    .line 838
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v3

    .line 842
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 843
    .line 844
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 845
    .line 846
    const/16 v52, 0x0

    .line 847
    .line 848
    const v53, 0x1fffa

    .line 849
    .line 850
    .line 851
    iget-object v0, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 852
    .line 853
    const/16 v31, 0x0

    .line 854
    .line 855
    const/16 v34, 0x0

    .line 856
    .line 857
    const-wide/16 v35, 0x0

    .line 858
    .line 859
    const/16 v37, 0x0

    .line 860
    .line 861
    const/16 v38, 0x0

    .line 862
    .line 863
    const-wide/16 v39, 0x0

    .line 864
    .line 865
    const/16 v41, 0x0

    .line 866
    .line 867
    const-wide/16 v42, 0x0

    .line 868
    .line 869
    const/16 v44, 0x0

    .line 870
    .line 871
    const/16 v45, 0x0

    .line 872
    .line 873
    const/16 v46, 0x0

    .line 874
    .line 875
    const/16 v47, 0x0

    .line 876
    .line 877
    const/16 v48, 0x0

    .line 878
    .line 879
    const/16 v51, 0x0

    .line 880
    .line 881
    move-object/from16 v30, v0

    .line 882
    .line 883
    move-object/from16 v50, v1

    .line 884
    .line 885
    move-object/from16 v49, v2

    .line 886
    .line 887
    move-wide/from16 v32, v3

    .line 888
    .line 889
    invoke-static/range {v30 .. v53}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 890
    .line 891
    .line 892
    goto :goto_b

    .line 893
    :cond_13
    move-object/from16 v50, v1

    .line 894
    .line 895
    invoke-virtual/range {v50 .. v50}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 896
    .line 897
    .line 898
    :goto_b
    return-object v8

    .line 899
    :pswitch_a
    move-object/from16 v1, p1

    .line 900
    .line 901
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 902
    .line 903
    move-object/from16 v2, p2

    .line 904
    .line 905
    check-cast v2, Ljava/lang/Integer;

    .line 906
    .line 907
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 908
    .line 909
    .line 910
    move-result v2

    .line 911
    and-int/lit8 v3, v2, 0x3

    .line 912
    .line 913
    if-eq v3, v5, :cond_14

    .line 914
    .line 915
    move v7, v6

    .line 916
    :cond_14
    and-int/2addr v2, v6

    .line 917
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 918
    .line 919
    .line 920
    move-result v2

    .line 921
    if-eqz v2, :cond_15

    .line 922
    .line 923
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 924
    .line 925
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v2

    .line 929
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 930
    .line 931
    iget-object v2, v2, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 932
    .line 933
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 934
    .line 935
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    move-result-object v3

    .line 939
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 940
    .line 941
    iget-wide v11, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 942
    .line 943
    const/16 v31, 0x0

    .line 944
    .line 945
    const v32, 0x1fffa

    .line 946
    .line 947
    .line 948
    iget-object v9, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 949
    .line 950
    const/4 v10, 0x0

    .line 951
    const/4 v13, 0x0

    .line 952
    const-wide/16 v14, 0x0

    .line 953
    .line 954
    const/16 v16, 0x0

    .line 955
    .line 956
    const/16 v17, 0x0

    .line 957
    .line 958
    const-wide/16 v18, 0x0

    .line 959
    .line 960
    const/16 v20, 0x0

    .line 961
    .line 962
    const-wide/16 v21, 0x0

    .line 963
    .line 964
    const/16 v23, 0x0

    .line 965
    .line 966
    const/16 v24, 0x0

    .line 967
    .line 968
    const/16 v25, 0x0

    .line 969
    .line 970
    const/16 v26, 0x0

    .line 971
    .line 972
    const/16 v27, 0x0

    .line 973
    .line 974
    const/16 v30, 0x0

    .line 975
    .line 976
    move-object/from16 v29, v1

    .line 977
    .line 978
    move-object/from16 v28, v2

    .line 979
    .line 980
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 981
    .line 982
    .line 983
    goto :goto_c

    .line 984
    :cond_15
    move-object/from16 v29, v1

    .line 985
    .line 986
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 987
    .line 988
    .line 989
    :goto_c
    return-object v8

    .line 990
    :pswitch_b
    move-object/from16 v1, p1

    .line 991
    .line 992
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 993
    .line 994
    move-object/from16 v2, p2

    .line 995
    .line 996
    check-cast v2, Ljava/lang/Integer;

    .line 997
    .line 998
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 999
    .line 1000
    .line 1001
    move-result v2

    .line 1002
    and-int/lit8 v3, v2, 0x3

    .line 1003
    .line 1004
    if-eq v3, v5, :cond_16

    .line 1005
    .line 1006
    move v7, v6

    .line 1007
    :cond_16
    and-int/2addr v2, v6

    .line 1008
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1009
    .line 1010
    .line 1011
    move-result v2

    .line 1012
    if-eqz v2, :cond_17

    .line 1013
    .line 1014
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1015
    .line 1016
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v2

    .line 1020
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 1021
    .line 1022
    iget-object v12, v2, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 1023
    .line 1024
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1025
    .line 1026
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v2

    .line 1030
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1031
    .line 1032
    iget-wide v13, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1033
    .line 1034
    const/high16 v23, 0x30000

    .line 1035
    .line 1036
    const/16 v24, 0xfc6

    .line 1037
    .line 1038
    iget-object v9, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 1039
    .line 1040
    const/4 v10, 0x0

    .line 1041
    const/4 v11, 0x0

    .line 1042
    const/16 v15, 0xa

    .line 1043
    .line 1044
    const/16 v16, 0x0

    .line 1045
    .line 1046
    const-wide/16 v17, 0x0

    .line 1047
    .line 1048
    const/16 v19, 0x0

    .line 1049
    .line 1050
    const/16 v20, 0x0

    .line 1051
    .line 1052
    const/16 v21, 0x0

    .line 1053
    .line 1054
    move-object/from16 v22, v1

    .line 1055
    .line 1056
    invoke-static/range {v9 .. v24}, Lorg/wikipedia/compose/components/TabsBoxKt;->HtmlText-KiACRJU(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/TextStyle;JIIJLandroidx/compose/ui/text/LinkInteractionListener;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/GapComposer;II)V

    .line 1057
    .line 1058
    .line 1059
    goto :goto_d

    .line 1060
    :cond_17
    move-object/from16 v22, v1

    .line 1061
    .line 1062
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1063
    .line 1064
    .line 1065
    :goto_d
    return-object v8

    .line 1066
    :pswitch_c
    move-object/from16 v1, p1

    .line 1067
    .line 1068
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1069
    .line 1070
    move-object/from16 v2, p2

    .line 1071
    .line 1072
    check-cast v2, Ljava/lang/Integer;

    .line 1073
    .line 1074
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1075
    .line 1076
    .line 1077
    move-result v2

    .line 1078
    and-int/lit8 v3, v2, 0x3

    .line 1079
    .line 1080
    if-eq v3, v5, :cond_18

    .line 1081
    .line 1082
    move v7, v6

    .line 1083
    :cond_18
    and-int/2addr v2, v6

    .line 1084
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1085
    .line 1086
    .line 1087
    move-result v2

    .line 1088
    if-eqz v2, :cond_19

    .line 1089
    .line 1090
    const/16 v45, 0x0

    .line 1091
    .line 1092
    const v46, 0x3fffe

    .line 1093
    .line 1094
    .line 1095
    iget-object v0, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 1096
    .line 1097
    const/16 v24, 0x0

    .line 1098
    .line 1099
    const-wide/16 v25, 0x0

    .line 1100
    .line 1101
    const/16 v27, 0x0

    .line 1102
    .line 1103
    const-wide/16 v28, 0x0

    .line 1104
    .line 1105
    const/16 v30, 0x0

    .line 1106
    .line 1107
    const/16 v31, 0x0

    .line 1108
    .line 1109
    const-wide/16 v32, 0x0

    .line 1110
    .line 1111
    const/16 v34, 0x0

    .line 1112
    .line 1113
    const-wide/16 v35, 0x0

    .line 1114
    .line 1115
    const/16 v37, 0x0

    .line 1116
    .line 1117
    const/16 v38, 0x0

    .line 1118
    .line 1119
    const/16 v39, 0x0

    .line 1120
    .line 1121
    const/16 v40, 0x0

    .line 1122
    .line 1123
    const/16 v41, 0x0

    .line 1124
    .line 1125
    const/16 v42, 0x0

    .line 1126
    .line 1127
    const/16 v44, 0x0

    .line 1128
    .line 1129
    move-object/from16 v23, v0

    .line 1130
    .line 1131
    move-object/from16 v43, v1

    .line 1132
    .line 1133
    invoke-static/range {v23 .. v46}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1134
    .line 1135
    .line 1136
    goto :goto_e

    .line 1137
    :cond_19
    move-object/from16 v43, v1

    .line 1138
    .line 1139
    invoke-virtual/range {v43 .. v43}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1140
    .line 1141
    .line 1142
    :goto_e
    return-object v8

    .line 1143
    :pswitch_d
    move-object/from16 v1, p1

    .line 1144
    .line 1145
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1146
    .line 1147
    move-object/from16 v2, p2

    .line 1148
    .line 1149
    check-cast v2, Ljava/lang/Integer;

    .line 1150
    .line 1151
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1152
    .line 1153
    .line 1154
    move-result v2

    .line 1155
    and-int/lit8 v3, v2, 0x3

    .line 1156
    .line 1157
    if-eq v3, v5, :cond_1a

    .line 1158
    .line 1159
    move v7, v6

    .line 1160
    :cond_1a
    and-int/2addr v2, v6

    .line 1161
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1162
    .line 1163
    .line 1164
    move-result v2

    .line 1165
    if-eqz v2, :cond_1b

    .line 1166
    .line 1167
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1168
    .line 1169
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v2

    .line 1173
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 1174
    .line 1175
    iget-object v2, v2, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1176
    .line 1177
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1178
    .line 1179
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v3

    .line 1183
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1184
    .line 1185
    iget-wide v11, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1186
    .line 1187
    const/16 v31, 0x0

    .line 1188
    .line 1189
    const v32, 0x1fffa

    .line 1190
    .line 1191
    .line 1192
    iget-object v9, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 1193
    .line 1194
    const/4 v10, 0x0

    .line 1195
    const/4 v13, 0x0

    .line 1196
    const-wide/16 v14, 0x0

    .line 1197
    .line 1198
    const/16 v16, 0x0

    .line 1199
    .line 1200
    const/16 v17, 0x0

    .line 1201
    .line 1202
    const-wide/16 v18, 0x0

    .line 1203
    .line 1204
    const/16 v20, 0x0

    .line 1205
    .line 1206
    const-wide/16 v21, 0x0

    .line 1207
    .line 1208
    const/16 v23, 0x0

    .line 1209
    .line 1210
    const/16 v24, 0x0

    .line 1211
    .line 1212
    const/16 v25, 0x0

    .line 1213
    .line 1214
    const/16 v26, 0x0

    .line 1215
    .line 1216
    const/16 v27, 0x0

    .line 1217
    .line 1218
    const/16 v30, 0x0

    .line 1219
    .line 1220
    move-object/from16 v29, v1

    .line 1221
    .line 1222
    move-object/from16 v28, v2

    .line 1223
    .line 1224
    invoke-static/range {v9 .. v32}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1225
    .line 1226
    .line 1227
    goto :goto_f

    .line 1228
    :cond_1b
    move-object/from16 v29, v1

    .line 1229
    .line 1230
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1231
    .line 1232
    .line 1233
    :goto_f
    return-object v8

    .line 1234
    :pswitch_e
    move-object/from16 v1, p1

    .line 1235
    .line 1236
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1237
    .line 1238
    move-object/from16 v3, p2

    .line 1239
    .line 1240
    check-cast v3, Ljava/lang/Integer;

    .line 1241
    .line 1242
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1243
    .line 1244
    .line 1245
    move-result v3

    .line 1246
    and-int/lit8 v4, v3, 0x3

    .line 1247
    .line 1248
    if-eq v4, v5, :cond_1c

    .line 1249
    .line 1250
    move v7, v6

    .line 1251
    :cond_1c
    and-int/2addr v3, v6

    .line 1252
    invoke-virtual {v1, v3, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1253
    .line 1254
    .line 1255
    move-result v3

    .line 1256
    if-eqz v3, :cond_1d

    .line 1257
    .line 1258
    const/high16 v3, 0x41a00000    # 20.0f

    .line 1259
    .line 1260
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v2

    .line 1264
    invoke-static {v2, v3, v5}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v9

    .line 1268
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1269
    .line 1270
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v3

    .line 1274
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1275
    .line 1276
    iget-wide v13, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 1277
    .line 1278
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v2

    .line 1282
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1283
    .line 1284
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 1285
    .line 1286
    const/16 v21, 0x6

    .line 1287
    .line 1288
    const/16 v22, 0x54

    .line 1289
    .line 1290
    iget-object v10, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;->f$0:Ljava/lang/String;

    .line 1291
    .line 1292
    const-wide/16 v11, 0x0

    .line 1293
    .line 1294
    const/4 v15, 0x0

    .line 1295
    const-wide/16 v18, 0x0

    .line 1296
    .line 1297
    move-object/from16 v20, v1

    .line 1298
    .line 1299
    move-wide/from16 v16, v2

    .line 1300
    .line 1301
    invoke-static/range {v9 .. v22}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiLangCodeBox-fdREj3A(Landroidx/compose/ui/Modifier;Ljava/lang/String;JJLandroidx/compose/foundation/shape/RoundedCornerShape;JJLandroidx/compose/runtime/GapComposer;II)V

    .line 1302
    .line 1303
    .line 1304
    goto :goto_10

    .line 1305
    :cond_1d
    move-object/from16 v20, v1

    .line 1306
    .line 1307
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1308
    .line 1309
    .line 1310
    :goto_10
    return-object v8

    .line 1311
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

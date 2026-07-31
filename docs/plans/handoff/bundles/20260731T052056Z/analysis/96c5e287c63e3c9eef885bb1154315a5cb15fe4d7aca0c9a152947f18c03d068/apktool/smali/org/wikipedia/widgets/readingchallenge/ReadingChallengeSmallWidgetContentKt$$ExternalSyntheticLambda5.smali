.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

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
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 4
    .line 5
    const-class v2, Lorg/wikipedia/widgets/readingchallenge/JoinChallengeAction;

    .line 6
    .line 7
    const-class v3, Lorg/wikipedia/widgets/readingchallenge/HomeAction;

    .line 8
    .line 9
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x0

    .line 13
    iget-object v0, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    move-object/from16 v2, p2

    .line 24
    .line 25
    check-cast v2, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    and-int/lit8 v8, v2, 0x3

    .line 32
    .line 33
    if-eq v8, v5, :cond_0

    .line 34
    .line 35
    move v5, v7

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v5, v6

    .line 38
    :goto_0
    and-int/2addr v2, v7

    .line 39
    invoke-virtual {v1, v2, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    const v2, 0x7f12072e

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-array v0, v6, [Landroidx/glance/action/ActionParameters$Pair;

    .line 56
    .line 57
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, [Landroidx/glance/action/ActionParameters$Pair;

    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v9, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 68
    .line 69
    invoke-direct {v9, v3, v0}, Landroidx/glance/appwidget/action/RunCallbackAction;-><init>(Ljava/lang/Class;Landroidx/glance/action/MutableActionParameters;)V

    .line 70
    .line 71
    .line 72
    const/16 v17, 0x0

    .line 73
    .line 74
    const/16 v18, 0x3c

    .line 75
    .line 76
    const-wide/16 v10, 0x0

    .line 77
    .line 78
    const-wide/16 v12, 0x0

    .line 79
    .line 80
    const/4 v14, 0x0

    .line 81
    const/4 v15, 0x0

    .line 82
    move-object/from16 v16, v1

    .line 83
    .line 84
    invoke-static/range {v8 .. v18}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetButton-Y0xEhic(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;JJLandroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    move-object/from16 v16, v1

    .line 89
    .line 90
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-object v4

    .line 94
    :pswitch_0
    move-object/from16 v13, p1

    .line 95
    .line 96
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 97
    .line 98
    move-object/from16 v1, p2

    .line 99
    .line 100
    check-cast v1, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    and-int/lit8 v3, v1, 0x3

    .line 107
    .line 108
    if-eq v3, v5, :cond_2

    .line 109
    .line 110
    move v3, v7

    .line 111
    goto :goto_2

    .line 112
    :cond_2
    move v3, v6

    .line 113
    :goto_2
    and-int/2addr v1, v7

    .line 114
    invoke-virtual {v13, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    const v1, 0x7f120730

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    new-array v0, v6, [Landroidx/glance/action/ActionParameters$Pair;

    .line 131
    .line 132
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, [Landroidx/glance/action/ActionParameters$Pair;

    .line 137
    .line 138
    invoke-static {v0}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    new-instance v6, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 143
    .line 144
    invoke-direct {v6, v2, v0}, Landroidx/glance/appwidget/action/RunCallbackAction;-><init>(Ljava/lang/Class;Landroidx/glance/action/MutableActionParameters;)V

    .line 145
    .line 146
    .line 147
    const/4 v14, 0x0

    .line 148
    const/16 v15, 0x3c

    .line 149
    .line 150
    const-wide/16 v7, 0x0

    .line 151
    .line 152
    const-wide/16 v9, 0x0

    .line 153
    .line 154
    const/4 v11, 0x0

    .line 155
    const/4 v12, 0x0

    .line 156
    invoke-static/range {v5 .. v15}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetButton-Y0xEhic(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;JJLandroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 161
    .line 162
    .line 163
    :goto_3
    return-object v4

    .line 164
    :pswitch_1
    move-object/from16 v9, p1

    .line 165
    .line 166
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 167
    .line 168
    move-object/from16 v1, p2

    .line 169
    .line 170
    check-cast v1, Ljava/lang/Integer;

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    and-int/lit8 v2, v1, 0x3

    .line 177
    .line 178
    if-eq v2, v5, :cond_4

    .line 179
    .line 180
    move v6, v7

    .line 181
    :cond_4
    and-int/2addr v1, v7

    .line 182
    invoke-virtual {v9, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_5

    .line 187
    .line 188
    new-instance v5, Landroidx/glance/layout/WidthModifier;

    .line 189
    .line 190
    sget-object v1, Landroidx/glance/unit/Dimension$Fill;->INSTANCE:Landroidx/glance/unit/Dimension$Fill;

    .line 191
    .line 192
    invoke-direct {v5, v1}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 193
    .line 194
    .line 195
    new-instance v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda6;

    .line 196
    .line 197
    invoke-direct {v1, v0, v7}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;I)V

    .line 198
    .line 199
    .line 200
    const v0, 0xe867a37

    .line 201
    .line 202
    .line 203
    invoke-static {v0, v1, v9}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    const/16 v10, 0xc00

    .line 208
    .line 209
    const/4 v11, 0x6

    .line 210
    const/4 v6, 0x0

    .line 211
    const/4 v7, 0x0

    .line 212
    invoke-static/range {v5 .. v11}, Lkotlin/uuid/UuidKt;->Row-lMAjyxE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 217
    .line 218
    .line 219
    :goto_4
    return-object v4

    .line 220
    :pswitch_2
    move-object/from16 v1, p1

    .line 221
    .line 222
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 223
    .line 224
    move-object/from16 v2, p2

    .line 225
    .line 226
    check-cast v2, Ljava/lang/Integer;

    .line 227
    .line 228
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    and-int/lit8 v8, v2, 0x3

    .line 233
    .line 234
    if-eq v8, v5, :cond_6

    .line 235
    .line 236
    move v5, v7

    .line 237
    goto :goto_5

    .line 238
    :cond_6
    move v5, v6

    .line 239
    :goto_5
    and-int/2addr v2, v7

    .line 240
    invoke-virtual {v1, v2, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_7

    .line 245
    .line 246
    const v2, 0x7f12072f

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    new-array v0, v6, [Landroidx/glance/action/ActionParameters$Pair;

    .line 257
    .line 258
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, [Landroidx/glance/action/ActionParameters$Pair;

    .line 263
    .line 264
    invoke-static {v0}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    new-instance v11, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 269
    .line 270
    invoke-direct {v11, v3, v0}, Landroidx/glance/appwidget/action/RunCallbackAction;-><init>(Ljava/lang/Class;Landroidx/glance/action/MutableActionParameters;)V

    .line 271
    .line 272
    .line 273
    const/16 v19, 0x0

    .line 274
    .line 275
    const/16 v20, 0x3c

    .line 276
    .line 277
    const-wide/16 v12, 0x0

    .line 278
    .line 279
    const-wide/16 v14, 0x0

    .line 280
    .line 281
    const/16 v16, 0x0

    .line 282
    .line 283
    const/16 v17, 0x0

    .line 284
    .line 285
    move-object/from16 v18, v1

    .line 286
    .line 287
    invoke-static/range {v10 .. v20}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetButton-Y0xEhic(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;JJLandroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_7
    move-object/from16 v18, v1

    .line 292
    .line 293
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 294
    .line 295
    .line 296
    :goto_6
    return-object v4

    .line 297
    :pswitch_3
    move-object/from16 v13, p1

    .line 298
    .line 299
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 300
    .line 301
    move-object/from16 v1, p2

    .line 302
    .line 303
    check-cast v1, Ljava/lang/Integer;

    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    and-int/lit8 v3, v1, 0x3

    .line 310
    .line 311
    if-eq v3, v5, :cond_8

    .line 312
    .line 313
    move v3, v7

    .line 314
    goto :goto_7

    .line 315
    :cond_8
    move v3, v6

    .line 316
    :goto_7
    and-int/2addr v1, v7

    .line 317
    invoke-virtual {v13, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_9

    .line 322
    .line 323
    const v1, 0x7f120731

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    new-array v0, v6, [Landroidx/glance/action/ActionParameters$Pair;

    .line 334
    .line 335
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    check-cast v0, [Landroidx/glance/action/ActionParameters$Pair;

    .line 340
    .line 341
    invoke-static {v0}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    new-instance v6, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 346
    .line 347
    invoke-direct {v6, v2, v0}, Landroidx/glance/appwidget/action/RunCallbackAction;-><init>(Ljava/lang/Class;Landroidx/glance/action/MutableActionParameters;)V

    .line 348
    .line 349
    .line 350
    const/4 v14, 0x0

    .line 351
    const/16 v15, 0x3c

    .line 352
    .line 353
    const-wide/16 v7, 0x0

    .line 354
    .line 355
    const-wide/16 v9, 0x0

    .line 356
    .line 357
    const/4 v11, 0x0

    .line 358
    const/4 v12, 0x0

    .line 359
    invoke-static/range {v5 .. v15}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetButton-Y0xEhic(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;JJLandroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 360
    .line 361
    .line 362
    goto :goto_8

    .line 363
    :cond_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 364
    .line 365
    .line 366
    :goto_8
    return-object v4

    .line 367
    :pswitch_4
    move-object/from16 v1, p1

    .line 368
    .line 369
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 370
    .line 371
    move-object/from16 v2, p2

    .line 372
    .line 373
    check-cast v2, Ljava/lang/Integer;

    .line 374
    .line 375
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    and-int/lit8 v3, v2, 0x3

    .line 380
    .line 381
    if-eq v3, v5, :cond_a

    .line 382
    .line 383
    move v3, v7

    .line 384
    goto :goto_9

    .line 385
    :cond_a
    move v3, v6

    .line 386
    :goto_9
    and-int/2addr v2, v7

    .line 387
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    if-eqz v2, :cond_b

    .line 392
    .line 393
    const v2, 0x7f120729

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v14

    .line 400
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    .line 402
    .line 403
    new-array v0, v6, [Landroidx/glance/action/ActionParameters$Pair;

    .line 404
    .line 405
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    check-cast v0, [Landroidx/glance/action/ActionParameters$Pair;

    .line 410
    .line 411
    invoke-static {v0}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    new-instance v15, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 416
    .line 417
    const-class v2, Lorg/wikipedia/widgets/readingchallenge/ChallengeRewardAction;

    .line 418
    .line 419
    invoke-direct {v15, v2, v0}, Landroidx/glance/appwidget/action/RunCallbackAction;-><init>(Ljava/lang/Class;Landroidx/glance/action/MutableActionParameters;)V

    .line 420
    .line 421
    .line 422
    const/high16 v23, 0x30000

    .line 423
    .line 424
    const/16 v24, 0x1c

    .line 425
    .line 426
    const-wide/16 v16, 0x0

    .line 427
    .line 428
    const-wide/16 v18, 0x0

    .line 429
    .line 430
    const/16 v20, 0x0

    .line 431
    .line 432
    sget-object v21, Landroidx/glance/GlanceModifier$Companion;->$$INSTANCE:Landroidx/glance/GlanceModifier$Companion;

    .line 433
    .line 434
    move-object/from16 v22, v1

    .line 435
    .line 436
    invoke-static/range {v14 .. v24}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetButton-Y0xEhic(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;JJLandroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 437
    .line 438
    .line 439
    goto :goto_a

    .line 440
    :cond_b
    move-object/from16 v22, v1

    .line 441
    .line 442
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 443
    .line 444
    .line 445
    :goto_a
    return-object v4

    .line 446
    :pswitch_5
    move-object/from16 v13, p1

    .line 447
    .line 448
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 449
    .line 450
    move-object/from16 v1, p2

    .line 451
    .line 452
    check-cast v1, Ljava/lang/Integer;

    .line 453
    .line 454
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    and-int/lit8 v2, v1, 0x3

    .line 459
    .line 460
    if-eq v2, v5, :cond_c

    .line 461
    .line 462
    move v2, v7

    .line 463
    goto :goto_b

    .line 464
    :cond_c
    move v2, v6

    .line 465
    :goto_b
    and-int/2addr v1, v7

    .line 466
    invoke-virtual {v13, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    if-eqz v1, :cond_d

    .line 471
    .line 472
    const v1, 0x7f12021d

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    new-array v0, v6, [Landroidx/glance/action/ActionParameters$Pair;

    .line 483
    .line 484
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    check-cast v0, [Landroidx/glance/action/ActionParameters$Pair;

    .line 489
    .line 490
    invoke-static {v0}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    new-instance v6, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 495
    .line 496
    invoke-direct {v6, v3, v0}, Landroidx/glance/appwidget/action/RunCallbackAction;-><init>(Ljava/lang/Class;Landroidx/glance/action/MutableActionParameters;)V

    .line 497
    .line 498
    .line 499
    const/4 v14, 0x0

    .line 500
    const/16 v15, 0x3c

    .line 501
    .line 502
    const-wide/16 v7, 0x0

    .line 503
    .line 504
    const-wide/16 v9, 0x0

    .line 505
    .line 506
    const/4 v11, 0x0

    .line 507
    const/4 v12, 0x0

    .line 508
    invoke-static/range {v5 .. v15}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetButton-Y0xEhic(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;JJLandroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 509
    .line 510
    .line 511
    goto :goto_c

    .line 512
    :cond_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 513
    .line 514
    .line 515
    :goto_c
    return-object v4

    .line 516
    nop

    .line 517
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

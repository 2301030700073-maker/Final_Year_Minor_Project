.class public final synthetic Lorg/wikipedia/compose/components/OnboardingKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/compose/components/OnboardingKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/compose/components/OnboardingKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/compose/components/OnboardingKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 17
    .line 18
    move-object/from16 v6, p2

    .line 19
    .line 20
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    move-object/from16 v7, p3

    .line 23
    .line 24
    check-cast v7, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    and-int/lit8 v1, v7, 0x11

    .line 34
    .line 35
    if-eq v1, v2, :cond_0

    .line 36
    .line 37
    move v5, v3

    .line 38
    :cond_0
    and-int/lit8 v1, v7, 0x1

    .line 39
    .line 40
    invoke-virtual {v6, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const/16 v28, 0x0

    .line 47
    .line 48
    const v29, 0x3fffe

    .line 49
    .line 50
    .line 51
    move-object/from16 v26, v6

    .line 52
    .line 53
    iget-object v6, v0, Lorg/wikipedia/compose/components/OnboardingKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 54
    .line 55
    const/4 v7, 0x0

    .line 56
    const-wide/16 v8, 0x0

    .line 57
    .line 58
    const/4 v10, 0x0

    .line 59
    const-wide/16 v11, 0x0

    .line 60
    .line 61
    const/4 v13, 0x0

    .line 62
    const/4 v14, 0x0

    .line 63
    const-wide/16 v15, 0x0

    .line 64
    .line 65
    const/16 v17, 0x0

    .line 66
    .line 67
    const-wide/16 v18, 0x0

    .line 68
    .line 69
    const/16 v20, 0x0

    .line 70
    .line 71
    const/16 v21, 0x0

    .line 72
    .line 73
    const/16 v22, 0x0

    .line 74
    .line 75
    const/16 v23, 0x0

    .line 76
    .line 77
    const/16 v24, 0x0

    .line 78
    .line 79
    const/16 v25, 0x0

    .line 80
    .line 81
    const/16 v27, 0x0

    .line 82
    .line 83
    invoke-static/range {v6 .. v29}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    move-object/from16 v26, v6

    .line 88
    .line 89
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-object v4

    .line 93
    :pswitch_0
    move-object/from16 v1, p1

    .line 94
    .line 95
    check-cast v1, Landroidx/compose/material3/TooltipScopeImpl;

    .line 96
    .line 97
    move-object/from16 v14, p2

    .line 98
    .line 99
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 100
    .line 101
    move-object/from16 v2, p3

    .line 102
    .line 103
    check-cast v2, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    const/4 v3, 0x0

    .line 113
    const/4 v6, 0x2

    .line 114
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 115
    .line 116
    const/high16 v8, 0x41800000    # 16.0f

    .line 117
    .line 118
    invoke-static {v7, v8, v3, v6}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 123
    .line 124
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 129
    .line 130
    iget-wide v11, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 131
    .line 132
    new-instance v3, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;

    .line 133
    .line 134
    const/4 v7, 0x5

    .line 135
    iget-object v0, v0, Lorg/wikipedia/compose/components/OnboardingKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 136
    .line 137
    invoke-direct {v3, v0, v7, v5}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda30;-><init>(Ljava/lang/String;IB)V

    .line 138
    .line 139
    .line 140
    const v0, 0x623fc212

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v3, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    and-int/lit8 v0, v2, 0xe

    .line 148
    .line 149
    const v2, 0x30000030

    .line 150
    .line 151
    .line 152
    or-int v15, v0, v2

    .line 153
    .line 154
    const/4 v7, 0x0

    .line 155
    const/4 v8, 0x0

    .line 156
    const-wide/16 v9, 0x0

    .line 157
    .line 158
    move-object v5, v1

    .line 159
    invoke-static/range {v5 .. v15}, Landroidx/compose/material3/TooltipKt;->PlainTooltip-gv3ox5I(Landroidx/compose/material3/TooltipScopeImpl;Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 160
    .line 161
    .line 162
    return-object v4

    .line 163
    :pswitch_1
    move-object/from16 v1, p1

    .line 164
    .line 165
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 166
    .line 167
    move-object/from16 v6, p2

    .line 168
    .line 169
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 170
    .line 171
    move-object/from16 v7, p3

    .line 172
    .line 173
    check-cast v7, Ljava/lang/Integer;

    .line 174
    .line 175
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    and-int/lit8 v1, v7, 0x11

    .line 183
    .line 184
    if-eq v1, v2, :cond_2

    .line 185
    .line 186
    move v5, v3

    .line 187
    :cond_2
    and-int/lit8 v1, v7, 0x1

    .line 188
    .line 189
    invoke-virtual {v6, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_3

    .line 194
    .line 195
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 196
    .line 197
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 202
    .line 203
    iget-wide v8, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 204
    .line 205
    const/16 v28, 0x0

    .line 206
    .line 207
    const v29, 0x3fffa

    .line 208
    .line 209
    .line 210
    move-object/from16 v26, v6

    .line 211
    .line 212
    iget-object v6, v0, Lorg/wikipedia/compose/components/OnboardingKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 213
    .line 214
    const/4 v7, 0x0

    .line 215
    const/4 v10, 0x0

    .line 216
    const-wide/16 v11, 0x0

    .line 217
    .line 218
    const/4 v13, 0x0

    .line 219
    const/4 v14, 0x0

    .line 220
    const-wide/16 v15, 0x0

    .line 221
    .line 222
    const/16 v17, 0x0

    .line 223
    .line 224
    const-wide/16 v18, 0x0

    .line 225
    .line 226
    const/16 v20, 0x0

    .line 227
    .line 228
    const/16 v21, 0x0

    .line 229
    .line 230
    const/16 v22, 0x0

    .line 231
    .line 232
    const/16 v23, 0x0

    .line 233
    .line 234
    const/16 v24, 0x0

    .line 235
    .line 236
    const/16 v25, 0x0

    .line 237
    .line 238
    const/16 v27, 0x0

    .line 239
    .line 240
    invoke-static/range {v6 .. v29}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_3
    move-object/from16 v26, v6

    .line 245
    .line 246
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 247
    .line 248
    .line 249
    :goto_1
    return-object v4

    .line 250
    :pswitch_2
    move-object/from16 v1, p1

    .line 251
    .line 252
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 253
    .line 254
    move-object/from16 v6, p2

    .line 255
    .line 256
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 257
    .line 258
    move-object/from16 v7, p3

    .line 259
    .line 260
    check-cast v7, Ljava/lang/Integer;

    .line 261
    .line 262
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    and-int/lit8 v1, v7, 0x11

    .line 270
    .line 271
    if-eq v1, v2, :cond_4

    .line 272
    .line 273
    move v5, v3

    .line 274
    :cond_4
    and-int/lit8 v1, v7, 0x1

    .line 275
    .line 276
    invoke-virtual {v6, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eqz v1, :cond_5

    .line 281
    .line 282
    const/16 v28, 0x0

    .line 283
    .line 284
    const v29, 0x3fffe

    .line 285
    .line 286
    .line 287
    move-object/from16 v26, v6

    .line 288
    .line 289
    iget-object v6, v0, Lorg/wikipedia/compose/components/OnboardingKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 290
    .line 291
    const/4 v7, 0x0

    .line 292
    const-wide/16 v8, 0x0

    .line 293
    .line 294
    const/4 v10, 0x0

    .line 295
    const-wide/16 v11, 0x0

    .line 296
    .line 297
    const/4 v13, 0x0

    .line 298
    const/4 v14, 0x0

    .line 299
    const-wide/16 v15, 0x0

    .line 300
    .line 301
    const/16 v17, 0x0

    .line 302
    .line 303
    const-wide/16 v18, 0x0

    .line 304
    .line 305
    const/16 v20, 0x0

    .line 306
    .line 307
    const/16 v21, 0x0

    .line 308
    .line 309
    const/16 v22, 0x0

    .line 310
    .line 311
    const/16 v23, 0x0

    .line 312
    .line 313
    const/16 v24, 0x0

    .line 314
    .line 315
    const/16 v25, 0x0

    .line 316
    .line 317
    const/16 v27, 0x0

    .line 318
    .line 319
    invoke-static/range {v6 .. v29}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 320
    .line 321
    .line 322
    goto :goto_2

    .line 323
    :cond_5
    move-object/from16 v26, v6

    .line 324
    .line 325
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 326
    .line 327
    .line 328
    :goto_2
    return-object v4

    .line 329
    :pswitch_3
    move-object/from16 v1, p1

    .line 330
    .line 331
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 332
    .line 333
    move-object/from16 v6, p2

    .line 334
    .line 335
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 336
    .line 337
    move-object/from16 v7, p3

    .line 338
    .line 339
    check-cast v7, Ljava/lang/Integer;

    .line 340
    .line 341
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 342
    .line 343
    .line 344
    move-result v7

    .line 345
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    and-int/lit8 v1, v7, 0x11

    .line 349
    .line 350
    if-eq v1, v2, :cond_6

    .line 351
    .line 352
    move v5, v3

    .line 353
    :cond_6
    and-int/lit8 v1, v7, 0x1

    .line 354
    .line 355
    invoke-virtual {v6, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-eqz v1, :cond_7

    .line 360
    .line 361
    const/16 v28, 0x0

    .line 362
    .line 363
    const v29, 0x3fffe

    .line 364
    .line 365
    .line 366
    move-object/from16 v26, v6

    .line 367
    .line 368
    iget-object v6, v0, Lorg/wikipedia/compose/components/OnboardingKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 369
    .line 370
    const/4 v7, 0x0

    .line 371
    const-wide/16 v8, 0x0

    .line 372
    .line 373
    const/4 v10, 0x0

    .line 374
    const-wide/16 v11, 0x0

    .line 375
    .line 376
    const/4 v13, 0x0

    .line 377
    const/4 v14, 0x0

    .line 378
    const-wide/16 v15, 0x0

    .line 379
    .line 380
    const/16 v17, 0x0

    .line 381
    .line 382
    const-wide/16 v18, 0x0

    .line 383
    .line 384
    const/16 v20, 0x0

    .line 385
    .line 386
    const/16 v21, 0x0

    .line 387
    .line 388
    const/16 v22, 0x0

    .line 389
    .line 390
    const/16 v23, 0x0

    .line 391
    .line 392
    const/16 v24, 0x0

    .line 393
    .line 394
    const/16 v25, 0x0

    .line 395
    .line 396
    const/16 v27, 0x0

    .line 397
    .line 398
    invoke-static/range {v6 .. v29}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 399
    .line 400
    .line 401
    goto :goto_3

    .line 402
    :cond_7
    move-object/from16 v26, v6

    .line 403
    .line 404
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 405
    .line 406
    .line 407
    :goto_3
    return-object v4

    .line 408
    :pswitch_4
    move-object/from16 v1, p1

    .line 409
    .line 410
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 411
    .line 412
    move-object/from16 v13, p2

    .line 413
    .line 414
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 415
    .line 416
    move-object/from16 v6, p3

    .line 417
    .line 418
    check-cast v6, Ljava/lang/Integer;

    .line 419
    .line 420
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    and-int/lit8 v1, v6, 0x11

    .line 428
    .line 429
    if-eq v1, v2, :cond_8

    .line 430
    .line 431
    move v5, v3

    .line 432
    :cond_8
    and-int/lit8 v1, v6, 0x1

    .line 433
    .line 434
    invoke-virtual {v13, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-eqz v1, :cond_9

    .line 439
    .line 440
    sget-object v12, Lorg/wikipedia/compose/components/TabsBoxKt;->lambda$1491806916:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 441
    .line 442
    const/high16 v14, 0x180000

    .line 443
    .line 444
    const/16 v15, 0x3e

    .line 445
    .line 446
    iget-object v6, v0, Lorg/wikipedia/compose/components/OnboardingKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 447
    .line 448
    const/4 v7, 0x0

    .line 449
    const/4 v8, 0x0

    .line 450
    const/4 v9, 0x0

    .line 451
    const/4 v10, 0x0

    .line 452
    const/4 v11, 0x0

    .line 453
    invoke-static/range {v6 .. v15}, Landroidx/compose/animation/CrossfadeKt;->AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 454
    .line 455
    .line 456
    goto :goto_4

    .line 457
    :cond_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 458
    .line 459
    .line 460
    :goto_4
    return-object v4

    .line 461
    :pswitch_5
    move-object/from16 v1, p1

    .line 462
    .line 463
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 464
    .line 465
    move-object/from16 v6, p2

    .line 466
    .line 467
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 468
    .line 469
    move-object/from16 v7, p3

    .line 470
    .line 471
    check-cast v7, Ljava/lang/Integer;

    .line 472
    .line 473
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 474
    .line 475
    .line 476
    move-result v7

    .line 477
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    and-int/lit8 v1, v7, 0x11

    .line 481
    .line 482
    if-eq v1, v2, :cond_a

    .line 483
    .line 484
    move v5, v3

    .line 485
    :cond_a
    and-int/lit8 v1, v7, 0x1

    .line 486
    .line 487
    invoke-virtual {v6, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-eqz v1, :cond_b

    .line 492
    .line 493
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 494
    .line 495
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 500
    .line 501
    iget-object v1, v1, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 502
    .line 503
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 504
    .line 505
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 510
    .line 511
    iget-wide v8, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 512
    .line 513
    new-instance v2, Landroidx/compose/ui/text/style/TextAlign;

    .line 514
    .line 515
    const/4 v3, 0x3

    .line 516
    invoke-direct {v2, v3}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 517
    .line 518
    .line 519
    const/16 v28, 0x0

    .line 520
    .line 521
    const v29, 0x1fbfa

    .line 522
    .line 523
    .line 524
    iget-object v0, v0, Lorg/wikipedia/compose/components/OnboardingKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 525
    .line 526
    const/4 v7, 0x0

    .line 527
    const/4 v10, 0x0

    .line 528
    const-wide/16 v11, 0x0

    .line 529
    .line 530
    const/4 v13, 0x0

    .line 531
    const/4 v14, 0x0

    .line 532
    const-wide/16 v15, 0x0

    .line 533
    .line 534
    const-wide/16 v18, 0x0

    .line 535
    .line 536
    const/16 v20, 0x0

    .line 537
    .line 538
    const/16 v21, 0x0

    .line 539
    .line 540
    const/16 v22, 0x0

    .line 541
    .line 542
    const/16 v23, 0x0

    .line 543
    .line 544
    const/16 v24, 0x0

    .line 545
    .line 546
    const/16 v27, 0x0

    .line 547
    .line 548
    move-object/from16 v25, v1

    .line 549
    .line 550
    move-object/from16 v17, v2

    .line 551
    .line 552
    move-object/from16 v26, v6

    .line 553
    .line 554
    move-object v6, v0

    .line 555
    invoke-static/range {v6 .. v29}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 556
    .line 557
    .line 558
    goto :goto_5

    .line 559
    :cond_b
    move-object/from16 v26, v6

    .line 560
    .line 561
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 562
    .line 563
    .line 564
    :goto_5
    return-object v4

    .line 565
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

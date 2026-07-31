.class public final synthetic Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 9
    iput p3, p0, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    iget-object v2, v0, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    move-object/from16 v2, p2

    .line 20
    .line 21
    check-cast v2, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    and-int/lit8 v7, v2, 0x3

    .line 28
    .line 29
    if-eq v7, v4, :cond_0

    .line 30
    .line 31
    move v3, v6

    .line 32
    :cond_0
    and-int/2addr v2, v6

    .line 33
    move-object v13, v1

    .line 34
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 35
    .line 36
    invoke-virtual {v13, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    const/4 v14, 0x0

    .line 43
    const/16 v15, 0x7e

    .line 44
    .line 45
    iget-object v6, v0, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    const-wide/16 v8, 0x0

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    const/4 v11, 0x0

    .line 52
    const/4 v12, 0x0

    .line 53
    invoke-static/range {v6 .. v15}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-object v5

    .line 61
    :pswitch_0
    move-object/from16 v0, p1

    .line 62
    .line 63
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 64
    .line 65
    move-object/from16 v1, p2

    .line 66
    .line 67
    check-cast v1, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    and-int/lit8 v7, v1, 0x3

    .line 74
    .line 75
    if-eq v7, v4, :cond_2

    .line 76
    .line 77
    move v4, v6

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move v4, v3

    .line 80
    :goto_1
    and-int/2addr v1, v6

    .line 81
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 82
    .line 83
    invoke-virtual {v0, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-static {v2, v1, v0, v3}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeScreenKt;->WelcomeHeaderSection(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 95
    .line 96
    .line 97
    :goto_2
    return-object v5

    .line 98
    :pswitch_1
    move-object/from16 v0, p1

    .line 99
    .line 100
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 101
    .line 102
    move-object/from16 v1, p2

    .line 103
    .line 104
    check-cast v1, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-static {v2, v0, v1}, Landroidx/room/util/SchemaInfoUtilKt;->HeaderArea(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 114
    .line 115
    .line 116
    return-object v5

    .line 117
    :pswitch_2
    move-object/from16 v0, p1

    .line 118
    .line 119
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 120
    .line 121
    move-object/from16 v1, p2

    .line 122
    .line 123
    check-cast v1, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-static {v2, v0, v1}, Landroidx/compose/ui/unit/IntRectKt;->BulletedListItem(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 133
    .line 134
    .line 135
    return-object v5

    .line 136
    :pswitch_3
    move-object/from16 v1, p1

    .line 137
    .line 138
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 139
    .line 140
    move-object/from16 v2, p2

    .line 141
    .line 142
    check-cast v2, Ljava/lang/Integer;

    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    and-int/lit8 v7, v2, 0x3

    .line 149
    .line 150
    if-eq v7, v4, :cond_4

    .line 151
    .line 152
    move v3, v6

    .line 153
    :cond_4
    and-int/2addr v2, v6

    .line 154
    move-object v12, v1

    .line 155
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 156
    .line 157
    invoke-virtual {v12, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_5

    .line 162
    .line 163
    const v13, 0x36000

    .line 164
    .line 165
    .line 166
    const/16 v14, 0xe

    .line 167
    .line 168
    iget-object v6, v0, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 169
    .line 170
    const/4 v7, 0x0

    .line 171
    const-wide/16 v8, 0x0

    .line 172
    .line 173
    const/4 v10, 0x2

    .line 174
    const/4 v11, 0x2

    .line 175
    invoke-static/range {v6 .. v14}, Lorg/jsoup/helper/Validate;->TextLabelLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 180
    .line 181
    .line 182
    :goto_3
    return-object v5

    .line 183
    :pswitch_4
    move-object/from16 v1, p1

    .line 184
    .line 185
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 186
    .line 187
    move-object/from16 v2, p2

    .line 188
    .line 189
    check-cast v2, Ljava/lang/Integer;

    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    and-int/lit8 v7, v2, 0x3

    .line 196
    .line 197
    if-eq v7, v4, :cond_6

    .line 198
    .line 199
    move v4, v6

    .line 200
    goto :goto_4

    .line 201
    :cond_6
    move v4, v3

    .line 202
    :goto_4
    and-int/2addr v2, v6

    .line 203
    move-object v12, v1

    .line 204
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 205
    .line 206
    invoke-virtual {v12, v2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_7

    .line 211
    .line 212
    const v1, 0x794354e4

    .line 213
    .line 214
    .line 215
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 216
    .line 217
    .line 218
    const v13, 0x36000

    .line 219
    .line 220
    .line 221
    const/16 v14, 0xe

    .line 222
    .line 223
    iget-object v6, v0, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 224
    .line 225
    const/4 v7, 0x0

    .line 226
    const-wide/16 v8, 0x0

    .line 227
    .line 228
    const/4 v10, 0x2

    .line 229
    const/4 v11, 0x1

    .line 230
    invoke-static/range {v6 .. v14}, Landroidx/room/util/RelationUtil;->TextTitleSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 234
    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_7
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 238
    .line 239
    .line 240
    :goto_5
    return-object v5

    .line 241
    :pswitch_5
    move-object/from16 v1, p1

    .line 242
    .line 243
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 244
    .line 245
    move-object/from16 v2, p2

    .line 246
    .line 247
    check-cast v2, Ljava/lang/Integer;

    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    and-int/lit8 v7, v2, 0x3

    .line 254
    .line 255
    if-eq v7, v4, :cond_8

    .line 256
    .line 257
    move v3, v6

    .line 258
    :cond_8
    and-int/2addr v2, v6

    .line 259
    move-object v13, v1

    .line 260
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 261
    .line 262
    invoke-virtual {v13, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_9

    .line 267
    .line 268
    const/4 v14, 0x0

    .line 269
    const/16 v15, 0x3e

    .line 270
    .line 271
    iget-object v6, v0, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 272
    .line 273
    const/4 v7, 0x0

    .line 274
    const-wide/16 v8, 0x0

    .line 275
    .line 276
    const/4 v10, 0x0

    .line 277
    const/4 v11, 0x0

    .line 278
    const/4 v12, 0x0

    .line 279
    invoke-static/range {v6 .. v15}, Landroidx/room/util/DBUtil;->TextTitleLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 280
    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 284
    .line 285
    .line 286
    :goto_6
    return-object v5

    .line 287
    :pswitch_6
    move-object/from16 v1, p1

    .line 288
    .line 289
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 290
    .line 291
    move-object/from16 v2, p2

    .line 292
    .line 293
    check-cast v2, Ljava/lang/Integer;

    .line 294
    .line 295
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    and-int/lit8 v7, v2, 0x3

    .line 300
    .line 301
    if-eq v7, v4, :cond_a

    .line 302
    .line 303
    move v3, v6

    .line 304
    :cond_a
    and-int/2addr v2, v6

    .line 305
    move-object v13, v1

    .line 306
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 307
    .line 308
    invoke-virtual {v13, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-eqz v1, :cond_b

    .line 313
    .line 314
    const/4 v14, 0x0

    .line 315
    const/16 v15, 0x7e

    .line 316
    .line 317
    iget-object v6, v0, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 318
    .line 319
    const/4 v7, 0x0

    .line 320
    const-wide/16 v8, 0x0

    .line 321
    .line 322
    const/4 v10, 0x0

    .line 323
    const/4 v11, 0x0

    .line 324
    const/4 v12, 0x0

    .line 325
    invoke-static/range {v6 .. v15}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 326
    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 330
    .line 331
    .line 332
    :goto_7
    return-object v5

    .line 333
    :pswitch_7
    move-object/from16 v1, p1

    .line 334
    .line 335
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 336
    .line 337
    move-object/from16 v2, p2

    .line 338
    .line 339
    check-cast v2, Ljava/lang/Integer;

    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    and-int/lit8 v7, v2, 0x3

    .line 346
    .line 347
    if-eq v7, v4, :cond_c

    .line 348
    .line 349
    move v3, v6

    .line 350
    :cond_c
    and-int/2addr v2, v6

    .line 351
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 352
    .line 353
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_d

    .line 358
    .line 359
    const/16 v25, 0x0

    .line 360
    .line 361
    const v26, 0x3fffe

    .line 362
    .line 363
    .line 364
    iget-object v6, v0, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 365
    .line 366
    const/4 v7, 0x0

    .line 367
    const-wide/16 v8, 0x0

    .line 368
    .line 369
    const-wide/16 v10, 0x0

    .line 370
    .line 371
    const-wide/16 v12, 0x0

    .line 372
    .line 373
    const/4 v14, 0x0

    .line 374
    const-wide/16 v15, 0x0

    .line 375
    .line 376
    const/16 v17, 0x0

    .line 377
    .line 378
    const/16 v18, 0x0

    .line 379
    .line 380
    const/16 v19, 0x0

    .line 381
    .line 382
    const/16 v20, 0x0

    .line 383
    .line 384
    const/16 v21, 0x0

    .line 385
    .line 386
    const/16 v22, 0x0

    .line 387
    .line 388
    const/16 v24, 0x0

    .line 389
    .line 390
    move-object/from16 v23, v1

    .line 391
    .line 392
    invoke-static/range {v6 .. v26}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 393
    .line 394
    .line 395
    goto :goto_8

    .line 396
    :cond_d
    move-object/from16 v23, v1

    .line 397
    .line 398
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 399
    .line 400
    .line 401
    :goto_8
    return-object v5

    .line 402
    :pswitch_8
    move-object/from16 v1, p1

    .line 403
    .line 404
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 405
    .line 406
    move-object/from16 v2, p2

    .line 407
    .line 408
    check-cast v2, Ljava/lang/Integer;

    .line 409
    .line 410
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    and-int/lit8 v7, v2, 0x3

    .line 415
    .line 416
    if-eq v7, v4, :cond_e

    .line 417
    .line 418
    move v3, v6

    .line 419
    :cond_e
    and-int/2addr v2, v6

    .line 420
    move-object v12, v1

    .line 421
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 422
    .line 423
    invoke-virtual {v12, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    if-eqz v1, :cond_f

    .line 428
    .line 429
    const/4 v13, 0x0

    .line 430
    const/16 v14, 0x3e

    .line 431
    .line 432
    iget-object v6, v0, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 433
    .line 434
    const/4 v7, 0x0

    .line 435
    const-wide/16 v8, 0x0

    .line 436
    .line 437
    const/4 v10, 0x0

    .line 438
    const/4 v11, 0x0

    .line 439
    invoke-static/range {v6 .. v14}, Lorg/jsoup/helper/Validate;->TextLabelLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 440
    .line 441
    .line 442
    goto :goto_9

    .line 443
    :cond_f
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 444
    .line 445
    .line 446
    :goto_9
    return-object v5

    .line 447
    :pswitch_9
    move-object/from16 v1, p1

    .line 448
    .line 449
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 450
    .line 451
    move-object/from16 v2, p2

    .line 452
    .line 453
    check-cast v2, Ljava/lang/Integer;

    .line 454
    .line 455
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    and-int/lit8 v7, v2, 0x3

    .line 460
    .line 461
    if-eq v7, v4, :cond_10

    .line 462
    .line 463
    move v3, v6

    .line 464
    :cond_10
    and-int/2addr v2, v6

    .line 465
    move-object v9, v1

    .line 466
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 467
    .line 468
    invoke-virtual {v9, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    if-eqz v1, :cond_11

    .line 473
    .line 474
    const/4 v10, 0x0

    .line 475
    const/4 v11, 0x5

    .line 476
    const/4 v6, 0x0

    .line 477
    iget-object v7, v0, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 478
    .line 479
    const/4 v8, 0x0

    .line 480
    invoke-static/range {v6 .. v11}, Landroidx/room/util/SchemaInfoUtilKt;->LoadingView(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/Composer;II)V

    .line 481
    .line 482
    .line 483
    goto :goto_a

    .line 484
    :cond_11
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 485
    .line 486
    .line 487
    :goto_a
    return-object v5

    .line 488
    nop

    .line 489
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

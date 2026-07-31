.class public final synthetic Landroidx/compose/material3/BadgeKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material3/BadgeKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Landroidx/compose/material3/BadgeKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/16 v1, 0x12

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x4

    .line 9
    const/16 v4, 0x10

    .line 10
    .line 11
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v0, p1

    .line 19
    .line 20
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 21
    .line 22
    move-object/from16 v1, p2

    .line 23
    .line 24
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 25
    .line 26
    move-object/from16 v2, p3

    .line 27
    .line 28
    check-cast v2, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    and-int/lit8 v0, v2, 0x11

    .line 38
    .line 39
    if-eq v0, v4, :cond_0

    .line 40
    .line 41
    move v7, v6

    .line 42
    :cond_0
    and-int/lit8 v0, v2, 0x1

    .line 43
    .line 44
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 45
    .line 46
    invoke-virtual {v1, v0, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    sget-object v0, Lnewpipe/shared/generated/resources/String0_commonMainKt;->read_full_license$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 53
    .line 54
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lorg/jetbrains/compose/resources/StringResource;

    .line 59
    .line 60
    invoke-static {v0, v1}, Lorg/jetbrains/compose/resources/StringResourcesKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const/16 v25, 0x0

    .line 65
    .line 66
    const v26, 0x3fffe

    .line 67
    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    const-wide/16 v10, 0x0

    .line 71
    .line 72
    const-wide/16 v12, 0x0

    .line 73
    .line 74
    const-wide/16 v14, 0x0

    .line 75
    .line 76
    const/16 v16, 0x0

    .line 77
    .line 78
    const-wide/16 v17, 0x0

    .line 79
    .line 80
    const/16 v19, 0x0

    .line 81
    .line 82
    const/16 v20, 0x0

    .line 83
    .line 84
    const/16 v21, 0x0

    .line 85
    .line 86
    const/16 v22, 0x0

    .line 87
    .line 88
    const/16 v23, 0x0

    .line 89
    .line 90
    move-object/from16 v24, v1

    .line 91
    .line 92
    invoke-static/range {v8 .. v26}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    move-object/from16 v24, v1

    .line 97
    .line 98
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-object v5

    .line 102
    :pswitch_0
    move-object/from16 v0, p1

    .line 103
    .line 104
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 105
    .line 106
    move-object/from16 v1, p2

    .line 107
    .line 108
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 109
    .line 110
    move-object/from16 v2, p3

    .line 111
    .line 112
    check-cast v2, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    and-int/lit8 v0, v2, 0x11

    .line 122
    .line 123
    if-eq v0, v4, :cond_2

    .line 124
    .line 125
    move v7, v6

    .line 126
    :cond_2
    and-int/lit8 v0, v2, 0x1

    .line 127
    .line 128
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 129
    .line 130
    invoke-virtual {v1, v0, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_3

    .line 135
    .line 136
    sget-object v0, Lnewpipe/shared/generated/resources/String0_commonMainKt;->website_title$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 137
    .line 138
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Lorg/jetbrains/compose/resources/StringResource;

    .line 143
    .line 144
    invoke-static {v0, v1}, Lorg/jetbrains/compose/resources/StringResourcesKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    const/16 v25, 0x0

    .line 149
    .line 150
    const v26, 0x3fffe

    .line 151
    .line 152
    .line 153
    const/4 v9, 0x0

    .line 154
    const-wide/16 v10, 0x0

    .line 155
    .line 156
    const-wide/16 v12, 0x0

    .line 157
    .line 158
    const-wide/16 v14, 0x0

    .line 159
    .line 160
    const/16 v16, 0x0

    .line 161
    .line 162
    const-wide/16 v17, 0x0

    .line 163
    .line 164
    const/16 v19, 0x0

    .line 165
    .line 166
    const/16 v20, 0x0

    .line 167
    .line 168
    const/16 v21, 0x0

    .line 169
    .line 170
    const/16 v22, 0x0

    .line 171
    .line 172
    const/16 v23, 0x0

    .line 173
    .line 174
    move-object/from16 v24, v1

    .line 175
    .line 176
    invoke-static/range {v8 .. v26}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_3
    move-object/from16 v24, v1

    .line 181
    .line 182
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 183
    .line 184
    .line 185
    :goto_1
    return-object v5

    .line 186
    :pswitch_1
    move-object/from16 v0, p1

    .line 187
    .line 188
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 189
    .line 190
    move-object/from16 v1, p2

    .line 191
    .line 192
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 193
    .line 194
    move-object/from16 v2, p3

    .line 195
    .line 196
    check-cast v2, Ljava/lang/Integer;

    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    and-int/lit8 v0, v2, 0x11

    .line 206
    .line 207
    if-eq v0, v4, :cond_4

    .line 208
    .line 209
    move v7, v6

    .line 210
    :cond_4
    and-int/lit8 v0, v2, 0x1

    .line 211
    .line 212
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 213
    .line 214
    invoke-virtual {v1, v0, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_5

    .line 219
    .line 220
    sget-object v0, Lnewpipe/shared/generated/resources/String0_commonMainKt;->done$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 221
    .line 222
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Lorg/jetbrains/compose/resources/StringResource;

    .line 227
    .line 228
    invoke-static {v0, v1}, Lorg/jetbrains/compose/resources/StringResourcesKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    const/16 v25, 0x0

    .line 233
    .line 234
    const v26, 0x3fffe

    .line 235
    .line 236
    .line 237
    const/4 v9, 0x0

    .line 238
    const-wide/16 v10, 0x0

    .line 239
    .line 240
    const-wide/16 v12, 0x0

    .line 241
    .line 242
    const-wide/16 v14, 0x0

    .line 243
    .line 244
    const/16 v16, 0x0

    .line 245
    .line 246
    const-wide/16 v17, 0x0

    .line 247
    .line 248
    const/16 v19, 0x0

    .line 249
    .line 250
    const/16 v20, 0x0

    .line 251
    .line 252
    const/16 v21, 0x0

    .line 253
    .line 254
    const/16 v22, 0x0

    .line 255
    .line 256
    const/16 v23, 0x0

    .line 257
    .line 258
    move-object/from16 v24, v1

    .line 259
    .line 260
    invoke-static/range {v8 .. v26}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_5
    move-object/from16 v24, v1

    .line 265
    .line 266
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 267
    .line 268
    .line 269
    :goto_2
    return-object v5

    .line 270
    :pswitch_2
    move-object/from16 v0, p1

    .line 271
    .line 272
    check-cast v0, Lnet/newpipe/app/screen/about/navigation/Page;

    .line 273
    .line 274
    move-object/from16 v4, p2

    .line 275
    .line 276
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 277
    .line 278
    move-object/from16 v8, p3

    .line 279
    .line 280
    check-cast v8, Ljava/lang/Integer;

    .line 281
    .line 282
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 283
    .line 284
    .line 285
    move-result v8

    .line 286
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    and-int/lit8 v9, v8, 0x6

    .line 290
    .line 291
    if-nez v9, :cond_7

    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 294
    .line 295
    .line 296
    move-result v9

    .line 297
    move-object v10, v4

    .line 298
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 299
    .line 300
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 301
    .line 302
    .line 303
    move-result v9

    .line 304
    if-eqz v9, :cond_6

    .line 305
    .line 306
    move v2, v3

    .line 307
    :cond_6
    or-int/2addr v8, v2

    .line 308
    :cond_7
    and-int/lit8 v2, v8, 0x13

    .line 309
    .line 310
    if-eq v2, v1, :cond_8

    .line 311
    .line 312
    move v1, v6

    .line 313
    goto :goto_3

    .line 314
    :cond_8
    move v1, v7

    .line 315
    :goto_3
    and-int/lit8 v2, v8, 0x1

    .line 316
    .line 317
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 318
    .line 319
    invoke-virtual {v4, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-eqz v1, :cond_b

    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    const/4 v1, 0x0

    .line 330
    if-eqz v0, :cond_a

    .line 331
    .line 332
    if-ne v0, v6, :cond_9

    .line 333
    .line 334
    const v0, -0x6ddb3177

    .line 335
    .line 336
    .line 337
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 338
    .line 339
    .line 340
    invoke-static {v1, v1, v4, v7}, Lnet/newpipe/app/screen/about/AboutPageKt;->LicensePage(Lnet/newpipe/app/viewmodel/about/AboutViewModel;Lnet/newpipe/app/platform/ShareHandler;Landroidx/compose/runtime/Composer;I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 344
    .line 345
    .line 346
    goto :goto_4

    .line 347
    :cond_9
    const v0, -0x6ddb3b1d

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 354
    .line 355
    .line 356
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 357
    .line 358
    .line 359
    move-object v5, v1

    .line 360
    goto :goto_4

    .line 361
    :cond_a
    const v0, -0x6ddb3679

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 365
    .line 366
    .line 367
    invoke-static {v1, v4, v7}, Lnet/newpipe/app/screen/about/AboutPageKt;->AboutPage(Lnet/newpipe/app/platform/ShareHandler;Landroidx/compose/runtime/Composer;I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 371
    .line 372
    .line 373
    goto :goto_4

    .line 374
    :cond_b
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 375
    .line 376
    .line 377
    :goto_4
    return-object v5

    .line 378
    :pswitch_3
    move-object/from16 v0, p1

    .line 379
    .line 380
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 381
    .line 382
    move-object/from16 v1, p2

    .line 383
    .line 384
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 385
    .line 386
    move-object/from16 v2, p3

    .line 387
    .line 388
    check-cast v2, Ljava/lang/Integer;

    .line 389
    .line 390
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    and-int/lit8 v0, v2, 0x11

    .line 398
    .line 399
    if-eq v0, v4, :cond_c

    .line 400
    .line 401
    move v7, v6

    .line 402
    :cond_c
    and-int/lit8 v0, v2, 0x1

    .line 403
    .line 404
    move-object v13, v1

    .line 405
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 406
    .line 407
    invoke-virtual {v13, v0, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-eqz v0, :cond_e

    .line 412
    .line 413
    const/high16 v0, 0x41800000    # 16.0f

    .line 414
    .line 415
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 416
    .line 417
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SpacerKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 422
    .line 423
    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 428
    .line 429
    sget-object v4, Landroidx/compose/foundation/layout/SpacerKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 430
    .line 431
    const/16 v7, 0x30

    .line 432
    .line 433
    invoke-static {v4, v3, v13, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    iget-wide v7, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 438
    .line 439
    const/16 v4, 0x20

    .line 440
    .line 441
    ushr-long v9, v7, v4

    .line 442
    .line 443
    xor-long/2addr v7, v9

    .line 444
    long-to-int v4, v7

    .line 445
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 446
    .line 447
    .line 448
    move-result-object v7

    .line 449
    invoke-static {v13, v0}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 454
    .line 455
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 459
    .line 460
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 461
    .line 462
    .line 463
    iget-boolean v9, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 464
    .line 465
    if-eqz v9, :cond_d

    .line 466
    .line 467
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 468
    .line 469
    .line 470
    goto :goto_5

    .line 471
    :cond_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 472
    .line 473
    .line 474
    :goto_5
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 475
    .line 476
    invoke-static {v13, v3, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 477
    .line 478
    .line 479
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 480
    .line 481
    invoke-static {v13, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 482
    .line 483
    .line 484
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 489
    .line 490
    invoke-static {v13, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 491
    .line 492
    .line 493
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 494
    .line 495
    invoke-static {v13, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 496
    .line 497
    .line 498
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 499
    .line 500
    invoke-static {v13, v0, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 501
    .line 502
    .line 503
    invoke-static {}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs()Landroidx/compose/ui/Modifier;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    sget-object v3, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 508
    .line 509
    invoke-static {v0, v3}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    sget-wide v3, Lnet/newpipe/app/theme/ColorKt;->logoBackground:J

    .line 514
    .line 515
    sget-object v7, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 516
    .line 517
    invoke-static {v0, v3, v4, v7}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 518
    .line 519
    .line 520
    move-result-object v9

    .line 521
    sget-object v0, Lnewpipe/shared/generated/resources/Drawable0_commonMainKt;->ic_foreground$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 522
    .line 523
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    check-cast v0, Lorg/jetbrains/compose/resources/DrawableResource;

    .line 528
    .line 529
    invoke-static {v0, v13}, Lorg/jetbrains/compose/resources/ImageResourcesKt;->painterResource(Lorg/jetbrains/compose/resources/DrawableResource;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 530
    .line 531
    .line 532
    move-result-object v8

    .line 533
    const/4 v12, 0x0

    .line 534
    const/16 v14, 0x38

    .line 535
    .line 536
    const/4 v10, 0x0

    .line 537
    const/4 v11, 0x0

    .line 538
    invoke-static/range {v8 .. v14}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;FLandroidx/compose/runtime/Composer;I)V

    .line 539
    .line 540
    .line 541
    const/high16 v0, 0x40800000    # 4.0f

    .line 542
    .line 543
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-static {v13, v0}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 548
    .line 549
    .line 550
    sget-object v0, Landroidx/compose/material3/MaterialThemeKt;->_localMaterialTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 551
    .line 552
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    check-cast v1, Landroidx/compose/material3/MaterialTheme$Values;

    .line 557
    .line 558
    iget-object v1, v1, Landroidx/compose/material3/MaterialTheme$Values;->typography:Landroidx/compose/material3/Typography;

    .line 559
    .line 560
    iget-object v1, v1, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 561
    .line 562
    new-instance v3, Landroidx/compose/ui/text/style/TextAlign;

    .line 563
    .line 564
    const/4 v4, 0x3

    .line 565
    invoke-direct {v3, v4}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 566
    .line 567
    .line 568
    const/16 v25, 0x6

    .line 569
    .line 570
    const v26, 0x1fbfe

    .line 571
    .line 572
    .line 573
    const-string v8, "NewPipe"

    .line 574
    .line 575
    const/4 v9, 0x0

    .line 576
    const-wide/16 v10, 0x0

    .line 577
    .line 578
    move-object/from16 v24, v13

    .line 579
    .line 580
    const-wide/16 v12, 0x0

    .line 581
    .line 582
    const-wide/16 v14, 0x0

    .line 583
    .line 584
    const-wide/16 v17, 0x0

    .line 585
    .line 586
    const/16 v19, 0x0

    .line 587
    .line 588
    const/16 v20, 0x0

    .line 589
    .line 590
    const/16 v21, 0x0

    .line 591
    .line 592
    const/16 v22, 0x0

    .line 593
    .line 594
    move-object/from16 v23, v1

    .line 595
    .line 596
    move-object/from16 v16, v3

    .line 597
    .line 598
    invoke-static/range {v8 .. v26}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 599
    .line 600
    .line 601
    move-object/from16 v13, v24

    .line 602
    .line 603
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    check-cast v0, Landroidx/compose/material3/MaterialTheme$Values;

    .line 608
    .line 609
    iget-object v0, v0, Landroidx/compose/material3/MaterialTheme$Values;->typography:Landroidx/compose/material3/Typography;

    .line 610
    .line 611
    iget-object v0, v0, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 612
    .line 613
    new-instance v1, Landroidx/compose/ui/text/style/TextAlign;

    .line 614
    .line 615
    invoke-direct {v1, v4}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 616
    .line 617
    .line 618
    const-string v8, "0.29.0"

    .line 619
    .line 620
    const-wide/16 v12, 0x0

    .line 621
    .line 622
    move-object/from16 v23, v0

    .line 623
    .line 624
    move-object/from16 v16, v1

    .line 625
    .line 626
    invoke-static/range {v8 .. v26}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 627
    .line 628
    .line 629
    move-object/from16 v13, v24

    .line 630
    .line 631
    sget-object v0, Lnewpipe/shared/generated/resources/String0_commonMainKt;->app_description$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 632
    .line 633
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    check-cast v0, Lorg/jetbrains/compose/resources/StringResource;

    .line 638
    .line 639
    invoke-static {v0, v13}, Lorg/jetbrains/compose/resources/StringResourcesKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v8

    .line 643
    new-instance v0, Landroidx/compose/ui/text/style/TextAlign;

    .line 644
    .line 645
    invoke-direct {v0, v4}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 646
    .line 647
    .line 648
    const/16 v25, 0x30

    .line 649
    .line 650
    const v26, 0x3fbfc

    .line 651
    .line 652
    .line 653
    const-wide/16 v12, 0x0

    .line 654
    .line 655
    const/16 v23, 0x0

    .line 656
    .line 657
    move-object/from16 v16, v0

    .line 658
    .line 659
    move-object v9, v2

    .line 660
    invoke-static/range {v8 .. v26}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 661
    .line 662
    .line 663
    move-object/from16 v13, v24

    .line 664
    .line 665
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 666
    .line 667
    .line 668
    goto :goto_6

    .line 669
    :cond_e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 670
    .line 671
    .line 672
    :goto_6
    return-object v5

    .line 673
    :pswitch_4
    move-object/from16 v0, p1

    .line 674
    .line 675
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 676
    .line 677
    move-object/from16 v1, p2

    .line 678
    .line 679
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 680
    .line 681
    move-object/from16 v2, p3

    .line 682
    .line 683
    check-cast v2, Ljava/lang/Integer;

    .line 684
    .line 685
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 686
    .line 687
    .line 688
    move-result v2

    .line 689
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 690
    .line 691
    .line 692
    and-int/lit8 v0, v2, 0x11

    .line 693
    .line 694
    if-eq v0, v4, :cond_f

    .line 695
    .line 696
    move v7, v6

    .line 697
    :cond_f
    and-int/lit8 v0, v2, 0x1

    .line 698
    .line 699
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 700
    .line 701
    invoke-virtual {v1, v0, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    if-eqz v0, :cond_10

    .line 706
    .line 707
    goto :goto_7

    .line 708
    :cond_10
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 709
    .line 710
    .line 711
    :goto_7
    return-object v5

    .line 712
    :pswitch_5
    move-object/from16 v0, p1

    .line 713
    .line 714
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 715
    .line 716
    move-object/from16 v4, p2

    .line 717
    .line 718
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 719
    .line 720
    move-object/from16 v8, p3

    .line 721
    .line 722
    check-cast v8, Ljava/lang/Integer;

    .line 723
    .line 724
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 725
    .line 726
    .line 727
    move-result v8

    .line 728
    and-int/lit8 v9, v8, 0x6

    .line 729
    .line 730
    if-nez v9, :cond_12

    .line 731
    .line 732
    move-object v9, v4

    .line 733
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 734
    .line 735
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    move-result v9

    .line 739
    if-eqz v9, :cond_11

    .line 740
    .line 741
    move v2, v3

    .line 742
    :cond_11
    or-int/2addr v8, v2

    .line 743
    :cond_12
    and-int/lit8 v2, v8, 0x13

    .line 744
    .line 745
    if-eq v2, v1, :cond_13

    .line 746
    .line 747
    goto :goto_8

    .line 748
    :cond_13
    move v6, v7

    .line 749
    :goto_8
    and-int/lit8 v1, v8, 0x1

    .line 750
    .line 751
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 752
    .line 753
    invoke-virtual {v4, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 754
    .line 755
    .line 756
    move-result v1

    .line 757
    if-eqz v1, :cond_14

    .line 758
    .line 759
    and-int/lit8 v1, v8, 0xe

    .line 760
    .line 761
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    invoke-interface {v0, v4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    goto :goto_9

    .line 769
    :cond_14
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 770
    .line 771
    .line 772
    :goto_9
    return-object v5

    .line 773
    :pswitch_6
    move-object/from16 v6, p1

    .line 774
    .line 775
    check-cast v6, Landroidx/compose/ui/layout/MeasureScope;

    .line 776
    .line 777
    move-object/from16 v0, p2

    .line 778
    .line 779
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 780
    .line 781
    move-object/from16 v1, p3

    .line 782
    .line 783
    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    .line 784
    .line 785
    iget-wide v1, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 786
    .line 787
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    iget v1, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 792
    .line 793
    iget v8, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 794
    .line 795
    new-instance v10, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;

    .line 796
    .line 797
    const/4 v2, 0x5

    .line 798
    invoke-direct {v10, v2}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 799
    .line 800
    .line 801
    new-instance v11, Landroidx/compose/material3/BadgeKt$$ExternalSyntheticLambda2;

    .line 802
    .line 803
    invoke-direct {v11, v0, v7}, Landroidx/compose/material3/BadgeKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 804
    .line 805
    .line 806
    sget-object v9, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 807
    .line 808
    move v7, v1

    .line 809
    invoke-interface/range {v6 .. v11}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    return-object v0

    .line 814
    nop

    .line 815
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

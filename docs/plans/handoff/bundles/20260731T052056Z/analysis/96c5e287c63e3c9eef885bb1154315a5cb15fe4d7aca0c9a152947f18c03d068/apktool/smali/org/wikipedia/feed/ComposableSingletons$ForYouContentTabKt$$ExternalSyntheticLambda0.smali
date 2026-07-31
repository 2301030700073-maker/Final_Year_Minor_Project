.class public final synthetic Lorg/wikipedia/feed/ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/feed/ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lorg/wikipedia/feed/ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/16 v1, 0x82

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x4

    .line 9
    const/16 v4, 0x80

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v0, p1

    .line 19
    .line 20
    check-cast v0, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    .line 21
    .line 22
    move-object/from16 v1, p2

    .line 23
    .line 24
    check-cast v1, Lcoil3/compose/AsyncImagePainter$State$Loading;

    .line 25
    .line 26
    move-object/from16 v2, p3

    .line 27
    .line 28
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    move-object/from16 v3, p4

    .line 31
    .line 32
    check-cast v3, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    and-int/lit16 v0, v3, 0x81

    .line 45
    .line 46
    if-eq v0, v4, :cond_0

    .line 47
    .line 48
    move v0, v5

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v0, v6

    .line 51
    :goto_0
    and-int/lit8 v1, v3, 0x1

    .line 52
    .line 53
    invoke-virtual {v2, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-static {v6, v2}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->LoadingIndicator(ILandroidx/compose/runtime/GapComposer;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 64
    .line 65
    .line 66
    :goto_1
    return-object v7

    .line 67
    :pswitch_0
    move-object/from16 v8, p1

    .line 68
    .line 69
    check-cast v8, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    .line 70
    .line 71
    move-object/from16 v0, p2

    .line 72
    .line 73
    check-cast v0, Lcoil3/compose/AsyncImagePainter$State$Success;

    .line 74
    .line 75
    move-object/from16 v4, p3

    .line 76
    .line 77
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 78
    .line 79
    move-object/from16 v9, p4

    .line 80
    .line 81
    check-cast v9, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    and-int/lit8 v0, v9, 0x6

    .line 94
    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    move v2, v3

    .line 104
    :cond_2
    or-int/2addr v9, v2

    .line 105
    :cond_3
    and-int/lit16 v0, v9, 0x83

    .line 106
    .line 107
    if-eq v0, v1, :cond_4

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    move v5, v6

    .line 111
    :goto_2
    and-int/lit8 v0, v9, 0x1

    .line 112
    .line 113
    invoke-virtual {v4, v0, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    const/4 v15, 0x0

    .line 120
    and-int/lit8 v17, v9, 0xe

    .line 121
    .line 122
    const/4 v9, 0x0

    .line 123
    const/4 v10, 0x0

    .line 124
    const/4 v11, 0x0

    .line 125
    const/4 v12, 0x0

    .line 126
    const/4 v13, 0x0

    .line 127
    const/4 v14, 0x0

    .line 128
    move-object/from16 v16, v4

    .line 129
    .line 130
    invoke-static/range {v8 .. v17}, Lcoil3/compose/AsyncImageKt;->SubcomposeAsyncImageContent(Lcoil3/compose/RealSubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FZLandroidx/compose/runtime/GapComposer;I)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    move-object/from16 v16, v4

    .line 135
    .line 136
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 137
    .line 138
    .line 139
    :goto_3
    return-object v7

    .line 140
    :pswitch_1
    move-object/from16 v0, p1

    .line 141
    .line 142
    check-cast v0, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    .line 143
    .line 144
    move-object/from16 v1, p2

    .line 145
    .line 146
    check-cast v1, Lcoil3/compose/AsyncImagePainter$State$Loading;

    .line 147
    .line 148
    move-object/from16 v2, p3

    .line 149
    .line 150
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 151
    .line 152
    move-object/from16 v3, p4

    .line 153
    .line 154
    check-cast v3, Ljava/lang/Integer;

    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    and-int/lit16 v0, v3, 0x81

    .line 167
    .line 168
    if-eq v0, v4, :cond_6

    .line 169
    .line 170
    move v0, v5

    .line 171
    goto :goto_4

    .line 172
    :cond_6
    move v0, v6

    .line 173
    :goto_4
    and-int/lit8 v1, v3, 0x1

    .line 174
    .line 175
    invoke-virtual {v2, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_7

    .line 180
    .line 181
    invoke-static {v6, v2}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->LoadingIndicator(ILandroidx/compose/runtime/GapComposer;)V

    .line 182
    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_7
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 186
    .line 187
    .line 188
    :goto_5
    return-object v7

    .line 189
    :pswitch_2
    move-object/from16 v8, p1

    .line 190
    .line 191
    check-cast v8, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    .line 192
    .line 193
    move-object/from16 v0, p2

    .line 194
    .line 195
    check-cast v0, Lcoil3/compose/AsyncImagePainter$State$Success;

    .line 196
    .line 197
    move-object/from16 v4, p3

    .line 198
    .line 199
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 200
    .line 201
    move-object/from16 v9, p4

    .line 202
    .line 203
    check-cast v9, Ljava/lang/Integer;

    .line 204
    .line 205
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    and-int/lit8 v0, v9, 0x6

    .line 216
    .line 217
    if-nez v0, :cond_9

    .line 218
    .line 219
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_8

    .line 224
    .line 225
    move v2, v3

    .line 226
    :cond_8
    or-int/2addr v9, v2

    .line 227
    :cond_9
    and-int/lit16 v0, v9, 0x83

    .line 228
    .line 229
    if-eq v0, v1, :cond_a

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_a
    move v5, v6

    .line 233
    :goto_6
    and-int/lit8 v0, v9, 0x1

    .line 234
    .line 235
    invoke-virtual {v4, v0, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_b

    .line 240
    .line 241
    const/4 v15, 0x0

    .line 242
    and-int/lit8 v17, v9, 0xe

    .line 243
    .line 244
    const/4 v9, 0x0

    .line 245
    const/4 v10, 0x0

    .line 246
    const/4 v11, 0x0

    .line 247
    const/4 v12, 0x0

    .line 248
    const/4 v13, 0x0

    .line 249
    const/4 v14, 0x0

    .line 250
    move-object/from16 v16, v4

    .line 251
    .line 252
    invoke-static/range {v8 .. v17}, Lcoil3/compose/AsyncImageKt;->SubcomposeAsyncImageContent(Lcoil3/compose/RealSubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FZLandroidx/compose/runtime/GapComposer;I)V

    .line 253
    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_b
    move-object/from16 v16, v4

    .line 257
    .line 258
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 259
    .line 260
    .line 261
    :goto_7
    return-object v7

    .line 262
    :pswitch_3
    move-object/from16 v0, p1

    .line 263
    .line 264
    check-cast v0, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    .line 265
    .line 266
    move-object/from16 v1, p2

    .line 267
    .line 268
    check-cast v1, Lcoil3/compose/AsyncImagePainter$State$Loading;

    .line 269
    .line 270
    move-object/from16 v2, p3

    .line 271
    .line 272
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 273
    .line 274
    move-object/from16 v3, p4

    .line 275
    .line 276
    check-cast v3, Ljava/lang/Integer;

    .line 277
    .line 278
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    and-int/lit16 v0, v3, 0x81

    .line 289
    .line 290
    if-eq v0, v4, :cond_c

    .line 291
    .line 292
    move v0, v5

    .line 293
    goto :goto_8

    .line 294
    :cond_c
    move v0, v6

    .line 295
    :goto_8
    and-int/lit8 v1, v3, 0x1

    .line 296
    .line 297
    invoke-virtual {v2, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_d

    .line 302
    .line 303
    invoke-static {v6, v2}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->LoadingIndicator(ILandroidx/compose/runtime/GapComposer;)V

    .line 304
    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_d
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 308
    .line 309
    .line 310
    :goto_9
    return-object v7

    .line 311
    :pswitch_4
    move-object/from16 v8, p1

    .line 312
    .line 313
    check-cast v8, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    .line 314
    .line 315
    move-object/from16 v0, p2

    .line 316
    .line 317
    check-cast v0, Lcoil3/compose/AsyncImagePainter$State$Success;

    .line 318
    .line 319
    move-object/from16 v4, p3

    .line 320
    .line 321
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 322
    .line 323
    move-object/from16 v9, p4

    .line 324
    .line 325
    check-cast v9, Ljava/lang/Integer;

    .line 326
    .line 327
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 328
    .line 329
    .line 330
    move-result v9

    .line 331
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    and-int/lit8 v0, v9, 0x6

    .line 338
    .line 339
    if-nez v0, :cond_f

    .line 340
    .line 341
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-eqz v0, :cond_e

    .line 346
    .line 347
    move v2, v3

    .line 348
    :cond_e
    or-int/2addr v9, v2

    .line 349
    :cond_f
    and-int/lit16 v0, v9, 0x83

    .line 350
    .line 351
    if-eq v0, v1, :cond_10

    .line 352
    .line 353
    goto :goto_a

    .line 354
    :cond_10
    move v5, v6

    .line 355
    :goto_a
    and-int/lit8 v0, v9, 0x1

    .line 356
    .line 357
    invoke-virtual {v4, v0, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-eqz v0, :cond_11

    .line 362
    .line 363
    const/4 v15, 0x0

    .line 364
    and-int/lit8 v17, v9, 0xe

    .line 365
    .line 366
    const/4 v9, 0x0

    .line 367
    const/4 v10, 0x0

    .line 368
    const/4 v11, 0x0

    .line 369
    const/4 v12, 0x0

    .line 370
    const/4 v13, 0x0

    .line 371
    const/4 v14, 0x0

    .line 372
    move-object/from16 v16, v4

    .line 373
    .line 374
    invoke-static/range {v8 .. v17}, Lcoil3/compose/AsyncImageKt;->SubcomposeAsyncImageContent(Lcoil3/compose/RealSubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FZLandroidx/compose/runtime/GapComposer;I)V

    .line 375
    .line 376
    .line 377
    goto :goto_b

    .line 378
    :cond_11
    move-object/from16 v16, v4

    .line 379
    .line 380
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 381
    .line 382
    .line 383
    :goto_b
    return-object v7

    .line 384
    :pswitch_5
    move-object/from16 v0, p1

    .line 385
    .line 386
    check-cast v0, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    .line 387
    .line 388
    move-object/from16 v1, p2

    .line 389
    .line 390
    check-cast v1, Lcoil3/compose/AsyncImagePainter$State$Loading;

    .line 391
    .line 392
    move-object/from16 v2, p3

    .line 393
    .line 394
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 395
    .line 396
    move-object/from16 v3, p4

    .line 397
    .line 398
    check-cast v3, Ljava/lang/Integer;

    .line 399
    .line 400
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    and-int/lit16 v0, v3, 0x81

    .line 411
    .line 412
    if-eq v0, v4, :cond_12

    .line 413
    .line 414
    move v0, v5

    .line 415
    goto :goto_c

    .line 416
    :cond_12
    move v0, v6

    .line 417
    :goto_c
    and-int/lit8 v1, v3, 0x1

    .line 418
    .line 419
    invoke-virtual {v2, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-eqz v0, :cond_13

    .line 424
    .line 425
    invoke-static {v6, v2}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->LoadingIndicator(ILandroidx/compose/runtime/GapComposer;)V

    .line 426
    .line 427
    .line 428
    goto :goto_d

    .line 429
    :cond_13
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 430
    .line 431
    .line 432
    :goto_d
    return-object v7

    .line 433
    :pswitch_6
    move-object/from16 v0, p1

    .line 434
    .line 435
    check-cast v0, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 436
    .line 437
    move-object/from16 v1, p2

    .line 438
    .line 439
    check-cast v1, Ljava/lang/Boolean;

    .line 440
    .line 441
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    move-object/from16 v13, p3

    .line 446
    .line 447
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 448
    .line 449
    move-object/from16 v2, p4

    .line 450
    .line 451
    check-cast v2, Ljava/lang/Integer;

    .line 452
    .line 453
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 460
    .line 461
    const/high16 v2, 0x41800000    # 16.0f

    .line 462
    .line 463
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 464
    .line 465
    .line 466
    move-result-object v10

    .line 467
    const v0, 0x719821d

    .line 468
    .line 469
    .line 470
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 471
    .line 472
    .line 473
    if-eqz v1, :cond_14

    .line 474
    .line 475
    const v0, 0x7f080139

    .line 476
    .line 477
    .line 478
    goto :goto_e

    .line 479
    :cond_14
    const v0, 0x7f08010e

    .line 480
    .line 481
    .line 482
    :goto_e
    invoke-static {v0, v6, v13}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 487
    .line 488
    .line 489
    const/16 v14, 0x1b8

    .line 490
    .line 491
    const/16 v15, 0x8

    .line 492
    .line 493
    const/4 v9, 0x0

    .line 494
    const-wide/16 v11, 0x0

    .line 495
    .line 496
    invoke-static/range {v8 .. v15}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 497
    .line 498
    .line 499
    return-object v7

    .line 500
    :pswitch_7
    move-object/from16 v0, p1

    .line 501
    .line 502
    check-cast v0, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    .line 503
    .line 504
    move-object/from16 v4, p2

    .line 505
    .line 506
    check-cast v4, Lcoil3/compose/AsyncImagePainter$State$Success;

    .line 507
    .line 508
    move-object/from16 v8, p3

    .line 509
    .line 510
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 511
    .line 512
    move-object/from16 v9, p4

    .line 513
    .line 514
    check-cast v9, Ljava/lang/Integer;

    .line 515
    .line 516
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 517
    .line 518
    .line 519
    move-result v9

    .line 520
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 524
    .line 525
    .line 526
    and-int/lit8 v4, v9, 0x6

    .line 527
    .line 528
    if-nez v4, :cond_16

    .line 529
    .line 530
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    if-eqz v4, :cond_15

    .line 535
    .line 536
    move v2, v3

    .line 537
    :cond_15
    or-int/2addr v9, v2

    .line 538
    :cond_16
    and-int/lit16 v2, v9, 0x83

    .line 539
    .line 540
    if-eq v2, v1, :cond_17

    .line 541
    .line 542
    goto :goto_f

    .line 543
    :cond_17
    move v5, v6

    .line 544
    :goto_f
    and-int/lit8 v1, v9, 0x1

    .line 545
    .line 546
    invoke-virtual {v8, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 547
    .line 548
    .line 549
    move-result v1

    .line 550
    if-eqz v1, :cond_18

    .line 551
    .line 552
    const/16 v23, 0x0

    .line 553
    .line 554
    and-int/lit8 v25, v9, 0xe

    .line 555
    .line 556
    const/16 v17, 0x0

    .line 557
    .line 558
    const/16 v18, 0x0

    .line 559
    .line 560
    const/16 v19, 0x0

    .line 561
    .line 562
    const/16 v20, 0x0

    .line 563
    .line 564
    const/16 v21, 0x0

    .line 565
    .line 566
    const/16 v22, 0x0

    .line 567
    .line 568
    move-object/from16 v16, v0

    .line 569
    .line 570
    move-object/from16 v24, v8

    .line 571
    .line 572
    invoke-static/range {v16 .. v25}, Lcoil3/compose/AsyncImageKt;->SubcomposeAsyncImageContent(Lcoil3/compose/RealSubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FZLandroidx/compose/runtime/GapComposer;I)V

    .line 573
    .line 574
    .line 575
    goto :goto_10

    .line 576
    :cond_18
    move-object/from16 v24, v8

    .line 577
    .line 578
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 579
    .line 580
    .line 581
    :goto_10
    return-object v7

    .line 582
    :pswitch_8
    move-object/from16 v0, p1

    .line 583
    .line 584
    check-cast v0, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    .line 585
    .line 586
    move-object/from16 v1, p2

    .line 587
    .line 588
    check-cast v1, Lcoil3/compose/AsyncImagePainter$State$Loading;

    .line 589
    .line 590
    move-object/from16 v2, p3

    .line 591
    .line 592
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 593
    .line 594
    move-object/from16 v3, p4

    .line 595
    .line 596
    check-cast v3, Ljava/lang/Integer;

    .line 597
    .line 598
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    and-int/lit16 v0, v3, 0x81

    .line 609
    .line 610
    if-eq v0, v4, :cond_19

    .line 611
    .line 612
    move v0, v5

    .line 613
    goto :goto_11

    .line 614
    :cond_19
    move v0, v6

    .line 615
    :goto_11
    and-int/lit8 v1, v3, 0x1

    .line 616
    .line 617
    invoke-virtual {v2, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 618
    .line 619
    .line 620
    move-result v0

    .line 621
    if-eqz v0, :cond_1a

    .line 622
    .line 623
    invoke-static {v6, v2}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->LoadingIndicator(ILandroidx/compose/runtime/GapComposer;)V

    .line 624
    .line 625
    .line 626
    goto :goto_12

    .line 627
    :cond_1a
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 628
    .line 629
    .line 630
    :goto_12
    return-object v7

    .line 631
    :pswitch_9
    move-object/from16 v0, p1

    .line 632
    .line 633
    check-cast v0, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 634
    .line 635
    move-object/from16 v8, p2

    .line 636
    .line 637
    check-cast v8, Ljava/lang/String;

    .line 638
    .line 639
    move-object/from16 v1, p3

    .line 640
    .line 641
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 642
    .line 643
    move-object/from16 v2, p4

    .line 644
    .line 645
    check-cast v2, Ljava/lang/Integer;

    .line 646
    .line 647
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 648
    .line 649
    .line 650
    move-result v2

    .line 651
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 655
    .line 656
    .line 657
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 658
    .line 659
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 664
    .line 665
    iget-object v0, v0, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 666
    .line 667
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 668
    .line 669
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 674
    .line 675
    iget-wide v10, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 676
    .line 677
    new-instance v3, Landroidx/compose/ui/text/style/TextAlign;

    .line 678
    .line 679
    const/4 v4, 0x3

    .line 680
    invoke-direct {v3, v4}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 681
    .line 682
    .line 683
    shr-int/2addr v2, v4

    .line 684
    and-int/lit8 v29, v2, 0xe

    .line 685
    .line 686
    const/16 v30, 0x0

    .line 687
    .line 688
    const v31, 0x1fbfa

    .line 689
    .line 690
    .line 691
    const/4 v9, 0x0

    .line 692
    const/4 v12, 0x0

    .line 693
    const-wide/16 v13, 0x0

    .line 694
    .line 695
    const/4 v15, 0x0

    .line 696
    const/16 v16, 0x0

    .line 697
    .line 698
    const-wide/16 v17, 0x0

    .line 699
    .line 700
    const-wide/16 v20, 0x0

    .line 701
    .line 702
    const/16 v22, 0x0

    .line 703
    .line 704
    const/16 v23, 0x0

    .line 705
    .line 706
    const/16 v24, 0x0

    .line 707
    .line 708
    const/16 v25, 0x0

    .line 709
    .line 710
    const/16 v26, 0x0

    .line 711
    .line 712
    move-object/from16 v27, v0

    .line 713
    .line 714
    move-object/from16 v28, v1

    .line 715
    .line 716
    move-object/from16 v19, v3

    .line 717
    .line 718
    invoke-static/range {v8 .. v31}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 719
    .line 720
    .line 721
    return-object v7

    .line 722
    :pswitch_a
    move-object/from16 v0, p1

    .line 723
    .line 724
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 725
    .line 726
    move-object/from16 v1, p2

    .line 727
    .line 728
    check-cast v1, Landroid/content/Context;

    .line 729
    .line 730
    move-object/from16 v2, p3

    .line 731
    .line 732
    check-cast v2, Landroidx/compose/foundation/text/selection/SelectedTextType;

    .line 733
    .line 734
    move-object/from16 v3, p4

    .line 735
    .line 736
    check-cast v3, Landroidx/compose/ui/text/intl/LocaleList;

    .line 737
    .line 738
    new-instance v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 739
    .line 740
    invoke-direct {v4, v0, v1, v2, v3}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;-><init>(Lkotlin/coroutines/CoroutineContext;Landroid/content/Context;Landroidx/compose/foundation/text/selection/SelectedTextType;Landroidx/compose/ui/text/intl/LocaleList;)V

    .line 741
    .line 742
    .line 743
    return-object v4

    .line 744
    :pswitch_b
    move-object/from16 v8, p1

    .line 745
    .line 746
    check-cast v8, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    .line 747
    .line 748
    move-object/from16 v0, p2

    .line 749
    .line 750
    check-cast v0, Lcoil3/compose/AsyncImagePainter$State$Success;

    .line 751
    .line 752
    move-object/from16 v4, p3

    .line 753
    .line 754
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 755
    .line 756
    move-object/from16 v9, p4

    .line 757
    .line 758
    check-cast v9, Ljava/lang/Integer;

    .line 759
    .line 760
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 761
    .line 762
    .line 763
    move-result v9

    .line 764
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 768
    .line 769
    .line 770
    and-int/lit8 v0, v9, 0x6

    .line 771
    .line 772
    if-nez v0, :cond_1c

    .line 773
    .line 774
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 775
    .line 776
    .line 777
    move-result v0

    .line 778
    if-eqz v0, :cond_1b

    .line 779
    .line 780
    move v2, v3

    .line 781
    :cond_1b
    or-int/2addr v9, v2

    .line 782
    :cond_1c
    and-int/lit16 v0, v9, 0x83

    .line 783
    .line 784
    if-eq v0, v1, :cond_1d

    .line 785
    .line 786
    goto :goto_13

    .line 787
    :cond_1d
    move v5, v6

    .line 788
    :goto_13
    and-int/lit8 v0, v9, 0x1

    .line 789
    .line 790
    invoke-virtual {v4, v0, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 791
    .line 792
    .line 793
    move-result v0

    .line 794
    if-eqz v0, :cond_1e

    .line 795
    .line 796
    const/4 v15, 0x0

    .line 797
    and-int/lit8 v17, v9, 0xe

    .line 798
    .line 799
    const/4 v9, 0x0

    .line 800
    const/4 v10, 0x0

    .line 801
    const/4 v11, 0x0

    .line 802
    const/4 v12, 0x0

    .line 803
    const/4 v13, 0x0

    .line 804
    const/4 v14, 0x0

    .line 805
    move-object/from16 v16, v4

    .line 806
    .line 807
    invoke-static/range {v8 .. v17}, Lcoil3/compose/AsyncImageKt;->SubcomposeAsyncImageContent(Lcoil3/compose/RealSubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FZLandroidx/compose/runtime/GapComposer;I)V

    .line 808
    .line 809
    .line 810
    goto :goto_14

    .line 811
    :cond_1e
    move-object/from16 v16, v4

    .line 812
    .line 813
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 814
    .line 815
    .line 816
    :goto_14
    return-object v7

    .line 817
    :pswitch_data_0
    .packed-switch 0x0
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

.class public final synthetic Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x3

    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object/from16 v0, p1

    .line 14
    .line 15
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 16
    .line 17
    move-object/from16 v0, p2

    .line 18
    .line 19
    check-cast v0, Landroidx/compose/ui/text/TextRange;

    .line 20
    .line 21
    iget-wide v1, v0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 22
    .line 23
    const/16 v6, 0x20

    .line 24
    .line 25
    shr-long/2addr v1, v6

    .line 26
    long-to-int v1, v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-wide v6, v0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 32
    .line 33
    const-wide v8, 0xffffffffL

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    and-long/2addr v6, v8

    .line 39
    long-to-int v0, v6

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-array v2, v3, [Ljava/lang/Integer;

    .line 45
    .line 46
    aput-object v1, v2, v5

    .line 47
    .line 48
    aput-object v0, v2, v4

    .line 49
    .line 50
    invoke-static {v2}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    :pswitch_0
    move-object/from16 v0, p1

    .line 56
    .line 57
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 58
    .line 59
    move-object/from16 v1, p2

    .line 60
    .line 61
    check-cast v1, Ljava/util/List;

    .line 62
    .line 63
    new-instance v2, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    :goto_0
    if-ge v5, v3, :cond_0

    .line 77
    .line 78
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 83
    .line 84
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeSaver:Landroidx/cardview/widget/CardView$1;

    .line 85
    .line 86
    invoke-static {v4, v6, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    return-object v2

    .line 97
    :pswitch_1
    move-object/from16 v0, p1

    .line 98
    .line 99
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 100
    .line 101
    move-object/from16 v0, p2

    .line 102
    .line 103
    check-cast v0, Landroidx/compose/ui/text/style/BaselineShift;

    .line 104
    .line 105
    iget v0, v0, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    .line 106
    .line 107
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    return-object v0

    .line 112
    :pswitch_2
    move-object/from16 v0, p1

    .line 113
    .line 114
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 115
    .line 116
    move-object/from16 v1, p2

    .line 117
    .line 118
    check-cast v1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 119
    .line 120
    iget-object v2, v1, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v1, v1, Landroidx/compose/ui/text/LinkAnnotation$Url;->styles:Landroidx/compose/ui/text/TextLinkStyles;

    .line 123
    .line 124
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->TextLinkStylesSaver:Landroidx/cardview/widget/CardView$1;

    .line 125
    .line 126
    invoke-static {v1, v6, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    new-array v1, v3, [Ljava/lang/Object;

    .line 131
    .line 132
    aput-object v2, v1, v5

    .line 133
    .line 134
    aput-object v0, v1, v4

    .line 135
    .line 136
    invoke-static {v1}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0

    .line 141
    :pswitch_3
    move-object/from16 v0, p1

    .line 142
    .line 143
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 144
    .line 145
    move-object/from16 v0, p2

    .line 146
    .line 147
    check-cast v0, Landroidx/compose/ui/text/font/FontWeight;

    .line 148
    .line 149
    iget v0, v0, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    .line 150
    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    return-object v0

    .line 156
    :pswitch_4
    move-object/from16 v0, p1

    .line 157
    .line 158
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 159
    .line 160
    move-object/from16 v1, p2

    .line 161
    .line 162
    check-cast v1, Landroidx/compose/ui/text/style/TextIndent;

    .line 163
    .line 164
    iget-wide v6, v1, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    .line 165
    .line 166
    new-instance v2, Landroidx/compose/ui/unit/TextUnit;

    .line 167
    .line 168
    invoke-direct {v2, v6, v7}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 169
    .line 170
    .line 171
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 172
    .line 173
    invoke-static {v2, v6, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    iget-wide v7, v1, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    .line 178
    .line 179
    new-instance v1, Landroidx/compose/ui/unit/TextUnit;

    .line 180
    .line 181
    invoke-direct {v1, v7, v8}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 182
    .line 183
    .line 184
    invoke-static {v1, v6, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    new-array v1, v3, [Ljava/lang/Object;

    .line 189
    .line 190
    aput-object v2, v1, v5

    .line 191
    .line 192
    aput-object v0, v1, v4

    .line 193
    .line 194
    invoke-static {v1}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    return-object v0

    .line 199
    :pswitch_5
    move-object/from16 v0, p1

    .line 200
    .line 201
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 202
    .line 203
    move-object/from16 v0, p2

    .line 204
    .line 205
    check-cast v0, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 206
    .line 207
    iget v1, v0, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    .line 208
    .line 209
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    iget v0, v0, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    .line 214
    .line 215
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    new-array v2, v3, [Ljava/lang/Float;

    .line 220
    .line 221
    aput-object v1, v2, v5

    .line 222
    .line 223
    aput-object v0, v2, v4

    .line 224
    .line 225
    invoke-static {v2}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    return-object v0

    .line 230
    :pswitch_6
    move-object/from16 v0, p1

    .line 231
    .line 232
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 233
    .line 234
    move-object/from16 v0, p2

    .line 235
    .line 236
    check-cast v0, Landroidx/compose/ui/text/style/TextDecoration;

    .line 237
    .line 238
    iget v0, v0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 239
    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    return-object v0

    .line 245
    :pswitch_7
    move-object/from16 v0, p1

    .line 246
    .line 247
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 248
    .line 249
    return-object p2

    .line 250
    :pswitch_8
    move-object/from16 v0, p1

    .line 251
    .line 252
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 253
    .line 254
    move-object/from16 v0, p2

    .line 255
    .line 256
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 257
    .line 258
    iget-object v2, v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->savedStates:Ljava/util/Map;

    .line 259
    .line 260
    iget-object v0, v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->registries:Landroidx/collection/MutableScatterMap;

    .line 261
    .line 262
    iget-object v4, v0, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 263
    .line 264
    iget-object v6, v0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 265
    .line 266
    iget-object v0, v0, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 267
    .line 268
    array-length v7, v0

    .line 269
    sub-int/2addr v7, v3

    .line 270
    if-ltz v7, :cond_5

    .line 271
    .line 272
    move v3, v5

    .line 273
    :goto_1
    aget-wide v8, v0, v3

    .line 274
    .line 275
    not-long v10, v8

    .line 276
    const/4 v12, 0x7

    .line 277
    shl-long/2addr v10, v12

    .line 278
    and-long/2addr v10, v8

    .line 279
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    and-long/2addr v10, v12

    .line 285
    cmp-long v10, v10, v12

    .line 286
    .line 287
    if-eqz v10, :cond_4

    .line 288
    .line 289
    sub-int v10, v3, v7

    .line 290
    .line 291
    not-int v10, v10

    .line 292
    ushr-int/lit8 v10, v10, 0x1f

    .line 293
    .line 294
    const/16 v11, 0x8

    .line 295
    .line 296
    rsub-int/lit8 v10, v10, 0x8

    .line 297
    .line 298
    move v12, v5

    .line 299
    :goto_2
    if-ge v12, v10, :cond_3

    .line 300
    .line 301
    const-wide/16 v13, 0xff

    .line 302
    .line 303
    and-long/2addr v13, v8

    .line 304
    const-wide/16 v15, 0x80

    .line 305
    .line 306
    cmp-long v13, v13, v15

    .line 307
    .line 308
    if-gez v13, :cond_2

    .line 309
    .line 310
    shl-int/lit8 v13, v3, 0x3

    .line 311
    .line 312
    add-int/2addr v13, v12

    .line 313
    aget-object v14, v4, v13

    .line 314
    .line 315
    aget-object v13, v6, v13

    .line 316
    .line 317
    check-cast v13, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 318
    .line 319
    invoke-interface {v13}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->performSave()Ljava/util/Map;

    .line 320
    .line 321
    .line 322
    move-result-object v13

    .line 323
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    .line 324
    .line 325
    .line 326
    move-result v15

    .line 327
    if-eqz v15, :cond_1

    .line 328
    .line 329
    invoke-interface {v2, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_1
    invoke-interface {v2, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    :cond_2
    :goto_3
    shr-long/2addr v8, v11

    .line 337
    add-int/lit8 v12, v12, 0x1

    .line 338
    .line 339
    goto :goto_2

    .line 340
    :cond_3
    if-ne v10, v11, :cond_5

    .line 341
    .line 342
    :cond_4
    if-eq v3, v7, :cond_5

    .line 343
    .line 344
    add-int/lit8 v3, v3, 0x1

    .line 345
    .line 346
    goto :goto_1

    .line 347
    :cond_5
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_6

    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_6
    move-object v1, v2

    .line 355
    :goto_4
    return-object v1

    .line 356
    :pswitch_9
    move-object/from16 v0, p1

    .line 357
    .line 358
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 359
    .line 360
    move-object/from16 v0, p2

    .line 361
    .line 362
    check-cast v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    .line 363
    .line 364
    iget-object v0, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;->anim:Landroidx/compose/animation/core/Animatable;

    .line 365
    .line 366
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    check-cast v0, Ljava/lang/Float;

    .line 371
    .line 372
    return-object v0

    .line 373
    :pswitch_a
    move-object/from16 v0, p1

    .line 374
    .line 375
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 376
    .line 377
    move-object/from16 v0, p2

    .line 378
    .line 379
    check-cast v0, Landroidx/compose/material3/TopAppBarState;

    .line 380
    .line 381
    iget v1, v0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    .line 382
    .line 383
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    iget-object v6, v0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 388
    .line 389
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 390
    .line 391
    .line 392
    move-result v6

    .line 393
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    iget-object v0, v0, Landroidx/compose/material3/TopAppBarState;->contentOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 398
    .line 399
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    new-array v2, v2, [Ljava/lang/Float;

    .line 408
    .line 409
    aput-object v1, v2, v5

    .line 410
    .line 411
    aput-object v6, v2, v4

    .line 412
    .line 413
    aput-object v0, v2, v3

    .line 414
    .line 415
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    return-object v0

    .line 420
    :pswitch_b
    move-object/from16 v0, p1

    .line 421
    .line 422
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 423
    .line 424
    move-object/from16 v1, p2

    .line 425
    .line 426
    check-cast v1, Ljava/lang/Integer;

    .line 427
    .line 428
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    return-object v0

    .line 441
    :pswitch_c
    move-object/from16 v0, p1

    .line 442
    .line 443
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 444
    .line 445
    move-object/from16 v1, p2

    .line 446
    .line 447
    check-cast v1, Ljava/lang/Integer;

    .line 448
    .line 449
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    return-object v0

    .line 462
    :pswitch_d
    move-object/from16 v0, p1

    .line 463
    .line 464
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 465
    .line 466
    move-object/from16 v1, p2

    .line 467
    .line 468
    check-cast v1, Ljava/lang/Integer;

    .line 469
    .line 470
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    return-object v0

    .line 483
    :pswitch_e
    move-object/from16 v0, p1

    .line 484
    .line 485
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 486
    .line 487
    move-object/from16 v1, p2

    .line 488
    .line 489
    check-cast v1, Ljava/lang/Integer;

    .line 490
    .line 491
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    return-object v0

    .line 504
    :pswitch_f
    move-object/from16 v0, p1

    .line 505
    .line 506
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 507
    .line 508
    move-object/from16 v1, p2

    .line 509
    .line 510
    check-cast v1, Ljava/lang/Integer;

    .line 511
    .line 512
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    return-object v0

    .line 525
    :pswitch_10
    move-object/from16 v0, p1

    .line 526
    .line 527
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 528
    .line 529
    move-object/from16 v1, p2

    .line 530
    .line 531
    check-cast v1, Ljava/lang/Integer;

    .line 532
    .line 533
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    return-object v0

    .line 546
    :pswitch_11
    move-object/from16 v0, p1

    .line 547
    .line 548
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 549
    .line 550
    move-object/from16 v1, p2

    .line 551
    .line 552
    check-cast v1, Ljava/lang/Integer;

    .line 553
    .line 554
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    return-object v0

    .line 567
    :pswitch_12
    move-object/from16 v0, p1

    .line 568
    .line 569
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 570
    .line 571
    move-object/from16 v1, p2

    .line 572
    .line 573
    check-cast v1, Ljava/lang/Integer;

    .line 574
    .line 575
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    return-object v0

    .line 588
    :pswitch_13
    move-object/from16 v0, p1

    .line 589
    .line 590
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 591
    .line 592
    move-object/from16 v0, p2

    .line 593
    .line 594
    check-cast v0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 595
    .line 596
    iget-object v0, v0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->incrementId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 597
    .line 598
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 599
    .line 600
    .line 601
    move-result-wide v0

    .line 602
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    return-object v0

    .line 607
    :pswitch_14
    move-object/from16 v0, p1

    .line 608
    .line 609
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 610
    .line 611
    move-object/from16 v0, p2

    .line 612
    .line 613
    check-cast v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 614
    .line 615
    iget-object v1, v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->offset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 616
    .line 617
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 618
    .line 619
    .line 620
    move-result v1

    .line 621
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    iget-object v0, v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->orientation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 626
    .line 627
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    check-cast v0, Landroidx/compose/foundation/gestures/Orientation;

    .line 632
    .line 633
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 634
    .line 635
    if-ne v0, v2, :cond_7

    .line 636
    .line 637
    move v0, v4

    .line 638
    goto :goto_5

    .line 639
    :cond_7
    move v0, v5

    .line 640
    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    new-array v2, v3, [Ljava/lang/Object;

    .line 645
    .line 646
    aput-object v1, v2, v5

    .line 647
    .line 648
    aput-object v0, v2, v4

    .line 649
    .line 650
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    return-object v0

    .line 655
    :pswitch_15
    move-object/from16 v0, p1

    .line 656
    .line 657
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 658
    .line 659
    move-object/from16 v0, p2

    .line 660
    .line 661
    check-cast v0, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 662
    .line 663
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    .line 672
    .line 673
    .line 674
    move-result v6

    .line 675
    const/high16 v7, -0x41000000    # -0.5f

    .line 676
    .line 677
    const/high16 v8, 0x3f000000    # 0.5f

    .line 678
    .line 679
    invoke-static {v6, v7, v8}, Lkotlin/text/RegexKt;->coerceIn(FFF)F

    .line 680
    .line 681
    .line 682
    move-result v6

    .line 683
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 684
    .line 685
    .line 686
    move-result-object v6

    .line 687
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/DefaultPagerState;->getPageCount()I

    .line 688
    .line 689
    .line 690
    move-result v0

    .line 691
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    new-array v2, v2, [Ljava/lang/Object;

    .line 696
    .line 697
    aput-object v1, v2, v5

    .line 698
    .line 699
    aput-object v6, v2, v4

    .line 700
    .line 701
    aput-object v0, v2, v3

    .line 702
    .line 703
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    return-object v0

    .line 708
    :pswitch_16
    move-object/from16 v0, p1

    .line 709
    .line 710
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 711
    .line 712
    move-object/from16 v0, p2

    .line 713
    .line 714
    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 715
    .line 716
    iget-object v0, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/text/TextDelegate;

    .line 717
    .line 718
    iget-object v1, v0, Landroidx/compose/foundation/text/TextDelegate;->style:Ljava/lang/Object;

    .line 719
    .line 720
    check-cast v1, [I

    .line 721
    .line 722
    iget-object v0, v0, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Ljava/lang/Object;

    .line 723
    .line 724
    check-cast v0, [I

    .line 725
    .line 726
    new-array v2, v3, [[I

    .line 727
    .line 728
    aput-object v1, v2, v5

    .line 729
    .line 730
    aput-object v0, v2, v4

    .line 731
    .line 732
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    return-object v0

    .line 737
    :pswitch_17
    move-object/from16 v0, p1

    .line 738
    .line 739
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 740
    .line 741
    move-object/from16 v0, p2

    .line 742
    .line 743
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 744
    .line 745
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;->performSave()Ljava/util/Map;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 750
    .line 751
    .line 752
    move-result v2

    .line 753
    if-eqz v2, :cond_8

    .line 754
    .line 755
    goto :goto_6

    .line 756
    :cond_8
    move-object v1, v0

    .line 757
    :goto_6
    return-object v1

    .line 758
    :pswitch_18
    move-object/from16 v0, p1

    .line 759
    .line 760
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 761
    .line 762
    move-object/from16 v0, p2

    .line 763
    .line 764
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 765
    .line 766
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 767
    .line 768
    iget-object v1, v1, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 769
    .line 770
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 771
    .line 772
    .line 773
    move-result v1

    .line 774
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 779
    .line 780
    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 781
    .line 782
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 783
    .line 784
    .line 785
    move-result v0

    .line 786
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    new-array v2, v3, [Ljava/lang/Integer;

    .line 791
    .line 792
    aput-object v1, v2, v5

    .line 793
    .line 794
    aput-object v0, v2, v4

    .line 795
    .line 796
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    return-object v0

    .line 801
    :pswitch_19
    move-object/from16 v0, p1

    .line 802
    .line 803
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    .line 804
    .line 805
    move-object/from16 v0, p2

    .line 806
    .line 807
    check-cast v0, Ljava/lang/Integer;

    .line 808
    .line 809
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 810
    .line 811
    .line 812
    new-instance v0, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 813
    .line 814
    const-wide/16 v1, 0x1

    .line 815
    .line 816
    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    .line 817
    .line 818
    .line 819
    return-object v0

    .line 820
    :pswitch_1a
    move-object/from16 v0, p1

    .line 821
    .line 822
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 823
    .line 824
    move-object/from16 v0, p2

    .line 825
    .line 826
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 827
    .line 828
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    .line 829
    .line 830
    .line 831
    move-result v1

    .line 832
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 833
    .line 834
    .line 835
    move-result-object v1

    .line 836
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemScrollOffset()I

    .line 837
    .line 838
    .line 839
    move-result v0

    .line 840
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    new-array v2, v3, [Ljava/lang/Integer;

    .line 845
    .line 846
    aput-object v1, v2, v5

    .line 847
    .line 848
    aput-object v0, v2, v4

    .line 849
    .line 850
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    return-object v0

    .line 855
    :pswitch_1b
    move-object/from16 v0, p1

    .line 856
    .line 857
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 858
    .line 859
    move-object/from16 v0, p2

    .line 860
    .line 861
    check-cast v0, Landroidx/compose/foundation/ScrollState;

    .line 862
    .line 863
    iget-object v0, v0, Landroidx/compose/foundation/ScrollState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 864
    .line 865
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 866
    .line 867
    .line 868
    move-result v0

    .line 869
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    return-object v0

    .line 874
    :pswitch_1c
    move-object/from16 v0, p1

    .line 875
    .line 876
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 877
    .line 878
    move-object/from16 v1, p2

    .line 879
    .line 880
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 881
    .line 882
    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 883
    .line 884
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    .line 885
    .line 886
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeListSaver:Landroidx/cardview/widget/CardView$1;

    .line 887
    .line 888
    invoke-static {v1, v6, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    new-array v1, v3, [Ljava/lang/Object;

    .line 893
    .line 894
    aput-object v2, v1, v5

    .line 895
    .line 896
    aput-object v0, v1, v4

    .line 897
    .line 898
    invoke-static {v1}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    return-object v0

    .line 903
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

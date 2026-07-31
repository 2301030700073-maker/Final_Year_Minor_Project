.class public final synthetic Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object/from16 v0, p1

    .line 13
    .line 14
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 15
    .line 16
    move-object/from16 v0, p2

    .line 17
    .line 18
    check-cast v0, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 19
    .line 20
    iget v0, v0, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :pswitch_0
    move-object/from16 v0, p1

    .line 28
    .line 29
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 30
    .line 31
    move-object/from16 v0, p2

    .line 32
    .line 33
    check-cast v0, Landroidx/compose/ui/text/font/FontStyle;

    .line 34
    .line 35
    iget v0, v0, Landroidx/compose/ui/text/font/FontStyle;->value:I

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :pswitch_1
    move-object/from16 v0, p1

    .line 43
    .line 44
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 45
    .line 46
    move-object/from16 v0, p2

    .line 47
    .line 48
    check-cast v0, Landroidx/compose/ui/text/style/Hyphens;

    .line 49
    .line 50
    iget v0, v0, Landroidx/compose/ui/text/style/Hyphens;->value:I

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0

    .line 57
    :pswitch_2
    move-object/from16 v0, p1

    .line 58
    .line 59
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 60
    .line 61
    move-object/from16 v0, p2

    .line 62
    .line 63
    check-cast v0, Landroidx/compose/ui/text/style/TextDirection;

    .line 64
    .line 65
    iget v0, v0, Landroidx/compose/ui/text/style/TextDirection;->value:I

    .line 66
    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0

    .line 72
    :pswitch_3
    move-object/from16 v0, p1

    .line 73
    .line 74
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 75
    .line 76
    move-object/from16 v0, p2

    .line 77
    .line 78
    check-cast v0, Landroidx/compose/ui/text/style/TextAlign;

    .line 79
    .line 80
    iget v0, v0, Landroidx/compose/ui/text/style/TextAlign;->value:I

    .line 81
    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    :pswitch_4
    move-object/from16 v0, p1

    .line 88
    .line 89
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 90
    .line 91
    move-object/from16 v1, p2

    .line 92
    .line 93
    check-cast v1, Landroidx/compose/ui/graphics/Shadow;

    .line 94
    .line 95
    iget-wide v5, v1, Landroidx/compose/ui/graphics/Shadow;->color:J

    .line 96
    .line 97
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    .line 98
    .line 99
    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 100
    .line 101
    .line 102
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->ColorSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 103
    .line 104
    invoke-static {v7, v5, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    iget-wide v6, v1, Landroidx/compose/ui/graphics/Shadow;->offset:J

    .line 109
    .line 110
    new-instance v8, Landroidx/compose/ui/geometry/Offset;

    .line 111
    .line 112
    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 113
    .line 114
    .line 115
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->OffsetSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 116
    .line 117
    invoke-static {v8, v6, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget v1, v1, Landroidx/compose/ui/graphics/Shadow;->blurRadius:F

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const/4 v6, 0x3

    .line 128
    new-array v6, v6, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v5, v6, v3

    .line 131
    .line 132
    aput-object v0, v6, v4

    .line 133
    .line 134
    aput-object v1, v6, v2

    .line 135
    .line 136
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0

    .line 141
    :pswitch_5
    move-object/from16 v0, p1

    .line 142
    .line 143
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 144
    .line 145
    move-object/from16 v0, p2

    .line 146
    .line 147
    check-cast v0, Landroidx/compose/ui/text/TextRange;

    .line 148
    .line 149
    iget-wide v5, v0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 150
    .line 151
    const/16 v1, 0x20

    .line 152
    .line 153
    shr-long/2addr v5, v1

    .line 154
    long-to-int v1, v5

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iget-wide v5, v0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 160
    .line 161
    const-wide v7, 0xffffffffL

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    and-long/2addr v5, v7

    .line 167
    long-to-int v0, v5

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    new-array v2, v2, [Ljava/lang/Integer;

    .line 173
    .line 174
    aput-object v1, v2, v3

    .line 175
    .line 176
    aput-object v0, v2, v4

    .line 177
    .line 178
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    return-object v0

    .line 183
    :pswitch_6
    move-object/from16 v0, p1

    .line 184
    .line 185
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 186
    .line 187
    move-object/from16 v1, p2

    .line 188
    .line 189
    check-cast v1, Ljava/util/List;

    .line 190
    .line 191
    new-instance v2, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .line 199
    .line 200
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    :goto_0
    if-ge v3, v4, :cond_0

    .line 205
    .line 206
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 211
    .line 212
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 213
    .line 214
    invoke-static {v5, v6, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    add-int/lit8 v3, v3, 0x1

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_0
    return-object v2

    .line 225
    :pswitch_7
    move-object/from16 v0, p1

    .line 226
    .line 227
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 228
    .line 229
    move-object/from16 v0, p2

    .line 230
    .line 231
    check-cast v0, Landroidx/compose/ui/text/style/BaselineShift;

    .line 232
    .line 233
    iget v0, v0, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    .line 234
    .line 235
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    return-object v0

    .line 240
    :pswitch_8
    move-object/from16 v0, p1

    .line 241
    .line 242
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 243
    .line 244
    move-object/from16 v1, p2

    .line 245
    .line 246
    check-cast v1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 247
    .line 248
    iget-object v5, v1, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    .line 249
    .line 250
    iget-object v1, v1, Landroidx/compose/ui/text/LinkAnnotation$Url;->styles:Landroidx/compose/ui/text/TextLinkStyles;

    .line 251
    .line 252
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->TextLinkStylesSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 253
    .line 254
    invoke-static {v1, v6, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    new-array v1, v2, [Ljava/lang/Object;

    .line 259
    .line 260
    aput-object v5, v1, v3

    .line 261
    .line 262
    aput-object v0, v1, v4

    .line 263
    .line 264
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    return-object v0

    .line 269
    :pswitch_9
    move-object/from16 v0, p1

    .line 270
    .line 271
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 272
    .line 273
    move-object/from16 v0, p2

    .line 274
    .line 275
    check-cast v0, Landroidx/compose/ui/text/font/FontWeight;

    .line 276
    .line 277
    iget v0, v0, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    .line 278
    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    return-object v0

    .line 284
    :pswitch_a
    move-object/from16 v0, p1

    .line 285
    .line 286
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 287
    .line 288
    move-object/from16 v1, p2

    .line 289
    .line 290
    check-cast v1, Landroidx/compose/ui/text/style/TextIndent;

    .line 291
    .line 292
    iget-wide v5, v1, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    .line 293
    .line 294
    new-instance v7, Landroidx/compose/ui/unit/TextUnit;

    .line 295
    .line 296
    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 297
    .line 298
    .line 299
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 300
    .line 301
    invoke-static {v7, v5, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    iget-wide v7, v1, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    .line 306
    .line 307
    new-instance v1, Landroidx/compose/ui/unit/TextUnit;

    .line 308
    .line 309
    invoke-direct {v1, v7, v8}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 310
    .line 311
    .line 312
    invoke-static {v1, v5, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    new-array v1, v2, [Ljava/lang/Object;

    .line 317
    .line 318
    aput-object v6, v1, v3

    .line 319
    .line 320
    aput-object v0, v1, v4

    .line 321
    .line 322
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    return-object v0

    .line 327
    :pswitch_b
    move-object/from16 v0, p1

    .line 328
    .line 329
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 330
    .line 331
    move-object/from16 v0, p2

    .line 332
    .line 333
    check-cast v0, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 334
    .line 335
    iget v1, v0, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    .line 336
    .line 337
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    iget v0, v0, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    .line 342
    .line 343
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    new-array v2, v2, [Ljava/lang/Float;

    .line 348
    .line 349
    aput-object v1, v2, v3

    .line 350
    .line 351
    aput-object v0, v2, v4

    .line 352
    .line 353
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    return-object v0

    .line 358
    :pswitch_c
    move-object/from16 v0, p1

    .line 359
    .line 360
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 361
    .line 362
    move-object/from16 v0, p2

    .line 363
    .line 364
    check-cast v0, Landroidx/compose/ui/text/style/TextDecoration;

    .line 365
    .line 366
    iget v0, v0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 367
    .line 368
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    return-object v0

    .line 373
    :pswitch_d
    move-object/from16 v0, p1

    .line 374
    .line 375
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 376
    .line 377
    return-object p2

    .line 378
    :pswitch_e
    move-object/from16 v0, p1

    .line 379
    .line 380
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 381
    .line 382
    move-object/from16 v0, p2

    .line 383
    .line 384
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 385
    .line 386
    iget-object v4, v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->savedStates:Ljava/util/Map;

    .line 387
    .line 388
    iget-object v0, v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->registries:Landroidx/collection/MutableScatterMap;

    .line 389
    .line 390
    iget-object v5, v0, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 391
    .line 392
    iget-object v6, v0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 393
    .line 394
    iget-object v0, v0, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 395
    .line 396
    array-length v7, v0

    .line 397
    sub-int/2addr v7, v2

    .line 398
    if-ltz v7, :cond_5

    .line 399
    .line 400
    move v2, v3

    .line 401
    :goto_1
    aget-wide v8, v0, v2

    .line 402
    .line 403
    not-long v10, v8

    .line 404
    const/4 v12, 0x7

    .line 405
    shl-long/2addr v10, v12

    .line 406
    and-long/2addr v10, v8

    .line 407
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    and-long/2addr v10, v12

    .line 413
    cmp-long v10, v10, v12

    .line 414
    .line 415
    if-eqz v10, :cond_4

    .line 416
    .line 417
    sub-int v10, v2, v7

    .line 418
    .line 419
    not-int v10, v10

    .line 420
    ushr-int/lit8 v10, v10, 0x1f

    .line 421
    .line 422
    const/16 v11, 0x8

    .line 423
    .line 424
    rsub-int/lit8 v10, v10, 0x8

    .line 425
    .line 426
    move v12, v3

    .line 427
    :goto_2
    if-ge v12, v10, :cond_3

    .line 428
    .line 429
    const-wide/16 v13, 0xff

    .line 430
    .line 431
    and-long/2addr v13, v8

    .line 432
    const-wide/16 v15, 0x80

    .line 433
    .line 434
    cmp-long v13, v13, v15

    .line 435
    .line 436
    if-gez v13, :cond_2

    .line 437
    .line 438
    shl-int/lit8 v13, v2, 0x3

    .line 439
    .line 440
    add-int/2addr v13, v12

    .line 441
    aget-object v14, v5, v13

    .line 442
    .line 443
    aget-object v13, v6, v13

    .line 444
    .line 445
    check-cast v13, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 446
    .line 447
    invoke-interface {v13}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->performSave()Ljava/util/Map;

    .line 448
    .line 449
    .line 450
    move-result-object v13

    .line 451
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    .line 452
    .line 453
    .line 454
    move-result v15

    .line 455
    if-eqz v15, :cond_1

    .line 456
    .line 457
    invoke-interface {v4, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    goto :goto_3

    .line 461
    :cond_1
    invoke-interface {v4, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    :cond_2
    :goto_3
    shr-long/2addr v8, v11

    .line 465
    add-int/lit8 v12, v12, 0x1

    .line 466
    .line 467
    goto :goto_2

    .line 468
    :cond_3
    if-ne v10, v11, :cond_5

    .line 469
    .line 470
    :cond_4
    if-eq v2, v7, :cond_5

    .line 471
    .line 472
    add-int/lit8 v2, v2, 0x1

    .line 473
    .line 474
    goto :goto_1

    .line 475
    :cond_5
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    if-eqz v0, :cond_6

    .line 480
    .line 481
    goto :goto_4

    .line 482
    :cond_6
    move-object v1, v4

    .line 483
    :goto_4
    return-object v1

    .line 484
    :pswitch_f
    move-object/from16 v0, p1

    .line 485
    .line 486
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 487
    .line 488
    move-object/from16 v2, p2

    .line 489
    .line 490
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 491
    .line 492
    instance-of v3, v2, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    .line 493
    .line 494
    if-eqz v3, :cond_7

    .line 495
    .line 496
    check-cast v2, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    .line 497
    .line 498
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    sget-object v4, Landroidx/compose/ui/text/input/TextFieldValue;->Saver:Landroidx/compose/ui/platform/WeakCache;

    .line 503
    .line 504
    iget-object v4, v4, Landroidx/compose/ui/platform/WeakCache;->values:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 507
    .line 508
    invoke-interface {v4, v0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    if-eqz v0, :cond_8

    .line 513
    .line 514
    invoke-interface {v2}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->getPolicy()Landroidx/compose/runtime/NeverEqualPolicy;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    .line 520
    .line 521
    new-instance v2, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 522
    .line 523
    invoke-direct {v2, v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/NeverEqualPolicy;)V

    .line 524
    .line 525
    .line 526
    move-object v1, v2

    .line 527
    goto :goto_5

    .line 528
    :cond_7
    const-string v0, "If you use a custom MutableState implementation you have to write a custom Saver and pass it as a saver param to rememberSaveable()"

    .line 529
    .line 530
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    :cond_8
    :goto_5
    return-object v1

    .line 534
    :pswitch_10
    move-object/from16 v0, p1

    .line 535
    .line 536
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 537
    .line 538
    move-object/from16 v0, p2

    .line 539
    .line 540
    check-cast v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    .line 541
    .line 542
    iget-object v0, v0, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;->anim:Landroidx/compose/animation/core/Animatable;

    .line 543
    .line 544
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    check-cast v0, Ljava/lang/Float;

    .line 549
    .line 550
    return-object v0

    .line 551
    :pswitch_11
    move-object/from16 v0, p1

    .line 552
    .line 553
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 554
    .line 555
    move-object/from16 v0, p2

    .line 556
    .line 557
    check-cast v0, Landroidx/compose/material3/SheetState;

    .line 558
    .line 559
    iget-object v0, v0, Landroidx/compose/material3/SheetState;->anchoredDraggableState:Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 560
    .line 561
    iget-object v0, v0, Landroidx/compose/material3/internal/AnchoredDraggableState;->currentValue$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 562
    .line 563
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    check-cast v0, Landroidx/compose/material3/SheetValue;

    .line 568
    .line 569
    return-object v0

    .line 570
    :pswitch_12
    move-object/from16 v0, p1

    .line 571
    .line 572
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 573
    .line 574
    move-object/from16 v1, p2

    .line 575
    .line 576
    check-cast v1, Ljava/lang/Integer;

    .line 577
    .line 578
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 579
    .line 580
    .line 581
    move-result v1

    .line 582
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 583
    .line 584
    .line 585
    move-result v0

    .line 586
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    return-object v0

    .line 591
    :pswitch_13
    move-object/from16 v0, p1

    .line 592
    .line 593
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 594
    .line 595
    move-object/from16 v1, p2

    .line 596
    .line 597
    check-cast v1, Ljava/lang/Integer;

    .line 598
    .line 599
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    return-object v0

    .line 612
    :pswitch_14
    move-object/from16 v0, p1

    .line 613
    .line 614
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 615
    .line 616
    move-object/from16 v1, p2

    .line 617
    .line 618
    check-cast v1, Ljava/lang/Integer;

    .line 619
    .line 620
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 625
    .line 626
    .line 627
    move-result v0

    .line 628
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    return-object v0

    .line 633
    :pswitch_15
    move-object/from16 v0, p1

    .line 634
    .line 635
    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    .line 636
    .line 637
    move-object/from16 v1, p2

    .line 638
    .line 639
    check-cast v1, Ljava/lang/Integer;

    .line 640
    .line 641
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 642
    .line 643
    .line 644
    move-result v1

    .line 645
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 646
    .line 647
    .line 648
    move-result v0

    .line 649
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    return-object v0

    .line 654
    :pswitch_16
    move-object/from16 v0, p1

    .line 655
    .line 656
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 657
    .line 658
    move-object/from16 v0, p2

    .line 659
    .line 660
    check-cast v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 661
    .line 662
    iget-object v1, v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->offset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 663
    .line 664
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 665
    .line 666
    .line 667
    move-result v1

    .line 668
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    iget-object v0, v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->orientation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 673
    .line 674
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    check-cast v0, Landroidx/compose/foundation/gestures/Orientation;

    .line 679
    .line 680
    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 681
    .line 682
    if-ne v0, v5, :cond_9

    .line 683
    .line 684
    move v0, v4

    .line 685
    goto :goto_6

    .line 686
    :cond_9
    move v0, v3

    .line 687
    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    new-array v2, v2, [Ljava/lang/Object;

    .line 692
    .line 693
    aput-object v1, v2, v3

    .line 694
    .line 695
    aput-object v0, v2, v4

    .line 696
    .line 697
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    return-object v0

    .line 702
    :pswitch_17
    move-object/from16 v0, p1

    .line 703
    .line 704
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 705
    .line 706
    move-object/from16 v0, p2

    .line 707
    .line 708
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 709
    .line 710
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;->performSave()Ljava/util/Map;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 715
    .line 716
    .line 717
    move-result v2

    .line 718
    if-eqz v2, :cond_a

    .line 719
    .line 720
    goto :goto_7

    .line 721
    :cond_a
    move-object v1, v0

    .line 722
    :goto_7
    return-object v1

    .line 723
    :pswitch_18
    move-object/from16 v0, p1

    .line 724
    .line 725
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 726
    .line 727
    move-object/from16 v0, p2

    .line 728
    .line 729
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 730
    .line 731
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 732
    .line 733
    iget-object v1, v1, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 734
    .line 735
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 736
    .line 737
    .line 738
    move-result v1

    .line 739
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 744
    .line 745
    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 746
    .line 747
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 748
    .line 749
    .line 750
    move-result v0

    .line 751
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    new-array v2, v2, [Ljava/lang/Integer;

    .line 756
    .line 757
    aput-object v1, v2, v3

    .line 758
    .line 759
    aput-object v0, v2, v4

    .line 760
    .line 761
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    return-object v0

    .line 766
    :pswitch_19
    move-object/from16 v0, p1

    .line 767
    .line 768
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    .line 769
    .line 770
    move-object/from16 v0, p2

    .line 771
    .line 772
    check-cast v0, Ljava/lang/Integer;

    .line 773
    .line 774
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 775
    .line 776
    .line 777
    invoke-static {v4}, Landroidx/work/Operation$State;->GridItemSpan(I)J

    .line 778
    .line 779
    .line 780
    move-result-wide v0

    .line 781
    new-instance v2, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 782
    .line 783
    invoke-direct {v2, v0, v1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    .line 784
    .line 785
    .line 786
    return-object v2

    .line 787
    :pswitch_1a
    move-object/from16 v0, p1

    .line 788
    .line 789
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 790
    .line 791
    move-object/from16 v0, p2

    .line 792
    .line 793
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 794
    .line 795
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 796
    .line 797
    iget-object v1, v1, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 798
    .line 799
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 800
    .line 801
    .line 802
    move-result v1

    .line 803
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 808
    .line 809
    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 810
    .line 811
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 812
    .line 813
    .line 814
    move-result v0

    .line 815
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    new-array v2, v2, [Ljava/lang/Integer;

    .line 820
    .line 821
    aput-object v1, v2, v3

    .line 822
    .line 823
    aput-object v0, v2, v4

    .line 824
    .line 825
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    return-object v0

    .line 830
    :pswitch_1b
    move-object/from16 v0, p1

    .line 831
    .line 832
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 833
    .line 834
    move-object/from16 v0, p2

    .line 835
    .line 836
    check-cast v0, Landroidx/compose/foundation/ScrollState;

    .line 837
    .line 838
    iget-object v0, v0, Landroidx/compose/foundation/ScrollState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 839
    .line 840
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 841
    .line 842
    .line 843
    move-result v0

    .line 844
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    return-object v0

    .line 849
    :pswitch_1c
    move-object/from16 v0, p1

    .line 850
    .line 851
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 852
    .line 853
    move-object/from16 v1, p2

    .line 854
    .line 855
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 856
    .line 857
    iget-object v5, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 858
    .line 859
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    .line 860
    .line 861
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeListSaver:Landroidx/compose/ui/platform/WeakCache;

    .line 862
    .line 863
    invoke-static {v1, v6, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    new-array v1, v2, [Ljava/lang/Object;

    .line 868
    .line 869
    aput-object v5, v1, v3

    .line 870
    .line 871
    aput-object v0, v1, v4

    .line 872
    .line 873
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    return-object v0

    .line 878
    nop

    .line 879
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

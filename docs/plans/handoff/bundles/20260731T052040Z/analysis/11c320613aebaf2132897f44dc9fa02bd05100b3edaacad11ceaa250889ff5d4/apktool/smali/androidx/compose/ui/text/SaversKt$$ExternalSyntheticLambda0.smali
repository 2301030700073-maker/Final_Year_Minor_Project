.class public final synthetic Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

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
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v0, p1

    .line 16
    .line 17
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 18
    .line 19
    move-object/from16 v1, p2

    .line 20
    .line 21
    check-cast v1, Landroidx/compose/ui/unit/TextUnit;

    .line 22
    .line 23
    sget-wide v2, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    move v2, v6

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-wide v7, v1, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 30
    .line 31
    invoke-static {v7, v8, v2, v3}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    :goto_0
    if-eqz v2, :cond_1

    .line 36
    .line 37
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget-wide v2, v1, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 41
    .line 42
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-wide v7, v1, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 51
    .line 52
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    new-instance v1, Landroidx/compose/ui/unit/TextUnitType;

    .line 57
    .line 58
    invoke-direct {v1, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    .line 59
    .line 60
    .line 61
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->TextUnitTypeSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 62
    .line 63
    invoke-static {v1, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-array v1, v4, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object v2, v1, v6

    .line 70
    .line 71
    aput-object v0, v1, v5

    .line 72
    .line 73
    invoke-static {v1}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_1
    return-object v0

    .line 78
    :pswitch_0
    move-object/from16 v0, p1

    .line 79
    .line 80
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 81
    .line 82
    move-object/from16 v0, p2

    .line 83
    .line 84
    check-cast v0, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 85
    .line 86
    iget v0, v0, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    .line 87
    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0

    .line 93
    :pswitch_1
    move-object/from16 v0, p1

    .line 94
    .line 95
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 96
    .line 97
    move-object/from16 v0, p2

    .line 98
    .line 99
    check-cast v0, Landroidx/compose/ui/text/font/FontStyle;

    .line 100
    .line 101
    iget v0, v0, Landroidx/compose/ui/text/font/FontStyle;->value:I

    .line 102
    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0

    .line 108
    :pswitch_2
    move-object/from16 v0, p1

    .line 109
    .line 110
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 111
    .line 112
    move-object/from16 v0, p2

    .line 113
    .line 114
    check-cast v0, Landroidx/compose/ui/text/style/Hyphens;

    .line 115
    .line 116
    iget v0, v0, Landroidx/compose/ui/text/style/Hyphens;->value:I

    .line 117
    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    return-object v0

    .line 123
    :pswitch_3
    move-object/from16 v0, p1

    .line 124
    .line 125
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 126
    .line 127
    move-object/from16 v0, p2

    .line 128
    .line 129
    check-cast v0, Landroidx/compose/ui/text/style/TextDirection;

    .line 130
    .line 131
    iget v0, v0, Landroidx/compose/ui/text/style/TextDirection;->value:I

    .line 132
    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    return-object v0

    .line 138
    :pswitch_4
    move-object/from16 v0, p1

    .line 139
    .line 140
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 141
    .line 142
    move-object/from16 v0, p2

    .line 143
    .line 144
    check-cast v0, Landroidx/compose/ui/text/style/TextAlign;

    .line 145
    .line 146
    iget v0, v0, Landroidx/compose/ui/text/style/TextAlign;->value:I

    .line 147
    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    return-object v0

    .line 153
    :pswitch_5
    move-object/from16 v0, p1

    .line 154
    .line 155
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 156
    .line 157
    move-object/from16 v1, p2

    .line 158
    .line 159
    check-cast v1, Landroidx/compose/ui/graphics/Shadow;

    .line 160
    .line 161
    iget-wide v7, v1, Landroidx/compose/ui/graphics/Shadow;->color:J

    .line 162
    .line 163
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 164
    .line 165
    invoke-direct {v2, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 166
    .line 167
    .line 168
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->ColorSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 169
    .line 170
    invoke-static {v2, v7, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    iget-wide v7, v1, Landroidx/compose/ui/graphics/Shadow;->offset:J

    .line 175
    .line 176
    new-instance v9, Landroidx/compose/ui/geometry/Offset;

    .line 177
    .line 178
    invoke-direct {v9, v7, v8}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 179
    .line 180
    .line 181
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->OffsetSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 182
    .line 183
    invoke-static {v9, v7, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget v1, v1, Landroidx/compose/ui/graphics/Shadow;->blurRadius:F

    .line 188
    .line 189
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    new-array v3, v3, [Ljava/lang/Object;

    .line 194
    .line 195
    aput-object v2, v3, v6

    .line 196
    .line 197
    aput-object v0, v3, v5

    .line 198
    .line 199
    aput-object v1, v3, v4

    .line 200
    .line 201
    invoke-static {v3}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    return-object v0

    .line 206
    :pswitch_6
    move-object/from16 v0, p1

    .line 207
    .line 208
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 209
    .line 210
    move-object/from16 v0, p2

    .line 211
    .line 212
    check-cast v0, Landroidx/compose/ui/text/TextRange;

    .line 213
    .line 214
    iget-wide v1, v0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 215
    .line 216
    const/16 v3, 0x20

    .line 217
    .line 218
    shr-long/2addr v1, v3

    .line 219
    long-to-int v1, v1

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    iget-wide v2, v0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 225
    .line 226
    const-wide v7, 0xffffffffL

    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    and-long/2addr v2, v7

    .line 232
    long-to-int v0, v2

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    new-array v2, v4, [Ljava/lang/Integer;

    .line 238
    .line 239
    aput-object v1, v2, v6

    .line 240
    .line 241
    aput-object v0, v2, v5

    .line 242
    .line 243
    invoke-static {v2}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    return-object v0

    .line 248
    :pswitch_7
    move-object/from16 v0, p1

    .line 249
    .line 250
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 251
    .line 252
    move-object/from16 v1, p2

    .line 253
    .line 254
    check-cast v1, Ljava/util/List;

    .line 255
    .line 256
    new-instance v2, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    .line 264
    .line 265
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    :goto_2
    if-ge v6, v3, :cond_2

    .line 270
    .line 271
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 276
    .line 277
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeSaver:Landroidx/cardview/widget/CardView$1;

    .line 278
    .line 279
    invoke-static {v4, v5, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    add-int/lit8 v6, v6, 0x1

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_2
    return-object v2

    .line 290
    :pswitch_8
    move-object/from16 v0, p1

    .line 291
    .line 292
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 293
    .line 294
    move-object/from16 v0, p2

    .line 295
    .line 296
    check-cast v0, Landroidx/compose/ui/text/style/BaselineShift;

    .line 297
    .line 298
    iget v0, v0, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    .line 299
    .line 300
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    return-object v0

    .line 305
    :pswitch_9
    move-object/from16 v0, p1

    .line 306
    .line 307
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 308
    .line 309
    move-object/from16 v1, p2

    .line 310
    .line 311
    check-cast v1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 312
    .line 313
    iget-object v2, v1, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    .line 314
    .line 315
    iget-object v1, v1, Landroidx/compose/ui/text/LinkAnnotation$Url;->styles:Landroidx/compose/ui/text/TextLinkStyles;

    .line 316
    .line 317
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->TextLinkStylesSaver:Landroidx/cardview/widget/CardView$1;

    .line 318
    .line 319
    invoke-static {v1, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    new-array v1, v4, [Ljava/lang/Object;

    .line 324
    .line 325
    aput-object v2, v1, v6

    .line 326
    .line 327
    aput-object v0, v1, v5

    .line 328
    .line 329
    invoke-static {v1}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    return-object v0

    .line 334
    :pswitch_a
    move-object/from16 v0, p1

    .line 335
    .line 336
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 337
    .line 338
    move-object/from16 v0, p2

    .line 339
    .line 340
    check-cast v0, Landroidx/compose/ui/text/font/FontWeight;

    .line 341
    .line 342
    iget v0, v0, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    .line 343
    .line 344
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    return-object v0

    .line 349
    :pswitch_b
    move-object/from16 v0, p1

    .line 350
    .line 351
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 352
    .line 353
    move-object/from16 v1, p2

    .line 354
    .line 355
    check-cast v1, Landroidx/compose/ui/text/style/TextIndent;

    .line 356
    .line 357
    iget-wide v2, v1, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    .line 358
    .line 359
    new-instance v7, Landroidx/compose/ui/unit/TextUnit;

    .line 360
    .line 361
    invoke-direct {v7, v2, v3}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 362
    .line 363
    .line 364
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 365
    .line 366
    invoke-static {v7, v2, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    iget-wide v7, v1, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    .line 371
    .line 372
    new-instance v1, Landroidx/compose/ui/unit/TextUnit;

    .line 373
    .line 374
    invoke-direct {v1, v7, v8}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 375
    .line 376
    .line 377
    invoke-static {v1, v2, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    new-array v1, v4, [Ljava/lang/Object;

    .line 382
    .line 383
    aput-object v3, v1, v6

    .line 384
    .line 385
    aput-object v0, v1, v5

    .line 386
    .line 387
    invoke-static {v1}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    return-object v0

    .line 392
    :pswitch_c
    move-object/from16 v0, p1

    .line 393
    .line 394
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 395
    .line 396
    move-object/from16 v0, p2

    .line 397
    .line 398
    check-cast v0, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 399
    .line 400
    iget v1, v0, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    .line 401
    .line 402
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    iget v0, v0, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    .line 407
    .line 408
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    new-array v2, v4, [Ljava/lang/Float;

    .line 413
    .line 414
    aput-object v1, v2, v6

    .line 415
    .line 416
    aput-object v0, v2, v5

    .line 417
    .line 418
    invoke-static {v2}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    return-object v0

    .line 423
    :pswitch_d
    move-object/from16 v0, p1

    .line 424
    .line 425
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 426
    .line 427
    move-object/from16 v0, p2

    .line 428
    .line 429
    check-cast v0, Landroidx/compose/ui/text/style/TextDecoration;

    .line 430
    .line 431
    iget v0, v0, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 432
    .line 433
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    return-object v0

    .line 438
    :pswitch_e
    move-object/from16 v0, p1

    .line 439
    .line 440
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 441
    .line 442
    return-object p2

    .line 443
    :pswitch_f
    move-object/from16 v0, p1

    .line 444
    .line 445
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 446
    .line 447
    move-object/from16 v0, p2

    .line 448
    .line 449
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 450
    .line 451
    iget-object v2, v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->savedStates:Ljava/util/Map;

    .line 452
    .line 453
    iget-object v0, v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->registries:Landroidx/collection/MutableScatterMap;

    .line 454
    .line 455
    iget-object v3, v0, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 456
    .line 457
    iget-object v5, v0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 458
    .line 459
    iget-object v0, v0, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 460
    .line 461
    array-length v7, v0

    .line 462
    sub-int/2addr v7, v4

    .line 463
    if-ltz v7, :cond_7

    .line 464
    .line 465
    move v4, v6

    .line 466
    :goto_3
    aget-wide v8, v0, v4

    .line 467
    .line 468
    not-long v10, v8

    .line 469
    const/4 v12, 0x7

    .line 470
    shl-long/2addr v10, v12

    .line 471
    and-long/2addr v10, v8

    .line 472
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    and-long/2addr v10, v12

    .line 478
    cmp-long v10, v10, v12

    .line 479
    .line 480
    if-eqz v10, :cond_6

    .line 481
    .line 482
    sub-int v10, v4, v7

    .line 483
    .line 484
    not-int v10, v10

    .line 485
    ushr-int/lit8 v10, v10, 0x1f

    .line 486
    .line 487
    const/16 v11, 0x8

    .line 488
    .line 489
    rsub-int/lit8 v10, v10, 0x8

    .line 490
    .line 491
    move v12, v6

    .line 492
    :goto_4
    if-ge v12, v10, :cond_5

    .line 493
    .line 494
    const-wide/16 v13, 0xff

    .line 495
    .line 496
    and-long/2addr v13, v8

    .line 497
    const-wide/16 v15, 0x80

    .line 498
    .line 499
    cmp-long v13, v13, v15

    .line 500
    .line 501
    if-gez v13, :cond_4

    .line 502
    .line 503
    shl-int/lit8 v13, v4, 0x3

    .line 504
    .line 505
    add-int/2addr v13, v12

    .line 506
    aget-object v14, v3, v13

    .line 507
    .line 508
    aget-object v13, v5, v13

    .line 509
    .line 510
    check-cast v13, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 511
    .line 512
    invoke-interface {v13}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->performSave()Ljava/util/Map;

    .line 513
    .line 514
    .line 515
    move-result-object v13

    .line 516
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    .line 517
    .line 518
    .line 519
    move-result v15

    .line 520
    if-eqz v15, :cond_3

    .line 521
    .line 522
    invoke-interface {v2, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    goto :goto_5

    .line 526
    :cond_3
    invoke-interface {v2, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    :cond_4
    :goto_5
    shr-long/2addr v8, v11

    .line 530
    add-int/lit8 v12, v12, 0x1

    .line 531
    .line 532
    goto :goto_4

    .line 533
    :cond_5
    if-ne v10, v11, :cond_7

    .line 534
    .line 535
    :cond_6
    if-eq v4, v7, :cond_7

    .line 536
    .line 537
    add-int/lit8 v4, v4, 0x1

    .line 538
    .line 539
    goto :goto_3

    .line 540
    :cond_7
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    if-eqz v0, :cond_8

    .line 545
    .line 546
    goto :goto_6

    .line 547
    :cond_8
    move-object v1, v2

    .line 548
    :goto_6
    return-object v1

    .line 549
    :pswitch_10
    move-object/from16 v0, p1

    .line 550
    .line 551
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 552
    .line 553
    move-object/from16 v1, p2

    .line 554
    .line 555
    check-cast v1, Ljava/lang/Integer;

    .line 556
    .line 557
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    and-int/lit8 v3, v1, 0x3

    .line 562
    .line 563
    if-eq v3, v4, :cond_9

    .line 564
    .line 565
    move v6, v5

    .line 566
    :cond_9
    and-int/2addr v1, v5

    .line 567
    move-object v11, v0

    .line 568
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 569
    .line 570
    invoke-virtual {v11, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-eqz v0, :cond_a

    .line 575
    .line 576
    const-wide/16 v9, 0x0

    .line 577
    .line 578
    const/4 v12, 0x0

    .line 579
    const/4 v7, 0x0

    .line 580
    const/4 v8, 0x0

    .line 581
    invoke-static/range {v7 .. v12}, Landroidx/compose/material3/BadgeKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;I)V

    .line 582
    .line 583
    .line 584
    goto :goto_7

    .line 585
    :cond_a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 586
    .line 587
    .line 588
    :goto_7
    return-object v2

    .line 589
    :pswitch_11
    move-object/from16 v0, p1

    .line 590
    .line 591
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 592
    .line 593
    move-object/from16 v1, p2

    .line 594
    .line 595
    check-cast v1, Ljava/lang/Integer;

    .line 596
    .line 597
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    and-int/lit8 v3, v1, 0x3

    .line 602
    .line 603
    if-eq v3, v4, :cond_b

    .line 604
    .line 605
    move v6, v5

    .line 606
    :cond_b
    and-int/2addr v1, v5

    .line 607
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 608
    .line 609
    invoke-virtual {v0, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    if-eqz v1, :cond_c

    .line 614
    .line 615
    goto :goto_8

    .line 616
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 617
    .line 618
    .line 619
    :goto_8
    return-object v2

    .line 620
    :pswitch_12
    move-object/from16 v0, p1

    .line 621
    .line 622
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 623
    .line 624
    move-object/from16 v1, p2

    .line 625
    .line 626
    check-cast v1, Ljava/lang/Integer;

    .line 627
    .line 628
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 629
    .line 630
    .line 631
    move-result v1

    .line 632
    and-int/lit8 v3, v1, 0x3

    .line 633
    .line 634
    if-eq v3, v4, :cond_d

    .line 635
    .line 636
    move v6, v5

    .line 637
    :cond_d
    and-int/2addr v1, v5

    .line 638
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 639
    .line 640
    invoke-virtual {v0, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 641
    .line 642
    .line 643
    move-result v1

    .line 644
    if-eqz v1, :cond_e

    .line 645
    .line 646
    goto :goto_9

    .line 647
    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 648
    .line 649
    .line 650
    :goto_9
    return-object v2

    .line 651
    :pswitch_13
    move-object/from16 v0, p1

    .line 652
    .line 653
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 654
    .line 655
    move-object/from16 v1, p2

    .line 656
    .line 657
    check-cast v1, Ljava/lang/Integer;

    .line 658
    .line 659
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 660
    .line 661
    .line 662
    move-result v1

    .line 663
    and-int/lit8 v3, v1, 0x3

    .line 664
    .line 665
    if-eq v3, v4, :cond_f

    .line 666
    .line 667
    move v6, v5

    .line 668
    :cond_f
    and-int/2addr v1, v5

    .line 669
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 670
    .line 671
    invoke-virtual {v0, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 672
    .line 673
    .line 674
    move-result v1

    .line 675
    if-eqz v1, :cond_10

    .line 676
    .line 677
    goto :goto_a

    .line 678
    :cond_10
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 679
    .line 680
    .line 681
    :goto_a
    return-object v2

    .line 682
    :pswitch_14
    move-object/from16 v0, p1

    .line 683
    .line 684
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 685
    .line 686
    move-object/from16 v1, p2

    .line 687
    .line 688
    check-cast v1, Ljava/lang/Integer;

    .line 689
    .line 690
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 691
    .line 692
    .line 693
    move-result v1

    .line 694
    and-int/lit8 v3, v1, 0x3

    .line 695
    .line 696
    if-eq v3, v4, :cond_11

    .line 697
    .line 698
    move v6, v5

    .line 699
    :cond_11
    and-int/2addr v1, v5

    .line 700
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 701
    .line 702
    invoke-virtual {v0, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 703
    .line 704
    .line 705
    move-result v1

    .line 706
    if-eqz v1, :cond_12

    .line 707
    .line 708
    goto :goto_b

    .line 709
    :cond_12
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 710
    .line 711
    .line 712
    :goto_b
    return-object v2

    .line 713
    :pswitch_15
    move-object/from16 v0, p1

    .line 714
    .line 715
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 716
    .line 717
    move-object/from16 v1, p2

    .line 718
    .line 719
    check-cast v1, Ljava/lang/Integer;

    .line 720
    .line 721
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 722
    .line 723
    .line 724
    move-result v1

    .line 725
    and-int/lit8 v3, v1, 0x3

    .line 726
    .line 727
    if-eq v3, v4, :cond_13

    .line 728
    .line 729
    move v6, v5

    .line 730
    :cond_13
    and-int/2addr v1, v5

    .line 731
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 732
    .line 733
    invoke-virtual {v0, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 734
    .line 735
    .line 736
    move-result v1

    .line 737
    if-eqz v1, :cond_14

    .line 738
    .line 739
    goto :goto_c

    .line 740
    :cond_14
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 741
    .line 742
    .line 743
    :goto_c
    return-object v2

    .line 744
    :pswitch_16
    move-object/from16 v0, p1

    .line 745
    .line 746
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 747
    .line 748
    move-object/from16 v1, p2

    .line 749
    .line 750
    check-cast v1, Ljava/lang/Integer;

    .line 751
    .line 752
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 753
    .line 754
    .line 755
    move-result v1

    .line 756
    and-int/lit8 v3, v1, 0x3

    .line 757
    .line 758
    if-eq v3, v4, :cond_15

    .line 759
    .line 760
    move v6, v5

    .line 761
    :cond_15
    and-int/2addr v1, v5

    .line 762
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 763
    .line 764
    invoke-virtual {v0, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 765
    .line 766
    .line 767
    move-result v1

    .line 768
    if-eqz v1, :cond_16

    .line 769
    .line 770
    goto :goto_d

    .line 771
    :cond_16
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 772
    .line 773
    .line 774
    :goto_d
    return-object v2

    .line 775
    :pswitch_17
    move-object/from16 v0, p1

    .line 776
    .line 777
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 778
    .line 779
    move-object/from16 v1, p2

    .line 780
    .line 781
    check-cast v1, Ljava/lang/Integer;

    .line 782
    .line 783
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 784
    .line 785
    .line 786
    move-result v1

    .line 787
    and-int/lit8 v3, v1, 0x3

    .line 788
    .line 789
    if-eq v3, v4, :cond_17

    .line 790
    .line 791
    move v6, v5

    .line 792
    :cond_17
    and-int/2addr v1, v5

    .line 793
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 794
    .line 795
    invoke-virtual {v0, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 796
    .line 797
    .line 798
    move-result v1

    .line 799
    if-eqz v1, :cond_18

    .line 800
    .line 801
    goto :goto_e

    .line 802
    :cond_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 803
    .line 804
    .line 805
    :goto_e
    return-object v2

    .line 806
    :pswitch_18
    move-object/from16 v0, p1

    .line 807
    .line 808
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 809
    .line 810
    move-object/from16 v1, p2

    .line 811
    .line 812
    check-cast v1, Ljava/lang/Integer;

    .line 813
    .line 814
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 815
    .line 816
    .line 817
    move-result v1

    .line 818
    and-int/lit8 v3, v1, 0x3

    .line 819
    .line 820
    if-eq v3, v4, :cond_19

    .line 821
    .line 822
    move v6, v5

    .line 823
    :cond_19
    and-int/2addr v1, v5

    .line 824
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 825
    .line 826
    invoke-virtual {v0, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 827
    .line 828
    .line 829
    move-result v1

    .line 830
    if-eqz v1, :cond_1a

    .line 831
    .line 832
    goto :goto_f

    .line 833
    :cond_1a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 834
    .line 835
    .line 836
    :goto_f
    return-object v2

    .line 837
    :pswitch_19
    move-object/from16 v0, p1

    .line 838
    .line 839
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 840
    .line 841
    move-object/from16 v0, p2

    .line 842
    .line 843
    check-cast v0, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 844
    .line 845
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 846
    .line 847
    .line 848
    move-result v1

    .line 849
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    .line 854
    .line 855
    .line 856
    move-result v2

    .line 857
    const/high16 v7, -0x41000000    # -0.5f

    .line 858
    .line 859
    const/high16 v8, 0x3f000000    # 0.5f

    .line 860
    .line 861
    invoke-static {v2, v7, v8}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 862
    .line 863
    .line 864
    move-result v2

    .line 865
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 866
    .line 867
    .line 868
    move-result-object v2

    .line 869
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/DefaultPagerState;->getPageCount()I

    .line 870
    .line 871
    .line 872
    move-result v0

    .line 873
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    new-array v3, v3, [Ljava/lang/Object;

    .line 878
    .line 879
    aput-object v1, v3, v6

    .line 880
    .line 881
    aput-object v2, v3, v5

    .line 882
    .line 883
    aput-object v0, v3, v4

    .line 884
    .line 885
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    return-object v0

    .line 890
    :pswitch_1a
    move-object/from16 v0, p1

    .line 891
    .line 892
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 893
    .line 894
    move-object/from16 v0, p2

    .line 895
    .line 896
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 897
    .line 898
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;->performSave()Ljava/util/Map;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 903
    .line 904
    .line 905
    move-result v2

    .line 906
    if-eqz v2, :cond_1b

    .line 907
    .line 908
    goto :goto_10

    .line 909
    :cond_1b
    move-object v1, v0

    .line 910
    :goto_10
    return-object v1

    .line 911
    :pswitch_1b
    move-object/from16 v0, p1

    .line 912
    .line 913
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 914
    .line 915
    move-object/from16 v0, p2

    .line 916
    .line 917
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 918
    .line 919
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Lcoil3/util/AndroidSystemCallbacks;

    .line 920
    .line 921
    iget-object v1, v1, Lcoil3/util/AndroidSystemCallbacks;->imageLoader:Ljava/lang/Object;

    .line 922
    .line 923
    check-cast v1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 924
    .line 925
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 926
    .line 927
    .line 928
    move-result v1

    .line 929
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 930
    .line 931
    .line 932
    move-result-object v1

    .line 933
    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Lcoil3/util/AndroidSystemCallbacks;

    .line 934
    .line 935
    iget-object v0, v0, Lcoil3/util/AndroidSystemCallbacks;->activityCallbacks:Ljava/lang/Object;

    .line 936
    .line 937
    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 938
    .line 939
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 940
    .line 941
    .line 942
    move-result v0

    .line 943
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    new-array v2, v4, [Ljava/lang/Integer;

    .line 948
    .line 949
    aput-object v1, v2, v6

    .line 950
    .line 951
    aput-object v0, v2, v5

    .line 952
    .line 953
    invoke-static {v2}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    return-object v0

    .line 958
    :pswitch_1c
    move-object/from16 v0, p1

    .line 959
    .line 960
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 961
    .line 962
    move-object/from16 v1, p2

    .line 963
    .line 964
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 965
    .line 966
    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 967
    .line 968
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    .line 969
    .line 970
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeListSaver:Landroidx/cardview/widget/CardView$1;

    .line 971
    .line 972
    invoke-static {v1, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    new-array v1, v4, [Ljava/lang/Object;

    .line 977
    .line 978
    aput-object v2, v1, v6

    .line 979
    .line 980
    aput-object v0, v1, v5

    .line 981
    .line 982
    invoke-static {v1}, Lorg/jsoup/Jsoup;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    return-object v0

    .line 987
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

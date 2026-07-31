.class public final synthetic Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x20

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    iget-object v0, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v0, Ljava/util/List;

    .line 17
    .line 18
    move-object/from16 v1, p1

    .line 19
    .line 20
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    .line 21
    .line 22
    move-object/from16 v6, p2

    .line 23
    .line 24
    check-cast v6, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    move-object/from16 v15, p3

    .line 31
    .line 32
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 33
    .line 34
    move-object/from16 v7, p4

    .line 35
    .line 36
    check-cast v7, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    and-int/lit8 v1, v7, 0x30

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/16 v4, 0x10

    .line 57
    .line 58
    :goto_0
    or-int/2addr v7, v4

    .line 59
    :cond_1
    and-int/lit16 v1, v7, 0x91

    .line 60
    .line 61
    const/16 v4, 0x90

    .line 62
    .line 63
    if-eq v1, v4, :cond_2

    .line 64
    .line 65
    move v1, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move v1, v3

    .line 68
    :goto_1
    and-int/lit8 v4, v7, 0x1

    .line 69
    .line 70
    invoke-virtual {v15, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_6

    .line 75
    .line 76
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/lang/String;

    .line 81
    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    const-string v0, ""

    .line 85
    .line 86
    :cond_3
    move-object v5, v0

    .line 87
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/high16 v1, 0x428c0000    # 70.0f

    .line 92
    .line 93
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 94
    .line 95
    if-nez v0, :cond_4

    .line 96
    .line 97
    const v0, -0x2aa21e6f

    .line 98
    .line 99
    .line 100
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 101
    .line 102
    .line 103
    invoke-static {v10, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 108
    .line 109
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 114
    .line 115
    iget-wide v4, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 116
    .line 117
    sget-object v1, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 118
    .line 119
    invoke-static {v0, v4, v5, v1}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v0, v15, v3}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    const v0, -0x2a9d3d1c

    .line 131
    .line 132
    .line 133
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 134
    .line 135
    .line 136
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 137
    .line 138
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    move-object v4, v0

    .line 143
    check-cast v4, Landroid/content/Context;

    .line 144
    .line 145
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    sget-object v0, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 151
    .line 152
    const/4 v8, 0x0

    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    move-object v7, v6

    .line 156
    move-object v9, v8

    .line 157
    invoke-static/range {v4 .. v9}, Lokio/ByteString$Companion;->getRequestBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lorg/wikipedia/views/imageservice/ImageLoadListener;)Lcoil3/request/ImageRequest$Builder;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    :cond_5
    move-object v7, v8

    .line 166
    invoke-static {v10, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    new-instance v10, Landroidx/compose/ui/graphics/painter/ColorPainter;

    .line 171
    .line 172
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 173
    .line 174
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 179
    .line 180
    iget-wide v4, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 181
    .line 182
    invoke-direct {v10, v4, v5}, Landroidx/compose/ui/graphics/painter/ColorPainter;-><init>(J)V

    .line 183
    .line 184
    .line 185
    new-instance v11, Landroidx/compose/ui/graphics/painter/ColorPainter;

    .line 186
    .line 187
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 192
    .line 193
    iget-wide v0, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 194
    .line 195
    invoke-direct {v11, v0, v1}, Landroidx/compose/ui/graphics/painter/ColorPainter;-><init>(J)V

    .line 196
    .line 197
    .line 198
    const/16 v17, 0x6

    .line 199
    .line 200
    const/16 v18, 0x7be0

    .line 201
    .line 202
    const/4 v8, 0x0

    .line 203
    const/4 v12, 0x0

    .line 204
    const/4 v13, 0x0

    .line 205
    sget-object v14, Landroidx/compose/ui/layout/ContentScale$Companion;->Crop:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 206
    .line 207
    const v16, 0x91b0

    .line 208
    .line 209
    .line 210
    invoke-static/range {v7 .. v18}, Lcoil3/compose/AsyncImageKt;->AsyncImage-x1rPTaM(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/GapComposer;III)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_6
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 218
    .line 219
    .line 220
    :goto_2
    return-object v2

    .line 221
    :pswitch_0
    check-cast v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 222
    .line 223
    move-object/from16 v1, p1

    .line 224
    .line 225
    check-cast v1, Landroidx/compose/ui/text/font/FontFamily;

    .line 226
    .line 227
    move-object/from16 v2, p2

    .line 228
    .line 229
    check-cast v2, Landroidx/compose/ui/text/font/FontWeight;

    .line 230
    .line 231
    move-object/from16 v3, p3

    .line 232
    .line 233
    check-cast v3, Landroidx/compose/ui/text/font/FontStyle;

    .line 234
    .line 235
    move-object/from16 v4, p4

    .line 236
    .line 237
    check-cast v4, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 238
    .line 239
    iget-object v5, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 240
    .line 241
    iget v3, v3, Landroidx/compose/ui/text/font/FontStyle;->value:I

    .line 242
    .line 243
    iget v4, v4, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    .line 244
    .line 245
    check-cast v5, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 246
    .line 247
    invoke-virtual {v5, v1, v2, v3, v4}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve-DPcqOEQ(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    instance-of v2, v1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 252
    .line 253
    if-nez v2, :cond_7

    .line 254
    .line 255
    new-instance v2, Lcom/caverock/androidsvg/SVG;

    .line 256
    .line 257
    iget-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Lcom/caverock/androidsvg/SVG;

    .line 258
    .line 259
    invoke-direct {v2, v1, v3}, Lcom/caverock/androidsvg/SVG;-><init>(Landroidx/compose/ui/text/font/TypefaceResult$Immutable;Lcom/caverock/androidsvg/SVG;)V

    .line 260
    .line 261
    .line 262
    iput-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Lcom/caverock/androidsvg/SVG;

    .line 263
    .line 264
    iget-object v0, v2, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    check-cast v0, Landroid/graphics/Typeface;

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_7
    iget-object v0, v1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    check-cast v0, Landroid/graphics/Typeface;

    .line 278
    .line 279
    :goto_3
    return-object v0

    .line 280
    :pswitch_1
    move-object v6, v0

    .line 281
    check-cast v6, Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 282
    .line 283
    move-object/from16 v0, p1

    .line 284
    .line 285
    check-cast v0, Ljava/lang/Boolean;

    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    move-object/from16 v1, p2

    .line 292
    .line 293
    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 294
    .line 295
    move-object/from16 v7, p3

    .line 296
    .line 297
    check-cast v7, Landroidx/compose/ui/geometry/Offset;

    .line 298
    .line 299
    move-object/from16 v12, p4

    .line 300
    .line 301
    check-cast v12, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;

    .line 302
    .line 303
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 304
    .line 305
    .line 306
    move-result-wide v8

    .line 307
    shr-long v10, v8, v4

    .line 308
    .line 309
    long-to-int v10, v10

    .line 310
    int-to-float v10, v10

    .line 311
    const-wide v13, 0xffffffffL

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    and-long/2addr v8, v13

    .line 317
    long-to-int v8, v8

    .line 318
    int-to-float v8, v8

    .line 319
    move-wide/from16 p0, v13

    .line 320
    .line 321
    iget-wide v13, v7, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 322
    .line 323
    move v9, v4

    .line 324
    shr-long v4, v13, v9

    .line 325
    .line 326
    long-to-int v4, v4

    .line 327
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    const/4 v5, 0x0

    .line 332
    cmpg-float v11, v5, v4

    .line 333
    .line 334
    if-gtz v11, :cond_8

    .line 335
    .line 336
    cmpg-float v4, v4, v10

    .line 337
    .line 338
    if-gtz v4, :cond_8

    .line 339
    .line 340
    and-long v13, v13, p0

    .line 341
    .line 342
    long-to-int v4, v13

    .line 343
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 344
    .line 345
    .line 346
    move-result v4

    .line 347
    cmpg-float v11, v5, v4

    .line 348
    .line 349
    if-gtz v11, :cond_8

    .line 350
    .line 351
    cmpg-float v4, v4, v8

    .line 352
    .line 353
    if-gtz v4, :cond_8

    .line 354
    .line 355
    const/4 v4, 0x1

    .line 356
    goto :goto_4

    .line 357
    :cond_8
    move v4, v3

    .line 358
    :goto_4
    iget-wide v13, v7, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 359
    .line 360
    if-eqz v4, :cond_9

    .line 361
    .line 362
    goto :goto_7

    .line 363
    :cond_9
    move/from16 p2, v9

    .line 364
    .line 365
    move v4, v10

    .line 366
    shr-long v9, v13, p2

    .line 367
    .line 368
    long-to-int v7, v9

    .line 369
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 370
    .line 371
    .line 372
    move-result v9

    .line 373
    cmpg-float v9, v9, v5

    .line 374
    .line 375
    if-gez v9, :cond_a

    .line 376
    .line 377
    move v10, v5

    .line 378
    goto :goto_5

    .line 379
    :cond_a
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 380
    .line 381
    .line 382
    move-result v9

    .line 383
    cmpl-float v9, v9, v4

    .line 384
    .line 385
    if-lez v9, :cond_b

    .line 386
    .line 387
    move v10, v4

    .line 388
    goto :goto_5

    .line 389
    :cond_b
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 390
    .line 391
    .line 392
    move-result v10

    .line 393
    :goto_5
    and-long v13, v13, p0

    .line 394
    .line 395
    long-to-int v4, v13

    .line 396
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 397
    .line 398
    .line 399
    move-result v7

    .line 400
    cmpg-float v7, v7, v5

    .line 401
    .line 402
    if-gez v7, :cond_c

    .line 403
    .line 404
    move v8, v5

    .line 405
    goto :goto_6

    .line 406
    :cond_c
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 407
    .line 408
    .line 409
    move-result v5

    .line 410
    cmpl-float v5, v5, v8

    .line 411
    .line 412
    if-lez v5, :cond_d

    .line 413
    .line 414
    goto :goto_6

    .line 415
    :cond_d
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 416
    .line 417
    .line 418
    move-result v8

    .line 419
    :goto_6
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    int-to-long v4, v4

    .line 424
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 425
    .line 426
    .line 427
    move-result v7

    .line 428
    int-to-long v7, v7

    .line 429
    shl-long v4, v4, p2

    .line 430
    .line 431
    and-long v7, v7, p0

    .line 432
    .line 433
    or-long v13, v4, v7

    .line 434
    .line 435
    :goto_7
    invoke-virtual {v6, v1, v13, v14}, Landroidx/compose/foundation/text/selection/SelectionManager;->convertToContainerCoordinates-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 436
    .line 437
    .line 438
    move-result-wide v7

    .line 439
    const-wide v4, 0x7fffffff7fffffffL

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    and-long/2addr v4, v7

    .line 445
    const-wide v9, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    cmp-long v1, v4, v9

    .line 451
    .line 452
    if-eqz v1, :cond_e

    .line 453
    .line 454
    invoke-virtual {v6, v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->setInTouchMode(Z)V

    .line 455
    .line 456
    .line 457
    const/4 v0, 0x0

    .line 458
    iput-object v0, v6, Landroidx/compose/foundation/text/selection/SelectionManager;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    .line 459
    .line 460
    const-wide v9, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    const/4 v11, 0x0

    .line 466
    invoke-virtual/range {v6 .. v12}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelection-jyLRC_s$foundation(JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;)Z

    .line 467
    .line 468
    .line 469
    iget-object v0, v6, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    .line 470
    .line 471
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusRequester;->requestFocus-3ESFkO8$default(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 472
    .line 473
    .line 474
    iput-boolean v3, v6, Landroidx/compose/foundation/text/selection/SelectionManager;->showToolbar:Z

    .line 475
    .line 476
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelectionToolbar()V

    .line 477
    .line 478
    .line 479
    const/4 v15, 0x1

    .line 480
    iput-boolean v15, v6, Landroidx/compose/foundation/text/selection/SelectionManager;->isLongPressOrClickSelection:Z

    .line 481
    .line 482
    :cond_e
    return-object v2

    .line 483
    :pswitch_2
    check-cast v0, Landroidx/sqlite/db/SupportSQLiteQuery;

    .line 484
    .line 485
    move-object/from16 v1, p1

    .line 486
    .line 487
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    .line 488
    .line 489
    move-object/from16 v1, p2

    .line 490
    .line 491
    check-cast v1, Landroid/database/sqlite/SQLiteCursorDriver;

    .line 492
    .line 493
    move-object/from16 v2, p3

    .line 494
    .line 495
    check-cast v2, Ljava/lang/String;

    .line 496
    .line 497
    move-object/from16 v3, p4

    .line 498
    .line 499
    check-cast v3, Landroid/database/sqlite/SQLiteQuery;

    .line 500
    .line 501
    new-instance v4, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;

    .line 502
    .line 503
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    invoke-direct {v4, v3}, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 507
    .line 508
    .line 509
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteQuery;->bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V

    .line 510
    .line 511
    .line 512
    new-instance v0, Landroid/database/sqlite/SQLiteCursor;

    .line 513
    .line 514
    invoke-direct {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 515
    .line 516
    .line 517
    return-object v0

    .line 518
    nop

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

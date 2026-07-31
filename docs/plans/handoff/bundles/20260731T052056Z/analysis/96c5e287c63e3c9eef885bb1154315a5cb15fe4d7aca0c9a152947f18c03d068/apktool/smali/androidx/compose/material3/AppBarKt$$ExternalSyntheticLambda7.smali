.class public final synthetic Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;->$r8$classId:I

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
    .locals 40

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 4
    .line 5
    const/high16 v1, 0x41200000    # 10.0f

    .line 6
    .line 7
    const v2, 0x7f0802e2

    .line 8
    .line 9
    .line 10
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const/16 v5, 0x12

    .line 13
    .line 14
    const/4 v6, 0x4

    .line 15
    const/high16 v7, 0x41a00000    # 20.0f

    .line 16
    .line 17
    sget-object v8, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 18
    .line 19
    const/high16 v9, 0x41800000    # 16.0f

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 23
    .line 24
    const/4 v12, 0x2

    .line 25
    const/16 v13, 0x10

    .line 26
    .line 27
    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 28
    .line 29
    const/4 v15, 0x1

    .line 30
    const/16 p0, 0x20

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    packed-switch v0, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    move-object/from16 v0, p1

    .line 37
    .line 38
    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    .line 39
    .line 40
    move-object/from16 v1, p2

    .line 41
    .line 42
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 43
    .line 44
    move-object/from16 v2, p3

    .line 45
    .line 46
    check-cast v2, Landroidx/compose/ui/unit/Constraints;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v9}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    mul-int/2addr v3, v12

    .line 59
    iget-wide v9, v2, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 60
    .line 61
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    add-int v11, v4, v3

    .line 66
    .line 67
    iget-wide v4, v2, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 68
    .line 69
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    add-int v12, v2, v3

    .line 74
    .line 75
    const/4 v14, 0x0

    .line 76
    const/16 v15, 0xc

    .line 77
    .line 78
    const/4 v13, 0x0

    .line 79
    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget v2, v1, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 88
    .line 89
    iget v3, v1, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 90
    .line 91
    new-instance v4, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda12;

    .line 92
    .line 93
    const/16 v5, 0xf

    .line 94
    .line 95
    invoke-direct {v4, v1, v5}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda12;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v2, v3, v8, v4}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    return-object v0

    .line 103
    :pswitch_0
    move-object/from16 v0, p1

    .line 104
    .line 105
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 106
    .line 107
    move-object/from16 v1, p2

    .line 108
    .line 109
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 110
    .line 111
    move-object/from16 v2, p3

    .line 112
    .line 113
    check-cast v2, Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    and-int/lit8 v0, v2, 0x11

    .line 123
    .line 124
    if-eq v0, v13, :cond_0

    .line 125
    .line 126
    move v4, v15

    .line 127
    :cond_0
    and-int/lit8 v0, v2, 0x1

    .line 128
    .line 129
    invoke-virtual {v1, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_1

    .line 134
    .line 135
    const/high16 v0, 0x41000000    # 8.0f

    .line 136
    .line 137
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v11, v0}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 142
    .line 143
    .line 144
    move-result-object v17

    .line 145
    const v0, 0x7f1201f8

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v16

    .line 152
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 159
    .line 160
    iget-object v0, v0, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 161
    .line 162
    const/16 v38, 0x0

    .line 163
    .line 164
    const v39, 0x1fffc

    .line 165
    .line 166
    .line 167
    const-wide/16 v18, 0x0

    .line 168
    .line 169
    const/16 v20, 0x0

    .line 170
    .line 171
    const-wide/16 v21, 0x0

    .line 172
    .line 173
    const/16 v23, 0x0

    .line 174
    .line 175
    const/16 v24, 0x0

    .line 176
    .line 177
    const-wide/16 v25, 0x0

    .line 178
    .line 179
    const/16 v27, 0x0

    .line 180
    .line 181
    const-wide/16 v28, 0x0

    .line 182
    .line 183
    const/16 v30, 0x0

    .line 184
    .line 185
    const/16 v31, 0x0

    .line 186
    .line 187
    const/16 v32, 0x0

    .line 188
    .line 189
    const/16 v33, 0x0

    .line 190
    .line 191
    const/16 v34, 0x0

    .line 192
    .line 193
    const/16 v37, 0x0

    .line 194
    .line 195
    move-object/from16 v35, v0

    .line 196
    .line 197
    move-object/from16 v36, v1

    .line 198
    .line 199
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 200
    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_1
    move-object/from16 v36, v1

    .line 204
    .line 205
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 206
    .line 207
    .line 208
    :goto_0
    return-object v14

    .line 209
    :pswitch_1
    move-object/from16 v0, p1

    .line 210
    .line 211
    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemScopeImpl;

    .line 212
    .line 213
    move-object/from16 v1, p2

    .line 214
    .line 215
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 216
    .line 217
    move-object/from16 v2, p3

    .line 218
    .line 219
    check-cast v2, Ljava/lang/Integer;

    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    and-int/lit8 v0, v2, 0x11

    .line 229
    .line 230
    if-eq v0, v13, :cond_2

    .line 231
    .line 232
    move v4, v15

    .line 233
    :cond_2
    and-int/lit8 v0, v2, 0x1

    .line 234
    .line 235
    invoke-virtual {v1, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_3

    .line 240
    .line 241
    const/high16 v0, 0x42800000    # 64.0f

    .line 242
    .line 243
    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 248
    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 252
    .line 253
    .line 254
    :goto_1
    return-object v14

    .line 255
    :pswitch_2
    move-object/from16 v0, p1

    .line 256
    .line 257
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 258
    .line 259
    move-object/from16 v1, p2

    .line 260
    .line 261
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 262
    .line 263
    move-object/from16 v2, p3

    .line 264
    .line 265
    check-cast v2, Ljava/lang/Integer;

    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    and-int/lit8 v3, v2, 0x6

    .line 275
    .line 276
    if-nez v3, :cond_5

    .line 277
    .line 278
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-eqz v3, :cond_4

    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_4
    move v6, v12

    .line 286
    :goto_2
    or-int/2addr v2, v6

    .line 287
    :cond_5
    and-int/lit8 v3, v2, 0x13

    .line 288
    .line 289
    if-eq v3, v5, :cond_6

    .line 290
    .line 291
    move v4, v15

    .line 292
    :cond_6
    and-int/2addr v2, v15

    .line 293
    invoke-virtual {v1, v2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_7

    .line 298
    .line 299
    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->fillParentMaxWidth$default(Landroidx/compose/foundation/lazy/LazyItemScopeImpl;)Landroidx/compose/ui/Modifier;

    .line 300
    .line 301
    .line 302
    move-result-object v17

    .line 303
    const v0, 0x7f120210

    .line 304
    .line 305
    .line 306
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v16

    .line 310
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 311
    .line 312
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 317
    .line 318
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 319
    .line 320
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 321
    .line 322
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 327
    .line 328
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 329
    .line 330
    const/16 v38, 0x0

    .line 331
    .line 332
    const v39, 0x1fff8

    .line 333
    .line 334
    .line 335
    const/16 v20, 0x0

    .line 336
    .line 337
    const-wide/16 v21, 0x0

    .line 338
    .line 339
    const/16 v23, 0x0

    .line 340
    .line 341
    const/16 v24, 0x0

    .line 342
    .line 343
    const-wide/16 v25, 0x0

    .line 344
    .line 345
    const/16 v27, 0x0

    .line 346
    .line 347
    const-wide/16 v28, 0x0

    .line 348
    .line 349
    const/16 v30, 0x0

    .line 350
    .line 351
    const/16 v31, 0x0

    .line 352
    .line 353
    const/16 v32, 0x0

    .line 354
    .line 355
    const/16 v33, 0x0

    .line 356
    .line 357
    const/16 v34, 0x0

    .line 358
    .line 359
    const/16 v37, 0x0

    .line 360
    .line 361
    move-object/from16 v35, v0

    .line 362
    .line 363
    move-object/from16 v36, v1

    .line 364
    .line 365
    move-wide/from16 v18, v2

    .line 366
    .line 367
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 368
    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_7
    move-object/from16 v36, v1

    .line 372
    .line 373
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 374
    .line 375
    .line 376
    :goto_3
    return-object v14

    .line 377
    :pswitch_3
    move-object/from16 v0, p1

    .line 378
    .line 379
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 380
    .line 381
    move-object/from16 v1, p2

    .line 382
    .line 383
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 384
    .line 385
    move-object/from16 v2, p3

    .line 386
    .line 387
    check-cast v2, Ljava/lang/Integer;

    .line 388
    .line 389
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    and-int/lit8 v0, v2, 0x11

    .line 397
    .line 398
    if-eq v0, v13, :cond_8

    .line 399
    .line 400
    move v4, v15

    .line 401
    :cond_8
    and-int/lit8 v0, v2, 0x1

    .line 402
    .line 403
    invoke-virtual {v1, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_9

    .line 408
    .line 409
    const v0, 0x7f120518

    .line 410
    .line 411
    .line 412
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v16

    .line 416
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 417
    .line 418
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 423
    .line 424
    iget-wide v2, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->placeholderColor:J

    .line 425
    .line 426
    const/16 v38, 0x0

    .line 427
    .line 428
    const v39, 0x3fffa

    .line 429
    .line 430
    .line 431
    const/16 v17, 0x0

    .line 432
    .line 433
    const/16 v20, 0x0

    .line 434
    .line 435
    const-wide/16 v21, 0x0

    .line 436
    .line 437
    const/16 v23, 0x0

    .line 438
    .line 439
    const/16 v24, 0x0

    .line 440
    .line 441
    const-wide/16 v25, 0x0

    .line 442
    .line 443
    const/16 v27, 0x0

    .line 444
    .line 445
    const-wide/16 v28, 0x0

    .line 446
    .line 447
    const/16 v30, 0x0

    .line 448
    .line 449
    const/16 v31, 0x0

    .line 450
    .line 451
    const/16 v32, 0x0

    .line 452
    .line 453
    const/16 v33, 0x0

    .line 454
    .line 455
    const/16 v34, 0x0

    .line 456
    .line 457
    const/16 v35, 0x0

    .line 458
    .line 459
    const/16 v37, 0x0

    .line 460
    .line 461
    move-object/from16 v36, v1

    .line 462
    .line 463
    move-wide/from16 v18, v2

    .line 464
    .line 465
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 466
    .line 467
    .line 468
    goto :goto_4

    .line 469
    :cond_9
    move-object/from16 v36, v1

    .line 470
    .line 471
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 472
    .line 473
    .line 474
    :goto_4
    return-object v14

    .line 475
    :pswitch_4
    move-object/from16 v0, p1

    .line 476
    .line 477
    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 478
    .line 479
    move-object/from16 v1, p2

    .line 480
    .line 481
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 482
    .line 483
    move-object/from16 v2, p3

    .line 484
    .line 485
    check-cast v2, Ljava/lang/Integer;

    .line 486
    .line 487
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    .line 493
    .line 494
    and-int/lit8 v7, v2, 0x6

    .line 495
    .line 496
    if-nez v7, :cond_b

    .line 497
    .line 498
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v7

    .line 502
    if-eqz v7, :cond_a

    .line 503
    .line 504
    goto :goto_5

    .line 505
    :cond_a
    move v6, v12

    .line 506
    :goto_5
    or-int/2addr v2, v6

    .line 507
    :cond_b
    and-int/lit8 v6, v2, 0x13

    .line 508
    .line 509
    if-eq v6, v5, :cond_c

    .line 510
    .line 511
    move v5, v15

    .line 512
    goto :goto_6

    .line 513
    :cond_c
    move v5, v4

    .line 514
    :goto_6
    and-int/2addr v2, v15

    .line 515
    invoke-virtual {v1, v2, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    if-eqz v2, :cond_f

    .line 520
    .line 521
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 522
    .line 523
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    const/high16 v2, 0x41c00000    # 24.0f

    .line 528
    .line 529
    invoke-static {v0, v2, v10, v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-static {v1}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/ScrollState;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    invoke-static {v0, v5, v15}, Landroidx/compose/foundation/ImageKt;->scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Z)Landroidx/compose/ui/Modifier;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 542
    .line 543
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 544
    .line 545
    invoke-static {v5, v6, v1, v4}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 546
    .line 547
    .line 548
    move-result-object v5

    .line 549
    iget-wide v6, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 550
    .line 551
    ushr-long v8, v6, p0

    .line 552
    .line 553
    xor-long/2addr v6, v8

    .line 554
    long-to-int v6, v6

    .line 555
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 556
    .line 557
    .line 558
    move-result-object v7

    .line 559
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 564
    .line 565
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 569
    .line 570
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 571
    .line 572
    .line 573
    iget-boolean v9, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 574
    .line 575
    if-eqz v9, :cond_d

    .line 576
    .line 577
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 578
    .line 579
    .line 580
    goto :goto_7

    .line 581
    :cond_d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 582
    .line 583
    .line 584
    :goto_7
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 585
    .line 586
    invoke-static {v1, v5, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 587
    .line 588
    .line 589
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 590
    .line 591
    invoke-static {v1, v7, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 592
    .line 593
    .line 594
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 595
    .line 596
    .line 597
    move-result-object v5

    .line 598
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 599
    .line 600
    invoke-static {v1, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 601
    .line 602
    .line 603
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 604
    .line 605
    invoke-static {v1, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 606
    .line 607
    .line 608
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 609
    .line 610
    invoke-static {v1, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 611
    .line 612
    .line 613
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 614
    .line 615
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 616
    .line 617
    .line 618
    move-result-object v5

    .line 619
    const/high16 v9, 0x42000000    # 32.0f

    .line 620
    .line 621
    const/4 v10, 0x5

    .line 622
    const/4 v6, 0x0

    .line 623
    const/high16 v7, 0x42680000    # 58.0f

    .line 624
    .line 625
    const/4 v8, 0x0

    .line 626
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 627
    .line 628
    .line 629
    move-result-object v17

    .line 630
    const v3, 0x7f12020a

    .line 631
    .line 632
    .line 633
    invoke-static {v3, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v16

    .line 637
    sget-object v3, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 638
    .line 639
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    check-cast v3, Landroidx/compose/material3/Typography;

    .line 644
    .line 645
    iget-object v3, v3, Landroidx/compose/material3/Typography;->headlineLarge:Landroidx/compose/ui/text/TextStyle;

    .line 646
    .line 647
    sget-object v23, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 648
    .line 649
    const/16 v29, 0x0

    .line 650
    .line 651
    const v30, 0xfffffb

    .line 652
    .line 653
    .line 654
    const-wide/16 v19, 0x0

    .line 655
    .line 656
    const-wide/16 v21, 0x0

    .line 657
    .line 658
    const/16 v24, 0x0

    .line 659
    .line 660
    const-wide/16 v25, 0x0

    .line 661
    .line 662
    const-wide/16 v27, 0x0

    .line 663
    .line 664
    move-object/from16 v18, v3

    .line 665
    .line 666
    invoke-static/range {v18 .. v30}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 667
    .line 668
    .line 669
    move-result-object v35

    .line 670
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 671
    .line 672
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 677
    .line 678
    iget-wide v5, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 679
    .line 680
    new-instance v3, Landroidx/compose/ui/text/style/TextAlign;

    .line 681
    .line 682
    const/4 v7, 0x3

    .line 683
    invoke-direct {v3, v7}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 684
    .line 685
    .line 686
    const/16 v38, 0x0

    .line 687
    .line 688
    const v39, 0x1fbf8

    .line 689
    .line 690
    .line 691
    const/16 v20, 0x0

    .line 692
    .line 693
    const/16 v23, 0x0

    .line 694
    .line 695
    const-wide/16 v28, 0x0

    .line 696
    .line 697
    const/16 v30, 0x0

    .line 698
    .line 699
    const/16 v31, 0x0

    .line 700
    .line 701
    const/16 v32, 0x0

    .line 702
    .line 703
    const/16 v33, 0x0

    .line 704
    .line 705
    const/16 v34, 0x0

    .line 706
    .line 707
    const/16 v37, 0x30

    .line 708
    .line 709
    move-object/from16 v36, v1

    .line 710
    .line 711
    move-object/from16 v27, v3

    .line 712
    .line 713
    move-wide/from16 v18, v5

    .line 714
    .line 715
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 716
    .line 717
    .line 718
    const v3, 0x39b562b4

    .line 719
    .line 720
    .line 721
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 722
    .line 723
    .line 724
    sget-object v3, Lorg/wikipedia/feed/onboarding/ExploreFeedUpdatePromptActivityKt;->onboardingItems:Ljava/util/List;

    .line 725
    .line 726
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 727
    .line 728
    .line 729
    move-result-object v3

    .line 730
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 731
    .line 732
    .line 733
    move-result v5

    .line 734
    if-eqz v5, :cond_e

    .line 735
    .line 736
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v5

    .line 740
    check-cast v5, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 741
    .line 742
    const/16 v19, 0x0

    .line 743
    .line 744
    const/16 v21, 0x7

    .line 745
    .line 746
    const/16 v17, 0x0

    .line 747
    .line 748
    const/16 v18, 0x0

    .line 749
    .line 750
    move-object/from16 v16, v0

    .line 751
    .line 752
    move/from16 v20, v2

    .line 753
    .line 754
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    const/4 v2, 0x6

    .line 759
    invoke-static {v0, v5, v1, v2, v4}, Lorg/wikipedia/compose/components/TabsBoxKt;->OnboardingListItem(Landroidx/compose/ui/Modifier;Lorg/wikipedia/compose/components/OnboardingItem;Landroidx/compose/runtime/GapComposer;II)V

    .line 760
    .line 761
    .line 762
    move-object/from16 v0, v16

    .line 763
    .line 764
    move/from16 v2, v20

    .line 765
    .line 766
    goto :goto_8

    .line 767
    :cond_e
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 771
    .line 772
    .line 773
    goto :goto_9

    .line 774
    :cond_f
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 775
    .line 776
    .line 777
    :goto_9
    return-object v14

    .line 778
    :pswitch_5
    move-object/from16 v0, p1

    .line 779
    .line 780
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 781
    .line 782
    move-object/from16 v1, p2

    .line 783
    .line 784
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 785
    .line 786
    move-object/from16 v2, p3

    .line 787
    .line 788
    check-cast v2, Ljava/lang/Integer;

    .line 789
    .line 790
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 791
    .line 792
    .line 793
    move-result v2

    .line 794
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 795
    .line 796
    .line 797
    and-int/lit8 v0, v2, 0x11

    .line 798
    .line 799
    if-eq v0, v13, :cond_10

    .line 800
    .line 801
    move v4, v15

    .line 802
    :cond_10
    and-int/lit8 v0, v2, 0x1

    .line 803
    .line 804
    invoke-virtual {v1, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 805
    .line 806
    .line 807
    move-result v0

    .line 808
    if-eqz v0, :cond_11

    .line 809
    .line 810
    goto :goto_a

    .line 811
    :cond_11
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 812
    .line 813
    .line 814
    :goto_a
    return-object v14

    .line 815
    :pswitch_6
    move-object/from16 v0, p1

    .line 816
    .line 817
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 818
    .line 819
    move-object/from16 v1, p2

    .line 820
    .line 821
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 822
    .line 823
    move-object/from16 v2, p3

    .line 824
    .line 825
    check-cast v2, Ljava/lang/Integer;

    .line 826
    .line 827
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 828
    .line 829
    .line 830
    move-result v2

    .line 831
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 832
    .line 833
    .line 834
    and-int/lit8 v0, v2, 0x11

    .line 835
    .line 836
    if-eq v0, v13, :cond_12

    .line 837
    .line 838
    move v4, v15

    .line 839
    :cond_12
    and-int/lit8 v0, v2, 0x1

    .line 840
    .line 841
    invoke-virtual {v1, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 842
    .line 843
    .line 844
    move-result v0

    .line 845
    if-eqz v0, :cond_13

    .line 846
    .line 847
    invoke-static {v11, v9}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 852
    .line 853
    .line 854
    goto :goto_b

    .line 855
    :cond_13
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 856
    .line 857
    .line 858
    :goto_b
    return-object v14

    .line 859
    :pswitch_7
    move-object/from16 v0, p1

    .line 860
    .line 861
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 862
    .line 863
    move-object/from16 v1, p2

    .line 864
    .line 865
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 866
    .line 867
    move-object/from16 v2, p3

    .line 868
    .line 869
    check-cast v2, Ljava/lang/Integer;

    .line 870
    .line 871
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 872
    .line 873
    .line 874
    move-result v2

    .line 875
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 876
    .line 877
    .line 878
    and-int/lit8 v0, v2, 0x11

    .line 879
    .line 880
    if-eq v0, v13, :cond_14

    .line 881
    .line 882
    move v4, v15

    .line 883
    :cond_14
    and-int/lit8 v0, v2, 0x1

    .line 884
    .line 885
    invoke-virtual {v1, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 886
    .line 887
    .line 888
    move-result v0

    .line 889
    if-eqz v0, :cond_15

    .line 890
    .line 891
    invoke-static {v11, v9}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 896
    .line 897
    .line 898
    goto :goto_c

    .line 899
    :cond_15
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 900
    .line 901
    .line 902
    :goto_c
    return-object v14

    .line 903
    :pswitch_8
    move-object/from16 v0, p1

    .line 904
    .line 905
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 906
    .line 907
    move-object/from16 v1, p2

    .line 908
    .line 909
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 910
    .line 911
    move-object/from16 v2, p3

    .line 912
    .line 913
    check-cast v2, Ljava/lang/Integer;

    .line 914
    .line 915
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 916
    .line 917
    .line 918
    move-result v2

    .line 919
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 920
    .line 921
    .line 922
    and-int/lit8 v0, v2, 0x11

    .line 923
    .line 924
    if-eq v0, v13, :cond_16

    .line 925
    .line 926
    move v4, v15

    .line 927
    :cond_16
    and-int/lit8 v0, v2, 0x1

    .line 928
    .line 929
    invoke-virtual {v1, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 930
    .line 931
    .line 932
    move-result v0

    .line 933
    if-eqz v0, :cond_17

    .line 934
    .line 935
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 936
    .line 937
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 942
    .line 943
    iget-wide v2, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 944
    .line 945
    const/16 v38, 0x0

    .line 946
    .line 947
    const v39, 0x3fffa

    .line 948
    .line 949
    .line 950
    const-string v16, "Done"

    .line 951
    .line 952
    const/16 v17, 0x0

    .line 953
    .line 954
    const/16 v20, 0x0

    .line 955
    .line 956
    const-wide/16 v21, 0x0

    .line 957
    .line 958
    const/16 v23, 0x0

    .line 959
    .line 960
    const/16 v24, 0x0

    .line 961
    .line 962
    const-wide/16 v25, 0x0

    .line 963
    .line 964
    const/16 v27, 0x0

    .line 965
    .line 966
    const-wide/16 v28, 0x0

    .line 967
    .line 968
    const/16 v30, 0x0

    .line 969
    .line 970
    const/16 v31, 0x0

    .line 971
    .line 972
    const/16 v32, 0x0

    .line 973
    .line 974
    const/16 v33, 0x0

    .line 975
    .line 976
    const/16 v34, 0x0

    .line 977
    .line 978
    const/16 v35, 0x0

    .line 979
    .line 980
    const/16 v37, 0x6

    .line 981
    .line 982
    move-object/from16 v36, v1

    .line 983
    .line 984
    move-wide/from16 v18, v2

    .line 985
    .line 986
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 987
    .line 988
    .line 989
    goto :goto_d

    .line 990
    :cond_17
    move-object/from16 v36, v1

    .line 991
    .line 992
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 993
    .line 994
    .line 995
    :goto_d
    return-object v14

    .line 996
    :pswitch_9
    move-object/from16 v0, p1

    .line 997
    .line 998
    check-cast v0, Ljava/lang/String;

    .line 999
    .line 1000
    move-object/from16 v1, p2

    .line 1001
    .line 1002
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1003
    .line 1004
    move-object/from16 v2, p3

    .line 1005
    .line 1006
    check-cast v2, Ljava/lang/Integer;

    .line 1007
    .line 1008
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1009
    .line 1010
    .line 1011
    move-result v2

    .line 1012
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1013
    .line 1014
    .line 1015
    and-int/lit8 v0, v2, 0x11

    .line 1016
    .line 1017
    if-eq v0, v13, :cond_18

    .line 1018
    .line 1019
    move v0, v15

    .line 1020
    goto :goto_e

    .line 1021
    :cond_18
    move v0, v4

    .line 1022
    :goto_e
    and-int/2addr v2, v15

    .line 1023
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v0

    .line 1027
    if-eqz v0, :cond_19

    .line 1028
    .line 1029
    invoke-static {v11, v7}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v15

    .line 1033
    const/16 v19, 0x0

    .line 1034
    .line 1035
    const/16 v20, 0xe

    .line 1036
    .line 1037
    const/high16 v16, 0x40800000    # 4.0f

    .line 1038
    .line 1039
    const/16 v17, 0x0

    .line 1040
    .line 1041
    const/16 v18, 0x0

    .line 1042
    .line 1043
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v18

    .line 1047
    const v0, 0x7f080175

    .line 1048
    .line 1049
    .line 1050
    invoke-static {v0, v4, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v16

    .line 1054
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1055
    .line 1056
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1061
    .line 1062
    iget-wide v2, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->destructiveColor:J

    .line 1063
    .line 1064
    const/16 v22, 0x1b8

    .line 1065
    .line 1066
    const/16 v23, 0x0

    .line 1067
    .line 1068
    const/16 v17, 0x0

    .line 1069
    .line 1070
    move-object/from16 v21, v1

    .line 1071
    .line 1072
    move-wide/from16 v19, v2

    .line 1073
    .line 1074
    invoke-static/range {v16 .. v23}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1075
    .line 1076
    .line 1077
    goto :goto_f

    .line 1078
    :cond_19
    move-object/from16 v21, v1

    .line 1079
    .line 1080
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1081
    .line 1082
    .line 1083
    :goto_f
    return-object v14

    .line 1084
    :pswitch_a
    move-object/from16 v0, p1

    .line 1085
    .line 1086
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1087
    .line 1088
    move-object/from16 v1, p2

    .line 1089
    .line 1090
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1091
    .line 1092
    move-object/from16 v2, p3

    .line 1093
    .line 1094
    check-cast v2, Ljava/lang/Integer;

    .line 1095
    .line 1096
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1097
    .line 1098
    .line 1099
    move-result v2

    .line 1100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1101
    .line 1102
    .line 1103
    and-int/lit8 v0, v2, 0x11

    .line 1104
    .line 1105
    if-eq v0, v13, :cond_1a

    .line 1106
    .line 1107
    move v4, v15

    .line 1108
    :cond_1a
    and-int/lit8 v0, v2, 0x1

    .line 1109
    .line 1110
    invoke-virtual {v1, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1111
    .line 1112
    .line 1113
    move-result v0

    .line 1114
    if-eqz v0, :cond_1b

    .line 1115
    .line 1116
    goto :goto_10

    .line 1117
    :cond_1b
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1118
    .line 1119
    .line 1120
    :goto_10
    return-object v14

    .line 1121
    :pswitch_b
    move-object/from16 v0, p1

    .line 1122
    .line 1123
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1124
    .line 1125
    move-object/from16 v1, p2

    .line 1126
    .line 1127
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1128
    .line 1129
    move-object/from16 v2, p3

    .line 1130
    .line 1131
    check-cast v2, Ljava/lang/Integer;

    .line 1132
    .line 1133
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1134
    .line 1135
    .line 1136
    move-result v2

    .line 1137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1138
    .line 1139
    .line 1140
    and-int/lit8 v0, v2, 0x11

    .line 1141
    .line 1142
    if-eq v0, v13, :cond_1c

    .line 1143
    .line 1144
    move v4, v15

    .line 1145
    :cond_1c
    and-int/lit8 v0, v2, 0x1

    .line 1146
    .line 1147
    invoke-virtual {v1, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1148
    .line 1149
    .line 1150
    move-result v0

    .line 1151
    if-eqz v0, :cond_1d

    .line 1152
    .line 1153
    goto :goto_11

    .line 1154
    :cond_1d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1155
    .line 1156
    .line 1157
    :goto_11
    return-object v14

    .line 1158
    :pswitch_c
    move-object/from16 v0, p1

    .line 1159
    .line 1160
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .line 1161
    .line 1162
    move-object/from16 v1, p2

    .line 1163
    .line 1164
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1165
    .line 1166
    move-object/from16 v3, p3

    .line 1167
    .line 1168
    check-cast v3, Ljava/lang/Integer;

    .line 1169
    .line 1170
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1171
    .line 1172
    .line 1173
    move-result v3

    .line 1174
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1175
    .line 1176
    .line 1177
    and-int/lit8 v0, v3, 0x11

    .line 1178
    .line 1179
    if-eq v0, v13, :cond_1e

    .line 1180
    .line 1181
    move v0, v15

    .line 1182
    goto :goto_12

    .line 1183
    :cond_1e
    move v0, v4

    .line 1184
    :goto_12
    and-int/2addr v3, v15

    .line 1185
    invoke-virtual {v1, v3, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1186
    .line 1187
    .line 1188
    move-result v0

    .line 1189
    if-eqz v0, :cond_1f

    .line 1190
    .line 1191
    sget-object v18, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 1192
    .line 1193
    invoke-static {v2, v4, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v16

    .line 1197
    const/16 v24, 0x61b8

    .line 1198
    .line 1199
    const/16 v25, 0x68

    .line 1200
    .line 1201
    const/16 v17, 0x0

    .line 1202
    .line 1203
    const/16 v19, 0x0

    .line 1204
    .line 1205
    sget-object v20, Landroidx/compose/ui/layout/ContentScale$Companion;->FillWidth:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 1206
    .line 1207
    const/16 v21, 0x0

    .line 1208
    .line 1209
    const/16 v22, 0x0

    .line 1210
    .line 1211
    move-object/from16 v23, v1

    .line 1212
    .line 1213
    invoke-static/range {v16 .. v25}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 1214
    .line 1215
    .line 1216
    goto :goto_13

    .line 1217
    :cond_1f
    move-object/from16 v23, v1

    .line 1218
    .line 1219
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1220
    .line 1221
    .line 1222
    :goto_13
    return-object v14

    .line 1223
    :pswitch_d
    move-object/from16 v0, p1

    .line 1224
    .line 1225
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .line 1226
    .line 1227
    move-object/from16 v1, p2

    .line 1228
    .line 1229
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1230
    .line 1231
    move-object/from16 v3, p3

    .line 1232
    .line 1233
    check-cast v3, Ljava/lang/Integer;

    .line 1234
    .line 1235
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1236
    .line 1237
    .line 1238
    move-result v3

    .line 1239
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1240
    .line 1241
    .line 1242
    and-int/lit8 v0, v3, 0x11

    .line 1243
    .line 1244
    if-eq v0, v13, :cond_20

    .line 1245
    .line 1246
    move v0, v15

    .line 1247
    goto :goto_14

    .line 1248
    :cond_20
    move v0, v4

    .line 1249
    :goto_14
    and-int/2addr v3, v15

    .line 1250
    invoke-virtual {v1, v3, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1251
    .line 1252
    .line 1253
    move-result v0

    .line 1254
    if-eqz v0, :cond_21

    .line 1255
    .line 1256
    sget-object v18, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 1257
    .line 1258
    invoke-static {v2, v4, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v16

    .line 1262
    const/16 v24, 0x61b8

    .line 1263
    .line 1264
    const/16 v25, 0x68

    .line 1265
    .line 1266
    const/16 v17, 0x0

    .line 1267
    .line 1268
    const/16 v19, 0x0

    .line 1269
    .line 1270
    sget-object v20, Landroidx/compose/ui/layout/ContentScale$Companion;->FillWidth:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 1271
    .line 1272
    const/16 v21, 0x0

    .line 1273
    .line 1274
    const/16 v22, 0x0

    .line 1275
    .line 1276
    move-object/from16 v23, v1

    .line 1277
    .line 1278
    invoke-static/range {v16 .. v25}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 1279
    .line 1280
    .line 1281
    goto :goto_15

    .line 1282
    :cond_21
    move-object/from16 v23, v1

    .line 1283
    .line 1284
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1285
    .line 1286
    .line 1287
    :goto_15
    return-object v14

    .line 1288
    :pswitch_e
    move-object/from16 v0, p1

    .line 1289
    .line 1290
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1291
    .line 1292
    move-object/from16 v1, p2

    .line 1293
    .line 1294
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1295
    .line 1296
    move-object/from16 v2, p3

    .line 1297
    .line 1298
    check-cast v2, Ljava/lang/Integer;

    .line 1299
    .line 1300
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1301
    .line 1302
    .line 1303
    move-result v2

    .line 1304
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1305
    .line 1306
    .line 1307
    and-int/lit8 v0, v2, 0x11

    .line 1308
    .line 1309
    if-eq v0, v13, :cond_22

    .line 1310
    .line 1311
    move v0, v15

    .line 1312
    goto :goto_16

    .line 1313
    :cond_22
    move v0, v4

    .line 1314
    :goto_16
    and-int/2addr v2, v15

    .line 1315
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1316
    .line 1317
    .line 1318
    move-result v0

    .line 1319
    if-eqz v0, :cond_23

    .line 1320
    .line 1321
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 1322
    .line 1323
    invoke-static {v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v18

    .line 1327
    const v0, 0x7f0800e8

    .line 1328
    .line 1329
    .line 1330
    invoke-static {v0, v4, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v16

    .line 1334
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1335
    .line 1336
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v0

    .line 1340
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1341
    .line 1342
    iget-wide v2, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 1343
    .line 1344
    const/16 v22, 0x1b8

    .line 1345
    .line 1346
    const/16 v23, 0x0

    .line 1347
    .line 1348
    const/16 v17, 0x0

    .line 1349
    .line 1350
    move-object/from16 v21, v1

    .line 1351
    .line 1352
    move-wide/from16 v19, v2

    .line 1353
    .line 1354
    invoke-static/range {v16 .. v23}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1355
    .line 1356
    .line 1357
    move-object/from16 v0, v21

    .line 1358
    .line 1359
    const/4 v12, 0x0

    .line 1360
    const/16 v13, 0xe

    .line 1361
    .line 1362
    const/high16 v9, 0x40c00000    # 6.0f

    .line 1363
    .line 1364
    const/4 v10, 0x0

    .line 1365
    const/4 v11, 0x0

    .line 1366
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v17

    .line 1370
    const v1, 0x7f120072

    .line 1371
    .line 1372
    .line 1373
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v16

    .line 1377
    const/16 v38, 0x0

    .line 1378
    .line 1379
    const v39, 0x3fffc

    .line 1380
    .line 1381
    .line 1382
    const-wide/16 v18, 0x0

    .line 1383
    .line 1384
    const/16 v20, 0x0

    .line 1385
    .line 1386
    const-wide/16 v21, 0x0

    .line 1387
    .line 1388
    const/16 v23, 0x0

    .line 1389
    .line 1390
    const/16 v24, 0x0

    .line 1391
    .line 1392
    const-wide/16 v25, 0x0

    .line 1393
    .line 1394
    const/16 v27, 0x0

    .line 1395
    .line 1396
    const-wide/16 v28, 0x0

    .line 1397
    .line 1398
    const/16 v30, 0x0

    .line 1399
    .line 1400
    const/16 v31, 0x0

    .line 1401
    .line 1402
    const/16 v32, 0x0

    .line 1403
    .line 1404
    const/16 v33, 0x0

    .line 1405
    .line 1406
    const/16 v34, 0x0

    .line 1407
    .line 1408
    const/16 v35, 0x0

    .line 1409
    .line 1410
    const/16 v37, 0x30

    .line 1411
    .line 1412
    move-object/from16 v36, v0

    .line 1413
    .line 1414
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1415
    .line 1416
    .line 1417
    goto :goto_17

    .line 1418
    :cond_23
    move-object v0, v1

    .line 1419
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1420
    .line 1421
    .line 1422
    :goto_17
    return-object v14

    .line 1423
    :pswitch_f
    move-object/from16 v0, p1

    .line 1424
    .line 1425
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1426
    .line 1427
    move-object/from16 v1, p2

    .line 1428
    .line 1429
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1430
    .line 1431
    move-object/from16 v2, p3

    .line 1432
    .line 1433
    check-cast v2, Ljava/lang/Integer;

    .line 1434
    .line 1435
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1436
    .line 1437
    .line 1438
    move-result v2

    .line 1439
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1440
    .line 1441
    .line 1442
    and-int/lit8 v0, v2, 0x11

    .line 1443
    .line 1444
    if-eq v0, v13, :cond_24

    .line 1445
    .line 1446
    move v0, v15

    .line 1447
    goto :goto_18

    .line 1448
    :cond_24
    move v0, v4

    .line 1449
    :goto_18
    and-int/2addr v2, v15

    .line 1450
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1451
    .line 1452
    .line 1453
    move-result v0

    .line 1454
    if-eqz v0, :cond_26

    .line 1455
    .line 1456
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 1457
    .line 1458
    invoke-static {v0, v9, v10, v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v2

    .line 1462
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 1463
    .line 1464
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 1465
    .line 1466
    const/16 v6, 0x30

    .line 1467
    .line 1468
    invoke-static {v5, v3, v1, v6}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v3

    .line 1472
    iget-wide v5, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1473
    .line 1474
    ushr-long v7, v5, p0

    .line 1475
    .line 1476
    xor-long/2addr v5, v7

    .line 1477
    long-to-int v5, v5

    .line 1478
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v6

    .line 1482
    invoke-static {v1, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v2

    .line 1486
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1487
    .line 1488
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1489
    .line 1490
    .line 1491
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1492
    .line 1493
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1494
    .line 1495
    .line 1496
    iget-boolean v8, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1497
    .line 1498
    if-eqz v8, :cond_25

    .line 1499
    .line 1500
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1501
    .line 1502
    .line 1503
    goto :goto_19

    .line 1504
    :cond_25
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1505
    .line 1506
    .line 1507
    :goto_19
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1508
    .line 1509
    invoke-static {v1, v3, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1510
    .line 1511
    .line 1512
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1513
    .line 1514
    invoke-static {v1, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1515
    .line 1516
    .line 1517
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v3

    .line 1521
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1522
    .line 1523
    invoke-static {v1, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1524
    .line 1525
    .line 1526
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1527
    .line 1528
    invoke-static {v1, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 1529
    .line 1530
    .line 1531
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1532
    .line 1533
    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1534
    .line 1535
    .line 1536
    const/high16 v2, 0x41900000    # 18.0f

    .line 1537
    .line 1538
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v18

    .line 1542
    const v2, 0x7f0801cd

    .line 1543
    .line 1544
    .line 1545
    invoke-static {v2, v4, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v16

    .line 1549
    const/16 v22, 0x1b8

    .line 1550
    .line 1551
    const/16 v23, 0x8

    .line 1552
    .line 1553
    const/16 v17, 0x0

    .line 1554
    .line 1555
    const-wide/16 v19, 0x0

    .line 1556
    .line 1557
    move-object/from16 v21, v1

    .line 1558
    .line 1559
    invoke-static/range {v16 .. v23}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1560
    .line 1561
    .line 1562
    const/16 v20, 0x0

    .line 1563
    .line 1564
    const/16 v21, 0xe

    .line 1565
    .line 1566
    const/high16 v17, 0x40c00000    # 6.0f

    .line 1567
    .line 1568
    const/16 v18, 0x0

    .line 1569
    .line 1570
    const/16 v19, 0x0

    .line 1571
    .line 1572
    move-object/from16 v16, v0

    .line 1573
    .line 1574
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v17

    .line 1578
    const v0, 0x7f1204ee

    .line 1579
    .line 1580
    .line 1581
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v16

    .line 1585
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1586
    .line 1587
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v0

    .line 1591
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 1592
    .line 1593
    iget-object v0, v0, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1594
    .line 1595
    const/16 v38, 0x0

    .line 1596
    .line 1597
    const v39, 0x1fffc

    .line 1598
    .line 1599
    .line 1600
    const-wide/16 v18, 0x0

    .line 1601
    .line 1602
    const/16 v20, 0x0

    .line 1603
    .line 1604
    const-wide/16 v21, 0x0

    .line 1605
    .line 1606
    const/16 v23, 0x0

    .line 1607
    .line 1608
    const/16 v24, 0x0

    .line 1609
    .line 1610
    const-wide/16 v25, 0x0

    .line 1611
    .line 1612
    const/16 v27, 0x0

    .line 1613
    .line 1614
    const-wide/16 v28, 0x0

    .line 1615
    .line 1616
    const/16 v30, 0x0

    .line 1617
    .line 1618
    const/16 v31, 0x0

    .line 1619
    .line 1620
    const/16 v32, 0x0

    .line 1621
    .line 1622
    const/16 v33, 0x0

    .line 1623
    .line 1624
    const/16 v34, 0x0

    .line 1625
    .line 1626
    const/16 v37, 0x30

    .line 1627
    .line 1628
    move-object/from16 v35, v0

    .line 1629
    .line 1630
    move-object/from16 v36, v1

    .line 1631
    .line 1632
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1633
    .line 1634
    .line 1635
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1636
    .line 1637
    .line 1638
    goto :goto_1a

    .line 1639
    :cond_26
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1640
    .line 1641
    .line 1642
    :goto_1a
    return-object v14

    .line 1643
    :pswitch_10
    move-object/from16 v0, p1

    .line 1644
    .line 1645
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1646
    .line 1647
    move-object/from16 v1, p2

    .line 1648
    .line 1649
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1650
    .line 1651
    move-object/from16 v2, p3

    .line 1652
    .line 1653
    check-cast v2, Ljava/lang/Integer;

    .line 1654
    .line 1655
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1656
    .line 1657
    .line 1658
    move-result v2

    .line 1659
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1660
    .line 1661
    .line 1662
    and-int/lit8 v0, v2, 0x11

    .line 1663
    .line 1664
    if-eq v0, v13, :cond_27

    .line 1665
    .line 1666
    move v4, v15

    .line 1667
    :cond_27
    and-int/lit8 v0, v2, 0x1

    .line 1668
    .line 1669
    invoke-virtual {v1, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1670
    .line 1671
    .line 1672
    move-result v0

    .line 1673
    if-eqz v0, :cond_28

    .line 1674
    .line 1675
    const/4 v5, 0x0

    .line 1676
    const/4 v7, 0x4

    .line 1677
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 1678
    .line 1679
    const/high16 v3, 0x40c00000    # 6.0f

    .line 1680
    .line 1681
    const/high16 v4, 0x40800000    # 4.0f

    .line 1682
    .line 1683
    move v6, v4

    .line 1684
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v17

    .line 1688
    const v0, 0x7f12006b

    .line 1689
    .line 1690
    .line 1691
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v16

    .line 1695
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1696
    .line 1697
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v0

    .line 1701
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 1702
    .line 1703
    iget-object v0, v0, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1704
    .line 1705
    const/16 v38, 0x0

    .line 1706
    .line 1707
    const v39, 0x1fffc

    .line 1708
    .line 1709
    .line 1710
    const-wide/16 v18, 0x0

    .line 1711
    .line 1712
    const/16 v20, 0x0

    .line 1713
    .line 1714
    const-wide/16 v21, 0x0

    .line 1715
    .line 1716
    const/16 v23, 0x0

    .line 1717
    .line 1718
    const/16 v24, 0x0

    .line 1719
    .line 1720
    const-wide/16 v25, 0x0

    .line 1721
    .line 1722
    const/16 v27, 0x0

    .line 1723
    .line 1724
    const-wide/16 v28, 0x0

    .line 1725
    .line 1726
    const/16 v30, 0x0

    .line 1727
    .line 1728
    const/16 v31, 0x0

    .line 1729
    .line 1730
    const/16 v32, 0x0

    .line 1731
    .line 1732
    const/16 v33, 0x0

    .line 1733
    .line 1734
    const/16 v34, 0x0

    .line 1735
    .line 1736
    const/16 v37, 0x30

    .line 1737
    .line 1738
    move-object/from16 v35, v0

    .line 1739
    .line 1740
    move-object/from16 v36, v1

    .line 1741
    .line 1742
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1743
    .line 1744
    .line 1745
    goto :goto_1b

    .line 1746
    :cond_28
    move-object/from16 v36, v1

    .line 1747
    .line 1748
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1749
    .line 1750
    .line 1751
    :goto_1b
    return-object v14

    .line 1752
    :pswitch_11
    move-object/from16 v0, p1

    .line 1753
    .line 1754
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1755
    .line 1756
    move-object/from16 v1, p2

    .line 1757
    .line 1758
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1759
    .line 1760
    move-object/from16 v2, p3

    .line 1761
    .line 1762
    check-cast v2, Ljava/lang/Integer;

    .line 1763
    .line 1764
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1765
    .line 1766
    .line 1767
    move-result v2

    .line 1768
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1769
    .line 1770
    .line 1771
    and-int/lit8 v0, v2, 0x11

    .line 1772
    .line 1773
    if-eq v0, v13, :cond_29

    .line 1774
    .line 1775
    move v4, v15

    .line 1776
    :cond_29
    and-int/lit8 v0, v2, 0x1

    .line 1777
    .line 1778
    invoke-virtual {v1, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1779
    .line 1780
    .line 1781
    move-result v0

    .line 1782
    if-eqz v0, :cond_2a

    .line 1783
    .line 1784
    const v0, 0x7f120044

    .line 1785
    .line 1786
    .line 1787
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v16

    .line 1791
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1792
    .line 1793
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v0

    .line 1797
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 1798
    .line 1799
    iget-object v0, v0, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1800
    .line 1801
    const/16 v38, 0x0

    .line 1802
    .line 1803
    const v39, 0x1fffe

    .line 1804
    .line 1805
    .line 1806
    const/16 v17, 0x0

    .line 1807
    .line 1808
    const-wide/16 v18, 0x0

    .line 1809
    .line 1810
    const/16 v20, 0x0

    .line 1811
    .line 1812
    const-wide/16 v21, 0x0

    .line 1813
    .line 1814
    const/16 v23, 0x0

    .line 1815
    .line 1816
    const/16 v24, 0x0

    .line 1817
    .line 1818
    const-wide/16 v25, 0x0

    .line 1819
    .line 1820
    const/16 v27, 0x0

    .line 1821
    .line 1822
    const-wide/16 v28, 0x0

    .line 1823
    .line 1824
    const/16 v30, 0x0

    .line 1825
    .line 1826
    const/16 v31, 0x0

    .line 1827
    .line 1828
    const/16 v32, 0x0

    .line 1829
    .line 1830
    const/16 v33, 0x0

    .line 1831
    .line 1832
    const/16 v34, 0x0

    .line 1833
    .line 1834
    const/16 v37, 0x0

    .line 1835
    .line 1836
    move-object/from16 v35, v0

    .line 1837
    .line 1838
    move-object/from16 v36, v1

    .line 1839
    .line 1840
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1841
    .line 1842
    .line 1843
    goto :goto_1c

    .line 1844
    :cond_2a
    move-object/from16 v36, v1

    .line 1845
    .line 1846
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1847
    .line 1848
    .line 1849
    :goto_1c
    return-object v14

    .line 1850
    :pswitch_12
    move-object/from16 v0, p1

    .line 1851
    .line 1852
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1853
    .line 1854
    move-object/from16 v1, p2

    .line 1855
    .line 1856
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1857
    .line 1858
    move-object/from16 v2, p3

    .line 1859
    .line 1860
    check-cast v2, Ljava/lang/Integer;

    .line 1861
    .line 1862
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1863
    .line 1864
    .line 1865
    move-result v2

    .line 1866
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1867
    .line 1868
    .line 1869
    and-int/lit8 v0, v2, 0x11

    .line 1870
    .line 1871
    if-eq v0, v13, :cond_2b

    .line 1872
    .line 1873
    move v0, v15

    .line 1874
    goto :goto_1d

    .line 1875
    :cond_2b
    move v0, v4

    .line 1876
    :goto_1d
    and-int/2addr v2, v15

    .line 1877
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1878
    .line 1879
    .line 1880
    move-result v0

    .line 1881
    if-eqz v0, :cond_2c

    .line 1882
    .line 1883
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 1884
    .line 1885
    invoke-static {v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1886
    .line 1887
    .line 1888
    move-result-object v18

    .line 1889
    const v0, 0x7f0801a4

    .line 1890
    .line 1891
    .line 1892
    invoke-static {v0, v4, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1893
    .line 1894
    .line 1895
    move-result-object v16

    .line 1896
    sget-wide v19, Landroidx/compose/ui/graphics/Color;->White:J

    .line 1897
    .line 1898
    const/16 v22, 0xdb8

    .line 1899
    .line 1900
    const/16 v23, 0x0

    .line 1901
    .line 1902
    const/16 v17, 0x0

    .line 1903
    .line 1904
    move-object/from16 v21, v1

    .line 1905
    .line 1906
    invoke-static/range {v16 .. v23}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1907
    .line 1908
    .line 1909
    move-object/from16 v0, v21

    .line 1910
    .line 1911
    const/4 v11, 0x0

    .line 1912
    const/4 v13, 0x4

    .line 1913
    const/high16 v9, 0x40c00000    # 6.0f

    .line 1914
    .line 1915
    const/high16 v10, 0x40800000    # 4.0f

    .line 1916
    .line 1917
    move v12, v10

    .line 1918
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v17

    .line 1922
    const v1, 0x7f120054

    .line 1923
    .line 1924
    .line 1925
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1926
    .line 1927
    .line 1928
    move-result-object v16

    .line 1929
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1930
    .line 1931
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1932
    .line 1933
    .line 1934
    move-result-object v1

    .line 1935
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 1936
    .line 1937
    iget-object v1, v1, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1938
    .line 1939
    const/16 v38, 0x0

    .line 1940
    .line 1941
    const v39, 0x1fffc

    .line 1942
    .line 1943
    .line 1944
    const-wide/16 v18, 0x0

    .line 1945
    .line 1946
    const/16 v20, 0x0

    .line 1947
    .line 1948
    const-wide/16 v21, 0x0

    .line 1949
    .line 1950
    const/16 v23, 0x0

    .line 1951
    .line 1952
    const/16 v24, 0x0

    .line 1953
    .line 1954
    const-wide/16 v25, 0x0

    .line 1955
    .line 1956
    const/16 v27, 0x0

    .line 1957
    .line 1958
    const-wide/16 v28, 0x0

    .line 1959
    .line 1960
    const/16 v30, 0x0

    .line 1961
    .line 1962
    const/16 v31, 0x0

    .line 1963
    .line 1964
    const/16 v32, 0x0

    .line 1965
    .line 1966
    const/16 v33, 0x0

    .line 1967
    .line 1968
    const/16 v34, 0x0

    .line 1969
    .line 1970
    const/16 v37, 0x30

    .line 1971
    .line 1972
    move-object/from16 v36, v0

    .line 1973
    .line 1974
    move-object/from16 v35, v1

    .line 1975
    .line 1976
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1977
    .line 1978
    .line 1979
    goto :goto_1e

    .line 1980
    :cond_2c
    move-object v0, v1

    .line 1981
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1982
    .line 1983
    .line 1984
    :goto_1e
    return-object v14

    .line 1985
    :pswitch_13
    move-object/from16 v0, p1

    .line 1986
    .line 1987
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 1988
    .line 1989
    move-object/from16 v1, p2

    .line 1990
    .line 1991
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1992
    .line 1993
    move-object/from16 v2, p3

    .line 1994
    .line 1995
    check-cast v2, Ljava/lang/Integer;

    .line 1996
    .line 1997
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1998
    .line 1999
    .line 2000
    move-result v2

    .line 2001
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2002
    .line 2003
    .line 2004
    and-int/lit8 v0, v2, 0x11

    .line 2005
    .line 2006
    if-eq v0, v13, :cond_2d

    .line 2007
    .line 2008
    move v0, v15

    .line 2009
    goto :goto_1f

    .line 2010
    :cond_2d
    move v0, v4

    .line 2011
    :goto_1f
    and-int/2addr v2, v15

    .line 2012
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 2013
    .line 2014
    .line 2015
    move-result v0

    .line 2016
    if-eqz v0, :cond_2f

    .line 2017
    .line 2018
    invoke-static {v11, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2019
    .line 2020
    .line 2021
    move-result-object v0

    .line 2022
    invoke-static {v0, v10, v9, v15}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 2023
    .line 2024
    .line 2025
    move-result-object v0

    .line 2026
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 2027
    .line 2028
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 2029
    .line 2030
    .line 2031
    move-result-object v2

    .line 2032
    iget-wide v3, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 2033
    .line 2034
    ushr-long v5, v3, p0

    .line 2035
    .line 2036
    xor-long/2addr v3, v5

    .line 2037
    long-to-int v3, v3

    .line 2038
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 2039
    .line 2040
    .line 2041
    move-result-object v4

    .line 2042
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v0

    .line 2046
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 2047
    .line 2048
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2049
    .line 2050
    .line 2051
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 2052
    .line 2053
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 2054
    .line 2055
    .line 2056
    iget-boolean v6, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 2057
    .line 2058
    if-eqz v6, :cond_2e

    .line 2059
    .line 2060
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 2061
    .line 2062
    .line 2063
    goto :goto_20

    .line 2064
    :cond_2e
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 2065
    .line 2066
    .line 2067
    :goto_20
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 2068
    .line 2069
    invoke-static {v1, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2070
    .line 2071
    .line 2072
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 2073
    .line 2074
    invoke-static {v1, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2075
    .line 2076
    .line 2077
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v2

    .line 2081
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 2082
    .line 2083
    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2084
    .line 2085
    .line 2086
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 2087
    .line 2088
    invoke-static {v1, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 2089
    .line 2090
    .line 2091
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 2092
    .line 2093
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2094
    .line 2095
    .line 2096
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2097
    .line 2098
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2099
    .line 2100
    .line 2101
    move-result-object v0

    .line 2102
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 2103
    .line 2104
    iget-wide v2, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 2105
    .line 2106
    const/16 v25, 0x0

    .line 2107
    .line 2108
    const/16 v26, 0x3d

    .line 2109
    .line 2110
    const/16 v16, 0x0

    .line 2111
    .line 2112
    const/16 v19, 0x0

    .line 2113
    .line 2114
    const-wide/16 v20, 0x0

    .line 2115
    .line 2116
    const/16 v22, 0x0

    .line 2117
    .line 2118
    const/16 v23, 0x0

    .line 2119
    .line 2120
    move-object/from16 v24, v1

    .line 2121
    .line 2122
    move-wide/from16 v17, v2

    .line 2123
    .line 2124
    invoke-static/range {v16 .. v26}, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-4lLiAd8(Landroidx/compose/ui/Modifier;JFJIFLandroidx/compose/runtime/GapComposer;II)V

    .line 2125
    .line 2126
    .line 2127
    move-object/from16 v0, v24

    .line 2128
    .line 2129
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2130
    .line 2131
    .line 2132
    goto :goto_21

    .line 2133
    :cond_2f
    move-object v0, v1

    .line 2134
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2135
    .line 2136
    .line 2137
    :goto_21
    return-object v14

    .line 2138
    :pswitch_14
    move-object/from16 v0, p1

    .line 2139
    .line 2140
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 2141
    .line 2142
    move-object/from16 v1, p2

    .line 2143
    .line 2144
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2145
    .line 2146
    move-object/from16 v2, p3

    .line 2147
    .line 2148
    check-cast v2, Ljava/lang/Integer;

    .line 2149
    .line 2150
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2151
    .line 2152
    .line 2153
    move-result v2

    .line 2154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2155
    .line 2156
    .line 2157
    and-int/lit8 v0, v2, 0x11

    .line 2158
    .line 2159
    if-eq v0, v13, :cond_30

    .line 2160
    .line 2161
    move v0, v15

    .line 2162
    goto :goto_22

    .line 2163
    :cond_30
    move v0, v4

    .line 2164
    :goto_22
    and-int/2addr v2, v15

    .line 2165
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 2166
    .line 2167
    .line 2168
    move-result v0

    .line 2169
    if-eqz v0, :cond_31

    .line 2170
    .line 2171
    invoke-static {v10, v1, v4, v15}, Lorg/wikipedia/activitytab/ImpactModuleKt;->ActivityTabShimmerView-kHDZbjc(FLandroidx/compose/runtime/GapComposer;II)V

    .line 2172
    .line 2173
    .line 2174
    goto :goto_23

    .line 2175
    :cond_31
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2176
    .line 2177
    .line 2178
    :goto_23
    return-object v14

    .line 2179
    :pswitch_15
    move-object/from16 v0, p1

    .line 2180
    .line 2181
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 2182
    .line 2183
    move-object/from16 v1, p2

    .line 2184
    .line 2185
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2186
    .line 2187
    move-object/from16 v2, p3

    .line 2188
    .line 2189
    check-cast v2, Ljava/lang/Integer;

    .line 2190
    .line 2191
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2192
    .line 2193
    .line 2194
    move-result v2

    .line 2195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2196
    .line 2197
    .line 2198
    and-int/lit8 v0, v2, 0x11

    .line 2199
    .line 2200
    if-eq v0, v13, :cond_32

    .line 2201
    .line 2202
    move v0, v15

    .line 2203
    goto :goto_24

    .line 2204
    :cond_32
    move v0, v4

    .line 2205
    :goto_24
    and-int/2addr v2, v15

    .line 2206
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 2207
    .line 2208
    .line 2209
    move-result v0

    .line 2210
    if-eqz v0, :cond_33

    .line 2211
    .line 2212
    invoke-static {v10, v1, v4, v15}, Lorg/wikipedia/activitytab/ImpactModuleKt;->ActivityTabShimmerView-kHDZbjc(FLandroidx/compose/runtime/GapComposer;II)V

    .line 2213
    .line 2214
    .line 2215
    goto :goto_25

    .line 2216
    :cond_33
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2217
    .line 2218
    .line 2219
    :goto_25
    return-object v14

    .line 2220
    :pswitch_16
    move-object/from16 v0, p1

    .line 2221
    .line 2222
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 2223
    .line 2224
    move-object/from16 v1, p2

    .line 2225
    .line 2226
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2227
    .line 2228
    move-object/from16 v2, p3

    .line 2229
    .line 2230
    check-cast v2, Ljava/lang/Integer;

    .line 2231
    .line 2232
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2233
    .line 2234
    .line 2235
    move-result v2

    .line 2236
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2237
    .line 2238
    .line 2239
    and-int/lit8 v0, v2, 0x11

    .line 2240
    .line 2241
    if-eq v0, v13, :cond_34

    .line 2242
    .line 2243
    move v4, v15

    .line 2244
    :cond_34
    and-int/lit8 v0, v2, 0x1

    .line 2245
    .line 2246
    invoke-virtual {v1, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 2247
    .line 2248
    .line 2249
    move-result v0

    .line 2250
    if-eqz v0, :cond_35

    .line 2251
    .line 2252
    const/4 v6, 0x0

    .line 2253
    const/16 v7, 0xe

    .line 2254
    .line 2255
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 2256
    .line 2257
    const/high16 v3, 0x40c00000    # 6.0f

    .line 2258
    .line 2259
    const/4 v4, 0x0

    .line 2260
    const/4 v5, 0x0

    .line 2261
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 2262
    .line 2263
    .line 2264
    move-result-object v17

    .line 2265
    const v0, 0x7f1203de

    .line 2266
    .line 2267
    .line 2268
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 2269
    .line 2270
    .line 2271
    move-result-object v16

    .line 2272
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2273
    .line 2274
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2275
    .line 2276
    .line 2277
    move-result-object v0

    .line 2278
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 2279
    .line 2280
    iget-object v0, v0, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 2281
    .line 2282
    const/16 v38, 0x0

    .line 2283
    .line 2284
    const v39, 0x1fffc

    .line 2285
    .line 2286
    .line 2287
    const-wide/16 v18, 0x0

    .line 2288
    .line 2289
    const/16 v20, 0x0

    .line 2290
    .line 2291
    const-wide/16 v21, 0x0

    .line 2292
    .line 2293
    const/16 v23, 0x0

    .line 2294
    .line 2295
    const/16 v24, 0x0

    .line 2296
    .line 2297
    const-wide/16 v25, 0x0

    .line 2298
    .line 2299
    const/16 v27, 0x0

    .line 2300
    .line 2301
    const-wide/16 v28, 0x0

    .line 2302
    .line 2303
    const/16 v30, 0x0

    .line 2304
    .line 2305
    const/16 v31, 0x0

    .line 2306
    .line 2307
    const/16 v32, 0x0

    .line 2308
    .line 2309
    const/16 v33, 0x0

    .line 2310
    .line 2311
    const/16 v34, 0x0

    .line 2312
    .line 2313
    const/16 v37, 0x30

    .line 2314
    .line 2315
    move-object/from16 v35, v0

    .line 2316
    .line 2317
    move-object/from16 v36, v1

    .line 2318
    .line 2319
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 2320
    .line 2321
    .line 2322
    goto :goto_26

    .line 2323
    :cond_35
    move-object/from16 v36, v1

    .line 2324
    .line 2325
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2326
    .line 2327
    .line 2328
    :goto_26
    return-object v14

    .line 2329
    :pswitch_17
    move-object/from16 v0, p1

    .line 2330
    .line 2331
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 2332
    .line 2333
    move-object/from16 v1, p2

    .line 2334
    .line 2335
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2336
    .line 2337
    move-object/from16 v2, p3

    .line 2338
    .line 2339
    check-cast v2, Ljava/lang/Integer;

    .line 2340
    .line 2341
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2342
    .line 2343
    .line 2344
    move-result v2

    .line 2345
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2346
    .line 2347
    .line 2348
    and-int/lit8 v0, v2, 0x11

    .line 2349
    .line 2350
    if-eq v0, v13, :cond_36

    .line 2351
    .line 2352
    move v0, v15

    .line 2353
    goto :goto_27

    .line 2354
    :cond_36
    move v0, v4

    .line 2355
    :goto_27
    and-int/2addr v2, v15

    .line 2356
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 2357
    .line 2358
    .line 2359
    move-result v0

    .line 2360
    if-eqz v0, :cond_37

    .line 2361
    .line 2362
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 2363
    .line 2364
    invoke-static {v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2365
    .line 2366
    .line 2367
    move-result-object v18

    .line 2368
    const v0, 0x7f08020a

    .line 2369
    .line 2370
    .line 2371
    invoke-static {v0, v4, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 2372
    .line 2373
    .line 2374
    move-result-object v16

    .line 2375
    sget-wide v19, Landroidx/compose/ui/graphics/Color;->White:J

    .line 2376
    .line 2377
    const/16 v22, 0xdb8

    .line 2378
    .line 2379
    const/16 v23, 0x0

    .line 2380
    .line 2381
    const/16 v17, 0x0

    .line 2382
    .line 2383
    move-object/from16 v21, v1

    .line 2384
    .line 2385
    invoke-static/range {v16 .. v23}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 2386
    .line 2387
    .line 2388
    move-object/from16 v0, v21

    .line 2389
    .line 2390
    const/4 v12, 0x0

    .line 2391
    const/16 v13, 0xe

    .line 2392
    .line 2393
    const/high16 v9, 0x40c00000    # 6.0f

    .line 2394
    .line 2395
    const/4 v10, 0x0

    .line 2396
    const/4 v11, 0x0

    .line 2397
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 2398
    .line 2399
    .line 2400
    move-result-object v17

    .line 2401
    const v1, 0x7f1200db

    .line 2402
    .line 2403
    .line 2404
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 2405
    .line 2406
    .line 2407
    move-result-object v16

    .line 2408
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2409
    .line 2410
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2411
    .line 2412
    .line 2413
    move-result-object v1

    .line 2414
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 2415
    .line 2416
    iget-object v1, v1, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 2417
    .line 2418
    const/16 v38, 0x0

    .line 2419
    .line 2420
    const v39, 0x1fffc

    .line 2421
    .line 2422
    .line 2423
    const-wide/16 v18, 0x0

    .line 2424
    .line 2425
    const/16 v20, 0x0

    .line 2426
    .line 2427
    const-wide/16 v21, 0x0

    .line 2428
    .line 2429
    const/16 v23, 0x0

    .line 2430
    .line 2431
    const/16 v24, 0x0

    .line 2432
    .line 2433
    const-wide/16 v25, 0x0

    .line 2434
    .line 2435
    const/16 v27, 0x0

    .line 2436
    .line 2437
    const-wide/16 v28, 0x0

    .line 2438
    .line 2439
    const/16 v30, 0x0

    .line 2440
    .line 2441
    const/16 v31, 0x0

    .line 2442
    .line 2443
    const/16 v32, 0x0

    .line 2444
    .line 2445
    const/16 v33, 0x0

    .line 2446
    .line 2447
    const/16 v34, 0x0

    .line 2448
    .line 2449
    const/16 v37, 0x30

    .line 2450
    .line 2451
    move-object/from16 v36, v0

    .line 2452
    .line 2453
    move-object/from16 v35, v1

    .line 2454
    .line 2455
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 2456
    .line 2457
    .line 2458
    goto :goto_28

    .line 2459
    :cond_37
    move-object v0, v1

    .line 2460
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2461
    .line 2462
    .line 2463
    :goto_28
    return-object v14

    .line 2464
    :pswitch_18
    move-object/from16 v0, p1

    .line 2465
    .line 2466
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 2467
    .line 2468
    move-object/from16 v1, p2

    .line 2469
    .line 2470
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2471
    .line 2472
    move-object/from16 v2, p3

    .line 2473
    .line 2474
    check-cast v2, Ljava/lang/Integer;

    .line 2475
    .line 2476
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2477
    .line 2478
    .line 2479
    move-result v2

    .line 2480
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2481
    .line 2482
    .line 2483
    and-int/lit8 v0, v2, 0x11

    .line 2484
    .line 2485
    if-eq v0, v13, :cond_38

    .line 2486
    .line 2487
    move v4, v15

    .line 2488
    :cond_38
    and-int/lit8 v0, v2, 0x1

    .line 2489
    .line 2490
    invoke-virtual {v1, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 2491
    .line 2492
    .line 2493
    move-result v0

    .line 2494
    if-eqz v0, :cond_39

    .line 2495
    .line 2496
    const/high16 v6, 0x41800000    # 16.0f

    .line 2497
    .line 2498
    invoke-static {v11, v6, v10, v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 2499
    .line 2500
    .line 2501
    move-result-object v2

    .line 2502
    const/4 v5, 0x0

    .line 2503
    const/4 v7, 0x7

    .line 2504
    const/4 v3, 0x0

    .line 2505
    const/4 v4, 0x0

    .line 2506
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 2507
    .line 2508
    .line 2509
    move-result-object v17

    .line 2510
    const v0, 0x7f12005b

    .line 2511
    .line 2512
    .line 2513
    invoke-static {v0, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 2514
    .line 2515
    .line 2516
    move-result-object v16

    .line 2517
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2518
    .line 2519
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2520
    .line 2521
    .line 2522
    move-result-object v0

    .line 2523
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 2524
    .line 2525
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 2526
    .line 2527
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2528
    .line 2529
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2530
    .line 2531
    .line 2532
    move-result-object v2

    .line 2533
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 2534
    .line 2535
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 2536
    .line 2537
    const/16 v38, 0x0

    .line 2538
    .line 2539
    const v39, 0x1fff8

    .line 2540
    .line 2541
    .line 2542
    const/16 v20, 0x0

    .line 2543
    .line 2544
    const-wide/16 v21, 0x0

    .line 2545
    .line 2546
    const/16 v23, 0x0

    .line 2547
    .line 2548
    const/16 v24, 0x0

    .line 2549
    .line 2550
    const-wide/16 v25, 0x0

    .line 2551
    .line 2552
    const/16 v27, 0x0

    .line 2553
    .line 2554
    const-wide/16 v28, 0x0

    .line 2555
    .line 2556
    const/16 v30, 0x0

    .line 2557
    .line 2558
    const/16 v31, 0x0

    .line 2559
    .line 2560
    const/16 v32, 0x0

    .line 2561
    .line 2562
    const/16 v33, 0x0

    .line 2563
    .line 2564
    const/16 v34, 0x0

    .line 2565
    .line 2566
    const/16 v37, 0x30

    .line 2567
    .line 2568
    move-object/from16 v35, v0

    .line 2569
    .line 2570
    move-object/from16 v36, v1

    .line 2571
    .line 2572
    move-wide/from16 v18, v2

    .line 2573
    .line 2574
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 2575
    .line 2576
    .line 2577
    goto :goto_29

    .line 2578
    :cond_39
    move-object/from16 v36, v1

    .line 2579
    .line 2580
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2581
    .line 2582
    .line 2583
    :goto_29
    return-object v14

    .line 2584
    :pswitch_19
    move-object/from16 v0, p1

    .line 2585
    .line 2586
    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    .line 2587
    .line 2588
    move-object/from16 v2, p2

    .line 2589
    .line 2590
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 2591
    .line 2592
    move-object/from16 v3, p3

    .line 2593
    .line 2594
    check-cast v3, Landroidx/compose/ui/unit/Constraints;

    .line 2595
    .line 2596
    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 2597
    .line 2598
    .line 2599
    move-result v1

    .line 2600
    iget-wide v5, v3, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 2601
    .line 2602
    mul-int/lit8 v3, v1, 0x2

    .line 2603
    .line 2604
    invoke-static {v4, v3, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IIJ)J

    .line 2605
    .line 2606
    .line 2607
    move-result-wide v5

    .line 2608
    invoke-interface {v2, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 2609
    .line 2610
    .line 2611
    move-result-object v2

    .line 2612
    iget v5, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 2613
    .line 2614
    sub-int/2addr v5, v3

    .line 2615
    iget v3, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 2616
    .line 2617
    new-instance v6, Landroidx/compose/material3/internal/AccessibilityUtilKt$$ExternalSyntheticLambda4;

    .line 2618
    .line 2619
    invoke-direct {v6, v1, v4, v2}, Landroidx/compose/material3/internal/AccessibilityUtilKt$$ExternalSyntheticLambda4;-><init>(IILandroidx/compose/ui/layout/Placeable;)V

    .line 2620
    .line 2621
    .line 2622
    invoke-interface {v0, v3, v5, v8, v6}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 2623
    .line 2624
    .line 2625
    move-result-object v0

    .line 2626
    return-object v0

    .line 2627
    :pswitch_1a
    move-object/from16 v0, p1

    .line 2628
    .line 2629
    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    .line 2630
    .line 2631
    move-object/from16 v2, p2

    .line 2632
    .line 2633
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 2634
    .line 2635
    move-object/from16 v3, p3

    .line 2636
    .line 2637
    check-cast v3, Landroidx/compose/ui/unit/Constraints;

    .line 2638
    .line 2639
    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 2640
    .line 2641
    .line 2642
    move-result v1

    .line 2643
    iget-wide v5, v3, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 2644
    .line 2645
    mul-int/lit8 v3, v1, 0x2

    .line 2646
    .line 2647
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IIJ)J

    .line 2648
    .line 2649
    .line 2650
    move-result-wide v4

    .line 2651
    invoke-interface {v2, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 2652
    .line 2653
    .line 2654
    move-result-object v2

    .line 2655
    iget v4, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 2656
    .line 2657
    iget v5, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 2658
    .line 2659
    sub-int/2addr v5, v3

    .line 2660
    new-instance v3, Landroidx/compose/material3/internal/AccessibilityUtilKt$$ExternalSyntheticLambda4;

    .line 2661
    .line 2662
    invoke-direct {v3, v1, v15, v2}, Landroidx/compose/material3/internal/AccessibilityUtilKt$$ExternalSyntheticLambda4;-><init>(IILandroidx/compose/ui/layout/Placeable;)V

    .line 2663
    .line 2664
    .line 2665
    invoke-interface {v0, v5, v4, v8, v3}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 2666
    .line 2667
    .line 2668
    move-result-object v0

    .line 2669
    return-object v0

    .line 2670
    :pswitch_1b
    move-object/from16 v0, p1

    .line 2671
    .line 2672
    check-cast v0, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 2673
    .line 2674
    move-object/from16 v1, p2

    .line 2675
    .line 2676
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2677
    .line 2678
    move-object/from16 v2, p3

    .line 2679
    .line 2680
    check-cast v2, Ljava/lang/Integer;

    .line 2681
    .line 2682
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2683
    .line 2684
    .line 2685
    move-result v2

    .line 2686
    and-int/lit8 v7, v2, 0x6

    .line 2687
    .line 2688
    if-nez v7, :cond_3b

    .line 2689
    .line 2690
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 2691
    .line 2692
    .line 2693
    move-result v7

    .line 2694
    if-eqz v7, :cond_3a

    .line 2695
    .line 2696
    goto :goto_2a

    .line 2697
    :cond_3a
    move v6, v12

    .line 2698
    :goto_2a
    or-int/2addr v2, v6

    .line 2699
    :cond_3b
    and-int/lit8 v6, v2, 0x13

    .line 2700
    .line 2701
    if-eq v6, v5, :cond_3c

    .line 2702
    .line 2703
    move v5, v15

    .line 2704
    goto :goto_2b

    .line 2705
    :cond_3c
    move v5, v4

    .line 2706
    :goto_2b
    and-int/2addr v2, v15

    .line 2707
    invoke-virtual {v1, v2, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 2708
    .line 2709
    .line 2710
    move-result v2

    .line 2711
    if-eqz v2, :cond_3d

    .line 2712
    .line 2713
    sget v2, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->DividerVerticalPadding:F

    .line 2714
    .line 2715
    invoke-static {v11, v10, v2, v15}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 2716
    .line 2717
    .line 2718
    move-result-object v2

    .line 2719
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2720
    .line 2721
    .line 2722
    move-result-object v2

    .line 2723
    sget v3, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->DividerHeight:F

    .line 2724
    .line 2725
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2726
    .line 2727
    .line 2728
    move-result-object v2

    .line 2729
    iget-wide v5, v0, Landroidx/compose/foundation/contextmenu/ContextMenuColors;->iconColor:J

    .line 2730
    .line 2731
    sget-object v0, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 2732
    .line 2733
    invoke-static {v2, v5, v6, v0}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 2734
    .line 2735
    .line 2736
    move-result-object v0

    .line 2737
    invoke-static {v0, v1, v4}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 2738
    .line 2739
    .line 2740
    goto :goto_2c

    .line 2741
    :cond_3d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2742
    .line 2743
    .line 2744
    :goto_2c
    return-object v14

    .line 2745
    :pswitch_1c
    move-object/from16 v0, p1

    .line 2746
    .line 2747
    check-cast v0, Landroidx/compose/ui/layout/MeasureScope;

    .line 2748
    .line 2749
    move-object/from16 v1, p2

    .line 2750
    .line 2751
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 2752
    .line 2753
    move-object/from16 v2, p3

    .line 2754
    .line 2755
    check-cast v2, Landroidx/compose/ui/unit/Constraints;

    .line 2756
    .line 2757
    iget-wide v2, v2, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 2758
    .line 2759
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 2760
    .line 2761
    .line 2762
    move-result-object v1

    .line 2763
    iget v2, v1, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 2764
    .line 2765
    int-to-float v2, v2

    .line 2766
    add-float/2addr v2, v10

    .line 2767
    cmpg-float v3, v2, v10

    .line 2768
    .line 2769
    if-gez v3, :cond_3e

    .line 2770
    .line 2771
    goto :goto_2d

    .line 2772
    :cond_3e
    move v10, v2

    .line 2773
    :goto_2d
    iget v2, v1, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 2774
    .line 2775
    invoke-static {v10}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 2776
    .line 2777
    .line 2778
    move-result v3

    .line 2779
    new-instance v5, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda12;

    .line 2780
    .line 2781
    invoke-direct {v5, v1, v4}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda12;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 2782
    .line 2783
    .line 2784
    invoke-interface {v0, v2, v3, v8, v5}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 2785
    .line 2786
    .line 2787
    move-result-object v0

    .line 2788
    return-object v0

    .line 2789
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

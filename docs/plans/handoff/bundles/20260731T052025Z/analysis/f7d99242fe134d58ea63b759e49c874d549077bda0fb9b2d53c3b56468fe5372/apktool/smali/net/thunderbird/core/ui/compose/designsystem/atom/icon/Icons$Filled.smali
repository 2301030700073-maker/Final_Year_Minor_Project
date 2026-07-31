.class public abstract Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final Cancel:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static final CheckCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static final Dot:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static final Notifications:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static final Person:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static final Star:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static final Thundermail:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static final Warning:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    sget-object v0, Landroidx/work/OperationKt;->_cancel:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2
    .line 3
    const/high16 v1, -0x3ee00000    # -10.0f

    .line 4
    .line 5
    const/high16 v2, 0x40000000    # 2.0f

    .line 6
    .line 7
    const/high16 v3, 0x41880000    # 17.0f

    .line 8
    .line 9
    const/high16 v4, 0x41200000    # 10.0f

    .line 10
    .line 11
    const/high16 v5, 0x41400000    # 12.0f

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 18
    .line 19
    const/4 v14, 0x0

    .line 20
    const/16 v16, 0x60

    .line 21
    .line 22
    const-string v7, "Filled.Cancel"

    .line 23
    .line 24
    const/high16 v8, 0x41c00000    # 24.0f

    .line 25
    .line 26
    const/high16 v9, 0x41c00000    # 24.0f

    .line 27
    .line 28
    const/high16 v10, 0x41c00000    # 24.0f

    .line 29
    .line 30
    const/high16 v11, 0x41c00000    # 24.0f

    .line 31
    .line 32
    const-wide/16 v12, 0x0

    .line 33
    .line 34
    const/4 v15, 0x0

    .line 35
    invoke-direct/range {v6 .. v16}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 36
    .line 37
    .line 38
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 39
    .line 40
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    .line 41
    .line 42
    sget-wide v9, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 43
    .line 44
    invoke-direct {v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 45
    .line 46
    .line 47
    invoke-static {v5, v2}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    const/high16 v16, 0x40000000    # 2.0f

    .line 52
    .line 53
    const/high16 v17, 0x41400000    # 12.0f

    .line 54
    .line 55
    const v12, 0x40cf0a3d    # 6.47f

    .line 56
    .line 57
    .line 58
    const/high16 v13, 0x40000000    # 2.0f

    .line 59
    .line 60
    const/high16 v14, 0x40000000    # 2.0f

    .line 61
    .line 62
    const v15, 0x40cf0a3d    # 6.47f

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {v11 .. v17}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 66
    .line 67
    .line 68
    const v0, 0x408f0a3d    # 4.47f

    .line 69
    .line 70
    .line 71
    invoke-virtual {v11, v0, v4, v4, v4}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 72
    .line 73
    .line 74
    const v0, -0x3f70f5c3    # -4.47f

    .line 75
    .line 76
    .line 77
    invoke-virtual {v11, v4, v0, v4, v1}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 78
    .line 79
    .line 80
    const v0, 0x418c3d71    # 17.53f

    .line 81
    .line 82
    .line 83
    invoke-virtual {v11, v0, v2, v5, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveTo(FFFF)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v11}, Lokhttp3/Headers$Builder;->close()V

    .line 87
    .line 88
    .line 89
    const v0, 0x417970a4    # 15.59f

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11, v3, v0}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v11, v0, v3}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 96
    .line 97
    .line 98
    const v7, 0x41568f5c    # 13.41f

    .line 99
    .line 100
    .line 101
    invoke-virtual {v11, v5, v7}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 102
    .line 103
    .line 104
    const v9, 0x41068f5c    # 8.41f

    .line 105
    .line 106
    .line 107
    invoke-virtual {v11, v9, v3}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 108
    .line 109
    .line 110
    const/high16 v10, 0x40e00000    # 7.0f

    .line 111
    .line 112
    invoke-virtual {v11, v10, v0}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 113
    .line 114
    .line 115
    const v12, 0x412970a4    # 10.59f

    .line 116
    .line 117
    .line 118
    invoke-virtual {v11, v12, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11, v10, v9}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v11, v9, v10}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v11, v5, v12}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v11, v0, v10}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v11, v3, v9}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v11, v7, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v11, v3, v0}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v11}, Lokhttp3/Headers$Builder;->close()V

    .line 143
    .line 144
    .line 145
    iget-object v7, v11, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 146
    .line 147
    const/high16 v9, 0x3f800000    # 1.0f

    .line 148
    .line 149
    const/high16 v10, 0x3f800000    # 1.0f

    .line 150
    .line 151
    const/high16 v11, 0x3f800000    # 1.0f

    .line 152
    .line 153
    const/4 v12, 0x2

    .line 154
    const/high16 v13, 0x3f800000    # 1.0f

    .line 155
    .line 156
    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    sput-object v0, Landroidx/work/OperationKt;->_cancel:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 164
    .line 165
    :goto_0
    sput-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->Cancel:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 166
    .line 167
    sget-object v0, Landroidx/compose/ui/unit/IntOffsetKt;->_checkCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 168
    .line 169
    const/high16 v6, -0x3f600000    # -5.0f

    .line 170
    .line 171
    if-eqz v0, :cond_1

    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :cond_1
    new-instance v7, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 176
    .line 177
    const/4 v15, 0x0

    .line 178
    const/16 v17, 0x60

    .line 179
    .line 180
    const-string v8, "Filled.CheckCircle"

    .line 181
    .line 182
    const/high16 v9, 0x41c00000    # 24.0f

    .line 183
    .line 184
    const/high16 v10, 0x41c00000    # 24.0f

    .line 185
    .line 186
    const/high16 v11, 0x41c00000    # 24.0f

    .line 187
    .line 188
    const/high16 v12, 0x41c00000    # 24.0f

    .line 189
    .line 190
    const-wide/16 v13, 0x0

    .line 191
    .line 192
    const/16 v16, 0x0

    .line 193
    .line 194
    invoke-direct/range {v7 .. v17}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 195
    .line 196
    .line 197
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 198
    .line 199
    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    .line 200
    .line 201
    sget-wide v10, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 202
    .line 203
    invoke-direct {v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 204
    .line 205
    .line 206
    invoke-static {v5, v2}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    const/high16 v17, 0x40000000    # 2.0f

    .line 211
    .line 212
    const/high16 v18, 0x41400000    # 12.0f

    .line 213
    .line 214
    const v13, 0x40cf5c29    # 6.48f

    .line 215
    .line 216
    .line 217
    const/high16 v14, 0x40000000    # 2.0f

    .line 218
    .line 219
    const/high16 v15, 0x40000000    # 2.0f

    .line 220
    .line 221
    const v16, 0x40cf5c29    # 6.48f

    .line 222
    .line 223
    .line 224
    invoke-virtual/range {v12 .. v18}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 225
    .line 226
    .line 227
    const v0, 0x408f5c29    # 4.48f

    .line 228
    .line 229
    .line 230
    invoke-virtual {v12, v0, v4, v4, v4}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 231
    .line 232
    .line 233
    const v0, -0x3f70a3d7    # -4.48f

    .line 234
    .line 235
    .line 236
    invoke-virtual {v12, v4, v0, v4, v1}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 237
    .line 238
    .line 239
    const v0, 0x418c28f6    # 17.52f

    .line 240
    .line 241
    .line 242
    invoke-virtual {v12, v0, v2, v5, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveTo(FFFF)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v12}, Lokhttp3/Headers$Builder;->close()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v12, v4, v3}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v12, v6, v6}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 252
    .line 253
    .line 254
    const v0, 0x3fb47ae1    # 1.41f

    .line 255
    .line 256
    .line 257
    const v1, -0x404b851f    # -1.41f

    .line 258
    .line 259
    .line 260
    invoke-virtual {v12, v0, v1}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 261
    .line 262
    .line 263
    const v0, 0x4162b852    # 14.17f

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12, v4, v0}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 267
    .line 268
    .line 269
    const v0, 0x40f2e148    # 7.59f

    .line 270
    .line 271
    .line 272
    const v1, -0x3f0d1eb8    # -7.59f

    .line 273
    .line 274
    .line 275
    invoke-virtual {v12, v0, v1}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 276
    .line 277
    .line 278
    const/high16 v0, 0x41980000    # 19.0f

    .line 279
    .line 280
    const/high16 v1, 0x41000000    # 8.0f

    .line 281
    .line 282
    invoke-virtual {v12, v0, v1}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 283
    .line 284
    .line 285
    const/high16 v0, -0x3ef00000    # -9.0f

    .line 286
    .line 287
    const/high16 v1, 0x41100000    # 9.0f

    .line 288
    .line 289
    invoke-virtual {v12, v0, v1}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v12}, Lokhttp3/Headers$Builder;->close()V

    .line 293
    .line 294
    .line 295
    iget-object v8, v12, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 296
    .line 297
    const/high16 v10, 0x3f800000    # 1.0f

    .line 298
    .line 299
    const/high16 v11, 0x3f800000    # 1.0f

    .line 300
    .line 301
    const/high16 v12, 0x3f800000    # 1.0f

    .line 302
    .line 303
    const/4 v13, 0x2

    .line 304
    const/high16 v14, 0x3f800000    # 1.0f

    .line 305
    .line 306
    invoke-static/range {v7 .. v14}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    sput-object v0, Landroidx/compose/ui/unit/IntOffsetKt;->_checkCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 314
    .line 315
    :goto_1
    sput-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->CheckCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 316
    .line 317
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/filled/FilledDotIconKt;->FilledDotIcon$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 318
    .line 319
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 324
    .line 325
    sput-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->Dot:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 326
    .line 327
    sget-object v0, Landroidx/compose/ui/unit/IntRectKt;->_notifications:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 328
    .line 329
    const/high16 v1, 0x3f800000    # 1.0f

    .line 330
    .line 331
    const/high16 v3, 0x41900000    # 18.0f

    .line 332
    .line 333
    const/high16 v4, 0x41b00000    # 22.0f

    .line 334
    .line 335
    const/high16 v7, 0x41800000    # 16.0f

    .line 336
    .line 337
    const/high16 v8, 0x40800000    # 4.0f

    .line 338
    .line 339
    const/high16 v9, -0x3f800000    # -4.0f

    .line 340
    .line 341
    const/high16 v10, -0x40000000    # -2.0f

    .line 342
    .line 343
    if-eqz v0, :cond_2

    .line 344
    .line 345
    goto/16 :goto_2

    .line 346
    .line 347
    :cond_2
    new-instance v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 348
    .line 349
    const/16 v19, 0x0

    .line 350
    .line 351
    const/16 v21, 0x60

    .line 352
    .line 353
    const-string v12, "Filled.Notifications"

    .line 354
    .line 355
    const/high16 v13, 0x41c00000    # 24.0f

    .line 356
    .line 357
    const/high16 v14, 0x41c00000    # 24.0f

    .line 358
    .line 359
    const/high16 v15, 0x41c00000    # 24.0f

    .line 360
    .line 361
    const/high16 v16, 0x41c00000    # 24.0f

    .line 362
    .line 363
    const-wide/16 v17, 0x0

    .line 364
    .line 365
    const/16 v20, 0x0

    .line 366
    .line 367
    invoke-direct/range {v11 .. v21}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 368
    .line 369
    .line 370
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 371
    .line 372
    new-instance v13, Landroidx/compose/ui/graphics/SolidColor;

    .line 373
    .line 374
    sget-wide v14, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 375
    .line 376
    invoke-direct {v13, v14, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 377
    .line 378
    .line 379
    invoke-static {v5, v4}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 380
    .line 381
    .line 382
    move-result-object v16

    .line 383
    const/high16 v21, 0x40000000    # 2.0f

    .line 384
    .line 385
    const/high16 v22, -0x40000000    # -2.0f

    .line 386
    .line 387
    const v17, 0x3f8ccccd    # 1.1f

    .line 388
    .line 389
    .line 390
    const/16 v18, 0x0

    .line 391
    .line 392
    const/high16 v19, 0x40000000    # 2.0f

    .line 393
    .line 394
    const v20, -0x4099999a    # -0.9f

    .line 395
    .line 396
    .line 397
    invoke-virtual/range {v16 .. v22}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 398
    .line 399
    .line 400
    move-object/from16 v0, v16

    .line 401
    .line 402
    invoke-virtual {v0, v9}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 403
    .line 404
    .line 405
    const/high16 v22, 0x40000000    # 2.0f

    .line 406
    .line 407
    const/16 v17, 0x0

    .line 408
    .line 409
    const v18, 0x3f8ccccd    # 1.1f

    .line 410
    .line 411
    .line 412
    const v19, 0x3f63d70a    # 0.89f

    .line 413
    .line 414
    .line 415
    const/high16 v20, 0x40000000    # 2.0f

    .line 416
    .line 417
    invoke-virtual/range {v16 .. v22}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->close()V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v3, v7}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0, v6}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 427
    .line 428
    .line 429
    const/high16 v21, -0x3f700000    # -4.5f

    .line 430
    .line 431
    const v22, -0x3f35c28f    # -6.32f

    .line 432
    .line 433
    .line 434
    const v18, -0x3fbb851f    # -3.07f

    .line 435
    .line 436
    .line 437
    const v19, -0x402e147b    # -1.64f

    .line 438
    .line 439
    .line 440
    const v20, -0x3f4b851f    # -5.64f

    .line 441
    .line 442
    .line 443
    invoke-virtual/range {v16 .. v22}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 444
    .line 445
    .line 446
    const/high16 v6, 0x41580000    # 13.5f

    .line 447
    .line 448
    invoke-virtual {v0, v6, v8}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 449
    .line 450
    .line 451
    const/high16 v21, -0x40400000    # -1.5f

    .line 452
    .line 453
    const/high16 v22, -0x40400000    # -1.5f

    .line 454
    .line 455
    const v18, -0x40ab851f    # -0.83f

    .line 456
    .line 457
    .line 458
    const v19, -0x40d47ae1    # -0.67f

    .line 459
    .line 460
    .line 461
    const/high16 v20, -0x40400000    # -1.5f

    .line 462
    .line 463
    invoke-virtual/range {v16 .. v22}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 464
    .line 465
    .line 466
    const v6, 0x3f2b851f    # 0.67f

    .line 467
    .line 468
    .line 469
    const/high16 v12, 0x3fc00000    # 1.5f

    .line 470
    .line 471
    const/high16 v14, -0x40400000    # -1.5f

    .line 472
    .line 473
    invoke-virtual {v0, v14, v6, v14, v12}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 474
    .line 475
    .line 476
    const v6, 0x3f2e147b    # 0.68f

    .line 477
    .line 478
    .line 479
    invoke-virtual {v0, v6}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 480
    .line 481
    .line 482
    const/high16 v21, 0x40c00000    # 6.0f

    .line 483
    .line 484
    const/high16 v22, 0x41300000    # 11.0f

    .line 485
    .line 486
    const v17, 0x40f428f6    # 7.63f

    .line 487
    .line 488
    .line 489
    const v18, 0x40ab851f    # 5.36f

    .line 490
    .line 491
    .line 492
    const/high16 v19, 0x40c00000    # 6.0f

    .line 493
    .line 494
    const v20, 0x40fd70a4    # 7.92f

    .line 495
    .line 496
    .line 497
    invoke-virtual/range {v16 .. v22}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 498
    .line 499
    .line 500
    const/high16 v6, 0x40a00000    # 5.0f

    .line 501
    .line 502
    invoke-virtual {v0, v6}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v0, v10, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0, v1}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0, v7}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 512
    .line 513
    .line 514
    const/high16 v6, -0x40800000    # -1.0f

    .line 515
    .line 516
    invoke-virtual {v0, v6}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0, v10, v10}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->close()V

    .line 523
    .line 524
    .line 525
    iget-object v12, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 526
    .line 527
    const/high16 v14, 0x3f800000    # 1.0f

    .line 528
    .line 529
    const/high16 v15, 0x3f800000    # 1.0f

    .line 530
    .line 531
    const/high16 v16, 0x3f800000    # 1.0f

    .line 532
    .line 533
    const/16 v17, 0x2

    .line 534
    .line 535
    const/high16 v18, 0x3f800000    # 1.0f

    .line 536
    .line 537
    invoke-static/range {v11 .. v18}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    sput-object v0, Landroidx/compose/ui/unit/IntRectKt;->_notifications:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 545
    .line 546
    :goto_2
    sput-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->Notifications:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 547
    .line 548
    sget-object v0, Landroidx/sqlite/SQLite;->_person:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 549
    .line 550
    const/high16 v6, 0x41600000    # 14.0f

    .line 551
    .line 552
    if-eqz v0, :cond_3

    .line 553
    .line 554
    goto/16 :goto_3

    .line 555
    .line 556
    :cond_3
    new-instance v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 557
    .line 558
    const/16 v19, 0x0

    .line 559
    .line 560
    const/16 v21, 0x60

    .line 561
    .line 562
    const-string v12, "Filled.Person"

    .line 563
    .line 564
    const/high16 v13, 0x41c00000    # 24.0f

    .line 565
    .line 566
    const/high16 v14, 0x41c00000    # 24.0f

    .line 567
    .line 568
    const/high16 v15, 0x41c00000    # 24.0f

    .line 569
    .line 570
    const/high16 v16, 0x41c00000    # 24.0f

    .line 571
    .line 572
    const-wide/16 v17, 0x0

    .line 573
    .line 574
    const/16 v20, 0x0

    .line 575
    .line 576
    invoke-direct/range {v11 .. v21}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 577
    .line 578
    .line 579
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 580
    .line 581
    new-instance v13, Landroidx/compose/ui/graphics/SolidColor;

    .line 582
    .line 583
    sget-wide v14, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 584
    .line 585
    invoke-direct {v13, v14, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 586
    .line 587
    .line 588
    invoke-static {v5, v5}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 589
    .line 590
    .line 591
    move-result-object v16

    .line 592
    const/high16 v21, 0x40800000    # 4.0f

    .line 593
    .line 594
    const/high16 v22, -0x3f800000    # -4.0f

    .line 595
    .line 596
    const v17, 0x400d70a4    # 2.21f

    .line 597
    .line 598
    .line 599
    const/16 v18, 0x0

    .line 600
    .line 601
    const/high16 v19, 0x40800000    # 4.0f

    .line 602
    .line 603
    const v20, -0x401ae148    # -1.79f

    .line 604
    .line 605
    .line 606
    invoke-virtual/range {v16 .. v22}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 607
    .line 608
    .line 609
    move-object/from16 v0, v16

    .line 610
    .line 611
    const v12, -0x401ae148    # -1.79f

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v12, v9, v9, v9}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 615
    .line 616
    .line 617
    const v12, 0x3fe51eb8    # 1.79f

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v9, v12, v9, v8}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v0, v12, v8, v8, v8}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->close()V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v0, v5, v6}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 630
    .line 631
    .line 632
    const/high16 v21, -0x3f000000    # -8.0f

    .line 633
    .line 634
    const/high16 v22, 0x40800000    # 4.0f

    .line 635
    .line 636
    const v17, -0x3fd51eb8    # -2.67f

    .line 637
    .line 638
    .line 639
    const/high16 v19, -0x3f000000    # -8.0f

    .line 640
    .line 641
    const v20, 0x3fab851f    # 1.34f

    .line 642
    .line 643
    .line 644
    invoke-virtual/range {v16 .. v22}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v0, v2}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v0, v7}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v0, v10}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 654
    .line 655
    .line 656
    const/high16 v22, -0x3f800000    # -4.0f

    .line 657
    .line 658
    const/16 v17, 0x0

    .line 659
    .line 660
    const v18, -0x3fd5c28f    # -2.66f

    .line 661
    .line 662
    .line 663
    const v19, -0x3f5570a4    # -5.33f

    .line 664
    .line 665
    .line 666
    const/high16 v20, -0x3f800000    # -4.0f

    .line 667
    .line 668
    invoke-virtual/range {v16 .. v22}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->close()V

    .line 672
    .line 673
    .line 674
    iget-object v12, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 675
    .line 676
    const/high16 v14, 0x3f800000    # 1.0f

    .line 677
    .line 678
    const/high16 v15, 0x3f800000    # 1.0f

    .line 679
    .line 680
    const/high16 v16, 0x3f800000    # 1.0f

    .line 681
    .line 682
    const/16 v17, 0x2

    .line 683
    .line 684
    const/high16 v18, 0x3f800000    # 1.0f

    .line 685
    .line 686
    invoke-static/range {v11 .. v18}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    sput-object v0, Landroidx/sqlite/SQLite;->_person:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 694
    .line 695
    :goto_3
    sput-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->Person:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 696
    .line 697
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/filled/FilledStarIconKt;->FilledStarIcon$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 698
    .line 699
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 704
    .line 705
    sput-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->Star:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 706
    .line 707
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/filled/FilledThundermailKt;->FilledThundermail$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 708
    .line 709
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 714
    .line 715
    sput-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->Thundermail:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 716
    .line 717
    sget-object v0, Landroidx/room/util/DBUtil;->_warning:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 718
    .line 719
    if-eqz v0, :cond_4

    .line 720
    .line 721
    goto :goto_4

    .line 722
    :cond_4
    new-instance v11, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 723
    .line 724
    const/16 v19, 0x0

    .line 725
    .line 726
    const/16 v21, 0x60

    .line 727
    .line 728
    const-string v12, "Filled.Warning"

    .line 729
    .line 730
    const/high16 v13, 0x41c00000    # 24.0f

    .line 731
    .line 732
    const/high16 v14, 0x41c00000    # 24.0f

    .line 733
    .line 734
    const/high16 v15, 0x41c00000    # 24.0f

    .line 735
    .line 736
    const/high16 v16, 0x41c00000    # 24.0f

    .line 737
    .line 738
    const-wide/16 v17, 0x0

    .line 739
    .line 740
    const/16 v20, 0x0

    .line 741
    .line 742
    invoke-direct/range {v11 .. v21}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 743
    .line 744
    .line 745
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 746
    .line 747
    new-instance v13, Landroidx/compose/ui/graphics/SolidColor;

    .line 748
    .line 749
    sget-wide v14, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 750
    .line 751
    invoke-direct {v13, v14, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 752
    .line 753
    .line 754
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 755
    .line 756
    const/4 v7, 0x1

    .line 757
    invoke-direct {v0, v7}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 758
    .line 759
    .line 760
    const/high16 v7, 0x41a80000    # 21.0f

    .line 761
    .line 762
    invoke-virtual {v0, v1, v7}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v0, v4}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v0, v5, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v0, v1, v7}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->close()V

    .line 775
    .line 776
    .line 777
    const/high16 v1, 0x41500000    # 13.0f

    .line 778
    .line 779
    invoke-virtual {v0, v1, v3}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v0, v10}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v0, v10}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v0, v2}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v0, v2}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->close()V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v0, v1, v6}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v0, v10}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v0, v9}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v0, v2}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v0, v8}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->close()V

    .line 813
    .line 814
    .line 815
    iget-object v12, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 816
    .line 817
    const/high16 v14, 0x3f800000    # 1.0f

    .line 818
    .line 819
    const/high16 v15, 0x3f800000    # 1.0f

    .line 820
    .line 821
    const/high16 v16, 0x3f800000    # 1.0f

    .line 822
    .line 823
    const/16 v17, 0x2

    .line 824
    .line 825
    const/high16 v18, 0x3f800000    # 1.0f

    .line 826
    .line 827
    invoke-static/range {v11 .. v18}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    sput-object v0, Landroidx/room/util/DBUtil;->_warning:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 835
    .line 836
    :goto_4
    sput-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->Warning:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 837
    .line 838
    return-void
.end method

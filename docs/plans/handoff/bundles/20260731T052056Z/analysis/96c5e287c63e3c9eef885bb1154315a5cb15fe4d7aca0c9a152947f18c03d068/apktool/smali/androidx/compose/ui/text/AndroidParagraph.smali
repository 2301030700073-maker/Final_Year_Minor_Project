.class public final Landroidx/compose/ui/text/AndroidParagraph;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final charSequence:Ljava/lang/CharSequence;

.field public final constraints:J

.field public final layout:Landroidx/compose/ui/text/android/TextLayout;

.field public final maxLines:I

.field public final paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

.field public final placeholderRects:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IIJ)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move/from16 v4, p2

    .line 6
    .line 7
    move/from16 v11, p3

    .line 8
    .line 9
    iget-object v1, v10, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->charSequence:Ljava/lang/CharSequence;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v10, v0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 15
    .line 16
    iput v4, v0, Landroidx/compose/ui/text/AndroidParagraph;->maxLines:I

    .line 17
    .line 18
    move-wide/from16 v12, p4

    .line 19
    .line 20
    iput-wide v12, v0, Landroidx/compose/ui/text/AndroidParagraph;->constraints:J

    .line 21
    .line 22
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v2, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    .line 36
    .line 37
    invoke-static {v2}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const/4 v14, 0x1

    .line 41
    if-lt v4, v14, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string v2, "maxLines should be greater than 0"

    .line 45
    .line 46
    invoke-static {v2}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    iget-object v2, v10, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    .line 50
    .line 51
    const/4 v3, 0x5

    .line 52
    const/4 v5, 0x4

    .line 53
    const/4 v6, 0x2

    .line 54
    if-ne v11, v6, :cond_a

    .line 55
    .line 56
    iget-object v8, v2, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 57
    .line 58
    iget-wide v8, v8, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    .line 59
    .line 60
    const/16 v17, 0x0

    .line 61
    .line 62
    invoke-static/range {v17 .. v17}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 63
    .line 64
    .line 65
    move-result-wide v6

    .line 66
    invoke-static {v8, v9, v6, v7}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_9

    .line 71
    .line 72
    iget-object v6, v2, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 73
    .line 74
    iget-wide v6, v6, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    .line 75
    .line 76
    sget-wide v8, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    .line 77
    .line 78
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-nez v6, :cond_9

    .line 83
    .line 84
    iget-object v6, v2, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 85
    .line 86
    iget v6, v6, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    .line 87
    .line 88
    if-nez v6, :cond_2

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_2
    if-ne v6, v3, :cond_3

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    if-ne v6, v5, :cond_4

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-nez v6, :cond_5

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    instance-of v6, v1, Landroid/text/Spannable;

    .line 105
    .line 106
    if-eqz v6, :cond_6

    .line 107
    .line 108
    move-object v6, v1

    .line 109
    check-cast v6, Landroid/text/Spannable;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_6
    const/4 v6, 0x0

    .line 113
    :goto_2
    if-nez v6, :cond_7

    .line 114
    .line 115
    new-instance v6, Landroid/text/SpannableString;

    .line 116
    .line 117
    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    const-class v1, Landroidx/compose/ui/text/android/style/IndentationFixSpan;

    .line 121
    .line 122
    invoke-static {v6, v1}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->hasSpan(Landroid/text/Spanned;Ljava/lang/Class;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_8

    .line 127
    .line 128
    new-instance v1, Landroidx/compose/ui/text/android/style/IndentationFixSpan;

    .line 129
    .line 130
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    sub-int/2addr v7, v14

    .line 138
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    sub-int/2addr v8, v14

    .line 143
    const/16 v9, 0x21

    .line 144
    .line 145
    invoke-interface {v6, v1, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 146
    .line 147
    .line 148
    :cond_8
    move-object v1, v6

    .line 149
    :cond_9
    :goto_3
    move-object v9, v1

    .line 150
    goto :goto_4

    .line 151
    :cond_a
    const/16 v17, 0x0

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :goto_4
    iput-object v9, v0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    .line 155
    .line 156
    iget-object v1, v2, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 157
    .line 158
    iget-object v2, v2, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 159
    .line 160
    iget v6, v1, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    .line 161
    .line 162
    const/4 v7, 0x3

    .line 163
    if-ne v6, v14, :cond_b

    .line 164
    .line 165
    move v8, v7

    .line 166
    goto :goto_5

    .line 167
    :cond_b
    const/4 v8, 0x2

    .line 168
    if-ne v6, v8, :cond_c

    .line 169
    .line 170
    move v8, v5

    .line 171
    goto :goto_5

    .line 172
    :cond_c
    if-ne v6, v7, :cond_d

    .line 173
    .line 174
    const/4 v8, 0x2

    .line 175
    goto :goto_5

    .line 176
    :cond_d
    if-ne v6, v3, :cond_f

    .line 177
    .line 178
    :cond_e
    move/from16 v8, v17

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_f
    const/4 v8, 0x6

    .line 182
    if-ne v6, v8, :cond_e

    .line 183
    .line 184
    move v8, v14

    .line 185
    :goto_5
    if-ne v6, v5, :cond_10

    .line 186
    .line 187
    move-object v6, v2

    .line 188
    move v2, v14

    .line 189
    :goto_6
    const/16 v18, 0x0

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_10
    move-object v6, v2

    .line 193
    move/from16 v2, v17

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :goto_7
    iget v15, v1, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    .line 197
    .line 198
    const/16 v3, 0x20

    .line 199
    .line 200
    const/4 v5, 0x2

    .line 201
    if-ne v15, v5, :cond_12

    .line 202
    .line 203
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 204
    .line 205
    if-gt v15, v3, :cond_11

    .line 206
    .line 207
    move v15, v5

    .line 208
    goto :goto_8

    .line 209
    :cond_11
    const/4 v15, 0x4

    .line 210
    goto :goto_8

    .line 211
    :cond_12
    move/from16 v15, v17

    .line 212
    .line 213
    :goto_8
    iget v1, v1, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    .line 214
    .line 215
    and-int/lit16 v3, v1, 0xff

    .line 216
    .line 217
    if-ne v3, v14, :cond_14

    .line 218
    .line 219
    :cond_13
    move-object v3, v6

    .line 220
    move/from16 v6, v17

    .line 221
    .line 222
    goto :goto_9

    .line 223
    :cond_14
    if-ne v3, v5, :cond_15

    .line 224
    .line 225
    move-object v3, v6

    .line 226
    move v6, v14

    .line 227
    goto :goto_9

    .line 228
    :cond_15
    if-ne v3, v7, :cond_13

    .line 229
    .line 230
    move-object v3, v6

    .line 231
    move v6, v5

    .line 232
    :goto_9
    shr-int/lit8 v7, v1, 0x8

    .line 233
    .line 234
    and-int/lit16 v7, v7, 0xff

    .line 235
    .line 236
    if-ne v7, v14, :cond_17

    .line 237
    .line 238
    :cond_16
    move/from16 v7, v17

    .line 239
    .line 240
    goto :goto_a

    .line 241
    :cond_17
    if-ne v7, v5, :cond_18

    .line 242
    .line 243
    move v7, v14

    .line 244
    goto :goto_a

    .line 245
    :cond_18
    const/4 v5, 0x3

    .line 246
    if-ne v7, v5, :cond_19

    .line 247
    .line 248
    const/4 v7, 0x2

    .line 249
    goto :goto_a

    .line 250
    :cond_19
    const/4 v5, 0x4

    .line 251
    if-ne v7, v5, :cond_16

    .line 252
    .line 253
    const/4 v7, 0x3

    .line 254
    :goto_a
    shr-int/lit8 v1, v1, 0x10

    .line 255
    .line 256
    and-int/lit16 v1, v1, 0xff

    .line 257
    .line 258
    if-ne v1, v14, :cond_1a

    .line 259
    .line 260
    move v1, v8

    .line 261
    move/from16 v8, v17

    .line 262
    .line 263
    const/4 v5, 0x2

    .line 264
    goto :goto_b

    .line 265
    :cond_1a
    const/4 v5, 0x2

    .line 266
    if-ne v1, v5, :cond_1b

    .line 267
    .line 268
    move v1, v8

    .line 269
    move v8, v14

    .line 270
    goto :goto_b

    .line 271
    :cond_1b
    move v1, v8

    .line 272
    move/from16 v8, v17

    .line 273
    .line 274
    :goto_b
    if-ne v11, v5, :cond_1c

    .line 275
    .line 276
    sget-object v16, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 277
    .line 278
    :goto_c
    move-object/from16 v20, v3

    .line 279
    .line 280
    move v5, v15

    .line 281
    move-object/from16 v3, v16

    .line 282
    .line 283
    const/4 v15, 0x4

    .line 284
    :goto_d
    const/16 v19, 0x20

    .line 285
    .line 286
    move/from16 v16, v14

    .line 287
    .line 288
    goto :goto_e

    .line 289
    :cond_1c
    const/4 v5, 0x5

    .line 290
    if-ne v11, v5, :cond_1d

    .line 291
    .line 292
    sget-object v16, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 293
    .line 294
    goto :goto_c

    .line 295
    :cond_1d
    const/4 v5, 0x4

    .line 296
    if-ne v11, v5, :cond_1e

    .line 297
    .line 298
    sget-object v16, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 299
    .line 300
    move/from16 v19, v15

    .line 301
    .line 302
    move v15, v5

    .line 303
    move/from16 v5, v19

    .line 304
    .line 305
    move-object/from16 v20, v3

    .line 306
    .line 307
    move-object/from16 v3, v16

    .line 308
    .line 309
    goto :goto_d

    .line 310
    :cond_1e
    move/from16 v16, v15

    .line 311
    .line 312
    move v15, v5

    .line 313
    move/from16 v5, v16

    .line 314
    .line 315
    move-object/from16 v20, v3

    .line 316
    .line 317
    move/from16 v16, v14

    .line 318
    .line 319
    move-object/from16 v3, v18

    .line 320
    .line 321
    const/16 v19, 0x20

    .line 322
    .line 323
    :goto_e
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/text/AndroidParagraph;->constructTextLayout(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;

    .line 324
    .line 325
    .line 326
    move-result-object v14

    .line 327
    iget-object v0, v14, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 328
    .line 329
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 330
    .line 331
    const/16 v15, 0x23

    .line 332
    .line 333
    if-ge v4, v15, :cond_1f

    .line 334
    .line 335
    iget-object v4, v10, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 336
    .line 337
    invoke-virtual {v4}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    const/4 v10, 0x0

    .line 342
    cmpg-float v4, v4, v10

    .line 343
    .line 344
    if-nez v4, :cond_20

    .line 345
    .line 346
    :cond_1f
    const/4 v10, 0x2

    .line 347
    move-object/from16 v0, p0

    .line 348
    .line 349
    move/from16 v4, p2

    .line 350
    .line 351
    goto :goto_11

    .line 352
    :cond_20
    const/4 v15, 0x4

    .line 353
    if-ne v11, v15, :cond_21

    .line 354
    .line 355
    :goto_f
    const/4 v4, 0x0

    .line 356
    goto :goto_10

    .line 357
    :cond_21
    const/4 v4, 0x5

    .line 358
    if-ne v11, v4, :cond_1f

    .line 359
    .line 360
    goto :goto_f

    .line 361
    :goto_10
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 362
    .line 363
    .line 364
    move-result v10

    .line 365
    if-lez v10, :cond_1f

    .line 366
    .line 367
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 368
    .line 369
    .line 370
    move-result v10

    .line 371
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    add-int/2addr v0, v10

    .line 376
    invoke-interface {v9, v4, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 377
    .line 378
    .line 379
    move-result-object v10

    .line 380
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 381
    .line 382
    .line 383
    move-result v14

    .line 384
    invoke-interface {v9, v0, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    const/4 v9, 0x3

    .line 389
    new-array v9, v9, [Ljava/lang/CharSequence;

    .line 390
    .line 391
    aput-object v10, v9, v4

    .line 392
    .line 393
    const-string/jumbo v4, "\u2026"

    .line 394
    .line 395
    .line 396
    aput-object v4, v9, v16

    .line 397
    .line 398
    const/4 v10, 0x2

    .line 399
    aput-object v0, v9, v10

    .line 400
    .line 401
    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 402
    .line 403
    .line 404
    move-result-object v9

    .line 405
    move-object/from16 v0, p0

    .line 406
    .line 407
    move/from16 v4, p2

    .line 408
    .line 409
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/text/AndroidParagraph;->constructTextLayout(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;

    .line 410
    .line 411
    .line 412
    move-result-object v14

    .line 413
    :goto_11
    iget v9, v14, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    .line 414
    .line 415
    if-ne v11, v10, :cond_26

    .line 416
    .line 417
    invoke-virtual {v14}, Landroidx/compose/ui/text/android/TextLayout;->getHeight()I

    .line 418
    .line 419
    .line 420
    move-result v11

    .line 421
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 422
    .line 423
    .line 424
    move-result v15

    .line 425
    if-le v11, v15, :cond_26

    .line 426
    .line 427
    move/from16 v11, v16

    .line 428
    .line 429
    if-le v4, v11, :cond_26

    .line 430
    .line 431
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    const/4 v11, 0x0

    .line 436
    :goto_12
    if-ge v11, v9, :cond_23

    .line 437
    .line 438
    invoke-virtual {v14, v11}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 439
    .line 440
    .line 441
    move-result v12

    .line 442
    int-to-float v13, v4

    .line 443
    cmpl-float v12, v12, v13

    .line 444
    .line 445
    if-lez v12, :cond_22

    .line 446
    .line 447
    move v9, v11

    .line 448
    goto :goto_13

    .line 449
    :cond_22
    add-int/lit8 v11, v11, 0x1

    .line 450
    .line 451
    goto :goto_12

    .line 452
    :cond_23
    :goto_13
    if-ltz v9, :cond_25

    .line 453
    .line 454
    iget v4, v0, Landroidx/compose/ui/text/AndroidParagraph;->maxLines:I

    .line 455
    .line 456
    if-eq v9, v4, :cond_25

    .line 457
    .line 458
    const/4 v11, 0x1

    .line 459
    if-ge v9, v11, :cond_24

    .line 460
    .line 461
    const/4 v4, 0x1

    .line 462
    goto :goto_14

    .line 463
    :cond_24
    move v4, v9

    .line 464
    :goto_14
    iget-object v9, v0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    .line 465
    .line 466
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/text/AndroidParagraph;->constructTextLayout(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;

    .line 467
    .line 468
    .line 469
    move-result-object v14

    .line 470
    :cond_25
    iput-object v14, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 471
    .line 472
    goto :goto_15

    .line 473
    :cond_26
    iput-object v14, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 474
    .line 475
    :goto_15
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 476
    .line 477
    iget-object v1, v1, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 478
    .line 479
    move-object/from16 v3, v20

    .line 480
    .line 481
    iget-object v2, v3, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 482
    .line 483
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    .line 488
    .line 489
    .line 490
    move-result v4

    .line 491
    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    .line 492
    .line 493
    .line 494
    move-result v5

    .line 495
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    int-to-long v6, v4

    .line 500
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 501
    .line 502
    .line 503
    move-result v4

    .line 504
    int-to-long v4, v4

    .line 505
    shl-long v6, v6, v19

    .line 506
    .line 507
    const-wide v8, 0xffffffffL

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    and-long/2addr v4, v8

    .line 513
    or-long/2addr v4, v6

    .line 514
    iget-object v3, v3, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 515
    .line 516
    invoke-interface {v3}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    .line 517
    .line 518
    .line 519
    move-result v3

    .line 520
    invoke-virtual {v1, v2, v4, v5, v3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V

    .line 521
    .line 522
    .line 523
    iget-object v1, v14, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 524
    .line 525
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    instance-of v2, v2, Landroid/text/Spanned;

    .line 530
    .line 531
    if-nez v2, :cond_28

    .line 532
    .line 533
    :cond_27
    move-object/from16 v1, v18

    .line 534
    .line 535
    goto :goto_16

    .line 536
    :cond_28
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 541
    .line 542
    .line 543
    check-cast v2, Landroid/text/Spanned;

    .line 544
    .line 545
    const/4 v3, -0x1

    .line 546
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 547
    .line 548
    .line 549
    move-result v4

    .line 550
    const-class v5, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 551
    .line 552
    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 553
    .line 554
    .line 555
    move-result v3

    .line 556
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    if-eq v3, v2, :cond_27

    .line 561
    .line 562
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    check-cast v2, Landroid/text/Spanned;

    .line 570
    .line 571
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    const/4 v4, 0x0

    .line 580
    invoke-interface {v2, v4, v1, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    check-cast v1, [Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 585
    .line 586
    :goto_16
    if-eqz v1, :cond_29

    .line 587
    .line 588
    array-length v2, v1

    .line 589
    const/4 v7, 0x0

    .line 590
    :goto_17
    if-ge v7, v2, :cond_29

    .line 591
    .line 592
    aget-object v3, v1, v7

    .line 593
    .line 594
    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    .line 599
    .line 600
    .line 601
    move-result v5

    .line 602
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 603
    .line 604
    .line 605
    move-result v4

    .line 606
    int-to-long v11, v4

    .line 607
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 608
    .line 609
    .line 610
    move-result v4

    .line 611
    int-to-long v4, v4

    .line 612
    shl-long v11, v11, v19

    .line 613
    .line 614
    and-long/2addr v4, v8

    .line 615
    or-long/2addr v4, v11

    .line 616
    iget-object v3, v3, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 617
    .line 618
    new-instance v6, Landroidx/compose/ui/geometry/Size;

    .line 619
    .line 620
    invoke-direct {v6, v4, v5}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    add-int/lit8 v7, v7, 0x1

    .line 627
    .line 628
    goto :goto_17

    .line 629
    :cond_29
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    .line 630
    .line 631
    instance-of v2, v1, Landroid/text/Spanned;

    .line 632
    .line 633
    if-nez v2, :cond_2a

    .line 634
    .line 635
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 636
    .line 637
    goto/16 :goto_25

    .line 638
    .line 639
    :cond_2a
    move-object v2, v1

    .line 640
    check-cast v2, Landroid/text/Spanned;

    .line 641
    .line 642
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 643
    .line 644
    .line 645
    move-result v1

    .line 646
    const-class v3, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    .line 647
    .line 648
    const/4 v4, 0x0

    .line 649
    invoke-interface {v2, v4, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    new-instance v3, Ljava/util/ArrayList;

    .line 654
    .line 655
    array-length v4, v1

    .line 656
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 657
    .line 658
    .line 659
    array-length v4, v1

    .line 660
    const/4 v7, 0x0

    .line 661
    :goto_18
    if-ge v7, v4, :cond_34

    .line 662
    .line 663
    aget-object v5, v1, v7

    .line 664
    .line 665
    check-cast v5, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    .line 666
    .line 667
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 668
    .line 669
    .line 670
    move-result v6

    .line 671
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 672
    .line 673
    .line 674
    move-result v8

    .line 675
    iget-object v9, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 676
    .line 677
    invoke-virtual {v9, v6}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    .line 678
    .line 679
    .line 680
    move-result v9

    .line 681
    iget v11, v0, Landroidx/compose/ui/text/AndroidParagraph;->maxLines:I

    .line 682
    .line 683
    if-lt v9, v11, :cond_2b

    .line 684
    .line 685
    const/4 v11, 0x1

    .line 686
    goto :goto_19

    .line 687
    :cond_2b
    const/4 v11, 0x0

    .line 688
    :goto_19
    iget-object v12, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 689
    .line 690
    iget-object v12, v12, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 691
    .line 692
    invoke-virtual {v12, v9}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 693
    .line 694
    .line 695
    move-result v12

    .line 696
    if-lez v12, :cond_2c

    .line 697
    .line 698
    iget-object v12, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 699
    .line 700
    iget-object v12, v12, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 701
    .line 702
    invoke-virtual {v12, v9}, Landroid/text/Layout;->getLineStart(I)I

    .line 703
    .line 704
    .line 705
    move-result v12

    .line 706
    iget-object v13, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 707
    .line 708
    iget-object v13, v13, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 709
    .line 710
    invoke-virtual {v13, v9}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 711
    .line 712
    .line 713
    move-result v13

    .line 714
    add-int/2addr v13, v12

    .line 715
    if-le v8, v13, :cond_2c

    .line 716
    .line 717
    const/4 v12, 0x1

    .line 718
    goto :goto_1a

    .line 719
    :cond_2c
    const/4 v12, 0x0

    .line 720
    :goto_1a
    iget-object v13, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 721
    .line 722
    invoke-virtual {v13, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineEnd(I)I

    .line 723
    .line 724
    .line 725
    move-result v13

    .line 726
    if-le v8, v13, :cond_2d

    .line 727
    .line 728
    const/4 v8, 0x1

    .line 729
    goto :goto_1b

    .line 730
    :cond_2d
    const/4 v8, 0x0

    .line 731
    :goto_1b
    if-nez v12, :cond_2e

    .line 732
    .line 733
    if-nez v8, :cond_2e

    .line 734
    .line 735
    if-eqz v11, :cond_2f

    .line 736
    .line 737
    :cond_2e
    const/4 v11, 0x1

    .line 738
    const/4 v13, 0x0

    .line 739
    goto/16 :goto_23

    .line 740
    .line 741
    :cond_2f
    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 742
    .line 743
    iget-object v8, v8, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 744
    .line 745
    invoke-virtual {v8, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 746
    .line 747
    .line 748
    move-result v8

    .line 749
    const/4 v11, 0x1

    .line 750
    if-ne v8, v11, :cond_30

    .line 751
    .line 752
    move v8, v11

    .line 753
    goto :goto_1c

    .line 754
    :cond_30
    const/4 v8, 0x0

    .line 755
    :goto_1c
    iget-object v12, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 756
    .line 757
    iget-object v12, v12, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 758
    .line 759
    invoke-virtual {v12, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 760
    .line 761
    .line 762
    move-result v12

    .line 763
    if-eqz v8, :cond_31

    .line 764
    .line 765
    if-nez v12, :cond_31

    .line 766
    .line 767
    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 768
    .line 769
    const/4 v13, 0x0

    .line 770
    invoke-virtual {v8, v6, v13}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(IZ)F

    .line 771
    .line 772
    .line 773
    move-result v6

    .line 774
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getWidthPx()I

    .line 775
    .line 776
    .line 777
    move-result v8

    .line 778
    :goto_1d
    int-to-float v8, v8

    .line 779
    add-float/2addr v8, v6

    .line 780
    goto :goto_1f

    .line 781
    :cond_31
    const/4 v13, 0x0

    .line 782
    if-eqz v8, :cond_32

    .line 783
    .line 784
    if-eqz v12, :cond_32

    .line 785
    .line 786
    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 787
    .line 788
    invoke-virtual {v8, v6, v13}, Landroidx/compose/ui/text/android/TextLayout;->getSecondaryHorizontal(IZ)F

    .line 789
    .line 790
    .line 791
    move-result v8

    .line 792
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getWidthPx()I

    .line 793
    .line 794
    .line 795
    move-result v6

    .line 796
    :goto_1e
    int-to-float v6, v6

    .line 797
    sub-float v6, v8, v6

    .line 798
    .line 799
    goto :goto_1f

    .line 800
    :cond_32
    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 801
    .line 802
    if-eqz v12, :cond_33

    .line 803
    .line 804
    invoke-virtual {v8, v6, v13}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(IZ)F

    .line 805
    .line 806
    .line 807
    move-result v8

    .line 808
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getWidthPx()I

    .line 809
    .line 810
    .line 811
    move-result v6

    .line 812
    goto :goto_1e

    .line 813
    :cond_33
    invoke-virtual {v8, v6, v13}, Landroidx/compose/ui/text/android/TextLayout;->getSecondaryHorizontal(IZ)F

    .line 814
    .line 815
    .line 816
    move-result v6

    .line 817
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getWidthPx()I

    .line 818
    .line 819
    .line 820
    move-result v8

    .line 821
    goto :goto_1d

    .line 822
    :goto_1f
    iget-object v12, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 823
    .line 824
    iget v14, v5, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->verticalAlign:I

    .line 825
    .line 826
    packed-switch v14, :pswitch_data_0

    .line 827
    .line 828
    .line 829
    const-string/jumbo v0, "unexpected verticalAlignment"

    .line 830
    .line 831
    .line 832
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    throw v18

    .line 836
    :pswitch_0
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 837
    .line 838
    .line 839
    move-result-object v14

    .line 840
    iget v15, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 841
    .line 842
    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 843
    .line 844
    add-int/2addr v15, v14

    .line 845
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 846
    .line 847
    .line 848
    move-result v14

    .line 849
    sub-int/2addr v15, v14

    .line 850
    div-int/2addr v15, v10

    .line 851
    int-to-float v14, v15

    .line 852
    invoke-virtual {v12, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    .line 853
    .line 854
    .line 855
    move-result v9

    .line 856
    :goto_20
    add-float/2addr v9, v14

    .line 857
    goto :goto_22

    .line 858
    :pswitch_1
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 859
    .line 860
    .line 861
    move-result-object v14

    .line 862
    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 863
    .line 864
    int-to-float v14, v14

    .line 865
    invoke-virtual {v12, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    .line 866
    .line 867
    .line 868
    move-result v9

    .line 869
    add-float/2addr v9, v14

    .line 870
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 871
    .line 872
    .line 873
    move-result v12

    .line 874
    :goto_21
    int-to-float v12, v12

    .line 875
    sub-float/2addr v9, v12

    .line 876
    goto :goto_22

    .line 877
    :pswitch_2
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 878
    .line 879
    .line 880
    move-result-object v14

    .line 881
    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 882
    .line 883
    int-to-float v14, v14

    .line 884
    invoke-virtual {v12, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    .line 885
    .line 886
    .line 887
    move-result v9

    .line 888
    goto :goto_20

    .line 889
    :pswitch_3
    invoke-virtual {v12, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    .line 890
    .line 891
    .line 892
    move-result v14

    .line 893
    invoke-virtual {v12, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 894
    .line 895
    .line 896
    move-result v9

    .line 897
    add-float/2addr v9, v14

    .line 898
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 899
    .line 900
    .line 901
    move-result v12

    .line 902
    int-to-float v12, v12

    .line 903
    sub-float/2addr v9, v12

    .line 904
    const/high16 v12, 0x40000000    # 2.0f

    .line 905
    .line 906
    div-float/2addr v9, v12

    .line 907
    goto :goto_22

    .line 908
    :pswitch_4
    invoke-virtual {v12, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 909
    .line 910
    .line 911
    move-result v9

    .line 912
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 913
    .line 914
    .line 915
    move-result v12

    .line 916
    goto :goto_21

    .line 917
    :pswitch_5
    invoke-virtual {v12, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    .line 918
    .line 919
    .line 920
    move-result v9

    .line 921
    goto :goto_22

    .line 922
    :pswitch_6
    invoke-virtual {v12, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    .line 923
    .line 924
    .line 925
    move-result v9

    .line 926
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 927
    .line 928
    .line 929
    move-result v12

    .line 930
    goto :goto_21

    .line 931
    :goto_22
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 932
    .line 933
    .line 934
    move-result v5

    .line 935
    int-to-float v5, v5

    .line 936
    add-float/2addr v5, v9

    .line 937
    new-instance v12, Landroidx/compose/ui/geometry/Rect;

    .line 938
    .line 939
    invoke-direct {v12, v6, v9, v8, v5}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 940
    .line 941
    .line 942
    goto :goto_24

    .line 943
    :goto_23
    move-object/from16 v12, v18

    .line 944
    .line 945
    :goto_24
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    add-int/lit8 v7, v7, 0x1

    .line 949
    .line 950
    goto/16 :goto_18

    .line 951
    .line 952
    :cond_34
    move-object v1, v3

    .line 953
    :goto_25
    iput-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->placeholderRects:Ljava/util/List;

    .line 954
    .line 955
    return-void

    .line 956
    nop

    .line 957
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


# virtual methods
.method public final constructTextLayout(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;
    .locals 15

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 8
    .line 9
    iget v6, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textDirectionHeuristic:I

    .line 10
    .line 11
    iget-object v14, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    .line 14
    .line 15
    sget-object v0, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/compose/ui/text/PlatformTextStyle;->paragraphStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    iget-boolean p0, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    .line 26
    .line 27
    :goto_0
    move v7, p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    new-instance v0, Landroidx/compose/ui/text/android/TextLayout;

    .line 32
    .line 33
    move/from16 v4, p1

    .line 34
    .line 35
    move/from16 v13, p2

    .line 36
    .line 37
    move-object/from16 v5, p3

    .line 38
    .line 39
    move/from16 v8, p4

    .line 40
    .line 41
    move/from16 v12, p5

    .line 42
    .line 43
    move/from16 v9, p6

    .line 44
    .line 45
    move/from16 v10, p7

    .line 46
    .line 47
    move/from16 v11, p8

    .line 48
    .line 49
    move-object/from16 v1, p9

    .line 50
    .line 51
    invoke-direct/range {v0 .. v14}, Landroidx/compose/ui/text/android/TextLayout;-><init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IZIIIIIILandroidx/compose/ui/text/android/LayoutIntrinsics;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public final getHeight()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    int-to-float p0, p0

    .line 8
    return p0
.end method

.method public final getRangeForRect-8-6BmAI(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;)J
    .locals 10

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/graphics/ColorKt;->toAndroidRectF(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    const/4 p1, 0x1

    .line 6
    const/4 v8, 0x0

    .line 7
    if-nez p2, :cond_1

    .line 8
    .line 9
    :cond_0
    move p2, v8

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    if-ne p2, p1, :cond_0

    .line 12
    .line 13
    move p2, p1

    .line 14
    :goto_0
    new-instance v6, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/16 v0, 0x18

    .line 17
    .line 18
    invoke-direct {v6, v0, p3}, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 24
    .line 25
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 p3, 0x22

    .line 28
    .line 29
    if-lt p0, p3, :cond_2

    .line 30
    .line 31
    invoke-static {v0, v4, p2, v6}, Landroidx/compose/ui/text/android/AndroidLayoutApi34;->getRangeForRect$ui_text(Landroidx/compose/ui/text/android/TextLayout;Landroid/graphics/RectF;ILandroidx/paging/HintHandler$$ExternalSyntheticLambda0;)[I

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->getLayoutHelper()Lokhttp3/Request$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-ne p2, p1, :cond_3

    .line 42
    .line 43
    new-instance p0, Landroidx/cardview/widget/CardView$1;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->getWordIterator()Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    const/16 v3, 0x13

    .line 54
    .line 55
    invoke-direct {p0, v3, p2, p3}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    move-object v5, p0

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iget-object p3, v0, Landroidx/compose/ui/text/android/TextLayout;->textPaint:Landroid/text/TextPaint;

    .line 65
    .line 66
    const/16 v3, 0x1d

    .line 67
    .line 68
    if-lt p0, v3, :cond_4

    .line 69
    .line 70
    new-instance p0, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderApi29;

    .line 71
    .line 72
    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderApi29;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    new-instance p0, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderUnderApi29;

    .line 77
    .line 78
    invoke-direct {p0, p2}, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderUnderApi29;-><init>(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :goto_2
    iget p0, v4, Landroid/graphics/RectF;->top:F

    .line 83
    .line 84
    float-to-int p0, p0

    .line 85
    invoke-virtual {v1, p0}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    iget p2, v4, Landroid/graphics/RectF;->top:F

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    cmpl-float p2, p2, p3

    .line 96
    .line 97
    if-lez p2, :cond_5

    .line 98
    .line 99
    add-int/lit8 p0, p0, 0x1

    .line 100
    .line 101
    iget p2, v0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    .line 102
    .line 103
    if-lt p0, p2, :cond_5

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_5
    move v3, p0

    .line 107
    iget p0, v4, Landroid/graphics/RectF;->bottom:F

    .line 108
    .line 109
    float-to-int p0, p0

    .line 110
    invoke-virtual {v1, p0}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-nez p0, :cond_6

    .line 115
    .line 116
    iget p2, v4, Landroid/graphics/RectF;->bottom:F

    .line 117
    .line 118
    invoke-virtual {v0, v8}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    cmpg-float p2, p2, p3

    .line 123
    .line 124
    if-gez p2, :cond_6

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_6
    const/4 v7, 0x1

    .line 128
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->getStartOrEndOffsetForRectWithinLine(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Lokhttp3/Request$Builder;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;Z)I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    :goto_3
    move p3, v3

    .line 133
    const/4 v9, -0x1

    .line 134
    if-ne p2, v9, :cond_7

    .line 135
    .line 136
    if-ge p3, p0, :cond_7

    .line 137
    .line 138
    add-int/lit8 v3, p3, 0x1

    .line 139
    .line 140
    const/4 v7, 0x1

    .line 141
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->getStartOrEndOffsetForRectWithinLine(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Lokhttp3/Request$Builder;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;Z)I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    goto :goto_3

    .line 146
    :cond_7
    if-ne p2, v9, :cond_8

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_8
    const/4 v7, 0x0

    .line 150
    move v3, p0

    .line 151
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->getStartOrEndOffsetForRectWithinLine(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Lokhttp3/Request$Builder;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;Z)I

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    :goto_4
    if-ne p0, v9, :cond_9

    .line 156
    .line 157
    if-ge p3, v3, :cond_9

    .line 158
    .line 159
    add-int/lit8 v3, v3, -0x1

    .line 160
    .line 161
    const/4 v7, 0x0

    .line 162
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->getStartOrEndOffsetForRectWithinLine(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Lokhttp3/Request$Builder;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;Z)I

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    goto :goto_4

    .line 167
    :cond_9
    if-ne p0, v9, :cond_a

    .line 168
    .line 169
    :goto_5
    const/4 p0, 0x0

    .line 170
    goto :goto_6

    .line 171
    :cond_a
    add-int/2addr p2, p1

    .line 172
    invoke-interface {v5, p2}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->previousStartBoundary(I)I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    sub-int/2addr p0, p1

    .line 177
    invoke-interface {v5, p0}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->nextEndBoundary(I)I

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    filled-new-array {p2, p0}, [I

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    :goto_6
    if-nez p0, :cond_b

    .line 186
    .line 187
    sget-wide p0, Landroidx/compose/ui/text/TextRange;->Zero:J

    .line 188
    .line 189
    return-wide p0

    .line 190
    :cond_b
    aget p2, p0, v8

    .line 191
    .line 192
    aget p0, p0, p1

    .line 193
    .line 194
    invoke-static {p2, p0}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 195
    .line 196
    .line 197
    move-result-wide p0

    .line 198
    return-wide p0
.end method

.method public final getWidth()F
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->constraints:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    int-to-float p0, p0

    .line 8
    return p0
.end method

.method public final paint(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 6
    .line 7
    iget-boolean v1, v0, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {p1, v2, v2, v1, p0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    iget p0, v0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 27
    .line 28
    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->rect:Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-eqz p0, :cond_2

    .line 38
    .line 39
    int-to-float v1, p0

    .line 40
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    .line 42
    .line 43
    :cond_2
    sget-object v1, Landroidx/compose/ui/text/android/TextLayout_androidKt;->SharedTextAndroidCanvas:Ljava/lang/ThreadLocal;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    new-instance v3, Landroidx/compose/ui/text/android/TextAndroidCanvas;

    .line 52
    .line 53
    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    check-cast v3, Landroidx/compose/ui/text/android/TextAndroidCanvas;

    .line 60
    .line 61
    iput-object p1, v3, Landroidx/compose/ui/text/android/TextAndroidCanvas;->_nativeCanvas:Landroid/graphics/Canvas;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    :try_start_0
    iget-object v4, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 65
    .line 66
    invoke-virtual {v4, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    iput-object v1, v3, Landroidx/compose/ui/text/android/TextAndroidCanvas;->_nativeCanvas:Landroid/graphics/Canvas;

    .line 70
    .line 71
    if-eqz p0, :cond_4

    .line 72
    .line 73
    const/high16 v1, -0x40800000    # -1.0f

    .line 74
    .line 75
    int-to-float p0, p0

    .line 76
    mul-float/2addr v1, p0

    .line 77
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_0
    iget-boolean p0, v0, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    .line 81
    .line 82
    if-eqz p0, :cond_5

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 85
    .line 86
    .line 87
    :cond_5
    return-void

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    iput-object v1, v3, Landroidx/compose/ui/text/android/TextAndroidCanvas;->_nativeCanvas:Landroid/graphics/Canvas;

    .line 90
    .line 91
    throw p0
.end method

.method public final paint-LG529CI(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 4
    .line 5
    iget v1, v0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingBlendMode:I

    .line 6
    .line 7
    invoke-virtual {v0, p2, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setColor-8_81llA(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x3

    .line 20
    invoke-virtual {v0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBlendMode-s9anfk8(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/AndroidParagraph;->paint(Landroidx/compose/ui/graphics/Canvas;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBlendMode-s9anfk8(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final paint-hn5TExg(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 4
    .line 5
    iget v1, v0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingBlendMode:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    int-to-long v4, v2

    .line 20
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    int-to-long v2, v2

    .line 25
    const/16 v6, 0x20

    .line 26
    .line 27
    shl-long/2addr v4, v6

    .line 28
    const-wide v6, 0xffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr v2, v6

    .line 34
    or-long/2addr v2, v4

    .line 35
    invoke-virtual {v0, p2, v2, v3, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 45
    .line 46
    .line 47
    const/4 p2, 0x3

    .line 48
    invoke-virtual {v0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBlendMode-s9anfk8(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/AndroidParagraph;->paint(Landroidx/compose/ui/graphics/Canvas;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBlendMode-s9anfk8(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

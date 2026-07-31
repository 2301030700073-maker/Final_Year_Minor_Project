.class public final Landroidx/compose/ui/text/AndroidParagraph;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


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
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v10, v0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 13
    .line 14
    iput v4, v0, Landroidx/compose/ui/text/AndroidParagraph;->maxLines:I

    .line 15
    .line 16
    move-wide/from16 v12, p4

    .line 17
    .line 18
    iput-wide v12, v0, Landroidx/compose/ui/text/AndroidParagraph;->constraints:J

    .line 19
    .line 20
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v1, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    .line 34
    .line 35
    invoke-static {v1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    const/4 v14, 0x1

    .line 39
    if-lt v4, v14, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string v1, "maxLines should be greater than 0"

    .line 43
    .line 44
    invoke-static {v1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    iget-object v1, v10, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    .line 48
    .line 49
    iget-object v2, v10, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->charSequence:Ljava/lang/CharSequence;

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
    iget-object v8, v1, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 57
    .line 58
    iget-wide v8, v8, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    .line 59
    .line 60
    const/16 v17, 0x0

    .line 61
    .line 62
    invoke-static/range {v17 .. v17}, Landroidx/sqlite/SQLite;->getSp(I)J

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
    iget-object v6, v1, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

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
    iget-object v6, v1, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

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
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

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
    instance-of v6, v2, Landroid/text/Spannable;

    .line 105
    .line 106
    if-eqz v6, :cond_6

    .line 107
    .line 108
    move-object v6, v2

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
    invoke-direct {v6, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    const-class v2, Landroidx/compose/ui/text/android/style/IndentationFixSpan;

    .line 121
    .line 122
    invoke-static {v6, v2}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->hasSpan(Landroid/text/Spanned;Ljava/lang/Class;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_8

    .line 127
    .line 128
    new-instance v2, Landroidx/compose/ui/text/android/style/IndentationFixSpan;

    .line 129
    .line 130
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

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
    invoke-interface {v6, v2, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 146
    .line 147
    .line 148
    :cond_8
    move-object v2, v6

    .line 149
    :cond_9
    :goto_3
    move-object v9, v2

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
    iget-object v2, v1, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 157
    .line 158
    iget-object v1, v1, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 159
    .line 160
    iget v6, v2, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    .line 161
    .line 162
    const/4 v7, 0x3

    .line 163
    if-ne v6, v14, :cond_b

    .line 164
    .line 165
    move v8, v7

    .line 166
    goto :goto_6

    .line 167
    :cond_b
    const/4 v8, 0x2

    .line 168
    if-ne v6, v8, :cond_c

    .line 169
    .line 170
    move v8, v5

    .line 171
    goto :goto_6

    .line 172
    :cond_c
    if-ne v6, v7, :cond_d

    .line 173
    .line 174
    const/4 v8, 0x2

    .line 175
    goto :goto_6

    .line 176
    :cond_d
    if-ne v6, v3, :cond_e

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_e
    const/4 v8, 0x6

    .line 180
    if-ne v6, v8, :cond_f

    .line 181
    .line 182
    move v8, v14

    .line 183
    goto :goto_6

    .line 184
    :cond_f
    :goto_5
    move/from16 v8, v17

    .line 185
    .line 186
    :goto_6
    if-ne v6, v5, :cond_10

    .line 187
    .line 188
    move v6, v14

    .line 189
    :goto_7
    const/16 v18, 0x0

    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_10
    move/from16 v6, v17

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :goto_8
    iget v15, v2, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    .line 196
    .line 197
    const/16 v3, 0x20

    .line 198
    .line 199
    const/4 v5, 0x2

    .line 200
    if-ne v15, v5, :cond_12

    .line 201
    .line 202
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 203
    .line 204
    if-gt v15, v3, :cond_11

    .line 205
    .line 206
    move v15, v5

    .line 207
    goto :goto_9

    .line 208
    :cond_11
    const/4 v15, 0x4

    .line 209
    goto :goto_9

    .line 210
    :cond_12
    move/from16 v15, v17

    .line 211
    .line 212
    :goto_9
    iget v2, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    .line 213
    .line 214
    and-int/lit16 v3, v2, 0xff

    .line 215
    .line 216
    if-ne v3, v14, :cond_13

    .line 217
    .line 218
    goto :goto_a

    .line 219
    :cond_13
    if-ne v3, v5, :cond_14

    .line 220
    .line 221
    move v3, v2

    .line 222
    move v2, v6

    .line 223
    move v6, v14

    .line 224
    goto :goto_b

    .line 225
    :cond_14
    if-ne v3, v7, :cond_15

    .line 226
    .line 227
    move v3, v2

    .line 228
    move v2, v6

    .line 229
    const/4 v6, 0x2

    .line 230
    goto :goto_b

    .line 231
    :cond_15
    :goto_a
    move v3, v2

    .line 232
    move v2, v6

    .line 233
    move/from16 v6, v17

    .line 234
    .line 235
    :goto_b
    shr-int/lit8 v5, v3, 0x8

    .line 236
    .line 237
    and-int/lit16 v5, v5, 0xff

    .line 238
    .line 239
    if-ne v5, v14, :cond_16

    .line 240
    .line 241
    goto :goto_c

    .line 242
    :cond_16
    const/4 v14, 0x2

    .line 243
    if-ne v5, v14, :cond_17

    .line 244
    .line 245
    move v5, v7

    .line 246
    const/4 v7, 0x1

    .line 247
    goto :goto_d

    .line 248
    :cond_17
    if-ne v5, v7, :cond_18

    .line 249
    .line 250
    move v5, v7

    .line 251
    const/4 v7, 0x2

    .line 252
    goto :goto_d

    .line 253
    :cond_18
    const/4 v14, 0x4

    .line 254
    if-ne v5, v14, :cond_19

    .line 255
    .line 256
    move v5, v7

    .line 257
    goto :goto_d

    .line 258
    :cond_19
    :goto_c
    move v5, v7

    .line 259
    move/from16 v7, v17

    .line 260
    .line 261
    :goto_d
    shr-int/lit8 v3, v3, 0x10

    .line 262
    .line 263
    and-int/lit16 v3, v3, 0xff

    .line 264
    .line 265
    const/4 v14, 0x1

    .line 266
    if-ne v3, v14, :cond_1a

    .line 267
    .line 268
    const/4 v14, 0x2

    .line 269
    goto :goto_e

    .line 270
    :cond_1a
    const/4 v14, 0x2

    .line 271
    if-ne v3, v14, :cond_1b

    .line 272
    .line 273
    move-object v3, v1

    .line 274
    move v1, v8

    .line 275
    const/4 v8, 0x1

    .line 276
    goto :goto_f

    .line 277
    :cond_1b
    :goto_e
    move-object v3, v1

    .line 278
    move v1, v8

    .line 279
    move/from16 v8, v17

    .line 280
    .line 281
    :goto_f
    if-ne v11, v14, :cond_1c

    .line 282
    .line 283
    sget-object v16, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 284
    .line 285
    :goto_10
    move v5, v15

    .line 286
    const/16 v19, 0x20

    .line 287
    .line 288
    move-object v15, v3

    .line 289
    move-object/from16 v3, v16

    .line 290
    .line 291
    goto :goto_11

    .line 292
    :cond_1c
    const/4 v5, 0x5

    .line 293
    if-ne v11, v5, :cond_1d

    .line 294
    .line 295
    sget-object v16, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 296
    .line 297
    goto :goto_10

    .line 298
    :cond_1d
    const/4 v5, 0x4

    .line 299
    if-ne v11, v5, :cond_1e

    .line 300
    .line 301
    sget-object v16, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 302
    .line 303
    goto :goto_10

    .line 304
    :cond_1e
    move v5, v15

    .line 305
    const/16 v19, 0x20

    .line 306
    .line 307
    move-object v15, v3

    .line 308
    move-object/from16 v3, v18

    .line 309
    .line 310
    :goto_11
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/text/AndroidParagraph;->constructTextLayout(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;

    .line 311
    .line 312
    .line 313
    move-result-object v14

    .line 314
    iget-object v0, v14, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 315
    .line 316
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 317
    .line 318
    move/from16 v16, v1

    .line 319
    .line 320
    const/16 v1, 0x23

    .line 321
    .line 322
    if-ge v4, v1, :cond_1f

    .line 323
    .line 324
    iget-object v1, v10, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 325
    .line 326
    invoke-virtual {v1}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    const/4 v4, 0x0

    .line 331
    cmpg-float v1, v1, v4

    .line 332
    .line 333
    if-nez v1, :cond_20

    .line 334
    .line 335
    :cond_1f
    const/4 v10, 0x2

    .line 336
    move-object/from16 v0, p0

    .line 337
    .line 338
    move/from16 v4, p2

    .line 339
    .line 340
    move/from16 v1, v16

    .line 341
    .line 342
    goto :goto_14

    .line 343
    :cond_20
    const/4 v1, 0x4

    .line 344
    if-ne v11, v1, :cond_21

    .line 345
    .line 346
    :goto_12
    const/4 v1, 0x0

    .line 347
    goto :goto_13

    .line 348
    :cond_21
    const/4 v1, 0x5

    .line 349
    if-ne v11, v1, :cond_1f

    .line 350
    .line 351
    goto :goto_12

    .line 352
    :goto_13
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-lez v4, :cond_1f

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    add-int/2addr v0, v4

    .line 367
    invoke-interface {v9, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 372
    .line 373
    .line 374
    move-result v10

    .line 375
    invoke-interface {v9, v0, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    const/4 v9, 0x3

    .line 380
    new-array v9, v9, [Ljava/lang/CharSequence;

    .line 381
    .line 382
    aput-object v4, v9, v1

    .line 383
    .line 384
    const-string/jumbo v1, "\u2026"

    .line 385
    .line 386
    .line 387
    const/16 v20, 0x1

    .line 388
    .line 389
    aput-object v1, v9, v20

    .line 390
    .line 391
    const/4 v10, 0x2

    .line 392
    aput-object v0, v9, v10

    .line 393
    .line 394
    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 395
    .line 396
    .line 397
    move-result-object v9

    .line 398
    move-object/from16 v0, p0

    .line 399
    .line 400
    move/from16 v4, p2

    .line 401
    .line 402
    move/from16 v1, v16

    .line 403
    .line 404
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/text/AndroidParagraph;->constructTextLayout(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;

    .line 405
    .line 406
    .line 407
    move-result-object v14

    .line 408
    :goto_14
    iget v9, v14, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    .line 409
    .line 410
    if-ne v11, v10, :cond_26

    .line 411
    .line 412
    invoke-virtual {v14}, Landroidx/compose/ui/text/android/TextLayout;->getHeight()I

    .line 413
    .line 414
    .line 415
    move-result v11

    .line 416
    move/from16 v16, v10

    .line 417
    .line 418
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 419
    .line 420
    .line 421
    move-result v10

    .line 422
    if-le v11, v10, :cond_27

    .line 423
    .line 424
    const/4 v10, 0x1

    .line 425
    if-le v4, v10, :cond_27

    .line 426
    .line 427
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    const/4 v10, 0x0

    .line 432
    :goto_15
    if-ge v10, v9, :cond_23

    .line 433
    .line 434
    invoke-virtual {v14, v10}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 435
    .line 436
    .line 437
    move-result v11

    .line 438
    int-to-float v12, v4

    .line 439
    cmpl-float v11, v11, v12

    .line 440
    .line 441
    if-lez v11, :cond_22

    .line 442
    .line 443
    goto :goto_16

    .line 444
    :cond_22
    add-int/lit8 v10, v10, 0x1

    .line 445
    .line 446
    goto :goto_15

    .line 447
    :cond_23
    move v10, v9

    .line 448
    :goto_16
    if-ltz v10, :cond_25

    .line 449
    .line 450
    iget v4, v0, Landroidx/compose/ui/text/AndroidParagraph;->maxLines:I

    .line 451
    .line 452
    if-eq v10, v4, :cond_25

    .line 453
    .line 454
    const/4 v4, 0x1

    .line 455
    if-ge v10, v4, :cond_24

    .line 456
    .line 457
    const/4 v4, 0x1

    .line 458
    goto :goto_17

    .line 459
    :cond_24
    move v4, v10

    .line 460
    :goto_17
    iget-object v9, v0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    .line 461
    .line 462
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/text/AndroidParagraph;->constructTextLayout(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;

    .line 463
    .line 464
    .line 465
    move-result-object v14

    .line 466
    :cond_25
    iput-object v14, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 467
    .line 468
    goto :goto_18

    .line 469
    :cond_26
    move/from16 v16, v10

    .line 470
    .line 471
    :cond_27
    iput-object v14, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 472
    .line 473
    :goto_18
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 474
    .line 475
    iget-object v1, v1, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 476
    .line 477
    iget-object v2, v15, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 478
    .line 479
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    .line 488
    .line 489
    .line 490
    move-result v4

    .line 491
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    int-to-long v5, v3

    .line 496
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 497
    .line 498
    .line 499
    move-result v3

    .line 500
    int-to-long v3, v3

    .line 501
    shl-long v5, v5, v19

    .line 502
    .line 503
    const-wide v7, 0xffffffffL

    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    and-long/2addr v3, v7

    .line 509
    or-long/2addr v3, v5

    .line 510
    iget-object v5, v15, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 511
    .line 512
    invoke-interface {v5}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    .line 513
    .line 514
    .line 515
    move-result v5

    .line 516
    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V

    .line 517
    .line 518
    .line 519
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 520
    .line 521
    iget-object v1, v1, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 522
    .line 523
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    instance-of v2, v2, Landroid/text/Spanned;

    .line 528
    .line 529
    if-nez v2, :cond_29

    .line 530
    .line 531
    :cond_28
    move-object/from16 v1, v18

    .line 532
    .line 533
    goto :goto_19

    .line 534
    :cond_29
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    check-cast v2, Landroid/text/Spanned;

    .line 542
    .line 543
    const/4 v3, -0x1

    .line 544
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    const-class v5, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 549
    .line 550
    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    if-eq v3, v2, :cond_28

    .line 559
    .line 560
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    check-cast v2, Landroid/text/Spanned;

    .line 568
    .line 569
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    const/4 v3, 0x0

    .line 578
    invoke-interface {v2, v3, v1, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    check-cast v1, [Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 583
    .line 584
    :goto_19
    if-eqz v1, :cond_2a

    .line 585
    .line 586
    array-length v2, v1

    .line 587
    const/4 v3, 0x0

    .line 588
    :goto_1a
    if-ge v3, v2, :cond_2a

    .line 589
    .line 590
    aget-object v4, v1, v3

    .line 591
    .line 592
    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getWidth()F

    .line 593
    .line 594
    .line 595
    move-result v5

    .line 596
    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->getHeight()F

    .line 597
    .line 598
    .line 599
    move-result v6

    .line 600
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 601
    .line 602
    .line 603
    move-result v5

    .line 604
    int-to-long v9, v5

    .line 605
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 606
    .line 607
    .line 608
    move-result v5

    .line 609
    int-to-long v5, v5

    .line 610
    shl-long v9, v9, v19

    .line 611
    .line 612
    and-long/2addr v5, v7

    .line 613
    or-long/2addr v5, v9

    .line 614
    iget-object v4, v4, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 615
    .line 616
    new-instance v9, Landroidx/compose/ui/geometry/Size;

    .line 617
    .line 618
    invoke-direct {v9, v5, v6}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 622
    .line 623
    .line 624
    add-int/lit8 v3, v3, 0x1

    .line 625
    .line 626
    goto :goto_1a

    .line 627
    :cond_2a
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    .line 628
    .line 629
    instance-of v2, v1, Landroid/text/Spanned;

    .line 630
    .line 631
    if-nez v2, :cond_2b

    .line 632
    .line 633
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 634
    .line 635
    goto/16 :goto_28

    .line 636
    .line 637
    :cond_2b
    move-object v2, v1

    .line 638
    check-cast v2, Landroid/text/Spanned;

    .line 639
    .line 640
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 641
    .line 642
    .line 643
    move-result v1

    .line 644
    const-class v3, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    .line 645
    .line 646
    const/4 v4, 0x0

    .line 647
    invoke-interface {v2, v4, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    new-instance v3, Ljava/util/ArrayList;

    .line 652
    .line 653
    array-length v4, v1

    .line 654
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 655
    .line 656
    .line 657
    array-length v4, v1

    .line 658
    const/4 v7, 0x0

    .line 659
    :goto_1b
    if-ge v7, v4, :cond_35

    .line 660
    .line 661
    aget-object v5, v1, v7

    .line 662
    .line 663
    check-cast v5, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    .line 664
    .line 665
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 666
    .line 667
    .line 668
    move-result v6

    .line 669
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 670
    .line 671
    .line 672
    move-result v8

    .line 673
    iget-object v9, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 674
    .line 675
    iget-object v9, v9, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 676
    .line 677
    invoke-virtual {v9, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 678
    .line 679
    .line 680
    move-result v9

    .line 681
    iget v10, v0, Landroidx/compose/ui/text/AndroidParagraph;->maxLines:I

    .line 682
    .line 683
    if-lt v9, v10, :cond_2c

    .line 684
    .line 685
    const/4 v10, 0x1

    .line 686
    goto :goto_1c

    .line 687
    :cond_2c
    const/4 v10, 0x0

    .line 688
    :goto_1c
    iget-object v11, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 689
    .line 690
    iget-object v11, v11, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 691
    .line 692
    invoke-virtual {v11, v9}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 693
    .line 694
    .line 695
    move-result v11

    .line 696
    if-lez v11, :cond_2d

    .line 697
    .line 698
    iget-object v11, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 699
    .line 700
    iget-object v11, v11, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 701
    .line 702
    invoke-virtual {v11, v9}, Landroid/text/Layout;->getLineStart(I)I

    .line 703
    .line 704
    .line 705
    move-result v11

    .line 706
    iget-object v12, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 707
    .line 708
    iget-object v12, v12, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 709
    .line 710
    invoke-virtual {v12, v9}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 711
    .line 712
    .line 713
    move-result v12

    .line 714
    add-int/2addr v12, v11

    .line 715
    if-le v8, v12, :cond_2d

    .line 716
    .line 717
    const/4 v11, 0x1

    .line 718
    goto :goto_1d

    .line 719
    :cond_2d
    const/4 v11, 0x0

    .line 720
    :goto_1d
    iget-object v12, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 721
    .line 722
    invoke-virtual {v12, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineEnd(I)I

    .line 723
    .line 724
    .line 725
    move-result v12

    .line 726
    if-le v8, v12, :cond_2e

    .line 727
    .line 728
    const/4 v8, 0x1

    .line 729
    goto :goto_1e

    .line 730
    :cond_2e
    const/4 v8, 0x0

    .line 731
    :goto_1e
    if-nez v11, :cond_2f

    .line 732
    .line 733
    if-nez v8, :cond_2f

    .line 734
    .line 735
    if-eqz v10, :cond_30

    .line 736
    .line 737
    :cond_2f
    const/4 v10, 0x1

    .line 738
    const/4 v12, 0x0

    .line 739
    goto/16 :goto_26

    .line 740
    .line 741
    :cond_30
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
    const/4 v10, 0x1

    .line 750
    if-ne v8, v10, :cond_31

    .line 751
    .line 752
    move v8, v10

    .line 753
    goto :goto_1f

    .line 754
    :cond_31
    const/4 v8, 0x0

    .line 755
    :goto_1f
    iget-object v11, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 756
    .line 757
    iget-object v11, v11, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 758
    .line 759
    invoke-virtual {v11, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 760
    .line 761
    .line 762
    move-result v11

    .line 763
    if-eqz v8, :cond_32

    .line 764
    .line 765
    if-nez v11, :cond_32

    .line 766
    .line 767
    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 768
    .line 769
    const/4 v12, 0x0

    .line 770
    invoke-virtual {v8, v6, v12}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(IZ)F

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
    :goto_20
    int-to-float v8, v8

    .line 779
    add-float/2addr v8, v6

    .line 780
    goto :goto_22

    .line 781
    :cond_32
    const/4 v12, 0x0

    .line 782
    if-eqz v8, :cond_33

    .line 783
    .line 784
    if-eqz v11, :cond_33

    .line 785
    .line 786
    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 787
    .line 788
    invoke-virtual {v8, v6, v12}, Landroidx/compose/ui/text/android/TextLayout;->getSecondaryHorizontal(IZ)F

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
    :goto_21
    int-to-float v6, v6

    .line 797
    sub-float v6, v8, v6

    .line 798
    .line 799
    goto :goto_22

    .line 800
    :cond_33
    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 801
    .line 802
    if-eqz v11, :cond_34

    .line 803
    .line 804
    invoke-virtual {v8, v6, v12}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(IZ)F

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
    goto :goto_21

    .line 813
    :cond_34
    invoke-virtual {v8, v6, v12}, Landroidx/compose/ui/text/android/TextLayout;->getSecondaryHorizontal(IZ)F

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
    goto :goto_20

    .line 822
    :goto_22
    iget-object v11, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 823
    .line 824
    iget v13, v5, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->verticalAlign:I

    .line 825
    .line 826
    packed-switch v13, :pswitch_data_0

    .line 827
    .line 828
    .line 829
    const-string v0, "unexpected verticalAlignment"

    .line 830
    .line 831
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    throw v18

    .line 835
    :pswitch_0
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 836
    .line 837
    .line 838
    move-result-object v13

    .line 839
    iget v14, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 840
    .line 841
    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 842
    .line 843
    add-int/2addr v14, v13

    .line 844
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 845
    .line 846
    .line 847
    move-result v13

    .line 848
    sub-int/2addr v14, v13

    .line 849
    div-int/lit8 v14, v14, 0x2

    .line 850
    .line 851
    int-to-float v13, v14

    .line 852
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    .line 853
    .line 854
    .line 855
    move-result v9

    .line 856
    :goto_23
    add-float/2addr v9, v13

    .line 857
    goto :goto_25

    .line 858
    :pswitch_1
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 859
    .line 860
    .line 861
    move-result-object v13

    .line 862
    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 863
    .line 864
    int-to-float v13, v13

    .line 865
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    .line 866
    .line 867
    .line 868
    move-result v9

    .line 869
    add-float/2addr v9, v13

    .line 870
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 871
    .line 872
    .line 873
    move-result v11

    .line 874
    :goto_24
    int-to-float v11, v11

    .line 875
    sub-float/2addr v9, v11

    .line 876
    goto :goto_25

    .line 877
    :pswitch_2
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    .line 878
    .line 879
    .line 880
    move-result-object v13

    .line 881
    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 882
    .line 883
    int-to-float v13, v13

    .line 884
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    .line 885
    .line 886
    .line 887
    move-result v9

    .line 888
    goto :goto_23

    .line 889
    :pswitch_3
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    .line 890
    .line 891
    .line 892
    move-result v13

    .line 893
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 894
    .line 895
    .line 896
    move-result v9

    .line 897
    add-float/2addr v9, v13

    .line 898
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 899
    .line 900
    .line 901
    move-result v11

    .line 902
    int-to-float v11, v11

    .line 903
    sub-float/2addr v9, v11

    .line 904
    const/high16 v11, 0x40000000    # 2.0f

    .line 905
    .line 906
    div-float/2addr v9, v11

    .line 907
    goto :goto_25

    .line 908
    :pswitch_4
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 909
    .line 910
    .line 911
    move-result v9

    .line 912
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 913
    .line 914
    .line 915
    move-result v11

    .line 916
    goto :goto_24

    .line 917
    :pswitch_5
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    .line 918
    .line 919
    .line 920
    move-result v9

    .line 921
    goto :goto_25

    .line 922
    :pswitch_6
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    .line 923
    .line 924
    .line 925
    move-result v9

    .line 926
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    .line 927
    .line 928
    .line 929
    move-result v11

    .line 930
    goto :goto_24

    .line 931
    :goto_25
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
    new-instance v11, Landroidx/compose/ui/geometry/Rect;

    .line 938
    .line 939
    invoke-direct {v11, v6, v9, v8, v5}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 940
    .line 941
    .line 942
    goto :goto_27

    .line 943
    :goto_26
    move-object/from16 v11, v18

    .line 944
    .line 945
    :goto_27
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    add-int/lit8 v7, v7, 0x1

    .line 949
    .line 950
    goto/16 :goto_1b

    .line 951
    .line 952
    :cond_35
    move-object v1, v3

    .line 953
    :goto_28
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

.method public final getRangeForRect-8-6BmAI(Landroidx/compose/ui/geometry/Rect;ILandroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;)J
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
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-ne p2, p1, :cond_1

    .line 11
    .line 12
    move p2, p1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move p2, v8

    .line 15
    :goto_1
    new-instance v6, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/16 v0, 0x14

    .line 18
    .line 19
    invoke-direct {v6, v0, p3}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 23
    .line 24
    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 25
    .line 26
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 p3, 0x22

    .line 29
    .line 30
    if-lt p0, p3, :cond_2

    .line 31
    .line 32
    invoke-static {v0, v4, p2, v6}, Landroidx/compose/ui/text/android/AndroidLayoutApi34;->getRangeForRect$ui_text(Landroidx/compose/ui/text/android/TextLayout;Landroid/graphics/RectF;ILandroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;)[I

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto/16 :goto_7

    .line 37
    .line 38
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->getLayoutHelper()Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-ne p2, p1, :cond_3

    .line 43
    .line 44
    new-instance p0, Landroidx/compose/ui/platform/WeakCache;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->getWordIterator()Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    const/16 v3, 0x9

    .line 55
    .line 56
    invoke-direct {p0, v3, p2, p3}, Landroidx/compose/ui/platform/WeakCache;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_2
    move-object v5, p0

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object p3, v0, Landroidx/compose/ui/text/android/TextLayout;->textPaint:Landroid/text/TextPaint;

    .line 66
    .line 67
    const/16 v3, 0x1d

    .line 68
    .line 69
    if-lt p0, v3, :cond_4

    .line 70
    .line 71
    new-instance p0, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderApi29;

    .line 72
    .line 73
    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderApi29;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    new-instance p0, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderUnderApi29;

    .line 78
    .line 79
    invoke-direct {p0, p2}, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderUnderApi29;-><init>(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_3
    iget p0, v4, Landroid/graphics/RectF;->top:F

    .line 84
    .line 85
    float-to-int p0, p0

    .line 86
    invoke-virtual {v1, p0}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    iget p2, v4, Landroid/graphics/RectF;->top:F

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    cmpl-float p2, p2, p3

    .line 97
    .line 98
    if-lez p2, :cond_5

    .line 99
    .line 100
    add-int/lit8 p0, p0, 0x1

    .line 101
    .line 102
    iget p2, v0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    .line 103
    .line 104
    if-lt p0, p2, :cond_5

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_5
    move v3, p0

    .line 108
    iget p0, v4, Landroid/graphics/RectF;->bottom:F

    .line 109
    .line 110
    float-to-int p0, p0

    .line 111
    invoke-virtual {v1, p0}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-nez p0, :cond_6

    .line 116
    .line 117
    iget p2, v4, Landroid/graphics/RectF;->bottom:F

    .line 118
    .line 119
    invoke-virtual {v0, v8}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    cmpg-float p2, p2, p3

    .line 124
    .line 125
    if-gez p2, :cond_6

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_6
    const/4 v7, 0x1

    .line 129
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->getStartOrEndOffsetForRectWithinLine(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Lcom/fsck/k9/mailstore/LocalStore$7;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;Z)I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    :goto_4
    move p3, v3

    .line 134
    const/4 v9, -0x1

    .line 135
    if-ne p2, v9, :cond_7

    .line 136
    .line 137
    if-ge p3, p0, :cond_7

    .line 138
    .line 139
    add-int/lit8 v3, p3, 0x1

    .line 140
    .line 141
    const/4 v7, 0x1

    .line 142
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->getStartOrEndOffsetForRectWithinLine(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Lcom/fsck/k9/mailstore/LocalStore$7;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;Z)I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    goto :goto_4

    .line 147
    :cond_7
    if-ne p2, v9, :cond_8

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_8
    const/4 v7, 0x0

    .line 151
    move v3, p0

    .line 152
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->getStartOrEndOffsetForRectWithinLine(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Lcom/fsck/k9/mailstore/LocalStore$7;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;Z)I

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    :goto_5
    if-ne p0, v9, :cond_9

    .line 157
    .line 158
    if-ge p3, v3, :cond_9

    .line 159
    .line 160
    add-int/lit8 v3, v3, -0x1

    .line 161
    .line 162
    const/4 v7, 0x0

    .line 163
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->getStartOrEndOffsetForRectWithinLine(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Lcom/fsck/k9/mailstore/LocalStore$7;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;Z)I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    goto :goto_5

    .line 168
    :cond_9
    if-ne p0, v9, :cond_a

    .line 169
    .line 170
    :goto_6
    const/4 p0, 0x0

    .line 171
    goto :goto_7

    .line 172
    :cond_a
    add-int/2addr p2, p1

    .line 173
    invoke-interface {v5, p2}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->previousStartBoundary(I)I

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    sub-int/2addr p0, p1

    .line 178
    invoke-interface {v5, p0}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->nextEndBoundary(I)I

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    filled-new-array {p2, p0}, [I

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    :goto_7
    if-nez p0, :cond_b

    .line 187
    .line 188
    sget-wide p0, Landroidx/compose/ui/text/TextRange;->Zero:J

    .line 189
    .line 190
    return-wide p0

    .line 191
    :cond_b
    aget p2, p0, v8

    .line 192
    .line 193
    aget p0, p0, p1

    .line 194
    .line 195
    invoke-static {p2, p0}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 196
    .line 197
    .line 198
    move-result-wide p0

    .line 199
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

.class public final Landroidx/palette/graphics/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final VBOX_COMPARATOR_VOLUME:Landroidx/recyclerview/widget/DiffUtil$1;


# instance fields
.field public final mColors:[I

.field public final mFilters:[Landroidx/palette/graphics/Palette$1;

.field public final mHistogram:[I

.field public final mQuantizedColors:Ljava/util/ArrayList;

.field public final mTempHsl:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/palette/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Landroidx/recyclerview/widget/DiffUtil$1;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>([I[Landroidx/palette/graphics/Palette$1;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v2, v2, [F

    .line 10
    .line 11
    iput-object v2, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    .line 12
    .line 13
    move-object/from16 v2, p2

    .line 14
    .line 15
    iput-object v2, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$1;

    .line 16
    .line 17
    const v2, 0x8000

    .line 18
    .line 19
    .line 20
    new-array v3, v2, [I

    .line 21
    .line 22
    iput-object v3, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    move v5, v4

    .line 26
    :goto_0
    array-length v6, v1

    .line 27
    const/16 v7, 0x8

    .line 28
    .line 29
    const/4 v8, 0x5

    .line 30
    const/4 v9, 0x1

    .line 31
    if-ge v5, v6, :cond_0

    .line 32
    .line 33
    aget v6, v1, v5

    .line 34
    .line 35
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    invoke-static {v10, v7, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    invoke-static {v11, v7, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-static {v6, v7, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    shl-int/lit8 v7, v10, 0xa

    .line 60
    .line 61
    shl-int/lit8 v8, v11, 0x5

    .line 62
    .line 63
    or-int/2addr v7, v8

    .line 64
    or-int/2addr v6, v7

    .line 65
    aput v6, v1, v5

    .line 66
    .line 67
    aget v7, v3, v6

    .line 68
    .line 69
    add-int/2addr v7, v9

    .line 70
    aput v7, v3, v6

    .line 71
    .line 72
    add-int/lit8 v5, v5, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move v1, v4

    .line 76
    move v5, v1

    .line 77
    :goto_1
    if-ge v1, v2, :cond_3

    .line 78
    .line 79
    aget v6, v3, v1

    .line 80
    .line 81
    if-lez v6, :cond_1

    .line 82
    .line 83
    shr-int/lit8 v6, v1, 0xa

    .line 84
    .line 85
    and-int/lit8 v6, v6, 0x1f

    .line 86
    .line 87
    shr-int/lit8 v10, v1, 0x5

    .line 88
    .line 89
    and-int/lit8 v10, v10, 0x1f

    .line 90
    .line 91
    and-int/lit8 v11, v1, 0x1f

    .line 92
    .line 93
    invoke-static {v6, v8, v7}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    invoke-static {v10, v8, v7}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    invoke-static {v11, v8, v7}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    invoke-static {v6, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    iget-object v10, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    .line 110
    .line 111
    sget-object v11, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    .line 112
    .line 113
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    invoke-static {v11, v12, v6, v10}, Landroidx/core/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v10}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor([F)Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_1

    .line 133
    .line 134
    aput v4, v3, v1

    .line 135
    .line 136
    :cond_1
    aget v6, v3, v1

    .line 137
    .line 138
    if-lez v6, :cond_2

    .line 139
    .line 140
    add-int/lit8 v5, v5, 0x1

    .line 141
    .line 142
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    new-array v1, v5, [I

    .line 146
    .line 147
    iput-object v1, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    .line 148
    .line 149
    move v6, v4

    .line 150
    move v10, v6

    .line 151
    :goto_2
    if-ge v6, v2, :cond_5

    .line 152
    .line 153
    aget v11, v3, v6

    .line 154
    .line 155
    if-lez v11, :cond_4

    .line 156
    .line 157
    add-int/lit8 v11, v10, 0x1

    .line 158
    .line 159
    aput v6, v1, v10

    .line 160
    .line 161
    move v10, v11

    .line 162
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    const/16 v2, 0x10

    .line 166
    .line 167
    if-gt v5, v2, :cond_7

    .line 168
    .line 169
    new-instance v2, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object v2, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/ArrayList;

    .line 175
    .line 176
    :goto_3
    if-ge v4, v5, :cond_6

    .line 177
    .line 178
    aget v2, v1, v4

    .line 179
    .line 180
    iget-object v6, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/ArrayList;

    .line 181
    .line 182
    new-instance v9, Landroidx/palette/graphics/Palette$Swatch;

    .line 183
    .line 184
    shr-int/lit8 v10, v2, 0xa

    .line 185
    .line 186
    and-int/lit8 v10, v10, 0x1f

    .line 187
    .line 188
    shr-int/lit8 v11, v2, 0x5

    .line 189
    .line 190
    and-int/lit8 v11, v11, 0x1f

    .line 191
    .line 192
    and-int/lit8 v12, v2, 0x1f

    .line 193
    .line 194
    invoke-static {v10, v8, v7}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    invoke-static {v11, v8, v7}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 199
    .line 200
    .line 201
    move-result v11

    .line 202
    invoke-static {v12, v8, v7}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    aget v2, v3, v2

    .line 211
    .line 212
    invoke-direct {v9, v10, v2}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    add-int/lit8 v4, v4, 0x1

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_6
    return-void

    .line 222
    :cond_7
    new-instance v1, Ljava/util/PriorityQueue;

    .line 223
    .line 224
    sget-object v3, Landroidx/palette/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Landroidx/recyclerview/widget/DiffUtil$1;

    .line 225
    .line 226
    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 227
    .line 228
    .line 229
    new-instance v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 230
    .line 231
    iget-object v5, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    .line 232
    .line 233
    array-length v5, v5

    .line 234
    sub-int/2addr v5, v9

    .line 235
    invoke-direct {v3, v0, v4, v5}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;-><init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    :goto_4
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-ge v3, v2, :cond_d

    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    check-cast v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 252
    .line 253
    if-eqz v3, :cond_d

    .line 254
    .line 255
    iget v5, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 256
    .line 257
    add-int/lit8 v6, v5, 0x1

    .line 258
    .line 259
    iget v10, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 260
    .line 261
    sub-int/2addr v6, v10

    .line 262
    if-le v6, v9, :cond_d

    .line 263
    .line 264
    iget-object v6, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    .line 265
    .line 266
    add-int/lit8 v11, v5, 0x1

    .line 267
    .line 268
    sub-int/2addr v11, v10

    .line 269
    if-le v11, v9, :cond_c

    .line 270
    .line 271
    iget v11, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    .line 272
    .line 273
    iget v12, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    .line 274
    .line 275
    sub-int/2addr v11, v12

    .line 276
    iget v12, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    .line 277
    .line 278
    iget v13, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    .line 279
    .line 280
    sub-int/2addr v12, v13

    .line 281
    iget v13, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    .line 282
    .line 283
    iget v14, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    .line 284
    .line 285
    sub-int/2addr v13, v14

    .line 286
    if-lt v11, v12, :cond_8

    .line 287
    .line 288
    if-lt v11, v13, :cond_8

    .line 289
    .line 290
    const/4 v11, -0x3

    .line 291
    goto :goto_5

    .line 292
    :cond_8
    if-lt v12, v11, :cond_9

    .line 293
    .line 294
    if-lt v12, v13, :cond_9

    .line 295
    .line 296
    const/4 v11, -0x2

    .line 297
    goto :goto_5

    .line 298
    :cond_9
    const/4 v11, -0x1

    .line 299
    :goto_5
    iget-object v12, v6, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    .line 300
    .line 301
    iget-object v13, v6, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 302
    .line 303
    invoke-static {v12, v11, v10, v5}, Landroidx/palette/graphics/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    .line 304
    .line 305
    .line 306
    iget v5, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 307
    .line 308
    add-int/2addr v5, v9

    .line 309
    invoke-static {v12, v10, v5}, Ljava/util/Arrays;->sort([III)V

    .line 310
    .line 311
    .line 312
    iget v5, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 313
    .line 314
    invoke-static {v12, v11, v10, v5}, Landroidx/palette/graphics/ColorCutQuantizer;->modifySignificantOctet([IIII)V

    .line 315
    .line 316
    .line 317
    iget v5, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mPopulation:I

    .line 318
    .line 319
    div-int/lit8 v5, v5, 0x2

    .line 320
    .line 321
    move v14, v4

    .line 322
    move v11, v10

    .line 323
    :goto_6
    iget v15, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 324
    .line 325
    if-gt v11, v15, :cond_b

    .line 326
    .line 327
    aget v16, v12, v11

    .line 328
    .line 329
    aget v16, v13, v16

    .line 330
    .line 331
    add-int v14, v14, v16

    .line 332
    .line 333
    if-lt v14, v5, :cond_a

    .line 334
    .line 335
    add-int/lit8 v15, v15, -0x1

    .line 336
    .line 337
    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    .line 338
    .line 339
    .line 340
    move-result v10

    .line 341
    goto :goto_7

    .line 342
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_b
    :goto_7
    new-instance v5, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 346
    .line 347
    add-int/lit8 v11, v10, 0x1

    .line 348
    .line 349
    iget v12, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 350
    .line 351
    invoke-direct {v5, v6, v11, v12}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;-><init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V

    .line 352
    .line 353
    .line 354
    iput v10, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 355
    .line 356
    invoke-virtual {v3}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->fitBox()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v5}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    goto :goto_4

    .line 366
    :cond_c
    const-string v0, "Can not split a box with only 1 color"

    .line 367
    .line 368
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    const/4 v0, 0x0

    .line 372
    throw v0

    .line 373
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    .line 374
    .line 375
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    :cond_e
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    if-eqz v3, :cond_10

    .line 391
    .line 392
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    check-cast v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 397
    .line 398
    iget-object v5, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    .line 399
    .line 400
    iget-object v6, v5, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    .line 401
    .line 402
    iget-object v5, v5, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    .line 403
    .line 404
    iget v9, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    .line 405
    .line 406
    move v10, v4

    .line 407
    move v11, v10

    .line 408
    move v12, v11

    .line 409
    move v13, v12

    .line 410
    :goto_9
    iget v14, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    .line 411
    .line 412
    if-gt v9, v14, :cond_f

    .line 413
    .line 414
    aget v14, v6, v9

    .line 415
    .line 416
    aget v15, v5, v14

    .line 417
    .line 418
    add-int/2addr v11, v15

    .line 419
    shr-int/lit8 v16, v14, 0xa

    .line 420
    .line 421
    and-int/lit8 v16, v16, 0x1f

    .line 422
    .line 423
    mul-int v16, v16, v15

    .line 424
    .line 425
    add-int v10, v16, v10

    .line 426
    .line 427
    shr-int/lit8 v16, v14, 0x5

    .line 428
    .line 429
    and-int/lit8 v16, v16, 0x1f

    .line 430
    .line 431
    mul-int v16, v16, v15

    .line 432
    .line 433
    add-int v12, v16, v12

    .line 434
    .line 435
    and-int/lit8 v14, v14, 0x1f

    .line 436
    .line 437
    mul-int/2addr v15, v14

    .line 438
    add-int/2addr v13, v15

    .line 439
    add-int/lit8 v9, v9, 0x1

    .line 440
    .line 441
    goto :goto_9

    .line 442
    :cond_f
    int-to-float v3, v10

    .line 443
    int-to-float v5, v11

    .line 444
    div-float/2addr v3, v5

    .line 445
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    int-to-float v6, v12

    .line 450
    div-float/2addr v6, v5

    .line 451
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 452
    .line 453
    .line 454
    move-result v6

    .line 455
    int-to-float v9, v13

    .line 456
    div-float/2addr v9, v5

    .line 457
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    new-instance v9, Landroidx/palette/graphics/Palette$Swatch;

    .line 462
    .line 463
    invoke-static {v3, v8, v7}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 464
    .line 465
    .line 466
    move-result v3

    .line 467
    invoke-static {v6, v8, v7}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 468
    .line 469
    .line 470
    move-result v6

    .line 471
    invoke-static {v5, v8, v7}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    .line 472
    .line 473
    .line 474
    move-result v5

    .line 475
    invoke-static {v3, v6, v5}, Landroid/graphics/Color;->rgb(III)I

    .line 476
    .line 477
    .line 478
    move-result v3

    .line 479
    invoke-direct {v9, v3, v11}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v9}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    invoke-virtual {v0, v3}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor([F)Z

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    if-nez v3, :cond_e

    .line 491
    .line 492
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    goto :goto_8

    .line 496
    :cond_10
    iput-object v2, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/ArrayList;

    .line 497
    .line 498
    return-void
.end method

.method public static modifySignificantOctet([IIII)V
    .locals 2

    .line 1
    const/4 v0, -0x2

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    :goto_0
    if-gt p2, p3, :cond_2

    .line 9
    .line 10
    aget p1, p0, p2

    .line 11
    .line 12
    and-int/lit8 v0, p1, 0x1f

    .line 13
    .line 14
    shl-int/lit8 v0, v0, 0xa

    .line 15
    .line 16
    shr-int/lit8 v1, p1, 0x5

    .line 17
    .line 18
    and-int/lit8 v1, v1, 0x1f

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x5

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    shr-int/lit8 p1, p1, 0xa

    .line 24
    .line 25
    and-int/lit8 p1, p1, 0x1f

    .line 26
    .line 27
    or-int/2addr p1, v0

    .line 28
    aput p1, p0, p2

    .line 29
    .line 30
    add-int/lit8 p2, p2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    if-gt p2, p3, :cond_2

    .line 34
    .line 35
    aget p1, p0, p2

    .line 36
    .line 37
    shr-int/lit8 v0, p1, 0x5

    .line 38
    .line 39
    and-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    shl-int/lit8 v0, v0, 0xa

    .line 42
    .line 43
    shr-int/lit8 v1, p1, 0xa

    .line 44
    .line 45
    and-int/lit8 v1, v1, 0x1f

    .line 46
    .line 47
    shl-int/lit8 v1, v1, 0x5

    .line 48
    .line 49
    or-int/2addr v0, v1

    .line 50
    and-int/lit8 p1, p1, 0x1f

    .line 51
    .line 52
    or-int/2addr p1, v0

    .line 53
    aput p1, p0, p2

    .line 54
    .line 55
    add-int/lit8 p2, p2, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_2
    return-void
.end method

.method public static modifyWordWidth(III)I
    .locals 0

    .line 1
    if-le p2, p1, :cond_0

    .line 2
    .line 3
    sub-int p1, p2, p1

    .line 4
    .line 5
    shl-int/2addr p0, p1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sub-int/2addr p1, p2

    .line 8
    shr-int/2addr p0, p1

    .line 9
    :goto_0
    const/4 p1, 0x1

    .line 10
    shl-int p2, p1, p2

    .line 11
    .line 12
    sub-int/2addr p2, p1

    .line 13
    and-int/2addr p0, p2

    .line 14
    return p0
.end method


# virtual methods
.method public final shouldIgnoreColor([F)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$1;

    .line 3
    .line 4
    if-eqz p0, :cond_3

    .line 5
    .line 6
    array-length v1, p0

    .line 7
    if-lez v1, :cond_3

    .line 8
    .line 9
    array-length v1, p0

    .line 10
    move v2, v0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_3

    .line 12
    .line 13
    aget-object v3, p0, v2

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    aget v3, p1, v3

    .line 20
    .line 21
    const v4, 0x3f733333    # 0.95f

    .line 22
    .line 23
    .line 24
    cmpl-float v4, v3, v4

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    if-ltz v4, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const v4, 0x3d4ccccd    # 0.05f

    .line 31
    .line 32
    .line 33
    cmpg-float v3, v3, v4

    .line 34
    .line 35
    if-gtz v3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    aget v3, p1, v0

    .line 39
    .line 40
    const/high16 v4, 0x41200000    # 10.0f

    .line 41
    .line 42
    cmpl-float v4, v3, v4

    .line 43
    .line 44
    if-ltz v4, :cond_2

    .line 45
    .line 46
    const/high16 v4, 0x42140000    # 37.0f

    .line 47
    .line 48
    cmpg-float v3, v3, v4

    .line 49
    .line 50
    if-gtz v3, :cond_2

    .line 51
    .line 52
    aget v3, p1, v5

    .line 53
    .line 54
    const v4, 0x3f51eb85    # 0.82f

    .line 55
    .line 56
    .line 57
    cmpg-float v3, v3, v4

    .line 58
    .line 59
    if-gtz v3, :cond_2

    .line 60
    .line 61
    :goto_1
    return v5

    .line 62
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    return v0
.end method

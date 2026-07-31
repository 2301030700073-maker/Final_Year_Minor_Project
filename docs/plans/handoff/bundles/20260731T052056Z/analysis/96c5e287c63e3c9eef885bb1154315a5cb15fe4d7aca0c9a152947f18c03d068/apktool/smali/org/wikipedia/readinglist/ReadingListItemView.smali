.class public final Lorg/wikipedia/readinglist/ReadingListItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final binding:Lorg/wikipedia/databinding/ActivityPageBinding;

.field public callback:Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

.field public final imageViews:Ljava/util/List;

.field public readingList:Lorg/wikipedia/readinglist/database/ReadingList;

.field public saveClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    invoke-direct {v1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const v4, 0x7f0c0312

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    const v3, 0x7f09019f

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 27
    .line 28
    if-eqz v4, :cond_3

    .line 29
    .line 30
    const v3, 0x7f090219

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Landroid/widget/FrameLayout;

    .line 38
    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    const v3, 0x7f090303

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Landroid/widget/TextView;

    .line 49
    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    const v3, 0x7f090304

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 60
    .line 61
    if-eqz v6, :cond_3

    .line 62
    .line 63
    const v3, 0x7f090305

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 71
    .line 72
    if-eqz v7, :cond_3

    .line 73
    .line 74
    const v3, 0x7f090306

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    check-cast v8, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 82
    .line 83
    if-eqz v8, :cond_3

    .line 84
    .line 85
    const v3, 0x7f090307

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    check-cast v9, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 93
    .line 94
    if-eqz v9, :cond_3

    .line 95
    .line 96
    const v3, 0x7f090309

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    check-cast v10, Landroid/widget/ImageView;

    .line 104
    .line 105
    if-eqz v10, :cond_3

    .line 106
    .line 107
    const v3, 0x7f09030a

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    check-cast v11, Landroid/widget/ImageView;

    .line 115
    .line 116
    if-eqz v11, :cond_3

    .line 117
    .line 118
    const v3, 0x7f09030b

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    check-cast v12, Lcom/google/android/material/button/MaterialButton;

    .line 126
    .line 127
    if-eqz v12, :cond_3

    .line 128
    .line 129
    const v3, 0x7f09030c

    .line 130
    .line 131
    .line 132
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    check-cast v13, Landroid/widget/TextView;

    .line 137
    .line 138
    if-eqz v13, :cond_3

    .line 139
    .line 140
    const v3, 0x7f09030d

    .line 141
    .line 142
    .line 143
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v14

    .line 147
    check-cast v14, Lcom/google/android/flexbox/FlexboxLayout;

    .line 148
    .line 149
    if-eqz v14, :cond_3

    .line 150
    .line 151
    const v3, 0x7f09030e

    .line 152
    .line 153
    .line 154
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    check-cast v15, Landroid/widget/TextView;

    .line 159
    .line 160
    if-eqz v15, :cond_3

    .line 161
    .line 162
    const v3, 0x7f09030f

    .line 163
    .line 164
    .line 165
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v16

    .line 169
    check-cast v16, Landroid/widget/TextView;

    .line 170
    .line 171
    if-eqz v16, :cond_3

    .line 172
    .line 173
    const v3, 0x7f090310

    .line 174
    .line 175
    .line 176
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v17

    .line 180
    check-cast v17, Landroid/widget/ImageView;

    .line 181
    .line 182
    if-eqz v17, :cond_3

    .line 183
    .line 184
    const v3, 0x7f090311

    .line 185
    .line 186
    .line 187
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v18

    .line 191
    check-cast v18, Landroid/widget/CheckBox;

    .line 192
    .line 193
    if-eqz v18, :cond_3

    .line 194
    .line 195
    const v3, 0x7f090312

    .line 196
    .line 197
    .line 198
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v19

    .line 202
    check-cast v19, Landroid/widget/ImageView;

    .line 203
    .line 204
    if-eqz v19, :cond_3

    .line 205
    .line 206
    const v3, 0x7f090313

    .line 207
    .line 208
    .line 209
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v20

    .line 213
    check-cast v20, Landroid/widget/TextView;

    .line 214
    .line 215
    if-eqz v20, :cond_3

    .line 216
    .line 217
    const v3, 0x7f090314

    .line 218
    .line 219
    .line 220
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v21

    .line 224
    check-cast v21, Lcom/google/android/flexbox/FlexboxLayout;

    .line 225
    .line 226
    if-eqz v21, :cond_3

    .line 227
    .line 228
    const v3, 0x7f090315

    .line 229
    .line 230
    .line 231
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v21

    .line 235
    check-cast v21, Landroid/widget/TextView;

    .line 236
    .line 237
    if-eqz v21, :cond_3

    .line 238
    .line 239
    move-object/from16 v22, v0

    .line 240
    .line 241
    new-instance v0, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 242
    .line 243
    move-object v2, v4

    .line 244
    move-object v3, v5

    .line 245
    move-object v4, v6

    .line 246
    move-object v5, v7

    .line 247
    move-object v6, v8

    .line 248
    move-object v7, v9

    .line 249
    move-object v8, v10

    .line 250
    move-object v9, v11

    .line 251
    move-object v10, v12

    .line 252
    move-object v11, v13

    .line 253
    move-object v12, v14

    .line 254
    move-object v13, v15

    .line 255
    move-object/from16 v14, v16

    .line 256
    .line 257
    move-object/from16 v15, v17

    .line 258
    .line 259
    move-object/from16 v16, v18

    .line 260
    .line 261
    move-object/from16 v17, v19

    .line 262
    .line 263
    move-object/from16 v18, v20

    .line 264
    .line 265
    move-object/from16 v19, v21

    .line 266
    .line 267
    invoke-direct/range {v0 .. v19}, Lorg/wikipedia/databinding/ActivityPageBinding;-><init>(Lorg/wikipedia/readinglist/ReadingListItemView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/TextView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/google/android/flexbox/FlexboxLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/CheckBox;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 268
    .line 269
    .line 270
    move-object v3, v0

    .line 271
    move-object/from16 v0, v16

    .line 272
    .line 273
    move-object/from16 v2, v17

    .line 274
    .line 275
    iput-object v3, v1, Lorg/wikipedia/readinglist/ReadingListItemView;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 276
    .line 277
    const/4 v3, 0x4

    .line 278
    new-array v11, v3, [Lcom/google/android/material/imageview/ShapeableImageView;

    .line 279
    .line 280
    const/4 v12, 0x0

    .line 281
    aput-object v4, v11, v12

    .line 282
    .line 283
    const/4 v4, 0x1

    .line 284
    aput-object v5, v11, v4

    .line 285
    .line 286
    const/4 v5, 0x2

    .line 287
    aput-object v6, v11, v5

    .line 288
    .line 289
    const/4 v6, 0x3

    .line 290
    aput-object v7, v11, v6

    .line 291
    .line 292
    invoke-static {v11}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    iput-object v7, v1, Lorg/wikipedia/readinglist/ReadingListItemView;->imageViews:Ljava/util/List;

    .line 297
    .line 298
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .line 299
    .line 300
    const/4 v11, -0x1

    .line 301
    const/4 v13, -0x2

    .line 302
    invoke-direct {v7, v11, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    .line 307
    .line 308
    const/high16 v7, 0x41800000    # 16.0f

    .line 309
    .line 310
    invoke-static {v7}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 311
    .line 312
    .line 313
    move-result v11

    .line 314
    invoke-static {v7}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    invoke-virtual {v1, v12, v11, v12, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 322
    .line 323
    .line 324
    new-instance v7, Landroid/util/TypedValue;

    .line 325
    .line 326
    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 330
    .line 331
    .line 332
    move-result-object v11

    .line 333
    const v13, 0x101030e

    .line 334
    .line 335
    .line 336
    invoke-virtual {v11, v13, v7, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 337
    .line 338
    .line 339
    move-result v11

    .line 340
    if-eqz v11, :cond_0

    .line 341
    .line 342
    goto :goto_0

    .line 343
    :cond_0
    move-object/from16 v7, v22

    .line 344
    .line 345
    :goto_0
    if-eqz v7, :cond_2

    .line 346
    .line 347
    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    .line 348
    .line 349
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/ReadingListItemView;->clearThumbnails()V

    .line 359
    .line 360
    .line 361
    new-array v7, v4, [Landroid/view/View;

    .line 362
    .line 363
    aput-object v1, v7, v12

    .line 364
    .line 365
    aget-object v7, v7, v12

    .line 366
    .line 367
    new-instance v11, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda0;

    .line 368
    .line 369
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v7, v11}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 373
    .line 374
    .line 375
    new-instance v7, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;

    .line 376
    .line 377
    invoke-direct {v7, v1, v12}, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/ReadingListItemView;I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    .line 382
    .line 383
    new-instance v7, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;

    .line 384
    .line 385
    const/4 v11, 0x5

    .line 386
    invoke-direct {v7, v11, v1}, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 390
    .line 391
    .line 392
    new-instance v7, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;

    .line 393
    .line 394
    invoke-direct {v7, v1, v4}, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/ReadingListItemView;I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v9, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    .line 399
    .line 400
    new-instance v7, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;

    .line 401
    .line 402
    invoke-direct {v7, v1, v5}, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/ReadingListItemView;I)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    .line 407
    .line 408
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;

    .line 409
    .line 410
    invoke-direct {v0, v1, v6}, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/ReadingListItemView;I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    .line 415
    .line 416
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;

    .line 417
    .line 418
    invoke-direct {v0, v1, v3}, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/ReadingListItemView;I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    .line 423
    .line 424
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;

    .line 425
    .line 426
    invoke-direct {v0, v1, v11}, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/ReadingListItemView;I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    .line 431
    .line 432
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;

    .line 433
    .line 434
    const/4 v7, 0x6

    .line 435
    invoke-direct {v0, v1, v7}, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/ReadingListItemView;I)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    .line 440
    .line 441
    new-array v0, v3, [Landroid/view/View;

    .line 442
    .line 443
    aput-object v2, v0, v12

    .line 444
    .line 445
    aput-object v9, v0, v4

    .line 446
    .line 447
    aput-object v8, v0, v5

    .line 448
    .line 449
    aput-object v15, v0, v6

    .line 450
    .line 451
    :goto_1
    if-ge v12, v3, :cond_1

    .line 452
    .line 453
    aget-object v1, v0, v12

    .line 454
    .line 455
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    invoke-static {v1, v2}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 460
    .line 461
    .line 462
    add-int/lit8 v12, v12, 0x1

    .line 463
    .line 464
    goto :goto_1

    .line 465
    :cond_1
    return-void

    .line 466
    :cond_2
    const-string v0, "Attribute not found; ID=16843534"

    .line 467
    .line 468
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    throw v22

    .line 472
    :cond_3
    move-object/from16 v22, v0

    .line 473
    .line 474
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    const-string v1, "Missing required view with ID: "

    .line 483
    .line 484
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    throw v22
.end method


# virtual methods
.method public final clearThumbnails()V
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->imageViews:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x1c

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v2, v2, v1}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public final getCallback()Lorg/wikipedia/readinglist/ReadingListItemView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->callback:Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getListTitle()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->tocList:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/widget/TextView;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getSaveClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->saveClickListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getShareButton()Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->sidePanelContainer:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/widget/ImageView;

    .line 6
    .line 7
    return-object p0
.end method

.method public final setCallback(Lorg/wikipedia/readinglist/ReadingListItemView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->callback:Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public final setMode(Lorg/wikipedia/readinglist/ReadingListMode;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 5
    .line 6
    iget-object v1, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageProgressBar:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 9
    .line 10
    iget-object v2, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Landroid/widget/ImageView;

    .line 13
    .line 14
    iget-object v3, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageFragment:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Landroid/widget/ImageView;

    .line 17
    .line 18
    sget-object v4, Lorg/wikipedia/readinglist/ReadingListMode;->PREVIEW:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 19
    .line 20
    const/16 v5, 0x8

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    if-ne p1, v4, :cond_0

    .line 24
    .line 25
    move v7, v6

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v7, v5

    .line 28
    :goto_0
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    if-eq p1, v4, :cond_1

    .line 32
    .line 33
    move v1, v6

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v1, v5

    .line 36
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageScrollerButton:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Landroid/widget/TextView;

    .line 42
    .line 43
    sget-object v4, Lorg/wikipedia/readinglist/ReadingListMode;->DEFAULT:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 44
    .line 45
    if-ne p1, v4, :cond_2

    .line 46
    .line 47
    move v7, v6

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move v7, v5

    .line 50
    :goto_2
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbar:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Lcom/google/android/flexbox/FlexboxLayout;

    .line 56
    .line 57
    sget-object v7, Lorg/wikipedia/readinglist/ReadingListMode;->RECOMMENDED:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 58
    .line 59
    if-ne p1, v7, :cond_3

    .line 60
    .line 61
    move v8, v6

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    move v8, v5

    .line 64
    :goto_3
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    if-ne p1, v7, :cond_4

    .line 68
    .line 69
    move v1, v6

    .line 70
    goto :goto_4

    .line 71
    :cond_4
    move v1, v5

    .line 72
    :goto_4
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonTabs:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Landroid/widget/ImageView;

    .line 78
    .line 79
    if-ne p1, v7, :cond_5

    .line 80
    .line 81
    move v8, v6

    .line 82
    goto :goto_5

    .line 83
    :cond_5
    move v8, v5

    .line 84
    :goto_5
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->sidePanelContainer:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v1, Landroid/widget/ImageView;

    .line 90
    .line 91
    if-ne p1, v4, :cond_6

    .line 92
    .line 93
    move v5, v6

    .line 94
    :cond_6
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    if-ne p1, v7, :cond_a

    .line 98
    .line 99
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    const/4 v4, 0x1

    .line 104
    if-eqz v1, :cond_7

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    const-string v7, "<b>"

    .line 115
    .line 116
    const-string v8, "</b>"

    .line 117
    .line 118
    invoke-static {v7, v5, v8}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    new-array v7, v4, [Ljava/lang/Object;

    .line 123
    .line 124
    aput-object v5, v7, v6

    .line 125
    .line 126
    const v5, 0x7f1207f4

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    goto :goto_6

    .line 134
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const v5, 0x7f1207eb

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    iget-object v5, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 149
    .line 150
    if-eqz v5, :cond_8

    .line 151
    .line 152
    iget-object v5, v5, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 153
    .line 154
    if-eqz v5, :cond_8

    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    goto :goto_7

    .line 161
    :cond_8
    move v5, v6

    .line 162
    :goto_7
    iget-object v7, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v7, Landroid/widget/TextView;

    .line 165
    .line 166
    sget-object v8, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 167
    .line 168
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonSearch:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v0, Landroid/widget/TextView;

    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    new-array v4, v4, [Ljava/lang/Object;

    .line 192
    .line 193
    aput-object v7, v4, v6

    .line 194
    .line 195
    const v6, 0x7f10002a

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v6, v5, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 206
    .line 207
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isRecommendedReadingListNotificationEnabled()Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_9

    .line 212
    .line 213
    const v0, 0x7f0801b8

    .line 214
    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_9
    const v0, 0x7f0802d7

    .line 218
    .line 219
    .line 220
    :goto_8
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    .line 222
    .line 223
    new-instance v0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 224
    .line 225
    const/16 v1, 0x15

    .line 226
    .line 227
    invoke-direct {v0, v1, p0, p1}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    :cond_a
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda9;

    .line 234
    .line 235
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 239
    .line 240
    .line 241
    return-void
.end method

.method public final setOverflowViewVisibility(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageFragment:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/widget/ImageView;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x8

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setReadingList(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListItemView$Description;ZZ)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 10
    .line 11
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListItemView$Description;->DETAIL:Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ne p2, v1, :cond_0

    .line 16
    .line 17
    move p2, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p2, v3

    .line 20
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 21
    .line 22
    iget-object v4, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v4, Landroid/widget/TextView;

    .line 25
    .line 26
    iget-object v5, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->containerWithNavTrigger:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v5, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    const v6, 0x7fffffff

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const v7, 0x7f0a0051

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 48
    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    const/4 v6, 0x0

    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListItemView;->statsTextListSize(Lorg/wikipedia/readinglist/database/ReadingList;)F

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    cmpl-float v6, p2, v6

    .line 59
    .line 60
    if-lez v6, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->getNumPagesOffline()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    const/4 v8, 0x3

    .line 91
    new-array v8, v8, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object p1, v8, v3

    .line 94
    .line 95
    aput-object v0, v8, v2

    .line 96
    .line 97
    aput-object p2, v8, v4

    .line 98
    .line 99
    const p1, 0x7f10000b

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, p1, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    goto/16 :goto_2

    .line 110
    .line 111
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->getNumPagesOffline()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    new-array v4, v4, [Ljava/lang/Object;

    .line 136
    .line 137
    aput-object p1, v4, v3

    .line 138
    .line 139
    aput-object v0, v4, v2

    .line 140
    .line 141
    const p1, 0x7f10000c

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p1, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListItemView;->statsTextListSize(Lorg/wikipedia/readinglist/database/ReadingList;)F

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    cmpl-float p2, p2, v6

    .line 157
    .line 158
    if-lez p2, :cond_4

    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListItemView;->statsTextListSize(Lorg/wikipedia/readinglist/database/ReadingList;)F

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    new-array v4, v4, [Ljava/lang/Object;

    .line 185
    .line 186
    aput-object v0, v4, v3

    .line 187
    .line 188
    aput-object p1, v4, v2

    .line 189
    .line 190
    const p1, 0x7f10000d

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, p1, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    new-array v2, v2, [Ljava/lang/Object;

    .line 218
    .line 219
    aput-object v0, v2, v3

    .line 220
    .line 221
    const v0, 0x7f10000e

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v0, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    :goto_2
    iget-object p2, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->pageScrollerButton:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast p2, Landroid/widget/TextView;

    .line 234
    .line 235
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    iget-object p1, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->wikiArticleCardView:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast p1, Landroid/widget/TextView;

    .line 241
    .line 242
    const/16 p2, 0x8

    .line 243
    .line 244
    if-eqz p4, :cond_5

    .line 245
    .line 246
    move p4, v3

    .line 247
    goto :goto_3

    .line 248
    :cond_5
    move p4, p2

    .line 249
    :goto_3
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 250
    .line 251
    .line 252
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 253
    .line 254
    if-eqz p1, :cond_b

    .line 255
    .line 256
    iget-object p4, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->rootView:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast p4, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 259
    .line 260
    iget-object v0, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarContainer:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v0, Landroid/widget/CheckBox;

    .line 263
    .line 264
    iget-object v2, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v2, Landroid/widget/TextView;

    .line 267
    .line 268
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    if-eqz v4, :cond_6

    .line 273
    .line 274
    iget-object v4, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    if-eqz v4, :cond_6

    .line 281
    .line 282
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    if-nez v4, :cond_6

    .line 287
    .line 288
    move v4, v3

    .line 289
    goto :goto_4

    .line 290
    :cond_6
    move v4, p2

    .line 291
    :goto_4
    invoke-virtual {p4, v4}, Landroid/view/View;->setVisibility(I)V

    .line 292
    .line 293
    .line 294
    iget-object p4, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->tocList:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast p4, Landroid/widget/TextView;

    .line 297
    .line 298
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 306
    .line 307
    .line 308
    move-result p4

    .line 309
    if-eqz p4, :cond_7

    .line 310
    .line 311
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 312
    .line 313
    .line 314
    move-result-object p4

    .line 315
    const v1, 0x7f1200fb

    .line 316
    .line 317
    .line 318
    invoke-virtual {p4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p4

    .line 322
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 326
    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_7
    iget-object p4, p1, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    .line 330
    .line 331
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    .line 333
    .line 334
    iget-object p4, p1, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    .line 335
    .line 336
    if-eqz p4, :cond_9

    .line 337
    .line 338
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 339
    .line 340
    .line 341
    move-result p4

    .line 342
    if-nez p4, :cond_8

    .line 343
    .line 344
    goto :goto_5

    .line 345
    :cond_8
    move p4, v3

    .line 346
    goto :goto_6

    .line 347
    :cond_9
    :goto_5
    move p4, p2

    .line 348
    :goto_6
    invoke-virtual {v2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 349
    .line 350
    .line 351
    :goto_7
    if-eqz p3, :cond_a

    .line 352
    .line 353
    goto :goto_8

    .line 354
    :cond_a
    move v3, p2

    .line 355
    :goto_8
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 356
    .line 357
    .line 358
    iget-boolean p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->selected:Z

    .line 359
    .line 360
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 361
    .line 362
    .line 363
    :cond_b
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    if-nez p1, :cond_10

    .line 368
    .line 369
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 370
    .line 371
    if-eqz p1, :cond_10

    .line 372
    .line 373
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListItemView;->clearThumbnails()V

    .line 374
    .line 375
    .line 376
    iget-object p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 377
    .line 378
    new-instance p2, Ljava/util/ArrayList;

    .line 379
    .line 380
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    :cond_c
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 388
    .line 389
    .line 390
    move-result p3

    .line 391
    if-eqz p3, :cond_d

    .line 392
    .line 393
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object p3

    .line 397
    check-cast p3, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 398
    .line 399
    iget-object p3, p3, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 400
    .line 401
    if-eqz p3, :cond_c

    .line 402
    .line 403
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    goto :goto_9

    .line 407
    :cond_d
    new-instance p1, Ljava/util/ArrayList;

    .line 408
    .line 409
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 413
    .line 414
    .line 415
    move-result-object p2

    .line 416
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 417
    .line 418
    .line 419
    move-result p3

    .line 420
    if-eqz p3, :cond_f

    .line 421
    .line 422
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object p3

    .line 426
    move-object p4, p3

    .line 427
    check-cast p4, Ljava/lang/String;

    .line 428
    .line 429
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 430
    .line 431
    .line 432
    move-result p4

    .line 433
    if-nez p4, :cond_e

    .line 434
    .line 435
    goto :goto_a

    .line 436
    :cond_e
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    goto :goto_a

    .line 440
    :cond_f
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->imageViews:Ljava/util/List;

    .line 441
    .line 442
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 447
    .line 448
    .line 449
    move-result-object p0

    .line 450
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    if-eqz p1, :cond_10

    .line 455
    .line 456
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    check-cast p1, Lkotlin/Pair;

    .line 461
    .line 462
    iget-object p2, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 463
    .line 464
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    check-cast p2, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 468
    .line 469
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 470
    .line 471
    check-cast p1, Ljava/lang/String;

    .line 472
    .line 473
    const/4 p3, 0x0

    .line 474
    const/16 p4, 0x1c

    .line 475
    .line 476
    invoke-static {p2, p1, p3, p4}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 477
    .line 478
    .line 479
    goto :goto_b

    .line 480
    :cond_10
    return-void
.end method

.method public final setSaveClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->saveClickListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setSearchQuery(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->tocList:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0, v0, p1}, Lorg/wikipedia/util/StringUtil;->boldenKeywordText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setThumbnailVisible(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->imageViews:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    move v2, v3

    .line 28
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 33
    .line 34
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->rootView:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    move v2, v3

    .line 41
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final setTitleTextAppearance(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemView;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->tocList:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final showOverflowMenu(ZLorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListMode;Landroid/view/View;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/app/Activity;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_8

    .line 14
    .line 15
    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    const v2, 0x7f0903de

    .line 21
    .line 22
    .line 23
    const v3, 0x7f0903d9

    .line 24
    .line 25
    .line 26
    const v4, 0x7f0903dc

    .line 27
    .line 28
    .line 29
    const v5, 0x7f0e001b

    .line 30
    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, v5, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_7

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    iget-boolean v2, p2, Lorg/wikipedia/readinglist/database/ReadingList;->selected:Z

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    const v2, 0x7f12077f

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    const v2, 0x7f12077e

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListMode;->RECOMMENDED:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 96
    .line 97
    if-ne p3, p1, :cond_5

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const p3, 0x7f0e001f

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p3, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1, v5, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    invoke-virtual {v1, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 142
    .line 143
    .line 144
    :cond_6
    const p1, 0x7f0903df

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 152
    .line 153
    .line 154
    :cond_7
    :goto_2
    new-instance p1, Lretrofit2/OkHttpCall$1;

    .line 155
    .line 156
    const/16 p3, 0x15

    .line 157
    .line 158
    invoke-direct {p1, p3, p0, p2, v6}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 159
    .line 160
    .line 161
    iput-object p1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 162
    .line 163
    new-instance p0, Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 164
    .line 165
    invoke-direct {p0, v0, v1, p4}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 166
    .line 167
    .line 168
    const/4 p1, 0x1

    .line 169
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 170
    .line 171
    .line 172
    iput p5, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 173
    .line 174
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->show()V

    .line 175
    .line 176
    .line 177
    :cond_8
    return-void
.end method

.method public final statsTextListSize(Lorg/wikipedia/readinglist/database/ReadingList;)F
    .locals 6

    .line 1
    iget-object p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    move-wide v2, v0

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 21
    .line 22
    iget-boolean v5, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    iget-wide v4, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->sizeBytes:J

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    move-wide v4, v0

    .line 30
    :goto_1
    add-long/2addr v2, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    long-to-float p1, v2

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const v0, 0x7f0a0052

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    const/4 v0, 0x1

    .line 45
    if-ge v0, p0, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move p0, v0

    .line 49
    :goto_2
    int-to-float p0, p0

    .line 50
    div-float/2addr p1, p0

    .line 51
    return p1
.end method

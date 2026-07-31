.class public final Lcom/google/android/material/badge/BadgeState;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public badgeFixedEdge:I

.field public final badgeHeight:F

.field public final badgeRadius:F

.field public final badgeWidth:F

.field public final badgeWithTextHeight:F

.field public final badgeWithTextRadius:F

.field public final badgeWithTextWidth:F

.field public final currentState:Lcom/google/android/material/badge/BadgeState$State;

.field public final horizontalInset:I

.field public final horizontalInsetWithText:I

.field public final offsetAlignmentMode:I

.field public final overridingState:Lcom/google/android/material/badge/BadgeState$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/badge/BadgeState$State;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/material/badge/BadgeState$State;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/material/badge/BadgeState$State;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    .line 18
    .line 19
    .line 20
    move-object v7, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object/from16 v7, p2

    .line 23
    .line 24
    :goto_0
    iget v1, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    .line 25
    .line 26
    const/4 v8, 0x2

    .line 27
    const/4 v9, 0x1

    .line 28
    const/4 v10, 0x0

    .line 29
    if-eqz v1, :cond_5

    .line 30
    .line 31
    const-string v2, "badge"

    .line 32
    .line 33
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eq v4, v8, :cond_2

    .line 46
    .line 47
    if-ne v4, v9, :cond_1

    .line 48
    .line 49
    :cond_2
    if-ne v4, v8, :cond_4

    .line 50
    .line 51
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 62
    .line 63
    .line 64
    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    invoke-interface {v1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    move/from16 v18, v2

    .line 70
    .line 71
    move-object v2, v1

    .line 72
    move/from16 v1, v18

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catch_0
    move-exception v0

    .line 76
    goto :goto_1

    .line 77
    :catch_1
    move-exception v0

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 80
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v4, "Must have a <"

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, "> start tag"

    .line 95
    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 108
    .line 109
    const-string v2, "No start tag found"

    .line 110
    .line 111
    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    :goto_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    .line 116
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v4, "Can\'t load badge resource ID #0x"

    .line 120
    .line 121
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-direct {v2, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 139
    .line 140
    .line 141
    throw v2

    .line 142
    :cond_5
    const/4 v1, 0x0

    .line 143
    move-object v2, v1

    .line 144
    move v1, v10

    .line 145
    :goto_2
    if-nez v1, :cond_6

    .line 146
    .line 147
    const v1, 0x7f13062f

    .line 148
    .line 149
    .line 150
    :cond_6
    move v5, v1

    .line 151
    sget-object v3, Lcom/google/android/material/R$styleable;->Badge:[I

    .line 152
    .line 153
    new-array v6, v10, [I

    .line 154
    .line 155
    const v4, 0x7f040068

    .line 156
    .line 157
    .line 158
    move-object/from16 v1, p1

    .line 159
    .line 160
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ViewUtils;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    const/4 v4, 0x5

    .line 169
    const/4 v5, -0x1

    .line 170
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    int-to-float v6, v6

    .line 175
    iput v6, v0, Lcom/google/android/material/badge/BadgeState;->badgeRadius:F

    .line 176
    .line 177
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    const v11, 0x7f0703b9

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    iput v6, v0, Lcom/google/android/material/badge/BadgeState;->horizontalInset:I

    .line 189
    .line 190
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    const v11, 0x7f0703bc

    .line 195
    .line 196
    .line 197
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    iput v6, v0, Lcom/google/android/material/badge/BadgeState;->horizontalInsetWithText:I

    .line 202
    .line 203
    const/16 v6, 0xf

    .line 204
    .line 205
    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    int-to-float v6, v6

    .line 210
    iput v6, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    .line 211
    .line 212
    const/16 v6, 0xd

    .line 213
    .line 214
    const v11, 0x7f0700d2

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 218
    .line 219
    .line 220
    move-result v12

    .line 221
    invoke-virtual {v2, v6, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    iput v6, v0, Lcom/google/android/material/badge/BadgeState;->badgeWidth:F

    .line 226
    .line 227
    const/16 v6, 0x12

    .line 228
    .line 229
    const v12, 0x7f0700d6

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getDimension(I)F

    .line 233
    .line 234
    .line 235
    move-result v13

    .line 236
    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    iput v6, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextWidth:F

    .line 241
    .line 242
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    const/4 v11, 0x4

    .line 247
    invoke-virtual {v2, v11, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    iput v6, v0, Lcom/google/android/material/badge/BadgeState;->badgeHeight:F

    .line 252
    .line 253
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getDimension(I)F

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    const/16 v12, 0xe

    .line 258
    .line 259
    invoke-virtual {v2, v12, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    iput v6, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextHeight:F

    .line 264
    .line 265
    const/16 v6, 0x19

    .line 266
    .line 267
    invoke-virtual {v2, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    iput v6, v0, Lcom/google/android/material/badge/BadgeState;->offsetAlignmentMode:I

    .line 272
    .line 273
    invoke-virtual {v2, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    iput v6, v0, Lcom/google/android/material/badge/BadgeState;->badgeFixedEdge:I

    .line 278
    .line 279
    iget-object v6, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 280
    .line 281
    iget v13, v7, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 282
    .line 283
    const/4 v14, -0x2

    .line 284
    if-ne v13, v14, :cond_7

    .line 285
    .line 286
    const/16 v13, 0xff

    .line 287
    .line 288
    :cond_7
    iput v13, v6, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 289
    .line 290
    iget v13, v7, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 291
    .line 292
    const/16 v15, 0x18

    .line 293
    .line 294
    if-eq v13, v14, :cond_8

    .line 295
    .line 296
    iput v13, v6, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_8
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    iget-object v13, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 304
    .line 305
    if-eqz v6, :cond_9

    .line 306
    .line 307
    invoke-virtual {v2, v15, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    iput v5, v13, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_9
    iput v5, v13, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 315
    .line 316
    :goto_3
    iget-object v5, v7, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    .line 317
    .line 318
    const/16 v6, 0x8

    .line 319
    .line 320
    if-eqz v5, :cond_a

    .line 321
    .line 322
    iget-object v13, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 323
    .line 324
    iput-object v5, v13, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    .line 325
    .line 326
    goto :goto_4

    .line 327
    :cond_a
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    if-eqz v5, :cond_b

    .line 332
    .line 333
    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 334
    .line 335
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v13

    .line 339
    iput-object v13, v5, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    .line 340
    .line 341
    :cond_b
    :goto_4
    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 342
    .line 343
    iget-object v13, v7, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionForText:Ljava/lang/CharSequence;

    .line 344
    .line 345
    iput-object v13, v5, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionForText:Ljava/lang/CharSequence;

    .line 346
    .line 347
    iget-object v13, v7, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 348
    .line 349
    if-nez v13, :cond_c

    .line 350
    .line 351
    const v13, 0x7f120410

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v13

    .line 358
    :cond_c
    iput-object v13, v5, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 359
    .line 360
    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 361
    .line 362
    iget v13, v7, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    .line 363
    .line 364
    if-nez v13, :cond_d

    .line 365
    .line 366
    const v13, 0x7f10000f

    .line 367
    .line 368
    .line 369
    :cond_d
    iput v13, v5, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    .line 370
    .line 371
    iget v13, v7, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    .line 372
    .line 373
    if-nez v13, :cond_e

    .line 374
    .line 375
    const v13, 0x7f120421

    .line 376
    .line 377
    .line 378
    :cond_e
    iput v13, v5, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    .line 379
    .line 380
    iget-object v13, v7, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 381
    .line 382
    if-eqz v13, :cond_10

    .line 383
    .line 384
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 385
    .line 386
    .line 387
    move-result v13

    .line 388
    if-eqz v13, :cond_f

    .line 389
    .line 390
    goto :goto_5

    .line 391
    :cond_f
    move v13, v10

    .line 392
    goto :goto_6

    .line 393
    :cond_10
    :goto_5
    move v13, v9

    .line 394
    :goto_6
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 395
    .line 396
    .line 397
    move-result-object v13

    .line 398
    iput-object v13, v5, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 399
    .line 400
    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 401
    .line 402
    iget v13, v7, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 403
    .line 404
    if-ne v13, v14, :cond_11

    .line 405
    .line 406
    const/16 v13, 0x16

    .line 407
    .line 408
    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 409
    .line 410
    .line 411
    move-result v13

    .line 412
    :cond_11
    iput v13, v5, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 413
    .line 414
    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 415
    .line 416
    iget v13, v7, Lcom/google/android/material/badge/BadgeState$State;->maxNumber:I

    .line 417
    .line 418
    if-ne v13, v14, :cond_12

    .line 419
    .line 420
    const/16 v13, 0x17

    .line 421
    .line 422
    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 423
    .line 424
    .line 425
    move-result v13

    .line 426
    :cond_12
    iput v13, v5, Lcom/google/android/material/badge/BadgeState$State;->maxNumber:I

    .line 427
    .line 428
    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 429
    .line 430
    iget-object v13, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    .line 431
    .line 432
    const v14, 0x7f130249

    .line 433
    .line 434
    .line 435
    const/4 v15, 0x6

    .line 436
    if-nez v13, :cond_13

    .line 437
    .line 438
    invoke-virtual {v2, v15, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 439
    .line 440
    .line 441
    move-result v13

    .line 442
    goto :goto_7

    .line 443
    :cond_13
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 444
    .line 445
    .line 446
    move-result v13

    .line 447
    :goto_7
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 448
    .line 449
    .line 450
    move-result-object v13

    .line 451
    iput-object v13, v5, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    .line 452
    .line 453
    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 454
    .line 455
    iget-object v13, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    .line 456
    .line 457
    const/4 v6, 0x7

    .line 458
    if-nez v13, :cond_14

    .line 459
    .line 460
    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 461
    .line 462
    .line 463
    move-result v13

    .line 464
    goto :goto_8

    .line 465
    :cond_14
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 466
    .line 467
    .line 468
    move-result v13

    .line 469
    :goto_8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v13

    .line 473
    iput-object v13, v5, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    .line 474
    .line 475
    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 476
    .line 477
    iget-object v13, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    .line 478
    .line 479
    if-nez v13, :cond_15

    .line 480
    .line 481
    const/16 v13, 0x10

    .line 482
    .line 483
    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 484
    .line 485
    .line 486
    move-result v13

    .line 487
    goto :goto_9

    .line 488
    :cond_15
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 489
    .line 490
    .line 491
    move-result v13

    .line 492
    :goto_9
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 493
    .line 494
    .line 495
    move-result-object v13

    .line 496
    iput-object v13, v5, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    .line 497
    .line 498
    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 499
    .line 500
    iget-object v13, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    .line 501
    .line 502
    if-nez v13, :cond_16

    .line 503
    .line 504
    const/16 v13, 0x11

    .line 505
    .line 506
    invoke-virtual {v2, v13, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 507
    .line 508
    .line 509
    move-result v13

    .line 510
    goto :goto_a

    .line 511
    :cond_16
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 512
    .line 513
    .line 514
    move-result v13

    .line 515
    :goto_a
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 516
    .line 517
    .line 518
    move-result-object v13

    .line 519
    iput-object v13, v5, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    .line 520
    .line 521
    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 522
    .line 523
    iget-object v13, v7, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    .line 524
    .line 525
    if-nez v13, :cond_17

    .line 526
    .line 527
    invoke-static {v1, v2, v9}, Landroidx/work/OperationKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 528
    .line 529
    .line 530
    move-result-object v13

    .line 531
    invoke-virtual {v13}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 532
    .line 533
    .line 534
    move-result v13

    .line 535
    goto :goto_b

    .line 536
    :cond_17
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 537
    .line 538
    .line 539
    move-result v13

    .line 540
    :goto_b
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 541
    .line 542
    .line 543
    move-result-object v13

    .line 544
    iput-object v13, v5, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    .line 545
    .line 546
    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 547
    .line 548
    iget-object v13, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    .line 549
    .line 550
    const/16 v14, 0x9

    .line 551
    .line 552
    if-nez v13, :cond_18

    .line 553
    .line 554
    const v13, 0x7f13032a

    .line 555
    .line 556
    .line 557
    invoke-virtual {v2, v14, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 558
    .line 559
    .line 560
    move-result v13

    .line 561
    goto :goto_c

    .line 562
    :cond_18
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 563
    .line 564
    .line 565
    move-result v13

    .line 566
    :goto_c
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 567
    .line 568
    .line 569
    move-result-object v13

    .line 570
    iput-object v13, v5, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    .line 571
    .line 572
    iget-object v5, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 573
    .line 574
    const/16 v13, 0xc

    .line 575
    .line 576
    const/4 v14, 0x3

    .line 577
    if-eqz v5, :cond_19

    .line 578
    .line 579
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 580
    .line 581
    iput-object v5, v1, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 582
    .line 583
    goto/16 :goto_e

    .line 584
    .line 585
    :cond_19
    const/16 v5, 0xa

    .line 586
    .line 587
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 588
    .line 589
    .line 590
    move-result v16

    .line 591
    iget-object v6, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 592
    .line 593
    if-eqz v16, :cond_1a

    .line 594
    .line 595
    invoke-static {v1, v2, v5}, Landroidx/work/OperationKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    iput-object v1, v6, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 608
    .line 609
    goto :goto_e

    .line 610
    :cond_1a
    iget-object v6, v6, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    .line 611
    .line 612
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 613
    .line 614
    .line 615
    move-result v6

    .line 616
    sget-object v5, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 617
    .line 618
    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 619
    .line 620
    .line 621
    move-result-object v5

    .line 622
    const/4 v15, 0x0

    .line 623
    invoke-virtual {v5, v10, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 624
    .line 625
    .line 626
    invoke-static {v1, v5, v14}, Landroidx/work/OperationKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 627
    .line 628
    .line 629
    move-result-object v17

    .line 630
    invoke-static {v1, v5, v11}, Landroidx/work/OperationKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 631
    .line 632
    .line 633
    invoke-static {v1, v5, v4}, Landroidx/work/OperationKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v5, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 637
    .line 638
    .line 639
    invoke-virtual {v5, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 640
    .line 641
    .line 642
    invoke-virtual {v5, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 643
    .line 644
    .line 645
    move-result v4

    .line 646
    if-eqz v4, :cond_1b

    .line 647
    .line 648
    move v4, v13

    .line 649
    goto :goto_d

    .line 650
    :cond_1b
    const/16 v4, 0xa

    .line 651
    .line 652
    :goto_d
    invoke-virtual {v5, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 653
    .line 654
    .line 655
    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v5, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 659
    .line 660
    .line 661
    const/4 v4, 0x6

    .line 662
    invoke-static {v1, v5, v4}, Landroidx/work/OperationKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 663
    .line 664
    .line 665
    const/4 v4, 0x7

    .line 666
    invoke-virtual {v5, v4, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 667
    .line 668
    .line 669
    const/16 v4, 0x8

    .line 670
    .line 671
    invoke-virtual {v5, v4, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 672
    .line 673
    .line 674
    const/16 v4, 0x9

    .line 675
    .line 676
    invoke-virtual {v5, v4, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 677
    .line 678
    .line 679
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 680
    .line 681
    .line 682
    sget-object v4, Lcom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    .line 683
    .line 684
    invoke-virtual {v1, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 689
    .line 690
    .line 691
    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 692
    .line 693
    .line 694
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 695
    .line 696
    const/16 v5, 0x1a

    .line 697
    .line 698
    if-lt v4, v5, :cond_1d

    .line 699
    .line 700
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 701
    .line 702
    .line 703
    move-result v4

    .line 704
    if-eqz v4, :cond_1c

    .line 705
    .line 706
    move v9, v14

    .line 707
    :cond_1c
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    :cond_1d
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 711
    .line 712
    .line 713
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 714
    .line 715
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 716
    .line 717
    .line 718
    move-result v4

    .line 719
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 720
    .line 721
    .line 722
    move-result-object v4

    .line 723
    iput-object v4, v1, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 724
    .line 725
    :goto_e
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 726
    .line 727
    iget-object v4, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    .line 728
    .line 729
    if-nez v4, :cond_1e

    .line 730
    .line 731
    const v4, 0x800035

    .line 732
    .line 733
    .line 734
    invoke-virtual {v2, v14, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 735
    .line 736
    .line 737
    move-result v4

    .line 738
    goto :goto_f

    .line 739
    :cond_1e
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 740
    .line 741
    .line 742
    move-result v4

    .line 743
    :goto_f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 744
    .line 745
    .line 746
    move-result-object v4

    .line 747
    iput-object v4, v1, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    .line 748
    .line 749
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 750
    .line 751
    iget-object v4, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeHorizontalPadding:Ljava/lang/Integer;

    .line 752
    .line 753
    if-nez v4, :cond_1f

    .line 754
    .line 755
    const v4, 0x7f0703ba

    .line 756
    .line 757
    .line 758
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 759
    .line 760
    .line 761
    move-result v4

    .line 762
    invoke-virtual {v2, v13, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 763
    .line 764
    .line 765
    move-result v4

    .line 766
    goto :goto_10

    .line 767
    :cond_1f
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 768
    .line 769
    .line 770
    move-result v4

    .line 771
    :goto_10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 772
    .line 773
    .line 774
    move-result-object v4

    .line 775
    iput-object v4, v1, Lcom/google/android/material/badge/BadgeState$State;->badgeHorizontalPadding:Ljava/lang/Integer;

    .line 776
    .line 777
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 778
    .line 779
    iget-object v4, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeVerticalPadding:Ljava/lang/Integer;

    .line 780
    .line 781
    if-nez v4, :cond_20

    .line 782
    .line 783
    const v4, 0x7f0700d8

    .line 784
    .line 785
    .line 786
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 787
    .line 788
    .line 789
    move-result v3

    .line 790
    const/16 v4, 0xb

    .line 791
    .line 792
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 793
    .line 794
    .line 795
    move-result v3

    .line 796
    goto :goto_11

    .line 797
    :cond_20
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 798
    .line 799
    .line 800
    move-result v3

    .line 801
    :goto_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 802
    .line 803
    .line 804
    move-result-object v3

    .line 805
    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->badgeVerticalPadding:Ljava/lang/Integer;

    .line 806
    .line 807
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 808
    .line 809
    iget-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 810
    .line 811
    if-nez v3, :cond_21

    .line 812
    .line 813
    const/16 v3, 0x13

    .line 814
    .line 815
    invoke-virtual {v2, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 816
    .line 817
    .line 818
    move-result v3

    .line 819
    goto :goto_12

    .line 820
    :cond_21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 821
    .line 822
    .line 823
    move-result v3

    .line 824
    :goto_12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 829
    .line 830
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 831
    .line 832
    iget-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 833
    .line 834
    if-nez v3, :cond_22

    .line 835
    .line 836
    const/16 v5, 0x1a

    .line 837
    .line 838
    invoke-virtual {v2, v5, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 839
    .line 840
    .line 841
    move-result v3

    .line 842
    goto :goto_13

    .line 843
    :cond_22
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 844
    .line 845
    .line 846
    move-result v3

    .line 847
    :goto_13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 848
    .line 849
    .line 850
    move-result-object v3

    .line 851
    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 852
    .line 853
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 854
    .line 855
    iget-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    .line 856
    .line 857
    if-nez v3, :cond_23

    .line 858
    .line 859
    iget-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 860
    .line 861
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 862
    .line 863
    .line 864
    move-result v3

    .line 865
    const/16 v4, 0x14

    .line 866
    .line 867
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 868
    .line 869
    .line 870
    move-result v3

    .line 871
    goto :goto_14

    .line 872
    :cond_23
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 873
    .line 874
    .line 875
    move-result v3

    .line 876
    :goto_14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 877
    .line 878
    .line 879
    move-result-object v3

    .line 880
    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    .line 881
    .line 882
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 883
    .line 884
    iget-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    .line 885
    .line 886
    if-nez v3, :cond_24

    .line 887
    .line 888
    iget-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 889
    .line 890
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 891
    .line 892
    .line 893
    move-result v3

    .line 894
    const/16 v4, 0x1b

    .line 895
    .line 896
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 897
    .line 898
    .line 899
    move-result v3

    .line 900
    goto :goto_15

    .line 901
    :cond_24
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 902
    .line 903
    .line 904
    move-result v3

    .line 905
    :goto_15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 906
    .line 907
    .line 908
    move-result-object v3

    .line 909
    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    .line 910
    .line 911
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 912
    .line 913
    iget-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->largeFontVerticalOffsetAdjustment:Ljava/lang/Integer;

    .line 914
    .line 915
    if-nez v3, :cond_25

    .line 916
    .line 917
    const/16 v3, 0x15

    .line 918
    .line 919
    invoke-virtual {v2, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 920
    .line 921
    .line 922
    move-result v3

    .line 923
    goto :goto_16

    .line 924
    :cond_25
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 925
    .line 926
    .line 927
    move-result v3

    .line 928
    :goto_16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 929
    .line 930
    .line 931
    move-result-object v3

    .line 932
    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->largeFontVerticalOffsetAdjustment:Ljava/lang/Integer;

    .line 933
    .line 934
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 935
    .line 936
    iget-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    .line 937
    .line 938
    if-nez v3, :cond_26

    .line 939
    .line 940
    move v3, v10

    .line 941
    goto :goto_17

    .line 942
    :cond_26
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 943
    .line 944
    .line 945
    move-result v3

    .line 946
    :goto_17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 947
    .line 948
    .line 949
    move-result-object v3

    .line 950
    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    .line 951
    .line 952
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 953
    .line 954
    iget-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    .line 955
    .line 956
    if-nez v3, :cond_27

    .line 957
    .line 958
    move v3, v10

    .line 959
    goto :goto_18

    .line 960
    :cond_27
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 961
    .line 962
    .line 963
    move-result v3

    .line 964
    :goto_18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 965
    .line 966
    .line 967
    move-result-object v3

    .line 968
    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    .line 969
    .line 970
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 971
    .line 972
    iget-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->autoAdjustToWithinGrandparentBounds:Ljava/lang/Boolean;

    .line 973
    .line 974
    if-nez v3, :cond_28

    .line 975
    .line 976
    invoke-virtual {v2, v10, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 977
    .line 978
    .line 979
    move-result v3

    .line 980
    goto :goto_19

    .line 981
    :cond_28
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 982
    .line 983
    .line 984
    move-result v3

    .line 985
    :goto_19
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 986
    .line 987
    .line 988
    move-result-object v3

    .line 989
    iput-object v3, v1, Lcom/google/android/material/badge/BadgeState$State;->autoAdjustToWithinGrandparentBounds:Ljava/lang/Boolean;

    .line 990
    .line 991
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 992
    .line 993
    .line 994
    iget-object v1, v7, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 995
    .line 996
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 997
    .line 998
    if-nez v1, :cond_2a

    .line 999
    .line 1000
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1001
    .line 1002
    const/16 v3, 0x18

    .line 1003
    .line 1004
    if-lt v1, v3, :cond_29

    .line 1005
    .line 1006
    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 1007
    .line 1008
    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v1

    .line 1012
    goto :goto_1a

    .line 1013
    :cond_29
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v1

    .line 1017
    :goto_1a
    iput-object v1, v2, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 1018
    .line 1019
    goto :goto_1b

    .line 1020
    :cond_2a
    iput-object v1, v2, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 1021
    .line 1022
    :goto_1b
    iput-object v7, v0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 1023
    .line 1024
    return-void
.end method

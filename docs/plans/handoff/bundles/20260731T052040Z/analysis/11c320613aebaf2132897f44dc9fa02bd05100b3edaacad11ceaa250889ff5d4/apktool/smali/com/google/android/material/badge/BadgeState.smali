.class public final Lcom/google/android/material/badge/BadgeState;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/material/badge/BadgeState$State;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/material/badge/BadgeState$State;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    .line 14
    .line 15
    .line 16
    iget v1, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    const-string v5, "badge"

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    :cond_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eq v7, v2, :cond_1

    .line 38
    .line 39
    if-ne v7, v3, :cond_0

    .line 40
    .line 41
    :cond_1
    if-ne v7, v2, :cond_3

    .line 42
    .line 43
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_2

    .line 52
    .line 53
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 54
    .line 55
    .line 56
    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    invoke-interface {v1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    :goto_0
    move-object v6, v1

    .line 62
    goto :goto_3

    .line 63
    :catch_0
    move-exception v0

    .line 64
    :goto_1
    move-object p0, v0

    .line 65
    goto :goto_2

    .line 66
    :catch_1
    move-exception v0

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :try_start_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 69
    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v0, "Must have a <"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, "> start tag"

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 97
    .line 98
    const-string p1, "No start tag found"

    .line 99
    .line 100
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    :goto_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 105
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v2, "Can\'t load badge resource ID #0x"

    .line 109
    .line 110
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-direct {p1, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_4
    const/4 v1, 0x0

    .line 132
    move v5, v4

    .line 133
    goto :goto_0

    .line 134
    :goto_3
    if-nez v5, :cond_5

    .line 135
    .line 136
    const v5, 0x7f140479

    .line 137
    .line 138
    .line 139
    :cond_5
    move v9, v5

    .line 140
    sget-object v7, Lcom/google/android/material/R$styleable;->Badge:[I

    .line 141
    .line 142
    new-array v10, v4, [I

    .line 143
    .line 144
    const v8, 0x7f040065

    .line 145
    .line 146
    .line 147
    move-object v5, p1

    .line 148
    invoke-static/range {v5 .. v10}, Lcom/google/android/material/internal/ViewUtils;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const/4 v6, 0x4

    .line 157
    const/4 v7, -0x1

    .line 158
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    int-to-float v6, v6

    .line 163
    iput v6, p0, Lcom/google/android/material/badge/BadgeState;->badgeRadius:F

    .line 164
    .line 165
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    const v8, 0x7f07028c

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    iput v6, p0, Lcom/google/android/material/badge/BadgeState;->horizontalInset:I

    .line 177
    .line 178
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    const v8, 0x7f07028f

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    iput v6, p0, Lcom/google/android/material/badge/BadgeState;->horizontalInsetWithText:I

    .line 190
    .line 191
    const/16 v6, 0xe

    .line 192
    .line 193
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    int-to-float v6, v6

    .line 198
    iput v6, p0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    .line 199
    .line 200
    const/16 v6, 0xc

    .line 201
    .line 202
    const v8, 0x7f0700f9

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    iput v6, p0, Lcom/google/android/material/badge/BadgeState;->badgeWidth:F

    .line 214
    .line 215
    const/16 v6, 0x11

    .line 216
    .line 217
    const v9, 0x7f0700fd

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    invoke-virtual {p1, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    iput v6, p0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextWidth:F

    .line 229
    .line 230
    const/4 v6, 0x3

    .line 231
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    invoke-virtual {p1, v6, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    iput v6, p0, Lcom/google/android/material/badge/BadgeState;->badgeHeight:F

    .line 240
    .line 241
    const/16 v6, 0xd

    .line 242
    .line 243
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    invoke-virtual {p1, v6, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    iput v6, p0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextHeight:F

    .line 252
    .line 253
    const/16 v6, 0x18

    .line 254
    .line 255
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    iput v8, p0, Lcom/google/android/material/badge/BadgeState;->offsetAlignmentMode:I

    .line 260
    .line 261
    iget-object v8, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 262
    .line 263
    iget v9, v0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 264
    .line 265
    const/4 v10, -0x2

    .line 266
    if-ne v9, v10, :cond_6

    .line 267
    .line 268
    const/16 v9, 0xff

    .line 269
    .line 270
    :cond_6
    iput v9, v8, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 271
    .line 272
    iget v9, v0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 273
    .line 274
    if-eq v9, v10, :cond_7

    .line 275
    .line 276
    iput v9, v8, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_7
    const/16 v8, 0x17

    .line 280
    .line 281
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    iget-object v11, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 286
    .line 287
    if-eqz v9, :cond_8

    .line 288
    .line 289
    invoke-virtual {p1, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    iput v7, v11, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_8
    iput v7, v11, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 297
    .line 298
    :goto_4
    iget-object v7, v0, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    .line 299
    .line 300
    if-eqz v7, :cond_9

    .line 301
    .line 302
    iget-object v8, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 303
    .line 304
    iput-object v7, v8, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    .line 305
    .line 306
    goto :goto_5

    .line 307
    :cond_9
    const/4 v7, 0x7

    .line 308
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 309
    .line 310
    .line 311
    move-result v8

    .line 312
    if-eqz v8, :cond_a

    .line 313
    .line 314
    iget-object v8, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 315
    .line 316
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    iput-object v7, v8, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    .line 321
    .line 322
    :cond_a
    :goto_5
    iget-object v7, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 323
    .line 324
    iget-object v8, v0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionForText:Ljava/lang/CharSequence;

    .line 325
    .line 326
    iput-object v8, v7, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionForText:Ljava/lang/CharSequence;

    .line 327
    .line 328
    iget-object v8, v0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 329
    .line 330
    if-nez v8, :cond_b

    .line 331
    .line 332
    const v8, 0x7f130308

    .line 333
    .line 334
    .line 335
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v8

    .line 339
    :cond_b
    iput-object v8, v7, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 340
    .line 341
    iget-object v7, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 342
    .line 343
    iget v8, v0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    .line 344
    .line 345
    if-nez v8, :cond_c

    .line 346
    .line 347
    const v8, 0x7f11000c

    .line 348
    .line 349
    .line 350
    :cond_c
    iput v8, v7, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    .line 351
    .line 352
    iget v8, v0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    .line 353
    .line 354
    if-nez v8, :cond_d

    .line 355
    .line 356
    const v8, 0x7f130315

    .line 357
    .line 358
    .line 359
    :cond_d
    iput v8, v7, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    .line 360
    .line 361
    iget-object v8, v0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 362
    .line 363
    if-eqz v8, :cond_f

    .line 364
    .line 365
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 366
    .line 367
    .line 368
    move-result v8

    .line 369
    if-eqz v8, :cond_e

    .line 370
    .line 371
    goto :goto_6

    .line 372
    :cond_e
    move v8, v4

    .line 373
    goto :goto_7

    .line 374
    :cond_f
    :goto_6
    move v8, v3

    .line 375
    :goto_7
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    iput-object v8, v7, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 380
    .line 381
    iget-object v7, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 382
    .line 383
    iget v8, v0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 384
    .line 385
    if-ne v8, v10, :cond_10

    .line 386
    .line 387
    const/16 v8, 0x15

    .line 388
    .line 389
    invoke-virtual {p1, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 390
    .line 391
    .line 392
    move-result v8

    .line 393
    :cond_10
    iput v8, v7, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 394
    .line 395
    iget-object v7, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 396
    .line 397
    iget v8, v0, Lcom/google/android/material/badge/BadgeState$State;->maxNumber:I

    .line 398
    .line 399
    if-ne v8, v10, :cond_11

    .line 400
    .line 401
    const/16 v8, 0x16

    .line 402
    .line 403
    invoke-virtual {p1, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 404
    .line 405
    .line 406
    move-result v8

    .line 407
    :cond_11
    iput v8, v7, Lcom/google/android/material/badge/BadgeState$State;->maxNumber:I

    .line 408
    .line 409
    iget-object v7, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    .line 411
    iget-object v8, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    .line 412
    .line 413
    const v9, 0x7f1401f0

    .line 414
    .line 415
    .line 416
    if-nez v8, :cond_12

    .line 417
    .line 418
    const/4 v8, 0x5

    .line 419
    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 420
    .line 421
    .line 422
    move-result v8

    .line 423
    goto :goto_8

    .line 424
    :cond_12
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 425
    .line 426
    .line 427
    move-result v8

    .line 428
    :goto_8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 429
    .line 430
    .line 431
    move-result-object v8

    .line 432
    iput-object v8, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    .line 433
    .line 434
    iget-object v7, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 435
    .line 436
    iget-object v8, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    .line 437
    .line 438
    if-nez v8, :cond_13

    .line 439
    .line 440
    const/4 v8, 0x6

    .line 441
    invoke-virtual {p1, v8, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 442
    .line 443
    .line 444
    move-result v8

    .line 445
    goto :goto_9

    .line 446
    :cond_13
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 447
    .line 448
    .line 449
    move-result v8

    .line 450
    :goto_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object v8

    .line 454
    iput-object v8, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    .line 455
    .line 456
    iget-object v7, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 457
    .line 458
    iget-object v8, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    .line 459
    .line 460
    if-nez v8, :cond_14

    .line 461
    .line 462
    const/16 v8, 0xf

    .line 463
    .line 464
    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 465
    .line 466
    .line 467
    move-result v8

    .line 468
    goto :goto_a

    .line 469
    :cond_14
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 470
    .line 471
    .line 472
    move-result v8

    .line 473
    :goto_a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    .line 475
    .line 476
    move-result-object v8

    .line 477
    iput-object v8, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    .line 478
    .line 479
    iget-object v7, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 480
    .line 481
    iget-object v8, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    .line 482
    .line 483
    if-nez v8, :cond_15

    .line 484
    .line 485
    const/16 v8, 0x10

    .line 486
    .line 487
    invoke-virtual {p1, v8, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 488
    .line 489
    .line 490
    move-result v8

    .line 491
    goto :goto_b

    .line 492
    :cond_15
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 493
    .line 494
    .line 495
    move-result v8

    .line 496
    :goto_b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    .line 498
    .line 499
    move-result-object v8

    .line 500
    iput-object v8, v7, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    .line 501
    .line 502
    iget-object v7, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 503
    .line 504
    iget-object v8, v0, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    .line 505
    .line 506
    if-nez v8, :cond_16

    .line 507
    .line 508
    invoke-static {v5, p1, v3}, Landroidx/core/os/BundleKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    goto :goto_c

    .line 517
    :cond_16
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    :goto_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    iput-object v3, v7, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    .line 526
    .line 527
    iget-object v3, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 528
    .line 529
    iget-object v7, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    .line 530
    .line 531
    if-nez v7, :cond_17

    .line 532
    .line 533
    const/16 v7, 0x8

    .line 534
    .line 535
    const v8, 0x7f140283

    .line 536
    .line 537
    .line 538
    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 539
    .line 540
    .line 541
    move-result v7

    .line 542
    goto :goto_d

    .line 543
    :cond_17
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 544
    .line 545
    .line 546
    move-result v7

    .line 547
    :goto_d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 548
    .line 549
    .line 550
    move-result-object v7

    .line 551
    iput-object v7, v3, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    .line 552
    .line 553
    iget-object v3, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 554
    .line 555
    if-eqz v3, :cond_18

    .line 556
    .line 557
    iget-object v5, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 558
    .line 559
    iput-object v3, v5, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 560
    .line 561
    goto :goto_e

    .line 562
    :cond_18
    const/16 v3, 0x9

    .line 563
    .line 564
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 565
    .line 566
    .line 567
    move-result v7

    .line 568
    iget-object v8, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 569
    .line 570
    if-eqz v7, :cond_19

    .line 571
    .line 572
    invoke-static {v5, p1, v3}, Landroidx/core/os/BundleKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    iput-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 585
    .line 586
    goto :goto_e

    .line 587
    :cond_19
    new-instance v3, Lcom/google/android/material/resources/TextAppearance;

    .line 588
    .line 589
    iget-object v7, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    .line 590
    .line 591
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 592
    .line 593
    .line 594
    move-result v7

    .line 595
    invoke-direct {v3, v5, v7}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 596
    .line 597
    .line 598
    iget-object v5, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 599
    .line 600
    iget-object v3, v3, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 601
    .line 602
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    iput-object v3, v5, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 611
    .line 612
    :goto_e
    iget-object v3, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 613
    .line 614
    iget-object v5, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    .line 615
    .line 616
    if-nez v5, :cond_1a

    .line 617
    .line 618
    const v5, 0x800035

    .line 619
    .line 620
    .line 621
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 622
    .line 623
    .line 624
    move-result v2

    .line 625
    goto :goto_f

    .line 626
    :cond_1a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 627
    .line 628
    .line 629
    move-result v2

    .line 630
    :goto_f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    iput-object v2, v3, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    .line 635
    .line 636
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 637
    .line 638
    iget-object v3, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeHorizontalPadding:Ljava/lang/Integer;

    .line 639
    .line 640
    if-nez v3, :cond_1b

    .line 641
    .line 642
    const v3, 0x7f07028d

    .line 643
    .line 644
    .line 645
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 646
    .line 647
    .line 648
    move-result v3

    .line 649
    const/16 v5, 0xb

    .line 650
    .line 651
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 652
    .line 653
    .line 654
    move-result v3

    .line 655
    goto :goto_10

    .line 656
    :cond_1b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 657
    .line 658
    .line 659
    move-result v3

    .line 660
    :goto_10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 661
    .line 662
    .line 663
    move-result-object v3

    .line 664
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeHorizontalPadding:Ljava/lang/Integer;

    .line 665
    .line 666
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 667
    .line 668
    iget-object v3, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeVerticalPadding:Ljava/lang/Integer;

    .line 669
    .line 670
    if-nez v3, :cond_1c

    .line 671
    .line 672
    const v3, 0x7f0700ff

    .line 673
    .line 674
    .line 675
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 676
    .line 677
    .line 678
    move-result v1

    .line 679
    const/16 v3, 0xa

    .line 680
    .line 681
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 682
    .line 683
    .line 684
    move-result v1

    .line 685
    goto :goto_11

    .line 686
    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 687
    .line 688
    .line 689
    move-result v1

    .line 690
    :goto_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    iput-object v1, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeVerticalPadding:Ljava/lang/Integer;

    .line 695
    .line 696
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 697
    .line 698
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 699
    .line 700
    if-nez v2, :cond_1d

    .line 701
    .line 702
    const/16 v2, 0x12

    .line 703
    .line 704
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 705
    .line 706
    .line 707
    move-result v2

    .line 708
    goto :goto_12

    .line 709
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    :goto_12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 714
    .line 715
    .line 716
    move-result-object v2

    .line 717
    iput-object v2, v1, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 718
    .line 719
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 720
    .line 721
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 722
    .line 723
    if-nez v2, :cond_1e

    .line 724
    .line 725
    const/16 v2, 0x19

    .line 726
    .line 727
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 728
    .line 729
    .line 730
    move-result v2

    .line 731
    goto :goto_13

    .line 732
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 733
    .line 734
    .line 735
    move-result v2

    .line 736
    :goto_13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    iput-object v2, v1, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 741
    .line 742
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 743
    .line 744
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    .line 745
    .line 746
    if-nez v2, :cond_1f

    .line 747
    .line 748
    iget-object v2, v1, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 749
    .line 750
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 751
    .line 752
    .line 753
    move-result v2

    .line 754
    const/16 v3, 0x13

    .line 755
    .line 756
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 757
    .line 758
    .line 759
    move-result v2

    .line 760
    goto :goto_14

    .line 761
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 762
    .line 763
    .line 764
    move-result v2

    .line 765
    :goto_14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    iput-object v2, v1, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    .line 770
    .line 771
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 772
    .line 773
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    .line 774
    .line 775
    if-nez v2, :cond_20

    .line 776
    .line 777
    iget-object v2, v1, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 778
    .line 779
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 780
    .line 781
    .line 782
    move-result v2

    .line 783
    const/16 v3, 0x1a

    .line 784
    .line 785
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 786
    .line 787
    .line 788
    move-result v2

    .line 789
    goto :goto_15

    .line 790
    :cond_20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 791
    .line 792
    .line 793
    move-result v2

    .line 794
    :goto_15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 795
    .line 796
    .line 797
    move-result-object v2

    .line 798
    iput-object v2, v1, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    .line 799
    .line 800
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 801
    .line 802
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->largeFontVerticalOffsetAdjustment:Ljava/lang/Integer;

    .line 803
    .line 804
    if-nez v2, :cond_21

    .line 805
    .line 806
    const/16 v2, 0x14

    .line 807
    .line 808
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 809
    .line 810
    .line 811
    move-result v2

    .line 812
    goto :goto_16

    .line 813
    :cond_21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 814
    .line 815
    .line 816
    move-result v2

    .line 817
    :goto_16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 818
    .line 819
    .line 820
    move-result-object v2

    .line 821
    iput-object v2, v1, Lcom/google/android/material/badge/BadgeState$State;->largeFontVerticalOffsetAdjustment:Ljava/lang/Integer;

    .line 822
    .line 823
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 824
    .line 825
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    .line 826
    .line 827
    if-nez v2, :cond_22

    .line 828
    .line 829
    move v2, v4

    .line 830
    goto :goto_17

    .line 831
    :cond_22
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 832
    .line 833
    .line 834
    move-result v2

    .line 835
    :goto_17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 836
    .line 837
    .line 838
    move-result-object v2

    .line 839
    iput-object v2, v1, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    .line 840
    .line 841
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 842
    .line 843
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    .line 844
    .line 845
    if-nez v2, :cond_23

    .line 846
    .line 847
    move v2, v4

    .line 848
    goto :goto_18

    .line 849
    :cond_23
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 850
    .line 851
    .line 852
    move-result v2

    .line 853
    :goto_18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 854
    .line 855
    .line 856
    move-result-object v2

    .line 857
    iput-object v2, v1, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    .line 858
    .line 859
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 860
    .line 861
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->autoAdjustToWithinGrandparentBounds:Ljava/lang/Boolean;

    .line 862
    .line 863
    if-nez v2, :cond_24

    .line 864
    .line 865
    invoke-virtual {p1, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 866
    .line 867
    .line 868
    move-result v2

    .line 869
    goto :goto_19

    .line 870
    :cond_24
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 871
    .line 872
    .line 873
    move-result v2

    .line 874
    :goto_19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 875
    .line 876
    .line 877
    move-result-object v2

    .line 878
    iput-object v2, v1, Lcom/google/android/material/badge/BadgeState$State;->autoAdjustToWithinGrandparentBounds:Ljava/lang/Boolean;

    .line 879
    .line 880
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 881
    .line 882
    .line 883
    iget-object p1, v0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 884
    .line 885
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 886
    .line 887
    if-nez p1, :cond_26

    .line 888
    .line 889
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 890
    .line 891
    if-lt p1, v6, :cond_25

    .line 892
    .line 893
    sget-object p1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 894
    .line 895
    invoke-static {p1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    .line 896
    .line 897
    .line 898
    move-result-object p1

    .line 899
    goto :goto_1a

    .line 900
    :cond_25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 901
    .line 902
    .line 903
    move-result-object p1

    .line 904
    :goto_1a
    iput-object p1, v1, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 905
    .line 906
    goto :goto_1b

    .line 907
    :cond_26
    iput-object p1, v1, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 908
    .line 909
    :goto_1b
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 910
    .line 911
    return-void
.end method

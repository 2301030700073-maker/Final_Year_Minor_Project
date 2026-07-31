.class public final Lcoil3/decode/BitmapFactoryDecoder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcoil3/decode/Decoder;


# instance fields
.field public final exifOrientationStrategy:Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

.field public final options:Lcoil3/request/Options;

.field public final parallelismLock:Lkotlinx/coroutines/sync/SemaphoreImpl;

.field public final source:Lcoil3/decode/ImageSource;


# direct methods
.method public static $r8$lambda$VWPXjvPloVsydy3Nv6wOsK8OwNc(Lcoil3/decode/BitmapFactoryDecoder;)Lcoil3/decode/DecodeResult;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcoil3/decode/BitmapFactoryDecoder;->options:Lcoil3/request/Options;

    .line 9
    .line 10
    new-instance v3, Lcoil3/decode/BitmapFactoryDecoder$ExceptionCatchingSource;

    .line 11
    .line 12
    iget-object v4, v0, Lcoil3/decode/BitmapFactoryDecoder;->source:Lcoil3/decode/ImageSource;

    .line 13
    .line 14
    invoke-interface {v4}, Lcoil3/decode/ImageSource;->source()Lokio/BufferedSource;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-direct {v3, v4}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lokio/RealBufferedSource;

    .line 22
    .line 23
    invoke-direct {v4, v3}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 24
    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 28
    .line 29
    new-instance v6, Lokio/PeekSource;

    .line 30
    .line 31
    invoke-direct {v6, v4}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    .line 32
    .line 33
    .line 34
    new-instance v7, Lokio/RealBufferedSource;

    .line 35
    .line 36
    invoke-direct {v7, v6}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 37
    .line 38
    .line 39
    new-instance v6, Lokio/RealBufferedSource$inputStream$1;

    .line 40
    .line 41
    invoke-direct {v6, v7}, Lokio/RealBufferedSource$inputStream$1;-><init>(Lokio/RealBufferedSource;)V

    .line 42
    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    invoke-static {v6, v7, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    iget-object v6, v3, Lcoil3/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->exception:Ljava/lang/Exception;

    .line 49
    .line 50
    if-nez v6, :cond_2b

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 54
    .line 55
    sget-object v8, Lcoil3/decode/ExifUtils;->paint:Landroid/graphics/Paint;

    .line 56
    .line 57
    iget-object v8, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v0, v0, Lcoil3/decode/BitmapFactoryDecoder;->exifOrientationStrategy:Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const-string v0, "image/jpeg"

    .line 65
    .line 66
    if-eqz v8, :cond_1

    .line 67
    .line 68
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-nez v9, :cond_0

    .line 73
    .line 74
    const-string v9, "image/webp"

    .line 75
    .line 76
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-nez v9, :cond_0

    .line 81
    .line 82
    const-string v9, "image/heic"

    .line 83
    .line 84
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-nez v9, :cond_0

    .line 89
    .line 90
    const-string v9, "image/heif"

    .line 91
    .line 92
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eqz v8, :cond_1

    .line 97
    .line 98
    :cond_0
    move v8, v5

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    move v8, v6

    .line 101
    :goto_0
    const/16 v9, 0x10e

    .line 102
    .line 103
    const/16 v10, 0x5a

    .line 104
    .line 105
    if-eqz v8, :cond_5

    .line 106
    .line 107
    new-instance v8, Landroidx/exifinterface/media/ExifInterface;

    .line 108
    .line 109
    new-instance v11, Lcoil3/decode/ExifInterfaceInputStream;

    .line 110
    .line 111
    new-instance v12, Lokio/PeekSource;

    .line 112
    .line 113
    invoke-direct {v12, v4}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    .line 114
    .line 115
    .line 116
    new-instance v13, Lokio/RealBufferedSource;

    .line 117
    .line 118
    invoke-direct {v13, v12}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 119
    .line 120
    .line 121
    new-instance v12, Lokio/RealBufferedSource$inputStream$1;

    .line 122
    .line 123
    invoke-direct {v12, v13}, Lokio/RealBufferedSource$inputStream$1;-><init>(Lokio/RealBufferedSource;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v11, v12}, Lcoil3/decode/ExifInterfaceInputStream;-><init>(Ljava/io/InputStream;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {v8, v11}, Landroidx/exifinterface/media/ExifInterface;-><init>(Lcoil3/decode/ExifInterfaceInputStream;)V

    .line 130
    .line 131
    .line 132
    new-instance v11, Lcoil3/decode/ExifData;

    .line 133
    .line 134
    const-string v12, "Orientation"

    .line 135
    .line 136
    invoke-virtual {v8, v12}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 137
    .line 138
    .line 139
    move-result-object v13

    .line 140
    if-nez v13, :cond_2

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    :try_start_0
    iget-object v14, v8, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 144
    .line 145
    invoke-virtual {v13, v14}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 146
    .line 147
    .line 148
    move-result v13
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_2

    .line 150
    :catch_0
    :goto_1
    move v13, v5

    .line 151
    :goto_2
    const/4 v14, 0x2

    .line 152
    if-eq v13, v14, :cond_3

    .line 153
    .line 154
    const/4 v14, 0x7

    .line 155
    if-eq v13, v14, :cond_3

    .line 156
    .line 157
    const/4 v14, 0x4

    .line 158
    if-eq v13, v14, :cond_3

    .line 159
    .line 160
    const/4 v14, 0x5

    .line 161
    if-eq v13, v14, :cond_3

    .line 162
    .line 163
    move v13, v6

    .line 164
    goto :goto_3

    .line 165
    :cond_3
    move v13, v5

    .line 166
    :goto_3
    invoke-virtual {v8, v12}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    if-nez v12, :cond_4

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_4
    :try_start_1
    iget-object v8, v8, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 174
    .line 175
    invoke-virtual {v12, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 176
    .line 177
    .line 178
    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    goto :goto_5

    .line 180
    :catch_1
    :goto_4
    move v8, v5

    .line 181
    :goto_5
    packed-switch v8, :pswitch_data_0

    .line 182
    .line 183
    .line 184
    move v8, v6

    .line 185
    goto :goto_6

    .line 186
    :pswitch_0
    move v8, v10

    .line 187
    goto :goto_6

    .line 188
    :pswitch_1
    move v8, v9

    .line 189
    goto :goto_6

    .line 190
    :pswitch_2
    const/16 v8, 0xb4

    .line 191
    .line 192
    :goto_6
    invoke-direct {v11, v13, v8}, Lcoil3/decode/ExifData;-><init>(ZI)V

    .line 193
    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_5
    sget-object v11, Lcoil3/decode/ExifData;->NONE:Lcoil3/decode/ExifData;

    .line 197
    .line 198
    :goto_7
    iget v8, v11, Lcoil3/decode/ExifData;->rotationDegrees:I

    .line 199
    .line 200
    iget-boolean v11, v11, Lcoil3/decode/ExifData;->isFlipped:Z

    .line 201
    .line 202
    iget-object v12, v3, Lcoil3/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->exception:Ljava/lang/Exception;

    .line 203
    .line 204
    if-nez v12, :cond_2a

    .line 205
    .line 206
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 207
    .line 208
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 209
    .line 210
    const/16 v13, 0x1a

    .line 211
    .line 212
    if-lt v12, v13, :cond_6

    .line 213
    .line 214
    sget-object v14, Lcoil3/request/ImageRequests_androidKt;->colorSpaceKey:Lcoil3/Extras$Key;

    .line 215
    .line 216
    invoke-static {v2, v14}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v15

    .line 220
    check-cast v15, Landroid/graphics/ColorSpace;

    .line 221
    .line 222
    if-eqz v15, :cond_6

    .line 223
    .line 224
    invoke-static {v2, v14}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v14

    .line 228
    check-cast v14, Landroid/graphics/ColorSpace;

    .line 229
    .line 230
    iput-object v14, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 231
    .line 232
    :cond_6
    sget-object v14, Lcoil3/request/ImageRequests_androidKt;->premultipliedAlphaKey:Lcoil3/Extras$Key;

    .line 233
    .line 234
    invoke-static {v2, v14}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v14

    .line 238
    check-cast v14, Ljava/lang/Boolean;

    .line 239
    .line 240
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 241
    .line 242
    .line 243
    move-result v14

    .line 244
    iget-object v15, v2, Lcoil3/request/Options;->context:Landroid/content/Context;

    .line 245
    .line 246
    iput-boolean v14, v1, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 247
    .line 248
    sget-object v14, Lcoil3/request/ImageRequests_androidKt;->bitmapConfigKey:Lcoil3/Extras$Key;

    .line 249
    .line 250
    invoke-static {v2, v14}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v14

    .line 254
    check-cast v14, Landroid/graphics/Bitmap$Config;

    .line 255
    .line 256
    if-nez v11, :cond_8

    .line 257
    .line 258
    if-lez v8, :cond_7

    .line 259
    .line 260
    goto :goto_9

    .line 261
    :cond_7
    :goto_8
    move-object/from16 v16, v7

    .line 262
    .line 263
    goto :goto_a

    .line 264
    :cond_8
    :goto_9
    if-eqz v14, :cond_9

    .line 265
    .line 266
    invoke-static {v14}, Lcoil3/util/BitmapsKt;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    .line 267
    .line 268
    .line 269
    move-result v16

    .line 270
    if-eqz v16, :cond_7

    .line 271
    .line 272
    :cond_9
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 273
    .line 274
    goto :goto_8

    .line 275
    :goto_a
    sget-object v7, Lcoil3/request/ImageRequests_androidKt;->allowRgb565Key:Lcoil3/Extras$Key;

    .line 276
    .line 277
    invoke-static {v2, v7}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    check-cast v7, Ljava/lang/Boolean;

    .line 282
    .line 283
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    if-eqz v7, :cond_a

    .line 288
    .line 289
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 290
    .line 291
    if-ne v14, v7, :cond_a

    .line 292
    .line 293
    iget-object v7, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 294
    .line 295
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_a

    .line 300
    .line 301
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 302
    .line 303
    :cond_a
    if-lt v12, v13, :cond_b

    .line 304
    .line 305
    iget-object v0, v1, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 306
    .line 307
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 308
    .line 309
    if-ne v0, v7, :cond_b

    .line 310
    .line 311
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 312
    .line 313
    if-eq v14, v0, :cond_b

    .line 314
    .line 315
    move-object v14, v7

    .line 316
    :cond_b
    iput-object v14, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 317
    .line 318
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 319
    .line 320
    if-lez v0, :cond_1c

    .line 321
    .line 322
    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 323
    .line 324
    if-gtz v7, :cond_c

    .line 325
    .line 326
    move v9, v5

    .line 327
    move/from16 v19, v11

    .line 328
    .line 329
    goto/16 :goto_12

    .line 330
    .line 331
    :cond_c
    if-eq v8, v10, :cond_e

    .line 332
    .line 333
    if-ne v8, v9, :cond_d

    .line 334
    .line 335
    goto :goto_b

    .line 336
    :cond_d
    move v12, v0

    .line 337
    goto :goto_c

    .line 338
    :cond_e
    :goto_b
    move v12, v7

    .line 339
    :goto_c
    if-eq v8, v10, :cond_10

    .line 340
    .line 341
    if-ne v8, v9, :cond_f

    .line 342
    .line 343
    goto :goto_d

    .line 344
    :cond_f
    move v0, v7

    .line 345
    :cond_10
    :goto_d
    iget-object v7, v2, Lcoil3/request/Options;->size:Lcoil3/size/Size;

    .line 346
    .line 347
    iget-object v13, v2, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 348
    .line 349
    sget-object v14, Lcoil3/request/ImageRequestsKt;->maxBitmapSizeKey:Lcoil3/Extras$Key;

    .line 350
    .line 351
    invoke-static {v2, v14}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v17

    .line 355
    move-object/from16 v9, v17

    .line 356
    .line 357
    check-cast v9, Lcoil3/size/Size;

    .line 358
    .line 359
    invoke-static {v12, v0, v7, v13, v9}, Lkotlin/text/CharsKt;->computeDstSize-sEdh43o(IILcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;)J

    .line 360
    .line 361
    .line 362
    move-result-wide v17

    .line 363
    const/16 v7, 0x20

    .line 364
    .line 365
    move/from16 v19, v11

    .line 366
    .line 367
    shr-long v10, v17, v7

    .line 368
    .line 369
    long-to-int v7, v10

    .line 370
    const-wide v10, 0xffffffffL

    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    and-long v10, v17, v10

    .line 376
    .line 377
    long-to-int v10, v10

    .line 378
    div-int v11, v12, v7

    .line 379
    .line 380
    invoke-static {v11}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 381
    .line 382
    .line 383
    move-result v11

    .line 384
    div-int v17, v0, v10

    .line 385
    .line 386
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 387
    .line 388
    .line 389
    move-result v9

    .line 390
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    if-eqz v6, :cond_12

    .line 395
    .line 396
    if-ne v6, v5, :cond_11

    .line 397
    .line 398
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    goto :goto_e

    .line 403
    :cond_11
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 404
    .line 405
    .line 406
    return-object v16

    .line 407
    :cond_12
    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    .line 408
    .line 409
    .line 410
    move-result v6

    .line 411
    :goto_e
    if-ge v6, v5, :cond_13

    .line 412
    .line 413
    move v6, v5

    .line 414
    :cond_13
    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 415
    .line 416
    int-to-double v11, v12

    .line 417
    int-to-double v5, v6

    .line 418
    div-double/2addr v11, v5

    .line 419
    move/from16 v20, v10

    .line 420
    .line 421
    int-to-double v9, v0

    .line 422
    div-double v5, v9, v5

    .line 423
    .line 424
    int-to-double v9, v7

    .line 425
    move-wide/from16 v21, v5

    .line 426
    .line 427
    move/from16 v0, v20

    .line 428
    .line 429
    int-to-double v5, v0

    .line 430
    invoke-static {v2, v14}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    check-cast v0, Lcoil3/size/Size;

    .line 435
    .line 436
    div-double/2addr v9, v11

    .line 437
    div-double v5, v5, v21

    .line 438
    .line 439
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 440
    .line 441
    .line 442
    move-result v7

    .line 443
    if-eqz v7, :cond_15

    .line 444
    .line 445
    const/4 v13, 0x1

    .line 446
    if-ne v7, v13, :cond_14

    .line 447
    .line 448
    move-wide v13, v9

    .line 449
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 450
    .line 451
    .line 452
    move-result-wide v5

    .line 453
    goto :goto_f

    .line 454
    :cond_14
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 455
    .line 456
    .line 457
    return-object v16

    .line 458
    :cond_15
    move-wide v13, v9

    .line 459
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->max(DD)D

    .line 460
    .line 461
    .line 462
    move-result-wide v5

    .line 463
    :goto_f
    iget-object v7, v0, Lcoil3/size/Size;->width:Lcoil3/size/Dimension;

    .line 464
    .line 465
    instance-of v10, v7, Lcoil3/size/Dimension$Pixels;

    .line 466
    .line 467
    if-eqz v10, :cond_16

    .line 468
    .line 469
    check-cast v7, Lcoil3/size/Dimension$Pixels;

    .line 470
    .line 471
    iget v7, v7, Lcoil3/size/Dimension$Pixels;->px:I

    .line 472
    .line 473
    int-to-double v13, v7

    .line 474
    div-double/2addr v13, v11

    .line 475
    cmpl-double v7, v5, v13

    .line 476
    .line 477
    if-lez v7, :cond_16

    .line 478
    .line 479
    move-wide v5, v13

    .line 480
    :cond_16
    iget-object v0, v0, Lcoil3/size/Size;->height:Lcoil3/size/Dimension;

    .line 481
    .line 482
    instance-of v7, v0, Lcoil3/size/Dimension$Pixels;

    .line 483
    .line 484
    if-eqz v7, :cond_17

    .line 485
    .line 486
    check-cast v0, Lcoil3/size/Dimension$Pixels;

    .line 487
    .line 488
    iget v0, v0, Lcoil3/size/Dimension$Pixels;->px:I

    .line 489
    .line 490
    int-to-double v10, v0

    .line 491
    div-double v10, v10, v21

    .line 492
    .line 493
    cmpl-double v0, v5, v10

    .line 494
    .line 495
    if-lez v0, :cond_17

    .line 496
    .line 497
    move-wide v5, v10

    .line 498
    :cond_17
    iget-object v0, v2, Lcoil3/request/Options;->precision:Lcoil3/size/Precision;

    .line 499
    .line 500
    sget-object v2, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    .line 501
    .line 502
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 503
    .line 504
    if-ne v0, v2, :cond_18

    .line 505
    .line 506
    cmpl-double v0, v5, v10

    .line 507
    .line 508
    if-lez v0, :cond_18

    .line 509
    .line 510
    move-wide v5, v10

    .line 511
    :cond_18
    cmpg-double v0, v5, v10

    .line 512
    .line 513
    if-nez v0, :cond_19

    .line 514
    .line 515
    const/4 v0, 0x1

    .line 516
    goto :goto_10

    .line 517
    :cond_19
    const/4 v0, 0x0

    .line 518
    :goto_10
    xor-int/lit8 v2, v0, 0x1

    .line 519
    .line 520
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 521
    .line 522
    if-nez v0, :cond_1a

    .line 523
    .line 524
    cmpl-double v0, v5, v10

    .line 525
    .line 526
    const v2, 0x7fffffff

    .line 527
    .line 528
    .line 529
    const-wide v10, 0x41dfffffffc00000L    # 2.147483647E9

    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    if-lez v0, :cond_1b

    .line 535
    .line 536
    div-double/2addr v10, v5

    .line 537
    invoke-static {v10, v11}, Lkotlin/math/MathKt;->roundToInt(D)I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 542
    .line 543
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 544
    .line 545
    :cond_1a
    :goto_11
    const/4 v0, 0x0

    .line 546
    goto :goto_13

    .line 547
    :cond_1b
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 548
    .line 549
    mul-double/2addr v10, v5

    .line 550
    invoke-static {v10, v11}, Lkotlin/math/MathKt;->roundToInt(D)I

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 555
    .line 556
    goto :goto_11

    .line 557
    :cond_1c
    move/from16 v19, v11

    .line 558
    .line 559
    move v9, v5

    .line 560
    :goto_12
    iput v9, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 561
    .line 562
    const/4 v0, 0x0

    .line 563
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 564
    .line 565
    :goto_13
    :try_start_2
    new-instance v2, Lokio/RealBufferedSource$inputStream$1;

    .line 566
    .line 567
    invoke-direct {v2, v4}, Lokio/RealBufferedSource$inputStream$1;-><init>(Lokio/RealBufferedSource;)V

    .line 568
    .line 569
    .line 570
    move-object/from16 v5, v16

    .line 571
    .line 572
    invoke-static {v2, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 573
    .line 574
    .line 575
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 576
    invoke-virtual {v4}, Lokio/RealBufferedSource;->close()V

    .line 577
    .line 578
    .line 579
    iget-object v3, v3, Lcoil3/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->exception:Ljava/lang/Exception;

    .line 580
    .line 581
    if-nez v3, :cond_29

    .line 582
    .line 583
    if-eqz v2, :cond_28

    .line 584
    .line 585
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 594
    .line 595
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 596
    .line 597
    .line 598
    if-nez v19, :cond_1d

    .line 599
    .line 600
    if-lez v8, :cond_25

    .line 601
    .line 602
    :cond_1d
    new-instance v3, Landroid/graphics/Matrix;

    .line 603
    .line 604
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 608
    .line 609
    .line 610
    move-result v4

    .line 611
    int-to-float v4, v4

    .line 612
    const/high16 v5, 0x40000000    # 2.0f

    .line 613
    .line 614
    div-float/2addr v4, v5

    .line 615
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 616
    .line 617
    .line 618
    move-result v6

    .line 619
    int-to-float v6, v6

    .line 620
    div-float/2addr v6, v5

    .line 621
    if-eqz v19, :cond_1e

    .line 622
    .line 623
    const/high16 v5, -0x40800000    # -1.0f

    .line 624
    .line 625
    const/high16 v7, 0x3f800000    # 1.0f

    .line 626
    .line 627
    invoke-virtual {v3, v5, v7, v4, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 628
    .line 629
    .line 630
    :cond_1e
    if-lez v8, :cond_1f

    .line 631
    .line 632
    int-to-float v5, v8

    .line 633
    invoke-virtual {v3, v5, v4, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 634
    .line 635
    .line 636
    :cond_1f
    new-instance v4, Landroid/graphics/RectF;

    .line 637
    .line 638
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 639
    .line 640
    .line 641
    move-result v5

    .line 642
    int-to-float v5, v5

    .line 643
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 644
    .line 645
    .line 646
    move-result v6

    .line 647
    int-to-float v6, v6

    .line 648
    const/4 v7, 0x0

    .line 649
    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 653
    .line 654
    .line 655
    iget v5, v4, Landroid/graphics/RectF;->left:F

    .line 656
    .line 657
    cmpg-float v6, v5, v7

    .line 658
    .line 659
    if-nez v6, :cond_20

    .line 660
    .line 661
    iget v6, v4, Landroid/graphics/RectF;->top:F

    .line 662
    .line 663
    cmpg-float v6, v6, v7

    .line 664
    .line 665
    if-nez v6, :cond_20

    .line 666
    .line 667
    :goto_14
    const/16 v4, 0x5a

    .line 668
    .line 669
    goto :goto_15

    .line 670
    :cond_20
    neg-float v5, v5

    .line 671
    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 672
    .line 673
    neg-float v4, v4

    .line 674
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 675
    .line 676
    .line 677
    goto :goto_14

    .line 678
    :goto_15
    if-eq v8, v4, :cond_23

    .line 679
    .line 680
    const/16 v4, 0x10e

    .line 681
    .line 682
    if-ne v8, v4, :cond_21

    .line 683
    .line 684
    goto :goto_16

    .line 685
    :cond_21
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 686
    .line 687
    .line 688
    move-result v4

    .line 689
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 690
    .line 691
    .line 692
    move-result v5

    .line 693
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 694
    .line 695
    .line 696
    move-result-object v6

    .line 697
    if-nez v6, :cond_22

    .line 698
    .line 699
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 700
    .line 701
    :cond_22
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 702
    .line 703
    .line 704
    move-result-object v4

    .line 705
    goto :goto_17

    .line 706
    :cond_23
    :goto_16
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 707
    .line 708
    .line 709
    move-result v4

    .line 710
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 711
    .line 712
    .line 713
    move-result v5

    .line 714
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 715
    .line 716
    .line 717
    move-result-object v6

    .line 718
    if-nez v6, :cond_24

    .line 719
    .line 720
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 721
    .line 722
    :cond_24
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 723
    .line 724
    .line 725
    move-result-object v4

    .line 726
    :goto_17
    new-instance v5, Landroid/graphics/Canvas;

    .line 727
    .line 728
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 729
    .line 730
    .line 731
    sget-object v6, Lcoil3/decode/ExifUtils;->paint:Landroid/graphics/Paint;

    .line 732
    .line 733
    invoke-virtual {v5, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 737
    .line 738
    .line 739
    move-object v2, v4

    .line 740
    :cond_25
    new-instance v3, Lcoil3/decode/DecodeResult;

    .line 741
    .line 742
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 743
    .line 744
    .line 745
    move-result-object v4

    .line 746
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 747
    .line 748
    invoke-direct {v5, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 749
    .line 750
    .line 751
    invoke-static {v5}, Lcoil3/UriKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 752
    .line 753
    .line 754
    move-result-object v2

    .line 755
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 756
    .line 757
    const/4 v9, 0x1

    .line 758
    if-gt v4, v9, :cond_27

    .line 759
    .line 760
    iget-boolean v1, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 761
    .line 762
    if-eqz v1, :cond_26

    .line 763
    .line 764
    goto :goto_18

    .line 765
    :cond_26
    move v5, v0

    .line 766
    goto :goto_19

    .line 767
    :cond_27
    :goto_18
    move v5, v9

    .line 768
    :goto_19
    invoke-direct {v3, v2, v5}, Lcoil3/decode/DecodeResult;-><init>(Lcoil3/Image;Z)V

    .line 769
    .line 770
    .line 771
    return-object v3

    .line 772
    :cond_28
    const-string v0, "BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the image source (e.g. network, disk, or memory) as it\'s not encoded as a valid image format."

    .line 773
    .line 774
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    const/16 v16, 0x0

    .line 778
    .line 779
    return-object v16

    .line 780
    :cond_29
    throw v3

    .line 781
    :catchall_0
    move-exception v0

    .line 782
    move-object v1, v0

    .line 783
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 784
    :catchall_1
    move-exception v0

    .line 785
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 786
    .line 787
    .line 788
    throw v0

    .line 789
    :cond_2a
    throw v12

    .line 790
    :cond_2b
    throw v6

    .line 791
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lcoil3/decode/ImageSource;Lcoil3/request/Options;Lkotlinx/coroutines/sync/SemaphoreImpl;Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/decode/BitmapFactoryDecoder;->source:Lcoil3/decode/ImageSource;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/decode/BitmapFactoryDecoder;->options:Lcoil3/request/Options;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/decode/BitmapFactoryDecoder;->parallelismLock:Lkotlinx/coroutines/sync/SemaphoreImpl;

    .line 9
    .line 10
    iput-object p4, p0, Lcoil3/decode/BitmapFactoryDecoder;->exifOrientationStrategy:Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final decode(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lcoil3/decode/BitmapFactoryDecoder$decode$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcoil3/decode/BitmapFactoryDecoder$decode$1;-><init>(Lcoil3/decode/BitmapFactoryDecoder;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v4, :cond_2

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lkotlinx/coroutines/sync/Semaphore;

    .line 43
    .line 44
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_5

    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v2

    .line 56
    :cond_2
    iget-object v1, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Lkotlinx/coroutines/sync/Semaphore;

    .line 59
    .line 60
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    move-object p1, v1

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcoil3/decode/BitmapFactoryDecoder;->parallelismLock:Lkotlinx/coroutines/sync/SemaphoreImpl;

    .line 69
    .line 70
    iput-object p1, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->L$0:Ljava/lang/Object;

    .line 71
    .line 72
    iput v4, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->label:I

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->acquire(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-ne v1, v5, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    :goto_1
    :try_start_1
    new-instance v1, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    const/16 v4, 0x17

    .line 84
    .line 85
    invoke-direct {v1, p0, v4}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 86
    .line 87
    .line 88
    iput-object p1, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    iput v3, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->label:I

    .line 91
    .line 92
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 93
    .line 94
    new-instance v3, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 95
    .line 96
    invoke-direct {v3, v1, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v3, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    if-ne p0, v5, :cond_5

    .line 104
    .line 105
    :goto_2
    return-object v5

    .line 106
    :cond_5
    move-object v6, p1

    .line 107
    move-object p1, p0

    .line 108
    move-object p0, v6

    .line 109
    :goto_3
    :try_start_2
    check-cast p1, Lcoil3/decode/DecodeResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .line 111
    check-cast p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;

    .line 112
    .line 113
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->release()V

    .line 114
    .line 115
    .line 116
    return-object p1

    .line 117
    :goto_4
    move-object v6, p1

    .line 118
    move-object p1, p0

    .line 119
    move-object p0, v6

    .line 120
    goto :goto_5

    .line 121
    :catchall_1
    move-exception p0

    .line 122
    goto :goto_4

    .line 123
    :goto_5
    check-cast p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;

    .line 124
    .line 125
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->release()V

    .line 126
    .line 127
    .line 128
    throw p1
.end method

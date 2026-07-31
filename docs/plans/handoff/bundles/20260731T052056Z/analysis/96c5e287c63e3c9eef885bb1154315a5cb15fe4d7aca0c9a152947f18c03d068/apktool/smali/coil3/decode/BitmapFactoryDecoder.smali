.class public final Lcoil3/decode/BitmapFactoryDecoder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcoil3/decode/Decoder;


# instance fields
.field public final exifOrientationStrategy:Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

.field public final options:Lcoil3/request/Options;

.field public final parallelismLock:Lkotlinx/coroutines/sync/SemaphoreImpl;

.field public final source:Lcoil3/decode/ImageSource;


# direct methods
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

.method public static final decode$lambda$0$0(Lcoil3/decode/BitmapFactoryDecoder;)Lcoil3/decode/DecodeResult;
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
    new-instance v3, Lokhttp3/Cache$CacheResponseBody$1;

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
    invoke-direct {v3, v4}, Lokhttp3/Cache$CacheResponseBody$1;-><init>(Lokio/Source;)V

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
    invoke-virtual {v4}, Lokio/RealBufferedSource;->peek()Lokio/RealBufferedSource;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    new-instance v7, Lokio/Buffer$inputStream$1;

    .line 34
    .line 35
    const/4 v8, 0x2

    .line 36
    invoke-direct {v7, v6, v8}, Lokio/Buffer$inputStream$1;-><init>(Lokio/BufferedSource;I)V

    .line 37
    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-static {v7, v6, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 41
    .line 42
    .line 43
    iget-object v7, v3, Lokhttp3/Cache$CacheResponseBody$1;->this$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v7, Ljava/lang/Exception;

    .line 46
    .line 47
    if-nez v7, :cond_2b

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 51
    .line 52
    sget-object v9, Lcoil3/decode/ExifUtils;->paint:Landroid/graphics/Paint;

    .line 53
    .line 54
    iget-object v9, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v0, v0, Lcoil3/decode/BitmapFactoryDecoder;->exifOrientationStrategy:Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const-string v0, "image/jpeg"

    .line 62
    .line 63
    if-eqz v9, :cond_1

    .line 64
    .line 65
    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    if-nez v10, :cond_0

    .line 70
    .line 71
    const-string v10, "image/webp"

    .line 72
    .line 73
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-nez v10, :cond_0

    .line 78
    .line 79
    const-string v10, "image/heic"

    .line 80
    .line 81
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    if-nez v10, :cond_0

    .line 86
    .line 87
    const-string v10, "image/heif"

    .line 88
    .line 89
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-eqz v9, :cond_1

    .line 94
    .line 95
    :cond_0
    move v9, v5

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    move v9, v7

    .line 98
    :goto_0
    const/16 v10, 0x10e

    .line 99
    .line 100
    const/16 v11, 0x5a

    .line 101
    .line 102
    if-eqz v9, :cond_5

    .line 103
    .line 104
    new-instance v9, Landroidx/exifinterface/media/ExifInterface;

    .line 105
    .line 106
    new-instance v12, Lcoil3/decode/ExifInterfaceInputStream;

    .line 107
    .line 108
    invoke-virtual {v4}, Lokio/RealBufferedSource;->peek()Lokio/RealBufferedSource;

    .line 109
    .line 110
    .line 111
    move-result-object v13

    .line 112
    new-instance v14, Lokio/Buffer$inputStream$1;

    .line 113
    .line 114
    invoke-direct {v14, v13, v8}, Lokio/Buffer$inputStream$1;-><init>(Lokio/BufferedSource;I)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v12, v14}, Lcoil3/decode/ExifInterfaceInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    .line 119
    .line 120
    invoke-direct {v9, v12}, Landroidx/exifinterface/media/ExifInterface;-><init>(Lcoil3/decode/ExifInterfaceInputStream;)V

    .line 121
    .line 122
    .line 123
    new-instance v12, Lcoil3/decode/ExifData;

    .line 124
    .line 125
    const-string v13, "Orientation"

    .line 126
    .line 127
    invoke-virtual {v9, v13}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    if-nez v14, :cond_2

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    :try_start_0
    iget-object v15, v9, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 135
    .line 136
    invoke-virtual {v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 137
    .line 138
    .line 139
    move-result v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_2

    .line 141
    :catch_0
    :goto_1
    move v14, v5

    .line 142
    :goto_2
    if-eq v14, v8, :cond_3

    .line 143
    .line 144
    const/4 v15, 0x7

    .line 145
    if-eq v14, v15, :cond_3

    .line 146
    .line 147
    const/4 v15, 0x4

    .line 148
    if-eq v14, v15, :cond_3

    .line 149
    .line 150
    const/4 v15, 0x5

    .line 151
    if-eq v14, v15, :cond_3

    .line 152
    .line 153
    move v14, v7

    .line 154
    goto :goto_3

    .line 155
    :cond_3
    move v14, v5

    .line 156
    :goto_3
    invoke-virtual {v9, v13}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 157
    .line 158
    .line 159
    move-result-object v13

    .line 160
    if-nez v13, :cond_4

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_4
    :try_start_1
    iget-object v9, v9, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 164
    .line 165
    invoke-virtual {v13, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    .line 166
    .line 167
    .line 168
    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    goto :goto_5

    .line 170
    :catch_1
    :goto_4
    move v9, v5

    .line 171
    :goto_5
    packed-switch v9, :pswitch_data_0

    .line 172
    .line 173
    .line 174
    move v9, v7

    .line 175
    goto :goto_6

    .line 176
    :pswitch_0
    move v9, v11

    .line 177
    goto :goto_6

    .line 178
    :pswitch_1
    move v9, v10

    .line 179
    goto :goto_6

    .line 180
    :pswitch_2
    const/16 v9, 0xb4

    .line 181
    .line 182
    :goto_6
    invoke-direct {v12, v9, v14}, Lcoil3/decode/ExifData;-><init>(IZ)V

    .line 183
    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_5
    sget-object v12, Lcoil3/decode/ExifData;->NONE:Lcoil3/decode/ExifData;

    .line 187
    .line 188
    :goto_7
    iget v9, v12, Lcoil3/decode/ExifData;->rotationDegrees:I

    .line 189
    .line 190
    iget-boolean v12, v12, Lcoil3/decode/ExifData;->isFlipped:Z

    .line 191
    .line 192
    iget-object v13, v3, Lokhttp3/Cache$CacheResponseBody$1;->this$0:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v13, Ljava/lang/Exception;

    .line 195
    .line 196
    if-nez v13, :cond_2a

    .line 197
    .line 198
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 199
    .line 200
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 201
    .line 202
    const/16 v14, 0x1a

    .line 203
    .line 204
    if-lt v13, v14, :cond_6

    .line 205
    .line 206
    invoke-static {v2}, Lcoil3/request/ImageRequests_androidKt;->getColorSpace(Lcoil3/request/Options;)Landroid/graphics/ColorSpace;

    .line 207
    .line 208
    .line 209
    move-result-object v15

    .line 210
    if-eqz v15, :cond_6

    .line 211
    .line 212
    sget-object v15, Lcoil3/request/ImageRequests_androidKt;->colorSpaceKey:Lcoil3/Extras$Key;

    .line 213
    .line 214
    invoke-static {v2, v15}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    invoke-static {v15}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace;

    .line 219
    .line 220
    .line 221
    move-result-object v15

    .line 222
    iput-object v15, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 223
    .line 224
    :cond_6
    sget-object v15, Lcoil3/request/ImageRequests_androidKt;->premultipliedAlphaKey:Lcoil3/Extras$Key;

    .line 225
    .line 226
    invoke-static {v2, v15}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v15

    .line 230
    check-cast v15, Ljava/lang/Boolean;

    .line 231
    .line 232
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 233
    .line 234
    .line 235
    move-result v15

    .line 236
    move-object/from16 v16, v6

    .line 237
    .line 238
    iget-object v6, v2, Lcoil3/request/Options;->context:Landroid/content/Context;

    .line 239
    .line 240
    iput-boolean v15, v1, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 241
    .line 242
    sget-object v15, Lcoil3/request/ImageRequests_androidKt;->bitmapConfigKey:Lcoil3/Extras$Key;

    .line 243
    .line 244
    invoke-static {v2, v15}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v15

    .line 248
    check-cast v15, Landroid/graphics/Bitmap$Config;

    .line 249
    .line 250
    if-nez v12, :cond_7

    .line 251
    .line 252
    if-lez v9, :cond_9

    .line 253
    .line 254
    :cond_7
    if-eqz v15, :cond_8

    .line 255
    .line 256
    invoke-static {v15}, Lcoil3/util/BitmapsKt;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    .line 257
    .line 258
    .line 259
    move-result v17

    .line 260
    if-eqz v17, :cond_9

    .line 261
    .line 262
    :cond_8
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 263
    .line 264
    :cond_9
    sget-object v7, Lcoil3/request/ImageRequests_androidKt;->allowRgb565Key:Lcoil3/Extras$Key;

    .line 265
    .line 266
    invoke-static {v2, v7}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    check-cast v7, Ljava/lang/Boolean;

    .line 271
    .line 272
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    if-eqz v7, :cond_a

    .line 277
    .line 278
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 279
    .line 280
    if-ne v15, v7, :cond_a

    .line 281
    .line 282
    iget-object v7, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 283
    .line 284
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_a

    .line 289
    .line 290
    sget-object v15, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 291
    .line 292
    :cond_a
    if-lt v13, v14, :cond_b

    .line 293
    .line 294
    iget-object v0, v1, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 295
    .line 296
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda3;->m()Landroid/graphics/Bitmap$Config;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    if-ne v0, v7, :cond_b

    .line 301
    .line 302
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda3;->m$1()Landroid/graphics/Bitmap$Config;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    if-eq v15, v0, :cond_b

    .line 307
    .line 308
    move-object v15, v7

    .line 309
    :cond_b
    iput-object v15, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 310
    .line 311
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 312
    .line 313
    if-lez v0, :cond_1c

    .line 314
    .line 315
    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 316
    .line 317
    if-gtz v7, :cond_c

    .line 318
    .line 319
    move v15, v5

    .line 320
    move-object/from16 v22, v6

    .line 321
    .line 322
    move/from16 v21, v9

    .line 323
    .line 324
    move/from16 v20, v12

    .line 325
    .line 326
    goto/16 :goto_f

    .line 327
    .line 328
    :cond_c
    if-eq v9, v11, :cond_e

    .line 329
    .line 330
    if-ne v9, v10, :cond_d

    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_d
    move v13, v0

    .line 334
    goto :goto_9

    .line 335
    :cond_e
    :goto_8
    move v13, v7

    .line 336
    :goto_9
    if-eq v9, v11, :cond_10

    .line 337
    .line 338
    if-ne v9, v10, :cond_f

    .line 339
    .line 340
    goto :goto_a

    .line 341
    :cond_f
    move v0, v7

    .line 342
    :cond_10
    :goto_a
    iget-object v7, v2, Lcoil3/request/Options;->size:Lcoil3/size/Size;

    .line 343
    .line 344
    iget-object v14, v2, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 345
    .line 346
    sget-object v15, Lcoil3/request/ImageRequestsKt;->maxBitmapSizeKey:Lcoil3/Extras$Key;

    .line 347
    .line 348
    invoke-static {v2, v15}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v18

    .line 352
    move-object/from16 v10, v18

    .line 353
    .line 354
    check-cast v10, Lcoil3/size/Size;

    .line 355
    .line 356
    invoke-static {v13, v0, v7, v14, v10}, Lkotlin/UnsignedKt;->computeDstSize-sEdh43o(IILcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;)J

    .line 357
    .line 358
    .line 359
    move-result-wide v18

    .line 360
    const/16 v7, 0x20

    .line 361
    .line 362
    move/from16 v20, v12

    .line 363
    .line 364
    shr-long v11, v18, v7

    .line 365
    .line 366
    long-to-int v7, v11

    .line 367
    const-wide v11, 0xffffffffL

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    and-long v11, v18, v11

    .line 373
    .line 374
    long-to-int v11, v11

    .line 375
    div-int v12, v13, v7

    .line 376
    .line 377
    invoke-static {v12}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 378
    .line 379
    .line 380
    move-result v12

    .line 381
    div-int v18, v0, v11

    .line 382
    .line 383
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 384
    .line 385
    .line 386
    move-result v10

    .line 387
    sget-object v18, Lcoil3/decode/DecodeUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 388
    .line 389
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 390
    .line 391
    .line 392
    move-result v21

    .line 393
    move-object/from16 v22, v6

    .line 394
    .line 395
    aget v6, v18, v21

    .line 396
    .line 397
    if-eq v6, v5, :cond_12

    .line 398
    .line 399
    if-ne v6, v8, :cond_11

    .line 400
    .line 401
    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    goto :goto_b

    .line 406
    :cond_11
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 407
    .line 408
    .line 409
    return-object v16

    .line 410
    :cond_12
    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    .line 411
    .line 412
    .line 413
    move-result v6

    .line 414
    :goto_b
    if-ge v6, v5, :cond_13

    .line 415
    .line 416
    move v6, v5

    .line 417
    :cond_13
    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 418
    .line 419
    int-to-double v12, v13

    .line 420
    move/from16 v21, v9

    .line 421
    .line 422
    int-to-double v8, v6

    .line 423
    div-double/2addr v12, v8

    .line 424
    int-to-double v5, v0

    .line 425
    div-double/2addr v5, v8

    .line 426
    int-to-double v7, v7

    .line 427
    int-to-double v10, v11

    .line 428
    invoke-static {v2, v15}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v9

    .line 432
    check-cast v9, Lcoil3/size/Size;

    .line 433
    .line 434
    div-double/2addr v7, v12

    .line 435
    div-double/2addr v10, v5

    .line 436
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 437
    .line 438
    .line 439
    move-result v14

    .line 440
    aget v14, v18, v14

    .line 441
    .line 442
    const/4 v15, 0x1

    .line 443
    if-eq v14, v15, :cond_15

    .line 444
    .line 445
    const/4 v0, 0x2

    .line 446
    if-ne v14, v0, :cond_14

    .line 447
    .line 448
    move-wide v14, v10

    .line 449
    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->min(DD)D

    .line 450
    .line 451
    .line 452
    move-result-wide v7

    .line 453
    goto :goto_c

    .line 454
    :cond_14
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 455
    .line 456
    .line 457
    return-object v16

    .line 458
    :cond_15
    move-wide v14, v10

    .line 459
    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(DD)D

    .line 460
    .line 461
    .line 462
    move-result-wide v7

    .line 463
    :goto_c
    iget-object v0, v9, Lcoil3/size/Size;->width:Lcoil3/size/Dimension;

    .line 464
    .line 465
    instance-of v11, v0, Lcoil3/size/Dimension$Pixels;

    .line 466
    .line 467
    if-eqz v11, :cond_16

    .line 468
    .line 469
    check-cast v0, Lcoil3/size/Dimension$Pixels;

    .line 470
    .line 471
    iget v0, v0, Lcoil3/size/Dimension$Pixels;->px:I

    .line 472
    .line 473
    int-to-double v14, v0

    .line 474
    div-double/2addr v14, v12

    .line 475
    cmpl-double v0, v7, v14

    .line 476
    .line 477
    if-lez v0, :cond_16

    .line 478
    .line 479
    move-wide v7, v14

    .line 480
    :cond_16
    iget-object v0, v9, Lcoil3/size/Size;->height:Lcoil3/size/Dimension;

    .line 481
    .line 482
    instance-of v9, v0, Lcoil3/size/Dimension$Pixels;

    .line 483
    .line 484
    if-eqz v9, :cond_17

    .line 485
    .line 486
    check-cast v0, Lcoil3/size/Dimension$Pixels;

    .line 487
    .line 488
    iget v0, v0, Lcoil3/size/Dimension$Pixels;->px:I

    .line 489
    .line 490
    int-to-double v11, v0

    .line 491
    div-double/2addr v11, v5

    .line 492
    cmpl-double v0, v7, v11

    .line 493
    .line 494
    if-lez v0, :cond_17

    .line 495
    .line 496
    move-wide v7, v11

    .line 497
    :cond_17
    iget-object v0, v2, Lcoil3/request/Options;->precision:Lcoil3/size/Precision;

    .line 498
    .line 499
    sget-object v2, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    .line 500
    .line 501
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 502
    .line 503
    if-ne v0, v2, :cond_18

    .line 504
    .line 505
    cmpl-double v0, v7, v5

    .line 506
    .line 507
    if-lez v0, :cond_18

    .line 508
    .line 509
    move-wide v7, v5

    .line 510
    :cond_18
    cmpg-double v0, v7, v5

    .line 511
    .line 512
    if-nez v0, :cond_19

    .line 513
    .line 514
    const/4 v0, 0x1

    .line 515
    goto :goto_d

    .line 516
    :cond_19
    const/4 v0, 0x0

    .line 517
    :goto_d
    xor-int/lit8 v2, v0, 0x1

    .line 518
    .line 519
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 520
    .line 521
    if-nez v0, :cond_1a

    .line 522
    .line 523
    cmpl-double v0, v7, v5

    .line 524
    .line 525
    const v2, 0x7fffffff

    .line 526
    .line 527
    .line 528
    const-wide v5, 0x41dfffffffc00000L    # 2.147483647E9

    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    if-lez v0, :cond_1b

    .line 534
    .line 535
    div-double/2addr v5, v7

    .line 536
    invoke-static {v5, v6}, Lkotlin/UnsignedKt;->roundToInt(D)I

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 541
    .line 542
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 543
    .line 544
    :cond_1a
    :goto_e
    const/4 v0, 0x0

    .line 545
    goto :goto_10

    .line 546
    :cond_1b
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 547
    .line 548
    mul-double/2addr v5, v7

    .line 549
    invoke-static {v5, v6}, Lkotlin/UnsignedKt;->roundToInt(D)I

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 554
    .line 555
    goto :goto_e

    .line 556
    :cond_1c
    move-object/from16 v22, v6

    .line 557
    .line 558
    move/from16 v21, v9

    .line 559
    .line 560
    move/from16 v20, v12

    .line 561
    .line 562
    move v15, v5

    .line 563
    :goto_f
    iput v15, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 564
    .line 565
    const/4 v0, 0x0

    .line 566
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 567
    .line 568
    :goto_10
    :try_start_2
    new-instance v2, Lokio/Buffer$inputStream$1;

    .line 569
    .line 570
    const/4 v10, 0x2

    .line 571
    invoke-direct {v2, v4, v10}, Lokio/Buffer$inputStream$1;-><init>(Lokio/BufferedSource;I)V

    .line 572
    .line 573
    .line 574
    move-object/from16 v5, v16

    .line 575
    .line 576
    invoke-static {v2, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 577
    .line 578
    .line 579
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 580
    invoke-virtual {v4}, Lokio/RealBufferedSource;->close()V

    .line 581
    .line 582
    .line 583
    iget-object v3, v3, Lokhttp3/Cache$CacheResponseBody$1;->this$0:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v3, Ljava/lang/Exception;

    .line 586
    .line 587
    if-nez v3, :cond_29

    .line 588
    .line 589
    if-eqz v2, :cond_28

    .line 590
    .line 591
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 592
    .line 593
    .line 594
    move-result-object v3

    .line 595
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 600
    .line 601
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 602
    .line 603
    .line 604
    if-nez v20, :cond_1d

    .line 605
    .line 606
    if-lez v21, :cond_25

    .line 607
    .line 608
    :cond_1d
    new-instance v3, Landroid/graphics/Matrix;

    .line 609
    .line 610
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 614
    .line 615
    .line 616
    move-result v4

    .line 617
    int-to-float v4, v4

    .line 618
    const/high16 v5, 0x40000000    # 2.0f

    .line 619
    .line 620
    div-float/2addr v4, v5

    .line 621
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 622
    .line 623
    .line 624
    move-result v6

    .line 625
    int-to-float v6, v6

    .line 626
    div-float/2addr v6, v5

    .line 627
    if-eqz v20, :cond_1e

    .line 628
    .line 629
    const/high16 v5, -0x40800000    # -1.0f

    .line 630
    .line 631
    const/high16 v7, 0x3f800000    # 1.0f

    .line 632
    .line 633
    invoke-virtual {v3, v5, v7, v4, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 634
    .line 635
    .line 636
    :cond_1e
    if-lez v21, :cond_1f

    .line 637
    .line 638
    move/from16 v5, v21

    .line 639
    .line 640
    int-to-float v7, v5

    .line 641
    invoke-virtual {v3, v7, v4, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 642
    .line 643
    .line 644
    goto :goto_11

    .line 645
    :cond_1f
    move/from16 v5, v21

    .line 646
    .line 647
    :goto_11
    new-instance v4, Landroid/graphics/RectF;

    .line 648
    .line 649
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 650
    .line 651
    .line 652
    move-result v6

    .line 653
    int-to-float v6, v6

    .line 654
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 655
    .line 656
    .line 657
    move-result v7

    .line 658
    int-to-float v7, v7

    .line 659
    const/4 v8, 0x0

    .line 660
    invoke-direct {v4, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 664
    .line 665
    .line 666
    iget v6, v4, Landroid/graphics/RectF;->left:F

    .line 667
    .line 668
    cmpg-float v7, v6, v8

    .line 669
    .line 670
    if-nez v7, :cond_20

    .line 671
    .line 672
    iget v7, v4, Landroid/graphics/RectF;->top:F

    .line 673
    .line 674
    cmpg-float v7, v7, v8

    .line 675
    .line 676
    if-nez v7, :cond_20

    .line 677
    .line 678
    :goto_12
    const/16 v10, 0x5a

    .line 679
    .line 680
    goto :goto_13

    .line 681
    :cond_20
    neg-float v6, v6

    .line 682
    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 683
    .line 684
    neg-float v4, v4

    .line 685
    invoke-virtual {v3, v6, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 686
    .line 687
    .line 688
    goto :goto_12

    .line 689
    :goto_13
    if-eq v5, v10, :cond_23

    .line 690
    .line 691
    const/16 v4, 0x10e

    .line 692
    .line 693
    if-ne v5, v4, :cond_21

    .line 694
    .line 695
    goto :goto_14

    .line 696
    :cond_21
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 697
    .line 698
    .line 699
    move-result v4

    .line 700
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 701
    .line 702
    .line 703
    move-result v5

    .line 704
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 705
    .line 706
    .line 707
    move-result-object v6

    .line 708
    if-nez v6, :cond_22

    .line 709
    .line 710
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 711
    .line 712
    :cond_22
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    goto :goto_15

    .line 717
    :cond_23
    :goto_14
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 718
    .line 719
    .line 720
    move-result v4

    .line 721
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 722
    .line 723
    .line 724
    move-result v5

    .line 725
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 726
    .line 727
    .line 728
    move-result-object v6

    .line 729
    if-nez v6, :cond_24

    .line 730
    .line 731
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 732
    .line 733
    :cond_24
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 734
    .line 735
    .line 736
    move-result-object v4

    .line 737
    :goto_15
    new-instance v5, Landroid/graphics/Canvas;

    .line 738
    .line 739
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 740
    .line 741
    .line 742
    sget-object v6, Lcoil3/decode/ExifUtils;->paint:Landroid/graphics/Paint;

    .line 743
    .line 744
    invoke-virtual {v5, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 748
    .line 749
    .line 750
    move-object v2, v4

    .line 751
    :cond_25
    new-instance v3, Lcoil3/decode/DecodeResult;

    .line 752
    .line 753
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 754
    .line 755
    .line 756
    move-result-object v4

    .line 757
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 758
    .line 759
    invoke-direct {v5, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 760
    .line 761
    .line 762
    invoke-static {v5}, Lcoil3/UriKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 767
    .line 768
    const/4 v15, 0x1

    .line 769
    if-gt v4, v15, :cond_27

    .line 770
    .line 771
    iget-boolean v1, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 772
    .line 773
    if-eqz v1, :cond_26

    .line 774
    .line 775
    goto :goto_16

    .line 776
    :cond_26
    move v5, v0

    .line 777
    goto :goto_17

    .line 778
    :cond_27
    :goto_16
    move v5, v15

    .line 779
    :goto_17
    invoke-direct {v3, v2, v5}, Lcoil3/decode/DecodeResult;-><init>(Lcoil3/Image;Z)V

    .line 780
    .line 781
    .line 782
    return-object v3

    .line 783
    :cond_28
    const-string v0, "BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the image source (e.g. network, disk, or memory) as it\'s not encoded as a valid image format."

    .line 784
    .line 785
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    const/16 v16, 0x0

    .line 789
    .line 790
    return-object v16

    .line 791
    :cond_29
    throw v3

    .line 792
    :catchall_0
    move-exception v0

    .line 793
    move-object v1, v0

    .line 794
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 795
    :catchall_1
    move-exception v0

    .line 796
    invoke-static {v4, v1}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 797
    .line 798
    .line 799
    throw v0

    .line 800
    :cond_2a
    throw v13

    .line 801
    :cond_2b
    throw v7

    .line 802
    nop

    .line 803
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


# virtual methods
.method public final decode(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lcoil3/decode/BitmapFactoryDecoder$decode$1;-><init>(Lcoil3/decode/BitmapFactoryDecoder;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v2, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v5, :cond_2

    .line 39
    .line 40
    if-ne v2, v4, :cond_1

    .line 41
    .line 42
    iget-object p0, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->L$0:Lkotlinx/coroutines/sync/SemaphoreImpl;

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
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v3

    .line 56
    :cond_2
    iget-object v2, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->L$0:Lkotlinx/coroutines/sync/SemaphoreImpl;

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object p1, v2

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcoil3/decode/BitmapFactoryDecoder;->parallelismLock:Lkotlinx/coroutines/sync/SemaphoreImpl;

    .line 67
    .line 68
    iput-object p1, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->L$0:Lkotlinx/coroutines/sync/SemaphoreImpl;

    .line 69
    .line 70
    iput v5, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->label:I

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->acquire(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-ne v2, v1, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    :goto_1
    :try_start_1
    new-instance v2, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 80
    .line 81
    const/16 v5, 0xe

    .line 82
    .line 83
    invoke-direct {v2, v5, p0}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iput-object p1, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->L$0:Lkotlinx/coroutines/sync/SemaphoreImpl;

    .line 87
    .line 88
    iput v4, v0, Lcoil3/decode/BitmapFactoryDecoder$decode$1;->label:I

    .line 89
    .line 90
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 91
    .line 92
    new-instance v4, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 93
    .line 94
    const/16 v5, 0xa

    .line 95
    .line 96
    invoke-direct {v4, v5, v2, v3}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v4, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    if-ne p0, v1, :cond_5

    .line 104
    .line 105
    :goto_2
    return-object v1

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
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->release()V

    .line 112
    .line 113
    .line 114
    return-object p1

    .line 115
    :goto_4
    move-object v6, p1

    .line 116
    move-object p1, p0

    .line 117
    move-object p0, v6

    .line 118
    goto :goto_5

    .line 119
    :catchall_1
    move-exception p0

    .line 120
    goto :goto_4

    .line 121
    :goto_5
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->release()V

    .line 122
    .line 123
    .line 124
    throw p1
.end method

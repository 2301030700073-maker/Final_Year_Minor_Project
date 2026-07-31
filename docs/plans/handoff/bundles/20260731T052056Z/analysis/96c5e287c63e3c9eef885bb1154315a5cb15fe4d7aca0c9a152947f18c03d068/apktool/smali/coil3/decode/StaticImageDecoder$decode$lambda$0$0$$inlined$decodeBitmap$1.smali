.class public final Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic $isSampled$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcoil3/decode/Decoder;


# direct methods
.method public synthetic constructor <init>(Lcoil3/decode/Decoder;Lkotlin/jvm/internal/Ref$BooleanRef;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;->this$0:Lcoil3/decode/Decoder;

    .line 4
    .line 5
    iput-object p2, p0, Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;->$isSampled$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;->$r8$classId:I

    .line 6
    .line 7
    iget-object v7, v0, Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;->$isSampled$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 8
    .line 9
    const-wide v8, 0xffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/16 v10, 0x20

    .line 15
    .line 16
    const/4 v11, 0x1

    .line 17
    iget-object v0, v0, Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;->this$0:Lcoil3/decode/Decoder;

    .line 18
    .line 19
    packed-switch v2, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v12

    .line 30
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v13

    .line 34
    move-object v2, v0

    .line 35
    check-cast v2, Lcoil3/gif/AnimatedImageDecoder;

    .line 36
    .line 37
    iget-object v2, v2, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 38
    .line 39
    iget-object v14, v2, Lcoil3/request/Options;->size:Lcoil3/size/Size;

    .line 40
    .line 41
    iget-object v15, v2, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 42
    .line 43
    sget-object v3, Lcoil3/request/ImageRequestsKt;->maxBitmapSizeKey:Lcoil3/Extras$Key;

    .line 44
    .line 45
    invoke-static {v2, v3}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcoil3/size/Size;

    .line 50
    .line 51
    invoke-static {v12, v13, v14, v15, v2}, Lkotlin/UnsignedKt;->computeDstSize-sEdh43o(IILcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v14

    .line 55
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 56
    .line 57
    shr-long v4, v14, v10

    .line 58
    .line 59
    long-to-int v4, v4

    .line 60
    and-long v5, v14, v8

    .line 61
    .line 62
    long-to-int v15, v5

    .line 63
    if-lez v12, :cond_3

    .line 64
    .line 65
    if-lez v13, :cond_3

    .line 66
    .line 67
    if-ne v12, v4, :cond_0

    .line 68
    .line 69
    if-eq v13, v15, :cond_3

    .line 70
    .line 71
    :cond_0
    move-object v5, v0

    .line 72
    check-cast v5, Lcoil3/gif/AnimatedImageDecoder;

    .line 73
    .line 74
    iget-object v5, v5, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 75
    .line 76
    iget-object v6, v5, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 77
    .line 78
    invoke-static {v5, v3}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    move-object/from16 v17, v3

    .line 83
    .line 84
    check-cast v17, Lcoil3/size/Size;

    .line 85
    .line 86
    move v14, v4

    .line 87
    move-object/from16 v16, v6

    .line 88
    .line 89
    invoke-static/range {v12 .. v17}, Lkotlin/UnsignedKt;->computeSizeMultiplier(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    cmpg-double v5, v3, v18

    .line 94
    .line 95
    if-gez v5, :cond_1

    .line 96
    .line 97
    move v2, v11

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v2, 0x0

    .line 100
    :goto_0
    iput-boolean v2, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 101
    .line 102
    if-nez v2, :cond_2

    .line 103
    .line 104
    move-object v2, v0

    .line 105
    check-cast v2, Lcoil3/gif/AnimatedImageDecoder;

    .line 106
    .line 107
    iget-object v2, v2, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 108
    .line 109
    iget-object v2, v2, Lcoil3/request/Options;->precision:Lcoil3/size/Precision;

    .line 110
    .line 111
    sget-object v5, Lcoil3/size/Precision;->EXACT:Lcoil3/size/Precision;

    .line 112
    .line 113
    if-ne v2, v5, :cond_3

    .line 114
    .line 115
    :cond_2
    int-to-double v5, v12

    .line 116
    mul-double/2addr v5, v3

    .line 117
    invoke-static {v5, v6}, Lkotlin/UnsignedKt;->roundToInt(D)I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    int-to-double v5, v13

    .line 122
    mul-double/2addr v3, v5

    .line 123
    invoke-static {v3, v4}, Lkotlin/UnsignedKt;->roundToInt(D)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-virtual {v1, v2, v3}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 128
    .line 129
    .line 130
    :cond_3
    check-cast v0, Lcoil3/gif/AnimatedImageDecoder;

    .line 131
    .line 132
    iget-object v0, v0, Lcoil3/gif/AnimatedImageDecoder;->options:Lcoil3/request/Options;

    .line 133
    .line 134
    invoke-static {v0}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-static {v2}, Lcoil3/util/BitmapsKt;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_4

    .line 143
    .line 144
    const/4 v3, 0x3

    .line 145
    goto :goto_1

    .line 146
    :cond_4
    move v3, v11

    .line 147
    :goto_1
    invoke-virtual {v1, v3}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 148
    .line 149
    .line 150
    sget-object v2, Lcoil3/request/ImageRequests_androidKt;->allowRgb565Key:Lcoil3/Extras$Key;

    .line 151
    .line 152
    invoke-static {v0, v2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Ljava/lang/Boolean;

    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    xor-int/2addr v2, v11

    .line 163
    invoke-virtual {v1, v2}, Landroid/graphics/ImageDecoder;->setMemorySizePolicy(I)V

    .line 164
    .line 165
    .line 166
    sget-object v2, Lcoil3/request/ImageRequests_androidKt;->colorSpaceKey:Lcoil3/Extras$Key;

    .line 167
    .line 168
    invoke-static {v0, v2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {v3}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    if-eqz v3, :cond_5

    .line 177
    .line 178
    invoke-static {v0, v2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-static {v2}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    .line 187
    .line 188
    .line 189
    :cond_5
    sget-object v2, Lcoil3/gif/ImageRequestsKt;->animatedTransformationKey:Lcoil3/Extras$Key;

    .line 190
    .line 191
    invoke-static {v0, v2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-nez v0, :cond_6

    .line 196
    .line 197
    const/4 v0, 0x0

    .line 198
    invoke-virtual {v1, v0}, Landroid/graphics/ImageDecoder;->setPostProcessor(Landroid/graphics/PostProcessor;)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_6
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 203
    .line 204
    .line 205
    :goto_2
    return-void

    .line 206
    :pswitch_0
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 207
    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 213
    .line 214
    .line 215
    move-result v12

    .line 216
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 217
    .line 218
    .line 219
    move-result v13

    .line 220
    move-object v3, v0

    .line 221
    check-cast v3, Lcoil3/decode/StaticImageDecoder;

    .line 222
    .line 223
    iget-object v3, v3, Lcoil3/decode/StaticImageDecoder;->options:Lcoil3/request/Options;

    .line 224
    .line 225
    iget-object v4, v3, Lcoil3/request/Options;->size:Lcoil3/size/Size;

    .line 226
    .line 227
    iget-object v5, v3, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 228
    .line 229
    sget-object v6, Lcoil3/request/ImageRequestsKt;->maxBitmapSizeKey:Lcoil3/Extras$Key;

    .line 230
    .line 231
    invoke-static {v3, v6}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    check-cast v3, Lcoil3/size/Size;

    .line 236
    .line 237
    invoke-static {v12, v13, v4, v5, v3}, Lkotlin/UnsignedKt;->computeDstSize-sEdh43o(IILcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;)J

    .line 238
    .line 239
    .line 240
    move-result-wide v3

    .line 241
    shr-long v14, v3, v10

    .line 242
    .line 243
    long-to-int v14, v14

    .line 244
    and-long/2addr v3, v8

    .line 245
    long-to-int v15, v3

    .line 246
    if-lez v12, :cond_a

    .line 247
    .line 248
    if-lez v13, :cond_a

    .line 249
    .line 250
    if-ne v12, v14, :cond_7

    .line 251
    .line 252
    if-eq v13, v15, :cond_a

    .line 253
    .line 254
    :cond_7
    move-object v3, v0

    .line 255
    check-cast v3, Lcoil3/decode/StaticImageDecoder;

    .line 256
    .line 257
    iget-object v3, v3, Lcoil3/decode/StaticImageDecoder;->options:Lcoil3/request/Options;

    .line 258
    .line 259
    iget-object v4, v3, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 260
    .line 261
    invoke-static {v3, v6}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    move-object/from16 v17, v3

    .line 266
    .line 267
    check-cast v17, Lcoil3/size/Size;

    .line 268
    .line 269
    move-object/from16 v16, v4

    .line 270
    .line 271
    invoke-static/range {v12 .. v17}, Lkotlin/UnsignedKt;->computeSizeMultiplier(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D

    .line 272
    .line 273
    .line 274
    move-result-wide v3

    .line 275
    cmpg-double v5, v3, v18

    .line 276
    .line 277
    if-gez v5, :cond_8

    .line 278
    .line 279
    move v2, v11

    .line 280
    goto :goto_3

    .line 281
    :cond_8
    const/4 v2, 0x0

    .line 282
    :goto_3
    iput-boolean v2, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 283
    .line 284
    if-nez v2, :cond_9

    .line 285
    .line 286
    move-object v2, v0

    .line 287
    check-cast v2, Lcoil3/decode/StaticImageDecoder;

    .line 288
    .line 289
    iget-object v2, v2, Lcoil3/decode/StaticImageDecoder;->options:Lcoil3/request/Options;

    .line 290
    .line 291
    iget-object v2, v2, Lcoil3/request/Options;->precision:Lcoil3/size/Precision;

    .line 292
    .line 293
    sget-object v5, Lcoil3/size/Precision;->EXACT:Lcoil3/size/Precision;

    .line 294
    .line 295
    if-ne v2, v5, :cond_a

    .line 296
    .line 297
    :cond_9
    int-to-double v5, v12

    .line 298
    mul-double/2addr v5, v3

    .line 299
    invoke-static {v5, v6}, Lkotlin/UnsignedKt;->roundToInt(D)I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    int-to-double v5, v13

    .line 304
    mul-double/2addr v3, v5

    .line 305
    invoke-static {v3, v4}, Lkotlin/UnsignedKt;->roundToInt(D)I

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    invoke-virtual {v1, v2, v3}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 310
    .line 311
    .line 312
    :cond_a
    check-cast v0, Lcoil3/decode/StaticImageDecoder;

    .line 313
    .line 314
    new-instance v2, Lcoil3/decode/StaticImageDecoder$$ExternalSyntheticLambda0;

    .line 315
    .line 316
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v2}, Landroid/graphics/ImageDecoder;->setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V

    .line 320
    .line 321
    .line 322
    iget-object v0, v0, Lcoil3/decode/StaticImageDecoder;->options:Lcoil3/request/Options;

    .line 323
    .line 324
    invoke-static {v0}, Lcoil3/request/ImageRequests_androidKt;->getBitmapConfig(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-static {v2}, Lcoil3/util/BitmapsKt;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-eqz v2, :cond_b

    .line 333
    .line 334
    const/4 v3, 0x3

    .line 335
    goto :goto_4

    .line 336
    :cond_b
    move v3, v11

    .line 337
    :goto_4
    invoke-virtual {v1, v3}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 338
    .line 339
    .line 340
    sget-object v2, Lcoil3/request/ImageRequests_androidKt;->allowRgb565Key:Lcoil3/Extras$Key;

    .line 341
    .line 342
    invoke-static {v0, v2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    check-cast v2, Ljava/lang/Boolean;

    .line 347
    .line 348
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    xor-int/2addr v2, v11

    .line 353
    invoke-virtual {v1, v2}, Landroid/graphics/ImageDecoder;->setMemorySizePolicy(I)V

    .line 354
    .line 355
    .line 356
    sget-object v2, Lcoil3/request/ImageRequests_androidKt;->colorSpaceKey:Lcoil3/Extras$Key;

    .line 357
    .line 358
    invoke-static {v0, v2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    invoke-static {v3}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    if-eqz v3, :cond_c

    .line 367
    .line 368
    invoke-static {v0, v2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-static {v2}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)Landroid/graphics/ColorSpace;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-virtual {v1, v2}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    .line 377
    .line 378
    .line 379
    :cond_c
    sget-object v2, Lcoil3/request/ImageRequests_androidKt;->premultipliedAlphaKey:Lcoil3/Extras$Key;

    .line 380
    .line 381
    invoke-static {v0, v2}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    check-cast v0, Ljava/lang/Boolean;

    .line 386
    .line 387
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    xor-int/2addr v0, v11

    .line 392
    invoke-virtual {v1, v0}, Landroid/graphics/ImageDecoder;->setUnpremultipliedRequired(Z)V

    .line 393
    .line 394
    .line 395
    return-void

    .line 396
    nop

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

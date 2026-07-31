.class public abstract Lcoil3/intercept/EngineInterceptorKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public static final transform(Lcoil3/intercept/EngineInterceptor$ExecuteResult;Lcoil3/request/ImageRequest;Lcoil3/request/Options;Lcoil3/EventListener;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    instance-of v4, v3, Lcoil3/intercept/EngineInterceptorKt$transform$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;

    .line 15
    .line 16
    iget v5, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->label:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;

    .line 29
    .line 30
    invoke-direct {v4, v3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    iget v5, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->label:I

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    if-ne v5, v6, :cond_2

    .line 42
    .line 43
    iget v0, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->I$1:I

    .line 44
    .line 45
    iget v1, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->I$0:I

    .line 46
    .line 47
    iget-object v2, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$12:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Landroid/graphics/Bitmap;

    .line 50
    .line 51
    iget-object v2, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$11:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Lorg/schabi/newpipe/util/image/CoilHelper$loadScaledDownThumbnail$request$1;

    .line 54
    .line 55
    iget-object v2, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$10:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Landroid/graphics/Bitmap;

    .line 58
    .line 59
    iget-object v2, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$9:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Landroid/graphics/Bitmap;

    .line 62
    .line 63
    iget-object v2, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$8:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Ljava/util/List;

    .line 66
    .line 67
    iget-object v5, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$7:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v5, Landroid/graphics/Bitmap;

    .line 70
    .line 71
    iget-object v5, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$6:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v5, Lcoil3/Image;

    .line 74
    .line 75
    iget-object v5, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$5:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v5, Ljava/util/List;

    .line 78
    .line 79
    iget-object v5, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$4:Ljava/lang/Object;

    .line 80
    .line 81
    if-nez v5, :cond_1

    .line 82
    .line 83
    iget-object v5, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$3:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v5, Lcoil3/EventListener;

    .line 86
    .line 87
    iget-object v8, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$2:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v8, Lcoil3/request/Options;

    .line 90
    .line 91
    iget-object v9, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$1:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v9, Lcoil3/request/ImageRequest;

    .line 94
    .line 95
    iget-object v10, v4, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$0:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v10, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 98
    .line 99
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    move-object/from16 v16, v8

    .line 103
    .line 104
    move v8, v0

    .line 105
    move-object v0, v10

    .line 106
    move-object v10, v4

    .line 107
    move-object v4, v2

    .line 108
    move-object/from16 v2, v16

    .line 109
    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :cond_1
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    .line 113
    .line 114
    .line 115
    return-object v7

    .line 116
    :cond_2
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 117
    .line 118
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-object v7

    .line 122
    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    sget-object v3, Lcoil3/request/ImageRequestsKt;->transformationsKey:Lcoil3/Extras$Key;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_4

    .line 138
    .line 139
    return-object v0

    .line 140
    :cond_4
    iget-object v5, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->image:Lcoil3/Image;

    .line 141
    .line 142
    instance-of v8, v5, Lcoil3/BitmapImage;

    .line 143
    .line 144
    if-nez v8, :cond_5

    .line 145
    .line 146
    sget-object v9, Lcoil3/request/ImageRequestsKt;->allowConversionToBitmapKey:Lcoil3/Extras$Key;

    .line 147
    .line 148
    invoke-static {v1, v9}, Lcoil3/UriKt;->getExtra(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    check-cast v9, Ljava/lang/Boolean;

    .line 153
    .line 154
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    if-nez v9, :cond_5

    .line 159
    .line 160
    return-object v0

    .line 161
    :cond_5
    const/4 v9, 0x0

    .line 162
    if-eqz v8, :cond_7

    .line 163
    .line 164
    move-object v8, v5

    .line 165
    check-cast v8, Lcoil3/BitmapImage;

    .line 166
    .line 167
    iget-object v8, v8, Lcoil3/BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    .line 168
    .line 169
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    if-nez v10, :cond_6

    .line 174
    .line 175
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 176
    .line 177
    :cond_6
    sget-object v11, Lcoil3/util/Utils_androidKt;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 178
    .line 179
    invoke-static {v11, v10}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    if-eqz v10, :cond_7

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_7
    iget-object v8, v2, Lcoil3/request/Options;->context:Landroid/content/Context;

    .line 187
    .line 188
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-static {v5, v8}, Lcoil3/UriKt;->asDrawable(Lcoil3/Image;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    sget-object v5, Lcoil3/request/ImageRequests_androidKt;->bitmapConfigKey:Lcoil3/Extras$Key;

    .line 197
    .line 198
    invoke-static {v2, v5}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    move-object v11, v5

    .line 203
    check-cast v11, Landroid/graphics/Bitmap$Config;

    .line 204
    .line 205
    iget-object v12, v2, Lcoil3/request/Options;->size:Lcoil3/size/Size;

    .line 206
    .line 207
    iget-object v13, v2, Lcoil3/request/Options;->scale:Lcoil3/size/Scale;

    .line 208
    .line 209
    sget-object v5, Lcoil3/request/ImageRequestsKt;->maxBitmapSizeKey:Lcoil3/Extras$Key;

    .line 210
    .line 211
    invoke-static {v2, v5}, Lcoil3/UriKt;->getExtra(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    move-object v14, v5

    .line 216
    check-cast v14, Lcoil3/size/Size;

    .line 217
    .line 218
    iget-object v5, v2, Lcoil3/request/Options;->precision:Lcoil3/size/Precision;

    .line 219
    .line 220
    sget-object v8, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    .line 221
    .line 222
    if-ne v5, v8, :cond_8

    .line 223
    .line 224
    move v15, v6

    .line 225
    goto :goto_1

    .line 226
    :cond_8
    move v15, v9

    .line 227
    :goto_1
    invoke-static/range {v10 .. v15}, Lcoil3/util/UtilsKt;->convertToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;Z)Landroid/graphics/Bitmap;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    move-object v10, v8

    .line 239
    move-object v8, v4

    .line 240
    move-object v4, v3

    .line 241
    move-object/from16 v3, p3

    .line 242
    .line 243
    :goto_3
    if-ge v9, v5, :cond_c

    .line 244
    .line 245
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    check-cast v11, Lorg/schabi/newpipe/util/image/CoilHelper$loadScaledDownThumbnail$request$1;

    .line 250
    .line 251
    iget-object v12, v2, Lcoil3/request/Options;->size:Lcoil3/size/Size;

    .line 252
    .line 253
    iput-object v0, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$0:Ljava/lang/Object;

    .line 254
    .line 255
    iput-object v1, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$1:Ljava/lang/Object;

    .line 256
    .line 257
    iput-object v2, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$2:Ljava/lang/Object;

    .line 258
    .line 259
    iput-object v3, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$3:Ljava/lang/Object;

    .line 260
    .line 261
    iput-object v7, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$4:Ljava/lang/Object;

    .line 262
    .line 263
    iput-object v7, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$5:Ljava/lang/Object;

    .line 264
    .line 265
    iput-object v7, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$6:Ljava/lang/Object;

    .line 266
    .line 267
    iput-object v7, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$7:Ljava/lang/Object;

    .line 268
    .line 269
    iput-object v4, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$8:Ljava/lang/Object;

    .line 270
    .line 271
    iput-object v7, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$9:Ljava/lang/Object;

    .line 272
    .line 273
    iput-object v7, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$10:Ljava/lang/Object;

    .line 274
    .line 275
    iput-object v7, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$11:Ljava/lang/Object;

    .line 276
    .line 277
    iput-object v7, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->L$12:Ljava/lang/Object;

    .line 278
    .line 279
    iput v9, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->I$0:I

    .line 280
    .line 281
    iput v5, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->I$1:I

    .line 282
    .line 283
    iput v6, v8, Lcoil3/intercept/EngineInterceptorKt$transform$1;->label:I

    .line 284
    .line 285
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    sget v12, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 289
    .line 290
    iget-object v11, v11, Lorg/schabi/newpipe/util/image/CoilHelper$loadScaledDownThumbnail$request$1;->$context:Landroid/content/Context;

    .line 291
    .line 292
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 293
    .line 294
    .line 295
    move-result-object v11

    .line 296
    const v12, 0x7f070361

    .line 297
    .line 298
    .line 299
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    .line 300
    .line 301
    .line 302
    move-result v11

    .line 303
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 304
    .line 305
    .line 306
    move-result v12

    .line 307
    int-to-float v12, v12

    .line 308
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    .line 309
    .line 310
    .line 311
    move-result v11

    .line 312
    float-to-int v11, v11

    .line 313
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 314
    .line 315
    .line 316
    move-result v12

    .line 317
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 318
    .line 319
    .line 320
    move-result v13

    .line 321
    div-int/2addr v13, v11

    .line 322
    div-int/2addr v12, v13

    .line 323
    invoke-static {v10, v11, v12}, Lkotlin/text/UStringsKt;->createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 324
    .line 325
    .line 326
    move-result-object v12

    .line 327
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v12, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v13

    .line 334
    if-nez v13, :cond_9

    .line 335
    .line 336
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isMutable()Z

    .line 337
    .line 338
    .line 339
    move-result v13

    .line 340
    if-nez v13, :cond_a

    .line 341
    .line 342
    :cond_9
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 343
    .line 344
    .line 345
    move-result v12

    .line 346
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 347
    .line 348
    .line 349
    move-result v13

    .line 350
    add-int/lit8 v14, v11, -0x1

    .line 351
    .line 352
    div-int/2addr v13, v14

    .line 353
    div-int/2addr v12, v13

    .line 354
    invoke-static {v10, v11, v12}, Lkotlin/text/UStringsKt;->createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 355
    .line 356
    .line 357
    move-result-object v10

    .line 358
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    move-object v12, v10

    .line 362
    :cond_a
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 363
    .line 364
    if-ne v12, v10, :cond_b

    .line 365
    .line 366
    return-object v10

    .line 367
    :cond_b
    move v10, v9

    .line 368
    move-object v9, v1

    .line 369
    move v1, v10

    .line 370
    move-object v10, v8

    .line 371
    move v8, v5

    .line 372
    move-object v5, v3

    .line 373
    move-object v3, v12

    .line 374
    :goto_4
    check-cast v3, Landroid/graphics/Bitmap;

    .line 375
    .line 376
    invoke-virtual {v10}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 377
    .line 378
    .line 379
    move-result-object v11

    .line 380
    invoke-static {v11}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 381
    .line 382
    .line 383
    add-int/2addr v1, v6

    .line 384
    move-object/from16 v16, v9

    .line 385
    .line 386
    move v9, v1

    .line 387
    move-object/from16 v1, v16

    .line 388
    .line 389
    move-object/from16 v16, v10

    .line 390
    .line 391
    move-object v10, v3

    .line 392
    move-object v3, v5

    .line 393
    move v5, v8

    .line 394
    move-object/from16 v8, v16

    .line 395
    .line 396
    goto/16 :goto_3

    .line 397
    .line 398
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    new-instance v1, Lcoil3/BitmapImage;

    .line 402
    .line 403
    invoke-direct {v1, v10}, Lcoil3/BitmapImage;-><init>(Landroid/graphics/Bitmap;)V

    .line 404
    .line 405
    .line 406
    iget-boolean v2, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->isSampled:Z

    .line 407
    .line 408
    iget-object v3, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->dataSource:Lcoil3/decode/DataSource;

    .line 409
    .line 410
    iget-object v0, v0, Lcoil3/intercept/EngineInterceptor$ExecuteResult;->diskCacheKey:Ljava/lang/String;

    .line 411
    .line 412
    new-instance v4, Lcoil3/intercept/EngineInterceptor$ExecuteResult;

    .line 413
    .line 414
    invoke-direct {v4, v1, v2, v3, v0}, Lcoil3/intercept/EngineInterceptor$ExecuteResult;-><init>(Lcoil3/Image;ZLcoil3/decode/DataSource;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    return-object v4
.end method

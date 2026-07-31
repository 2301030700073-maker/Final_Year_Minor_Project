.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lokhttp3/Interceptor;


# virtual methods
.method public final intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 29

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->request:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v3, v1

    .line 9
    check-cast v3, Lokhttp3/Request;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lorg/jsoup/internal/SoftPool;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/internal/SoftPool;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v5, v3, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    .line 22
    .line 23
    if-nez v5, :cond_1a

    .line 24
    .line 25
    sget v5, Lokhttp3/CacheControl;->$r8$clinit:I

    .line 26
    .line 27
    iget-object v5, v3, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    move-object v12, v4

    .line 37
    const/4 v10, 0x0

    .line 38
    const/4 v11, 0x1

    .line 39
    const/4 v13, 0x0

    .line 40
    const/4 v14, 0x0

    .line 41
    const/4 v15, -0x1

    .line 42
    const/16 v16, -0x1

    .line 43
    .line 44
    const/16 v17, 0x0

    .line 45
    .line 46
    const/16 v18, 0x0

    .line 47
    .line 48
    const/16 v19, 0x0

    .line 49
    .line 50
    const/16 v20, -0x1

    .line 51
    .line 52
    const/16 v21, -0x1

    .line 53
    .line 54
    const/16 v22, 0x0

    .line 55
    .line 56
    const/16 v23, 0x0

    .line 57
    .line 58
    const/16 v24, 0x0

    .line 59
    .line 60
    :goto_0
    if-ge v10, v7, :cond_18

    .line 61
    .line 62
    const/16 p0, 0x1

    .line 63
    .line 64
    invoke-virtual {v5, v10}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v5, v10}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    const-string v2, "Cache-Control"

    .line 73
    .line 74
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    if-eqz v12, :cond_0

    .line 81
    .line 82
    :goto_1
    const/4 v11, 0x0

    .line 83
    goto :goto_2

    .line 84
    :cond_0
    move-object v12, v6

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    const-string v2, "Pragma"

    .line 87
    .line 88
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_17

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :goto_2
    const/4 v2, 0x0

    .line 96
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-ge v2, v8, :cond_17

    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    move v4, v2

    .line 107
    :goto_4
    if-ge v4, v8, :cond_3

    .line 108
    .line 109
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    move-object/from16 v27, v1

    .line 114
    .line 115
    const-string v1, "=,;"

    .line 116
    .line 117
    invoke-static {v1, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_2

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    move-object/from16 v1, v27

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_3
    move-object/from16 v27, v1

    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    :goto_5
    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eq v4, v2, :cond_a

    .line 152
    .line 153
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    const/16 v8, 0x2c

    .line 158
    .line 159
    if-eq v2, v8, :cond_a

    .line 160
    .line 161
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    const/16 v8, 0x3b

    .line 166
    .line 167
    if-ne v2, v8, :cond_4

    .line 168
    .line 169
    goto/16 :goto_a

    .line 170
    .line 171
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 172
    .line 173
    sget-object v2, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 174
    .line 175
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    :goto_6
    if-ge v4, v2, :cond_6

    .line 180
    .line 181
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    const/16 v9, 0x20

    .line 186
    .line 187
    if-eq v8, v9, :cond_5

    .line 188
    .line 189
    const/16 v9, 0x9

    .line 190
    .line 191
    if-eq v8, v9, :cond_5

    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    :goto_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-ge v4, v2, :cond_7

    .line 206
    .line 207
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    const/16 v8, 0x22

    .line 212
    .line 213
    if-ne v2, v8, :cond_7

    .line 214
    .line 215
    add-int/lit8 v4, v4, 0x1

    .line 216
    .line 217
    const/4 v2, 0x4

    .line 218
    invoke-static {v6, v8, v4, v2}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    invoke-virtual {v6, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    add-int/lit8 v2, v2, 0x1

    .line 227
    .line 228
    goto :goto_b

    .line 229
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    move v8, v4

    .line 234
    :goto_8
    if-ge v8, v2, :cond_9

    .line 235
    .line 236
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    move/from16 v28, v2

    .line 241
    .line 242
    const-string v2, ",;"

    .line 243
    .line 244
    invoke-static {v2, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_8

    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 252
    .line 253
    move/from16 v2, v28

    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 257
    .line 258
    .line 259
    move-result v8

    .line 260
    :goto_9
    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    move-object v4, v2

    .line 273
    move v2, v8

    .line 274
    goto :goto_b

    .line 275
    :cond_a
    :goto_a
    add-int/lit8 v4, v4, 0x1

    .line 276
    .line 277
    move v2, v4

    .line 278
    const/4 v4, 0x0

    .line 279
    :goto_b
    const-string v8, "no-cache"

    .line 280
    .line 281
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    if-eqz v8, :cond_c

    .line 286
    .line 287
    move/from16 v13, p0

    .line 288
    .line 289
    :cond_b
    :goto_c
    move-object/from16 v1, v27

    .line 290
    .line 291
    const/4 v4, 0x0

    .line 292
    goto/16 :goto_3

    .line 293
    .line 294
    :cond_c
    const-string v8, "no-store"

    .line 295
    .line 296
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    if-eqz v8, :cond_d

    .line 301
    .line 302
    move/from16 v14, p0

    .line 303
    .line 304
    goto :goto_c

    .line 305
    :cond_d
    const-string v8, "max-age"

    .line 306
    .line 307
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result v8

    .line 311
    if-eqz v8, :cond_e

    .line 312
    .line 313
    const/4 v8, -0x1

    .line 314
    invoke-static {v4, v8}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 315
    .line 316
    .line 317
    move-result v15

    .line 318
    goto :goto_c

    .line 319
    :cond_e
    const/4 v8, -0x1

    .line 320
    const-string v9, "s-maxage"

    .line 321
    .line 322
    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    if-eqz v9, :cond_f

    .line 327
    .line 328
    invoke-static {v4, v8}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 329
    .line 330
    .line 331
    move-result v16

    .line 332
    goto :goto_c

    .line 333
    :cond_f
    const-string v8, "private"

    .line 334
    .line 335
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 336
    .line 337
    .line 338
    move-result v8

    .line 339
    if-eqz v8, :cond_10

    .line 340
    .line 341
    move/from16 v17, p0

    .line 342
    .line 343
    goto :goto_c

    .line 344
    :cond_10
    const-string v8, "public"

    .line 345
    .line 346
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 347
    .line 348
    .line 349
    move-result v8

    .line 350
    if-eqz v8, :cond_11

    .line 351
    .line 352
    move/from16 v18, p0

    .line 353
    .line 354
    goto :goto_c

    .line 355
    :cond_11
    const-string v8, "must-revalidate"

    .line 356
    .line 357
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 358
    .line 359
    .line 360
    move-result v8

    .line 361
    if-eqz v8, :cond_12

    .line 362
    .line 363
    move/from16 v19, p0

    .line 364
    .line 365
    goto :goto_c

    .line 366
    :cond_12
    const-string v8, "max-stale"

    .line 367
    .line 368
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 369
    .line 370
    .line 371
    move-result v8

    .line 372
    if-eqz v8, :cond_13

    .line 373
    .line 374
    const v1, 0x7fffffff

    .line 375
    .line 376
    .line 377
    invoke-static {v4, v1}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 378
    .line 379
    .line 380
    move-result v20

    .line 381
    goto :goto_c

    .line 382
    :cond_13
    const-string v8, "min-fresh"

    .line 383
    .line 384
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 385
    .line 386
    .line 387
    move-result v8

    .line 388
    if-eqz v8, :cond_14

    .line 389
    .line 390
    const/4 v8, -0x1

    .line 391
    invoke-static {v4, v8}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 392
    .line 393
    .line 394
    move-result v21

    .line 395
    goto :goto_c

    .line 396
    :cond_14
    const/4 v8, -0x1

    .line 397
    const-string v4, "only-if-cached"

    .line 398
    .line 399
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    if-eqz v4, :cond_15

    .line 404
    .line 405
    move/from16 v22, p0

    .line 406
    .line 407
    goto :goto_c

    .line 408
    :cond_15
    const-string v4, "no-transform"

    .line 409
    .line 410
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    if-eqz v4, :cond_16

    .line 415
    .line 416
    move/from16 v23, p0

    .line 417
    .line 418
    goto/16 :goto_c

    .line 419
    .line 420
    :cond_16
    const-string v4, "immutable"

    .line 421
    .line 422
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    if-eqz v1, :cond_b

    .line 427
    .line 428
    move/from16 v24, p0

    .line 429
    .line 430
    goto/16 :goto_c

    .line 431
    .line 432
    :cond_17
    move-object/from16 v27, v1

    .line 433
    .line 434
    const/4 v8, -0x1

    .line 435
    add-int/lit8 v10, v10, 0x1

    .line 436
    .line 437
    move-object/from16 v1, v27

    .line 438
    .line 439
    const/4 v2, 0x2

    .line 440
    const/4 v4, 0x0

    .line 441
    goto/16 :goto_0

    .line 442
    .line 443
    :cond_18
    move-object/from16 v27, v1

    .line 444
    .line 445
    if-nez v11, :cond_19

    .line 446
    .line 447
    const/16 v25, 0x0

    .line 448
    .line 449
    goto :goto_d

    .line 450
    :cond_19
    move-object/from16 v25, v12

    .line 451
    .line 452
    :goto_d
    new-instance v12, Lokhttp3/CacheControl;

    .line 453
    .line 454
    invoke-direct/range {v12 .. v25}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iput-object v12, v3, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    .line 458
    .line 459
    move-object v5, v12

    .line 460
    goto :goto_e

    .line 461
    :cond_1a
    move-object/from16 v27, v1

    .line 462
    .line 463
    :goto_e
    iget-boolean v1, v5, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 464
    .line 465
    if-eqz v1, :cond_1b

    .line 466
    .line 467
    new-instance v1, Lorg/jsoup/internal/SoftPool;

    .line 468
    .line 469
    const/4 v2, 0x0

    .line 470
    const/4 v4, 0x2

    .line 471
    invoke-direct {v1, v4, v2, v2}, Lorg/jsoup/internal/SoftPool;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    goto :goto_f

    .line 475
    :cond_1b
    move-object/from16 v1, v27

    .line 476
    .line 477
    :goto_f
    iget-object v2, v1, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v2, Lokhttp3/Request;

    .line 480
    .line 481
    iget-object v1, v1, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast v1, Lokhttp3/Response;

    .line 484
    .line 485
    const/16 v4, 0x14

    .line 486
    .line 487
    if-nez v2, :cond_1c

    .line 488
    .line 489
    if-nez v1, :cond_1c

    .line 490
    .line 491
    sget-object v9, Lokhttp3/ResponseBody;->EMPTY:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 492
    .line 493
    new-instance v0, Ljava/util/ArrayList;

    .line 494
    .line 495
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 496
    .line 497
    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 499
    .line 500
    .line 501
    move-result-wide v16

    .line 502
    new-instance v8, Lokhttp3/Headers;

    .line 503
    .line 504
    const/4 v1, 0x0

    .line 505
    new-array v1, v1, [Ljava/lang/String;

    .line 506
    .line 507
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    check-cast v0, [Ljava/lang/String;

    .line 512
    .line 513
    invoke-direct {v8, v0}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    new-instance v2, Lokhttp3/Response;

    .line 517
    .line 518
    sget-object v4, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 519
    .line 520
    const-string v5, "Unsatisfiable Request (only-if-cached)"

    .line 521
    .line 522
    const/16 v6, 0x1f8

    .line 523
    .line 524
    const/4 v7, 0x0

    .line 525
    const/4 v10, 0x0

    .line 526
    const/4 v11, 0x0

    .line 527
    const/4 v12, 0x0

    .line 528
    const/4 v13, 0x0

    .line 529
    const-wide/16 v14, -0x1

    .line 530
    .line 531
    const/16 v18, 0x0

    .line 532
    .line 533
    sget-object v19, Lokhttp3/TrailersSource;->EMPTY:Lokhttp3/HttpUrl$Companion;

    .line 534
    .line 535
    invoke-direct/range {v2 .. v19}, Lokhttp3/Response;-><init>(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lokio/Socket;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLandroidx/compose/runtime/Latch;Lokhttp3/TrailersSource;)V

    .line 536
    .line 537
    .line 538
    return-object v2

    .line 539
    :cond_1c
    const-string v3, "cacheResponse"

    .line 540
    .line 541
    if-nez v2, :cond_1d

    .line 542
    .line 543
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-static {v1}, Lorg/minidns/util/Base64;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    invoke-static {v3, v1}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 555
    .line 556
    .line 557
    iput-object v1, v0, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 558
    .line 559
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    return-object v0

    .line 564
    :cond_1d
    invoke-virtual {v0, v2}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    const-string v2, "networkResponse"

    .line 569
    .line 570
    if-eqz v1, :cond_28

    .line 571
    .line 572
    iget v5, v0, Lokhttp3/Response;->code:I

    .line 573
    .line 574
    const/16 v6, 0x130

    .line 575
    .line 576
    if-ne v5, v6, :cond_27

    .line 577
    .line 578
    invoke-virtual {v1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 579
    .line 580
    .line 581
    move-result-object v5

    .line 582
    iget-object v6, v1, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 583
    .line 584
    iget-object v7, v0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 585
    .line 586
    new-instance v8, Ljava/util/ArrayList;

    .line 587
    .line 588
    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    .line 592
    .line 593
    .line 594
    move-result v4

    .line 595
    const/4 v9, 0x0

    .line 596
    :goto_10
    const-string v10, "Content-Type"

    .line 597
    .line 598
    const-string v11, "Content-Encoding"

    .line 599
    .line 600
    const-string v12, "Content-Length"

    .line 601
    .line 602
    if-ge v9, v4, :cond_23

    .line 603
    .line 604
    invoke-virtual {v6, v9}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v13

    .line 608
    invoke-virtual {v6, v9}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v14

    .line 612
    const-string v15, "Warning"

    .line 613
    .line 614
    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 615
    .line 616
    .line 617
    move-result v15

    .line 618
    if-eqz v15, :cond_1e

    .line 619
    .line 620
    const-string v15, "1"

    .line 621
    .line 622
    move/from16 p0, v4

    .line 623
    .line 624
    const/4 v4, 0x0

    .line 625
    invoke-static {v14, v15, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 626
    .line 627
    .line 628
    move-result v15

    .line 629
    if-eqz v15, :cond_1f

    .line 630
    .line 631
    goto :goto_12

    .line 632
    :cond_1e
    move/from16 p0, v4

    .line 633
    .line 634
    :cond_1f
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 635
    .line 636
    .line 637
    move-result v4

    .line 638
    if-nez v4, :cond_21

    .line 639
    .line 640
    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 641
    .line 642
    .line 643
    move-result v4

    .line 644
    if-nez v4, :cond_21

    .line 645
    .line 646
    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 647
    .line 648
    .line 649
    move-result v4

    .line 650
    if-eqz v4, :cond_20

    .line 651
    .line 652
    goto :goto_11

    .line 653
    :cond_20
    invoke-static {v13}, Lorg/minidns/util/Hex;->isEndToEnd(Ljava/lang/String;)Z

    .line 654
    .line 655
    .line 656
    move-result v4

    .line 657
    if-eqz v4, :cond_21

    .line 658
    .line 659
    invoke-virtual {v7, v13}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v4

    .line 663
    if-nez v4, :cond_22

    .line 664
    .line 665
    :cond_21
    :goto_11
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    invoke-static {v14}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 669
    .line 670
    .line 671
    move-result-object v4

    .line 672
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v4

    .line 676
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    :cond_22
    :goto_12
    add-int/lit8 v9, v9, 0x1

    .line 680
    .line 681
    move/from16 v4, p0

    .line 682
    .line 683
    goto :goto_10

    .line 684
    :cond_23
    invoke-virtual {v7}, Lokhttp3/Headers;->size()I

    .line 685
    .line 686
    .line 687
    move-result v4

    .line 688
    const/4 v6, 0x0

    .line 689
    :goto_13
    if-ge v6, v4, :cond_26

    .line 690
    .line 691
    invoke-virtual {v7, v6}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v9

    .line 695
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 696
    .line 697
    .line 698
    move-result v13

    .line 699
    if-nez v13, :cond_25

    .line 700
    .line 701
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 702
    .line 703
    .line 704
    move-result v13

    .line 705
    if-nez v13, :cond_25

    .line 706
    .line 707
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 708
    .line 709
    .line 710
    move-result v13

    .line 711
    if-eqz v13, :cond_24

    .line 712
    .line 713
    goto :goto_14

    .line 714
    :cond_24
    invoke-static {v9}, Lorg/minidns/util/Hex;->isEndToEnd(Ljava/lang/String;)Z

    .line 715
    .line 716
    .line 717
    move-result v13

    .line 718
    if-eqz v13, :cond_25

    .line 719
    .line 720
    invoke-virtual {v7, v6}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v13

    .line 724
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 728
    .line 729
    .line 730
    move-result-object v9

    .line 731
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v9

    .line 735
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    :cond_25
    :goto_14
    add-int/lit8 v6, v6, 0x1

    .line 739
    .line 740
    goto :goto_13

    .line 741
    :cond_26
    new-instance v4, Lokhttp3/Headers;

    .line 742
    .line 743
    const/4 v6, 0x0

    .line 744
    new-array v6, v6, [Ljava/lang/String;

    .line 745
    .line 746
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v6

    .line 750
    check-cast v6, [Ljava/lang/String;

    .line 751
    .line 752
    invoke-direct {v4, v6}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v4}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    .line 756
    .line 757
    .line 758
    move-result-object v4

    .line 759
    iput-object v4, v5, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 760
    .line 761
    iget-wide v6, v0, Lokhttp3/Response;->sentRequestAtMillis:J

    .line 762
    .line 763
    iput-wide v6, v5, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 764
    .line 765
    iget-wide v6, v0, Lokhttp3/Response;->receivedResponseAtMillis:J

    .line 766
    .line 767
    iput-wide v6, v5, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 768
    .line 769
    invoke-static {v1}, Lorg/minidns/util/Base64;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    invoke-static {v3, v1}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 774
    .line 775
    .line 776
    iput-object v1, v5, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 777
    .line 778
    invoke-static {v0}, Lorg/minidns/util/Base64;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    invoke-static {v2, v1}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 783
    .line 784
    .line 785
    iput-object v1, v5, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    .line 786
    .line 787
    invoke-virtual {v5}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 788
    .line 789
    .line 790
    iget-object v0, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 791
    .line 792
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 793
    .line 794
    .line 795
    const/16 v26, 0x0

    .line 796
    .line 797
    throw v26

    .line 798
    :cond_27
    const/16 v26, 0x0

    .line 799
    .line 800
    iget-object v4, v1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 801
    .line 802
    invoke-static {v4}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 803
    .line 804
    .line 805
    goto :goto_15

    .line 806
    :cond_28
    const/16 v26, 0x0

    .line 807
    .line 808
    :goto_15
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 809
    .line 810
    .line 811
    move-result-object v4

    .line 812
    if-eqz v1, :cond_29

    .line 813
    .line 814
    invoke-static {v1}, Lorg/minidns/util/Base64;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    goto :goto_16

    .line 819
    :cond_29
    move-object/from16 v1, v26

    .line 820
    .line 821
    :goto_16
    invoke-static {v3, v1}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 822
    .line 823
    .line 824
    iput-object v1, v4, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 825
    .line 826
    invoke-static {v0}, Lorg/minidns/util/Base64;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    invoke-static {v2, v0}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 831
    .line 832
    .line 833
    iput-object v0, v4, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    .line 834
    .line 835
    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    return-object v0
.end method

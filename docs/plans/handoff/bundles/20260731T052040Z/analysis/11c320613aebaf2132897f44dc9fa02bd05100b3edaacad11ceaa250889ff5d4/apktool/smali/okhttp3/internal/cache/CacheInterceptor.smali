.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

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
    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/grack/nanojson/JsonBuilder;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/16 v4, 0x1a

    .line 15
    .line 16
    invoke-direct {v2, v1, v3, v4}, Lcom/grack/nanojson/JsonBuilder;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    iget-object v5, v1, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    .line 20
    .line 21
    if-nez v5, :cond_1a

    .line 22
    .line 23
    sget v5, Lokhttp3/CacheControl;->$r8$clinit:I

    .line 24
    .line 25
    iget-object v5, v1, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    move-object v12, v3

    .line 35
    const/4 v10, 0x0

    .line 36
    const/4 v11, 0x1

    .line 37
    const/4 v13, 0x0

    .line 38
    const/4 v14, 0x0

    .line 39
    const/4 v15, -0x1

    .line 40
    const/16 v16, -0x1

    .line 41
    .line 42
    const/16 v17, 0x0

    .line 43
    .line 44
    const/16 v18, 0x0

    .line 45
    .line 46
    const/16 v19, 0x0

    .line 47
    .line 48
    const/16 v20, -0x1

    .line 49
    .line 50
    const/16 v21, -0x1

    .line 51
    .line 52
    const/16 v22, 0x0

    .line 53
    .line 54
    const/16 v23, 0x0

    .line 55
    .line 56
    const/16 v24, 0x0

    .line 57
    .line 58
    :goto_0
    if-ge v10, v7, :cond_18

    .line 59
    .line 60
    const/16 p0, 0x1

    .line 61
    .line 62
    invoke-virtual {v5, v10}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-virtual {v5, v10}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    const-string v3, "Cache-Control"

    .line 71
    .line 72
    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_1

    .line 77
    .line 78
    if-eqz v12, :cond_0

    .line 79
    .line 80
    :goto_1
    const/4 v11, 0x0

    .line 81
    goto :goto_2

    .line 82
    :cond_0
    move-object v12, v6

    .line 83
    goto :goto_2

    .line 84
    :cond_1
    const-string v3, "Pragma"

    .line 85
    .line 86
    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_17

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :goto_2
    const/4 v3, 0x0

    .line 94
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-ge v3, v8, :cond_17

    .line 99
    .line 100
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    move v4, v3

    .line 105
    :goto_4
    if-ge v4, v8, :cond_3

    .line 106
    .line 107
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    move-object/from16 v27, v2

    .line 112
    .line 113
    const-string v2, "=,;"

    .line 114
    .line 115
    invoke-static {v2, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_2

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 123
    .line 124
    move-object/from16 v2, v27

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_3
    move-object/from16 v27, v2

    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    :goto_5
    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eq v4, v3, :cond_a

    .line 150
    .line 151
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    const/16 v8, 0x2c

    .line 156
    .line 157
    if-eq v3, v8, :cond_a

    .line 158
    .line 159
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    const/16 v8, 0x3b

    .line 164
    .line 165
    if-ne v3, v8, :cond_4

    .line 166
    .line 167
    goto/16 :goto_a

    .line 168
    .line 169
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 170
    .line 171
    sget-object v3, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 172
    .line 173
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    :goto_6
    if-ge v4, v3, :cond_6

    .line 178
    .line 179
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    const/16 v9, 0x20

    .line 184
    .line 185
    if-eq v8, v9, :cond_5

    .line 186
    .line 187
    const/16 v9, 0x9

    .line 188
    .line 189
    if-eq v8, v9, :cond_5

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    :goto_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-ge v4, v3, :cond_7

    .line 204
    .line 205
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    const/16 v8, 0x22

    .line 210
    .line 211
    if-ne v3, v8, :cond_7

    .line 212
    .line 213
    add-int/lit8 v4, v4, 0x1

    .line 214
    .line 215
    const/4 v3, 0x4

    .line 216
    invoke-static {v8, v4, v3, v6}, Lkotlin/text/StringsKt;->indexOf$default(CIILjava/lang/CharSequence;)I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    add-int/lit8 v3, v3, 0x1

    .line 225
    .line 226
    goto :goto_b

    .line 227
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    move v8, v4

    .line 232
    :goto_8
    if-ge v8, v3, :cond_9

    .line 233
    .line 234
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    move/from16 v28, v3

    .line 239
    .line 240
    const-string v3, ",;"

    .line 241
    .line 242
    invoke-static {v3, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_8

    .line 247
    .line 248
    goto :goto_9

    .line 249
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 250
    .line 251
    move/from16 v3, v28

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    :goto_9
    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    move-object v4, v3

    .line 271
    move v3, v8

    .line 272
    goto :goto_b

    .line 273
    :cond_a
    :goto_a
    add-int/lit8 v4, v4, 0x1

    .line 274
    .line 275
    move v3, v4

    .line 276
    const/4 v4, 0x0

    .line 277
    :goto_b
    const-string v8, "no-cache"

    .line 278
    .line 279
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    if-eqz v8, :cond_c

    .line 284
    .line 285
    move/from16 v13, p0

    .line 286
    .line 287
    :cond_b
    :goto_c
    move-object/from16 v2, v27

    .line 288
    .line 289
    const/16 v4, 0x1a

    .line 290
    .line 291
    goto/16 :goto_3

    .line 292
    .line 293
    :cond_c
    const-string v8, "no-store"

    .line 294
    .line 295
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    if-eqz v8, :cond_d

    .line 300
    .line 301
    move/from16 v14, p0

    .line 302
    .line 303
    goto :goto_c

    .line 304
    :cond_d
    const-string v8, "max-age"

    .line 305
    .line 306
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 307
    .line 308
    .line 309
    move-result v8

    .line 310
    if-eqz v8, :cond_e

    .line 311
    .line 312
    const/4 v8, -0x1

    .line 313
    invoke-static {v8, v4}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(ILjava/lang/String;)I

    .line 314
    .line 315
    .line 316
    move-result v15

    .line 317
    goto :goto_c

    .line 318
    :cond_e
    const/4 v8, -0x1

    .line 319
    const-string v9, "s-maxage"

    .line 320
    .line 321
    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    if-eqz v9, :cond_f

    .line 326
    .line 327
    invoke-static {v8, v4}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(ILjava/lang/String;)I

    .line 328
    .line 329
    .line 330
    move-result v16

    .line 331
    goto :goto_c

    .line 332
    :cond_f
    const-string v8, "private"

    .line 333
    .line 334
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result v8

    .line 338
    if-eqz v8, :cond_10

    .line 339
    .line 340
    move/from16 v17, p0

    .line 341
    .line 342
    goto :goto_c

    .line 343
    :cond_10
    const-string v8, "public"

    .line 344
    .line 345
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    if-eqz v8, :cond_11

    .line 350
    .line 351
    move/from16 v18, p0

    .line 352
    .line 353
    goto :goto_c

    .line 354
    :cond_11
    const-string v8, "must-revalidate"

    .line 355
    .line 356
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 357
    .line 358
    .line 359
    move-result v8

    .line 360
    if-eqz v8, :cond_12

    .line 361
    .line 362
    move/from16 v19, p0

    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_12
    const-string v8, "max-stale"

    .line 366
    .line 367
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 368
    .line 369
    .line 370
    move-result v8

    .line 371
    if-eqz v8, :cond_13

    .line 372
    .line 373
    const v2, 0x7fffffff

    .line 374
    .line 375
    .line 376
    invoke-static {v2, v4}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(ILjava/lang/String;)I

    .line 377
    .line 378
    .line 379
    move-result v20

    .line 380
    goto :goto_c

    .line 381
    :cond_13
    const-string v8, "min-fresh"

    .line 382
    .line 383
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 384
    .line 385
    .line 386
    move-result v8

    .line 387
    if-eqz v8, :cond_14

    .line 388
    .line 389
    const/4 v8, -0x1

    .line 390
    invoke-static {v8, v4}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(ILjava/lang/String;)I

    .line 391
    .line 392
    .line 393
    move-result v21

    .line 394
    goto :goto_c

    .line 395
    :cond_14
    const/4 v8, -0x1

    .line 396
    const-string v4, "only-if-cached"

    .line 397
    .line 398
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    if-eqz v4, :cond_15

    .line 403
    .line 404
    move/from16 v22, p0

    .line 405
    .line 406
    goto :goto_c

    .line 407
    :cond_15
    const-string v4, "no-transform"

    .line 408
    .line 409
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    if-eqz v4, :cond_16

    .line 414
    .line 415
    move/from16 v23, p0

    .line 416
    .line 417
    goto/16 :goto_c

    .line 418
    .line 419
    :cond_16
    const-string v4, "immutable"

    .line 420
    .line 421
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    if-eqz v2, :cond_b

    .line 426
    .line 427
    move/from16 v24, p0

    .line 428
    .line 429
    goto/16 :goto_c

    .line 430
    .line 431
    :cond_17
    move-object/from16 v27, v2

    .line 432
    .line 433
    const/4 v8, -0x1

    .line 434
    add-int/lit8 v10, v10, 0x1

    .line 435
    .line 436
    move-object/from16 v2, v27

    .line 437
    .line 438
    const/4 v3, 0x0

    .line 439
    const/16 v4, 0x1a

    .line 440
    .line 441
    goto/16 :goto_0

    .line 442
    .line 443
    :cond_18
    move-object/from16 v27, v2

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
    iput-object v12, v1, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    .line 458
    .line 459
    move-object v5, v12

    .line 460
    goto :goto_e

    .line 461
    :cond_1a
    move-object/from16 v27, v2

    .line 462
    .line 463
    :goto_e
    iget-boolean v1, v5, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 464
    .line 465
    if-eqz v1, :cond_1b

    .line 466
    .line 467
    new-instance v2, Lcom/grack/nanojson/JsonBuilder;

    .line 468
    .line 469
    const/4 v1, 0x0

    .line 470
    const/16 v3, 0x1a

    .line 471
    .line 472
    invoke-direct {v2, v1, v1, v3}, Lcom/grack/nanojson/JsonBuilder;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 473
    .line 474
    .line 475
    goto :goto_f

    .line 476
    :cond_1b
    move-object/from16 v2, v27

    .line 477
    .line 478
    :goto_f
    iget-object v1, v2, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v1, Lokhttp3/Request;

    .line 481
    .line 482
    iget-object v2, v2, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 483
    .line 484
    check-cast v2, Lokhttp3/Response;

    .line 485
    .line 486
    const/16 v3, 0x14

    .line 487
    .line 488
    if-nez v1, :cond_1c

    .line 489
    .line 490
    if-nez v2, :cond_1c

    .line 491
    .line 492
    sget-object v11, Lokhttp3/ResponseBody;->EMPTY:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 493
    .line 494
    sget-object v21, Lokhttp3/TrailersSource;->EMPTY:Lokhttp3/HttpUrl$Companion;

    .line 495
    .line 496
    new-instance v1, Ljava/util/ArrayList;

    .line 497
    .line 498
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 499
    .line 500
    .line 501
    iget-object v5, v0, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 502
    .line 503
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    sget-object v6, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 507
    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 509
    .line 510
    .line 511
    move-result-wide v18

    .line 512
    new-instance v10, Lokhttp3/Headers;

    .line 513
    .line 514
    const/4 v2, 0x0

    .line 515
    new-array v2, v2, [Ljava/lang/String;

    .line 516
    .line 517
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    check-cast v1, [Ljava/lang/String;

    .line 522
    .line 523
    invoke-direct {v10, v1}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    new-instance v4, Lokhttp3/Response;

    .line 527
    .line 528
    const-string v7, "Unsatisfiable Request (only-if-cached)"

    .line 529
    .line 530
    const/16 v8, 0x1f8

    .line 531
    .line 532
    const/4 v9, 0x0

    .line 533
    const/4 v12, 0x0

    .line 534
    const/4 v13, 0x0

    .line 535
    const/4 v14, 0x0

    .line 536
    const/4 v15, 0x0

    .line 537
    const-wide/16 v16, -0x1

    .line 538
    .line 539
    const/16 v20, 0x0

    .line 540
    .line 541
    invoke-direct/range {v4 .. v21}, Lokhttp3/Response;-><init>(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lokio/Socket;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLandroidx/compose/runtime/Latch;Lokhttp3/TrailersSource;)V

    .line 542
    .line 543
    .line 544
    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/internal/connection/RealCall;

    .line 545
    .line 546
    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 547
    .line 548
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    .line 550
    .line 551
    return-object v4

    .line 552
    :cond_1c
    const-string v4, "cacheResponse"

    .line 553
    .line 554
    if-nez v1, :cond_1d

    .line 555
    .line 556
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-static {v2}, Landroidx/work/OperationKt;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    invoke-static {v4, v2}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 568
    .line 569
    .line 570
    iput-object v2, v1, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 571
    .line 572
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/internal/connection/RealCall;

    .line 577
    .line 578
    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 579
    .line 580
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    return-object v1

    .line 584
    :cond_1d
    if-eqz v2, :cond_1e

    .line 585
    .line 586
    iget-object v5, v0, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/internal/connection/RealCall;

    .line 587
    .line 588
    iget-object v5, v5, Lokhttp3/internal/connection/RealCall;->eventListener:Lokhttp3/EventListener;

    .line 589
    .line 590
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    :cond_1e
    invoke-virtual {v0, v1}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    const-string v1, "networkResponse"

    .line 598
    .line 599
    if-eqz v2, :cond_29

    .line 600
    .line 601
    iget v5, v0, Lokhttp3/Response;->code:I

    .line 602
    .line 603
    const/16 v6, 0x130

    .line 604
    .line 605
    if-ne v5, v6, :cond_28

    .line 606
    .line 607
    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 608
    .line 609
    .line 610
    move-result-object v5

    .line 611
    iget-object v6, v2, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 612
    .line 613
    iget-object v7, v0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 614
    .line 615
    new-instance v8, Ljava/util/ArrayList;

    .line 616
    .line 617
    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    .line 621
    .line 622
    .line 623
    move-result v3

    .line 624
    const/4 v9, 0x0

    .line 625
    :goto_10
    const-string v10, "Content-Type"

    .line 626
    .line 627
    const-string v11, "Content-Encoding"

    .line 628
    .line 629
    const-string v12, "Content-Length"

    .line 630
    .line 631
    if-ge v9, v3, :cond_24

    .line 632
    .line 633
    invoke-virtual {v6, v9}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v13

    .line 637
    invoke-virtual {v6, v9}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v14

    .line 641
    const-string v15, "Warning"

    .line 642
    .line 643
    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 644
    .line 645
    .line 646
    move-result v15

    .line 647
    if-eqz v15, :cond_1f

    .line 648
    .line 649
    const-string v15, "1"

    .line 650
    .line 651
    move/from16 p0, v3

    .line 652
    .line 653
    const/4 v3, 0x0

    .line 654
    invoke-static {v14, v15, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 655
    .line 656
    .line 657
    move-result v15

    .line 658
    if-eqz v15, :cond_20

    .line 659
    .line 660
    goto :goto_12

    .line 661
    :cond_1f
    move/from16 p0, v3

    .line 662
    .line 663
    :cond_20
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 664
    .line 665
    .line 666
    move-result v3

    .line 667
    if-nez v3, :cond_22

    .line 668
    .line 669
    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 670
    .line 671
    .line 672
    move-result v3

    .line 673
    if-nez v3, :cond_22

    .line 674
    .line 675
    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 676
    .line 677
    .line 678
    move-result v3

    .line 679
    if-eqz v3, :cond_21

    .line 680
    .line 681
    goto :goto_11

    .line 682
    :cond_21
    invoke-static {v13}, Lkotlin/ranges/RangesKt;->isEndToEnd(Ljava/lang/String;)Z

    .line 683
    .line 684
    .line 685
    move-result v3

    .line 686
    if-eqz v3, :cond_22

    .line 687
    .line 688
    invoke-virtual {v7, v13}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    if-nez v3, :cond_23

    .line 693
    .line 694
    :cond_22
    :goto_11
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    invoke-static {v14}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 698
    .line 699
    .line 700
    move-result-object v3

    .line 701
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v3

    .line 705
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    :cond_23
    :goto_12
    add-int/lit8 v9, v9, 0x1

    .line 709
    .line 710
    move/from16 v3, p0

    .line 711
    .line 712
    goto :goto_10

    .line 713
    :cond_24
    invoke-virtual {v7}, Lokhttp3/Headers;->size()I

    .line 714
    .line 715
    .line 716
    move-result v3

    .line 717
    const/4 v6, 0x0

    .line 718
    :goto_13
    if-ge v6, v3, :cond_27

    .line 719
    .line 720
    invoke-virtual {v7, v6}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v9

    .line 724
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 725
    .line 726
    .line 727
    move-result v13

    .line 728
    if-nez v13, :cond_26

    .line 729
    .line 730
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 731
    .line 732
    .line 733
    move-result v13

    .line 734
    if-nez v13, :cond_26

    .line 735
    .line 736
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 737
    .line 738
    .line 739
    move-result v13

    .line 740
    if-eqz v13, :cond_25

    .line 741
    .line 742
    goto :goto_14

    .line 743
    :cond_25
    invoke-static {v9}, Lkotlin/ranges/RangesKt;->isEndToEnd(Ljava/lang/String;)Z

    .line 744
    .line 745
    .line 746
    move-result v13

    .line 747
    if-eqz v13, :cond_26

    .line 748
    .line 749
    invoke-virtual {v7, v6}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v13

    .line 753
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    .line 755
    .line 756
    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 757
    .line 758
    .line 759
    move-result-object v9

    .line 760
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v9

    .line 764
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    :cond_26
    :goto_14
    add-int/lit8 v6, v6, 0x1

    .line 768
    .line 769
    goto :goto_13

    .line 770
    :cond_27
    new-instance v3, Lokhttp3/Headers;

    .line 771
    .line 772
    const/4 v6, 0x0

    .line 773
    new-array v6, v6, [Ljava/lang/String;

    .line 774
    .line 775
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v6

    .line 779
    check-cast v6, [Ljava/lang/String;

    .line 780
    .line 781
    invoke-direct {v3, v6}, Lokhttp3/Headers;-><init>([Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v3}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    .line 785
    .line 786
    .line 787
    move-result-object v3

    .line 788
    iput-object v3, v5, Lokhttp3/Response$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 789
    .line 790
    iget-wide v6, v0, Lokhttp3/Response;->sentRequestAtMillis:J

    .line 791
    .line 792
    iput-wide v6, v5, Lokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 793
    .line 794
    iget-wide v6, v0, Lokhttp3/Response;->receivedResponseAtMillis:J

    .line 795
    .line 796
    iput-wide v6, v5, Lokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 797
    .line 798
    invoke-static {v2}, Landroidx/work/OperationKt;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 799
    .line 800
    .line 801
    move-result-object v2

    .line 802
    invoke-static {v4, v2}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 803
    .line 804
    .line 805
    iput-object v2, v5, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 806
    .line 807
    invoke-static {v0}, Landroidx/work/OperationKt;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 808
    .line 809
    .line 810
    move-result-object v2

    .line 811
    invoke-static {v1, v2}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 812
    .line 813
    .line 814
    iput-object v2, v5, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    .line 815
    .line 816
    invoke-virtual {v5}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 817
    .line 818
    .line 819
    iget-object v0, v0, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 820
    .line 821
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 822
    .line 823
    .line 824
    const/16 v26, 0x0

    .line 825
    .line 826
    throw v26

    .line 827
    :cond_28
    const/16 v26, 0x0

    .line 828
    .line 829
    iget-object v3, v2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 830
    .line 831
    invoke-static {v3}, Lokhttp3/internal/_UtilCommonKt;->closeQuietly(Ljava/io/Closeable;)V

    .line 832
    .line 833
    .line 834
    goto :goto_15

    .line 835
    :cond_29
    const/16 v26, 0x0

    .line 836
    .line 837
    :goto_15
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    .line 838
    .line 839
    .line 840
    move-result-object v3

    .line 841
    if-eqz v2, :cond_2a

    .line 842
    .line 843
    invoke-static {v2}, Landroidx/work/OperationKt;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 844
    .line 845
    .line 846
    move-result-object v2

    .line 847
    goto :goto_16

    .line 848
    :cond_2a
    move-object/from16 v2, v26

    .line 849
    .line 850
    :goto_16
    invoke-static {v4, v2}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 851
    .line 852
    .line 853
    iput-object v2, v3, Lokhttp3/Response$Builder;->cacheResponse:Lokhttp3/Response;

    .line 854
    .line 855
    invoke-static {v0}, Landroidx/work/OperationKt;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    invoke-static {v1, v0}, Lokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lokhttp3/Response;)V

    .line 860
    .line 861
    .line 862
    iput-object v0, v3, Lokhttp3/Response$Builder;->networkResponse:Lokhttp3/Response;

    .line 863
    .line 864
    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    return-object v0
.end method

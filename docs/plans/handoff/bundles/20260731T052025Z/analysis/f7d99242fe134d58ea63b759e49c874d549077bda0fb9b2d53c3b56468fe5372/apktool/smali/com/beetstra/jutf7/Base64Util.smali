.class public final Lcom/beetstra/jutf7/Base64Util;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;
.implements Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
.implements Lcom/bumptech/glide/load/ResourceEncoder;
.implements Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
.implements Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# instance fields
.field public final synthetic $r8$classId:I

.field public alphabet:Ljava/lang/Object;

.field public inverseAlphabet:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iput v1, v0, Lcom/beetstra/jutf7/Base64Util;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v12, "text"

    .line 14
    .line 15
    const-string/jumbo v13, "vlink"

    .line 16
    .line 17
    .line 18
    const-string v3, "id"

    .line 19
    .line 20
    const-string v4, "class"

    .line 21
    .line 22
    const-string v5, "dir"

    .line 23
    .line 24
    const-string v6, "lang"

    .line 25
    .line 26
    const-string v7, "style"

    .line 27
    .line 28
    const-string v8, "alink"

    .line 29
    .line 30
    const-string v9, "background"

    .line 31
    .line 32
    const-string v10, "bgcolor"

    .line 33
    .line 34
    const-string v11, "link"

    .line 35
    .line 36
    filled-new-array/range {v3 .. v13}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 45
    .line 46
    new-instance v1, Lorg/jsoup/safety/Safelist;

    .line 47
    .line 48
    invoke-direct {v1}, Lorg/jsoup/safety/Safelist;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v43, "u"

    .line 52
    .line 53
    const-string v44, "ul"

    .line 54
    .line 55
    const-string v3, "a"

    .line 56
    .line 57
    const-string v4, "b"

    .line 58
    .line 59
    const-string v5, "blockquote"

    .line 60
    .line 61
    const-string v6, "br"

    .line 62
    .line 63
    const-string v7, "caption"

    .line 64
    .line 65
    const-string v8, "cite"

    .line 66
    .line 67
    const-string v9, "code"

    .line 68
    .line 69
    const-string v10, "col"

    .line 70
    .line 71
    const-string v11, "colgroup"

    .line 72
    .line 73
    const-string v12, "dd"

    .line 74
    .line 75
    const-string v13, "div"

    .line 76
    .line 77
    const-string v14, "dl"

    .line 78
    .line 79
    const-string v15, "dt"

    .line 80
    .line 81
    const-string v16, "em"

    .line 82
    .line 83
    const-string v17, "h1"

    .line 84
    .line 85
    const-string v18, "h2"

    .line 86
    .line 87
    const-string v19, "h3"

    .line 88
    .line 89
    const-string v20, "h4"

    .line 90
    .line 91
    const-string v21, "h5"

    .line 92
    .line 93
    const-string v22, "h6"

    .line 94
    .line 95
    const-string v23, "i"

    .line 96
    .line 97
    const-string v24, "img"

    .line 98
    .line 99
    const-string v25, "li"

    .line 100
    .line 101
    const-string v26, "ol"

    .line 102
    .line 103
    const-string v27, "p"

    .line 104
    .line 105
    const-string v28, "pre"

    .line 106
    .line 107
    const-string v29, "q"

    .line 108
    .line 109
    const-string v30, "small"

    .line 110
    .line 111
    const-string v31, "span"

    .line 112
    .line 113
    const-string v32, "strike"

    .line 114
    .line 115
    const-string v33, "strong"

    .line 116
    .line 117
    const-string v34, "sub"

    .line 118
    .line 119
    const-string v35, "sup"

    .line 120
    .line 121
    const-string v36, "table"

    .line 122
    .line 123
    const-string v37, "tbody"

    .line 124
    .line 125
    const-string v38, "td"

    .line 126
    .line 127
    const-string v39, "tfoot"

    .line 128
    .line 129
    const-string v40, "th"

    .line 130
    .line 131
    const-string v41, "thead"

    .line 132
    .line 133
    const-string v42, "tr"

    .line 134
    .line 135
    filled-new-array/range {v3 .. v44}, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v1, v3}, Lorg/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v3, "title"

    .line 143
    .line 144
    const-string v4, "href"

    .line 145
    .line 146
    filled-new-array {v4, v3}, [Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    const-string v5, "a"

    .line 151
    .line 152
    invoke-virtual {v1, v5, v3}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v3, "cite"

    .line 156
    .line 157
    filled-new-array {v3}, [Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    const-string v7, "blockquote"

    .line 162
    .line 163
    invoke-virtual {v1, v7, v6}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string v6, "span"

    .line 167
    .line 168
    const-string/jumbo v8, "width"

    .line 169
    .line 170
    .line 171
    filled-new-array {v6, v8}, [Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    const-string v10, "col"

    .line 176
    .line 177
    invoke-virtual {v1, v10, v9}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string v9, "colgroup"

    .line 181
    .line 182
    filled-new-array {v6, v8}, [Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    invoke-virtual {v1, v9, v6}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v14, "title"

    .line 190
    .line 191
    const-string/jumbo v15, "width"

    .line 192
    .line 193
    .line 194
    const-string v10, "align"

    .line 195
    .line 196
    const-string v11, "alt"

    .line 197
    .line 198
    const-string v12, "height"

    .line 199
    .line 200
    const-string v13, "src"

    .line 201
    .line 202
    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    const-string v9, "img"

    .line 207
    .line 208
    invoke-virtual {v1, v9, v6}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-string v6, "start"

    .line 212
    .line 213
    const-string v10, "type"

    .line 214
    .line 215
    filled-new-array {v6, v10}, [Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    const-string v11, "ol"

    .line 220
    .line 221
    invoke-virtual {v1, v11, v6}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    filled-new-array {v3}, [Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    const-string v11, "q"

    .line 229
    .line 230
    invoke-virtual {v1, v11, v6}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const-string v6, "summary"

    .line 234
    .line 235
    filled-new-array {v6, v8}, [Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    const-string v12, "table"

    .line 240
    .line 241
    invoke-virtual {v1, v12, v6}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const-string v6, "colspan"

    .line 245
    .line 246
    const-string v13, "rowspan"

    .line 247
    .line 248
    const-string v14, "abbr"

    .line 249
    .line 250
    const-string v15, "axis"

    .line 251
    .line 252
    filled-new-array {v14, v15, v6, v13, v8}, [Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    const-string v8, "td"

    .line 257
    .line 258
    invoke-virtual {v1, v8, v6}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    const-string v17, "scope"

    .line 262
    .line 263
    const-string/jumbo v18, "width"

    .line 264
    .line 265
    .line 266
    const-string v13, "abbr"

    .line 267
    .line 268
    const-string v14, "axis"

    .line 269
    .line 270
    const-string v15, "colspan"

    .line 271
    .line 272
    const-string v16, "rowspan"

    .line 273
    .line 274
    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    const-string v13, "th"

    .line 279
    .line 280
    invoke-virtual {v1, v13, v6}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    const-string v6, "ul"

    .line 284
    .line 285
    filled-new-array {v10}, [Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    invoke-virtual {v1, v6, v10}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    const-string v6, "ftp"

    .line 293
    .line 294
    const-string v10, "http"

    .line 295
    .line 296
    const-string v14, "https"

    .line 297
    .line 298
    const-string v15, "mailto"

    .line 299
    .line 300
    filled-new-array {v6, v10, v14, v15}, [Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v1, v5, v4, v2}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    filled-new-array {v10, v14}, [Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v1, v7, v3, v2}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    filled-new-array {v10, v14}, [Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {v1, v3, v3, v2}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    filled-new-array {v10, v14}, [Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    const-string v7, "src"

    .line 326
    .line 327
    invoke-virtual {v1, v9, v7, v2}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    filled-new-array {v10, v14}, [Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v1, v11, v3, v2}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string v29, "style"

    .line 338
    .line 339
    const-string v30, "s"

    .line 340
    .line 341
    const-string v17, "font"

    .line 342
    .line 343
    const-string v18, "hr"

    .line 344
    .line 345
    const-string v19, "ins"

    .line 346
    .line 347
    const-string v20, "del"

    .line 348
    .line 349
    const-string v21, "center"

    .line 350
    .line 351
    const-string v22, "map"

    .line 352
    .line 353
    const-string v23, "area"

    .line 354
    .line 355
    const-string v24, "title"

    .line 356
    .line 357
    const-string v25, "tt"

    .line 358
    .line 359
    const-string v26, "kbd"

    .line 360
    .line 361
    const-string v27, "samp"

    .line 362
    .line 363
    const-string/jumbo v28, "var"

    .line 364
    .line 365
    .line 366
    filled-new-array/range {v17 .. v30}, [Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {v1, v2}, Lorg/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    const-string v2, "face"

    .line 374
    .line 375
    const-string v3, "size"

    .line 376
    .line 377
    const-string v11, "color"

    .line 378
    .line 379
    filled-new-array {v11, v2, v3}, [Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    const-string v3, "font"

    .line 384
    .line 385
    invoke-virtual {v1, v3, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    const-string v2, "name"

    .line 389
    .line 390
    filled-new-array {v2}, [Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    invoke-virtual {v1, v5, v3}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const-string v3, "align"

    .line 398
    .line 399
    filled-new-array {v3}, [Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v11

    .line 403
    move-object/from16 p1, v2

    .line 404
    .line 405
    const-string v2, "div"

    .line 406
    .line 407
    invoke-virtual {v1, v2, v11}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    const-string v22, "cellspacing"

    .line 411
    .line 412
    const-string/jumbo v23, "width"

    .line 413
    .line 414
    .line 415
    const-string v17, "align"

    .line 416
    .line 417
    const-string v18, "background"

    .line 418
    .line 419
    const-string v19, "bgcolor"

    .line 420
    .line 421
    const-string v20, "border"

    .line 422
    .line 423
    const-string v21, "cellpadding"

    .line 424
    .line 425
    filled-new-array/range {v17 .. v23}, [Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    invoke-virtual {v1, v12, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    const-string v2, "bgcolor"

    .line 433
    .line 434
    const-string/jumbo v11, "valign"

    .line 435
    .line 436
    .line 437
    const-string v12, "background"

    .line 438
    .line 439
    filled-new-array {v3, v12, v2, v11}, [Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    const-string v3, "tr"

    .line 444
    .line 445
    invoke-virtual {v1, v3, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    const-string/jumbo v27, "valign"

    .line 449
    .line 450
    .line 451
    const-string/jumbo v28, "width"

    .line 452
    .line 453
    .line 454
    const-string v17, "align"

    .line 455
    .line 456
    const-string v18, "background"

    .line 457
    .line 458
    const-string v19, "bgcolor"

    .line 459
    .line 460
    const-string v20, "colspan"

    .line 461
    .line 462
    const-string v21, "headers"

    .line 463
    .line 464
    const-string v22, "height"

    .line 465
    .line 466
    const-string v23, "nowrap"

    .line 467
    .line 468
    const-string v24, "rowspan"

    .line 469
    .line 470
    const-string v25, "scope"

    .line 471
    .line 472
    const-string v26, "sorted"

    .line 473
    .line 474
    filled-new-array/range {v17 .. v28}, [Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-virtual {v1, v13, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    const-string/jumbo v26, "valign"

    .line 482
    .line 483
    .line 484
    const-string/jumbo v27, "width"

    .line 485
    .line 486
    .line 487
    const-string v17, "align"

    .line 488
    .line 489
    const-string v18, "background"

    .line 490
    .line 491
    const-string v19, "bgcolor"

    .line 492
    .line 493
    const-string v20, "colspan"

    .line 494
    .line 495
    const-string v21, "headers"

    .line 496
    .line 497
    const-string v22, "height"

    .line 498
    .line 499
    const-string v23, "nowrap"

    .line 500
    .line 501
    const-string v24, "rowspan"

    .line 502
    .line 503
    const-string v25, "scope"

    .line 504
    .line 505
    filled-new-array/range {v17 .. v27}, [Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    invoke-virtual {v1, v8, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    const-string v2, "map"

    .line 513
    .line 514
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    invoke-virtual {v1, v2, v3}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    const-string v2, "coords"

    .line 522
    .line 523
    const-string v3, "alt"

    .line 524
    .line 525
    const-string v8, "shape"

    .line 526
    .line 527
    filled-new-array {v8, v2, v4, v3}, [Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    const-string v3, "area"

    .line 532
    .line 533
    invoke-virtual {v1, v3, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    filled-new-array {v10, v14}, [Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-virtual {v1, v3, v4, v2}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    const-string/jumbo v2, "usemap"

    .line 544
    .line 545
    .line 546
    filled-new-array {v2}, [Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    invoke-virtual {v1, v9, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    const-string v2, "id"

    .line 554
    .line 555
    const-string v3, "dir"

    .line 556
    .line 557
    const-string v8, "class"

    .line 558
    .line 559
    const-string v11, "style"

    .line 560
    .line 561
    filled-new-array {v8, v11, v2, v3}, [Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    const-string v3, ":all"

    .line 566
    .line 567
    invoke-virtual {v1, v3, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    const-string v2, "cid"

    .line 571
    .line 572
    const-string v3, "data"

    .line 573
    .line 574
    filled-new-array {v10, v14, v2, v3}, [Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    invoke-virtual {v1, v9, v7, v2}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    filled-new-array {v6, v10, v14, v15}, [Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-static {v5}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    invoke-static {v4}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    invoke-static {v5}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    .line 592
    .line 593
    .line 594
    move-result-object v3

    .line 595
    new-instance v5, Lorg/jsoup/safety/Safelist$AttributeKey;

    .line 596
    .line 597
    invoke-static {v4}, Lorg/jsoup/internal/Functions;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v4

    .line 601
    invoke-direct {v5, v4}, Lorg/jsoup/safety/Safelist$TypedValue;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    iget-object v4, v1, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/HashMap;

    .line 605
    .line 606
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    move-result v6

    .line 610
    const-string v7, "Cannot remove a protocol that is not set."

    .line 611
    .line 612
    invoke-static {v7, v6}, Lorg/jsoup/helper/Validate;->isTrue(Ljava/lang/String;Z)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v6

    .line 619
    check-cast v6, Ljava/util/Map;

    .line 620
    .line 621
    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result v8

    .line 625
    invoke-static {v7, v8}, Lorg/jsoup/helper/Validate;->isTrue(Ljava/lang/String;Z)V

    .line 626
    .line 627
    .line 628
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v7

    .line 632
    check-cast v7, Ljava/util/Set;

    .line 633
    .line 634
    const/4 v8, 0x0

    .line 635
    :goto_0
    const/4 v9, 0x4

    .line 636
    if-ge v8, v9, :cond_0

    .line 637
    .line 638
    aget-object v9, v2, v8

    .line 639
    .line 640
    invoke-static {v9}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    new-instance v10, Lorg/jsoup/safety/Safelist$Protocol;

    .line 644
    .line 645
    invoke-direct {v10, v9}, Lorg/jsoup/safety/Safelist$TypedValue;-><init>(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    invoke-interface {v7, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    add-int/lit8 v8, v8, 0x1

    .line 652
    .line 653
    goto :goto_0

    .line 654
    :cond_0
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    .line 655
    .line 656
    .line 657
    move-result v2

    .line 658
    if-eqz v2, :cond_1

    .line 659
    .line 660
    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    .line 664
    .line 665
    .line 666
    move-result v2

    .line 667
    if-eqz v2, :cond_1

    .line 668
    .line 669
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    :cond_1
    new-instance v2, Lorg/jsoup/safety/Cleaner;

    .line 673
    .line 674
    invoke-direct {v2, v1}, Lorg/jsoup/safety/Cleaner;-><init>(Ljava/lang/Object;)V

    .line 675
    .line 676
    .line 677
    iput-object v2, v0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 678
    .line 679
    return-void

    .line 680
    :pswitch_1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 681
    .line 682
    .line 683
    new-instance v1, Ljava/util/ArrayList;

    .line 684
    .line 685
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .line 687
    .line 688
    iput-object v1, v0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 689
    .line 690
    new-instance v1, Ljava/util/HashMap;

    .line 691
    .line 692
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 693
    .line 694
    .line 695
    iput-object v1, v0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 696
    .line 697
    return-void

    .line 698
    :pswitch_2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 699
    .line 700
    .line 701
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 702
    .line 703
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 704
    .line 705
    .line 706
    iput-object v1, v0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 707
    .line 708
    new-instance v1, Landroidx/collection/ArrayMap;

    .line 709
    .line 710
    const/4 v2, 0x0

    .line 711
    invoke-direct {v1, v2}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 712
    .line 713
    .line 714
    iput-object v1, v0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 715
    .line 716
    return-void

    .line 717
    :pswitch_3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 718
    .line 719
    .line 720
    new-instance v1, Lcom/bumptech/glide/util/LruCache;

    .line 721
    .line 722
    const-wide/16 v2, 0x3e8

    .line 723
    .line 724
    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/util/LruCache;-><init>(J)V

    .line 725
    .line 726
    .line 727
    iput-object v1, v0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 728
    .line 729
    new-instance v1, Landroidx/transition/Transition$1;

    .line 730
    .line 731
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 732
    .line 733
    .line 734
    const/16 v2, 0xa

    .line 735
    .line 736
    invoke-static {v2, v1}, Lcom/bumptech/glide/util/pool/FactoryPools;->threadSafe(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Lcom/fsck/k9/backend/imap/ImapSync;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    iput-object v1, v0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 741
    .line 742
    return-void

    .line 743
    :pswitch_4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 744
    .line 745
    .line 746
    new-instance v1, Ljava/util/HashMap;

    .line 747
    .line 748
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 749
    .line 750
    .line 751
    iput-object v1, v0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 752
    .line 753
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;

    .line 754
    .line 755
    const/4 v2, 0x0

    .line 756
    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;-><init>(I)V

    .line 757
    .line 758
    .line 759
    iput-object v1, v0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 760
    .line 761
    return-void

    .line 762
    :pswitch_5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 763
    .line 764
    .line 765
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 766
    .line 767
    const/4 v2, 0x0

    .line 768
    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 769
    .line 770
    .line 771
    iput-object v1, v0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 772
    .line 773
    new-instance v1, Ljava/util/HashMap;

    .line 774
    .line 775
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 776
    .line 777
    .line 778
    iput-object v1, v0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 779
    .line 780
    return-void

    .line 781
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 782
    iput p1, p0, Lcom/beetstra/jutf7/Base64Util;->$r8$classId:I

    iput-object p2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    iput-object p3, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 781
    iput p1, p0, Lcom/beetstra/jutf7/Base64Util;->$r8$classId:I

    iput-object p2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    iput-object p3, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase$closeBarrier$1;)V
    .locals 1

    const/4 p1, 0x1

    iput p1, p0, Lcom/beetstra/jutf7/Base64Util;->$r8$classId:I

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 797
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/savedstate/internal/SavedStateRegistryImpl;I)V
    .locals 1

    iput p2, p0, Lcom/beetstra/jutf7/Base64Util;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    return-void

    .line 784
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 785
    new-instance p2, Lcom/beetstra/jutf7/Base64Util;

    const/4 v0, 0x3

    invoke-direct {p2, p1, v0}, Lcom/beetstra/jutf7/Base64Util;-><init>(Landroidx/savedstate/internal/SavedStateRegistryImpl;I)V

    iput-object p2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/beetstra/jutf7/Base64Util;->$r8$classId:I

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 825
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/Data$Builder;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/beetstra/jutf7/Base64Util;->$r8$classId:I

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 814
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/Processor;Lokhttp3/Dispatcher;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/beetstra/jutf7/Base64Util;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 800
    iput-object p2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lcom/beetstra/jutf7/Base64Util;->$r8$classId:I

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 817
    new-instance p1, Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v0, 0x2

    .line 818
    invoke-direct {p1, v0}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(I)V

    const/4 v0, 0x0

    .line 819
    iput v0, p1, Lcom/jcraft/jzlib/Deflate$Config;->good_length:I

    .line 820
    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V
    .locals 1

    const/16 v0, 0x15

    iput v0, p0, Lcom/beetstra/jutf7/Base64Util;->$r8$classId:I

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 788
    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 1

    const/16 v0, 0x18

    iput v0, p0, Lcom/beetstra/jutf7/Base64Util;->$r8$classId:I

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 827
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/activity/MessageLoaderHelper;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Lcom/beetstra/jutf7/Base64Util;->$r8$classId:I

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .locals 0

    const/4 p1, 0x6

    iput p1, p0, Lcom/beetstra/jutf7/Base64Util;->$r8$classId:I

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    iput-object p2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    iput-object p3, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    iput p2, p0, Lcom/beetstra/jutf7/Base64Util;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 803
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x40

    if-ne p2, v0, :cond_2

    const/16 p1, 0x80

    .line 804
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 805
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([II)V

    const/4 p2, 0x0

    .line 806
    :goto_0
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    check-cast v0, [C

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 807
    aget-char v0, v0, p2

    if-ge v0, p1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    check-cast v1, [I

    aput p2, v1, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 809
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuffer;

    const-string p2, "invalid character in alphabet: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    .line 810
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "alphabet has incorrect length (should be 64, not "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 811
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    const-string p2, ".lck"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/beetstra/jutf7/Base64Util;->$r8$classId:I

    .line 789
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 790
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 791
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 794
    iput-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/activity/MessageCompose;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/fsck/k9/activity/MessageCompose;->attachmentsView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v3, 0x7f0c02c6

    .line 16
    .line 17
    .line 18
    iget-object v4, v0, Lcom/fsck/k9/activity/MessageCompose;->attachmentsView:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v3, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Ljava/util/HashMap;

    .line 27
    .line 28
    iget-object v4, p1, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 29
    .line 30
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const v3, 0x7f090088

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    new-instance v4, Lcom/fsck/k9/activity/MessageCompose$13$1;

    .line 41
    .line 42
    invoke-direct {v4, v2, p0, p1}, Lcom/fsck/k9/activity/MessageCompose$13$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/beetstra/jutf7/Base64Util;->updateAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, v0, Lcom/fsck/k9/activity/MessageCompose;->attachmentsView:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public archiveMessages(Ljava/util/List;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda0;-><init>(Lcom/beetstra/jutf7/Base64Util;I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;

    .line 8
    .line 9
    const-string v3, "archiveMessages"

    .line 10
    .line 11
    invoke-direct {v2, p0, v3, v0, v1}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/16 v1, 0x14

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lcom/fsck/k9/controller/MessagingController;

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->actOnMessagesGroupedByAccountAndFolder(Ljava/util/List;Lcom/fsck/k9/controller/MessagingController$MessageActor;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public block$room_runtime_release()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
.end method

.method public calculateHexStringDigest(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fsck/k9/backend/imap/ImapSync;->acquire()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;

    .line 10
    .line 11
    :try_start_0
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;->messageDigest:Ljava/security/MessageDigest;

    .line 12
    .line 13
    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, v0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;->messageDigest:Ljava/security/MessageDigest;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v1, Lcom/bumptech/glide/util/Util;->SHA_256_CHARS:[C

    .line 23
    .line 24
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    :try_start_1
    array-length v3, p1

    .line 27
    if-ge v2, v3, :cond_0

    .line 28
    .line 29
    aget-byte v3, p1, v2

    .line 30
    .line 31
    and-int/lit16 v4, v3, 0xff

    .line 32
    .line 33
    mul-int/lit8 v5, v2, 0x2

    .line 34
    .line 35
    sget-object v6, Lcom/bumptech/glide/util/Util;->HEX_CHAR_ARRAY:[C

    .line 36
    .line 37
    ushr-int/lit8 v4, v4, 0x4

    .line 38
    .line 39
    aget-char v4, v6, v4

    .line 40
    .line 41
    aput-char v4, v1, v5

    .line 42
    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    and-int/lit8 v3, v3, 0xf

    .line 46
    .line 47
    aget-char v3, v6, v3

    .line 48
    .line 49
    aput-char v3, v1, v5

    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    .line 57
    .line 58
    .line 59
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->release(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    :catchall_1
    move-exception p1

    .line 72
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/fsck/k9/backend/imap/ImapSync;->release(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method public consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->isRestored:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->restoredState:Landroid/os/Bundle;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p1}, Landroidx/work/OperationKt;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_2
    move-object v2, v1

    .line 33
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    iput-object v1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->restoredState:Landroid/os/Bundle;

    .line 43
    .line 44
    :cond_3
    return-object v2

    .line 45
    :cond_4
    const-string p0, "You can \'consumeRestoredStateForKey\' only after the corresponding component has moved to the \'CREATED\' state"

    .line 46
    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v1
.end method

.method public contains(Landroidx/work/impl/model/WorkGenerationalId;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Landroidx/work/Data$Builder;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0

    .line 18
    throw p0
.end method

.method public encode(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    .line 6
    .line 7
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 22
    .line 23
    invoke-direct {v1, p1, p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->encode(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public fetchAutoconfig(Lokhttp3/HttpUrl;Lnet/thunderbird/core/common/mail/EmailAddress;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p3, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;->label:I

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
    iput v1, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;-><init>(Lcom/beetstra/jutf7/Base64Util;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;->label:I

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
    iget-object p1, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;->L$0:Lokhttp3/HttpUrl;

    .line 41
    .line 42
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :catch_0
    move-exception p0

    .line 47
    goto :goto_4

    .line 48
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_2
    iget-object p2, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;->L$1:Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 55
    .line 56
    iget-object p1, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;->L$0:Lokhttp3/HttpUrl;

    .line 57
    .line 58
    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :try_start_2
    iget-object p3, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p3, Landroidx/work/Configuration$Builder;

    .line 68
    .line 69
    iput-object p1, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;->L$0:Lokhttp3/HttpUrl;

    .line 70
    .line 71
    iput-object p2, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;->L$1:Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 72
    .line 73
    iput v4, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;->label:I

    .line 74
    .line 75
    invoke-virtual {p3, p1, v0}, Landroidx/work/Configuration$Builder;->fetch(Lokhttp3/HttpUrl;Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    if-ne p3, v5, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    :goto_1
    check-cast p3, Lapp/k9mail/autodiscovery/autoconfig/HttpFetchResult;

    .line 83
    .line 84
    instance-of v1, p3, Lapp/k9mail/autodiscovery/autoconfig/HttpFetchResult$SuccessResponse;

    .line 85
    .line 86
    if-eqz v1, :cond_6

    .line 87
    .line 88
    check-cast p3, Lapp/k9mail/autodiscovery/autoconfig/HttpFetchResult$SuccessResponse;

    .line 89
    .line 90
    iput-object p1, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;->L$0:Lokhttp3/HttpUrl;

    .line 91
    .line 92
    iput-object v2, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;->L$1:Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 93
    .line 94
    iput v3, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$fetchAutoconfig$1;->label:I

    .line 95
    .line 96
    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/beetstra/jutf7/Base64Util;->parseSettings(Lapp/k9mail/autodiscovery/autoconfig/HttpFetchResult$SuccessResponse;Lnet/thunderbird/core/common/mail/EmailAddress;Lokhttp3/HttpUrl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    if-ne p3, v5, :cond_5

    .line 101
    .line 102
    :goto_2
    return-object v5

    .line 103
    :cond_5
    :goto_3
    check-cast p3, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult;

    .line 104
    .line 105
    return-object p3

    .line 106
    :cond_6
    instance-of p0, p3, Lapp/k9mail/autodiscovery/autoconfig/HttpFetchResult$ErrorResponse;

    .line 107
    .line 108
    if-eqz p0, :cond_7

    .line 109
    .line 110
    sget-object p0, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$NoUsableSettingsFound;->INSTANCE:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$NoUsableSettingsFound;

    .line 111
    .line 112
    return-object p0

    .line 113
    :cond_7
    new-instance p0, Lorg/jsoup/SerializationException;

    .line 114
    .line 115
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 116
    .line 117
    .line 118
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 119
    :goto_4
    new-array p2, v4, [Ljava/lang/Object;

    .line 120
    .line 121
    const/4 p3, 0x0

    .line 122
    aput-object p1, p2, p3

    .line 123
    .line 124
    const-string p1, "Error fetching Autoconfig from URL: %s"

    .line 125
    .line 126
    invoke-static {p0, p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$NetworkError;

    .line 130
    .line 131
    invoke-direct {p1, p0}, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$NetworkError;-><init>(Ljava/io/IOException;)V

    .line 132
    .line 133
    .line 134
    return-object p1
.end method

.method public findOneViewWithinBoundFlags(IIII)Landroid/view/View;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/jcraft/jzlib/Deflate$Config;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;

    .line 8
    .line 9
    iget v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;->$r8$classId:I

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;->this$0:Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :pswitch_0
    iget-object v1, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;->this$0:Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :goto_0
    iget v2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;->$r8$classId:I

    .line 28
    .line 29
    packed-switch v2, :pswitch_data_1

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;->this$0:Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;

    .line 33
    .line 34
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    :goto_1
    sub-int/2addr v3, v2

    .line 41
    goto :goto_2

    .line 42
    :pswitch_1
    iget-object v2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;->this$0:Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;

    .line 43
    .line 44
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 45
    .line 46
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    goto :goto_1

    .line 51
    :goto_2
    if-le p2, p1, :cond_0

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    goto :goto_3

    .line 55
    :cond_0
    const/4 v2, -0x1

    .line 56
    :goto_3
    const/4 v4, 0x0

    .line 57
    :goto_4
    if-eq p1, p2, :cond_3

    .line 58
    .line 59
    iget v5, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;->$r8$classId:I

    .line 60
    .line 61
    packed-switch v5, :pswitch_data_2

    .line 62
    .line 63
    .line 64
    iget-object v5, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;->this$0:Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;

    .line 65
    .line 66
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    goto :goto_5

    .line 71
    :pswitch_2
    iget-object v5, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;->this$0:Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;

    .line 72
    .line 73
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    :goto_5
    iget v6, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;->$r8$classId:I

    .line 78
    .line 79
    packed-switch v6, :pswitch_data_3

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 87
    .line 88
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 93
    .line 94
    :goto_6
    sub-int/2addr v7, v6

    .line 95
    goto :goto_7

    .line 96
    :pswitch_3
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 101
    .line 102
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :goto_7
    iget v6, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;->$r8$classId:I

    .line 110
    .line 111
    packed-switch v6, :pswitch_data_4

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 119
    .line 120
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 125
    .line 126
    :goto_8
    add-int/2addr v8, v6

    .line 127
    goto :goto_9

    .line 128
    :pswitch_4
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 133
    .line 134
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 139
    .line 140
    goto :goto_8

    .line 141
    :goto_9
    iput v1, v0, Lcom/jcraft/jzlib/Deflate$Config;->max_lazy:I

    .line 142
    .line 143
    iput v3, v0, Lcom/jcraft/jzlib/Deflate$Config;->nice_length:I

    .line 144
    .line 145
    iput v7, v0, Lcom/jcraft/jzlib/Deflate$Config;->max_chain:I

    .line 146
    .line 147
    iput v8, v0, Lcom/jcraft/jzlib/Deflate$Config;->func:I

    .line 148
    .line 149
    if-eqz p3, :cond_1

    .line 150
    .line 151
    iput p3, v0, Lcom/jcraft/jzlib/Deflate$Config;->good_length:I

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflate$Config;->boundsMatch()Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_1

    .line 158
    .line 159
    return-object v5

    .line 160
    :cond_1
    if-eqz p4, :cond_2

    .line 161
    .line 162
    iput p4, v0, Lcom/jcraft/jzlib/Deflate$Config;->good_length:I

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflate$Config;->boundsMatch()Z

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    if-eqz v6, :cond_2

    .line 169
    .line 170
    move-object v4, v5

    .line 171
    :cond_2
    add-int/2addr p1, v2

    .line 172
    goto :goto_4

    .line 173
    :cond_3
    return-object v4

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public get(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;->offer()V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 26
    .line 27
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 28
    .line 29
    iput-object v0, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 30
    .line 31
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 32
    .line 33
    iput-object p1, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 38
    .line 39
    iput-object p0, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 42
    .line 43
    iput-object p0, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 46
    .line 47
    iget-object p0, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 50
    .line 51
    iget-object p0, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->values:Ljava/util/ArrayList;

    .line 52
    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 p0, 0x0

    .line 61
    :goto_1
    if-lez p0, :cond_2

    .line 62
    .line 63
    iget-object p1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->values:Ljava/util/ArrayList;

    .line 64
    .line 65
    add-int/lit8 p0, p0, -0x1

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_2
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method public getEncodeStrategy(Lcom/bumptech/glide/load/Options;)I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public declared-synchronized getOrAddEntryList(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/List;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :cond_1
    monitor-exit p0

    .line 47
    return-object v0

    .line 48
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1
.end method

.method public declared-synchronized getResourceClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_4

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/List;

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;

    .line 55
    .line 56
    iget-object v4, v3, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->dataClass:Ljava/lang/Class;

    .line 57
    .line 58
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    iget-object v4, v3, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->resourceClass:Ljava/lang/Class;

    .line 65
    .line 66
    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    const/4 v4, 0x0

    .line 75
    :goto_2
    if-eqz v4, :cond_2

    .line 76
    .line 77
    iget-object v4, v3, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->resourceClass:Ljava/lang/Class;

    .line 78
    .line 79
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_2

    .line 84
    .line 85
    iget-object v3, v3, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->resourceClass:Ljava/lang/Class;

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    monitor-exit p0

    .line 94
    return-object v0

    .line 95
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p1
.end method

.method public getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/bumptech/glide/util/LruCache;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lcom/bumptech/glide/util/LruCache;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/beetstra/jutf7/Base64Util;->calculateHexStringDigest(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v2, v0

    .line 26
    check-cast v2, Lcom/bumptech/glide/util/LruCache;

    .line 27
    .line 28
    monitor-enter v2

    .line 29
    :try_start_1
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Lcom/bumptech/glide/util/LruCache;

    .line 32
    .line 33
    invoke-virtual {p0, p1, v1}, Lcom/bumptech/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    monitor-exit v2

    .line 37
    return-object v1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    throw p0
.end method

.method public getSavedStateProvider(Ljava/lang/String;)Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->lock:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->keyToProviders:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 42
    .line 43
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    move-object v2, v1

    .line 50
    :cond_1
    if-eqz v2, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    monitor-exit v0

    .line 56
    return-object v2

    .line 57
    :goto_1
    monitor-exit v0

    .line 58
    throw p0
.end method

.method public lock()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/nio/channels/FileChannel;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/io/FileOutputStream;)Ljava/nio/channels/FileChannel;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    return-void

    .line 46
    :goto_2
    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Ljava/nio/channels/FileChannel;

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 53
    .line 54
    .line 55
    :cond_3
    const/4 v2, 0x0

    .line 56
    iput-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 57
    .line 58
    const-string p0, "Unable to lock file: \'"

    .line 59
    .line 60
    const-string v2, "\'."

    .line 61
    .line 62
    invoke-static {p0, v0, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0, v1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iput p2, p0, Landroid/graphics/Rect;->left:I

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iput p2, p0, Landroid/graphics/Rect;->right:I

    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    const/4 v1, 0x0

    .line 51
    :goto_0
    if-ge v1, p2, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2, p1}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 66
    .line 67
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iput v3, p0, Landroid/graphics/Rect;->left:I

    .line 72
    .line 73
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    iget v4, p0, Landroid/graphics/Rect;->top:I

    .line 78
    .line 79
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    iput v3, p0, Landroid/graphics/Rect;->top:I

    .line 84
    .line 85
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 90
    .line 91
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    iput v3, p0, Landroid/graphics/Rect;->right:I

    .line 96
    .line 97
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    .line 102
    .line 103
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 108
    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 113
    .line 114
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 115
    .line 116
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 117
    .line 118
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 119
    .line 120
    invoke-virtual {p1, p2, v0, v1, p0}, Landroidx/core/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroidx/core/view/WindowInsetsCompat;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/AsyncTaskLoader;
    .locals 2

    .line 1
    const/4 p2, 0x2

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->context:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->localMessage:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageCryptoAnnotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageLoaderHelper;->messageViewInfoExtractor:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 17
    .line 18
    invoke-direct {p1, p2, v0, v1, p0}, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;-><init>(Landroid/content/Context;Lcom/fsck/k9/mailstore/LocalMessage;Lcom/bumptech/glide/load/engine/Jobs;Lcom/fsck/k9/backend/imap/ImapSync;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const-string p0, "loader id must be message decoder id"

    .line 23
    .line 24
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public onDataReady(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/bumptech/glide/load/engine/SourceGenerator;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/bumptech/glide/load/engine/SourceGenerator;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeHelper;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 30
    .line 31
    invoke-interface {v2}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;->isDataCacheable(I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iput-object p1, v0, Lcom/bumptech/glide/load/engine/SourceGenerator;->dataToCache:Ljava/lang/Object;

    .line 42
    .line 43
    iget-object p0, v0, Lcom/bumptech/glide/load/engine/SourceGenerator;->cb:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 44
    .line 45
    const/4 p1, 0x2

    .line 46
    iput p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:I

    .line 47
    .line 48
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/EngineJob;

    .line 49
    .line 50
    iget-boolean v0, p1, Lcom/bumptech/glide/load/engine/EngineJob;->useAnimationPool:Z

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object p1, p1, Lcom/bumptech/glide/load/engine/EngineJob;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p1, Lcom/bumptech/glide/load/engine/EngineJob;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 58
    .line 59
    :goto_0
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->execute(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    move-object v1, v0

    .line 64
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/SourceGenerator;->cb:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 65
    .line 66
    move-object v2, v1

    .line 67
    iget-object v1, p0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 68
    .line 69
    iget-object v3, p0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 70
    .line 71
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    iget-object v5, v2, Lcom/bumptech/glide/load/engine/SourceGenerator;->originalKey:Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 76
    .line 77
    move-object v2, p1

    .line 78
    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/DecodeJob;->onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;ILcom/bumptech/glide/load/Key;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public onDecodeComplete(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->exception:Ljava/io/IOException;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    throw p0

    .line 15
    :cond_1
    return-void
.end method

.method public onDownloadErrorMessageNotFound()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/activity/MessageCompose;

    .line 4
    .line 5
    new-instance v1, Lcom/fsck/k9/activity/MessageCompose$MessageComposeMessageLoaderCallback$1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/fsck/k9/activity/MessageCompose$MessageComposeMessageLoaderCallback$1;-><init>(Lcom/beetstra/jutf7/Base64Util;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onDownloadErrorNetworkError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/activity/MessageCompose;

    .line 4
    .line 5
    new-instance v1, Lcom/fsck/k9/activity/MessageCompose$MessageComposeMessageLoaderCallback$1;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/fsck/k9/activity/MessageCompose$MessageComposeMessageLoaderCallback$1;-><init>(Lcom/beetstra/jutf7/Base64Util;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/bumptech/glide/load/engine/SourceGenerator;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/bumptech/glide/load/engine/SourceGenerator;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/SourceGenerator;->cb:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/SourceGenerator;->originalKey:Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 28
    .line 29
    invoke-interface {p0}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v1, v0, p1, p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/AsyncTaskLoader;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 2
    .line 3
    iget p1, p1, Landroidx/loader/content/AsyncTaskLoader;->mId:I

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p1, v0, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 11
    .line 12
    if-ne p2, p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iput-object p2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lcom/fsck/k9/activity/MessageLoaderHelper;

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lcom/fsck/k9/activity/MessageLoaderHelper;->onDecodeMessageFinished(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const-string p0, "loader id must be message decoder id"

    .line 26
    .line 27
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/AsyncTaskLoader;)V
    .locals 1

    .line 1
    iget p1, p1, Landroidx/loader/content/AsyncTaskLoader;->mId:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p0, "loader id must be message decoder id"

    .line 11
    .line 12
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onMessageDataLoadFailed()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->internalMessageHandler:Lcom/fsck/k9/activity/MessageCompose$14;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    .line 10
    .line 11
    const v0, 0x7f120621

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onMessageDataLoadFinished(Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onMessageViewInfoLoadFailed(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->internalMessageHandler:Lcom/fsck/k9/activity/MessageCompose$14;

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    .line 10
    .line 11
    const p1, 0x7f120621

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onMessageViewInfoLoadFinished(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/activity/MessageCompose;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/fsck/k9/activity/MessageCompose;->internalMessageHandler:Lcom/fsck/k9/activity/MessageCompose$14;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/activity/MessageCompose;->loadLocalMessageForDisplay(Lcom/fsck/k9/mailstore/MessageViewInfo;Lcom/fsck/k9/activity/MessageCompose$Action;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, v0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 17
    .line 18
    iget-boolean p1, p1, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isToAddressAdded:Z

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object p0, v0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_1

    .line 43
    .line 44
    iget-object p0, v0, Lcom/fsck/k9/activity/MessageCompose;->subjectView:Landroid/widget/EditText;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object p0, v0, Lcom/fsck/k9/activity/MessageCompose;->messageContentView:Landroid/widget/EditText;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public onObtainBounds()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->buf:[B

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->marklimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance p1, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Failure;

    .line 4
    .line 5
    invoke-direct {p1, p2}, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Failure;-><init>(Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    new-instance p2, Lnet/openid/appauth/AuthState;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lnet/openid/appauth/AuthorizationResponse;

    .line 16
    .line 17
    invoke-direct {p2, v0, p1}, Lnet/openid/appauth/AuthState;-><init>(Lnet/openid/appauth/AuthorizationResponse;Lnet/openid/appauth/TokenResponse;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Success;

    .line 21
    .line 22
    :try_start_0
    new-instance v0, Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 23
    .line 24
    invoke-virtual {p2}, Lnet/openid/appauth/AuthState;->jsonSerializeString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {v0, p2}, Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p2

    .line 33
    const/4 v0, 0x0

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    const-string v1, "Error serializing AuthorizationState"

    .line 37
    .line 38
    invoke-static {p2, v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-direct {v0, p2}, Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-direct {p1, v0}, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Success;-><init>(Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Failure;

    .line 52
    .line 53
    new-instance p2, Ljava/lang/Exception;

    .line 54
    .line 55
    const-string v0, "Unknown error"

    .line 56
    .line 57
    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, p2}, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Failure;-><init>(Ljava/lang/Exception;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Lkotlin/coroutines/SafeContinuation;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lkotlin/coroutines/SafeContinuation;->resumeWith(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public parseSettings(Lapp/k9mail/autodiscovery/autoconfig/HttpFetchResult$SuccessResponse;Lnet/thunderbird/core/common/mail/EmailAddress;Lokhttp3/HttpUrl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p4, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;->label:I

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
    iput v1, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;-><init>(Lcom/beetstra/jutf7/Base64Util;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    sget-object v3, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$NoUsableSettingsFound;->INSTANCE:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$NoUsableSettingsFound;

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    if-ne v1, v4, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;->L$3:Ljava/io/InputStream;

    .line 39
    .line 40
    iget-object p3, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;->L$2:Lokhttp3/HttpUrl;

    .line 41
    .line 42
    iget-object p1, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;->L$0:Lapp/k9mail/autodiscovery/autoconfig/HttpFetchResult$SuccessResponse;

    .line 43
    .line 44
    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v5

    .line 57
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :try_start_1
    iget-object p4, p1, Lapp/k9mail/autodiscovery/autoconfig/HttpFetchResult$SuccessResponse;->inputStream:Ljava/io/InputStream;
    :try_end_1
    .catch Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    .line 62
    :try_start_2
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Lcom/jcraft/jzlib/Adler32;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 65
    .line 66
    :try_start_3
    iput-object p1, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;->L$0:Lapp/k9mail/autodiscovery/autoconfig/HttpFetchResult$SuccessResponse;

    .line 67
    .line 68
    iput-object p3, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;->L$2:Lokhttp3/HttpUrl;

    .line 69
    .line 70
    iput-object p4, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;->L$3:Ljava/io/InputStream;

    .line 71
    .line 72
    iput v4, v0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;->label:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 73
    .line 74
    :try_start_4
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 75
    .line 76
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 77
    .line 78
    new-instance v6, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 79
    .line 80
    invoke-direct {v6, p0, p4, p2}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(Lcom/jcraft/jzlib/Adler32;Ljava/io/InputStream;Lnet/thunderbird/core/common/mail/EmailAddress;)V

    .line 81
    .line 82
    .line 83
    new-instance p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 84
    .line 85
    invoke-direct {p0, v6, v5, v2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 86
    .line 87
    .line 88
    invoke-static {v1, p0, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 92
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 93
    .line 94
    if-ne p0, p2, :cond_3

    .line 95
    .line 96
    return-object p2

    .line 97
    :cond_3
    move-object v7, p4

    .line 98
    move-object p4, p0

    .line 99
    move-object p0, v7

    .line 100
    :goto_1
    :try_start_5
    check-cast p4, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserResult;

    .line 101
    .line 102
    instance-of p2, p4, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserResult$Settings;

    .line 103
    .line 104
    if-eqz p2, :cond_4

    .line 105
    .line 106
    new-instance p2, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 107
    .line 108
    move-object v0, p4

    .line 109
    check-cast v0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserResult$Settings;

    .line 110
    .line 111
    iget-object v0, v0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserResult$Settings;->incomingServerSettings:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lapp/k9mail/autodiscovery/api/ImapServerSettings;

    .line 118
    .line 119
    check-cast p4, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserResult$Settings;

    .line 120
    .line 121
    iget-object p4, p4, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserResult$Settings;->outgoingServerSettings:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p4

    .line 127
    check-cast p4, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;

    .line 128
    .line 129
    iget-boolean p1, p1, Lapp/k9mail/autodiscovery/autoconfig/HttpFetchResult$SuccessResponse;->isTrusted:Z

    .line 130
    .line 131
    iget-object v1, p3, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    .line 132
    .line 133
    invoke-direct {p2, v0, p4, p1, v1}, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;-><init>(Lapp/k9mail/autodiscovery/api/ImapServerSettings;Lapp/k9mail/autodiscovery/api/SmtpServerSettings;ZLjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    instance-of p1, p4, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserResult$ParserError;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    .line 139
    if-eqz p1, :cond_5

    .line 140
    .line 141
    move-object p2, v3

    .line 142
    :goto_2
    :try_start_6
    invoke-static {p0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException; {:try_start_6 .. :try_end_6} :catch_0

    .line 143
    .line 144
    .line 145
    return-object p2

    .line 146
    :catch_0
    move-exception p0

    .line 147
    goto :goto_6

    .line 148
    :cond_5
    :try_start_7
    new-instance p1, Lorg/jsoup/SerializationException;

    .line 149
    .line 150
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 151
    .line 152
    .line 153
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 154
    :goto_3
    move-object p1, p0

    .line 155
    goto :goto_4

    .line 156
    :catchall_1
    move-exception p0

    .line 157
    goto :goto_3

    .line 158
    :goto_4
    move-object p0, p4

    .line 159
    goto :goto_5

    .line 160
    :catchall_2
    move-exception p1

    .line 161
    goto :goto_4

    .line 162
    :catchall_3
    move-exception p0

    .line 163
    goto :goto_3

    .line 164
    :goto_5
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 165
    :catchall_4
    move-exception p2

    .line 166
    :try_start_9
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    throw p2
    :try_end_9
    .catch Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException; {:try_start_9 .. :try_end_9} :catch_0

    .line 170
    :goto_6
    new-array p1, v4, [Ljava/lang/Object;

    .line 171
    .line 172
    aput-object p3, p1, v2

    .line 173
    .line 174
    const-string p2, "Failed to parse config from URL: %s"

    .line 175
    .line 176
    invoke-static {p0, p2, p1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    return-object v3
.end method

.method public performAttach()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->performAttach()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public performRestore(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    .line 6
    .line 7
    iget-boolean v1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->attached:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->performAttach()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/lifecycle/LifecycleRegistry;

    .line 19
    .line 20
    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 21
    .line 22
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-gez v1, :cond_4

    .line 29
    .line 30
    iget-boolean v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->isRestored:Z

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    move-object v0, p1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v1}, Landroidx/work/OperationKt;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_2
    :goto_0
    iput-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->restoredState:Landroid/os/Bundle;

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->isRestored:Z

    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    const-string p0, "SavedStateRegistry was already restored."

    .line 64
    .line 65
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Landroidx/lifecycle/LifecycleRegistry;

    .line 74
    .line 75
    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 76
    .line 77
    const-string p1, "performRestore cannot be called when owner is "

    .line 78
    .line 79
    invoke-static {p0, p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public performSave(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v1, v0, [Lkotlin/Pair;

    .line 7
    .line 8
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, [Lkotlin/Pair;

    .line 13
    .line 14
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->restoredState:Landroid/os/Bundle;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->lock:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    iget-object p0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->keyToProviders:Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/util/Map$Entry;

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 61
    .line 62
    invoke-interface {v2}, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;->saveState()Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    monitor-exit v1

    .line 76
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_2

    .line 81
    .line 82
    const-string p0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 83
    .line 84
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void

    .line 88
    :goto_1
    monitor-exit v1

    .line 89
    throw p0
.end method

.method public put(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 25
    .line 26
    iput-object v2, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 27
    .line 28
    iput-object p0, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 31
    .line 32
    iget-object p0, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 35
    .line 36
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;->offer()V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object p0, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->values:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    new-instance p0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p0, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->values:Ljava/util/ArrayList;

    .line 53
    .line 54
    :cond_1
    iget-object p0, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->values:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public put(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/ArrayMap;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/ArrayMap;

    new-instance v1, Lcom/bumptech/glide/util/MultiClassKey;

    invoke-direct {v1, p1, p2, p3}, Lcom/bumptech/glide/util/MultiClassKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, p4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->lock:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->keyToProviders:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->keyToProviders:Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_1
    const-string p0, "SavedStateProvider with the given key is already registered"

    .line 29
    .line 30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :goto_0
    monitor-exit v0

    .line 37
    throw p0
.end method

.method public release(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Removed the wrong lock, expected to remove: "

    .line 2
    .line 3
    const-string v1, "Cannot release a lock that is not held, safeKey: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "Argument must not be null"

    .line 15
    .line 16
    invoke-static {v2, v3}, Lcom/bumptech/glide/util/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    .line 20
    .line 21
    iget v3, v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-lt v3, v4, :cond_2

    .line 25
    .line 26
    sub-int/2addr v3, v4

    .line 27
    iput v3, v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->offer(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, ", but actually removed: "

    .line 68
    .line 69
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, ", safeKey: "

    .line 76
    .line 77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v3

    .line 91
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object p0, v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p1, ", interestedThreads: "

    .line 109
    .line 110
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget p1, v2, Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;->interestedThreads:I

    .line 114
    .line 115
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    throw p1
.end method

.method public remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroidx/work/Data$Builder;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/work/Data$Builder;->remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit v0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0

    .line 19
    throw p0
.end method

.method public removeAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/view/View;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentsView:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentsView:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    const/16 p1, 0x8

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 6
    .line 7
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->key:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v2, :cond_3

    .line 15
    .line 16
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->values:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    :goto_1
    if-lez v2, :cond_1

    .line 27
    .line 28
    iget-object v4, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->values:Ljava/util/ArrayList;

    .line 29
    .line 30
    add-int/lit8 v2, v2, -0x1

    .line 31
    .line 32
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    :cond_1
    if-eqz v4, :cond_2

    .line 37
    .line 38
    return-object v4

    .line 39
    :cond_2
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 40
    .line 41
    iget-object v4, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 42
    .line 43
    iput-object v4, v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 44
    .line 45
    iget-object v4, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 46
    .line 47
    iput-object v2, v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    check-cast v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    .line 57
    .line 58
    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;->offer()V

    .line 59
    .line 60
    .line 61
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->prev:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    return-object v4
.end method

.method public runOnNextRecreation()V
    .locals 4

    .line 1
    const-class v0, Landroidx/lifecycle/LegacySavedStateHandleController$OnRecreation;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 6
    .line 7
    iget-boolean v1, v1, Landroidx/savedstate/internal/SavedStateRegistryImpl;->isAllowingSavingState:Z

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity$1;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Landroidx/appcompat/app/AppCompatActivity$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Landroidx/appcompat/app/AppCompatActivity$1;-><init>(Lcom/beetstra/jutf7/Base64Util;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iput-object v1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Landroidx/appcompat/app/AppCompatActivity$1;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatActivity$1;->this$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Ljava/util/LinkedHashSet;

    .line 41
    .line 42
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void

    .line 46
    :catch_0
    move-exception p0

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, "Class "

    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " must have default constructor in order to be automatically recreated"

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_2
    const-string p0, "Can not perform this action after onSaveInstanceState"

    .line 77
    .line 78
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public setLoadingProgress(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public startIntentSenderForMessageLoaderHelper(Landroid/content/IntentSender;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose;

    .line 4
    .line 5
    const/16 v0, 0x27c

    .line 6
    .line 7
    invoke-static {p0, p1, v0}, Lorg/openintents/openpgp/util/OpenPgpIntentStarter;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const/4 p1, 0x0

    .line 13
    new-array p1, p1, [Ljava/lang/Object;

    .line 14
    .line 15
    const-string v0, "Irrecoverable error calling PendingIntent!"

    .line 16
    .line 17
    invoke-static {p0, v0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public startWork(Landroidx/work/impl/StartStopToken;Landroidx/work/SystemClock;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lokhttp3/Dispatcher;

    .line 7
    .line 8
    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/16 v2, 0xe

    .line 11
    .line 12
    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    iget-object p0, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Landroidx/room/TransactionExecutor;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroidx/room/TransactionExecutor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public stopWork(Landroidx/work/impl/StartStopToken;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lokhttp3/Dispatcher;

    .line 7
    .line 8
    new-instance v1, Landroidx/work/impl/utils/StopWorkRunnable;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroidx/work/impl/Processor;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, p1, v2, p2}, Landroidx/work/impl/utils/StopWorkRunnable;-><init>(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;ZI)V

    .line 16
    .line 17
    .line 18
    iget-object p0, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroidx/room/TransactionExecutor;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroidx/room/TransactionExecutor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/beetstra/jutf7/Base64Util;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "GroupedLinkedMap( "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    const/16 v3, 0x7b

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v3, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->key:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 v3, 0x3a

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v3, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->values:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    move v3, v2

    .line 57
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string/jumbo v3, "}, "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;->next:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap$LinkedEntry;

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    if-eqz v3, :cond_2

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    add-int/lit8 p0, p0, -0x2

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :cond_2
    const-string p0, " )"

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public tokenFor(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Landroidx/work/Data$Builder;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/work/Data$Builder;->tokenFor(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0

    .line 16
    throw p0
.end method

.method public unblock$room_runtime_release()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :cond_0
    :try_start_1
    const-string v0, "Unbalanced call to unblock() detected."

    .line 22
    .line 23
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0

    .line 31
    throw v0
.end method

.method public updateAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/activity/MessageCompose;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/HashMap;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/fsck/k9/activity/misc/Attachment;->fileName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p1, Lcom/fsck/k9/activity/misc/Attachment;->size:Ljava/lang/Long;

    .line 14
    .line 15
    iget-object v4, p1, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/view/View;

    .line 22
    .line 23
    if-eqz p0, :cond_6

    .line 24
    .line 25
    const v1, 0x7f090089

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 33
    .line 34
    sget-object v5, Lcom/fsck/k9/message/Attachment$LoadingState;->URI_ONLY:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 35
    .line 36
    if-eq v4, v5, :cond_0

    .line 37
    .line 38
    iget-object v5, p1, Lcom/fsck/k9/activity/misc/Attachment;->name:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const v5, 0x7f12039d

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v5

    .line 56
    const-wide/16 v7, 0x0

    .line 57
    .line 58
    cmp-long v1, v5, v7

    .line 59
    .line 60
    if-ltz v1, :cond_1

    .line 61
    .line 62
    const v1, 0x7f09008b

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/google/android/material/textview/MaterialTextView;

    .line 70
    .line 71
    iget-object v5, v0, Lcom/fsck/k9/activity/MessageCompose;->sizeFormatter:Lcom/fsck/k9/ui/helper/SizeFormatter;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 74
    .line 75
    .line 76
    move-result-wide v6

    .line 77
    invoke-virtual {v5, v6, v7}, Lcom/fsck/k9/ui/helper/SizeFormatter;->formatSize(J)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    const v1, 0x7f09034e

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    sget-object v3, Lcom/fsck/k9/message/Attachment$LoadingState;->COMPLETE:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    if-ne v4, v3, :cond_5

    .line 95
    .line 96
    iget-object p1, p1, Lcom/fsck/k9/activity/misc/Attachment;->contentType:Ljava/lang/String;

    .line 97
    .line 98
    if-nez p1, :cond_2

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    invoke-static {p1}, Lcom/fsck/k9/helper/FileHelper;->isSupportedImageType(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_3

    .line 106
    .line 107
    const-string v3, "application/octet-stream"

    .line 108
    .line 109
    invoke-static {v3, p1}, Lcom/fsck/k9/helper/FileHelper;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    if-eqz v2, :cond_4

    .line 116
    .line 117
    invoke-static {v2}, Lcom/fsck/k9/helper/FileHelper;->getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Lcom/fsck/k9/helper/FileHelper;->isSupportedImageType(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    :cond_3
    const p1, 0x7f09008e

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Landroid/widget/ImageView;

    .line 135
    .line 136
    const v3, 0x7f0800ec

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    .line 141
    .line 142
    const p1, 0x7f09008a

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    check-cast p0, Landroid/widget/ImageView;

    .line 150
    .line 151
    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget-object p1, p1, Lcom/bumptech/glide/Glide;->requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroidx/appcompat/app/AppCompatActivity;)Lcom/bumptech/glide/RequestManager;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    new-instance v0, Ljava/io/File;

    .line 165
    .line 166
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 178
    .line 179
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 186
    .line 187
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)V

    .line 188
    .line 189
    .line 190
    :cond_4
    :goto_1
    const/16 p0, 0x8

    .line 191
    .line 192
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_5
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_6
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 201
    .line 202
    .line 203
    return-void
.end method

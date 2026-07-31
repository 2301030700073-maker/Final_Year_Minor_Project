.class public final Lorg/jsoup/parser/TagSet;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final HtmlTagSet:Lorg/jsoup/parser/TagSet;


# instance fields
.field public final customizers:Ljava/util/ArrayList;

.field public final source:Lorg/jsoup/parser/TagSet;

.field public final tags:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 73

    .line 1
    const-string v63, "listing"

    .line 2
    .line 3
    const-string v64, "#root"

    .line 4
    .line 5
    const-string v1, "html"

    .line 6
    .line 7
    const-string v2, "head"

    .line 8
    .line 9
    const-string v3, "body"

    .line 10
    .line 11
    const-string v4, "frameset"

    .line 12
    .line 13
    const-string v5, "script"

    .line 14
    .line 15
    const-string v6, "noscript"

    .line 16
    .line 17
    const-string/jumbo v7, "style"

    .line 18
    .line 19
    .line 20
    const-string v8, "meta"

    .line 21
    .line 22
    const-string v9, "link"

    .line 23
    .line 24
    const-string/jumbo v10, "title"

    .line 25
    .line 26
    .line 27
    const-string v11, "frame"

    .line 28
    .line 29
    const-string v12, "noframes"

    .line 30
    .line 31
    const-string v13, "section"

    .line 32
    .line 33
    const-string v14, "nav"

    .line 34
    .line 35
    const-string v15, "aside"

    .line 36
    .line 37
    const-string v16, "hgroup"

    .line 38
    .line 39
    const-string v17, "header"

    .line 40
    .line 41
    const-string v18, "footer"

    .line 42
    .line 43
    const-string v19, "p"

    .line 44
    .line 45
    const-string v20, "h1"

    .line 46
    .line 47
    const-string v21, "h2"

    .line 48
    .line 49
    const-string v22, "h3"

    .line 50
    .line 51
    const-string v23, "h4"

    .line 52
    .line 53
    const-string v24, "h5"

    .line 54
    .line 55
    const-string v25, "h6"

    .line 56
    .line 57
    const-string v26, "dialog"

    .line 58
    .line 59
    const-string v27, "search"

    .line 60
    .line 61
    const-string/jumbo v28, "ul"

    .line 62
    .line 63
    .line 64
    const-string v29, "ol"

    .line 65
    .line 66
    const-string v30, "pre"

    .line 67
    .line 68
    const-string v31, "div"

    .line 69
    .line 70
    const-string v32, "blockquote"

    .line 71
    .line 72
    const-string v33, "hr"

    .line 73
    .line 74
    const-string v34, "address"

    .line 75
    .line 76
    const-string v35, "figure"

    .line 77
    .line 78
    const-string v36, "figcaption"

    .line 79
    .line 80
    const-string v37, "form"

    .line 81
    .line 82
    const-string v38, "fieldset"

    .line 83
    .line 84
    const-string v39, "dl"

    .line 85
    .line 86
    const-string v40, "dt"

    .line 87
    .line 88
    const-string v41, "dd"

    .line 89
    .line 90
    const-string v42, "li"

    .line 91
    .line 92
    const-string/jumbo v43, "table"

    .line 93
    .line 94
    .line 95
    const-string v44, "caption"

    .line 96
    .line 97
    const-string/jumbo v45, "thead"

    .line 98
    .line 99
    .line 100
    const-string/jumbo v46, "tfoot"

    .line 101
    .line 102
    .line 103
    const-string/jumbo v47, "tbody"

    .line 104
    .line 105
    .line 106
    const-string v48, "colgroup"

    .line 107
    .line 108
    const-string v49, "col"

    .line 109
    .line 110
    const-string/jumbo v50, "tr"

    .line 111
    .line 112
    .line 113
    const-string/jumbo v51, "th"

    .line 114
    .line 115
    .line 116
    const-string/jumbo v52, "td"

    .line 117
    .line 118
    .line 119
    const-string v53, "details"

    .line 120
    .line 121
    const-string v54, "menu"

    .line 122
    .line 123
    const-string v55, "plaintext"

    .line 124
    .line 125
    const-string/jumbo v56, "template"

    .line 126
    .line 127
    .line 128
    const-string v57, "article"

    .line 129
    .line 130
    const-string v58, "main"

    .line 131
    .line 132
    const-string v59, "center"

    .line 133
    .line 134
    const-string v60, "dir"

    .line 135
    .line 136
    const-string v61, "applet"

    .line 137
    .line 138
    const-string v62, "marquee"

    .line 139
    .line 140
    filled-new-array/range {v1 .. v64}, [Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string/jumbo v71, "slot"

    .line 145
    .line 146
    .line 147
    const-string v72, "rb"

    .line 148
    .line 149
    const-string v1, "object"

    .line 150
    .line 151
    const-string v2, "base"

    .line 152
    .line 153
    const-string v3, "font"

    .line 154
    .line 155
    const-string/jumbo v4, "tt"

    .line 156
    .line 157
    .line 158
    const-string v5, "i"

    .line 159
    .line 160
    const-string v6, "b"

    .line 161
    .line 162
    const-string/jumbo v7, "u"

    .line 163
    .line 164
    .line 165
    const-string v8, "big"

    .line 166
    .line 167
    const-string/jumbo v9, "small"

    .line 168
    .line 169
    .line 170
    const-string v10, "em"

    .line 171
    .line 172
    const-string/jumbo v11, "strong"

    .line 173
    .line 174
    .line 175
    const-string v12, "dfn"

    .line 176
    .line 177
    const-string v13, "code"

    .line 178
    .line 179
    const-string v14, "samp"

    .line 180
    .line 181
    const-string v15, "kbd"

    .line 182
    .line 183
    const-string/jumbo v16, "var"

    .line 184
    .line 185
    .line 186
    const-string v17, "cite"

    .line 187
    .line 188
    const-string v18, "abbr"

    .line 189
    .line 190
    const-string/jumbo v19, "time"

    .line 191
    .line 192
    .line 193
    const-string v20, "acronym"

    .line 194
    .line 195
    const-string v21, "mark"

    .line 196
    .line 197
    const-string v22, "ruby"

    .line 198
    .line 199
    const-string v23, "rt"

    .line 200
    .line 201
    const-string v24, "rp"

    .line 202
    .line 203
    const-string v25, "rtc"

    .line 204
    .line 205
    const-string v26, "a"

    .line 206
    .line 207
    const-string v27, "img"

    .line 208
    .line 209
    const-string/jumbo v28, "wbr"

    .line 210
    .line 211
    .line 212
    const-string v29, "map"

    .line 213
    .line 214
    const-string v30, "q"

    .line 215
    .line 216
    const-string/jumbo v31, "sub"

    .line 217
    .line 218
    .line 219
    const-string/jumbo v32, "sup"

    .line 220
    .line 221
    .line 222
    const-string v33, "bdo"

    .line 223
    .line 224
    const-string v34, "iframe"

    .line 225
    .line 226
    const-string v35, "embed"

    .line 227
    .line 228
    const-string/jumbo v36, "span"

    .line 229
    .line 230
    .line 231
    const-string v37, "input"

    .line 232
    .line 233
    const-string v38, "select"

    .line 234
    .line 235
    const-string/jumbo v39, "textarea"

    .line 236
    .line 237
    .line 238
    const-string v40, "label"

    .line 239
    .line 240
    const-string v41, "audio"

    .line 241
    .line 242
    const-string/jumbo v42, "video"

    .line 243
    .line 244
    .line 245
    const-string v43, "canvas"

    .line 246
    .line 247
    const-string v44, "optgroup"

    .line 248
    .line 249
    const-string v45, "option"

    .line 250
    .line 251
    const-string v46, "legend"

    .line 252
    .line 253
    const-string v47, "datalist"

    .line 254
    .line 255
    const-string v48, "keygen"

    .line 256
    .line 257
    const-string v49, "output"

    .line 258
    .line 259
    const-string v50, "progress"

    .line 260
    .line 261
    const-string v51, "meter"

    .line 262
    .line 263
    const-string v52, "area"

    .line 264
    .line 265
    const-string v53, "param"

    .line 266
    .line 267
    const-string/jumbo v54, "source"

    .line 268
    .line 269
    .line 270
    const-string/jumbo v55, "track"

    .line 271
    .line 272
    .line 273
    const-string/jumbo v56, "summary"

    .line 274
    .line 275
    .line 276
    const-string v57, "command"

    .line 277
    .line 278
    const-string v58, "device"

    .line 279
    .line 280
    const-string v59, "basefont"

    .line 281
    .line 282
    const-string v60, "bgsound"

    .line 283
    .line 284
    const-string v61, "menuitem"

    .line 285
    .line 286
    const-string v62, "data"

    .line 287
    .line 288
    const-string v63, "bdi"

    .line 289
    .line 290
    const-string v64, "s"

    .line 291
    .line 292
    const-string/jumbo v65, "strike"

    .line 293
    .line 294
    .line 295
    const-string v66, "nobr"

    .line 296
    .line 297
    const-string v67, "ins"

    .line 298
    .line 299
    const-string v68, "del"

    .line 300
    .line 301
    const-string v69, "button"

    .line 302
    .line 303
    const-string v70, "picture"

    .line 304
    .line 305
    filled-new-array/range {v1 .. v72}, [Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    const-string v15, "script"

    .line 310
    .line 311
    const-string/jumbo v16, "style"

    .line 312
    .line 313
    .line 314
    const-string/jumbo v2, "title"

    .line 315
    .line 316
    .line 317
    const-string v3, "p"

    .line 318
    .line 319
    const-string v4, "h1"

    .line 320
    .line 321
    const-string v5, "h2"

    .line 322
    .line 323
    const-string v6, "h3"

    .line 324
    .line 325
    const-string v7, "h4"

    .line 326
    .line 327
    const-string v8, "h5"

    .line 328
    .line 329
    const-string v9, "h6"

    .line 330
    .line 331
    const-string v10, "pre"

    .line 332
    .line 333
    const-string v11, "address"

    .line 334
    .line 335
    const-string v12, "li"

    .line 336
    .line 337
    const-string/jumbo v13, "th"

    .line 338
    .line 339
    .line 340
    const-string/jumbo v14, "td"

    .line 341
    .line 342
    .line 343
    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    const-string/jumbo v22, "source"

    .line 348
    .line 349
    .line 350
    const-string/jumbo v23, "track"

    .line 351
    .line 352
    .line 353
    const-string v3, "meta"

    .line 354
    .line 355
    const-string v4, "link"

    .line 356
    .line 357
    const-string v5, "base"

    .line 358
    .line 359
    const-string v6, "frame"

    .line 360
    .line 361
    const-string v7, "img"

    .line 362
    .line 363
    const-string v8, "br"

    .line 364
    .line 365
    const-string/jumbo v9, "wbr"

    .line 366
    .line 367
    .line 368
    const-string v10, "embed"

    .line 369
    .line 370
    const-string v11, "hr"

    .line 371
    .line 372
    const-string v12, "input"

    .line 373
    .line 374
    const-string v13, "keygen"

    .line 375
    .line 376
    const-string v14, "col"

    .line 377
    .line 378
    const-string v15, "command"

    .line 379
    .line 380
    const-string v16, "device"

    .line 381
    .line 382
    const-string v17, "area"

    .line 383
    .line 384
    const-string v18, "basefont"

    .line 385
    .line 386
    const-string v19, "bgsound"

    .line 387
    .line 388
    const-string v20, "menuitem"

    .line 389
    .line 390
    const-string v21, "param"

    .line 391
    .line 392
    filled-new-array/range {v3 .. v23}, [Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    const-string v4, "pre"

    .line 397
    .line 398
    const-string v5, "plaintext"

    .line 399
    .line 400
    const-string/jumbo v6, "title"

    .line 401
    .line 402
    .line 403
    const-string/jumbo v7, "textarea"

    .line 404
    .line 405
    .line 406
    const-string v8, "script"

    .line 407
    .line 408
    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    const-string/jumbo v13, "style"

    .line 417
    .line 418
    .line 419
    const-string/jumbo v14, "xmp"

    .line 420
    .line 421
    .line 422
    const-string v9, "iframe"

    .line 423
    .line 424
    const-string v10, "noembed"

    .line 425
    .line 426
    const-string v11, "noframes"

    .line 427
    .line 428
    const-string v12, "script"

    .line 429
    .line 430
    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v6

    .line 434
    const-string v23, "embed"

    .line 435
    .line 436
    const-string v24, "iframe"

    .line 437
    .line 438
    const-string v9, "button"

    .line 439
    .line 440
    const-string v10, "input"

    .line 441
    .line 442
    const-string v11, "select"

    .line 443
    .line 444
    const-string/jumbo v12, "textarea"

    .line 445
    .line 446
    .line 447
    const-string v13, "option"

    .line 448
    .line 449
    const-string v14, "output"

    .line 450
    .line 451
    const-string v15, "progress"

    .line 452
    .line 453
    const-string v16, "meter"

    .line 454
    .line 455
    const-string v17, "img"

    .line 456
    .line 457
    const-string v18, "picture"

    .line 458
    .line 459
    const-string v19, "audio"

    .line 460
    .line 461
    const-string/jumbo v20, "video"

    .line 462
    .line 463
    .line 464
    const-string v21, "canvas"

    .line 465
    .line 466
    const-string v22, "object"

    .line 467
    .line 468
    filled-new-array/range {v9 .. v24}, [Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v7

    .line 472
    const-string v9, "math"

    .line 473
    .line 474
    filled-new-array {v9}, [Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v9

    .line 478
    const-string v10, "mn"

    .line 479
    .line 480
    const-string v11, "mtext"

    .line 481
    .line 482
    const-string v12, "mi"

    .line 483
    .line 484
    const-string v13, "mo"

    .line 485
    .line 486
    const-string v14, "msup"

    .line 487
    .line 488
    filled-new-array {v12, v13, v14, v10, v11}, [Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v10

    .line 492
    const-string v11, "femerge"

    .line 493
    .line 494
    const-string v12, "femergenode"

    .line 495
    .line 496
    const-string/jumbo v13, "svg"

    .line 497
    .line 498
    .line 499
    filled-new-array {v13, v11, v12}, [Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v11

    .line 503
    const-string/jumbo v12, "text"

    .line 504
    .line 505
    .line 506
    filled-new-array {v12}, [Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v12

    .line 510
    filled-new-array {v8}, [Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v8

    .line 514
    new-instance v13, Lorg/jsoup/parser/TagSet;

    .line 515
    .line 516
    const/4 v14, 0x0

    .line 517
    invoke-direct {v13, v14, v14}, Lorg/jsoup/parser/TagSet;-><init>(Lorg/jsoup/parser/TagSet;Ljava/util/ArrayList;)V

    .line 518
    .line 519
    .line 520
    new-instance v14, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 521
    .line 522
    const/4 v15, 0x0

    .line 523
    invoke-direct {v14, v15}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 524
    .line 525
    .line 526
    const-string v15, "http://www.w3.org/1999/xhtml"

    .line 527
    .line 528
    invoke-virtual {v13, v15, v0, v14}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 529
    .line 530
    .line 531
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 532
    .line 533
    const/16 v14, 0xa

    .line 534
    .line 535
    invoke-direct {v0, v14}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v13, v15, v1, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 539
    .line 540
    .line 541
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 542
    .line 543
    const/16 v1, 0xb

    .line 544
    .line 545
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v13, v15, v2, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 549
    .line 550
    .line 551
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 552
    .line 553
    const/16 v1, 0xc

    .line 554
    .line 555
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v13, v15, v3, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 559
    .line 560
    .line 561
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 562
    .line 563
    const/16 v1, 0xd

    .line 564
    .line 565
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v13, v15, v4, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 569
    .line 570
    .line 571
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 572
    .line 573
    const/4 v1, 0x1

    .line 574
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v13, v15, v5, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 578
    .line 579
    .line 580
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 581
    .line 582
    const/4 v1, 0x2

    .line 583
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v13, v15, v6, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 587
    .line 588
    .line 589
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 590
    .line 591
    const/4 v1, 0x3

    .line 592
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 593
    .line 594
    .line 595
    sget-object v1, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->FormSubmitTags:[Ljava/lang/String;

    .line 596
    .line 597
    invoke-virtual {v13, v15, v1, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 598
    .line 599
    .line 600
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 601
    .line 602
    const/4 v1, 0x4

    .line 603
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v13, v15, v7, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 607
    .line 608
    .line 609
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 610
    .line 611
    const/4 v1, 0x5

    .line 612
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 613
    .line 614
    .line 615
    const-string v1, "http://www.w3.org/1998/Math/MathML"

    .line 616
    .line 617
    invoke-virtual {v13, v1, v9, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 618
    .line 619
    .line 620
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 621
    .line 622
    const/4 v2, 0x6

    .line 623
    invoke-direct {v0, v2}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v13, v1, v10, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 627
    .line 628
    .line 629
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 630
    .line 631
    const/4 v1, 0x7

    .line 632
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 633
    .line 634
    .line 635
    const-string v1, "http://www.w3.org/2000/svg"

    .line 636
    .line 637
    invoke-virtual {v13, v1, v11, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 638
    .line 639
    .line 640
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 641
    .line 642
    const/16 v2, 0x8

    .line 643
    .line 644
    invoke-direct {v0, v2}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v13, v1, v12, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 648
    .line 649
    .line 650
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 651
    .line 652
    const/16 v2, 0x9

    .line 653
    .line 654
    invoke-direct {v0, v2}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v13, v1, v8, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 658
    .line 659
    .line 660
    sput-object v13, Lorg/jsoup/parser/TagSet;->HtmlTagSet:Lorg/jsoup/parser/TagSet;

    .line 661
    .line 662
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/TagSet;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/jsoup/parser/TagSet;->tags:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/jsoup/parser/TagSet;->source:Lorg/jsoup/parser/TagSet;

    .line 12
    .line 13
    iput-object p2, p0, Lorg/jsoup/parser/TagSet;->customizers:Ljava/util/ArrayList;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final doAdd(Lorg/jsoup/parser/Tag;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->customizers:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/util/function/Consumer;

    .line 20
    .line 21
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p1, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v1, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    const/16 v2, 0x9

    .line 30
    .line 31
    invoke-direct {v1, v2}, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lorg/jsoup/parser/TagSet;->tags:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-static {p0, v0, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/util/Map;

    .line 41
    .line 42
    iget-object v0, p1, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/jsoup/parser/TagSet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    check-cast p1, Lorg/jsoup/parser/TagSet;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/jsoup/parser/TagSet;->tags:Ljava/util/HashMap;

    .line 10
    .line 11
    iget-object p1, p1, Lorg/jsoup/parser/TagSet;->tags:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final get(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/Tag;
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/sqlite/SQLite;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroidx/sqlite/SQLite;->notNull(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->tags:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/Map;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/jsoup/parser/Tag;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->source:Lorg/jsoup/parser/TagSet;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/TagSet;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->clone()Lorg/jsoup/parser/Tag;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TagSet;->doAdd(Lorg/jsoup/parser/Tag;)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/parser/TagSet;->tags:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p2, v2

    .line 7
    .line 8
    invoke-virtual {p0, v3, p1}, Lorg/jsoup/parser/TagSet;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    new-instance v4, Lorg/jsoup/parser/Tag;

    .line 15
    .line 16
    invoke-direct {v4, v3, v3, p1}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput v1, v4, Lorg/jsoup/parser/Tag;->options:I

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v4, v3}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v4}, Lorg/jsoup/parser/TagSet;->doAdd(Lorg/jsoup/parser/Tag;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {p3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public final valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jsoup/parser/Tag;
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/sqlite/SQLite;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Landroidx/sqlite/SQLite;->notNull(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroidx/sqlite/SQLite;->notEmpty(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p3}, Lorg/jsoup/parser/TagSet;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    if-nez p2, :cond_1

    .line 22
    .line 23
    invoke-static {p1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :cond_1
    if-eqz p4, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move-object p1, p2

    .line 31
    :goto_0
    invoke-virtual {p0, p2, p3}, Lorg/jsoup/parser/TagSet;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    if-eqz p4, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->clone()Lorg/jsoup/parser/Tag;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iput-object p1, p2, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/TagSet;->doAdd(Lorg/jsoup/parser/Tag;)V

    .line 52
    .line 53
    .line 54
    return-object p2

    .line 55
    :cond_3
    return-object v0

    .line 56
    :cond_4
    new-instance p4, Lorg/jsoup/parser/Tag;

    .line 57
    .line 58
    invoke-direct {p4, p1, p2, p3}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p4}, Lorg/jsoup/parser/TagSet;->doAdd(Lorg/jsoup/parser/Tag;)V

    .line 62
    .line 63
    .line 64
    return-object p4
.end method

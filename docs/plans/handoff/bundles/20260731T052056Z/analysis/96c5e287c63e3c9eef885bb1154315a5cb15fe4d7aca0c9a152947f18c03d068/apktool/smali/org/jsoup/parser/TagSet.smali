.class public final Lorg/jsoup/parser/TagSet;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


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
    const-string v7, "style"

    .line 18
    .line 19
    const-string v8, "meta"

    .line 20
    .line 21
    const-string v9, "link"

    .line 22
    .line 23
    const-string v10, "title"

    .line 24
    .line 25
    const-string v11, "frame"

    .line 26
    .line 27
    const-string v12, "noframes"

    .line 28
    .line 29
    const-string v13, "section"

    .line 30
    .line 31
    const-string v14, "nav"

    .line 32
    .line 33
    const-string v15, "aside"

    .line 34
    .line 35
    const-string v16, "hgroup"

    .line 36
    .line 37
    const-string v17, "header"

    .line 38
    .line 39
    const-string v18, "footer"

    .line 40
    .line 41
    const-string v19, "p"

    .line 42
    .line 43
    const-string v20, "h1"

    .line 44
    .line 45
    const-string v21, "h2"

    .line 46
    .line 47
    const-string v22, "h3"

    .line 48
    .line 49
    const-string v23, "h4"

    .line 50
    .line 51
    const-string v24, "h5"

    .line 52
    .line 53
    const-string v25, "h6"

    .line 54
    .line 55
    const-string v26, "dialog"

    .line 56
    .line 57
    const-string v27, "search"

    .line 58
    .line 59
    const-string/jumbo v28, "ul"

    .line 60
    .line 61
    .line 62
    const-string v29, "ol"

    .line 63
    .line 64
    const-string v30, "pre"

    .line 65
    .line 66
    const-string v31, "div"

    .line 67
    .line 68
    const-string v32, "blockquote"

    .line 69
    .line 70
    const-string v33, "hr"

    .line 71
    .line 72
    const-string v34, "address"

    .line 73
    .line 74
    const-string v35, "figure"

    .line 75
    .line 76
    const-string v36, "figcaption"

    .line 77
    .line 78
    const-string v37, "form"

    .line 79
    .line 80
    const-string v38, "fieldset"

    .line 81
    .line 82
    const-string v39, "dl"

    .line 83
    .line 84
    const-string v40, "dt"

    .line 85
    .line 86
    const-string v41, "dd"

    .line 87
    .line 88
    const-string v42, "li"

    .line 89
    .line 90
    const-string v43, "table"

    .line 91
    .line 92
    const-string v44, "caption"

    .line 93
    .line 94
    const-string v45, "thead"

    .line 95
    .line 96
    const-string v46, "tfoot"

    .line 97
    .line 98
    const-string v47, "tbody"

    .line 99
    .line 100
    const-string v48, "colgroup"

    .line 101
    .line 102
    const-string v49, "col"

    .line 103
    .line 104
    const-string/jumbo v50, "tr"

    .line 105
    .line 106
    .line 107
    const-string v51, "th"

    .line 108
    .line 109
    const-string v52, "td"

    .line 110
    .line 111
    const-string v53, "details"

    .line 112
    .line 113
    const-string v54, "menu"

    .line 114
    .line 115
    const-string v55, "plaintext"

    .line 116
    .line 117
    const-string v56, "template"

    .line 118
    .line 119
    const-string v57, "article"

    .line 120
    .line 121
    const-string v58, "main"

    .line 122
    .line 123
    const-string v59, "center"

    .line 124
    .line 125
    const-string v60, "dir"

    .line 126
    .line 127
    const-string v61, "applet"

    .line 128
    .line 129
    const-string v62, "marquee"

    .line 130
    .line 131
    filled-new-array/range {v1 .. v64}, [Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const-string v71, "slot"

    .line 136
    .line 137
    const-string v72, "rb"

    .line 138
    .line 139
    const-string v1, "object"

    .line 140
    .line 141
    const-string v2, "base"

    .line 142
    .line 143
    const-string v3, "font"

    .line 144
    .line 145
    const-string/jumbo v4, "tt"

    .line 146
    .line 147
    .line 148
    const-string v5, "i"

    .line 149
    .line 150
    const-string v6, "b"

    .line 151
    .line 152
    const-string/jumbo v7, "u"

    .line 153
    .line 154
    .line 155
    const-string v8, "big"

    .line 156
    .line 157
    const-string v9, "small"

    .line 158
    .line 159
    const-string v10, "em"

    .line 160
    .line 161
    const-string v11, "strong"

    .line 162
    .line 163
    const-string v12, "dfn"

    .line 164
    .line 165
    const-string v13, "code"

    .line 166
    .line 167
    const-string v14, "samp"

    .line 168
    .line 169
    const-string v15, "kbd"

    .line 170
    .line 171
    const-string/jumbo v16, "var"

    .line 172
    .line 173
    .line 174
    const-string v17, "cite"

    .line 175
    .line 176
    const-string v18, "abbr"

    .line 177
    .line 178
    const-string v19, "time"

    .line 179
    .line 180
    const-string v20, "acronym"

    .line 181
    .line 182
    const-string v21, "mark"

    .line 183
    .line 184
    const-string v22, "ruby"

    .line 185
    .line 186
    const-string v23, "rt"

    .line 187
    .line 188
    const-string v24, "rp"

    .line 189
    .line 190
    const-string v25, "rtc"

    .line 191
    .line 192
    const-string v26, "a"

    .line 193
    .line 194
    const-string v27, "img"

    .line 195
    .line 196
    const-string/jumbo v28, "wbr"

    .line 197
    .line 198
    .line 199
    const-string v29, "map"

    .line 200
    .line 201
    const-string v30, "q"

    .line 202
    .line 203
    const-string v31, "sub"

    .line 204
    .line 205
    const-string v32, "sup"

    .line 206
    .line 207
    const-string v33, "bdo"

    .line 208
    .line 209
    const-string v34, "iframe"

    .line 210
    .line 211
    const-string v35, "embed"

    .line 212
    .line 213
    const-string v36, "span"

    .line 214
    .line 215
    const-string v37, "input"

    .line 216
    .line 217
    const-string v38, "select"

    .line 218
    .line 219
    const-string v39, "textarea"

    .line 220
    .line 221
    const-string v40, "label"

    .line 222
    .line 223
    const-string v41, "audio"

    .line 224
    .line 225
    const-string/jumbo v42, "video"

    .line 226
    .line 227
    .line 228
    const-string v43, "canvas"

    .line 229
    .line 230
    const-string v44, "optgroup"

    .line 231
    .line 232
    const-string v45, "option"

    .line 233
    .line 234
    const-string v46, "legend"

    .line 235
    .line 236
    const-string v47, "datalist"

    .line 237
    .line 238
    const-string v48, "keygen"

    .line 239
    .line 240
    const-string v49, "output"

    .line 241
    .line 242
    const-string v50, "progress"

    .line 243
    .line 244
    const-string v51, "meter"

    .line 245
    .line 246
    const-string v52, "area"

    .line 247
    .line 248
    const-string v53, "param"

    .line 249
    .line 250
    const-string v54, "source"

    .line 251
    .line 252
    const-string/jumbo v55, "track"

    .line 253
    .line 254
    .line 255
    const-string v56, "summary"

    .line 256
    .line 257
    const-string v57, "command"

    .line 258
    .line 259
    const-string v58, "device"

    .line 260
    .line 261
    const-string v59, "basefont"

    .line 262
    .line 263
    const-string v60, "bgsound"

    .line 264
    .line 265
    const-string v61, "menuitem"

    .line 266
    .line 267
    const-string v62, "data"

    .line 268
    .line 269
    const-string v63, "bdi"

    .line 270
    .line 271
    const-string v64, "s"

    .line 272
    .line 273
    const-string v65, "strike"

    .line 274
    .line 275
    const-string v66, "nobr"

    .line 276
    .line 277
    const-string v67, "ins"

    .line 278
    .line 279
    const-string v68, "del"

    .line 280
    .line 281
    const-string v69, "button"

    .line 282
    .line 283
    const-string v70, "picture"

    .line 284
    .line 285
    filled-new-array/range {v1 .. v72}, [Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const-string v15, "script"

    .line 290
    .line 291
    const-string v16, "style"

    .line 292
    .line 293
    const-string v2, "title"

    .line 294
    .line 295
    const-string v3, "p"

    .line 296
    .line 297
    const-string v4, "h1"

    .line 298
    .line 299
    const-string v5, "h2"

    .line 300
    .line 301
    const-string v6, "h3"

    .line 302
    .line 303
    const-string v7, "h4"

    .line 304
    .line 305
    const-string v8, "h5"

    .line 306
    .line 307
    const-string v9, "h6"

    .line 308
    .line 309
    const-string v10, "pre"

    .line 310
    .line 311
    const-string v11, "address"

    .line 312
    .line 313
    const-string v12, "li"

    .line 314
    .line 315
    const-string v13, "th"

    .line 316
    .line 317
    const-string v14, "td"

    .line 318
    .line 319
    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    const-string v22, "source"

    .line 324
    .line 325
    const-string/jumbo v23, "track"

    .line 326
    .line 327
    .line 328
    const-string v3, "meta"

    .line 329
    .line 330
    const-string v4, "link"

    .line 331
    .line 332
    const-string v5, "base"

    .line 333
    .line 334
    const-string v6, "frame"

    .line 335
    .line 336
    const-string v7, "img"

    .line 337
    .line 338
    const-string v8, "br"

    .line 339
    .line 340
    const-string/jumbo v9, "wbr"

    .line 341
    .line 342
    .line 343
    const-string v10, "embed"

    .line 344
    .line 345
    const-string v11, "hr"

    .line 346
    .line 347
    const-string v12, "input"

    .line 348
    .line 349
    const-string v13, "keygen"

    .line 350
    .line 351
    const-string v14, "col"

    .line 352
    .line 353
    const-string v15, "command"

    .line 354
    .line 355
    const-string v16, "device"

    .line 356
    .line 357
    const-string v17, "area"

    .line 358
    .line 359
    const-string v18, "basefont"

    .line 360
    .line 361
    const-string v19, "bgsound"

    .line 362
    .line 363
    const-string v20, "menuitem"

    .line 364
    .line 365
    const-string v21, "param"

    .line 366
    .line 367
    filled-new-array/range {v3 .. v23}, [Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    const-string v4, "pre"

    .line 372
    .line 373
    const-string v5, "plaintext"

    .line 374
    .line 375
    const-string v6, "title"

    .line 376
    .line 377
    const-string v7, "textarea"

    .line 378
    .line 379
    const-string v8, "script"

    .line 380
    .line 381
    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    const-string v13, "style"

    .line 390
    .line 391
    const-string/jumbo v14, "xmp"

    .line 392
    .line 393
    .line 394
    const-string v9, "iframe"

    .line 395
    .line 396
    const-string v10, "noembed"

    .line 397
    .line 398
    const-string v11, "noframes"

    .line 399
    .line 400
    const-string v12, "script"

    .line 401
    .line 402
    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v6

    .line 406
    const-string v23, "embed"

    .line 407
    .line 408
    const-string v24, "iframe"

    .line 409
    .line 410
    const-string v9, "button"

    .line 411
    .line 412
    const-string v10, "input"

    .line 413
    .line 414
    const-string v11, "select"

    .line 415
    .line 416
    const-string v12, "textarea"

    .line 417
    .line 418
    const-string v13, "option"

    .line 419
    .line 420
    const-string v14, "output"

    .line 421
    .line 422
    const-string v15, "progress"

    .line 423
    .line 424
    const-string v16, "meter"

    .line 425
    .line 426
    const-string v17, "img"

    .line 427
    .line 428
    const-string v18, "picture"

    .line 429
    .line 430
    const-string v19, "audio"

    .line 431
    .line 432
    const-string/jumbo v20, "video"

    .line 433
    .line 434
    .line 435
    const-string v21, "canvas"

    .line 436
    .line 437
    const-string v22, "object"

    .line 438
    .line 439
    filled-new-array/range {v9 .. v24}, [Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    const-string v9, "math"

    .line 444
    .line 445
    filled-new-array {v9}, [Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v9

    .line 449
    const-string v10, "mn"

    .line 450
    .line 451
    const-string v11, "mtext"

    .line 452
    .line 453
    const-string v12, "mi"

    .line 454
    .line 455
    const-string v13, "mo"

    .line 456
    .line 457
    const-string v14, "msup"

    .line 458
    .line 459
    filled-new-array {v12, v13, v14, v10, v11}, [Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v10

    .line 463
    const-string v11, "femerge"

    .line 464
    .line 465
    const-string v12, "femergenode"

    .line 466
    .line 467
    const-string v13, "svg"

    .line 468
    .line 469
    filled-new-array {v13, v11, v12}, [Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v11

    .line 473
    const-string v12, "text"

    .line 474
    .line 475
    filled-new-array {v12}, [Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v12

    .line 479
    filled-new-array {v8}, [Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v8

    .line 483
    new-instance v13, Lorg/jsoup/parser/TagSet;

    .line 484
    .line 485
    const/4 v14, 0x0

    .line 486
    invoke-direct {v13, v14, v14}, Lorg/jsoup/parser/TagSet;-><init>(Lorg/jsoup/parser/TagSet;Ljava/util/ArrayList;)V

    .line 487
    .line 488
    .line 489
    new-instance v14, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 490
    .line 491
    const/4 v15, 0x0

    .line 492
    invoke-direct {v14, v15}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 493
    .line 494
    .line 495
    const-string v15, "http://www.w3.org/1999/xhtml"

    .line 496
    .line 497
    invoke-virtual {v13, v15, v0, v14}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 498
    .line 499
    .line 500
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 501
    .line 502
    const/16 v14, 0xa

    .line 503
    .line 504
    invoke-direct {v0, v14}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v13, v15, v1, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 508
    .line 509
    .line 510
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 511
    .line 512
    const/16 v1, 0xb

    .line 513
    .line 514
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v13, v15, v2, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 518
    .line 519
    .line 520
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 521
    .line 522
    const/16 v1, 0xc

    .line 523
    .line 524
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v13, v15, v3, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 528
    .line 529
    .line 530
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 531
    .line 532
    const/16 v1, 0xd

    .line 533
    .line 534
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v13, v15, v4, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 538
    .line 539
    .line 540
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 541
    .line 542
    const/4 v1, 0x1

    .line 543
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v13, v15, v5, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 547
    .line 548
    .line 549
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 550
    .line 551
    const/4 v1, 0x2

    .line 552
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v13, v15, v6, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 556
    .line 557
    .line 558
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 559
    .line 560
    const/4 v1, 0x3

    .line 561
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 562
    .line 563
    .line 564
    sget-object v1, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->FormSubmitTags:[Ljava/lang/String;

    .line 565
    .line 566
    invoke-virtual {v13, v15, v1, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 567
    .line 568
    .line 569
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 570
    .line 571
    const/4 v1, 0x4

    .line 572
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v13, v15, v7, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 576
    .line 577
    .line 578
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 579
    .line 580
    const/4 v1, 0x5

    .line 581
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 582
    .line 583
    .line 584
    const-string v1, "http://www.w3.org/1998/Math/MathML"

    .line 585
    .line 586
    invoke-virtual {v13, v1, v9, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 587
    .line 588
    .line 589
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 590
    .line 591
    const/4 v2, 0x6

    .line 592
    invoke-direct {v0, v2}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v13, v1, v10, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 596
    .line 597
    .line 598
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 599
    .line 600
    const/4 v1, 0x7

    .line 601
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 602
    .line 603
    .line 604
    const-string v1, "http://www.w3.org/2000/svg"

    .line 605
    .line 606
    invoke-virtual {v13, v1, v11, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 607
    .line 608
    .line 609
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 610
    .line 611
    const/16 v2, 0x8

    .line 612
    .line 613
    invoke-direct {v0, v2}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v13, v1, v12, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 617
    .line 618
    .line 619
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 620
    .line 621
    const/16 v2, 0x9

    .line 622
    .line 623
    invoke-direct {v0, v2}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v13, v1, v8, v0}, Lorg/jsoup/parser/TagSet;->setupTags(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 627
    .line 628
    .line 629
    sput-object v13, Lorg/jsoup/parser/TagSet;->HtmlTagSet:Lorg/jsoup/parser/TagSet;

    .line 630
    .line 631
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
    const/4 v2, 0x5

    .line 30
    invoke-direct {v1, v2}, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lorg/jsoup/parser/TagSet;->tags:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-static {p0, v0, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/util/Map;

    .line 40
    .line 41
    iget-object v0, p1, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
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
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    invoke-static {p1}, Landroidx/room/Room;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroidx/room/Room;->notNull(Ljava/lang/Object;)V

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
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

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
    invoke-static {p1}, Landroidx/room/Room;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Landroidx/room/Room;->notNull(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroidx/room/Room;->notEmpty(Ljava/lang/String;)V

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

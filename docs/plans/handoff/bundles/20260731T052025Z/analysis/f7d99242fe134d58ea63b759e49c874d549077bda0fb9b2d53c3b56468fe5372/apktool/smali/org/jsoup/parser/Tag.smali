.class public final Lorg/jsoup/parser/Tag;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final Tags:Ljava/util/HashMap;


# instance fields
.field public empty:Z

.field public formList:Z

.field public formSubmit:Z

.field public formatAsBlock:Z

.field public isBlock:Z

.field public namespace:Ljava/lang/String;

.field public final normalName:Ljava/lang/String;

.field public preserveWhitespace:Z

.field public selfClosing:Z

.field public tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 76

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/jsoup/parser/Tag;->Tags:Ljava/util/HashMap;

    .line 7
    .line 8
    const-string v68, "marquee"

    .line 9
    .line 10
    const-string v69, "listing"

    .line 11
    .line 12
    const-string v1, "html"

    .line 13
    .line 14
    const-string v2, "head"

    .line 15
    .line 16
    const-string v3, "body"

    .line 17
    .line 18
    const-string v4, "frameset"

    .line 19
    .line 20
    const-string v5, "script"

    .line 21
    .line 22
    const-string v6, "noscript"

    .line 23
    .line 24
    const-string v7, "style"

    .line 25
    .line 26
    const-string v8, "meta"

    .line 27
    .line 28
    const-string v9, "link"

    .line 29
    .line 30
    const-string v10, "title"

    .line 31
    .line 32
    const-string v11, "frame"

    .line 33
    .line 34
    const-string v12, "noframes"

    .line 35
    .line 36
    const-string v13, "section"

    .line 37
    .line 38
    const-string v14, "nav"

    .line 39
    .line 40
    const-string v15, "aside"

    .line 41
    .line 42
    const-string v16, "hgroup"

    .line 43
    .line 44
    const-string v17, "header"

    .line 45
    .line 46
    const-string v18, "footer"

    .line 47
    .line 48
    const-string v19, "p"

    .line 49
    .line 50
    const-string v20, "h1"

    .line 51
    .line 52
    const-string v21, "h2"

    .line 53
    .line 54
    const-string v22, "h3"

    .line 55
    .line 56
    const-string v23, "h4"

    .line 57
    .line 58
    const-string v24, "h5"

    .line 59
    .line 60
    const-string v25, "h6"

    .line 61
    .line 62
    const-string v26, "ul"

    .line 63
    .line 64
    const-string v27, "ol"

    .line 65
    .line 66
    const-string v28, "pre"

    .line 67
    .line 68
    const-string v29, "div"

    .line 69
    .line 70
    const-string v30, "blockquote"

    .line 71
    .line 72
    const-string v31, "hr"

    .line 73
    .line 74
    const-string v32, "address"

    .line 75
    .line 76
    const-string v33, "figure"

    .line 77
    .line 78
    const-string v34, "figcaption"

    .line 79
    .line 80
    const-string v35, "form"

    .line 81
    .line 82
    const-string v36, "fieldset"

    .line 83
    .line 84
    const-string v37, "ins"

    .line 85
    .line 86
    const-string v38, "del"

    .line 87
    .line 88
    const-string v39, "dl"

    .line 89
    .line 90
    const-string v40, "dt"

    .line 91
    .line 92
    const-string v41, "dd"

    .line 93
    .line 94
    const-string v42, "li"

    .line 95
    .line 96
    const-string v43, "table"

    .line 97
    .line 98
    const-string v44, "caption"

    .line 99
    .line 100
    const-string v45, "thead"

    .line 101
    .line 102
    const-string v46, "tfoot"

    .line 103
    .line 104
    const-string v47, "tbody"

    .line 105
    .line 106
    const-string v48, "colgroup"

    .line 107
    .line 108
    const-string v49, "col"

    .line 109
    .line 110
    const-string v50, "tr"

    .line 111
    .line 112
    const-string v51, "th"

    .line 113
    .line 114
    const-string v52, "td"

    .line 115
    .line 116
    const-string/jumbo v53, "video"

    .line 117
    .line 118
    .line 119
    const-string v54, "audio"

    .line 120
    .line 121
    const-string v55, "canvas"

    .line 122
    .line 123
    const-string v56, "details"

    .line 124
    .line 125
    const-string v57, "menu"

    .line 126
    .line 127
    const-string v58, "plaintext"

    .line 128
    .line 129
    const-string v59, "template"

    .line 130
    .line 131
    const-string v60, "article"

    .line 132
    .line 133
    const-string v61, "main"

    .line 134
    .line 135
    const-string v62, "svg"

    .line 136
    .line 137
    const-string v63, "math"

    .line 138
    .line 139
    const-string v64, "center"

    .line 140
    .line 141
    const-string v65, "template"

    .line 142
    .line 143
    const-string v66, "dir"

    .line 144
    .line 145
    const-string v67, "applet"

    .line 146
    .line 147
    filled-new-array/range {v1 .. v69}, [Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-string v74, "mn"

    .line 152
    .line 153
    const-string v75, "mtext"

    .line 154
    .line 155
    const-string v1, "object"

    .line 156
    .line 157
    const-string v2, "base"

    .line 158
    .line 159
    const-string v3, "font"

    .line 160
    .line 161
    const-string v4, "tt"

    .line 162
    .line 163
    const-string v5, "i"

    .line 164
    .line 165
    const-string v6, "b"

    .line 166
    .line 167
    const-string v7, "u"

    .line 168
    .line 169
    const-string v8, "big"

    .line 170
    .line 171
    const-string v9, "small"

    .line 172
    .line 173
    const-string v10, "em"

    .line 174
    .line 175
    const-string v11, "strong"

    .line 176
    .line 177
    const-string v12, "dfn"

    .line 178
    .line 179
    const-string v13, "code"

    .line 180
    .line 181
    const-string v14, "samp"

    .line 182
    .line 183
    const-string v15, "kbd"

    .line 184
    .line 185
    const-string/jumbo v16, "var"

    .line 186
    .line 187
    .line 188
    const-string v17, "cite"

    .line 189
    .line 190
    const-string v18, "abbr"

    .line 191
    .line 192
    const-string v19, "time"

    .line 193
    .line 194
    const-string v20, "acronym"

    .line 195
    .line 196
    const-string v21, "mark"

    .line 197
    .line 198
    const-string v22, "ruby"

    .line 199
    .line 200
    const-string v23, "rt"

    .line 201
    .line 202
    const-string v24, "rp"

    .line 203
    .line 204
    const-string v25, "rtc"

    .line 205
    .line 206
    const-string v26, "a"

    .line 207
    .line 208
    const-string v27, "img"

    .line 209
    .line 210
    const-string v28, "br"

    .line 211
    .line 212
    const-string/jumbo v29, "wbr"

    .line 213
    .line 214
    .line 215
    const-string v30, "map"

    .line 216
    .line 217
    const-string v31, "q"

    .line 218
    .line 219
    const-string v32, "sub"

    .line 220
    .line 221
    const-string v33, "sup"

    .line 222
    .line 223
    const-string v34, "bdo"

    .line 224
    .line 225
    const-string v35, "iframe"

    .line 226
    .line 227
    const-string v36, "embed"

    .line 228
    .line 229
    const-string v37, "span"

    .line 230
    .line 231
    const-string v38, "input"

    .line 232
    .line 233
    const-string v39, "select"

    .line 234
    .line 235
    const-string v40, "textarea"

    .line 236
    .line 237
    const-string v41, "label"

    .line 238
    .line 239
    const-string v42, "optgroup"

    .line 240
    .line 241
    const-string v43, "option"

    .line 242
    .line 243
    const-string v44, "legend"

    .line 244
    .line 245
    const-string v45, "datalist"

    .line 246
    .line 247
    const-string v46, "keygen"

    .line 248
    .line 249
    const-string v47, "output"

    .line 250
    .line 251
    const-string v48, "progress"

    .line 252
    .line 253
    const-string v49, "meter"

    .line 254
    .line 255
    const-string v50, "area"

    .line 256
    .line 257
    const-string v51, "param"

    .line 258
    .line 259
    const-string v52, "source"

    .line 260
    .line 261
    const-string v53, "track"

    .line 262
    .line 263
    const-string v54, "summary"

    .line 264
    .line 265
    const-string v55, "command"

    .line 266
    .line 267
    const-string v56, "device"

    .line 268
    .line 269
    const-string v57, "area"

    .line 270
    .line 271
    const-string v58, "basefont"

    .line 272
    .line 273
    const-string v59, "bgsound"

    .line 274
    .line 275
    const-string v60, "menuitem"

    .line 276
    .line 277
    const-string v61, "param"

    .line 278
    .line 279
    const-string v62, "source"

    .line 280
    .line 281
    const-string v63, "track"

    .line 282
    .line 283
    const-string v64, "data"

    .line 284
    .line 285
    const-string v65, "bdi"

    .line 286
    .line 287
    const-string v66, "s"

    .line 288
    .line 289
    const-string v67, "strike"

    .line 290
    .line 291
    const-string v68, "nobr"

    .line 292
    .line 293
    const-string v69, "rb"

    .line 294
    .line 295
    const-string v70, "text"

    .line 296
    .line 297
    const-string v71, "mi"

    .line 298
    .line 299
    const-string v72, "mo"

    .line 300
    .line 301
    const-string v73, "msup"

    .line 302
    .line 303
    filled-new-array/range {v1 .. v75}, [Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    const-string v21, "source"

    .line 308
    .line 309
    const-string v22, "track"

    .line 310
    .line 311
    const-string v2, "meta"

    .line 312
    .line 313
    const-string v3, "link"

    .line 314
    .line 315
    const-string v4, "base"

    .line 316
    .line 317
    const-string v5, "frame"

    .line 318
    .line 319
    const-string v6, "img"

    .line 320
    .line 321
    const-string v7, "br"

    .line 322
    .line 323
    const-string/jumbo v8, "wbr"

    .line 324
    .line 325
    .line 326
    const-string v9, "embed"

    .line 327
    .line 328
    const-string v10, "hr"

    .line 329
    .line 330
    const-string v11, "input"

    .line 331
    .line 332
    const-string v12, "keygen"

    .line 333
    .line 334
    const-string v13, "col"

    .line 335
    .line 336
    const-string v14, "command"

    .line 337
    .line 338
    const-string v15, "device"

    .line 339
    .line 340
    const-string v16, "area"

    .line 341
    .line 342
    const-string v17, "basefont"

    .line 343
    .line 344
    const-string v18, "bgsound"

    .line 345
    .line 346
    const-string v19, "menuitem"

    .line 347
    .line 348
    const-string v20, "param"

    .line 349
    .line 350
    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    const-string v21, "s"

    .line 355
    .line 356
    const-string v22, "button"

    .line 357
    .line 358
    const-string v3, "title"

    .line 359
    .line 360
    const-string v4, "a"

    .line 361
    .line 362
    const-string v5, "p"

    .line 363
    .line 364
    const-string v6, "h1"

    .line 365
    .line 366
    const-string v7, "h2"

    .line 367
    .line 368
    const-string v8, "h3"

    .line 369
    .line 370
    const-string v9, "h4"

    .line 371
    .line 372
    const-string v10, "h5"

    .line 373
    .line 374
    const-string v11, "h6"

    .line 375
    .line 376
    const-string v12, "pre"

    .line 377
    .line 378
    const-string v13, "address"

    .line 379
    .line 380
    const-string v14, "li"

    .line 381
    .line 382
    const-string v15, "th"

    .line 383
    .line 384
    const-string v16, "td"

    .line 385
    .line 386
    const-string v17, "script"

    .line 387
    .line 388
    const-string v18, "style"

    .line 389
    .line 390
    const-string v19, "ins"

    .line 391
    .line 392
    const-string v20, "del"

    .line 393
    .line 394
    filled-new-array/range {v3 .. v22}, [Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    const-string v4, "title"

    .line 399
    .line 400
    const-string v5, "textarea"

    .line 401
    .line 402
    const-string v6, "pre"

    .line 403
    .line 404
    const-string v7, "plaintext"

    .line 405
    .line 406
    filled-new-array {v6, v7, v4, v5}, [Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    const-string v11, "select"

    .line 411
    .line 412
    const-string v12, "textarea"

    .line 413
    .line 414
    const-string v5, "button"

    .line 415
    .line 416
    const-string v6, "fieldset"

    .line 417
    .line 418
    const-string v7, "input"

    .line 419
    .line 420
    const-string v8, "keygen"

    .line 421
    .line 422
    const-string v9, "object"

    .line 423
    .line 424
    const-string v10, "output"

    .line 425
    .line 426
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v5

    .line 430
    sget-object v6, Lorg/jsoup/internal/Functions;->FormSubmitTags:[Ljava/lang/String;

    .line 431
    .line 432
    new-instance v7, Ljava/util/HashMap;

    .line 433
    .line 434
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 435
    .line 436
    .line 437
    const-string v12, "mn"

    .line 438
    .line 439
    const-string v13, "mtext"

    .line 440
    .line 441
    const-string v8, "math"

    .line 442
    .line 443
    const-string v9, "mi"

    .line 444
    .line 445
    const-string v10, "mo"

    .line 446
    .line 447
    const-string v11, "msup"

    .line 448
    .line 449
    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v8

    .line 453
    const-string v9, "http://www.w3.org/1998/Math/MathML"

    .line 454
    .line 455
    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    const-string v8, "svg"

    .line 459
    .line 460
    const-string v9, "text"

    .line 461
    .line 462
    filled-new-array {v8, v9}, [Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    const-string v9, "http://www.w3.org/2000/svg"

    .line 467
    .line 468
    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    new-instance v8, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;

    .line 472
    .line 473
    const/4 v9, 0x0

    .line 474
    invoke-direct {v8, v9}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;-><init>(I)V

    .line 475
    .line 476
    .line 477
    invoke-static {v0, v8}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 478
    .line 479
    .line 480
    new-instance v0, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;

    .line 481
    .line 482
    const/4 v8, 0x1

    .line 483
    invoke-direct {v0, v8}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;-><init>(I)V

    .line 484
    .line 485
    .line 486
    invoke-static {v1, v0}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 487
    .line 488
    .line 489
    new-instance v0, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;

    .line 490
    .line 491
    const/4 v1, 0x2

    .line 492
    invoke-direct {v0, v1}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;-><init>(I)V

    .line 493
    .line 494
    .line 495
    invoke-static {v2, v0}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 496
    .line 497
    .line 498
    new-instance v0, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;

    .line 499
    .line 500
    const/4 v1, 0x3

    .line 501
    invoke-direct {v0, v1}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;-><init>(I)V

    .line 502
    .line 503
    .line 504
    invoke-static {v3, v0}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 505
    .line 506
    .line 507
    new-instance v0, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;

    .line 508
    .line 509
    const/4 v1, 0x4

    .line 510
    invoke-direct {v0, v1}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;-><init>(I)V

    .line 511
    .line 512
    .line 513
    invoke-static {v4, v0}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 514
    .line 515
    .line 516
    new-instance v0, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;

    .line 517
    .line 518
    const/4 v1, 0x5

    .line 519
    invoke-direct {v0, v1}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;-><init>(I)V

    .line 520
    .line 521
    .line 522
    invoke-static {v5, v0}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 523
    .line 524
    .line 525
    new-instance v0, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;

    .line 526
    .line 527
    const/4 v1, 0x6

    .line 528
    invoke-direct {v0, v1}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;-><init>(I)V

    .line 529
    .line 530
    .line 531
    invoke-static {v6, v0}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    if-eqz v1, :cond_0

    .line 547
    .line 548
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    check-cast v1, Ljava/util/Map$Entry;

    .line 553
    .line 554
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    check-cast v2, [Ljava/lang/String;

    .line 559
    .line 560
    new-instance v3, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda7;

    .line 561
    .line 562
    invoke-direct {v3, v1}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda7;-><init>(Ljava/util/Map$Entry;)V

    .line 563
    .line 564
    .line 565
    invoke-static {v2, v3}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 566
    .line 567
    .line 568
    goto :goto_0

    .line 569
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formList:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    .line 19
    .line 20
    iput-object p1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p2, p0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p3, p0, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public static setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    .line 5
    aget-object v2, p0, v1

    .line 6
    .line 7
    sget-object v3, Lorg/jsoup/parser/Tag;->Tags:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    check-cast v4, Lorg/jsoup/parser/Tag;

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    new-instance v4, Lorg/jsoup/parser/Tag;

    .line 18
    .line 19
    const-string v5, "http://www.w3.org/1999/xhtml"

    .line 20
    .line 21
    invoke-direct {v4, v2, v2, v5}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lorg/jsoup/parser/Tag;->Tags:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lorg/jsoup/parser/Tag;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v2, v1, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_0
    iget-boolean v1, p3, Lorg/jsoup/parser/ParseSettings;->preserveTagCase:Z

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object p0, p1

    .line 39
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lorg/jsoup/parser/Tag;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v1, v0, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    iget-boolean p2, p3, Lorg/jsoup/parser/ParseSettings;->preserveTagCase:Z

    .line 56
    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lorg/jsoup/parser/Tag;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    iput-object p0, p1, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 72
    .line 73
    return-object p1

    .line 74
    :catch_0
    move-exception p0

    .line 75
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x0

    .line 79
    return-object p0

    .line 80
    :cond_2
    return-object v0

    .line 81
    :cond_3
    new-instance p3, Lorg/jsoup/parser/Tag;

    .line 82
    .line 83
    invoke-direct {p3, p0, p1, p2}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/4 p0, 0x0

    .line 87
    iput-boolean p0, p3, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 88
    .line 89
    return-object p3
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;
    .locals 1

    .line 90
    invoke-static {p0}, Lorg/jsoup/internal/Functions;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {p0, v0, p1, p2}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lorg/jsoup/parser/Tag;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/jsoup/parser/Tag;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    .line 23
    .line 24
    iget-boolean v1, p1, Lorg/jsoup/parser/Tag;->empty:Z

    .line 25
    .line 26
    if-eq v0, v1, :cond_3

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 30
    .line 31
    iget-boolean v1, p1, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 32
    .line 33
    if-eq v0, v1, :cond_4

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_4
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 37
    .line 38
    iget-boolean v1, p1, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 39
    .line 40
    if-eq v0, v1, :cond_5

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_5
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 44
    .line 45
    iget-boolean v1, p1, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 46
    .line 47
    if-eq v0, v1, :cond_6

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_6
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    .line 51
    .line 52
    iget-boolean v1, p1, Lorg/jsoup/parser/Tag;->selfClosing:Z

    .line 53
    .line 54
    if-eq v0, v1, :cond_7

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_7
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formList:Z

    .line 58
    .line 59
    iget-boolean v1, p1, Lorg/jsoup/parser/Tag;->formList:Z

    .line 60
    .line 61
    if-eq v0, v1, :cond_8

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_8
    iget-boolean p0, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    .line 65
    .line 66
    iget-boolean p1, p1, Lorg/jsoup/parser/Tag;->formSubmit:Z

    .line 67
    .line 68
    if-ne p0, p1, :cond_9

    .line 69
    .line 70
    :goto_0
    const/4 p0, 0x1

    .line 71
    return p0

    .line 72
    :cond_9
    :goto_1
    const/4 p0, 0x0

    .line 73
    return p0
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->empty:Z

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-boolean v4, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    .line 22
    .line 23
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-boolean v5, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 28
    .line 29
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-boolean v6, p0, Lorg/jsoup/parser/Tag;->formList:Z

    .line 34
    .line 35
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    iget-boolean p0, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    .line 40
    .line 41
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/16 v7, 0x8

    .line 46
    .line 47
    new-array v7, v7, [Ljava/lang/Object;

    .line 48
    .line 49
    const/4 v8, 0x0

    .line 50
    aput-object v0, v7, v8

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    aput-object v1, v7, v0

    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    aput-object v2, v7, v0

    .line 57
    .line 58
    const/4 v0, 0x3

    .line 59
    aput-object v3, v7, v0

    .line 60
    .line 61
    const/4 v0, 0x4

    .line 62
    aput-object v4, v7, v0

    .line 63
    .line 64
    const/4 v0, 0x5

    .line 65
    aput-object v5, v7, v0

    .line 66
    .line 67
    const/4 v0, 0x6

    .line 68
    aput-object v6, v7, v0

    .line 69
    .line 70
    const/4 v0, 0x7

    .line 71
    aput-object p0, v7, v0

    .line 72
    .line 73
    invoke-static {v7}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

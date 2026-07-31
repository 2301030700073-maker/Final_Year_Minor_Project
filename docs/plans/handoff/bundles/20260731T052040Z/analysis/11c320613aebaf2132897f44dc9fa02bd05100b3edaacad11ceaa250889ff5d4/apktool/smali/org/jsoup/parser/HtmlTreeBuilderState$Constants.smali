.class public abstract Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final AfterHeadBody:[Ljava/lang/String;

.field public static final BeforeHtmlToHead:[Ljava/lang/String;

.field public static final DdDt:[Ljava/lang/String;

.field public static final Headings:[Ljava/lang/String;

.field public static final InBodyEndAdoptionFormatters:[Ljava/lang/String;

.field public static final InBodyEndClosers:[Ljava/lang/String;

.field public static final InBodyEndOtherErrors:[Ljava/lang/String;

.field public static final InBodyStartApplets:[Ljava/lang/String;

.field public static final InBodyStartDrop:[Ljava/lang/String;

.field public static final InBodyStartLiBreakers:[Ljava/lang/String;

.field public static final InBodyStartMedia:[Ljava/lang/String;

.field public static final InBodyStartPClosers:[Ljava/lang/String;

.field public static final InBodyStartToHead:[Ljava/lang/String;

.field public static final InCaptionIgnore:[Ljava/lang/String;

.field public static final InCellBody:[Ljava/lang/String;

.field public static final InCellCol:[Ljava/lang/String;

.field public static final InCellNames:[Ljava/lang/String;

.field public static final InCellTable:[Ljava/lang/String;

.field public static final InForeignToHtml:[Ljava/lang/String;

.field public static final InHeadEmpty:[Ljava/lang/String;

.field public static final InHeadEnd:[Ljava/lang/String;

.field public static final InHeadNoScriptHead:[Ljava/lang/String;

.field public static final InHeadNoscriptIgnore:[Ljava/lang/String;

.field public static final InHeadRaw:[Ljava/lang/String;

.field public static final InRowIgnore:[Ljava/lang/String;

.field public static final InRowMissing:[Ljava/lang/String;

.field public static final InSelectEnd:[Ljava/lang/String;

.field public static final InSelectTableEnd:[Ljava/lang/String;

.field public static final InTableAddBody:[Ljava/lang/String;

.field public static final InTableBodyEndIgnore:[Ljava/lang/String;

.field public static final InTableBodyExit:[Ljava/lang/String;

.field public static final InTableEndErr:[Ljava/lang/String;

.field public static final InTableEndIgnore:[Ljava/lang/String;

.field public static final InTableFoster:[Ljava/lang/String;

.field public static final InTableToBody:[Ljava/lang/String;

.field public static final InTableToHead:[Ljava/lang/String;

.field public static final InTemplateToHead:[Ljava/lang/String;

.field public static final InTemplateToTable:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 45

    .line 1
    const-string v0, "command"

    .line 2
    .line 3
    const-string v1, "link"

    .line 4
    .line 5
    const-string v2, "base"

    .line 6
    .line 7
    const-string v3, "basefont"

    .line 8
    .line 9
    const-string v4, "bgsound"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadEmpty:[Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "noframes"

    .line 18
    .line 19
    const-string/jumbo v1, "style"

    .line 20
    .line 21
    .line 22
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadRaw:[Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "body"

    .line 29
    .line 30
    const-string v2, "br"

    .line 31
    .line 32
    const-string v3, "html"

    .line 33
    .line 34
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    sput-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadEnd:[Ljava/lang/String;

    .line 39
    .line 40
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    sput-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->AfterHeadBody:[Ljava/lang/String;

    .line 45
    .line 46
    const-string v4, "head"

    .line 47
    .line 48
    filled-new-array {v0, v2, v4, v3}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->BeforeHtmlToHead:[Ljava/lang/String;

    .line 53
    .line 54
    const-string v9, "noframes"

    .line 55
    .line 56
    const-string/jumbo v10, "style"

    .line 57
    .line 58
    .line 59
    const-string v5, "basefont"

    .line 60
    .line 61
    const-string v6, "bgsound"

    .line 62
    .line 63
    const-string v7, "link"

    .line 64
    .line 65
    const-string v8, "meta"

    .line 66
    .line 67
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadNoScriptHead:[Ljava/lang/String;

    .line 72
    .line 73
    const-string/jumbo v14, "template"

    .line 74
    .line 75
    .line 76
    const-string/jumbo v15, "title"

    .line 77
    .line 78
    .line 79
    const-string v5, "base"

    .line 80
    .line 81
    const-string v6, "basefont"

    .line 82
    .line 83
    const-string v7, "bgsound"

    .line 84
    .line 85
    const-string v8, "command"

    .line 86
    .line 87
    const-string v9, "link"

    .line 88
    .line 89
    const-string v10, "meta"

    .line 90
    .line 91
    const-string v11, "noframes"

    .line 92
    .line 93
    const-string v12, "script"

    .line 94
    .line 95
    const-string/jumbo v13, "style"

    .line 96
    .line 97
    .line 98
    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    .line 103
    .line 104
    const-string/jumbo v25, "summary"

    .line 105
    .line 106
    .line 107
    const-string/jumbo v26, "ul"

    .line 108
    .line 109
    .line 110
    const-string v5, "address"

    .line 111
    .line 112
    const-string v6, "article"

    .line 113
    .line 114
    const-string v7, "aside"

    .line 115
    .line 116
    const-string v8, "blockquote"

    .line 117
    .line 118
    const-string v9, "center"

    .line 119
    .line 120
    const-string v10, "details"

    .line 121
    .line 122
    const-string v11, "dir"

    .line 123
    .line 124
    const-string v12, "div"

    .line 125
    .line 126
    const-string v13, "dl"

    .line 127
    .line 128
    const-string v14, "fieldset"

    .line 129
    .line 130
    const-string v15, "figcaption"

    .line 131
    .line 132
    const-string v16, "figure"

    .line 133
    .line 134
    const-string v17, "footer"

    .line 135
    .line 136
    const-string v18, "header"

    .line 137
    .line 138
    const-string v19, "hgroup"

    .line 139
    .line 140
    const-string v20, "menu"

    .line 141
    .line 142
    const-string v21, "nav"

    .line 143
    .line 144
    const-string v22, "ol"

    .line 145
    .line 146
    const-string v23, "p"

    .line 147
    .line 148
    const-string v24, "section"

    .line 149
    .line 150
    filled-new-array/range {v5 .. v26}, [Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    .line 155
    .line 156
    const-string v9, "h5"

    .line 157
    .line 158
    const-string v10, "h6"

    .line 159
    .line 160
    const-string v5, "h1"

    .line 161
    .line 162
    const-string v6, "h2"

    .line 163
    .line 164
    const-string v7, "h3"

    .line 165
    .line 166
    const-string v8, "h4"

    .line 167
    .line 168
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    .line 173
    .line 174
    const-string v2, "div"

    .line 175
    .line 176
    const-string v5, "p"

    .line 177
    .line 178
    const-string v6, "address"

    .line 179
    .line 180
    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    .line 185
    .line 186
    const-string v2, "dd"

    .line 187
    .line 188
    const-string v5, "dt"

    .line 189
    .line 190
    filled-new-array {v2, v5}, [Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    .line 195
    .line 196
    const-string v2, "marquee"

    .line 197
    .line 198
    const-string v5, "object"

    .line 199
    .line 200
    const-string v6, "applet"

    .line 201
    .line 202
    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    .line 207
    .line 208
    const-string/jumbo v2, "source"

    .line 209
    .line 210
    .line 211
    const-string/jumbo v5, "track"

    .line 212
    .line 213
    .line 214
    const-string v6, "param"

    .line 215
    .line 216
    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    .line 221
    .line 222
    const-string/jumbo v14, "thead"

    .line 223
    .line 224
    .line 225
    const-string/jumbo v15, "tr"

    .line 226
    .line 227
    .line 228
    const-string v5, "caption"

    .line 229
    .line 230
    const-string v6, "col"

    .line 231
    .line 232
    const-string v7, "colgroup"

    .line 233
    .line 234
    const-string v8, "frame"

    .line 235
    .line 236
    const-string v9, "head"

    .line 237
    .line 238
    const-string/jumbo v10, "tbody"

    .line 239
    .line 240
    .line 241
    const-string/jumbo v11, "td"

    .line 242
    .line 243
    .line 244
    const-string/jumbo v12, "tfoot"

    .line 245
    .line 246
    .line 247
    const-string/jumbo v13, "th"

    .line 248
    .line 249
    .line 250
    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    .line 255
    .line 256
    const-string/jumbo v27, "summary"

    .line 257
    .line 258
    .line 259
    const-string/jumbo v28, "ul"

    .line 260
    .line 261
    .line 262
    const-string v5, "address"

    .line 263
    .line 264
    const-string v6, "article"

    .line 265
    .line 266
    const-string v7, "aside"

    .line 267
    .line 268
    const-string v8, "blockquote"

    .line 269
    .line 270
    const-string v9, "button"

    .line 271
    .line 272
    const-string v10, "center"

    .line 273
    .line 274
    const-string v11, "details"

    .line 275
    .line 276
    const-string v12, "dir"

    .line 277
    .line 278
    const-string v13, "div"

    .line 279
    .line 280
    const-string v14, "dl"

    .line 281
    .line 282
    const-string v15, "fieldset"

    .line 283
    .line 284
    const-string v16, "figcaption"

    .line 285
    .line 286
    const-string v17, "figure"

    .line 287
    .line 288
    const-string v18, "footer"

    .line 289
    .line 290
    const-string v19, "header"

    .line 291
    .line 292
    const-string v20, "hgroup"

    .line 293
    .line 294
    const-string v21, "listing"

    .line 295
    .line 296
    const-string v22, "menu"

    .line 297
    .line 298
    const-string v23, "nav"

    .line 299
    .line 300
    const-string v24, "ol"

    .line 301
    .line 302
    const-string v25, "pre"

    .line 303
    .line 304
    const-string v26, "section"

    .line 305
    .line 306
    filled-new-array/range {v5 .. v28}, [Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    .line 311
    .line 312
    const-string/jumbo v21, "thead"

    .line 313
    .line 314
    .line 315
    const-string/jumbo v22, "tr"

    .line 316
    .line 317
    .line 318
    const-string v5, "body"

    .line 319
    .line 320
    const-string v6, "dd"

    .line 321
    .line 322
    const-string v7, "dt"

    .line 323
    .line 324
    const-string v8, "html"

    .line 325
    .line 326
    const-string v9, "li"

    .line 327
    .line 328
    const-string v10, "optgroup"

    .line 329
    .line 330
    const-string v11, "option"

    .line 331
    .line 332
    const-string v12, "p"

    .line 333
    .line 334
    const-string v13, "rb"

    .line 335
    .line 336
    const-string v14, "rp"

    .line 337
    .line 338
    const-string v15, "rt"

    .line 339
    .line 340
    const-string v16, "rtc"

    .line 341
    .line 342
    const-string/jumbo v17, "tbody"

    .line 343
    .line 344
    .line 345
    const-string/jumbo v18, "td"

    .line 346
    .line 347
    .line 348
    const-string/jumbo v19, "tfoot"

    .line 349
    .line 350
    .line 351
    const-string/jumbo v20, "th"

    .line 352
    .line 353
    .line 354
    filled-new-array/range {v5 .. v22}, [Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndOtherErrors:[Ljava/lang/String;

    .line 359
    .line 360
    const-string/jumbo v17, "tt"

    .line 361
    .line 362
    .line 363
    const-string/jumbo v18, "u"

    .line 364
    .line 365
    .line 366
    const-string v5, "a"

    .line 367
    .line 368
    const-string v6, "b"

    .line 369
    .line 370
    const-string v7, "big"

    .line 371
    .line 372
    const-string v8, "code"

    .line 373
    .line 374
    const-string v9, "em"

    .line 375
    .line 376
    const-string v10, "font"

    .line 377
    .line 378
    const-string v11, "i"

    .line 379
    .line 380
    const-string v12, "nobr"

    .line 381
    .line 382
    const-string v13, "s"

    .line 383
    .line 384
    const-string/jumbo v14, "small"

    .line 385
    .line 386
    .line 387
    const-string/jumbo v15, "strike"

    .line 388
    .line 389
    .line 390
    const-string/jumbo v16, "strong"

    .line 391
    .line 392
    .line 393
    filled-new-array/range {v5 .. v18}, [Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    .line 398
    .line 399
    const-string/jumbo v2, "tbody"

    .line 400
    .line 401
    .line 402
    const-string/jumbo v5, "tfoot"

    .line 403
    .line 404
    .line 405
    const-string/jumbo v6, "thead"

    .line 406
    .line 407
    .line 408
    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    sput-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableToBody:[Ljava/lang/String;

    .line 413
    .line 414
    const-string/jumbo v7, "td"

    .line 415
    .line 416
    .line 417
    const-string/jumbo v8, "th"

    .line 418
    .line 419
    .line 420
    const-string/jumbo v9, "tr"

    .line 421
    .line 422
    .line 423
    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v10

    .line 427
    sput-object v10, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableAddBody:[Ljava/lang/String;

    .line 428
    .line 429
    const-string v10, "script"

    .line 430
    .line 431
    const-string/jumbo v11, "template"

    .line 432
    .line 433
    .line 434
    filled-new-array {v10, v1, v11}, [Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableToHead:[Ljava/lang/String;

    .line 439
    .line 440
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellNames:[Ljava/lang/String;

    .line 445
    .line 446
    const-string v1, "caption"

    .line 447
    .line 448
    const-string v7, "col"

    .line 449
    .line 450
    const-string v8, "colgroup"

    .line 451
    .line 452
    filled-new-array {v0, v1, v7, v8, v3}, [Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellBody:[Ljava/lang/String;

    .line 457
    .line 458
    const-string/jumbo v0, "table"

    .line 459
    .line 460
    .line 461
    filled-new-array {v0, v2, v5, v6, v9}, [Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellTable:[Ljava/lang/String;

    .line 466
    .line 467
    const-string/jumbo v17, "thead"

    .line 468
    .line 469
    .line 470
    const-string/jumbo v18, "tr"

    .line 471
    .line 472
    .line 473
    const-string v10, "caption"

    .line 474
    .line 475
    const-string v11, "col"

    .line 476
    .line 477
    const-string v12, "colgroup"

    .line 478
    .line 479
    const-string/jumbo v13, "tbody"

    .line 480
    .line 481
    .line 482
    const-string/jumbo v14, "td"

    .line 483
    .line 484
    .line 485
    const-string/jumbo v15, "tfoot"

    .line 486
    .line 487
    .line 488
    const-string/jumbo v16, "th"

    .line 489
    .line 490
    .line 491
    filled-new-array/range {v10 .. v18}, [Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellCol:[Ljava/lang/String;

    .line 496
    .line 497
    const-string/jumbo v19, "thead"

    .line 498
    .line 499
    .line 500
    const-string/jumbo v20, "tr"

    .line 501
    .line 502
    .line 503
    const-string v10, "body"

    .line 504
    .line 505
    const-string v11, "caption"

    .line 506
    .line 507
    const-string v12, "col"

    .line 508
    .line 509
    const-string v13, "colgroup"

    .line 510
    .line 511
    const-string v14, "html"

    .line 512
    .line 513
    const-string/jumbo v15, "tbody"

    .line 514
    .line 515
    .line 516
    const-string/jumbo v16, "td"

    .line 517
    .line 518
    .line 519
    const-string/jumbo v17, "tfoot"

    .line 520
    .line 521
    .line 522
    const-string/jumbo v18, "th"

    .line 523
    .line 524
    .line 525
    filled-new-array/range {v10 .. v20}, [Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableEndErr:[Ljava/lang/String;

    .line 530
    .line 531
    filled-new-array {v0, v2, v5, v6, v9}, [Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableFoster:[Ljava/lang/String;

    .line 536
    .line 537
    const-string/jumbo v13, "tfoot"

    .line 538
    .line 539
    .line 540
    const-string/jumbo v14, "thead"

    .line 541
    .line 542
    .line 543
    const-string v9, "caption"

    .line 544
    .line 545
    const-string v10, "col"

    .line 546
    .line 547
    const-string v11, "colgroup"

    .line 548
    .line 549
    const-string/jumbo v12, "tbody"

    .line 550
    .line 551
    .line 552
    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableBodyExit:[Ljava/lang/String;

    .line 557
    .line 558
    const-string/jumbo v15, "th"

    .line 559
    .line 560
    .line 561
    const-string/jumbo v16, "tr"

    .line 562
    .line 563
    .line 564
    const-string v9, "body"

    .line 565
    .line 566
    const-string v10, "caption"

    .line 567
    .line 568
    const-string v11, "col"

    .line 569
    .line 570
    const-string v12, "colgroup"

    .line 571
    .line 572
    const-string v13, "html"

    .line 573
    .line 574
    const-string/jumbo v14, "td"

    .line 575
    .line 576
    .line 577
    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableBodyEndIgnore:[Ljava/lang/String;

    .line 582
    .line 583
    const-string/jumbo v14, "thead"

    .line 584
    .line 585
    .line 586
    const-string/jumbo v15, "tr"

    .line 587
    .line 588
    .line 589
    const-string v9, "caption"

    .line 590
    .line 591
    const-string v10, "col"

    .line 592
    .line 593
    const-string v11, "colgroup"

    .line 594
    .line 595
    const-string/jumbo v12, "tbody"

    .line 596
    .line 597
    .line 598
    const-string/jumbo v13, "tfoot"

    .line 599
    .line 600
    .line 601
    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InRowMissing:[Ljava/lang/String;

    .line 606
    .line 607
    const-string/jumbo v14, "td"

    .line 608
    .line 609
    .line 610
    const-string/jumbo v15, "th"

    .line 611
    .line 612
    .line 613
    const-string v9, "body"

    .line 614
    .line 615
    const-string v10, "caption"

    .line 616
    .line 617
    const-string v11, "col"

    .line 618
    .line 619
    const-string v12, "colgroup"

    .line 620
    .line 621
    const-string v13, "html"

    .line 622
    .line 623
    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InRowIgnore:[Ljava/lang/String;

    .line 628
    .line 629
    const-string v0, "keygen"

    .line 630
    .line 631
    const-string/jumbo v3, "textarea"

    .line 632
    .line 633
    .line 634
    const-string v7, "input"

    .line 635
    .line 636
    filled-new-array {v7, v0, v3}, [Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelectEnd:[Ljava/lang/String;

    .line 641
    .line 642
    const-string/jumbo v15, "thead"

    .line 643
    .line 644
    .line 645
    const-string/jumbo v16, "tr"

    .line 646
    .line 647
    .line 648
    const-string v9, "caption"

    .line 649
    .line 650
    const-string/jumbo v10, "table"

    .line 651
    .line 652
    .line 653
    const-string/jumbo v11, "tbody"

    .line 654
    .line 655
    .line 656
    const-string/jumbo v12, "td"

    .line 657
    .line 658
    .line 659
    const-string/jumbo v13, "tfoot"

    .line 660
    .line 661
    .line 662
    const-string/jumbo v14, "th"

    .line 663
    .line 664
    .line 665
    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelectTableEnd:[Ljava/lang/String;

    .line 670
    .line 671
    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableEndIgnore:[Ljava/lang/String;

    .line 676
    .line 677
    const-string v0, "noscript"

    .line 678
    .line 679
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadNoscriptIgnore:[Ljava/lang/String;

    .line 684
    .line 685
    const-string/jumbo v17, "thead"

    .line 686
    .line 687
    .line 688
    const-string/jumbo v18, "tr"

    .line 689
    .line 690
    .line 691
    const-string v9, "body"

    .line 692
    .line 693
    const-string v10, "col"

    .line 694
    .line 695
    const-string v11, "colgroup"

    .line 696
    .line 697
    const-string v12, "html"

    .line 698
    .line 699
    const-string/jumbo v13, "tbody"

    .line 700
    .line 701
    .line 702
    const-string/jumbo v14, "td"

    .line 703
    .line 704
    .line 705
    const-string/jumbo v15, "tfoot"

    .line 706
    .line 707
    .line 708
    const-string/jumbo v16, "th"

    .line 709
    .line 710
    .line 711
    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCaptionIgnore:[Ljava/lang/String;

    .line 716
    .line 717
    const-string/jumbo v17, "template"

    .line 718
    .line 719
    .line 720
    const-string/jumbo v18, "title"

    .line 721
    .line 722
    .line 723
    const-string v9, "base"

    .line 724
    .line 725
    const-string v10, "basefont"

    .line 726
    .line 727
    const-string v11, "bgsound"

    .line 728
    .line 729
    const-string v12, "link"

    .line 730
    .line 731
    const-string v13, "meta"

    .line 732
    .line 733
    const-string v14, "noframes"

    .line 734
    .line 735
    const-string v15, "script"

    .line 736
    .line 737
    const-string/jumbo v16, "style"

    .line 738
    .line 739
    .line 740
    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTemplateToHead:[Ljava/lang/String;

    .line 745
    .line 746
    filled-new-array {v1, v8, v2, v5, v6}, [Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTemplateToTable:[Ljava/lang/String;

    .line 751
    .line 752
    const-string/jumbo v43, "ul"

    .line 753
    .line 754
    .line 755
    const-string/jumbo v44, "var"

    .line 756
    .line 757
    .line 758
    const-string v1, "b"

    .line 759
    .line 760
    const-string v2, "big"

    .line 761
    .line 762
    const-string v3, "blockquote"

    .line 763
    .line 764
    const-string v4, "body"

    .line 765
    .line 766
    const-string v5, "br"

    .line 767
    .line 768
    const-string v6, "center"

    .line 769
    .line 770
    const-string v7, "code"

    .line 771
    .line 772
    const-string v8, "dd"

    .line 773
    .line 774
    const-string v9, "div"

    .line 775
    .line 776
    const-string v10, "dl"

    .line 777
    .line 778
    const-string v11, "dt"

    .line 779
    .line 780
    const-string v12, "em"

    .line 781
    .line 782
    const-string v13, "embed"

    .line 783
    .line 784
    const-string v14, "h1"

    .line 785
    .line 786
    const-string v15, "h2"

    .line 787
    .line 788
    const-string v16, "h3"

    .line 789
    .line 790
    const-string v17, "h4"

    .line 791
    .line 792
    const-string v18, "h5"

    .line 793
    .line 794
    const-string v19, "h6"

    .line 795
    .line 796
    const-string v20, "head"

    .line 797
    .line 798
    const-string v21, "hr"

    .line 799
    .line 800
    const-string v22, "i"

    .line 801
    .line 802
    const-string v23, "img"

    .line 803
    .line 804
    const-string v24, "li"

    .line 805
    .line 806
    const-string v25, "listing"

    .line 807
    .line 808
    const-string v26, "menu"

    .line 809
    .line 810
    const-string v27, "meta"

    .line 811
    .line 812
    const-string v28, "nobr"

    .line 813
    .line 814
    const-string v29, "ol"

    .line 815
    .line 816
    const-string v30, "p"

    .line 817
    .line 818
    const-string v31, "pre"

    .line 819
    .line 820
    const-string v32, "ruby"

    .line 821
    .line 822
    const-string v33, "s"

    .line 823
    .line 824
    const-string/jumbo v34, "small"

    .line 825
    .line 826
    .line 827
    const-string/jumbo v35, "span"

    .line 828
    .line 829
    .line 830
    const-string/jumbo v36, "strike"

    .line 831
    .line 832
    .line 833
    const-string/jumbo v37, "strong"

    .line 834
    .line 835
    .line 836
    const-string/jumbo v38, "sub"

    .line 837
    .line 838
    .line 839
    const-string/jumbo v39, "sup"

    .line 840
    .line 841
    .line 842
    const-string/jumbo v40, "table"

    .line 843
    .line 844
    .line 845
    const-string/jumbo v41, "tt"

    .line 846
    .line 847
    .line 848
    const-string/jumbo v42, "u"

    .line 849
    .line 850
    .line 851
    filled-new-array/range {v1 .. v44}, [Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InForeignToHtml:[Ljava/lang/String;

    .line 856
    .line 857
    return-void
.end method

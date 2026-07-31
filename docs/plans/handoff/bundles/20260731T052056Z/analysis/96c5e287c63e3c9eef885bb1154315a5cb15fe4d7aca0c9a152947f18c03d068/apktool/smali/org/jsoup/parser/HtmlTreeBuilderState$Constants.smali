.class public abstract Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


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
    const-string v1, "style"

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadRaw:[Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "body"

    .line 28
    .line 29
    const-string v2, "br"

    .line 30
    .line 31
    const-string v3, "html"

    .line 32
    .line 33
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    sput-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadEnd:[Ljava/lang/String;

    .line 38
    .line 39
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    sput-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->AfterHeadBody:[Ljava/lang/String;

    .line 44
    .line 45
    const-string v4, "head"

    .line 46
    .line 47
    filled-new-array {v0, v2, v4, v3}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->BeforeHtmlToHead:[Ljava/lang/String;

    .line 52
    .line 53
    const-string v9, "noframes"

    .line 54
    .line 55
    const-string v10, "style"

    .line 56
    .line 57
    const-string v5, "basefont"

    .line 58
    .line 59
    const-string v6, "bgsound"

    .line 60
    .line 61
    const-string v7, "link"

    .line 62
    .line 63
    const-string v8, "meta"

    .line 64
    .line 65
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadNoScriptHead:[Ljava/lang/String;

    .line 70
    .line 71
    const-string v14, "template"

    .line 72
    .line 73
    const-string v15, "title"

    .line 74
    .line 75
    const-string v5, "base"

    .line 76
    .line 77
    const-string v6, "basefont"

    .line 78
    .line 79
    const-string v7, "bgsound"

    .line 80
    .line 81
    const-string v8, "command"

    .line 82
    .line 83
    const-string v9, "link"

    .line 84
    .line 85
    const-string v10, "meta"

    .line 86
    .line 87
    const-string v11, "noframes"

    .line 88
    .line 89
    const-string v12, "script"

    .line 90
    .line 91
    const-string v13, "style"

    .line 92
    .line 93
    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    .line 98
    .line 99
    const-string v25, "summary"

    .line 100
    .line 101
    const-string/jumbo v26, "ul"

    .line 102
    .line 103
    .line 104
    const-string v5, "address"

    .line 105
    .line 106
    const-string v6, "article"

    .line 107
    .line 108
    const-string v7, "aside"

    .line 109
    .line 110
    const-string v8, "blockquote"

    .line 111
    .line 112
    const-string v9, "center"

    .line 113
    .line 114
    const-string v10, "details"

    .line 115
    .line 116
    const-string v11, "dir"

    .line 117
    .line 118
    const-string v12, "div"

    .line 119
    .line 120
    const-string v13, "dl"

    .line 121
    .line 122
    const-string v14, "fieldset"

    .line 123
    .line 124
    const-string v15, "figcaption"

    .line 125
    .line 126
    const-string v16, "figure"

    .line 127
    .line 128
    const-string v17, "footer"

    .line 129
    .line 130
    const-string v18, "header"

    .line 131
    .line 132
    const-string v19, "hgroup"

    .line 133
    .line 134
    const-string v20, "menu"

    .line 135
    .line 136
    const-string v21, "nav"

    .line 137
    .line 138
    const-string v22, "ol"

    .line 139
    .line 140
    const-string v23, "p"

    .line 141
    .line 142
    const-string v24, "section"

    .line 143
    .line 144
    filled-new-array/range {v5 .. v26}, [Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    .line 149
    .line 150
    const-string v9, "h5"

    .line 151
    .line 152
    const-string v10, "h6"

    .line 153
    .line 154
    const-string v5, "h1"

    .line 155
    .line 156
    const-string v6, "h2"

    .line 157
    .line 158
    const-string v7, "h3"

    .line 159
    .line 160
    const-string v8, "h4"

    .line 161
    .line 162
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    .line 167
    .line 168
    const-string v2, "div"

    .line 169
    .line 170
    const-string v5, "p"

    .line 171
    .line 172
    const-string v6, "address"

    .line 173
    .line 174
    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    .line 179
    .line 180
    const-string v2, "dd"

    .line 181
    .line 182
    const-string v5, "dt"

    .line 183
    .line 184
    filled-new-array {v2, v5}, [Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    .line 189
    .line 190
    const-string v2, "marquee"

    .line 191
    .line 192
    const-string v5, "object"

    .line 193
    .line 194
    const-string v6, "applet"

    .line 195
    .line 196
    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    .line 201
    .line 202
    const-string v2, "source"

    .line 203
    .line 204
    const-string/jumbo v5, "track"

    .line 205
    .line 206
    .line 207
    const-string v6, "param"

    .line 208
    .line 209
    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    .line 214
    .line 215
    const-string v14, "thead"

    .line 216
    .line 217
    const-string/jumbo v15, "tr"

    .line 218
    .line 219
    .line 220
    const-string v5, "caption"

    .line 221
    .line 222
    const-string v6, "col"

    .line 223
    .line 224
    const-string v7, "colgroup"

    .line 225
    .line 226
    const-string v8, "frame"

    .line 227
    .line 228
    const-string v9, "head"

    .line 229
    .line 230
    const-string v10, "tbody"

    .line 231
    .line 232
    const-string v11, "td"

    .line 233
    .line 234
    const-string v12, "tfoot"

    .line 235
    .line 236
    const-string v13, "th"

    .line 237
    .line 238
    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    .line 243
    .line 244
    const-string v27, "summary"

    .line 245
    .line 246
    const-string/jumbo v28, "ul"

    .line 247
    .line 248
    .line 249
    const-string v5, "address"

    .line 250
    .line 251
    const-string v6, "article"

    .line 252
    .line 253
    const-string v7, "aside"

    .line 254
    .line 255
    const-string v8, "blockquote"

    .line 256
    .line 257
    const-string v9, "button"

    .line 258
    .line 259
    const-string v10, "center"

    .line 260
    .line 261
    const-string v11, "details"

    .line 262
    .line 263
    const-string v12, "dir"

    .line 264
    .line 265
    const-string v13, "div"

    .line 266
    .line 267
    const-string v14, "dl"

    .line 268
    .line 269
    const-string v15, "fieldset"

    .line 270
    .line 271
    const-string v16, "figcaption"

    .line 272
    .line 273
    const-string v17, "figure"

    .line 274
    .line 275
    const-string v18, "footer"

    .line 276
    .line 277
    const-string v19, "header"

    .line 278
    .line 279
    const-string v20, "hgroup"

    .line 280
    .line 281
    const-string v21, "listing"

    .line 282
    .line 283
    const-string v22, "menu"

    .line 284
    .line 285
    const-string v23, "nav"

    .line 286
    .line 287
    const-string v24, "ol"

    .line 288
    .line 289
    const-string v25, "pre"

    .line 290
    .line 291
    const-string v26, "section"

    .line 292
    .line 293
    filled-new-array/range {v5 .. v28}, [Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    .line 298
    .line 299
    const-string v21, "thead"

    .line 300
    .line 301
    const-string/jumbo v22, "tr"

    .line 302
    .line 303
    .line 304
    const-string v5, "body"

    .line 305
    .line 306
    const-string v6, "dd"

    .line 307
    .line 308
    const-string v7, "dt"

    .line 309
    .line 310
    const-string v8, "html"

    .line 311
    .line 312
    const-string v9, "li"

    .line 313
    .line 314
    const-string v10, "optgroup"

    .line 315
    .line 316
    const-string v11, "option"

    .line 317
    .line 318
    const-string v12, "p"

    .line 319
    .line 320
    const-string v13, "rb"

    .line 321
    .line 322
    const-string v14, "rp"

    .line 323
    .line 324
    const-string v15, "rt"

    .line 325
    .line 326
    const-string v16, "rtc"

    .line 327
    .line 328
    const-string v17, "tbody"

    .line 329
    .line 330
    const-string v18, "td"

    .line 331
    .line 332
    const-string v19, "tfoot"

    .line 333
    .line 334
    const-string v20, "th"

    .line 335
    .line 336
    filled-new-array/range {v5 .. v22}, [Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndOtherErrors:[Ljava/lang/String;

    .line 341
    .line 342
    const-string/jumbo v17, "tt"

    .line 343
    .line 344
    .line 345
    const-string/jumbo v18, "u"

    .line 346
    .line 347
    .line 348
    const-string v5, "a"

    .line 349
    .line 350
    const-string v6, "b"

    .line 351
    .line 352
    const-string v7, "big"

    .line 353
    .line 354
    const-string v8, "code"

    .line 355
    .line 356
    const-string v9, "em"

    .line 357
    .line 358
    const-string v10, "font"

    .line 359
    .line 360
    const-string v11, "i"

    .line 361
    .line 362
    const-string v12, "nobr"

    .line 363
    .line 364
    const-string v13, "s"

    .line 365
    .line 366
    const-string v14, "small"

    .line 367
    .line 368
    const-string v15, "strike"

    .line 369
    .line 370
    const-string v16, "strong"

    .line 371
    .line 372
    filled-new-array/range {v5 .. v18}, [Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    .line 377
    .line 378
    const-string v2, "tbody"

    .line 379
    .line 380
    const-string v5, "tfoot"

    .line 381
    .line 382
    const-string v6, "thead"

    .line 383
    .line 384
    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v7

    .line 388
    sput-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableToBody:[Ljava/lang/String;

    .line 389
    .line 390
    const-string v7, "td"

    .line 391
    .line 392
    const-string v8, "th"

    .line 393
    .line 394
    const-string/jumbo v9, "tr"

    .line 395
    .line 396
    .line 397
    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v10

    .line 401
    sput-object v10, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableAddBody:[Ljava/lang/String;

    .line 402
    .line 403
    const-string v10, "script"

    .line 404
    .line 405
    const-string v11, "template"

    .line 406
    .line 407
    filled-new-array {v10, v1, v11}, [Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableToHead:[Ljava/lang/String;

    .line 412
    .line 413
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellNames:[Ljava/lang/String;

    .line 418
    .line 419
    const-string v1, "caption"

    .line 420
    .line 421
    const-string v7, "col"

    .line 422
    .line 423
    const-string v8, "colgroup"

    .line 424
    .line 425
    filled-new-array {v0, v1, v7, v8, v3}, [Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellBody:[Ljava/lang/String;

    .line 430
    .line 431
    const-string v0, "table"

    .line 432
    .line 433
    filled-new-array {v0, v2, v5, v6, v9}, [Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellTable:[Ljava/lang/String;

    .line 438
    .line 439
    const-string v17, "thead"

    .line 440
    .line 441
    const-string/jumbo v18, "tr"

    .line 442
    .line 443
    .line 444
    const-string v10, "caption"

    .line 445
    .line 446
    const-string v11, "col"

    .line 447
    .line 448
    const-string v12, "colgroup"

    .line 449
    .line 450
    const-string v13, "tbody"

    .line 451
    .line 452
    const-string v14, "td"

    .line 453
    .line 454
    const-string v15, "tfoot"

    .line 455
    .line 456
    const-string v16, "th"

    .line 457
    .line 458
    filled-new-array/range {v10 .. v18}, [Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellCol:[Ljava/lang/String;

    .line 463
    .line 464
    const-string v19, "thead"

    .line 465
    .line 466
    const-string/jumbo v20, "tr"

    .line 467
    .line 468
    .line 469
    const-string v10, "body"

    .line 470
    .line 471
    const-string v11, "caption"

    .line 472
    .line 473
    const-string v12, "col"

    .line 474
    .line 475
    const-string v13, "colgroup"

    .line 476
    .line 477
    const-string v14, "html"

    .line 478
    .line 479
    const-string v15, "tbody"

    .line 480
    .line 481
    const-string v16, "td"

    .line 482
    .line 483
    const-string v17, "tfoot"

    .line 484
    .line 485
    const-string v18, "th"

    .line 486
    .line 487
    filled-new-array/range {v10 .. v20}, [Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableEndErr:[Ljava/lang/String;

    .line 492
    .line 493
    filled-new-array {v0, v2, v5, v6, v9}, [Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableFoster:[Ljava/lang/String;

    .line 498
    .line 499
    const-string v13, "tfoot"

    .line 500
    .line 501
    const-string v14, "thead"

    .line 502
    .line 503
    const-string v9, "caption"

    .line 504
    .line 505
    const-string v10, "col"

    .line 506
    .line 507
    const-string v11, "colgroup"

    .line 508
    .line 509
    const-string v12, "tbody"

    .line 510
    .line 511
    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableBodyExit:[Ljava/lang/String;

    .line 516
    .line 517
    const-string v15, "th"

    .line 518
    .line 519
    const-string/jumbo v16, "tr"

    .line 520
    .line 521
    .line 522
    const-string v9, "body"

    .line 523
    .line 524
    const-string v10, "caption"

    .line 525
    .line 526
    const-string v11, "col"

    .line 527
    .line 528
    const-string v12, "colgroup"

    .line 529
    .line 530
    const-string v13, "html"

    .line 531
    .line 532
    const-string v14, "td"

    .line 533
    .line 534
    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableBodyEndIgnore:[Ljava/lang/String;

    .line 539
    .line 540
    const-string v14, "thead"

    .line 541
    .line 542
    const-string/jumbo v15, "tr"

    .line 543
    .line 544
    .line 545
    const-string v9, "caption"

    .line 546
    .line 547
    const-string v10, "col"

    .line 548
    .line 549
    const-string v11, "colgroup"

    .line 550
    .line 551
    const-string v12, "tbody"

    .line 552
    .line 553
    const-string v13, "tfoot"

    .line 554
    .line 555
    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InRowMissing:[Ljava/lang/String;

    .line 560
    .line 561
    const-string v14, "td"

    .line 562
    .line 563
    const-string v15, "th"

    .line 564
    .line 565
    const-string v9, "body"

    .line 566
    .line 567
    const-string v10, "caption"

    .line 568
    .line 569
    const-string v11, "col"

    .line 570
    .line 571
    const-string v12, "colgroup"

    .line 572
    .line 573
    const-string v13, "html"

    .line 574
    .line 575
    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InRowIgnore:[Ljava/lang/String;

    .line 580
    .line 581
    const-string v0, "keygen"

    .line 582
    .line 583
    const-string v3, "textarea"

    .line 584
    .line 585
    const-string v7, "input"

    .line 586
    .line 587
    filled-new-array {v7, v0, v3}, [Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelectEnd:[Ljava/lang/String;

    .line 592
    .line 593
    const-string v15, "thead"

    .line 594
    .line 595
    const-string/jumbo v16, "tr"

    .line 596
    .line 597
    .line 598
    const-string v9, "caption"

    .line 599
    .line 600
    const-string v10, "table"

    .line 601
    .line 602
    const-string v11, "tbody"

    .line 603
    .line 604
    const-string v12, "td"

    .line 605
    .line 606
    const-string v13, "tfoot"

    .line 607
    .line 608
    const-string v14, "th"

    .line 609
    .line 610
    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelectTableEnd:[Ljava/lang/String;

    .line 615
    .line 616
    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableEndIgnore:[Ljava/lang/String;

    .line 621
    .line 622
    const-string v0, "noscript"

    .line 623
    .line 624
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadNoscriptIgnore:[Ljava/lang/String;

    .line 629
    .line 630
    const-string v17, "thead"

    .line 631
    .line 632
    const-string/jumbo v18, "tr"

    .line 633
    .line 634
    .line 635
    const-string v9, "body"

    .line 636
    .line 637
    const-string v10, "col"

    .line 638
    .line 639
    const-string v11, "colgroup"

    .line 640
    .line 641
    const-string v12, "html"

    .line 642
    .line 643
    const-string v13, "tbody"

    .line 644
    .line 645
    const-string v14, "td"

    .line 646
    .line 647
    const-string v15, "tfoot"

    .line 648
    .line 649
    const-string v16, "th"

    .line 650
    .line 651
    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCaptionIgnore:[Ljava/lang/String;

    .line 656
    .line 657
    const-string v17, "template"

    .line 658
    .line 659
    const-string v18, "title"

    .line 660
    .line 661
    const-string v9, "base"

    .line 662
    .line 663
    const-string v10, "basefont"

    .line 664
    .line 665
    const-string v11, "bgsound"

    .line 666
    .line 667
    const-string v12, "link"

    .line 668
    .line 669
    const-string v13, "meta"

    .line 670
    .line 671
    const-string v14, "noframes"

    .line 672
    .line 673
    const-string v15, "script"

    .line 674
    .line 675
    const-string v16, "style"

    .line 676
    .line 677
    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTemplateToHead:[Ljava/lang/String;

    .line 682
    .line 683
    filled-new-array {v1, v8, v2, v5, v6}, [Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTemplateToTable:[Ljava/lang/String;

    .line 688
    .line 689
    const-string/jumbo v43, "ul"

    .line 690
    .line 691
    .line 692
    const-string/jumbo v44, "var"

    .line 693
    .line 694
    .line 695
    const-string v1, "b"

    .line 696
    .line 697
    const-string v2, "big"

    .line 698
    .line 699
    const-string v3, "blockquote"

    .line 700
    .line 701
    const-string v4, "body"

    .line 702
    .line 703
    const-string v5, "br"

    .line 704
    .line 705
    const-string v6, "center"

    .line 706
    .line 707
    const-string v7, "code"

    .line 708
    .line 709
    const-string v8, "dd"

    .line 710
    .line 711
    const-string v9, "div"

    .line 712
    .line 713
    const-string v10, "dl"

    .line 714
    .line 715
    const-string v11, "dt"

    .line 716
    .line 717
    const-string v12, "em"

    .line 718
    .line 719
    const-string v13, "embed"

    .line 720
    .line 721
    const-string v14, "h1"

    .line 722
    .line 723
    const-string v15, "h2"

    .line 724
    .line 725
    const-string v16, "h3"

    .line 726
    .line 727
    const-string v17, "h4"

    .line 728
    .line 729
    const-string v18, "h5"

    .line 730
    .line 731
    const-string v19, "h6"

    .line 732
    .line 733
    const-string v20, "head"

    .line 734
    .line 735
    const-string v21, "hr"

    .line 736
    .line 737
    const-string v22, "i"

    .line 738
    .line 739
    const-string v23, "img"

    .line 740
    .line 741
    const-string v24, "li"

    .line 742
    .line 743
    const-string v25, "listing"

    .line 744
    .line 745
    const-string v26, "menu"

    .line 746
    .line 747
    const-string v27, "meta"

    .line 748
    .line 749
    const-string v28, "nobr"

    .line 750
    .line 751
    const-string v29, "ol"

    .line 752
    .line 753
    const-string v30, "p"

    .line 754
    .line 755
    const-string v31, "pre"

    .line 756
    .line 757
    const-string v32, "ruby"

    .line 758
    .line 759
    const-string v33, "s"

    .line 760
    .line 761
    const-string v34, "small"

    .line 762
    .line 763
    const-string v35, "span"

    .line 764
    .line 765
    const-string v36, "strike"

    .line 766
    .line 767
    const-string v37, "strong"

    .line 768
    .line 769
    const-string v38, "sub"

    .line 770
    .line 771
    const-string v39, "sup"

    .line 772
    .line 773
    const-string v40, "table"

    .line 774
    .line 775
    const-string/jumbo v41, "tt"

    .line 776
    .line 777
    .line 778
    const-string/jumbo v42, "u"

    .line 779
    .line 780
    .line 781
    filled-new-array/range {v1 .. v44}, [Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InForeignToHtml:[Ljava/lang/String;

    .line 786
    .line 787
    return-void
.end method

.class public abstract Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


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
    const-string v26, "ul"

    .line 102
    .line 103
    const-string v5, "address"

    .line 104
    .line 105
    const-string v6, "article"

    .line 106
    .line 107
    const-string v7, "aside"

    .line 108
    .line 109
    const-string v8, "blockquote"

    .line 110
    .line 111
    const-string v9, "center"

    .line 112
    .line 113
    const-string v10, "details"

    .line 114
    .line 115
    const-string v11, "dir"

    .line 116
    .line 117
    const-string v12, "div"

    .line 118
    .line 119
    const-string v13, "dl"

    .line 120
    .line 121
    const-string v14, "fieldset"

    .line 122
    .line 123
    const-string v15, "figcaption"

    .line 124
    .line 125
    const-string v16, "figure"

    .line 126
    .line 127
    const-string v17, "footer"

    .line 128
    .line 129
    const-string v18, "header"

    .line 130
    .line 131
    const-string v19, "hgroup"

    .line 132
    .line 133
    const-string v20, "menu"

    .line 134
    .line 135
    const-string v21, "nav"

    .line 136
    .line 137
    const-string v22, "ol"

    .line 138
    .line 139
    const-string v23, "p"

    .line 140
    .line 141
    const-string v24, "section"

    .line 142
    .line 143
    filled-new-array/range {v5 .. v26}, [Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    .line 148
    .line 149
    const-string v9, "h5"

    .line 150
    .line 151
    const-string v10, "h6"

    .line 152
    .line 153
    const-string v5, "h1"

    .line 154
    .line 155
    const-string v6, "h2"

    .line 156
    .line 157
    const-string v7, "h3"

    .line 158
    .line 159
    const-string v8, "h4"

    .line 160
    .line 161
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    .line 166
    .line 167
    const-string v2, "div"

    .line 168
    .line 169
    const-string v5, "p"

    .line 170
    .line 171
    const-string v6, "address"

    .line 172
    .line 173
    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    .line 178
    .line 179
    const-string v2, "dd"

    .line 180
    .line 181
    const-string v5, "dt"

    .line 182
    .line 183
    filled-new-array {v2, v5}, [Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    .line 188
    .line 189
    const-string v2, "marquee"

    .line 190
    .line 191
    const-string v5, "object"

    .line 192
    .line 193
    const-string v6, "applet"

    .line 194
    .line 195
    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    .line 200
    .line 201
    const-string v2, "source"

    .line 202
    .line 203
    const-string v5, "track"

    .line 204
    .line 205
    const-string v6, "param"

    .line 206
    .line 207
    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    .line 212
    .line 213
    const-string v14, "thead"

    .line 214
    .line 215
    const-string v15, "tr"

    .line 216
    .line 217
    const-string v5, "caption"

    .line 218
    .line 219
    const-string v6, "col"

    .line 220
    .line 221
    const-string v7, "colgroup"

    .line 222
    .line 223
    const-string v8, "frame"

    .line 224
    .line 225
    const-string v9, "head"

    .line 226
    .line 227
    const-string v10, "tbody"

    .line 228
    .line 229
    const-string v11, "td"

    .line 230
    .line 231
    const-string v12, "tfoot"

    .line 232
    .line 233
    const-string v13, "th"

    .line 234
    .line 235
    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    .line 240
    .line 241
    const-string v27, "summary"

    .line 242
    .line 243
    const-string v28, "ul"

    .line 244
    .line 245
    const-string v5, "address"

    .line 246
    .line 247
    const-string v6, "article"

    .line 248
    .line 249
    const-string v7, "aside"

    .line 250
    .line 251
    const-string v8, "blockquote"

    .line 252
    .line 253
    const-string v9, "button"

    .line 254
    .line 255
    const-string v10, "center"

    .line 256
    .line 257
    const-string v11, "details"

    .line 258
    .line 259
    const-string v12, "dir"

    .line 260
    .line 261
    const-string v13, "div"

    .line 262
    .line 263
    const-string v14, "dl"

    .line 264
    .line 265
    const-string v15, "fieldset"

    .line 266
    .line 267
    const-string v16, "figcaption"

    .line 268
    .line 269
    const-string v17, "figure"

    .line 270
    .line 271
    const-string v18, "footer"

    .line 272
    .line 273
    const-string v19, "header"

    .line 274
    .line 275
    const-string v20, "hgroup"

    .line 276
    .line 277
    const-string v21, "listing"

    .line 278
    .line 279
    const-string v22, "menu"

    .line 280
    .line 281
    const-string v23, "nav"

    .line 282
    .line 283
    const-string v24, "ol"

    .line 284
    .line 285
    const-string v25, "pre"

    .line 286
    .line 287
    const-string v26, "section"

    .line 288
    .line 289
    filled-new-array/range {v5 .. v28}, [Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    .line 294
    .line 295
    const-string v21, "thead"

    .line 296
    .line 297
    const-string v22, "tr"

    .line 298
    .line 299
    const-string v5, "body"

    .line 300
    .line 301
    const-string v6, "dd"

    .line 302
    .line 303
    const-string v7, "dt"

    .line 304
    .line 305
    const-string v8, "html"

    .line 306
    .line 307
    const-string v9, "li"

    .line 308
    .line 309
    const-string v10, "optgroup"

    .line 310
    .line 311
    const-string v11, "option"

    .line 312
    .line 313
    const-string v12, "p"

    .line 314
    .line 315
    const-string v13, "rb"

    .line 316
    .line 317
    const-string v14, "rp"

    .line 318
    .line 319
    const-string v15, "rt"

    .line 320
    .line 321
    const-string v16, "rtc"

    .line 322
    .line 323
    const-string v17, "tbody"

    .line 324
    .line 325
    const-string v18, "td"

    .line 326
    .line 327
    const-string v19, "tfoot"

    .line 328
    .line 329
    const-string v20, "th"

    .line 330
    .line 331
    filled-new-array/range {v5 .. v22}, [Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndOtherErrors:[Ljava/lang/String;

    .line 336
    .line 337
    const-string v17, "tt"

    .line 338
    .line 339
    const-string v18, "u"

    .line 340
    .line 341
    const-string v5, "a"

    .line 342
    .line 343
    const-string v6, "b"

    .line 344
    .line 345
    const-string v7, "big"

    .line 346
    .line 347
    const-string v8, "code"

    .line 348
    .line 349
    const-string v9, "em"

    .line 350
    .line 351
    const-string v10, "font"

    .line 352
    .line 353
    const-string v11, "i"

    .line 354
    .line 355
    const-string v12, "nobr"

    .line 356
    .line 357
    const-string v13, "s"

    .line 358
    .line 359
    const-string v14, "small"

    .line 360
    .line 361
    const-string v15, "strike"

    .line 362
    .line 363
    const-string v16, "strong"

    .line 364
    .line 365
    filled-new-array/range {v5 .. v18}, [Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    .line 370
    .line 371
    const-string v2, "tbody"

    .line 372
    .line 373
    const-string v5, "tfoot"

    .line 374
    .line 375
    const-string v6, "thead"

    .line 376
    .line 377
    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v7

    .line 381
    sput-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableToBody:[Ljava/lang/String;

    .line 382
    .line 383
    const-string v7, "td"

    .line 384
    .line 385
    const-string v8, "th"

    .line 386
    .line 387
    const-string v9, "tr"

    .line 388
    .line 389
    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v10

    .line 393
    sput-object v10, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableAddBody:[Ljava/lang/String;

    .line 394
    .line 395
    const-string v10, "script"

    .line 396
    .line 397
    const-string v11, "template"

    .line 398
    .line 399
    filled-new-array {v10, v1, v11}, [Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableToHead:[Ljava/lang/String;

    .line 404
    .line 405
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellNames:[Ljava/lang/String;

    .line 410
    .line 411
    const-string v1, "caption"

    .line 412
    .line 413
    const-string v7, "col"

    .line 414
    .line 415
    const-string v8, "colgroup"

    .line 416
    .line 417
    filled-new-array {v0, v1, v7, v8, v3}, [Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellBody:[Ljava/lang/String;

    .line 422
    .line 423
    const-string v0, "table"

    .line 424
    .line 425
    filled-new-array {v0, v2, v5, v6, v9}, [Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellTable:[Ljava/lang/String;

    .line 430
    .line 431
    const-string v17, "thead"

    .line 432
    .line 433
    const-string v18, "tr"

    .line 434
    .line 435
    const-string v10, "caption"

    .line 436
    .line 437
    const-string v11, "col"

    .line 438
    .line 439
    const-string v12, "colgroup"

    .line 440
    .line 441
    const-string v13, "tbody"

    .line 442
    .line 443
    const-string v14, "td"

    .line 444
    .line 445
    const-string v15, "tfoot"

    .line 446
    .line 447
    const-string v16, "th"

    .line 448
    .line 449
    filled-new-array/range {v10 .. v18}, [Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellCol:[Ljava/lang/String;

    .line 454
    .line 455
    const-string v19, "thead"

    .line 456
    .line 457
    const-string v20, "tr"

    .line 458
    .line 459
    const-string v10, "body"

    .line 460
    .line 461
    const-string v11, "caption"

    .line 462
    .line 463
    const-string v12, "col"

    .line 464
    .line 465
    const-string v13, "colgroup"

    .line 466
    .line 467
    const-string v14, "html"

    .line 468
    .line 469
    const-string v15, "tbody"

    .line 470
    .line 471
    const-string v16, "td"

    .line 472
    .line 473
    const-string v17, "tfoot"

    .line 474
    .line 475
    const-string v18, "th"

    .line 476
    .line 477
    filled-new-array/range {v10 .. v20}, [Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableEndErr:[Ljava/lang/String;

    .line 482
    .line 483
    filled-new-array {v0, v2, v5, v6, v9}, [Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableFoster:[Ljava/lang/String;

    .line 488
    .line 489
    const-string v13, "tfoot"

    .line 490
    .line 491
    const-string v14, "thead"

    .line 492
    .line 493
    const-string v9, "caption"

    .line 494
    .line 495
    const-string v10, "col"

    .line 496
    .line 497
    const-string v11, "colgroup"

    .line 498
    .line 499
    const-string v12, "tbody"

    .line 500
    .line 501
    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableBodyExit:[Ljava/lang/String;

    .line 506
    .line 507
    const-string v15, "th"

    .line 508
    .line 509
    const-string v16, "tr"

    .line 510
    .line 511
    const-string v9, "body"

    .line 512
    .line 513
    const-string v10, "caption"

    .line 514
    .line 515
    const-string v11, "col"

    .line 516
    .line 517
    const-string v12, "colgroup"

    .line 518
    .line 519
    const-string v13, "html"

    .line 520
    .line 521
    const-string v14, "td"

    .line 522
    .line 523
    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableBodyEndIgnore:[Ljava/lang/String;

    .line 528
    .line 529
    const-string v14, "thead"

    .line 530
    .line 531
    const-string v15, "tr"

    .line 532
    .line 533
    const-string v9, "caption"

    .line 534
    .line 535
    const-string v10, "col"

    .line 536
    .line 537
    const-string v11, "colgroup"

    .line 538
    .line 539
    const-string v12, "tbody"

    .line 540
    .line 541
    const-string v13, "tfoot"

    .line 542
    .line 543
    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InRowMissing:[Ljava/lang/String;

    .line 548
    .line 549
    const-string v14, "td"

    .line 550
    .line 551
    const-string v15, "th"

    .line 552
    .line 553
    const-string v9, "body"

    .line 554
    .line 555
    const-string v10, "caption"

    .line 556
    .line 557
    const-string v11, "col"

    .line 558
    .line 559
    const-string v12, "colgroup"

    .line 560
    .line 561
    const-string v13, "html"

    .line 562
    .line 563
    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InRowIgnore:[Ljava/lang/String;

    .line 568
    .line 569
    const-string v0, "keygen"

    .line 570
    .line 571
    const-string v3, "textarea"

    .line 572
    .line 573
    const-string v7, "input"

    .line 574
    .line 575
    filled-new-array {v7, v0, v3}, [Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelectEnd:[Ljava/lang/String;

    .line 580
    .line 581
    const-string v15, "thead"

    .line 582
    .line 583
    const-string v16, "tr"

    .line 584
    .line 585
    const-string v9, "caption"

    .line 586
    .line 587
    const-string v10, "table"

    .line 588
    .line 589
    const-string v11, "tbody"

    .line 590
    .line 591
    const-string v12, "td"

    .line 592
    .line 593
    const-string v13, "tfoot"

    .line 594
    .line 595
    const-string v14, "th"

    .line 596
    .line 597
    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelectTableEnd:[Ljava/lang/String;

    .line 602
    .line 603
    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableEndIgnore:[Ljava/lang/String;

    .line 608
    .line 609
    const-string v0, "noscript"

    .line 610
    .line 611
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadNoscriptIgnore:[Ljava/lang/String;

    .line 616
    .line 617
    const-string v17, "thead"

    .line 618
    .line 619
    const-string v18, "tr"

    .line 620
    .line 621
    const-string v9, "body"

    .line 622
    .line 623
    const-string v10, "col"

    .line 624
    .line 625
    const-string v11, "colgroup"

    .line 626
    .line 627
    const-string v12, "html"

    .line 628
    .line 629
    const-string v13, "tbody"

    .line 630
    .line 631
    const-string v14, "td"

    .line 632
    .line 633
    const-string v15, "tfoot"

    .line 634
    .line 635
    const-string v16, "th"

    .line 636
    .line 637
    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCaptionIgnore:[Ljava/lang/String;

    .line 642
    .line 643
    const-string v17, "template"

    .line 644
    .line 645
    const-string v18, "title"

    .line 646
    .line 647
    const-string v9, "base"

    .line 648
    .line 649
    const-string v10, "basefont"

    .line 650
    .line 651
    const-string v11, "bgsound"

    .line 652
    .line 653
    const-string v12, "link"

    .line 654
    .line 655
    const-string v13, "meta"

    .line 656
    .line 657
    const-string v14, "noframes"

    .line 658
    .line 659
    const-string v15, "script"

    .line 660
    .line 661
    const-string v16, "style"

    .line 662
    .line 663
    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTemplateToHead:[Ljava/lang/String;

    .line 668
    .line 669
    filled-new-array {v1, v8, v2, v5, v6}, [Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTemplateToTable:[Ljava/lang/String;

    .line 674
    .line 675
    const-string v43, "ul"

    .line 676
    .line 677
    const-string/jumbo v44, "var"

    .line 678
    .line 679
    .line 680
    const-string v1, "b"

    .line 681
    .line 682
    const-string v2, "big"

    .line 683
    .line 684
    const-string v3, "blockquote"

    .line 685
    .line 686
    const-string v4, "body"

    .line 687
    .line 688
    const-string v5, "br"

    .line 689
    .line 690
    const-string v6, "center"

    .line 691
    .line 692
    const-string v7, "code"

    .line 693
    .line 694
    const-string v8, "dd"

    .line 695
    .line 696
    const-string v9, "div"

    .line 697
    .line 698
    const-string v10, "dl"

    .line 699
    .line 700
    const-string v11, "dt"

    .line 701
    .line 702
    const-string v12, "em"

    .line 703
    .line 704
    const-string v13, "embed"

    .line 705
    .line 706
    const-string v14, "h1"

    .line 707
    .line 708
    const-string v15, "h2"

    .line 709
    .line 710
    const-string v16, "h3"

    .line 711
    .line 712
    const-string v17, "h4"

    .line 713
    .line 714
    const-string v18, "h5"

    .line 715
    .line 716
    const-string v19, "h6"

    .line 717
    .line 718
    const-string v20, "head"

    .line 719
    .line 720
    const-string v21, "hr"

    .line 721
    .line 722
    const-string v22, "i"

    .line 723
    .line 724
    const-string v23, "img"

    .line 725
    .line 726
    const-string v24, "li"

    .line 727
    .line 728
    const-string v25, "listing"

    .line 729
    .line 730
    const-string v26, "menu"

    .line 731
    .line 732
    const-string v27, "meta"

    .line 733
    .line 734
    const-string v28, "nobr"

    .line 735
    .line 736
    const-string v29, "ol"

    .line 737
    .line 738
    const-string v30, "p"

    .line 739
    .line 740
    const-string v31, "pre"

    .line 741
    .line 742
    const-string v32, "ruby"

    .line 743
    .line 744
    const-string v33, "s"

    .line 745
    .line 746
    const-string v34, "small"

    .line 747
    .line 748
    const-string v35, "span"

    .line 749
    .line 750
    const-string v36, "strike"

    .line 751
    .line 752
    const-string v37, "strong"

    .line 753
    .line 754
    const-string v38, "sub"

    .line 755
    .line 756
    const-string v39, "sup"

    .line 757
    .line 758
    const-string v40, "table"

    .line 759
    .line 760
    const-string v41, "tt"

    .line 761
    .line 762
    const-string v42, "u"

    .line 763
    .line 764
    filled-new-array/range {v1 .. v44}, [Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InForeignToHtml:[Ljava/lang/String;

    .line 769
    .line 770
    return-void
.end method

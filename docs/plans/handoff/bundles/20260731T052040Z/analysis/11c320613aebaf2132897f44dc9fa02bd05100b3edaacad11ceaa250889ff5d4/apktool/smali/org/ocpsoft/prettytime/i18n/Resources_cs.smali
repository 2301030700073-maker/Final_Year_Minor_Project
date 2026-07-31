.class public Lorg/ocpsoft/prettytime/i18n/Resources_cs;
.super Ljava/util/ListResourceBundle;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;,
        Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormat;,
        Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsName;
    }
.end annotation


# static fields
.field private static final OBJECTS:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/16 v0, 0x67

    .line 2
    .line 3
    new-array v0, v0, [[Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v4, "CenturyPattern"

    .line 10
    .line 11
    aput-object v4, v2, v3

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const-string v5, "%n %u"

    .line 15
    .line 16
    aput-object v5, v2, v4

    .line 17
    .line 18
    aput-object v2, v0, v3

    .line 19
    .line 20
    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v6, "CenturyFuturePrefix"

    .line 23
    .line 24
    aput-object v6, v2, v3

    .line 25
    .line 26
    const-string/jumbo v6, "za "

    .line 27
    .line 28
    .line 29
    aput-object v6, v2, v4

    .line 30
    .line 31
    aput-object v2, v0, v4

    .line 32
    .line 33
    new-array v2, v1, [Ljava/lang/Object;

    .line 34
    .line 35
    const-string v7, "CenturyFutureSuffix"

    .line 36
    .line 37
    aput-object v7, v2, v3

    .line 38
    .line 39
    const-string v7, ""

    .line 40
    .line 41
    aput-object v7, v2, v4

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    new-array v2, v1, [Ljava/lang/Object;

    .line 46
    .line 47
    const-string v8, "CenturyPastPrefix"

    .line 48
    .line 49
    aput-object v8, v2, v3

    .line 50
    .line 51
    const-string v8, "p\u0159ed "

    .line 52
    .line 53
    aput-object v8, v2, v4

    .line 54
    .line 55
    const/4 v9, 0x3

    .line 56
    aput-object v2, v0, v9

    .line 57
    .line 58
    new-array v2, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    const-string v9, "CenturyPastSuffix"

    .line 61
    .line 62
    aput-object v9, v2, v3

    .line 63
    .line 64
    aput-object v7, v2, v4

    .line 65
    .line 66
    const/4 v9, 0x4

    .line 67
    aput-object v2, v0, v9

    .line 68
    .line 69
    new-array v2, v1, [Ljava/lang/Object;

    .line 70
    .line 71
    const-string v9, "CenturySingularName"

    .line 72
    .line 73
    aput-object v9, v2, v3

    .line 74
    .line 75
    const-string/jumbo v9, "stolet\u00ed"

    .line 76
    .line 77
    .line 78
    aput-object v9, v2, v4

    .line 79
    .line 80
    const/4 v10, 0x5

    .line 81
    aput-object v2, v0, v10

    .line 82
    .line 83
    new-array v2, v1, [Ljava/lang/Object;

    .line 84
    .line 85
    const-string v10, "CenturyPluralName"

    .line 86
    .line 87
    aput-object v10, v2, v3

    .line 88
    .line 89
    aput-object v9, v2, v4

    .line 90
    .line 91
    const/4 v10, 0x6

    .line 92
    aput-object v2, v0, v10

    .line 93
    .line 94
    new-array v2, v1, [Ljava/lang/Object;

    .line 95
    .line 96
    const-string v10, "CenturyPastSingularName"

    .line 97
    .line 98
    aput-object v10, v2, v3

    .line 99
    .line 100
    const-string/jumbo v10, "stolet\u00edm"

    .line 101
    .line 102
    .line 103
    aput-object v10, v2, v4

    .line 104
    .line 105
    const/4 v10, 0x7

    .line 106
    aput-object v2, v0, v10

    .line 107
    .line 108
    new-array v2, v1, [Ljava/lang/Object;

    .line 109
    .line 110
    const-string v10, "CenturyPastPluralName"

    .line 111
    .line 112
    aput-object v10, v2, v3

    .line 113
    .line 114
    const-string/jumbo v10, "stolet\u00edmi"

    .line 115
    .line 116
    .line 117
    aput-object v10, v2, v4

    .line 118
    .line 119
    const/16 v10, 0x8

    .line 120
    .line 121
    aput-object v2, v0, v10

    .line 122
    .line 123
    new-array v2, v1, [Ljava/lang/Object;

    .line 124
    .line 125
    const-string v10, "CenturyFutureSingularName"

    .line 126
    .line 127
    aput-object v10, v2, v3

    .line 128
    .line 129
    aput-object v9, v2, v4

    .line 130
    .line 131
    const/16 v10, 0x9

    .line 132
    .line 133
    aput-object v2, v0, v10

    .line 134
    .line 135
    new-array v2, v1, [Ljava/lang/Object;

    .line 136
    .line 137
    const-string v10, "CenturyFuturePluralName"

    .line 138
    .line 139
    aput-object v10, v2, v3

    .line 140
    .line 141
    aput-object v9, v2, v4

    .line 142
    .line 143
    const/16 v9, 0xa

    .line 144
    .line 145
    aput-object v2, v0, v9

    .line 146
    .line 147
    new-array v2, v1, [Ljava/lang/Object;

    .line 148
    .line 149
    const-string v9, "DayPattern"

    .line 150
    .line 151
    aput-object v9, v2, v3

    .line 152
    .line 153
    aput-object v5, v2, v4

    .line 154
    .line 155
    const/16 v9, 0xb

    .line 156
    .line 157
    aput-object v2, v0, v9

    .line 158
    .line 159
    new-array v2, v1, [Ljava/lang/Object;

    .line 160
    .line 161
    const-string v9, "DayFuturePrefix"

    .line 162
    .line 163
    aput-object v9, v2, v3

    .line 164
    .line 165
    aput-object v6, v2, v4

    .line 166
    .line 167
    const/16 v9, 0xc

    .line 168
    .line 169
    aput-object v2, v0, v9

    .line 170
    .line 171
    new-array v2, v1, [Ljava/lang/Object;

    .line 172
    .line 173
    const-string v9, "DayFutureSuffix"

    .line 174
    .line 175
    aput-object v9, v2, v3

    .line 176
    .line 177
    aput-object v7, v2, v4

    .line 178
    .line 179
    const/16 v9, 0xd

    .line 180
    .line 181
    aput-object v2, v0, v9

    .line 182
    .line 183
    new-array v2, v1, [Ljava/lang/Object;

    .line 184
    .line 185
    const-string v9, "DayPastPrefix"

    .line 186
    .line 187
    aput-object v9, v2, v3

    .line 188
    .line 189
    aput-object v8, v2, v4

    .line 190
    .line 191
    const/16 v9, 0xe

    .line 192
    .line 193
    aput-object v2, v0, v9

    .line 194
    .line 195
    new-array v2, v1, [Ljava/lang/Object;

    .line 196
    .line 197
    const-string v9, "DayPastSuffix"

    .line 198
    .line 199
    aput-object v9, v2, v3

    .line 200
    .line 201
    aput-object v7, v2, v4

    .line 202
    .line 203
    const/16 v9, 0xf

    .line 204
    .line 205
    aput-object v2, v0, v9

    .line 206
    .line 207
    new-array v2, v1, [Ljava/lang/Object;

    .line 208
    .line 209
    const-string v9, "DaySingularName"

    .line 210
    .line 211
    aput-object v9, v2, v3

    .line 212
    .line 213
    const-string v9, "den"

    .line 214
    .line 215
    aput-object v9, v2, v4

    .line 216
    .line 217
    const/16 v9, 0x10

    .line 218
    .line 219
    aput-object v2, v0, v9

    .line 220
    .line 221
    new-array v2, v1, [Ljava/lang/Object;

    .line 222
    .line 223
    const-string v9, "DayPluralName"

    .line 224
    .line 225
    aput-object v9, v2, v3

    .line 226
    .line 227
    const-string v9, "dny"

    .line 228
    .line 229
    aput-object v9, v2, v4

    .line 230
    .line 231
    const/16 v9, 0x11

    .line 232
    .line 233
    aput-object v2, v0, v9

    .line 234
    .line 235
    new-array v2, v1, [Ljava/lang/Object;

    .line 236
    .line 237
    const-string v9, "DecadePattern"

    .line 238
    .line 239
    aput-object v9, v2, v3

    .line 240
    .line 241
    aput-object v5, v2, v4

    .line 242
    .line 243
    const/16 v9, 0x12

    .line 244
    .line 245
    aput-object v2, v0, v9

    .line 246
    .line 247
    new-array v2, v1, [Ljava/lang/Object;

    .line 248
    .line 249
    const-string v9, "DecadeFuturePrefix"

    .line 250
    .line 251
    aput-object v9, v2, v3

    .line 252
    .line 253
    aput-object v6, v2, v4

    .line 254
    .line 255
    const/16 v9, 0x13

    .line 256
    .line 257
    aput-object v2, v0, v9

    .line 258
    .line 259
    new-array v2, v1, [Ljava/lang/Object;

    .line 260
    .line 261
    const-string v9, "DecadeFutureSuffix"

    .line 262
    .line 263
    aput-object v9, v2, v3

    .line 264
    .line 265
    aput-object v7, v2, v4

    .line 266
    .line 267
    const/16 v9, 0x14

    .line 268
    .line 269
    aput-object v2, v0, v9

    .line 270
    .line 271
    new-array v2, v1, [Ljava/lang/Object;

    .line 272
    .line 273
    const-string v9, "DecadePastPrefix"

    .line 274
    .line 275
    aput-object v9, v2, v3

    .line 276
    .line 277
    aput-object v8, v2, v4

    .line 278
    .line 279
    const/16 v9, 0x15

    .line 280
    .line 281
    aput-object v2, v0, v9

    .line 282
    .line 283
    new-array v2, v1, [Ljava/lang/Object;

    .line 284
    .line 285
    const-string v9, "DecadePastSuffix"

    .line 286
    .line 287
    aput-object v9, v2, v3

    .line 288
    .line 289
    aput-object v7, v2, v4

    .line 290
    .line 291
    const/16 v9, 0x16

    .line 292
    .line 293
    aput-object v2, v0, v9

    .line 294
    .line 295
    new-array v2, v1, [Ljava/lang/Object;

    .line 296
    .line 297
    const-string v9, "DecadeSingularName"

    .line 298
    .line 299
    aput-object v9, v2, v3

    .line 300
    .line 301
    const-string v9, "desetilet\u00ed"

    .line 302
    .line 303
    aput-object v9, v2, v4

    .line 304
    .line 305
    const/16 v10, 0x17

    .line 306
    .line 307
    aput-object v2, v0, v10

    .line 308
    .line 309
    new-array v2, v1, [Ljava/lang/Object;

    .line 310
    .line 311
    const-string v10, "DecadePluralName"

    .line 312
    .line 313
    aput-object v10, v2, v3

    .line 314
    .line 315
    aput-object v9, v2, v4

    .line 316
    .line 317
    const/16 v10, 0x18

    .line 318
    .line 319
    aput-object v2, v0, v10

    .line 320
    .line 321
    new-array v2, v1, [Ljava/lang/Object;

    .line 322
    .line 323
    const-string v10, "DecadePastSingularName"

    .line 324
    .line 325
    aput-object v10, v2, v3

    .line 326
    .line 327
    const-string v10, "desetilet\u00edm"

    .line 328
    .line 329
    aput-object v10, v2, v4

    .line 330
    .line 331
    const/16 v10, 0x19

    .line 332
    .line 333
    aput-object v2, v0, v10

    .line 334
    .line 335
    new-array v2, v1, [Ljava/lang/Object;

    .line 336
    .line 337
    const-string v10, "DecadePastPluralName"

    .line 338
    .line 339
    aput-object v10, v2, v3

    .line 340
    .line 341
    const-string v10, "desetilet\u00edmi"

    .line 342
    .line 343
    aput-object v10, v2, v4

    .line 344
    .line 345
    const/16 v10, 0x1a

    .line 346
    .line 347
    aput-object v2, v0, v10

    .line 348
    .line 349
    new-array v2, v1, [Ljava/lang/Object;

    .line 350
    .line 351
    const-string v10, "DecadeFutureSingularName"

    .line 352
    .line 353
    aput-object v10, v2, v3

    .line 354
    .line 355
    aput-object v9, v2, v4

    .line 356
    .line 357
    const/16 v10, 0x1b

    .line 358
    .line 359
    aput-object v2, v0, v10

    .line 360
    .line 361
    new-array v2, v1, [Ljava/lang/Object;

    .line 362
    .line 363
    const-string v10, "DecadeFuturePluralName"

    .line 364
    .line 365
    aput-object v10, v2, v3

    .line 366
    .line 367
    aput-object v9, v2, v4

    .line 368
    .line 369
    const/16 v9, 0x1c

    .line 370
    .line 371
    aput-object v2, v0, v9

    .line 372
    .line 373
    new-array v2, v1, [Ljava/lang/Object;

    .line 374
    .line 375
    const-string v9, "HourPattern"

    .line 376
    .line 377
    aput-object v9, v2, v3

    .line 378
    .line 379
    aput-object v5, v2, v4

    .line 380
    .line 381
    const/16 v9, 0x1d

    .line 382
    .line 383
    aput-object v2, v0, v9

    .line 384
    .line 385
    new-array v2, v1, [Ljava/lang/Object;

    .line 386
    .line 387
    const-string v9, "HourFuturePrefix"

    .line 388
    .line 389
    aput-object v9, v2, v3

    .line 390
    .line 391
    aput-object v6, v2, v4

    .line 392
    .line 393
    const/16 v9, 0x1e

    .line 394
    .line 395
    aput-object v2, v0, v9

    .line 396
    .line 397
    new-array v2, v1, [Ljava/lang/Object;

    .line 398
    .line 399
    const-string v9, "HourFutureSuffix"

    .line 400
    .line 401
    aput-object v9, v2, v3

    .line 402
    .line 403
    aput-object v7, v2, v4

    .line 404
    .line 405
    const/16 v9, 0x1f

    .line 406
    .line 407
    aput-object v2, v0, v9

    .line 408
    .line 409
    new-array v2, v1, [Ljava/lang/Object;

    .line 410
    .line 411
    const-string v9, "HourPastPrefix"

    .line 412
    .line 413
    aput-object v9, v2, v3

    .line 414
    .line 415
    const-string v9, "p\u0159ed"

    .line 416
    .line 417
    aput-object v9, v2, v4

    .line 418
    .line 419
    const/16 v9, 0x20

    .line 420
    .line 421
    aput-object v2, v0, v9

    .line 422
    .line 423
    new-array v2, v1, [Ljava/lang/Object;

    .line 424
    .line 425
    const-string v9, "HourPastSuffix"

    .line 426
    .line 427
    aput-object v9, v2, v3

    .line 428
    .line 429
    aput-object v7, v2, v4

    .line 430
    .line 431
    const/16 v9, 0x21

    .line 432
    .line 433
    aput-object v2, v0, v9

    .line 434
    .line 435
    new-array v2, v1, [Ljava/lang/Object;

    .line 436
    .line 437
    const-string v9, "HourSingularName"

    .line 438
    .line 439
    aput-object v9, v2, v3

    .line 440
    .line 441
    const-string v9, "hodina"

    .line 442
    .line 443
    aput-object v9, v2, v4

    .line 444
    .line 445
    const/16 v9, 0x22

    .line 446
    .line 447
    aput-object v2, v0, v9

    .line 448
    .line 449
    new-array v2, v1, [Ljava/lang/Object;

    .line 450
    .line 451
    const-string v9, "HourPluralName"

    .line 452
    .line 453
    aput-object v9, v2, v3

    .line 454
    .line 455
    const-string v9, "hodiny"

    .line 456
    .line 457
    aput-object v9, v2, v4

    .line 458
    .line 459
    const/16 v9, 0x23

    .line 460
    .line 461
    aput-object v2, v0, v9

    .line 462
    .line 463
    new-array v2, v1, [Ljava/lang/Object;

    .line 464
    .line 465
    const-string v9, "JustNowPattern"

    .line 466
    .line 467
    aput-object v9, v2, v3

    .line 468
    .line 469
    const-string v9, "%u"

    .line 470
    .line 471
    aput-object v9, v2, v4

    .line 472
    .line 473
    const/16 v9, 0x24

    .line 474
    .line 475
    aput-object v2, v0, v9

    .line 476
    .line 477
    new-array v2, v1, [Ljava/lang/Object;

    .line 478
    .line 479
    const-string v9, "JustNowFuturePrefix"

    .line 480
    .line 481
    aput-object v9, v2, v3

    .line 482
    .line 483
    aput-object v7, v2, v4

    .line 484
    .line 485
    const/16 v9, 0x25

    .line 486
    .line 487
    aput-object v2, v0, v9

    .line 488
    .line 489
    new-array v2, v1, [Ljava/lang/Object;

    .line 490
    .line 491
    const-string v9, "JustNowFutureSuffix"

    .line 492
    .line 493
    aput-object v9, v2, v3

    .line 494
    .line 495
    const-string/jumbo v9, "za chv\u00edli"

    .line 496
    .line 497
    .line 498
    aput-object v9, v2, v4

    .line 499
    .line 500
    const/16 v9, 0x26

    .line 501
    .line 502
    aput-object v2, v0, v9

    .line 503
    .line 504
    new-array v2, v1, [Ljava/lang/Object;

    .line 505
    .line 506
    const-string v9, "JustNowPastPrefix"

    .line 507
    .line 508
    aput-object v9, v2, v3

    .line 509
    .line 510
    const-string v9, "p\u0159ed chv\u00edl\u00ed"

    .line 511
    .line 512
    aput-object v9, v2, v4

    .line 513
    .line 514
    const/16 v9, 0x27

    .line 515
    .line 516
    aput-object v2, v0, v9

    .line 517
    .line 518
    new-array v2, v1, [Ljava/lang/Object;

    .line 519
    .line 520
    const-string v9, "JustNowPastSuffix"

    .line 521
    .line 522
    aput-object v9, v2, v3

    .line 523
    .line 524
    aput-object v7, v2, v4

    .line 525
    .line 526
    const/16 v9, 0x28

    .line 527
    .line 528
    aput-object v2, v0, v9

    .line 529
    .line 530
    new-array v2, v1, [Ljava/lang/Object;

    .line 531
    .line 532
    const-string v9, "JustNowSingularName"

    .line 533
    .line 534
    aput-object v9, v2, v3

    .line 535
    .line 536
    aput-object v7, v2, v4

    .line 537
    .line 538
    const/16 v9, 0x29

    .line 539
    .line 540
    aput-object v2, v0, v9

    .line 541
    .line 542
    new-array v2, v1, [Ljava/lang/Object;

    .line 543
    .line 544
    const-string v9, "JustNowPluralName"

    .line 545
    .line 546
    aput-object v9, v2, v3

    .line 547
    .line 548
    aput-object v7, v2, v4

    .line 549
    .line 550
    const/16 v9, 0x2a

    .line 551
    .line 552
    aput-object v2, v0, v9

    .line 553
    .line 554
    new-array v2, v1, [Ljava/lang/Object;

    .line 555
    .line 556
    const-string v9, "MillenniumPattern"

    .line 557
    .line 558
    aput-object v9, v2, v3

    .line 559
    .line 560
    aput-object v5, v2, v4

    .line 561
    .line 562
    const/16 v9, 0x2b

    .line 563
    .line 564
    aput-object v2, v0, v9

    .line 565
    .line 566
    new-array v2, v1, [Ljava/lang/Object;

    .line 567
    .line 568
    const-string v9, "MillenniumFuturePrefix"

    .line 569
    .line 570
    aput-object v9, v2, v3

    .line 571
    .line 572
    aput-object v6, v2, v4

    .line 573
    .line 574
    const/16 v9, 0x2c

    .line 575
    .line 576
    aput-object v2, v0, v9

    .line 577
    .line 578
    new-array v2, v1, [Ljava/lang/Object;

    .line 579
    .line 580
    const-string v9, "MillenniumFutureSuffix"

    .line 581
    .line 582
    aput-object v9, v2, v3

    .line 583
    .line 584
    aput-object v7, v2, v4

    .line 585
    .line 586
    const/16 v9, 0x2d

    .line 587
    .line 588
    aput-object v2, v0, v9

    .line 589
    .line 590
    new-array v2, v1, [Ljava/lang/Object;

    .line 591
    .line 592
    const-string v9, "MillenniumPastPrefix"

    .line 593
    .line 594
    aput-object v9, v2, v3

    .line 595
    .line 596
    aput-object v8, v2, v4

    .line 597
    .line 598
    const/16 v9, 0x2e

    .line 599
    .line 600
    aput-object v2, v0, v9

    .line 601
    .line 602
    new-array v2, v1, [Ljava/lang/Object;

    .line 603
    .line 604
    const-string v9, "MillenniumPastSuffix"

    .line 605
    .line 606
    aput-object v9, v2, v3

    .line 607
    .line 608
    aput-object v7, v2, v4

    .line 609
    .line 610
    const/16 v9, 0x2f

    .line 611
    .line 612
    aput-object v2, v0, v9

    .line 613
    .line 614
    new-array v2, v1, [Ljava/lang/Object;

    .line 615
    .line 616
    const-string v9, "MillenniumSingularName"

    .line 617
    .line 618
    aput-object v9, v2, v3

    .line 619
    .line 620
    const-string/jumbo v9, "tis\u00edcilet\u00ed"

    .line 621
    .line 622
    .line 623
    aput-object v9, v2, v4

    .line 624
    .line 625
    const/16 v10, 0x30

    .line 626
    .line 627
    aput-object v2, v0, v10

    .line 628
    .line 629
    new-array v2, v1, [Ljava/lang/Object;

    .line 630
    .line 631
    const-string v10, "MillenniumPluralName"

    .line 632
    .line 633
    aput-object v10, v2, v3

    .line 634
    .line 635
    aput-object v9, v2, v4

    .line 636
    .line 637
    const/16 v9, 0x31

    .line 638
    .line 639
    aput-object v2, v0, v9

    .line 640
    .line 641
    new-array v2, v1, [Ljava/lang/Object;

    .line 642
    .line 643
    const-string v9, "MillisecondPattern"

    .line 644
    .line 645
    aput-object v9, v2, v3

    .line 646
    .line 647
    aput-object v5, v2, v4

    .line 648
    .line 649
    const/16 v9, 0x32

    .line 650
    .line 651
    aput-object v2, v0, v9

    .line 652
    .line 653
    new-array v2, v1, [Ljava/lang/Object;

    .line 654
    .line 655
    const-string v9, "MillisecondFuturePrefix"

    .line 656
    .line 657
    aput-object v9, v2, v3

    .line 658
    .line 659
    aput-object v6, v2, v4

    .line 660
    .line 661
    const/16 v9, 0x33

    .line 662
    .line 663
    aput-object v2, v0, v9

    .line 664
    .line 665
    new-array v2, v1, [Ljava/lang/Object;

    .line 666
    .line 667
    const-string v9, "MillisecondFutureSuffix"

    .line 668
    .line 669
    aput-object v9, v2, v3

    .line 670
    .line 671
    aput-object v7, v2, v4

    .line 672
    .line 673
    const/16 v9, 0x34

    .line 674
    .line 675
    aput-object v2, v0, v9

    .line 676
    .line 677
    new-array v2, v1, [Ljava/lang/Object;

    .line 678
    .line 679
    const-string v9, "MillisecondPastPrefix"

    .line 680
    .line 681
    aput-object v9, v2, v3

    .line 682
    .line 683
    aput-object v8, v2, v4

    .line 684
    .line 685
    const/16 v9, 0x35

    .line 686
    .line 687
    aput-object v2, v0, v9

    .line 688
    .line 689
    new-array v2, v1, [Ljava/lang/Object;

    .line 690
    .line 691
    const-string v9, "MillisecondPastSuffix"

    .line 692
    .line 693
    aput-object v9, v2, v3

    .line 694
    .line 695
    aput-object v7, v2, v4

    .line 696
    .line 697
    const/16 v9, 0x36

    .line 698
    .line 699
    aput-object v2, v0, v9

    .line 700
    .line 701
    new-array v2, v1, [Ljava/lang/Object;

    .line 702
    .line 703
    const-string v9, "MillisecondSingularName"

    .line 704
    .line 705
    aput-object v9, v2, v3

    .line 706
    .line 707
    const-string v9, "milisekunda"

    .line 708
    .line 709
    aput-object v9, v2, v4

    .line 710
    .line 711
    const/16 v9, 0x37

    .line 712
    .line 713
    aput-object v2, v0, v9

    .line 714
    .line 715
    new-array v2, v1, [Ljava/lang/Object;

    .line 716
    .line 717
    const-string v9, "MillisecondPluralName"

    .line 718
    .line 719
    aput-object v9, v2, v3

    .line 720
    .line 721
    const-string v9, "milisekundy"

    .line 722
    .line 723
    aput-object v9, v2, v4

    .line 724
    .line 725
    const/16 v9, 0x38

    .line 726
    .line 727
    aput-object v2, v0, v9

    .line 728
    .line 729
    new-array v2, v1, [Ljava/lang/Object;

    .line 730
    .line 731
    const-string v9, "MillisecondPastSingularName"

    .line 732
    .line 733
    aput-object v9, v2, v3

    .line 734
    .line 735
    const-string v9, "milisekundou"

    .line 736
    .line 737
    aput-object v9, v2, v4

    .line 738
    .line 739
    const/16 v9, 0x39

    .line 740
    .line 741
    aput-object v2, v0, v9

    .line 742
    .line 743
    new-array v2, v1, [Ljava/lang/Object;

    .line 744
    .line 745
    const-string v9, "MillisecondPastPluralName"

    .line 746
    .line 747
    aput-object v9, v2, v3

    .line 748
    .line 749
    const-string v9, "milisekundami"

    .line 750
    .line 751
    aput-object v9, v2, v4

    .line 752
    .line 753
    const/16 v9, 0x3a

    .line 754
    .line 755
    aput-object v2, v0, v9

    .line 756
    .line 757
    new-array v2, v1, [Ljava/lang/Object;

    .line 758
    .line 759
    const-string v9, "MillisecondFutureSingularName"

    .line 760
    .line 761
    aput-object v9, v2, v3

    .line 762
    .line 763
    const-string v9, "milisekundu"

    .line 764
    .line 765
    aput-object v9, v2, v4

    .line 766
    .line 767
    const/16 v9, 0x3b

    .line 768
    .line 769
    aput-object v2, v0, v9

    .line 770
    .line 771
    new-array v2, v1, [Ljava/lang/Object;

    .line 772
    .line 773
    const-string v9, "MillisecondFuturePluralName"

    .line 774
    .line 775
    aput-object v9, v2, v3

    .line 776
    .line 777
    const-string v9, "milisekund"

    .line 778
    .line 779
    aput-object v9, v2, v4

    .line 780
    .line 781
    const/16 v9, 0x3c

    .line 782
    .line 783
    aput-object v2, v0, v9

    .line 784
    .line 785
    new-array v2, v1, [Ljava/lang/Object;

    .line 786
    .line 787
    const-string v9, "MinutePattern"

    .line 788
    .line 789
    aput-object v9, v2, v3

    .line 790
    .line 791
    aput-object v5, v2, v4

    .line 792
    .line 793
    const/16 v9, 0x3d

    .line 794
    .line 795
    aput-object v2, v0, v9

    .line 796
    .line 797
    new-array v2, v1, [Ljava/lang/Object;

    .line 798
    .line 799
    const-string v9, "MinuteFuturePrefix"

    .line 800
    .line 801
    aput-object v9, v2, v3

    .line 802
    .line 803
    aput-object v6, v2, v4

    .line 804
    .line 805
    const/16 v9, 0x3e

    .line 806
    .line 807
    aput-object v2, v0, v9

    .line 808
    .line 809
    new-array v2, v1, [Ljava/lang/Object;

    .line 810
    .line 811
    const-string v9, "MinuteFutureSuffix"

    .line 812
    .line 813
    aput-object v9, v2, v3

    .line 814
    .line 815
    aput-object v7, v2, v4

    .line 816
    .line 817
    const/16 v9, 0x3f

    .line 818
    .line 819
    aput-object v2, v0, v9

    .line 820
    .line 821
    new-array v2, v1, [Ljava/lang/Object;

    .line 822
    .line 823
    const-string v9, "MinutePastPrefix"

    .line 824
    .line 825
    aput-object v9, v2, v3

    .line 826
    .line 827
    aput-object v8, v2, v4

    .line 828
    .line 829
    const/16 v9, 0x40

    .line 830
    .line 831
    aput-object v2, v0, v9

    .line 832
    .line 833
    new-array v2, v1, [Ljava/lang/Object;

    .line 834
    .line 835
    const-string v9, "MinutePastSuffix"

    .line 836
    .line 837
    aput-object v9, v2, v3

    .line 838
    .line 839
    aput-object v7, v2, v4

    .line 840
    .line 841
    const/16 v9, 0x41

    .line 842
    .line 843
    aput-object v2, v0, v9

    .line 844
    .line 845
    new-array v2, v1, [Ljava/lang/Object;

    .line 846
    .line 847
    const-string v9, "MinuteSingularName"

    .line 848
    .line 849
    aput-object v9, v2, v3

    .line 850
    .line 851
    const-string v9, "minuta"

    .line 852
    .line 853
    aput-object v9, v2, v4

    .line 854
    .line 855
    const/16 v9, 0x42

    .line 856
    .line 857
    aput-object v2, v0, v9

    .line 858
    .line 859
    new-array v2, v1, [Ljava/lang/Object;

    .line 860
    .line 861
    const-string v9, "MinutePluralName"

    .line 862
    .line 863
    aput-object v9, v2, v3

    .line 864
    .line 865
    const-string v9, "minuty"

    .line 866
    .line 867
    aput-object v9, v2, v4

    .line 868
    .line 869
    const/16 v9, 0x43

    .line 870
    .line 871
    aput-object v2, v0, v9

    .line 872
    .line 873
    new-array v2, v1, [Ljava/lang/Object;

    .line 874
    .line 875
    const-string v9, "MonthPattern"

    .line 876
    .line 877
    aput-object v9, v2, v3

    .line 878
    .line 879
    aput-object v5, v2, v4

    .line 880
    .line 881
    const/16 v9, 0x44

    .line 882
    .line 883
    aput-object v2, v0, v9

    .line 884
    .line 885
    new-array v2, v1, [Ljava/lang/Object;

    .line 886
    .line 887
    const-string v9, "MonthFuturePrefix"

    .line 888
    .line 889
    aput-object v9, v2, v3

    .line 890
    .line 891
    aput-object v6, v2, v4

    .line 892
    .line 893
    const/16 v9, 0x45

    .line 894
    .line 895
    aput-object v2, v0, v9

    .line 896
    .line 897
    new-array v2, v1, [Ljava/lang/Object;

    .line 898
    .line 899
    const-string v9, "MonthFutureSuffix"

    .line 900
    .line 901
    aput-object v9, v2, v3

    .line 902
    .line 903
    aput-object v7, v2, v4

    .line 904
    .line 905
    const/16 v9, 0x46

    .line 906
    .line 907
    aput-object v2, v0, v9

    .line 908
    .line 909
    new-array v2, v1, [Ljava/lang/Object;

    .line 910
    .line 911
    const-string v9, "MonthPastPrefix"

    .line 912
    .line 913
    aput-object v9, v2, v3

    .line 914
    .line 915
    aput-object v8, v2, v4

    .line 916
    .line 917
    const/16 v9, 0x47

    .line 918
    .line 919
    aput-object v2, v0, v9

    .line 920
    .line 921
    new-array v2, v1, [Ljava/lang/Object;

    .line 922
    .line 923
    const-string v9, "MonthPastSuffix"

    .line 924
    .line 925
    aput-object v9, v2, v3

    .line 926
    .line 927
    aput-object v7, v2, v4

    .line 928
    .line 929
    const/16 v9, 0x48

    .line 930
    .line 931
    aput-object v2, v0, v9

    .line 932
    .line 933
    new-array v2, v1, [Ljava/lang/Object;

    .line 934
    .line 935
    const-string v9, "MonthSingularName"

    .line 936
    .line 937
    aput-object v9, v2, v3

    .line 938
    .line 939
    const-string v9, "m\u011bs\u00edc"

    .line 940
    .line 941
    aput-object v9, v2, v4

    .line 942
    .line 943
    const/16 v9, 0x49

    .line 944
    .line 945
    aput-object v2, v0, v9

    .line 946
    .line 947
    new-array v2, v1, [Ljava/lang/Object;

    .line 948
    .line 949
    const-string v9, "MonthPluralName"

    .line 950
    .line 951
    aput-object v9, v2, v3

    .line 952
    .line 953
    const-string v9, "m\u011bs\u00edce"

    .line 954
    .line 955
    aput-object v9, v2, v4

    .line 956
    .line 957
    const/16 v9, 0x4a

    .line 958
    .line 959
    aput-object v2, v0, v9

    .line 960
    .line 961
    new-array v2, v1, [Ljava/lang/Object;

    .line 962
    .line 963
    const-string v9, "SecondPattern"

    .line 964
    .line 965
    aput-object v9, v2, v3

    .line 966
    .line 967
    aput-object v5, v2, v4

    .line 968
    .line 969
    const/16 v9, 0x4b

    .line 970
    .line 971
    aput-object v2, v0, v9

    .line 972
    .line 973
    new-array v2, v1, [Ljava/lang/Object;

    .line 974
    .line 975
    const-string v9, "SecondFuturePrefix"

    .line 976
    .line 977
    aput-object v9, v2, v3

    .line 978
    .line 979
    aput-object v6, v2, v4

    .line 980
    .line 981
    const/16 v9, 0x4c

    .line 982
    .line 983
    aput-object v2, v0, v9

    .line 984
    .line 985
    new-array v2, v1, [Ljava/lang/Object;

    .line 986
    .line 987
    const-string v9, "SecondFutureSuffix"

    .line 988
    .line 989
    aput-object v9, v2, v3

    .line 990
    .line 991
    aput-object v7, v2, v4

    .line 992
    .line 993
    const/16 v9, 0x4d

    .line 994
    .line 995
    aput-object v2, v0, v9

    .line 996
    .line 997
    new-array v2, v1, [Ljava/lang/Object;

    .line 998
    .line 999
    const-string v9, "SecondPastPrefix"

    .line 1000
    .line 1001
    aput-object v9, v2, v3

    .line 1002
    .line 1003
    aput-object v8, v2, v4

    .line 1004
    .line 1005
    const/16 v9, 0x4e

    .line 1006
    .line 1007
    aput-object v2, v0, v9

    .line 1008
    .line 1009
    new-array v2, v1, [Ljava/lang/Object;

    .line 1010
    .line 1011
    const-string v9, "SecondPastSuffix"

    .line 1012
    .line 1013
    aput-object v9, v2, v3

    .line 1014
    .line 1015
    aput-object v7, v2, v4

    .line 1016
    .line 1017
    const/16 v9, 0x4f

    .line 1018
    .line 1019
    aput-object v2, v0, v9

    .line 1020
    .line 1021
    new-array v2, v1, [Ljava/lang/Object;

    .line 1022
    .line 1023
    const-string v9, "SecondSingularName"

    .line 1024
    .line 1025
    aput-object v9, v2, v3

    .line 1026
    .line 1027
    const-string v9, "sekunda"

    .line 1028
    .line 1029
    aput-object v9, v2, v4

    .line 1030
    .line 1031
    const/16 v9, 0x50

    .line 1032
    .line 1033
    aput-object v2, v0, v9

    .line 1034
    .line 1035
    new-array v2, v1, [Ljava/lang/Object;

    .line 1036
    .line 1037
    const-string v9, "SecondPluralName"

    .line 1038
    .line 1039
    aput-object v9, v2, v3

    .line 1040
    .line 1041
    const-string v9, "sekundy"

    .line 1042
    .line 1043
    aput-object v9, v2, v4

    .line 1044
    .line 1045
    const/16 v9, 0x51

    .line 1046
    .line 1047
    aput-object v2, v0, v9

    .line 1048
    .line 1049
    new-array v2, v1, [Ljava/lang/Object;

    .line 1050
    .line 1051
    const-string v9, "WeekPattern"

    .line 1052
    .line 1053
    aput-object v9, v2, v3

    .line 1054
    .line 1055
    aput-object v5, v2, v4

    .line 1056
    .line 1057
    const/16 v9, 0x52

    .line 1058
    .line 1059
    aput-object v2, v0, v9

    .line 1060
    .line 1061
    new-array v2, v1, [Ljava/lang/Object;

    .line 1062
    .line 1063
    const-string v9, "WeekFuturePrefix"

    .line 1064
    .line 1065
    aput-object v9, v2, v3

    .line 1066
    .line 1067
    aput-object v6, v2, v4

    .line 1068
    .line 1069
    const/16 v9, 0x53

    .line 1070
    .line 1071
    aput-object v2, v0, v9

    .line 1072
    .line 1073
    new-array v2, v1, [Ljava/lang/Object;

    .line 1074
    .line 1075
    const-string v9, "WeekFutureSuffix"

    .line 1076
    .line 1077
    aput-object v9, v2, v3

    .line 1078
    .line 1079
    aput-object v7, v2, v4

    .line 1080
    .line 1081
    const/16 v9, 0x54

    .line 1082
    .line 1083
    aput-object v2, v0, v9

    .line 1084
    .line 1085
    new-array v2, v1, [Ljava/lang/Object;

    .line 1086
    .line 1087
    const-string v9, "WeekPastPrefix"

    .line 1088
    .line 1089
    aput-object v9, v2, v3

    .line 1090
    .line 1091
    aput-object v8, v2, v4

    .line 1092
    .line 1093
    const/16 v9, 0x55

    .line 1094
    .line 1095
    aput-object v2, v0, v9

    .line 1096
    .line 1097
    new-array v2, v1, [Ljava/lang/Object;

    .line 1098
    .line 1099
    const-string v9, "WeekPastSuffix"

    .line 1100
    .line 1101
    aput-object v9, v2, v3

    .line 1102
    .line 1103
    aput-object v7, v2, v4

    .line 1104
    .line 1105
    const/16 v9, 0x56

    .line 1106
    .line 1107
    aput-object v2, v0, v9

    .line 1108
    .line 1109
    new-array v2, v1, [Ljava/lang/Object;

    .line 1110
    .line 1111
    const-string v9, "WeekSingularName"

    .line 1112
    .line 1113
    aput-object v9, v2, v3

    .line 1114
    .line 1115
    const-string/jumbo v9, "t\u00fdden"

    .line 1116
    .line 1117
    .line 1118
    aput-object v9, v2, v4

    .line 1119
    .line 1120
    const/16 v9, 0x57

    .line 1121
    .line 1122
    aput-object v2, v0, v9

    .line 1123
    .line 1124
    new-array v2, v1, [Ljava/lang/Object;

    .line 1125
    .line 1126
    const-string v9, "WeekPluralName"

    .line 1127
    .line 1128
    aput-object v9, v2, v3

    .line 1129
    .line 1130
    const-string/jumbo v9, "t\u00fddny"

    .line 1131
    .line 1132
    .line 1133
    aput-object v9, v2, v4

    .line 1134
    .line 1135
    const/16 v9, 0x58

    .line 1136
    .line 1137
    aput-object v2, v0, v9

    .line 1138
    .line 1139
    new-array v2, v1, [Ljava/lang/Object;

    .line 1140
    .line 1141
    const-string v9, "YearPattern"

    .line 1142
    .line 1143
    aput-object v9, v2, v3

    .line 1144
    .line 1145
    aput-object v5, v2, v4

    .line 1146
    .line 1147
    const/16 v5, 0x59

    .line 1148
    .line 1149
    aput-object v2, v0, v5

    .line 1150
    .line 1151
    new-array v2, v1, [Ljava/lang/Object;

    .line 1152
    .line 1153
    const-string v5, "YearFuturePrefix"

    .line 1154
    .line 1155
    aput-object v5, v2, v3

    .line 1156
    .line 1157
    aput-object v6, v2, v4

    .line 1158
    .line 1159
    const/16 v5, 0x5a

    .line 1160
    .line 1161
    aput-object v2, v0, v5

    .line 1162
    .line 1163
    new-array v2, v1, [Ljava/lang/Object;

    .line 1164
    .line 1165
    const-string v5, "YearFutureSuffix"

    .line 1166
    .line 1167
    aput-object v5, v2, v3

    .line 1168
    .line 1169
    aput-object v7, v2, v4

    .line 1170
    .line 1171
    const/16 v5, 0x5b

    .line 1172
    .line 1173
    aput-object v2, v0, v5

    .line 1174
    .line 1175
    new-array v2, v1, [Ljava/lang/Object;

    .line 1176
    .line 1177
    const-string v5, "YearPastPrefix"

    .line 1178
    .line 1179
    aput-object v5, v2, v3

    .line 1180
    .line 1181
    aput-object v8, v2, v4

    .line 1182
    .line 1183
    const/16 v5, 0x5c

    .line 1184
    .line 1185
    aput-object v2, v0, v5

    .line 1186
    .line 1187
    new-array v2, v1, [Ljava/lang/Object;

    .line 1188
    .line 1189
    const-string v5, "YearPastSuffix"

    .line 1190
    .line 1191
    aput-object v5, v2, v3

    .line 1192
    .line 1193
    aput-object v7, v2, v4

    .line 1194
    .line 1195
    const/16 v5, 0x5d

    .line 1196
    .line 1197
    aput-object v2, v0, v5

    .line 1198
    .line 1199
    new-array v2, v1, [Ljava/lang/Object;

    .line 1200
    .line 1201
    const-string v5, "YearSingularName"

    .line 1202
    .line 1203
    aput-object v5, v2, v3

    .line 1204
    .line 1205
    const-string v5, "rok"

    .line 1206
    .line 1207
    aput-object v5, v2, v4

    .line 1208
    .line 1209
    const/16 v5, 0x5e

    .line 1210
    .line 1211
    aput-object v2, v0, v5

    .line 1212
    .line 1213
    new-array v2, v1, [Ljava/lang/Object;

    .line 1214
    .line 1215
    const-string v5, "YearPluralName"

    .line 1216
    .line 1217
    aput-object v5, v2, v3

    .line 1218
    .line 1219
    const-string v5, "roky"

    .line 1220
    .line 1221
    aput-object v5, v2, v4

    .line 1222
    .line 1223
    const/16 v5, 0x5f

    .line 1224
    .line 1225
    aput-object v2, v0, v5

    .line 1226
    .line 1227
    new-array v2, v1, [Ljava/lang/Object;

    .line 1228
    .line 1229
    const-string v5, "AbstractTimeUnitPattern"

    .line 1230
    .line 1231
    aput-object v5, v2, v3

    .line 1232
    .line 1233
    aput-object v7, v2, v4

    .line 1234
    .line 1235
    const/16 v5, 0x60

    .line 1236
    .line 1237
    aput-object v2, v0, v5

    .line 1238
    .line 1239
    new-array v2, v1, [Ljava/lang/Object;

    .line 1240
    .line 1241
    const-string v5, "AbstractTimeUnitFuturePrefix"

    .line 1242
    .line 1243
    aput-object v5, v2, v3

    .line 1244
    .line 1245
    aput-object v7, v2, v4

    .line 1246
    .line 1247
    const/16 v5, 0x61

    .line 1248
    .line 1249
    aput-object v2, v0, v5

    .line 1250
    .line 1251
    new-array v2, v1, [Ljava/lang/Object;

    .line 1252
    .line 1253
    const-string v5, "AbstractTimeUnitFutureSuffix"

    .line 1254
    .line 1255
    aput-object v5, v2, v3

    .line 1256
    .line 1257
    aput-object v7, v2, v4

    .line 1258
    .line 1259
    const/16 v5, 0x62

    .line 1260
    .line 1261
    aput-object v2, v0, v5

    .line 1262
    .line 1263
    new-array v2, v1, [Ljava/lang/Object;

    .line 1264
    .line 1265
    const-string v5, "AbstractTimeUnitPastPrefix"

    .line 1266
    .line 1267
    aput-object v5, v2, v3

    .line 1268
    .line 1269
    aput-object v7, v2, v4

    .line 1270
    .line 1271
    const/16 v5, 0x63

    .line 1272
    .line 1273
    aput-object v2, v0, v5

    .line 1274
    .line 1275
    new-array v2, v1, [Ljava/lang/Object;

    .line 1276
    .line 1277
    const-string v5, "AbstractTimeUnitPastSuffix"

    .line 1278
    .line 1279
    aput-object v5, v2, v3

    .line 1280
    .line 1281
    aput-object v7, v2, v4

    .line 1282
    .line 1283
    const/16 v5, 0x64

    .line 1284
    .line 1285
    aput-object v2, v0, v5

    .line 1286
    .line 1287
    new-array v2, v1, [Ljava/lang/Object;

    .line 1288
    .line 1289
    const-string v5, "AbstractTimeUnitSingularName"

    .line 1290
    .line 1291
    aput-object v5, v2, v3

    .line 1292
    .line 1293
    aput-object v7, v2, v4

    .line 1294
    .line 1295
    const/16 v5, 0x65

    .line 1296
    .line 1297
    aput-object v2, v0, v5

    .line 1298
    .line 1299
    new-array v1, v1, [Ljava/lang/Object;

    .line 1300
    .line 1301
    const-string v2, "AbstractTimeUnitPluralName"

    .line 1302
    .line 1303
    aput-object v2, v1, v3

    .line 1304
    .line 1305
    aput-object v7, v1, v4

    .line 1306
    .line 1307
    const/16 v2, 0x66

    .line 1308
    .line 1309
    aput-object v1, v0, v2

    .line 1310
    .line 1311
    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_cs;->OBJECTS:[[Ljava/lang/Object;

    .line 1312
    .line 1313
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lorg/ocpsoft/prettytime/i18n/Resources_cs;->OBJECTS:[[Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 7

    .line 1
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Minute;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    const-wide v3, 0x7fffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide/16 v5, 0x1

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 15
    .line 16
    const-string v0, "Minute"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "minutu"

    .line 22
    .line 23
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "minuty"

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "minut"

    .line 34
    .line 35
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "minutou"

    .line 40
    .line 41
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "minutami"

    .line 46
    .line 47
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormat;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_0
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Hour;

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 61
    .line 62
    const-string v0, "Hour"

    .line 63
    .line 64
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "hodinu"

    .line 68
    .line 69
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v0, "hodiny"

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v0, "hodin"

    .line 80
    .line 81
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v0, "hodinou"

    .line 86
    .line 87
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string v0, "hodinami"

    .line 92
    .line 93
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormat;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_1
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Day;

    .line 103
    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 107
    .line 108
    const-string v0, "Day"

    .line 109
    .line 110
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "den"

    .line 114
    .line 115
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v0, "dny"

    .line 120
    .line 121
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string v1, "dn\u00ed"

    .line 126
    .line 127
    invoke-virtual {p1, v1, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string v1, "dnem"

    .line 132
    .line 133
    invoke-virtual {p1, v1, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormat;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0

    .line 146
    :cond_2
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Week;

    .line 147
    .line 148
    if-eqz v0, :cond_3

    .line 149
    .line 150
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 151
    .line 152
    const-string v0, "Week"

    .line 153
    .line 154
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string/jumbo v0, "t\u00fdden"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const-string/jumbo v0, "t\u00fddny"

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const-string/jumbo v1, "t\u00fddn\u016f"

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v1, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    const-string/jumbo v1, "t\u00fddnem"

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v1, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormat;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :cond_3
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Month;

    .line 195
    .line 196
    if-eqz v0, :cond_4

    .line 197
    .line 198
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 199
    .line 200
    const-string v0, "Month"

    .line 201
    .line 202
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string v0, "m\u011bs\u00edc"

    .line 206
    .line 207
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    const-string v0, "m\u011bs\u00edce"

    .line 212
    .line 213
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    const-string v0, "m\u011bs\u00edc\u016f"

    .line 218
    .line 219
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    const-string v0, "m\u011bs\u00edcem"

    .line 224
    .line 225
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    const-string v0, "m\u011bs\u00edci"

    .line 230
    .line 231
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormat;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    return-object p0

    .line 240
    :cond_4
    instance-of p1, p1, Lorg/ocpsoft/prettytime/units/Year;

    .line 241
    .line 242
    if-eqz p1, :cond_5

    .line 243
    .line 244
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 245
    .line 246
    const-string v0, "Year"

    .line 247
    .line 248
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const-string v0, "rok"

    .line 252
    .line 253
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    const-string v0, "roky"

    .line 258
    .line 259
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    const-string v1, "let"

    .line 264
    .line 265
    invoke-virtual {p1, v1, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    const-string v1, "rokem"

    .line 270
    .line 271
    invoke-virtual {p1, v1, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormat;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    return-object p0

    .line 284
    :cond_5
    const/4 p0, 0x0

    .line 285
    return-object p0
.end method

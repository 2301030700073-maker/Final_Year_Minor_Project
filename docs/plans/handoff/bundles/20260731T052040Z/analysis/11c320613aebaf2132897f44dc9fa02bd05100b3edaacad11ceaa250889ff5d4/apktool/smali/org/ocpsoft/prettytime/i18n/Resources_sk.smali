.class public Lorg/ocpsoft/prettytime/i18n/Resources_sk;
.super Ljava/util/ListResourceBundle;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;,
        Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormat;,
        Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsName;
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
    const-string v6, "o "

    .line 27
    .line 28
    aput-object v6, v2, v4

    .line 29
    .line 30
    aput-object v2, v0, v4

    .line 31
    .line 32
    new-array v2, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string v7, "CenturyFutureSuffix"

    .line 35
    .line 36
    aput-object v7, v2, v3

    .line 37
    .line 38
    const-string v7, ""

    .line 39
    .line 40
    aput-object v7, v2, v4

    .line 41
    .line 42
    aput-object v2, v0, v1

    .line 43
    .line 44
    new-array v2, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    const-string v8, "CenturyPastPrefix"

    .line 47
    .line 48
    aput-object v8, v2, v3

    .line 49
    .line 50
    const-string v8, "pred "

    .line 51
    .line 52
    aput-object v8, v2, v4

    .line 53
    .line 54
    const/4 v9, 0x3

    .line 55
    aput-object v2, v0, v9

    .line 56
    .line 57
    new-array v2, v1, [Ljava/lang/Object;

    .line 58
    .line 59
    const-string v9, "CenturyPastSuffix"

    .line 60
    .line 61
    aput-object v9, v2, v3

    .line 62
    .line 63
    aput-object v7, v2, v4

    .line 64
    .line 65
    const/4 v9, 0x4

    .line 66
    aput-object v2, v0, v9

    .line 67
    .line 68
    new-array v2, v1, [Ljava/lang/Object;

    .line 69
    .line 70
    const-string v9, "CenturySingularName"

    .line 71
    .line 72
    aput-object v9, v2, v3

    .line 73
    .line 74
    const-string/jumbo v9, "storo\u010die"

    .line 75
    .line 76
    .line 77
    aput-object v9, v2, v4

    .line 78
    .line 79
    const/4 v9, 0x5

    .line 80
    aput-object v2, v0, v9

    .line 81
    .line 82
    new-array v2, v1, [Ljava/lang/Object;

    .line 83
    .line 84
    const-string v9, "CenturyPluralName"

    .line 85
    .line 86
    aput-object v9, v2, v3

    .line 87
    .line 88
    const-string/jumbo v9, "storo\u010dia"

    .line 89
    .line 90
    .line 91
    aput-object v9, v2, v4

    .line 92
    .line 93
    const/4 v10, 0x6

    .line 94
    aput-object v2, v0, v10

    .line 95
    .line 96
    new-array v2, v1, [Ljava/lang/Object;

    .line 97
    .line 98
    const-string v10, "CenturyPastSingularName"

    .line 99
    .line 100
    aput-object v10, v2, v3

    .line 101
    .line 102
    const-string/jumbo v10, "storo\u010d\u00edm"

    .line 103
    .line 104
    .line 105
    aput-object v10, v2, v4

    .line 106
    .line 107
    const/4 v10, 0x7

    .line 108
    aput-object v2, v0, v10

    .line 109
    .line 110
    new-array v2, v1, [Ljava/lang/Object;

    .line 111
    .line 112
    const-string v10, "CenturyPastPluralName"

    .line 113
    .line 114
    aput-object v10, v2, v3

    .line 115
    .line 116
    const-string/jumbo v10, "storo\u010diami"

    .line 117
    .line 118
    .line 119
    aput-object v10, v2, v4

    .line 120
    .line 121
    const/16 v10, 0x8

    .line 122
    .line 123
    aput-object v2, v0, v10

    .line 124
    .line 125
    new-array v2, v1, [Ljava/lang/Object;

    .line 126
    .line 127
    const-string v10, "CenturyFutureSingularName"

    .line 128
    .line 129
    aput-object v10, v2, v3

    .line 130
    .line 131
    const-string/jumbo v10, "storo\u010d\u00ed"

    .line 132
    .line 133
    .line 134
    aput-object v10, v2, v4

    .line 135
    .line 136
    const/16 v10, 0x9

    .line 137
    .line 138
    aput-object v2, v0, v10

    .line 139
    .line 140
    new-array v2, v1, [Ljava/lang/Object;

    .line 141
    .line 142
    const-string v10, "CenturyFuturePluralName"

    .line 143
    .line 144
    aput-object v10, v2, v3

    .line 145
    .line 146
    aput-object v9, v2, v4

    .line 147
    .line 148
    const/16 v9, 0xa

    .line 149
    .line 150
    aput-object v2, v0, v9

    .line 151
    .line 152
    new-array v2, v1, [Ljava/lang/Object;

    .line 153
    .line 154
    const-string v9, "DayPattern"

    .line 155
    .line 156
    aput-object v9, v2, v3

    .line 157
    .line 158
    aput-object v5, v2, v4

    .line 159
    .line 160
    const/16 v9, 0xb

    .line 161
    .line 162
    aput-object v2, v0, v9

    .line 163
    .line 164
    new-array v2, v1, [Ljava/lang/Object;

    .line 165
    .line 166
    const-string v9, "DayFuturePrefix"

    .line 167
    .line 168
    aput-object v9, v2, v3

    .line 169
    .line 170
    aput-object v6, v2, v4

    .line 171
    .line 172
    const/16 v9, 0xc

    .line 173
    .line 174
    aput-object v2, v0, v9

    .line 175
    .line 176
    new-array v2, v1, [Ljava/lang/Object;

    .line 177
    .line 178
    const-string v9, "DayFutureSuffix"

    .line 179
    .line 180
    aput-object v9, v2, v3

    .line 181
    .line 182
    aput-object v7, v2, v4

    .line 183
    .line 184
    const/16 v9, 0xd

    .line 185
    .line 186
    aput-object v2, v0, v9

    .line 187
    .line 188
    new-array v2, v1, [Ljava/lang/Object;

    .line 189
    .line 190
    const-string v9, "DayPastPrefix"

    .line 191
    .line 192
    aput-object v9, v2, v3

    .line 193
    .line 194
    aput-object v8, v2, v4

    .line 195
    .line 196
    const/16 v9, 0xe

    .line 197
    .line 198
    aput-object v2, v0, v9

    .line 199
    .line 200
    new-array v2, v1, [Ljava/lang/Object;

    .line 201
    .line 202
    const-string v9, "DayPastSuffix"

    .line 203
    .line 204
    aput-object v9, v2, v3

    .line 205
    .line 206
    aput-object v7, v2, v4

    .line 207
    .line 208
    const/16 v9, 0xf

    .line 209
    .line 210
    aput-object v2, v0, v9

    .line 211
    .line 212
    new-array v2, v1, [Ljava/lang/Object;

    .line 213
    .line 214
    const-string v9, "DaySingularName"

    .line 215
    .line 216
    aput-object v9, v2, v3

    .line 217
    .line 218
    const-string v9, "de\u0148"

    .line 219
    .line 220
    aput-object v9, v2, v4

    .line 221
    .line 222
    const/16 v9, 0x10

    .line 223
    .line 224
    aput-object v2, v0, v9

    .line 225
    .line 226
    new-array v2, v1, [Ljava/lang/Object;

    .line 227
    .line 228
    const-string v9, "DayPluralName"

    .line 229
    .line 230
    aput-object v9, v2, v3

    .line 231
    .line 232
    const-string v9, "dni"

    .line 233
    .line 234
    aput-object v9, v2, v4

    .line 235
    .line 236
    const/16 v9, 0x11

    .line 237
    .line 238
    aput-object v2, v0, v9

    .line 239
    .line 240
    new-array v2, v1, [Ljava/lang/Object;

    .line 241
    .line 242
    const-string v9, "DecadePattern"

    .line 243
    .line 244
    aput-object v9, v2, v3

    .line 245
    .line 246
    aput-object v5, v2, v4

    .line 247
    .line 248
    const/16 v9, 0x12

    .line 249
    .line 250
    aput-object v2, v0, v9

    .line 251
    .line 252
    new-array v2, v1, [Ljava/lang/Object;

    .line 253
    .line 254
    const-string v9, "DecadeFuturePrefix"

    .line 255
    .line 256
    aput-object v9, v2, v3

    .line 257
    .line 258
    aput-object v6, v2, v4

    .line 259
    .line 260
    const/16 v9, 0x13

    .line 261
    .line 262
    aput-object v2, v0, v9

    .line 263
    .line 264
    new-array v2, v1, [Ljava/lang/Object;

    .line 265
    .line 266
    const-string v9, "DecadeFutureSuffix"

    .line 267
    .line 268
    aput-object v9, v2, v3

    .line 269
    .line 270
    aput-object v7, v2, v4

    .line 271
    .line 272
    const/16 v9, 0x14

    .line 273
    .line 274
    aput-object v2, v0, v9

    .line 275
    .line 276
    new-array v2, v1, [Ljava/lang/Object;

    .line 277
    .line 278
    const-string v9, "DecadePastPrefix"

    .line 279
    .line 280
    aput-object v9, v2, v3

    .line 281
    .line 282
    aput-object v8, v2, v4

    .line 283
    .line 284
    const/16 v9, 0x15

    .line 285
    .line 286
    aput-object v2, v0, v9

    .line 287
    .line 288
    new-array v2, v1, [Ljava/lang/Object;

    .line 289
    .line 290
    const-string v9, "DecadePastSuffix"

    .line 291
    .line 292
    aput-object v9, v2, v3

    .line 293
    .line 294
    aput-object v7, v2, v4

    .line 295
    .line 296
    const/16 v9, 0x16

    .line 297
    .line 298
    aput-object v2, v0, v9

    .line 299
    .line 300
    new-array v2, v1, [Ljava/lang/Object;

    .line 301
    .line 302
    const-string v9, "DecadeSingularName"

    .line 303
    .line 304
    aput-object v9, v2, v3

    .line 305
    .line 306
    const-string v9, "desa\u0165ro\u010die"

    .line 307
    .line 308
    aput-object v9, v2, v4

    .line 309
    .line 310
    const/16 v9, 0x17

    .line 311
    .line 312
    aput-object v2, v0, v9

    .line 313
    .line 314
    new-array v2, v1, [Ljava/lang/Object;

    .line 315
    .line 316
    const-string v9, "DecadePluralName"

    .line 317
    .line 318
    aput-object v9, v2, v3

    .line 319
    .line 320
    const-string v9, "desa\u0165ro\u010dia"

    .line 321
    .line 322
    aput-object v9, v2, v4

    .line 323
    .line 324
    const/16 v10, 0x18

    .line 325
    .line 326
    aput-object v2, v0, v10

    .line 327
    .line 328
    new-array v2, v1, [Ljava/lang/Object;

    .line 329
    .line 330
    const-string v10, "DecadePastSingularName"

    .line 331
    .line 332
    aput-object v10, v2, v3

    .line 333
    .line 334
    const-string v10, "desa\u0165ro\u010d\u00edm"

    .line 335
    .line 336
    aput-object v10, v2, v4

    .line 337
    .line 338
    const/16 v10, 0x19

    .line 339
    .line 340
    aput-object v2, v0, v10

    .line 341
    .line 342
    new-array v2, v1, [Ljava/lang/Object;

    .line 343
    .line 344
    const-string v10, "DecadePastPluralName"

    .line 345
    .line 346
    aput-object v10, v2, v3

    .line 347
    .line 348
    const-string v10, "desa\u0165ro\u010diami"

    .line 349
    .line 350
    aput-object v10, v2, v4

    .line 351
    .line 352
    const/16 v10, 0x1a

    .line 353
    .line 354
    aput-object v2, v0, v10

    .line 355
    .line 356
    new-array v2, v1, [Ljava/lang/Object;

    .line 357
    .line 358
    const-string v10, "DecadeFutureSingularName"

    .line 359
    .line 360
    aput-object v10, v2, v3

    .line 361
    .line 362
    const-string v10, "desa\u0165ro\u010d\u00ed"

    .line 363
    .line 364
    aput-object v10, v2, v4

    .line 365
    .line 366
    const/16 v10, 0x1b

    .line 367
    .line 368
    aput-object v2, v0, v10

    .line 369
    .line 370
    new-array v2, v1, [Ljava/lang/Object;

    .line 371
    .line 372
    const-string v10, "DecadeFuturePluralName"

    .line 373
    .line 374
    aput-object v10, v2, v3

    .line 375
    .line 376
    aput-object v9, v2, v4

    .line 377
    .line 378
    const/16 v9, 0x1c

    .line 379
    .line 380
    aput-object v2, v0, v9

    .line 381
    .line 382
    new-array v2, v1, [Ljava/lang/Object;

    .line 383
    .line 384
    const-string v9, "HourPattern"

    .line 385
    .line 386
    aput-object v9, v2, v3

    .line 387
    .line 388
    aput-object v5, v2, v4

    .line 389
    .line 390
    const/16 v9, 0x1d

    .line 391
    .line 392
    aput-object v2, v0, v9

    .line 393
    .line 394
    new-array v2, v1, [Ljava/lang/Object;

    .line 395
    .line 396
    const-string v9, "HourFuturePrefix"

    .line 397
    .line 398
    aput-object v9, v2, v3

    .line 399
    .line 400
    aput-object v6, v2, v4

    .line 401
    .line 402
    const/16 v9, 0x1e

    .line 403
    .line 404
    aput-object v2, v0, v9

    .line 405
    .line 406
    new-array v2, v1, [Ljava/lang/Object;

    .line 407
    .line 408
    const-string v9, "HourFutureSuffix"

    .line 409
    .line 410
    aput-object v9, v2, v3

    .line 411
    .line 412
    aput-object v7, v2, v4

    .line 413
    .line 414
    const/16 v9, 0x1f

    .line 415
    .line 416
    aput-object v2, v0, v9

    .line 417
    .line 418
    new-array v2, v1, [Ljava/lang/Object;

    .line 419
    .line 420
    const-string v9, "HourPastPrefix"

    .line 421
    .line 422
    aput-object v9, v2, v3

    .line 423
    .line 424
    const-string v9, "pred"

    .line 425
    .line 426
    aput-object v9, v2, v4

    .line 427
    .line 428
    const/16 v9, 0x20

    .line 429
    .line 430
    aput-object v2, v0, v9

    .line 431
    .line 432
    new-array v2, v1, [Ljava/lang/Object;

    .line 433
    .line 434
    const-string v9, "HourPastSuffix"

    .line 435
    .line 436
    aput-object v9, v2, v3

    .line 437
    .line 438
    aput-object v7, v2, v4

    .line 439
    .line 440
    const/16 v9, 0x21

    .line 441
    .line 442
    aput-object v2, v0, v9

    .line 443
    .line 444
    new-array v2, v1, [Ljava/lang/Object;

    .line 445
    .line 446
    const-string v9, "HourSingularName"

    .line 447
    .line 448
    aput-object v9, v2, v3

    .line 449
    .line 450
    const-string v9, "hodina"

    .line 451
    .line 452
    aput-object v9, v2, v4

    .line 453
    .line 454
    const/16 v9, 0x22

    .line 455
    .line 456
    aput-object v2, v0, v9

    .line 457
    .line 458
    new-array v2, v1, [Ljava/lang/Object;

    .line 459
    .line 460
    const-string v9, "HourPluralName"

    .line 461
    .line 462
    aput-object v9, v2, v3

    .line 463
    .line 464
    const-string v9, "hodiny"

    .line 465
    .line 466
    aput-object v9, v2, v4

    .line 467
    .line 468
    const/16 v9, 0x23

    .line 469
    .line 470
    aput-object v2, v0, v9

    .line 471
    .line 472
    new-array v2, v1, [Ljava/lang/Object;

    .line 473
    .line 474
    const-string v9, "JustNowPattern"

    .line 475
    .line 476
    aput-object v9, v2, v3

    .line 477
    .line 478
    const-string v9, "%u"

    .line 479
    .line 480
    aput-object v9, v2, v4

    .line 481
    .line 482
    const/16 v9, 0x24

    .line 483
    .line 484
    aput-object v2, v0, v9

    .line 485
    .line 486
    new-array v2, v1, [Ljava/lang/Object;

    .line 487
    .line 488
    const-string v9, "JustNowFuturePrefix"

    .line 489
    .line 490
    aput-object v9, v2, v3

    .line 491
    .line 492
    aput-object v7, v2, v4

    .line 493
    .line 494
    const/16 v9, 0x25

    .line 495
    .line 496
    aput-object v2, v0, v9

    .line 497
    .line 498
    new-array v2, v1, [Ljava/lang/Object;

    .line 499
    .line 500
    const-string v9, "JustNowFutureSuffix"

    .line 501
    .line 502
    aput-object v9, v2, v3

    .line 503
    .line 504
    const-string v9, "o chv\u00ed\u013eu"

    .line 505
    .line 506
    aput-object v9, v2, v4

    .line 507
    .line 508
    const/16 v9, 0x26

    .line 509
    .line 510
    aput-object v2, v0, v9

    .line 511
    .line 512
    new-array v2, v1, [Ljava/lang/Object;

    .line 513
    .line 514
    const-string v9, "JustNowPastPrefix"

    .line 515
    .line 516
    aput-object v9, v2, v3

    .line 517
    .line 518
    const-string v9, "pred chv\u00ed\u013eou"

    .line 519
    .line 520
    aput-object v9, v2, v4

    .line 521
    .line 522
    const/16 v9, 0x27

    .line 523
    .line 524
    aput-object v2, v0, v9

    .line 525
    .line 526
    new-array v2, v1, [Ljava/lang/Object;

    .line 527
    .line 528
    const-string v9, "JustNowPastSuffix"

    .line 529
    .line 530
    aput-object v9, v2, v3

    .line 531
    .line 532
    aput-object v7, v2, v4

    .line 533
    .line 534
    const/16 v9, 0x28

    .line 535
    .line 536
    aput-object v2, v0, v9

    .line 537
    .line 538
    new-array v2, v1, [Ljava/lang/Object;

    .line 539
    .line 540
    const-string v9, "JustNowSingularName"

    .line 541
    .line 542
    aput-object v9, v2, v3

    .line 543
    .line 544
    aput-object v7, v2, v4

    .line 545
    .line 546
    const/16 v9, 0x29

    .line 547
    .line 548
    aput-object v2, v0, v9

    .line 549
    .line 550
    new-array v2, v1, [Ljava/lang/Object;

    .line 551
    .line 552
    const-string v9, "JustNowPluralName"

    .line 553
    .line 554
    aput-object v9, v2, v3

    .line 555
    .line 556
    aput-object v7, v2, v4

    .line 557
    .line 558
    const/16 v9, 0x2a

    .line 559
    .line 560
    aput-object v2, v0, v9

    .line 561
    .line 562
    new-array v2, v1, [Ljava/lang/Object;

    .line 563
    .line 564
    const-string v9, "MillenniumPattern"

    .line 565
    .line 566
    aput-object v9, v2, v3

    .line 567
    .line 568
    aput-object v5, v2, v4

    .line 569
    .line 570
    const/16 v9, 0x2b

    .line 571
    .line 572
    aput-object v2, v0, v9

    .line 573
    .line 574
    new-array v2, v1, [Ljava/lang/Object;

    .line 575
    .line 576
    const-string v9, "MillenniumFuturePrefix"

    .line 577
    .line 578
    aput-object v9, v2, v3

    .line 579
    .line 580
    aput-object v6, v2, v4

    .line 581
    .line 582
    const/16 v9, 0x2c

    .line 583
    .line 584
    aput-object v2, v0, v9

    .line 585
    .line 586
    new-array v2, v1, [Ljava/lang/Object;

    .line 587
    .line 588
    const-string v9, "MillenniumFutureSuffix"

    .line 589
    .line 590
    aput-object v9, v2, v3

    .line 591
    .line 592
    aput-object v7, v2, v4

    .line 593
    .line 594
    const/16 v9, 0x2d

    .line 595
    .line 596
    aput-object v2, v0, v9

    .line 597
    .line 598
    new-array v2, v1, [Ljava/lang/Object;

    .line 599
    .line 600
    const-string v9, "MillenniumPastPrefix"

    .line 601
    .line 602
    aput-object v9, v2, v3

    .line 603
    .line 604
    aput-object v8, v2, v4

    .line 605
    .line 606
    const/16 v9, 0x2e

    .line 607
    .line 608
    aput-object v2, v0, v9

    .line 609
    .line 610
    new-array v2, v1, [Ljava/lang/Object;

    .line 611
    .line 612
    const-string v9, "MillenniumPastSuffix"

    .line 613
    .line 614
    aput-object v9, v2, v3

    .line 615
    .line 616
    aput-object v7, v2, v4

    .line 617
    .line 618
    const/16 v9, 0x2f

    .line 619
    .line 620
    aput-object v2, v0, v9

    .line 621
    .line 622
    new-array v2, v1, [Ljava/lang/Object;

    .line 623
    .line 624
    const-string v9, "MillenniumSingularName"

    .line 625
    .line 626
    aput-object v9, v2, v3

    .line 627
    .line 628
    const-string/jumbo v9, "t\u00eds\u00edcro\u010die"

    .line 629
    .line 630
    .line 631
    aput-object v9, v2, v4

    .line 632
    .line 633
    const/16 v9, 0x30

    .line 634
    .line 635
    aput-object v2, v0, v9

    .line 636
    .line 637
    new-array v2, v1, [Ljava/lang/Object;

    .line 638
    .line 639
    const-string v9, "MillenniumPluralName"

    .line 640
    .line 641
    aput-object v9, v2, v3

    .line 642
    .line 643
    const-string/jumbo v9, "tis\u00edcro\u010dia"

    .line 644
    .line 645
    .line 646
    aput-object v9, v2, v4

    .line 647
    .line 648
    const/16 v9, 0x31

    .line 649
    .line 650
    aput-object v2, v0, v9

    .line 651
    .line 652
    new-array v2, v1, [Ljava/lang/Object;

    .line 653
    .line 654
    const-string v9, "MillisecondPattern"

    .line 655
    .line 656
    aput-object v9, v2, v3

    .line 657
    .line 658
    aput-object v5, v2, v4

    .line 659
    .line 660
    const/16 v9, 0x32

    .line 661
    .line 662
    aput-object v2, v0, v9

    .line 663
    .line 664
    new-array v2, v1, [Ljava/lang/Object;

    .line 665
    .line 666
    const-string v9, "MillisecondFuturePrefix"

    .line 667
    .line 668
    aput-object v9, v2, v3

    .line 669
    .line 670
    aput-object v6, v2, v4

    .line 671
    .line 672
    const/16 v9, 0x33

    .line 673
    .line 674
    aput-object v2, v0, v9

    .line 675
    .line 676
    new-array v2, v1, [Ljava/lang/Object;

    .line 677
    .line 678
    const-string v9, "MillisecondFutureSuffix"

    .line 679
    .line 680
    aput-object v9, v2, v3

    .line 681
    .line 682
    aput-object v7, v2, v4

    .line 683
    .line 684
    const/16 v9, 0x34

    .line 685
    .line 686
    aput-object v2, v0, v9

    .line 687
    .line 688
    new-array v2, v1, [Ljava/lang/Object;

    .line 689
    .line 690
    const-string v9, "MillisecondPastPrefix"

    .line 691
    .line 692
    aput-object v9, v2, v3

    .line 693
    .line 694
    aput-object v8, v2, v4

    .line 695
    .line 696
    const/16 v9, 0x35

    .line 697
    .line 698
    aput-object v2, v0, v9

    .line 699
    .line 700
    new-array v2, v1, [Ljava/lang/Object;

    .line 701
    .line 702
    const-string v9, "MillisecondPastSuffix"

    .line 703
    .line 704
    aput-object v9, v2, v3

    .line 705
    .line 706
    aput-object v7, v2, v4

    .line 707
    .line 708
    const/16 v9, 0x36

    .line 709
    .line 710
    aput-object v2, v0, v9

    .line 711
    .line 712
    new-array v2, v1, [Ljava/lang/Object;

    .line 713
    .line 714
    const-string v9, "MillisecondSingularName"

    .line 715
    .line 716
    aput-object v9, v2, v3

    .line 717
    .line 718
    const-string v9, "milisekunda"

    .line 719
    .line 720
    aput-object v9, v2, v4

    .line 721
    .line 722
    const/16 v9, 0x37

    .line 723
    .line 724
    aput-object v2, v0, v9

    .line 725
    .line 726
    new-array v2, v1, [Ljava/lang/Object;

    .line 727
    .line 728
    const-string v9, "MillisecondPluralName"

    .line 729
    .line 730
    aput-object v9, v2, v3

    .line 731
    .line 732
    const-string v9, "milisekundy"

    .line 733
    .line 734
    aput-object v9, v2, v4

    .line 735
    .line 736
    const/16 v9, 0x38

    .line 737
    .line 738
    aput-object v2, v0, v9

    .line 739
    .line 740
    new-array v2, v1, [Ljava/lang/Object;

    .line 741
    .line 742
    const-string v9, "MillisecondPastSingularName"

    .line 743
    .line 744
    aput-object v9, v2, v3

    .line 745
    .line 746
    const-string v9, "milisekundou"

    .line 747
    .line 748
    aput-object v9, v2, v4

    .line 749
    .line 750
    const/16 v9, 0x39

    .line 751
    .line 752
    aput-object v2, v0, v9

    .line 753
    .line 754
    new-array v2, v1, [Ljava/lang/Object;

    .line 755
    .line 756
    const-string v9, "MillisecondPastPluralName"

    .line 757
    .line 758
    aput-object v9, v2, v3

    .line 759
    .line 760
    const-string v9, "milisekundami"

    .line 761
    .line 762
    aput-object v9, v2, v4

    .line 763
    .line 764
    const/16 v9, 0x3a

    .line 765
    .line 766
    aput-object v2, v0, v9

    .line 767
    .line 768
    new-array v2, v1, [Ljava/lang/Object;

    .line 769
    .line 770
    const-string v9, "MillisecondFutureSingularName"

    .line 771
    .line 772
    aput-object v9, v2, v3

    .line 773
    .line 774
    const-string v9, "milisekundu"

    .line 775
    .line 776
    aput-object v9, v2, v4

    .line 777
    .line 778
    const/16 v9, 0x3b

    .line 779
    .line 780
    aput-object v2, v0, v9

    .line 781
    .line 782
    new-array v2, v1, [Ljava/lang/Object;

    .line 783
    .line 784
    const-string v9, "MillisecondFuturePluralName"

    .line 785
    .line 786
    aput-object v9, v2, v3

    .line 787
    .line 788
    const-string v9, "milisek\u00fand"

    .line 789
    .line 790
    aput-object v9, v2, v4

    .line 791
    .line 792
    const/16 v9, 0x3c

    .line 793
    .line 794
    aput-object v2, v0, v9

    .line 795
    .line 796
    new-array v2, v1, [Ljava/lang/Object;

    .line 797
    .line 798
    const-string v9, "MinutePattern"

    .line 799
    .line 800
    aput-object v9, v2, v3

    .line 801
    .line 802
    aput-object v5, v2, v4

    .line 803
    .line 804
    const/16 v9, 0x3d

    .line 805
    .line 806
    aput-object v2, v0, v9

    .line 807
    .line 808
    new-array v2, v1, [Ljava/lang/Object;

    .line 809
    .line 810
    const-string v9, "MinuteFuturePrefix"

    .line 811
    .line 812
    aput-object v9, v2, v3

    .line 813
    .line 814
    aput-object v6, v2, v4

    .line 815
    .line 816
    const/16 v9, 0x3e

    .line 817
    .line 818
    aput-object v2, v0, v9

    .line 819
    .line 820
    new-array v2, v1, [Ljava/lang/Object;

    .line 821
    .line 822
    const-string v9, "MinuteFutureSuffix"

    .line 823
    .line 824
    aput-object v9, v2, v3

    .line 825
    .line 826
    aput-object v7, v2, v4

    .line 827
    .line 828
    const/16 v9, 0x3f

    .line 829
    .line 830
    aput-object v2, v0, v9

    .line 831
    .line 832
    new-array v2, v1, [Ljava/lang/Object;

    .line 833
    .line 834
    const-string v9, "MinutePastPrefix"

    .line 835
    .line 836
    aput-object v9, v2, v3

    .line 837
    .line 838
    aput-object v8, v2, v4

    .line 839
    .line 840
    const/16 v9, 0x40

    .line 841
    .line 842
    aput-object v2, v0, v9

    .line 843
    .line 844
    new-array v2, v1, [Ljava/lang/Object;

    .line 845
    .line 846
    const-string v9, "MinutePastSuffix"

    .line 847
    .line 848
    aput-object v9, v2, v3

    .line 849
    .line 850
    aput-object v7, v2, v4

    .line 851
    .line 852
    const/16 v9, 0x41

    .line 853
    .line 854
    aput-object v2, v0, v9

    .line 855
    .line 856
    new-array v2, v1, [Ljava/lang/Object;

    .line 857
    .line 858
    const-string v9, "MinuteSingularName"

    .line 859
    .line 860
    aput-object v9, v2, v3

    .line 861
    .line 862
    const-string v9, "min\u00fata"

    .line 863
    .line 864
    aput-object v9, v2, v4

    .line 865
    .line 866
    const/16 v9, 0x42

    .line 867
    .line 868
    aput-object v2, v0, v9

    .line 869
    .line 870
    new-array v2, v1, [Ljava/lang/Object;

    .line 871
    .line 872
    const-string v9, "MinutePluralName"

    .line 873
    .line 874
    aput-object v9, v2, v3

    .line 875
    .line 876
    const-string v9, "min\u00faty"

    .line 877
    .line 878
    aput-object v9, v2, v4

    .line 879
    .line 880
    const/16 v9, 0x43

    .line 881
    .line 882
    aput-object v2, v0, v9

    .line 883
    .line 884
    new-array v2, v1, [Ljava/lang/Object;

    .line 885
    .line 886
    const-string v9, "MonthPattern"

    .line 887
    .line 888
    aput-object v9, v2, v3

    .line 889
    .line 890
    aput-object v5, v2, v4

    .line 891
    .line 892
    const/16 v9, 0x44

    .line 893
    .line 894
    aput-object v2, v0, v9

    .line 895
    .line 896
    new-array v2, v1, [Ljava/lang/Object;

    .line 897
    .line 898
    const-string v9, "MonthFuturePrefix"

    .line 899
    .line 900
    aput-object v9, v2, v3

    .line 901
    .line 902
    aput-object v6, v2, v4

    .line 903
    .line 904
    const/16 v9, 0x45

    .line 905
    .line 906
    aput-object v2, v0, v9

    .line 907
    .line 908
    new-array v2, v1, [Ljava/lang/Object;

    .line 909
    .line 910
    const-string v9, "MonthFutureSuffix"

    .line 911
    .line 912
    aput-object v9, v2, v3

    .line 913
    .line 914
    aput-object v7, v2, v4

    .line 915
    .line 916
    const/16 v9, 0x46

    .line 917
    .line 918
    aput-object v2, v0, v9

    .line 919
    .line 920
    new-array v2, v1, [Ljava/lang/Object;

    .line 921
    .line 922
    const-string v9, "MonthPastPrefix"

    .line 923
    .line 924
    aput-object v9, v2, v3

    .line 925
    .line 926
    aput-object v8, v2, v4

    .line 927
    .line 928
    const/16 v9, 0x47

    .line 929
    .line 930
    aput-object v2, v0, v9

    .line 931
    .line 932
    new-array v2, v1, [Ljava/lang/Object;

    .line 933
    .line 934
    const-string v9, "MonthPastSuffix"

    .line 935
    .line 936
    aput-object v9, v2, v3

    .line 937
    .line 938
    aput-object v7, v2, v4

    .line 939
    .line 940
    const/16 v9, 0x48

    .line 941
    .line 942
    aput-object v2, v0, v9

    .line 943
    .line 944
    new-array v2, v1, [Ljava/lang/Object;

    .line 945
    .line 946
    const-string v9, "MonthSingularName"

    .line 947
    .line 948
    aput-object v9, v2, v3

    .line 949
    .line 950
    const-string v9, "mesiac"

    .line 951
    .line 952
    aput-object v9, v2, v4

    .line 953
    .line 954
    const/16 v9, 0x49

    .line 955
    .line 956
    aput-object v2, v0, v9

    .line 957
    .line 958
    new-array v2, v1, [Ljava/lang/Object;

    .line 959
    .line 960
    const-string v9, "MonthPluralName"

    .line 961
    .line 962
    aput-object v9, v2, v3

    .line 963
    .line 964
    const-string v9, "mesiace"

    .line 965
    .line 966
    aput-object v9, v2, v4

    .line 967
    .line 968
    const/16 v9, 0x4a

    .line 969
    .line 970
    aput-object v2, v0, v9

    .line 971
    .line 972
    new-array v2, v1, [Ljava/lang/Object;

    .line 973
    .line 974
    const-string v9, "SecondPattern"

    .line 975
    .line 976
    aput-object v9, v2, v3

    .line 977
    .line 978
    aput-object v5, v2, v4

    .line 979
    .line 980
    const/16 v9, 0x4b

    .line 981
    .line 982
    aput-object v2, v0, v9

    .line 983
    .line 984
    new-array v2, v1, [Ljava/lang/Object;

    .line 985
    .line 986
    const-string v9, "SecondFuturePrefix"

    .line 987
    .line 988
    aput-object v9, v2, v3

    .line 989
    .line 990
    aput-object v6, v2, v4

    .line 991
    .line 992
    const/16 v9, 0x4c

    .line 993
    .line 994
    aput-object v2, v0, v9

    .line 995
    .line 996
    new-array v2, v1, [Ljava/lang/Object;

    .line 997
    .line 998
    const-string v9, "SecondFutureSuffix"

    .line 999
    .line 1000
    aput-object v9, v2, v3

    .line 1001
    .line 1002
    aput-object v7, v2, v4

    .line 1003
    .line 1004
    const/16 v9, 0x4d

    .line 1005
    .line 1006
    aput-object v2, v0, v9

    .line 1007
    .line 1008
    new-array v2, v1, [Ljava/lang/Object;

    .line 1009
    .line 1010
    const-string v9, "SecondPastPrefix"

    .line 1011
    .line 1012
    aput-object v9, v2, v3

    .line 1013
    .line 1014
    aput-object v8, v2, v4

    .line 1015
    .line 1016
    const/16 v9, 0x4e

    .line 1017
    .line 1018
    aput-object v2, v0, v9

    .line 1019
    .line 1020
    new-array v2, v1, [Ljava/lang/Object;

    .line 1021
    .line 1022
    const-string v9, "SecondPastSuffix"

    .line 1023
    .line 1024
    aput-object v9, v2, v3

    .line 1025
    .line 1026
    aput-object v7, v2, v4

    .line 1027
    .line 1028
    const/16 v9, 0x4f

    .line 1029
    .line 1030
    aput-object v2, v0, v9

    .line 1031
    .line 1032
    new-array v2, v1, [Ljava/lang/Object;

    .line 1033
    .line 1034
    const-string v9, "SecondSingularName"

    .line 1035
    .line 1036
    aput-object v9, v2, v3

    .line 1037
    .line 1038
    const-string v9, "sekunda"

    .line 1039
    .line 1040
    aput-object v9, v2, v4

    .line 1041
    .line 1042
    const/16 v9, 0x50

    .line 1043
    .line 1044
    aput-object v2, v0, v9

    .line 1045
    .line 1046
    new-array v2, v1, [Ljava/lang/Object;

    .line 1047
    .line 1048
    const-string v9, "SecondPluralName"

    .line 1049
    .line 1050
    aput-object v9, v2, v3

    .line 1051
    .line 1052
    const-string v9, "sekundy"

    .line 1053
    .line 1054
    aput-object v9, v2, v4

    .line 1055
    .line 1056
    const/16 v9, 0x51

    .line 1057
    .line 1058
    aput-object v2, v0, v9

    .line 1059
    .line 1060
    new-array v2, v1, [Ljava/lang/Object;

    .line 1061
    .line 1062
    const-string v9, "WeekPattern"

    .line 1063
    .line 1064
    aput-object v9, v2, v3

    .line 1065
    .line 1066
    aput-object v5, v2, v4

    .line 1067
    .line 1068
    const/16 v9, 0x52

    .line 1069
    .line 1070
    aput-object v2, v0, v9

    .line 1071
    .line 1072
    new-array v2, v1, [Ljava/lang/Object;

    .line 1073
    .line 1074
    const-string v9, "WeekFuturePrefix"

    .line 1075
    .line 1076
    aput-object v9, v2, v3

    .line 1077
    .line 1078
    aput-object v6, v2, v4

    .line 1079
    .line 1080
    const/16 v9, 0x53

    .line 1081
    .line 1082
    aput-object v2, v0, v9

    .line 1083
    .line 1084
    new-array v2, v1, [Ljava/lang/Object;

    .line 1085
    .line 1086
    const-string v9, "WeekFutureSuffix"

    .line 1087
    .line 1088
    aput-object v9, v2, v3

    .line 1089
    .line 1090
    aput-object v7, v2, v4

    .line 1091
    .line 1092
    const/16 v9, 0x54

    .line 1093
    .line 1094
    aput-object v2, v0, v9

    .line 1095
    .line 1096
    new-array v2, v1, [Ljava/lang/Object;

    .line 1097
    .line 1098
    const-string v9, "WeekPastPrefix"

    .line 1099
    .line 1100
    aput-object v9, v2, v3

    .line 1101
    .line 1102
    aput-object v8, v2, v4

    .line 1103
    .line 1104
    const/16 v9, 0x55

    .line 1105
    .line 1106
    aput-object v2, v0, v9

    .line 1107
    .line 1108
    new-array v2, v1, [Ljava/lang/Object;

    .line 1109
    .line 1110
    const-string v9, "WeekPastSuffix"

    .line 1111
    .line 1112
    aput-object v9, v2, v3

    .line 1113
    .line 1114
    aput-object v7, v2, v4

    .line 1115
    .line 1116
    const/16 v9, 0x56

    .line 1117
    .line 1118
    aput-object v2, v0, v9

    .line 1119
    .line 1120
    new-array v2, v1, [Ljava/lang/Object;

    .line 1121
    .line 1122
    const-string v9, "WeekSingularName"

    .line 1123
    .line 1124
    aput-object v9, v2, v3

    .line 1125
    .line 1126
    const-string/jumbo v9, "t\u00fd\u017ede\u0148"

    .line 1127
    .line 1128
    .line 1129
    aput-object v9, v2, v4

    .line 1130
    .line 1131
    const/16 v9, 0x57

    .line 1132
    .line 1133
    aput-object v2, v0, v9

    .line 1134
    .line 1135
    new-array v2, v1, [Ljava/lang/Object;

    .line 1136
    .line 1137
    const-string v9, "WeekPluralName"

    .line 1138
    .line 1139
    aput-object v9, v2, v3

    .line 1140
    .line 1141
    const-string/jumbo v9, "t\u00fd\u017edne"

    .line 1142
    .line 1143
    .line 1144
    aput-object v9, v2, v4

    .line 1145
    .line 1146
    const/16 v9, 0x58

    .line 1147
    .line 1148
    aput-object v2, v0, v9

    .line 1149
    .line 1150
    new-array v2, v1, [Ljava/lang/Object;

    .line 1151
    .line 1152
    const-string v9, "YearPattern"

    .line 1153
    .line 1154
    aput-object v9, v2, v3

    .line 1155
    .line 1156
    aput-object v5, v2, v4

    .line 1157
    .line 1158
    const/16 v5, 0x59

    .line 1159
    .line 1160
    aput-object v2, v0, v5

    .line 1161
    .line 1162
    new-array v2, v1, [Ljava/lang/Object;

    .line 1163
    .line 1164
    const-string v5, "YearFuturePrefix"

    .line 1165
    .line 1166
    aput-object v5, v2, v3

    .line 1167
    .line 1168
    aput-object v6, v2, v4

    .line 1169
    .line 1170
    const/16 v5, 0x5a

    .line 1171
    .line 1172
    aput-object v2, v0, v5

    .line 1173
    .line 1174
    new-array v2, v1, [Ljava/lang/Object;

    .line 1175
    .line 1176
    const-string v5, "YearFutureSuffix"

    .line 1177
    .line 1178
    aput-object v5, v2, v3

    .line 1179
    .line 1180
    aput-object v7, v2, v4

    .line 1181
    .line 1182
    const/16 v5, 0x5b

    .line 1183
    .line 1184
    aput-object v2, v0, v5

    .line 1185
    .line 1186
    new-array v2, v1, [Ljava/lang/Object;

    .line 1187
    .line 1188
    const-string v5, "YearPastPrefix"

    .line 1189
    .line 1190
    aput-object v5, v2, v3

    .line 1191
    .line 1192
    aput-object v8, v2, v4

    .line 1193
    .line 1194
    const/16 v5, 0x5c

    .line 1195
    .line 1196
    aput-object v2, v0, v5

    .line 1197
    .line 1198
    new-array v2, v1, [Ljava/lang/Object;

    .line 1199
    .line 1200
    const-string v5, "YearPastSuffix"

    .line 1201
    .line 1202
    aput-object v5, v2, v3

    .line 1203
    .line 1204
    aput-object v7, v2, v4

    .line 1205
    .line 1206
    const/16 v5, 0x5d

    .line 1207
    .line 1208
    aput-object v2, v0, v5

    .line 1209
    .line 1210
    new-array v2, v1, [Ljava/lang/Object;

    .line 1211
    .line 1212
    const-string v5, "YearSingularName"

    .line 1213
    .line 1214
    aput-object v5, v2, v3

    .line 1215
    .line 1216
    const-string v5, "rok"

    .line 1217
    .line 1218
    aput-object v5, v2, v4

    .line 1219
    .line 1220
    const/16 v5, 0x5e

    .line 1221
    .line 1222
    aput-object v2, v0, v5

    .line 1223
    .line 1224
    new-array v2, v1, [Ljava/lang/Object;

    .line 1225
    .line 1226
    const-string v5, "YearPluralName"

    .line 1227
    .line 1228
    aput-object v5, v2, v3

    .line 1229
    .line 1230
    const-string v5, "roky"

    .line 1231
    .line 1232
    aput-object v5, v2, v4

    .line 1233
    .line 1234
    const/16 v5, 0x5f

    .line 1235
    .line 1236
    aput-object v2, v0, v5

    .line 1237
    .line 1238
    new-array v2, v1, [Ljava/lang/Object;

    .line 1239
    .line 1240
    const-string v5, "AbstractTimeUnitPattern"

    .line 1241
    .line 1242
    aput-object v5, v2, v3

    .line 1243
    .line 1244
    aput-object v7, v2, v4

    .line 1245
    .line 1246
    const/16 v5, 0x60

    .line 1247
    .line 1248
    aput-object v2, v0, v5

    .line 1249
    .line 1250
    new-array v2, v1, [Ljava/lang/Object;

    .line 1251
    .line 1252
    const-string v5, "AbstractTimeUnitFuturePrefix"

    .line 1253
    .line 1254
    aput-object v5, v2, v3

    .line 1255
    .line 1256
    aput-object v7, v2, v4

    .line 1257
    .line 1258
    const/16 v5, 0x61

    .line 1259
    .line 1260
    aput-object v2, v0, v5

    .line 1261
    .line 1262
    new-array v2, v1, [Ljava/lang/Object;

    .line 1263
    .line 1264
    const-string v5, "AbstractTimeUnitFutureSuffix"

    .line 1265
    .line 1266
    aput-object v5, v2, v3

    .line 1267
    .line 1268
    aput-object v7, v2, v4

    .line 1269
    .line 1270
    const/16 v5, 0x62

    .line 1271
    .line 1272
    aput-object v2, v0, v5

    .line 1273
    .line 1274
    new-array v2, v1, [Ljava/lang/Object;

    .line 1275
    .line 1276
    const-string v5, "AbstractTimeUnitPastPrefix"

    .line 1277
    .line 1278
    aput-object v5, v2, v3

    .line 1279
    .line 1280
    aput-object v7, v2, v4

    .line 1281
    .line 1282
    const/16 v5, 0x63

    .line 1283
    .line 1284
    aput-object v2, v0, v5

    .line 1285
    .line 1286
    new-array v2, v1, [Ljava/lang/Object;

    .line 1287
    .line 1288
    const-string v5, "AbstractTimeUnitPastSuffix"

    .line 1289
    .line 1290
    aput-object v5, v2, v3

    .line 1291
    .line 1292
    aput-object v7, v2, v4

    .line 1293
    .line 1294
    const/16 v5, 0x64

    .line 1295
    .line 1296
    aput-object v2, v0, v5

    .line 1297
    .line 1298
    new-array v2, v1, [Ljava/lang/Object;

    .line 1299
    .line 1300
    const-string v5, "AbstractTimeUnitSingularName"

    .line 1301
    .line 1302
    aput-object v5, v2, v3

    .line 1303
    .line 1304
    aput-object v7, v2, v4

    .line 1305
    .line 1306
    const/16 v5, 0x65

    .line 1307
    .line 1308
    aput-object v2, v0, v5

    .line 1309
    .line 1310
    new-array v1, v1, [Ljava/lang/Object;

    .line 1311
    .line 1312
    const-string v2, "AbstractTimeUnitPluralName"

    .line 1313
    .line 1314
    aput-object v2, v1, v3

    .line 1315
    .line 1316
    aput-object v7, v1, v4

    .line 1317
    .line 1318
    const/16 v2, 0x66

    .line 1319
    .line 1320
    aput-object v1, v0, v2

    .line 1321
    .line 1322
    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_sk;->OBJECTS:[[Ljava/lang/Object;

    .line 1323
    .line 1324
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
    sget-object p0, Lorg/ocpsoft/prettytime/i18n/Resources_sk;->OBJECTS:[[Ljava/lang/Object;

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
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 15
    .line 16
    const-string v0, "Minute"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "min\u00fatu"

    .line 22
    .line 23
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "min\u00faty"

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "min\u00fat"

    .line 34
    .line 35
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "min\u00fatou"

    .line 40
    .line 41
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "min\u00fatami"

    .line 46
    .line 47
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormat;

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
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 61
    .line 62
    const-string v0, "Hour"

    .line 63
    .line 64
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "hodinu"

    .line 68
    .line 69
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v0, "hodiny"

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v0, "hod\u00edn"

    .line 80
    .line 81
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v0, "hodinou"

    .line 86
    .line 87
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string v0, "hodinami"

    .line 92
    .line 93
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormat;

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
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 107
    .line 108
    const-string v0, "Day"

    .line 109
    .line 110
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "de\u0148"

    .line 114
    .line 115
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v0, "dni"

    .line 120
    .line 121
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string v0, "dn\u00ed"

    .line 126
    .line 127
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string v0, "d\u0148om"

    .line 132
    .line 133
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const-string v0, "d\u0148ami"

    .line 138
    .line 139
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormat;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :cond_2
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Week;

    .line 149
    .line 150
    if-eqz v0, :cond_3

    .line 151
    .line 152
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 153
    .line 154
    const-string v0, "Week"

    .line 155
    .line 156
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-string/jumbo v0, "t\u00fd\u017ede\u0148"

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const-string/jumbo v0, "t\u00fd\u017edne"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const-string/jumbo v0, "t\u00fd\u017ed\u0148ov"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    const-string/jumbo v0, "t\u00fd\u017ed\u0148om"

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    const-string/jumbo v0, "t\u00fd\u017ed\u0148ami"

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormat;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    return-object p0

    .line 199
    :cond_3
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Month;

    .line 200
    .line 201
    if-eqz v0, :cond_4

    .line 202
    .line 203
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 204
    .line 205
    const-string v0, "Month"

    .line 206
    .line 207
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-string v0, "mesiac"

    .line 211
    .line 212
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    const-string v0, "mesiace"

    .line 217
    .line 218
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    const-string v0, "mesiacov"

    .line 223
    .line 224
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    const-string v0, "mesiacom"

    .line 229
    .line 230
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    const-string v0, "mesiacmi"

    .line 235
    .line 236
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormat;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    return-object p0

    .line 245
    :cond_4
    instance-of p1, p1, Lorg/ocpsoft/prettytime/units/Year;

    .line 246
    .line 247
    if-eqz p1, :cond_5

    .line 248
    .line 249
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 250
    .line 251
    const-string v0, "Year"

    .line 252
    .line 253
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const-string v0, "rok"

    .line 257
    .line 258
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    const-string v0, "roky"

    .line 263
    .line 264
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    const-string v0, "rokov"

    .line 269
    .line 270
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    const-string v0, "rokom"

    .line 275
    .line 276
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    const-string v0, "rokmi"

    .line 281
    .line 282
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_sk$CsTimeFormat;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    return-object p0

    .line 291
    :cond_5
    const/4 p0, 0x0

    .line 292
    return-object p0
.end method

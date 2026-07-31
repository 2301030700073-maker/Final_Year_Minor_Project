.class public Lorg/ocpsoft/prettytime/i18n/Resources_de;
.super Ljava/util/ListResourceBundle;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ocpsoft/prettytime/i18n/Resources_de$DeTimeFormat;
    }
.end annotation


# static fields
.field private static final OBJECTS:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/16 v0, 0x5b

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
    const-string v6, "in "

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
    const-string/jumbo v8, "vor "

    .line 51
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
    const-string v9, "Jahrhundert"

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
    const-string v9, "Jahrhunderte"

    .line 89
    .line 90
    aput-object v9, v2, v4

    .line 91
    .line 92
    const/4 v9, 0x6

    .line 93
    aput-object v2, v0, v9

    .line 94
    .line 95
    new-array v2, v1, [Ljava/lang/Object;

    .line 96
    .line 97
    const-string v9, "DayPattern"

    .line 98
    .line 99
    aput-object v9, v2, v3

    .line 100
    .line 101
    aput-object v5, v2, v4

    .line 102
    .line 103
    const/4 v9, 0x7

    .line 104
    aput-object v2, v0, v9

    .line 105
    .line 106
    new-array v2, v1, [Ljava/lang/Object;

    .line 107
    .line 108
    const-string v9, "DayFuturePrefix"

    .line 109
    .line 110
    aput-object v9, v2, v3

    .line 111
    .line 112
    aput-object v6, v2, v4

    .line 113
    .line 114
    const/16 v9, 0x8

    .line 115
    .line 116
    aput-object v2, v0, v9

    .line 117
    .line 118
    new-array v2, v1, [Ljava/lang/Object;

    .line 119
    .line 120
    const-string v9, "DayFutureSuffix"

    .line 121
    .line 122
    aput-object v9, v2, v3

    .line 123
    .line 124
    aput-object v7, v2, v4

    .line 125
    .line 126
    const/16 v9, 0x9

    .line 127
    .line 128
    aput-object v2, v0, v9

    .line 129
    .line 130
    new-array v2, v1, [Ljava/lang/Object;

    .line 131
    .line 132
    const-string v9, "DayPastPrefix"

    .line 133
    .line 134
    aput-object v9, v2, v3

    .line 135
    .line 136
    aput-object v8, v2, v4

    .line 137
    .line 138
    const/16 v9, 0xa

    .line 139
    .line 140
    aput-object v2, v0, v9

    .line 141
    .line 142
    new-array v2, v1, [Ljava/lang/Object;

    .line 143
    .line 144
    const-string v9, "DayPastSuffix"

    .line 145
    .line 146
    aput-object v9, v2, v3

    .line 147
    .line 148
    aput-object v7, v2, v4

    .line 149
    .line 150
    const/16 v9, 0xb

    .line 151
    .line 152
    aput-object v2, v0, v9

    .line 153
    .line 154
    new-array v2, v1, [Ljava/lang/Object;

    .line 155
    .line 156
    const-string v9, "DaySingularName"

    .line 157
    .line 158
    aput-object v9, v2, v3

    .line 159
    .line 160
    const-string v9, "Tag"

    .line 161
    .line 162
    aput-object v9, v2, v4

    .line 163
    .line 164
    const/16 v9, 0xc

    .line 165
    .line 166
    aput-object v2, v0, v9

    .line 167
    .line 168
    new-array v2, v1, [Ljava/lang/Object;

    .line 169
    .line 170
    const-string v9, "DayPluralName"

    .line 171
    .line 172
    aput-object v9, v2, v3

    .line 173
    .line 174
    const-string v9, "Tage"

    .line 175
    .line 176
    aput-object v9, v2, v4

    .line 177
    .line 178
    const/16 v9, 0xd

    .line 179
    .line 180
    aput-object v2, v0, v9

    .line 181
    .line 182
    new-array v2, v1, [Ljava/lang/Object;

    .line 183
    .line 184
    const-string v9, "DecadePattern"

    .line 185
    .line 186
    aput-object v9, v2, v3

    .line 187
    .line 188
    aput-object v5, v2, v4

    .line 189
    .line 190
    const/16 v9, 0xe

    .line 191
    .line 192
    aput-object v2, v0, v9

    .line 193
    .line 194
    new-array v2, v1, [Ljava/lang/Object;

    .line 195
    .line 196
    const-string v9, "DecadeFuturePrefix"

    .line 197
    .line 198
    aput-object v9, v2, v3

    .line 199
    .line 200
    aput-object v6, v2, v4

    .line 201
    .line 202
    const/16 v9, 0xf

    .line 203
    .line 204
    aput-object v2, v0, v9

    .line 205
    .line 206
    new-array v2, v1, [Ljava/lang/Object;

    .line 207
    .line 208
    const-string v9, "DecadeFutureSuffix"

    .line 209
    .line 210
    aput-object v9, v2, v3

    .line 211
    .line 212
    aput-object v7, v2, v4

    .line 213
    .line 214
    const/16 v9, 0x10

    .line 215
    .line 216
    aput-object v2, v0, v9

    .line 217
    .line 218
    new-array v2, v1, [Ljava/lang/Object;

    .line 219
    .line 220
    const-string v9, "DecadePastPrefix"

    .line 221
    .line 222
    aput-object v9, v2, v3

    .line 223
    .line 224
    aput-object v8, v2, v4

    .line 225
    .line 226
    const/16 v9, 0x11

    .line 227
    .line 228
    aput-object v2, v0, v9

    .line 229
    .line 230
    new-array v2, v1, [Ljava/lang/Object;

    .line 231
    .line 232
    const-string v9, "DecadePastSuffix"

    .line 233
    .line 234
    aput-object v9, v2, v3

    .line 235
    .line 236
    aput-object v7, v2, v4

    .line 237
    .line 238
    const/16 v9, 0x12

    .line 239
    .line 240
    aput-object v2, v0, v9

    .line 241
    .line 242
    new-array v2, v1, [Ljava/lang/Object;

    .line 243
    .line 244
    const-string v9, "DecadeSingularName"

    .line 245
    .line 246
    aput-object v9, v2, v3

    .line 247
    .line 248
    const-string v9, "Jahrzehnt"

    .line 249
    .line 250
    aput-object v9, v2, v4

    .line 251
    .line 252
    const/16 v9, 0x13

    .line 253
    .line 254
    aput-object v2, v0, v9

    .line 255
    .line 256
    new-array v2, v1, [Ljava/lang/Object;

    .line 257
    .line 258
    const-string v9, "DecadePluralName"

    .line 259
    .line 260
    aput-object v9, v2, v3

    .line 261
    .line 262
    const-string v9, "Jahrzehnte"

    .line 263
    .line 264
    aput-object v9, v2, v4

    .line 265
    .line 266
    const/16 v9, 0x14

    .line 267
    .line 268
    aput-object v2, v0, v9

    .line 269
    .line 270
    new-array v2, v1, [Ljava/lang/Object;

    .line 271
    .line 272
    const-string v9, "HourPattern"

    .line 273
    .line 274
    aput-object v9, v2, v3

    .line 275
    .line 276
    aput-object v5, v2, v4

    .line 277
    .line 278
    const/16 v9, 0x15

    .line 279
    .line 280
    aput-object v2, v0, v9

    .line 281
    .line 282
    new-array v2, v1, [Ljava/lang/Object;

    .line 283
    .line 284
    const-string v9, "HourFuturePrefix"

    .line 285
    .line 286
    aput-object v9, v2, v3

    .line 287
    .line 288
    aput-object v6, v2, v4

    .line 289
    .line 290
    const/16 v9, 0x16

    .line 291
    .line 292
    aput-object v2, v0, v9

    .line 293
    .line 294
    new-array v2, v1, [Ljava/lang/Object;

    .line 295
    .line 296
    const-string v9, "HourFutureSuffix"

    .line 297
    .line 298
    aput-object v9, v2, v3

    .line 299
    .line 300
    aput-object v7, v2, v4

    .line 301
    .line 302
    const/16 v9, 0x17

    .line 303
    .line 304
    aput-object v2, v0, v9

    .line 305
    .line 306
    new-array v2, v1, [Ljava/lang/Object;

    .line 307
    .line 308
    const-string v9, "HourPastPrefix"

    .line 309
    .line 310
    aput-object v9, v2, v3

    .line 311
    .line 312
    aput-object v8, v2, v4

    .line 313
    .line 314
    const/16 v9, 0x18

    .line 315
    .line 316
    aput-object v2, v0, v9

    .line 317
    .line 318
    new-array v2, v1, [Ljava/lang/Object;

    .line 319
    .line 320
    const-string v9, "HourPastSuffix"

    .line 321
    .line 322
    aput-object v9, v2, v3

    .line 323
    .line 324
    aput-object v7, v2, v4

    .line 325
    .line 326
    const/16 v9, 0x19

    .line 327
    .line 328
    aput-object v2, v0, v9

    .line 329
    .line 330
    new-array v2, v1, [Ljava/lang/Object;

    .line 331
    .line 332
    const-string v9, "HourSingularName"

    .line 333
    .line 334
    aput-object v9, v2, v3

    .line 335
    .line 336
    const-string v9, "Stunde"

    .line 337
    .line 338
    aput-object v9, v2, v4

    .line 339
    .line 340
    const/16 v9, 0x1a

    .line 341
    .line 342
    aput-object v2, v0, v9

    .line 343
    .line 344
    new-array v2, v1, [Ljava/lang/Object;

    .line 345
    .line 346
    const-string v9, "HourPluralName"

    .line 347
    .line 348
    aput-object v9, v2, v3

    .line 349
    .line 350
    const-string v9, "Stunden"

    .line 351
    .line 352
    aput-object v9, v2, v4

    .line 353
    .line 354
    const/16 v9, 0x1b

    .line 355
    .line 356
    aput-object v2, v0, v9

    .line 357
    .line 358
    new-array v2, v1, [Ljava/lang/Object;

    .line 359
    .line 360
    const-string v9, "JustNowPattern"

    .line 361
    .line 362
    aput-object v9, v2, v3

    .line 363
    .line 364
    const-string v9, "%u"

    .line 365
    .line 366
    aput-object v9, v2, v4

    .line 367
    .line 368
    const/16 v9, 0x1c

    .line 369
    .line 370
    aput-object v2, v0, v9

    .line 371
    .line 372
    new-array v2, v1, [Ljava/lang/Object;

    .line 373
    .line 374
    const-string v9, "JustNowFuturePrefix"

    .line 375
    .line 376
    aput-object v9, v2, v3

    .line 377
    .line 378
    const-string v9, "Jetzt"

    .line 379
    .line 380
    aput-object v9, v2, v4

    .line 381
    .line 382
    const/16 v9, 0x1d

    .line 383
    .line 384
    aput-object v2, v0, v9

    .line 385
    .line 386
    new-array v2, v1, [Ljava/lang/Object;

    .line 387
    .line 388
    const-string v9, "JustNowFutureSuffix"

    .line 389
    .line 390
    aput-object v9, v2, v3

    .line 391
    .line 392
    aput-object v7, v2, v4

    .line 393
    .line 394
    const/16 v9, 0x1e

    .line 395
    .line 396
    aput-object v2, v0, v9

    .line 397
    .line 398
    new-array v2, v1, [Ljava/lang/Object;

    .line 399
    .line 400
    const-string v9, "JustNowPastPrefix"

    .line 401
    .line 402
    aput-object v9, v2, v3

    .line 403
    .line 404
    const-string v9, "gerade eben"

    .line 405
    .line 406
    aput-object v9, v2, v4

    .line 407
    .line 408
    const/16 v9, 0x1f

    .line 409
    .line 410
    aput-object v2, v0, v9

    .line 411
    .line 412
    new-array v2, v1, [Ljava/lang/Object;

    .line 413
    .line 414
    const-string v9, "JustNowPastSuffix"

    .line 415
    .line 416
    aput-object v9, v2, v3

    .line 417
    .line 418
    aput-object v7, v2, v4

    .line 419
    .line 420
    const/16 v9, 0x20

    .line 421
    .line 422
    aput-object v2, v0, v9

    .line 423
    .line 424
    new-array v2, v1, [Ljava/lang/Object;

    .line 425
    .line 426
    const-string v9, "JustNowSingularName"

    .line 427
    .line 428
    aput-object v9, v2, v3

    .line 429
    .line 430
    aput-object v7, v2, v4

    .line 431
    .line 432
    const/16 v9, 0x21

    .line 433
    .line 434
    aput-object v2, v0, v9

    .line 435
    .line 436
    new-array v2, v1, [Ljava/lang/Object;

    .line 437
    .line 438
    const-string v9, "JustNowPluralName"

    .line 439
    .line 440
    aput-object v9, v2, v3

    .line 441
    .line 442
    aput-object v7, v2, v4

    .line 443
    .line 444
    const/16 v9, 0x22

    .line 445
    .line 446
    aput-object v2, v0, v9

    .line 447
    .line 448
    new-array v2, v1, [Ljava/lang/Object;

    .line 449
    .line 450
    const-string v9, "MillenniumPattern"

    .line 451
    .line 452
    aput-object v9, v2, v3

    .line 453
    .line 454
    aput-object v5, v2, v4

    .line 455
    .line 456
    const/16 v9, 0x23

    .line 457
    .line 458
    aput-object v2, v0, v9

    .line 459
    .line 460
    new-array v2, v1, [Ljava/lang/Object;

    .line 461
    .line 462
    const-string v9, "MillenniumFuturePrefix"

    .line 463
    .line 464
    aput-object v9, v2, v3

    .line 465
    .line 466
    aput-object v6, v2, v4

    .line 467
    .line 468
    const/16 v9, 0x24

    .line 469
    .line 470
    aput-object v2, v0, v9

    .line 471
    .line 472
    new-array v2, v1, [Ljava/lang/Object;

    .line 473
    .line 474
    const-string v9, "MillenniumFutureSuffix"

    .line 475
    .line 476
    aput-object v9, v2, v3

    .line 477
    .line 478
    aput-object v7, v2, v4

    .line 479
    .line 480
    const/16 v9, 0x25

    .line 481
    .line 482
    aput-object v2, v0, v9

    .line 483
    .line 484
    new-array v2, v1, [Ljava/lang/Object;

    .line 485
    .line 486
    const-string v9, "MillenniumPastPrefix"

    .line 487
    .line 488
    aput-object v9, v2, v3

    .line 489
    .line 490
    aput-object v8, v2, v4

    .line 491
    .line 492
    const/16 v9, 0x26

    .line 493
    .line 494
    aput-object v2, v0, v9

    .line 495
    .line 496
    new-array v2, v1, [Ljava/lang/Object;

    .line 497
    .line 498
    const-string v9, "MillenniumPastSuffix"

    .line 499
    .line 500
    aput-object v9, v2, v3

    .line 501
    .line 502
    aput-object v7, v2, v4

    .line 503
    .line 504
    const/16 v9, 0x27

    .line 505
    .line 506
    aput-object v2, v0, v9

    .line 507
    .line 508
    new-array v2, v1, [Ljava/lang/Object;

    .line 509
    .line 510
    const-string v9, "MillenniumSingularName"

    .line 511
    .line 512
    aput-object v9, v2, v3

    .line 513
    .line 514
    const-string v9, "Jahrtausend"

    .line 515
    .line 516
    aput-object v9, v2, v4

    .line 517
    .line 518
    const/16 v9, 0x28

    .line 519
    .line 520
    aput-object v2, v0, v9

    .line 521
    .line 522
    new-array v2, v1, [Ljava/lang/Object;

    .line 523
    .line 524
    const-string v9, "MillenniumPluralName"

    .line 525
    .line 526
    aput-object v9, v2, v3

    .line 527
    .line 528
    const-string v9, "Jahrtausende"

    .line 529
    .line 530
    aput-object v9, v2, v4

    .line 531
    .line 532
    const/16 v9, 0x29

    .line 533
    .line 534
    aput-object v2, v0, v9

    .line 535
    .line 536
    new-array v2, v1, [Ljava/lang/Object;

    .line 537
    .line 538
    const-string v9, "MillisecondPattern"

    .line 539
    .line 540
    aput-object v9, v2, v3

    .line 541
    .line 542
    aput-object v5, v2, v4

    .line 543
    .line 544
    const/16 v9, 0x2a

    .line 545
    .line 546
    aput-object v2, v0, v9

    .line 547
    .line 548
    new-array v2, v1, [Ljava/lang/Object;

    .line 549
    .line 550
    const-string v9, "MillisecondFuturePrefix"

    .line 551
    .line 552
    aput-object v9, v2, v3

    .line 553
    .line 554
    aput-object v6, v2, v4

    .line 555
    .line 556
    const/16 v9, 0x2b

    .line 557
    .line 558
    aput-object v2, v0, v9

    .line 559
    .line 560
    new-array v2, v1, [Ljava/lang/Object;

    .line 561
    .line 562
    const-string v9, "MillisecondFutureSuffix"

    .line 563
    .line 564
    aput-object v9, v2, v3

    .line 565
    .line 566
    aput-object v7, v2, v4

    .line 567
    .line 568
    const/16 v9, 0x2c

    .line 569
    .line 570
    aput-object v2, v0, v9

    .line 571
    .line 572
    new-array v2, v1, [Ljava/lang/Object;

    .line 573
    .line 574
    const-string v9, "MillisecondPastPrefix"

    .line 575
    .line 576
    aput-object v9, v2, v3

    .line 577
    .line 578
    aput-object v8, v2, v4

    .line 579
    .line 580
    const/16 v9, 0x2d

    .line 581
    .line 582
    aput-object v2, v0, v9

    .line 583
    .line 584
    new-array v2, v1, [Ljava/lang/Object;

    .line 585
    .line 586
    const-string v9, "MillisecondPastSuffix"

    .line 587
    .line 588
    aput-object v9, v2, v3

    .line 589
    .line 590
    aput-object v7, v2, v4

    .line 591
    .line 592
    const/16 v9, 0x2e

    .line 593
    .line 594
    aput-object v2, v0, v9

    .line 595
    .line 596
    new-array v2, v1, [Ljava/lang/Object;

    .line 597
    .line 598
    const-string v9, "MillisecondSingularName"

    .line 599
    .line 600
    aput-object v9, v2, v3

    .line 601
    .line 602
    const-string v9, "Millisekunde"

    .line 603
    .line 604
    aput-object v9, v2, v4

    .line 605
    .line 606
    const/16 v9, 0x2f

    .line 607
    .line 608
    aput-object v2, v0, v9

    .line 609
    .line 610
    new-array v2, v1, [Ljava/lang/Object;

    .line 611
    .line 612
    const-string v9, "MillisecondPluralName"

    .line 613
    .line 614
    aput-object v9, v2, v3

    .line 615
    .line 616
    const-string v9, "Millisekunden"

    .line 617
    .line 618
    aput-object v9, v2, v4

    .line 619
    .line 620
    const/16 v9, 0x30

    .line 621
    .line 622
    aput-object v2, v0, v9

    .line 623
    .line 624
    new-array v2, v1, [Ljava/lang/Object;

    .line 625
    .line 626
    const-string v9, "MinutePattern"

    .line 627
    .line 628
    aput-object v9, v2, v3

    .line 629
    .line 630
    aput-object v5, v2, v4

    .line 631
    .line 632
    const/16 v9, 0x31

    .line 633
    .line 634
    aput-object v2, v0, v9

    .line 635
    .line 636
    new-array v2, v1, [Ljava/lang/Object;

    .line 637
    .line 638
    const-string v9, "MinuteFuturePrefix"

    .line 639
    .line 640
    aput-object v9, v2, v3

    .line 641
    .line 642
    aput-object v6, v2, v4

    .line 643
    .line 644
    const/16 v9, 0x32

    .line 645
    .line 646
    aput-object v2, v0, v9

    .line 647
    .line 648
    new-array v2, v1, [Ljava/lang/Object;

    .line 649
    .line 650
    const-string v9, "MinuteFutureSuffix"

    .line 651
    .line 652
    aput-object v9, v2, v3

    .line 653
    .line 654
    aput-object v7, v2, v4

    .line 655
    .line 656
    const/16 v9, 0x33

    .line 657
    .line 658
    aput-object v2, v0, v9

    .line 659
    .line 660
    new-array v2, v1, [Ljava/lang/Object;

    .line 661
    .line 662
    const-string v9, "MinutePastPrefix"

    .line 663
    .line 664
    aput-object v9, v2, v3

    .line 665
    .line 666
    aput-object v8, v2, v4

    .line 667
    .line 668
    const/16 v9, 0x34

    .line 669
    .line 670
    aput-object v2, v0, v9

    .line 671
    .line 672
    new-array v2, v1, [Ljava/lang/Object;

    .line 673
    .line 674
    const-string v9, "MinutePastSuffix"

    .line 675
    .line 676
    aput-object v9, v2, v3

    .line 677
    .line 678
    aput-object v7, v2, v4

    .line 679
    .line 680
    const/16 v9, 0x35

    .line 681
    .line 682
    aput-object v2, v0, v9

    .line 683
    .line 684
    new-array v2, v1, [Ljava/lang/Object;

    .line 685
    .line 686
    const-string v9, "MinuteSingularName"

    .line 687
    .line 688
    aput-object v9, v2, v3

    .line 689
    .line 690
    const-string v9, "Minute"

    .line 691
    .line 692
    aput-object v9, v2, v4

    .line 693
    .line 694
    const/16 v9, 0x36

    .line 695
    .line 696
    aput-object v2, v0, v9

    .line 697
    .line 698
    new-array v2, v1, [Ljava/lang/Object;

    .line 699
    .line 700
    const-string v9, "MinutePluralName"

    .line 701
    .line 702
    aput-object v9, v2, v3

    .line 703
    .line 704
    const-string v9, "Minuten"

    .line 705
    .line 706
    aput-object v9, v2, v4

    .line 707
    .line 708
    const/16 v9, 0x37

    .line 709
    .line 710
    aput-object v2, v0, v9

    .line 711
    .line 712
    new-array v2, v1, [Ljava/lang/Object;

    .line 713
    .line 714
    const-string v9, "MonthPattern"

    .line 715
    .line 716
    aput-object v9, v2, v3

    .line 717
    .line 718
    aput-object v5, v2, v4

    .line 719
    .line 720
    const/16 v9, 0x38

    .line 721
    .line 722
    aput-object v2, v0, v9

    .line 723
    .line 724
    new-array v2, v1, [Ljava/lang/Object;

    .line 725
    .line 726
    const-string v9, "MonthFuturePrefix"

    .line 727
    .line 728
    aput-object v9, v2, v3

    .line 729
    .line 730
    aput-object v6, v2, v4

    .line 731
    .line 732
    const/16 v9, 0x39

    .line 733
    .line 734
    aput-object v2, v0, v9

    .line 735
    .line 736
    new-array v2, v1, [Ljava/lang/Object;

    .line 737
    .line 738
    const-string v9, "MonthFutureSuffix"

    .line 739
    .line 740
    aput-object v9, v2, v3

    .line 741
    .line 742
    aput-object v7, v2, v4

    .line 743
    .line 744
    const/16 v9, 0x3a

    .line 745
    .line 746
    aput-object v2, v0, v9

    .line 747
    .line 748
    new-array v2, v1, [Ljava/lang/Object;

    .line 749
    .line 750
    const-string v9, "MonthPastPrefix"

    .line 751
    .line 752
    aput-object v9, v2, v3

    .line 753
    .line 754
    aput-object v8, v2, v4

    .line 755
    .line 756
    const/16 v9, 0x3b

    .line 757
    .line 758
    aput-object v2, v0, v9

    .line 759
    .line 760
    new-array v2, v1, [Ljava/lang/Object;

    .line 761
    .line 762
    const-string v9, "MonthPastSuffix"

    .line 763
    .line 764
    aput-object v9, v2, v3

    .line 765
    .line 766
    aput-object v7, v2, v4

    .line 767
    .line 768
    const/16 v9, 0x3c

    .line 769
    .line 770
    aput-object v2, v0, v9

    .line 771
    .line 772
    new-array v2, v1, [Ljava/lang/Object;

    .line 773
    .line 774
    const-string v9, "MonthSingularName"

    .line 775
    .line 776
    aput-object v9, v2, v3

    .line 777
    .line 778
    const-string v9, "Monat"

    .line 779
    .line 780
    aput-object v9, v2, v4

    .line 781
    .line 782
    const/16 v9, 0x3d

    .line 783
    .line 784
    aput-object v2, v0, v9

    .line 785
    .line 786
    new-array v2, v1, [Ljava/lang/Object;

    .line 787
    .line 788
    const-string v9, "MonthPluralName"

    .line 789
    .line 790
    aput-object v9, v2, v3

    .line 791
    .line 792
    const-string v9, "Monate"

    .line 793
    .line 794
    aput-object v9, v2, v4

    .line 795
    .line 796
    const/16 v9, 0x3e

    .line 797
    .line 798
    aput-object v2, v0, v9

    .line 799
    .line 800
    new-array v2, v1, [Ljava/lang/Object;

    .line 801
    .line 802
    const-string v9, "SecondPattern"

    .line 803
    .line 804
    aput-object v9, v2, v3

    .line 805
    .line 806
    aput-object v5, v2, v4

    .line 807
    .line 808
    const/16 v9, 0x3f

    .line 809
    .line 810
    aput-object v2, v0, v9

    .line 811
    .line 812
    new-array v2, v1, [Ljava/lang/Object;

    .line 813
    .line 814
    const-string v9, "SecondFuturePrefix"

    .line 815
    .line 816
    aput-object v9, v2, v3

    .line 817
    .line 818
    aput-object v6, v2, v4

    .line 819
    .line 820
    const/16 v9, 0x40

    .line 821
    .line 822
    aput-object v2, v0, v9

    .line 823
    .line 824
    new-array v2, v1, [Ljava/lang/Object;

    .line 825
    .line 826
    const-string v9, "SecondFutureSuffix"

    .line 827
    .line 828
    aput-object v9, v2, v3

    .line 829
    .line 830
    aput-object v7, v2, v4

    .line 831
    .line 832
    const/16 v9, 0x41

    .line 833
    .line 834
    aput-object v2, v0, v9

    .line 835
    .line 836
    new-array v2, v1, [Ljava/lang/Object;

    .line 837
    .line 838
    const-string v9, "SecondPastPrefix"

    .line 839
    .line 840
    aput-object v9, v2, v3

    .line 841
    .line 842
    aput-object v8, v2, v4

    .line 843
    .line 844
    const/16 v9, 0x42

    .line 845
    .line 846
    aput-object v2, v0, v9

    .line 847
    .line 848
    new-array v2, v1, [Ljava/lang/Object;

    .line 849
    .line 850
    const-string v9, "SecondPastSuffix"

    .line 851
    .line 852
    aput-object v9, v2, v3

    .line 853
    .line 854
    aput-object v7, v2, v4

    .line 855
    .line 856
    const/16 v9, 0x43

    .line 857
    .line 858
    aput-object v2, v0, v9

    .line 859
    .line 860
    new-array v2, v1, [Ljava/lang/Object;

    .line 861
    .line 862
    const-string v9, "SecondSingularName"

    .line 863
    .line 864
    aput-object v9, v2, v3

    .line 865
    .line 866
    const-string v9, "Sekunde"

    .line 867
    .line 868
    aput-object v9, v2, v4

    .line 869
    .line 870
    const/16 v9, 0x44

    .line 871
    .line 872
    aput-object v2, v0, v9

    .line 873
    .line 874
    new-array v2, v1, [Ljava/lang/Object;

    .line 875
    .line 876
    const-string v9, "SecondPluralName"

    .line 877
    .line 878
    aput-object v9, v2, v3

    .line 879
    .line 880
    const-string v9, "Sekunden"

    .line 881
    .line 882
    aput-object v9, v2, v4

    .line 883
    .line 884
    const/16 v9, 0x45

    .line 885
    .line 886
    aput-object v2, v0, v9

    .line 887
    .line 888
    new-array v2, v1, [Ljava/lang/Object;

    .line 889
    .line 890
    const-string v9, "WeekPattern"

    .line 891
    .line 892
    aput-object v9, v2, v3

    .line 893
    .line 894
    aput-object v5, v2, v4

    .line 895
    .line 896
    const/16 v9, 0x46

    .line 897
    .line 898
    aput-object v2, v0, v9

    .line 899
    .line 900
    new-array v2, v1, [Ljava/lang/Object;

    .line 901
    .line 902
    const-string v9, "WeekFuturePrefix"

    .line 903
    .line 904
    aput-object v9, v2, v3

    .line 905
    .line 906
    aput-object v6, v2, v4

    .line 907
    .line 908
    const/16 v9, 0x47

    .line 909
    .line 910
    aput-object v2, v0, v9

    .line 911
    .line 912
    new-array v2, v1, [Ljava/lang/Object;

    .line 913
    .line 914
    const-string v9, "WeekFutureSuffix"

    .line 915
    .line 916
    aput-object v9, v2, v3

    .line 917
    .line 918
    aput-object v7, v2, v4

    .line 919
    .line 920
    const/16 v9, 0x48

    .line 921
    .line 922
    aput-object v2, v0, v9

    .line 923
    .line 924
    new-array v2, v1, [Ljava/lang/Object;

    .line 925
    .line 926
    const-string v9, "WeekPastPrefix"

    .line 927
    .line 928
    aput-object v9, v2, v3

    .line 929
    .line 930
    aput-object v8, v2, v4

    .line 931
    .line 932
    const/16 v9, 0x49

    .line 933
    .line 934
    aput-object v2, v0, v9

    .line 935
    .line 936
    new-array v2, v1, [Ljava/lang/Object;

    .line 937
    .line 938
    const-string v9, "WeekPastSuffix"

    .line 939
    .line 940
    aput-object v9, v2, v3

    .line 941
    .line 942
    aput-object v7, v2, v4

    .line 943
    .line 944
    const/16 v9, 0x4a

    .line 945
    .line 946
    aput-object v2, v0, v9

    .line 947
    .line 948
    new-array v2, v1, [Ljava/lang/Object;

    .line 949
    .line 950
    const-string v9, "WeekSingularName"

    .line 951
    .line 952
    aput-object v9, v2, v3

    .line 953
    .line 954
    const-string v9, "Woche"

    .line 955
    .line 956
    aput-object v9, v2, v4

    .line 957
    .line 958
    const/16 v9, 0x4b

    .line 959
    .line 960
    aput-object v2, v0, v9

    .line 961
    .line 962
    new-array v2, v1, [Ljava/lang/Object;

    .line 963
    .line 964
    const-string v9, "WeekPluralName"

    .line 965
    .line 966
    aput-object v9, v2, v3

    .line 967
    .line 968
    const-string v9, "Wochen"

    .line 969
    .line 970
    aput-object v9, v2, v4

    .line 971
    .line 972
    const/16 v9, 0x4c

    .line 973
    .line 974
    aput-object v2, v0, v9

    .line 975
    .line 976
    new-array v2, v1, [Ljava/lang/Object;

    .line 977
    .line 978
    const-string v9, "YearPattern"

    .line 979
    .line 980
    aput-object v9, v2, v3

    .line 981
    .line 982
    aput-object v5, v2, v4

    .line 983
    .line 984
    const/16 v5, 0x4d

    .line 985
    .line 986
    aput-object v2, v0, v5

    .line 987
    .line 988
    new-array v2, v1, [Ljava/lang/Object;

    .line 989
    .line 990
    const-string v5, "YearFuturePrefix"

    .line 991
    .line 992
    aput-object v5, v2, v3

    .line 993
    .line 994
    aput-object v6, v2, v4

    .line 995
    .line 996
    const/16 v5, 0x4e

    .line 997
    .line 998
    aput-object v2, v0, v5

    .line 999
    .line 1000
    new-array v2, v1, [Ljava/lang/Object;

    .line 1001
    .line 1002
    const-string v5, "YearFutureSuffix"

    .line 1003
    .line 1004
    aput-object v5, v2, v3

    .line 1005
    .line 1006
    aput-object v7, v2, v4

    .line 1007
    .line 1008
    const/16 v5, 0x4f

    .line 1009
    .line 1010
    aput-object v2, v0, v5

    .line 1011
    .line 1012
    new-array v2, v1, [Ljava/lang/Object;

    .line 1013
    .line 1014
    const-string v5, "YearPastPrefix"

    .line 1015
    .line 1016
    aput-object v5, v2, v3

    .line 1017
    .line 1018
    aput-object v8, v2, v4

    .line 1019
    .line 1020
    const/16 v5, 0x50

    .line 1021
    .line 1022
    aput-object v2, v0, v5

    .line 1023
    .line 1024
    new-array v2, v1, [Ljava/lang/Object;

    .line 1025
    .line 1026
    const-string v5, "YearPastSuffix"

    .line 1027
    .line 1028
    aput-object v5, v2, v3

    .line 1029
    .line 1030
    aput-object v7, v2, v4

    .line 1031
    .line 1032
    const/16 v5, 0x51

    .line 1033
    .line 1034
    aput-object v2, v0, v5

    .line 1035
    .line 1036
    new-array v2, v1, [Ljava/lang/Object;

    .line 1037
    .line 1038
    const-string v5, "YearSingularName"

    .line 1039
    .line 1040
    aput-object v5, v2, v3

    .line 1041
    .line 1042
    const-string v5, "Jahr"

    .line 1043
    .line 1044
    aput-object v5, v2, v4

    .line 1045
    .line 1046
    const/16 v5, 0x52

    .line 1047
    .line 1048
    aput-object v2, v0, v5

    .line 1049
    .line 1050
    new-array v2, v1, [Ljava/lang/Object;

    .line 1051
    .line 1052
    const-string v5, "YearPluralName"

    .line 1053
    .line 1054
    aput-object v5, v2, v3

    .line 1055
    .line 1056
    const-string v5, "Jahre"

    .line 1057
    .line 1058
    aput-object v5, v2, v4

    .line 1059
    .line 1060
    const/16 v5, 0x53

    .line 1061
    .line 1062
    aput-object v2, v0, v5

    .line 1063
    .line 1064
    new-array v2, v1, [Ljava/lang/Object;

    .line 1065
    .line 1066
    const-string v5, "AbstractTimeUnitPattern"

    .line 1067
    .line 1068
    aput-object v5, v2, v3

    .line 1069
    .line 1070
    aput-object v7, v2, v4

    .line 1071
    .line 1072
    const/16 v5, 0x54

    .line 1073
    .line 1074
    aput-object v2, v0, v5

    .line 1075
    .line 1076
    new-array v2, v1, [Ljava/lang/Object;

    .line 1077
    .line 1078
    const-string v5, "AbstractTimeUnitFuturePrefix"

    .line 1079
    .line 1080
    aput-object v5, v2, v3

    .line 1081
    .line 1082
    aput-object v7, v2, v4

    .line 1083
    .line 1084
    const/16 v5, 0x55

    .line 1085
    .line 1086
    aput-object v2, v0, v5

    .line 1087
    .line 1088
    new-array v2, v1, [Ljava/lang/Object;

    .line 1089
    .line 1090
    const-string v5, "AbstractTimeUnitFutureSuffix"

    .line 1091
    .line 1092
    aput-object v5, v2, v3

    .line 1093
    .line 1094
    aput-object v7, v2, v4

    .line 1095
    .line 1096
    const/16 v5, 0x56

    .line 1097
    .line 1098
    aput-object v2, v0, v5

    .line 1099
    .line 1100
    new-array v2, v1, [Ljava/lang/Object;

    .line 1101
    .line 1102
    const-string v5, "AbstractTimeUnitPastPrefix"

    .line 1103
    .line 1104
    aput-object v5, v2, v3

    .line 1105
    .line 1106
    aput-object v7, v2, v4

    .line 1107
    .line 1108
    const/16 v5, 0x57

    .line 1109
    .line 1110
    aput-object v2, v0, v5

    .line 1111
    .line 1112
    new-array v2, v1, [Ljava/lang/Object;

    .line 1113
    .line 1114
    const-string v5, "AbstractTimeUnitPastSuffix"

    .line 1115
    .line 1116
    aput-object v5, v2, v3

    .line 1117
    .line 1118
    aput-object v7, v2, v4

    .line 1119
    .line 1120
    const/16 v5, 0x58

    .line 1121
    .line 1122
    aput-object v2, v0, v5

    .line 1123
    .line 1124
    new-array v2, v1, [Ljava/lang/Object;

    .line 1125
    .line 1126
    const-string v5, "AbstractTimeUnitSingularName"

    .line 1127
    .line 1128
    aput-object v5, v2, v3

    .line 1129
    .line 1130
    aput-object v7, v2, v4

    .line 1131
    .line 1132
    const/16 v5, 0x59

    .line 1133
    .line 1134
    aput-object v2, v0, v5

    .line 1135
    .line 1136
    new-array v1, v1, [Ljava/lang/Object;

    .line 1137
    .line 1138
    const-string v2, "AbstractTimeUnitPluralName"

    .line 1139
    .line 1140
    aput-object v2, v1, v3

    .line 1141
    .line 1142
    aput-object v7, v1, v4

    .line 1143
    .line 1144
    const/16 v2, 0x5a

    .line 1145
    .line 1146
    aput-object v1, v0, v2

    .line 1147
    .line 1148
    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_de;->OBJECTS:[[Ljava/lang/Object;

    .line 1149
    .line 1150
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
    sget-object p0, Lorg/ocpsoft/prettytime/i18n/Resources_de;->OBJECTS:[[Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 1

    .line 1
    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_de$DeTimeFormat;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_de$DeTimeFormat;-><init>(Ljava/util/ResourceBundle;Lorg/ocpsoft/prettytime/TimeUnit;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

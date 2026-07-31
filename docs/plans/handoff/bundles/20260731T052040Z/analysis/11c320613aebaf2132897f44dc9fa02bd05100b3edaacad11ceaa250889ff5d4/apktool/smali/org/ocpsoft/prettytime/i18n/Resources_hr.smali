.class public Lorg/ocpsoft/prettytime/i18n/Resources_hr;
.super Ljava/util/ListResourceBundle;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;,
        Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;,
        Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;
    }
.end annotation


# static fields
.field private static final OBJECTS:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 11

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
    aput-object v7, v2, v4

    .line 52
    .line 53
    const/4 v8, 0x3

    .line 54
    aput-object v2, v0, v8

    .line 55
    .line 56
    new-array v2, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    const-string v8, "CenturyPastSuffix"

    .line 59
    .line 60
    aput-object v8, v2, v3

    .line 61
    .line 62
    const-string v8, " unatrag"

    .line 63
    .line 64
    aput-object v8, v2, v4

    .line 65
    .line 66
    const/4 v8, 0x4

    .line 67
    aput-object v2, v0, v8

    .line 68
    .line 69
    new-array v2, v1, [Ljava/lang/Object;

    .line 70
    .line 71
    const-string v8, "CenturySingularName"

    .line 72
    .line 73
    aput-object v8, v2, v3

    .line 74
    .line 75
    const-string/jumbo v8, "stolje\u0107e"

    .line 76
    .line 77
    .line 78
    aput-object v8, v2, v4

    .line 79
    .line 80
    const/4 v8, 0x5

    .line 81
    aput-object v2, v0, v8

    .line 82
    .line 83
    new-array v2, v1, [Ljava/lang/Object;

    .line 84
    .line 85
    const-string v8, "CenturyPluralName"

    .line 86
    .line 87
    aput-object v8, v2, v3

    .line 88
    .line 89
    const-string/jumbo v8, "stolje\u0107a"

    .line 90
    .line 91
    .line 92
    aput-object v8, v2, v4

    .line 93
    .line 94
    const/4 v8, 0x6

    .line 95
    aput-object v2, v0, v8

    .line 96
    .line 97
    new-array v2, v1, [Ljava/lang/Object;

    .line 98
    .line 99
    const-string v8, "DayPattern"

    .line 100
    .line 101
    aput-object v8, v2, v3

    .line 102
    .line 103
    aput-object v5, v2, v4

    .line 104
    .line 105
    const/4 v8, 0x7

    .line 106
    aput-object v2, v0, v8

    .line 107
    .line 108
    new-array v2, v1, [Ljava/lang/Object;

    .line 109
    .line 110
    const-string v8, "DayFuturePrefix"

    .line 111
    .line 112
    aput-object v8, v2, v3

    .line 113
    .line 114
    aput-object v6, v2, v4

    .line 115
    .line 116
    const/16 v8, 0x8

    .line 117
    .line 118
    aput-object v2, v0, v8

    .line 119
    .line 120
    new-array v2, v1, [Ljava/lang/Object;

    .line 121
    .line 122
    const-string v8, "DayFutureSuffix"

    .line 123
    .line 124
    aput-object v8, v2, v3

    .line 125
    .line 126
    aput-object v7, v2, v4

    .line 127
    .line 128
    const/16 v8, 0x9

    .line 129
    .line 130
    aput-object v2, v0, v8

    .line 131
    .line 132
    new-array v2, v1, [Ljava/lang/Object;

    .line 133
    .line 134
    const-string v8, "DayPastPrefix"

    .line 135
    .line 136
    aput-object v8, v2, v3

    .line 137
    .line 138
    const-string v8, "prije "

    .line 139
    .line 140
    aput-object v8, v2, v4

    .line 141
    .line 142
    const/16 v9, 0xa

    .line 143
    .line 144
    aput-object v2, v0, v9

    .line 145
    .line 146
    new-array v2, v1, [Ljava/lang/Object;

    .line 147
    .line 148
    const-string v9, "DayPastSuffix"

    .line 149
    .line 150
    aput-object v9, v2, v3

    .line 151
    .line 152
    aput-object v7, v2, v4

    .line 153
    .line 154
    const/16 v9, 0xb

    .line 155
    .line 156
    aput-object v2, v0, v9

    .line 157
    .line 158
    new-array v2, v1, [Ljava/lang/Object;

    .line 159
    .line 160
    const-string v9, "DaySingularName"

    .line 161
    .line 162
    aput-object v9, v2, v3

    .line 163
    .line 164
    const-string v9, "dan"

    .line 165
    .line 166
    aput-object v9, v2, v4

    .line 167
    .line 168
    const/16 v9, 0xc

    .line 169
    .line 170
    aput-object v2, v0, v9

    .line 171
    .line 172
    new-array v2, v1, [Ljava/lang/Object;

    .line 173
    .line 174
    const-string v9, "DayPluralName"

    .line 175
    .line 176
    aput-object v9, v2, v3

    .line 177
    .line 178
    const-string v9, "dana"

    .line 179
    .line 180
    aput-object v9, v2, v4

    .line 181
    .line 182
    const/16 v9, 0xd

    .line 183
    .line 184
    aput-object v2, v0, v9

    .line 185
    .line 186
    new-array v2, v1, [Ljava/lang/Object;

    .line 187
    .line 188
    const-string v9, "DecadePattern"

    .line 189
    .line 190
    aput-object v9, v2, v3

    .line 191
    .line 192
    aput-object v5, v2, v4

    .line 193
    .line 194
    const/16 v9, 0xe

    .line 195
    .line 196
    aput-object v2, v0, v9

    .line 197
    .line 198
    new-array v2, v1, [Ljava/lang/Object;

    .line 199
    .line 200
    const-string v9, "DecadeFuturePrefix"

    .line 201
    .line 202
    aput-object v9, v2, v3

    .line 203
    .line 204
    aput-object v6, v2, v4

    .line 205
    .line 206
    const/16 v9, 0xf

    .line 207
    .line 208
    aput-object v2, v0, v9

    .line 209
    .line 210
    new-array v2, v1, [Ljava/lang/Object;

    .line 211
    .line 212
    const-string v9, "DecadeFutureSuffix"

    .line 213
    .line 214
    aput-object v9, v2, v3

    .line 215
    .line 216
    aput-object v7, v2, v4

    .line 217
    .line 218
    const/16 v9, 0x10

    .line 219
    .line 220
    aput-object v2, v0, v9

    .line 221
    .line 222
    new-array v2, v1, [Ljava/lang/Object;

    .line 223
    .line 224
    const-string v9, "DecadePastPrefix"

    .line 225
    .line 226
    aput-object v9, v2, v3

    .line 227
    .line 228
    aput-object v8, v2, v4

    .line 229
    .line 230
    const/16 v9, 0x11

    .line 231
    .line 232
    aput-object v2, v0, v9

    .line 233
    .line 234
    new-array v2, v1, [Ljava/lang/Object;

    .line 235
    .line 236
    const-string v9, "DecadePastSuffix"

    .line 237
    .line 238
    aput-object v9, v2, v3

    .line 239
    .line 240
    aput-object v7, v2, v4

    .line 241
    .line 242
    const/16 v9, 0x12

    .line 243
    .line 244
    aput-object v2, v0, v9

    .line 245
    .line 246
    new-array v2, v1, [Ljava/lang/Object;

    .line 247
    .line 248
    const-string v9, "DecadeSingularName"

    .line 249
    .line 250
    aput-object v9, v2, v3

    .line 251
    .line 252
    const-string v9, "desetlje\u0107e"

    .line 253
    .line 254
    aput-object v9, v2, v4

    .line 255
    .line 256
    const/16 v9, 0x13

    .line 257
    .line 258
    aput-object v2, v0, v9

    .line 259
    .line 260
    new-array v2, v1, [Ljava/lang/Object;

    .line 261
    .line 262
    const-string v9, "DecadePluralName"

    .line 263
    .line 264
    aput-object v9, v2, v3

    .line 265
    .line 266
    const-string v9, "desetlje\u0107a"

    .line 267
    .line 268
    aput-object v9, v2, v4

    .line 269
    .line 270
    const/16 v9, 0x14

    .line 271
    .line 272
    aput-object v2, v0, v9

    .line 273
    .line 274
    new-array v2, v1, [Ljava/lang/Object;

    .line 275
    .line 276
    const-string v9, "HourPattern"

    .line 277
    .line 278
    aput-object v9, v2, v3

    .line 279
    .line 280
    aput-object v5, v2, v4

    .line 281
    .line 282
    const/16 v9, 0x15

    .line 283
    .line 284
    aput-object v2, v0, v9

    .line 285
    .line 286
    new-array v2, v1, [Ljava/lang/Object;

    .line 287
    .line 288
    const-string v9, "HourFuturePrefix"

    .line 289
    .line 290
    aput-object v9, v2, v3

    .line 291
    .line 292
    aput-object v6, v2, v4

    .line 293
    .line 294
    const/16 v9, 0x16

    .line 295
    .line 296
    aput-object v2, v0, v9

    .line 297
    .line 298
    new-array v2, v1, [Ljava/lang/Object;

    .line 299
    .line 300
    const-string v9, "HourFutureSuffix"

    .line 301
    .line 302
    aput-object v9, v2, v3

    .line 303
    .line 304
    aput-object v7, v2, v4

    .line 305
    .line 306
    const/16 v9, 0x17

    .line 307
    .line 308
    aput-object v2, v0, v9

    .line 309
    .line 310
    new-array v2, v1, [Ljava/lang/Object;

    .line 311
    .line 312
    const-string v9, "HourPastPrefix"

    .line 313
    .line 314
    aput-object v9, v2, v3

    .line 315
    .line 316
    aput-object v8, v2, v4

    .line 317
    .line 318
    const/16 v9, 0x18

    .line 319
    .line 320
    aput-object v2, v0, v9

    .line 321
    .line 322
    new-array v2, v1, [Ljava/lang/Object;

    .line 323
    .line 324
    const-string v9, "HourPastSuffix"

    .line 325
    .line 326
    aput-object v9, v2, v3

    .line 327
    .line 328
    aput-object v7, v2, v4

    .line 329
    .line 330
    const/16 v9, 0x19

    .line 331
    .line 332
    aput-object v2, v0, v9

    .line 333
    .line 334
    new-array v2, v1, [Ljava/lang/Object;

    .line 335
    .line 336
    const-string v9, "HourSingularName"

    .line 337
    .line 338
    aput-object v9, v2, v3

    .line 339
    .line 340
    const-string v9, "sat"

    .line 341
    .line 342
    aput-object v9, v2, v4

    .line 343
    .line 344
    const/16 v9, 0x1a

    .line 345
    .line 346
    aput-object v2, v0, v9

    .line 347
    .line 348
    new-array v2, v1, [Ljava/lang/Object;

    .line 349
    .line 350
    const-string v9, "HourPluralName"

    .line 351
    .line 352
    aput-object v9, v2, v3

    .line 353
    .line 354
    const-string v9, "sati"

    .line 355
    .line 356
    aput-object v9, v2, v4

    .line 357
    .line 358
    const/16 v9, 0x1b

    .line 359
    .line 360
    aput-object v2, v0, v9

    .line 361
    .line 362
    new-array v2, v1, [Ljava/lang/Object;

    .line 363
    .line 364
    const-string v9, "JustNowPattern"

    .line 365
    .line 366
    aput-object v9, v2, v3

    .line 367
    .line 368
    const-string v9, "%u"

    .line 369
    .line 370
    aput-object v9, v2, v4

    .line 371
    .line 372
    const/16 v9, 0x1c

    .line 373
    .line 374
    aput-object v2, v0, v9

    .line 375
    .line 376
    new-array v2, v1, [Ljava/lang/Object;

    .line 377
    .line 378
    const-string v9, "JustNowFuturePrefix"

    .line 379
    .line 380
    aput-object v9, v2, v3

    .line 381
    .line 382
    const-string/jumbo v9, "za nekoliko trenutaka"

    .line 383
    .line 384
    .line 385
    aput-object v9, v2, v4

    .line 386
    .line 387
    const/16 v9, 0x1d

    .line 388
    .line 389
    aput-object v2, v0, v9

    .line 390
    .line 391
    new-array v2, v1, [Ljava/lang/Object;

    .line 392
    .line 393
    const-string v9, "JustNowFutureSuffix"

    .line 394
    .line 395
    aput-object v9, v2, v3

    .line 396
    .line 397
    aput-object v7, v2, v4

    .line 398
    .line 399
    const/16 v9, 0x1e

    .line 400
    .line 401
    aput-object v2, v0, v9

    .line 402
    .line 403
    new-array v2, v1, [Ljava/lang/Object;

    .line 404
    .line 405
    const-string v9, "JustNowPastPrefix"

    .line 406
    .line 407
    aput-object v9, v2, v3

    .line 408
    .line 409
    const-string v9, "prije nekoliko trenutaka"

    .line 410
    .line 411
    aput-object v9, v2, v4

    .line 412
    .line 413
    const/16 v9, 0x1f

    .line 414
    .line 415
    aput-object v2, v0, v9

    .line 416
    .line 417
    new-array v2, v1, [Ljava/lang/Object;

    .line 418
    .line 419
    const-string v9, "JustNowPastSuffix"

    .line 420
    .line 421
    aput-object v9, v2, v3

    .line 422
    .line 423
    aput-object v7, v2, v4

    .line 424
    .line 425
    const/16 v9, 0x20

    .line 426
    .line 427
    aput-object v2, v0, v9

    .line 428
    .line 429
    new-array v2, v1, [Ljava/lang/Object;

    .line 430
    .line 431
    const-string v9, "JustNowSingularName"

    .line 432
    .line 433
    aput-object v9, v2, v3

    .line 434
    .line 435
    aput-object v7, v2, v4

    .line 436
    .line 437
    const/16 v9, 0x21

    .line 438
    .line 439
    aput-object v2, v0, v9

    .line 440
    .line 441
    new-array v2, v1, [Ljava/lang/Object;

    .line 442
    .line 443
    const-string v9, "JustNowPluralName"

    .line 444
    .line 445
    aput-object v9, v2, v3

    .line 446
    .line 447
    aput-object v7, v2, v4

    .line 448
    .line 449
    const/16 v9, 0x22

    .line 450
    .line 451
    aput-object v2, v0, v9

    .line 452
    .line 453
    new-array v2, v1, [Ljava/lang/Object;

    .line 454
    .line 455
    const-string v9, "MillenniumPattern"

    .line 456
    .line 457
    aput-object v9, v2, v3

    .line 458
    .line 459
    aput-object v5, v2, v4

    .line 460
    .line 461
    const/16 v9, 0x23

    .line 462
    .line 463
    aput-object v2, v0, v9

    .line 464
    .line 465
    new-array v2, v1, [Ljava/lang/Object;

    .line 466
    .line 467
    const-string v9, "MillenniumFuturePrefix"

    .line 468
    .line 469
    aput-object v9, v2, v3

    .line 470
    .line 471
    aput-object v6, v2, v4

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
    const-string v9, "MillenniumFutureSuffix"

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
    const-string v9, "MillenniumPastPrefix"

    .line 492
    .line 493
    aput-object v9, v2, v3

    .line 494
    .line 495
    aput-object v8, v2, v4

    .line 496
    .line 497
    const/16 v9, 0x26

    .line 498
    .line 499
    aput-object v2, v0, v9

    .line 500
    .line 501
    new-array v2, v1, [Ljava/lang/Object;

    .line 502
    .line 503
    const-string v9, "MillenniumPastSuffix"

    .line 504
    .line 505
    aput-object v9, v2, v3

    .line 506
    .line 507
    aput-object v7, v2, v4

    .line 508
    .line 509
    const/16 v9, 0x27

    .line 510
    .line 511
    aput-object v2, v0, v9

    .line 512
    .line 513
    new-array v2, v1, [Ljava/lang/Object;

    .line 514
    .line 515
    const-string v9, "MillenniumSingularName"

    .line 516
    .line 517
    aput-object v9, v2, v3

    .line 518
    .line 519
    const-string/jumbo v9, "tisu\u0107lje\u0107e"

    .line 520
    .line 521
    .line 522
    aput-object v9, v2, v4

    .line 523
    .line 524
    const/16 v9, 0x28

    .line 525
    .line 526
    aput-object v2, v0, v9

    .line 527
    .line 528
    new-array v2, v1, [Ljava/lang/Object;

    .line 529
    .line 530
    const-string v9, "MillenniumPluralName"

    .line 531
    .line 532
    aput-object v9, v2, v3

    .line 533
    .line 534
    const-string/jumbo v9, "tisu\u0107lje\u0107a"

    .line 535
    .line 536
    .line 537
    aput-object v9, v2, v4

    .line 538
    .line 539
    const/16 v9, 0x29

    .line 540
    .line 541
    aput-object v2, v0, v9

    .line 542
    .line 543
    new-array v2, v1, [Ljava/lang/Object;

    .line 544
    .line 545
    const-string v9, "MillisecondPattern"

    .line 546
    .line 547
    aput-object v9, v2, v3

    .line 548
    .line 549
    aput-object v5, v2, v4

    .line 550
    .line 551
    const/16 v9, 0x2a

    .line 552
    .line 553
    aput-object v2, v0, v9

    .line 554
    .line 555
    new-array v2, v1, [Ljava/lang/Object;

    .line 556
    .line 557
    const-string v9, "MillisecondFuturePrefix"

    .line 558
    .line 559
    aput-object v9, v2, v3

    .line 560
    .line 561
    aput-object v6, v2, v4

    .line 562
    .line 563
    const/16 v9, 0x2b

    .line 564
    .line 565
    aput-object v2, v0, v9

    .line 566
    .line 567
    new-array v2, v1, [Ljava/lang/Object;

    .line 568
    .line 569
    const-string v9, "MillisecondFutureSuffix"

    .line 570
    .line 571
    aput-object v9, v2, v3

    .line 572
    .line 573
    aput-object v7, v2, v4

    .line 574
    .line 575
    const/16 v9, 0x2c

    .line 576
    .line 577
    aput-object v2, v0, v9

    .line 578
    .line 579
    new-array v2, v1, [Ljava/lang/Object;

    .line 580
    .line 581
    const-string v9, "MillisecondPastPrefix"

    .line 582
    .line 583
    aput-object v9, v2, v3

    .line 584
    .line 585
    aput-object v8, v2, v4

    .line 586
    .line 587
    const/16 v9, 0x2d

    .line 588
    .line 589
    aput-object v2, v0, v9

    .line 590
    .line 591
    new-array v2, v1, [Ljava/lang/Object;

    .line 592
    .line 593
    const-string v9, "MillisecondPastSuffix"

    .line 594
    .line 595
    aput-object v9, v2, v3

    .line 596
    .line 597
    aput-object v7, v2, v4

    .line 598
    .line 599
    const/16 v9, 0x2e

    .line 600
    .line 601
    aput-object v2, v0, v9

    .line 602
    .line 603
    new-array v2, v1, [Ljava/lang/Object;

    .line 604
    .line 605
    const-string v9, "MillisecondSingularName"

    .line 606
    .line 607
    aput-object v9, v2, v3

    .line 608
    .line 609
    const-string v9, "milisekunda"

    .line 610
    .line 611
    aput-object v9, v2, v4

    .line 612
    .line 613
    const/16 v10, 0x2f

    .line 614
    .line 615
    aput-object v2, v0, v10

    .line 616
    .line 617
    new-array v2, v1, [Ljava/lang/Object;

    .line 618
    .line 619
    const-string v10, "MillisecondPluralName"

    .line 620
    .line 621
    aput-object v10, v2, v3

    .line 622
    .line 623
    aput-object v9, v2, v4

    .line 624
    .line 625
    const/16 v9, 0x30

    .line 626
    .line 627
    aput-object v2, v0, v9

    .line 628
    .line 629
    new-array v2, v1, [Ljava/lang/Object;

    .line 630
    .line 631
    const-string v9, "MinutePattern"

    .line 632
    .line 633
    aput-object v9, v2, v3

    .line 634
    .line 635
    aput-object v5, v2, v4

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
    const-string v9, "MinuteFuturePrefix"

    .line 644
    .line 645
    aput-object v9, v2, v3

    .line 646
    .line 647
    aput-object v6, v2, v4

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
    const-string v9, "MinuteFutureSuffix"

    .line 656
    .line 657
    aput-object v9, v2, v3

    .line 658
    .line 659
    aput-object v7, v2, v4

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
    const-string v9, "MinutePastPrefix"

    .line 668
    .line 669
    aput-object v9, v2, v3

    .line 670
    .line 671
    aput-object v8, v2, v4

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
    const-string v9, "MinutePastSuffix"

    .line 680
    .line 681
    aput-object v9, v2, v3

    .line 682
    .line 683
    aput-object v7, v2, v4

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
    const-string v9, "MinuteSingularName"

    .line 692
    .line 693
    aput-object v9, v2, v3

    .line 694
    .line 695
    const-string v9, "minuta"

    .line 696
    .line 697
    aput-object v9, v2, v4

    .line 698
    .line 699
    const/16 v10, 0x36

    .line 700
    .line 701
    aput-object v2, v0, v10

    .line 702
    .line 703
    new-array v2, v1, [Ljava/lang/Object;

    .line 704
    .line 705
    const-string v10, "MinutePluralName"

    .line 706
    .line 707
    aput-object v10, v2, v3

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
    const-string v9, "MonthPattern"

    .line 718
    .line 719
    aput-object v9, v2, v3

    .line 720
    .line 721
    aput-object v5, v2, v4

    .line 722
    .line 723
    const/16 v9, 0x38

    .line 724
    .line 725
    aput-object v2, v0, v9

    .line 726
    .line 727
    new-array v2, v1, [Ljava/lang/Object;

    .line 728
    .line 729
    const-string v9, "MonthFuturePrefix"

    .line 730
    .line 731
    aput-object v9, v2, v3

    .line 732
    .line 733
    aput-object v6, v2, v4

    .line 734
    .line 735
    const/16 v9, 0x39

    .line 736
    .line 737
    aput-object v2, v0, v9

    .line 738
    .line 739
    new-array v2, v1, [Ljava/lang/Object;

    .line 740
    .line 741
    const-string v9, "MonthFutureSuffix"

    .line 742
    .line 743
    aput-object v9, v2, v3

    .line 744
    .line 745
    aput-object v7, v2, v4

    .line 746
    .line 747
    const/16 v9, 0x3a

    .line 748
    .line 749
    aput-object v2, v0, v9

    .line 750
    .line 751
    new-array v2, v1, [Ljava/lang/Object;

    .line 752
    .line 753
    const-string v9, "MonthPastPrefix"

    .line 754
    .line 755
    aput-object v9, v2, v3

    .line 756
    .line 757
    aput-object v8, v2, v4

    .line 758
    .line 759
    const/16 v9, 0x3b

    .line 760
    .line 761
    aput-object v2, v0, v9

    .line 762
    .line 763
    new-array v2, v1, [Ljava/lang/Object;

    .line 764
    .line 765
    const-string v9, "MonthPastSuffix"

    .line 766
    .line 767
    aput-object v9, v2, v3

    .line 768
    .line 769
    aput-object v7, v2, v4

    .line 770
    .line 771
    const/16 v9, 0x3c

    .line 772
    .line 773
    aput-object v2, v0, v9

    .line 774
    .line 775
    new-array v2, v1, [Ljava/lang/Object;

    .line 776
    .line 777
    const-string v9, "MonthSingularName"

    .line 778
    .line 779
    aput-object v9, v2, v3

    .line 780
    .line 781
    const-string v9, "mjesec"

    .line 782
    .line 783
    aput-object v9, v2, v4

    .line 784
    .line 785
    const/16 v9, 0x3d

    .line 786
    .line 787
    aput-object v2, v0, v9

    .line 788
    .line 789
    new-array v2, v1, [Ljava/lang/Object;

    .line 790
    .line 791
    const-string v9, "MonthPluralName"

    .line 792
    .line 793
    aput-object v9, v2, v3

    .line 794
    .line 795
    const-string v9, "mjeseca"

    .line 796
    .line 797
    aput-object v9, v2, v4

    .line 798
    .line 799
    const/16 v9, 0x3e

    .line 800
    .line 801
    aput-object v2, v0, v9

    .line 802
    .line 803
    new-array v2, v1, [Ljava/lang/Object;

    .line 804
    .line 805
    const-string v9, "SecondPattern"

    .line 806
    .line 807
    aput-object v9, v2, v3

    .line 808
    .line 809
    aput-object v5, v2, v4

    .line 810
    .line 811
    const/16 v9, 0x3f

    .line 812
    .line 813
    aput-object v2, v0, v9

    .line 814
    .line 815
    new-array v2, v1, [Ljava/lang/Object;

    .line 816
    .line 817
    const-string v9, "SecondFuturePrefix"

    .line 818
    .line 819
    aput-object v9, v2, v3

    .line 820
    .line 821
    aput-object v6, v2, v4

    .line 822
    .line 823
    const/16 v9, 0x40

    .line 824
    .line 825
    aput-object v2, v0, v9

    .line 826
    .line 827
    new-array v2, v1, [Ljava/lang/Object;

    .line 828
    .line 829
    const-string v9, "SecondFutureSuffix"

    .line 830
    .line 831
    aput-object v9, v2, v3

    .line 832
    .line 833
    aput-object v7, v2, v4

    .line 834
    .line 835
    const/16 v9, 0x41

    .line 836
    .line 837
    aput-object v2, v0, v9

    .line 838
    .line 839
    new-array v2, v1, [Ljava/lang/Object;

    .line 840
    .line 841
    const-string v9, "SecondPastPrefix"

    .line 842
    .line 843
    aput-object v9, v2, v3

    .line 844
    .line 845
    aput-object v8, v2, v4

    .line 846
    .line 847
    const/16 v9, 0x42

    .line 848
    .line 849
    aput-object v2, v0, v9

    .line 850
    .line 851
    new-array v2, v1, [Ljava/lang/Object;

    .line 852
    .line 853
    const-string v9, "SecondPastSuffix"

    .line 854
    .line 855
    aput-object v9, v2, v3

    .line 856
    .line 857
    aput-object v7, v2, v4

    .line 858
    .line 859
    const/16 v9, 0x43

    .line 860
    .line 861
    aput-object v2, v0, v9

    .line 862
    .line 863
    new-array v2, v1, [Ljava/lang/Object;

    .line 864
    .line 865
    const-string v9, "SecondSingularName"

    .line 866
    .line 867
    aput-object v9, v2, v3

    .line 868
    .line 869
    const-string v9, "sekunda"

    .line 870
    .line 871
    aput-object v9, v2, v4

    .line 872
    .line 873
    const/16 v9, 0x44

    .line 874
    .line 875
    aput-object v2, v0, v9

    .line 876
    .line 877
    new-array v2, v1, [Ljava/lang/Object;

    .line 878
    .line 879
    const-string v9, "SecondPluralName"

    .line 880
    .line 881
    aput-object v9, v2, v3

    .line 882
    .line 883
    const-string v9, "sekundi"

    .line 884
    .line 885
    aput-object v9, v2, v4

    .line 886
    .line 887
    const/16 v9, 0x45

    .line 888
    .line 889
    aput-object v2, v0, v9

    .line 890
    .line 891
    new-array v2, v1, [Ljava/lang/Object;

    .line 892
    .line 893
    const-string v9, "WeekPattern"

    .line 894
    .line 895
    aput-object v9, v2, v3

    .line 896
    .line 897
    aput-object v5, v2, v4

    .line 898
    .line 899
    const/16 v9, 0x46

    .line 900
    .line 901
    aput-object v2, v0, v9

    .line 902
    .line 903
    new-array v2, v1, [Ljava/lang/Object;

    .line 904
    .line 905
    const-string v9, "WeekFuturePrefix"

    .line 906
    .line 907
    aput-object v9, v2, v3

    .line 908
    .line 909
    aput-object v6, v2, v4

    .line 910
    .line 911
    const/16 v9, 0x47

    .line 912
    .line 913
    aput-object v2, v0, v9

    .line 914
    .line 915
    new-array v2, v1, [Ljava/lang/Object;

    .line 916
    .line 917
    const-string v9, "WeekFutureSuffix"

    .line 918
    .line 919
    aput-object v9, v2, v3

    .line 920
    .line 921
    aput-object v7, v2, v4

    .line 922
    .line 923
    const/16 v9, 0x48

    .line 924
    .line 925
    aput-object v2, v0, v9

    .line 926
    .line 927
    new-array v2, v1, [Ljava/lang/Object;

    .line 928
    .line 929
    const-string v9, "WeekPastPrefix"

    .line 930
    .line 931
    aput-object v9, v2, v3

    .line 932
    .line 933
    aput-object v8, v2, v4

    .line 934
    .line 935
    const/16 v9, 0x49

    .line 936
    .line 937
    aput-object v2, v0, v9

    .line 938
    .line 939
    new-array v2, v1, [Ljava/lang/Object;

    .line 940
    .line 941
    const-string v9, "WeekPastSuffix"

    .line 942
    .line 943
    aput-object v9, v2, v3

    .line 944
    .line 945
    aput-object v7, v2, v4

    .line 946
    .line 947
    const/16 v9, 0x4a

    .line 948
    .line 949
    aput-object v2, v0, v9

    .line 950
    .line 951
    new-array v2, v1, [Ljava/lang/Object;

    .line 952
    .line 953
    const-string v9, "WeekSingularName"

    .line 954
    .line 955
    aput-object v9, v2, v3

    .line 956
    .line 957
    const-string/jumbo v9, "tjedan"

    .line 958
    .line 959
    .line 960
    aput-object v9, v2, v4

    .line 961
    .line 962
    const/16 v9, 0x4b

    .line 963
    .line 964
    aput-object v2, v0, v9

    .line 965
    .line 966
    new-array v2, v1, [Ljava/lang/Object;

    .line 967
    .line 968
    const-string v9, "WeekPluralName"

    .line 969
    .line 970
    aput-object v9, v2, v3

    .line 971
    .line 972
    const-string/jumbo v9, "tjedna"

    .line 973
    .line 974
    .line 975
    aput-object v9, v2, v4

    .line 976
    .line 977
    const/16 v9, 0x4c

    .line 978
    .line 979
    aput-object v2, v0, v9

    .line 980
    .line 981
    new-array v2, v1, [Ljava/lang/Object;

    .line 982
    .line 983
    const-string v9, "YearPattern"

    .line 984
    .line 985
    aput-object v9, v2, v3

    .line 986
    .line 987
    aput-object v5, v2, v4

    .line 988
    .line 989
    const/16 v5, 0x4d

    .line 990
    .line 991
    aput-object v2, v0, v5

    .line 992
    .line 993
    new-array v2, v1, [Ljava/lang/Object;

    .line 994
    .line 995
    const-string v5, "YearFuturePrefix"

    .line 996
    .line 997
    aput-object v5, v2, v3

    .line 998
    .line 999
    aput-object v6, v2, v4

    .line 1000
    .line 1001
    const/16 v5, 0x4e

    .line 1002
    .line 1003
    aput-object v2, v0, v5

    .line 1004
    .line 1005
    new-array v2, v1, [Ljava/lang/Object;

    .line 1006
    .line 1007
    const-string v5, "YearFutureSuffix"

    .line 1008
    .line 1009
    aput-object v5, v2, v3

    .line 1010
    .line 1011
    aput-object v7, v2, v4

    .line 1012
    .line 1013
    const/16 v5, 0x4f

    .line 1014
    .line 1015
    aput-object v2, v0, v5

    .line 1016
    .line 1017
    new-array v2, v1, [Ljava/lang/Object;

    .line 1018
    .line 1019
    const-string v5, "YearPastPrefix"

    .line 1020
    .line 1021
    aput-object v5, v2, v3

    .line 1022
    .line 1023
    aput-object v8, v2, v4

    .line 1024
    .line 1025
    const/16 v5, 0x50

    .line 1026
    .line 1027
    aput-object v2, v0, v5

    .line 1028
    .line 1029
    new-array v2, v1, [Ljava/lang/Object;

    .line 1030
    .line 1031
    const-string v5, "YearPastSuffix"

    .line 1032
    .line 1033
    aput-object v5, v2, v3

    .line 1034
    .line 1035
    aput-object v7, v2, v4

    .line 1036
    .line 1037
    const/16 v5, 0x51

    .line 1038
    .line 1039
    aput-object v2, v0, v5

    .line 1040
    .line 1041
    new-array v2, v1, [Ljava/lang/Object;

    .line 1042
    .line 1043
    const-string v5, "YearSingularName"

    .line 1044
    .line 1045
    aput-object v5, v2, v3

    .line 1046
    .line 1047
    const-string v5, "godina"

    .line 1048
    .line 1049
    aput-object v5, v2, v4

    .line 1050
    .line 1051
    const/16 v6, 0x52

    .line 1052
    .line 1053
    aput-object v2, v0, v6

    .line 1054
    .line 1055
    new-array v2, v1, [Ljava/lang/Object;

    .line 1056
    .line 1057
    const-string v6, "YearPluralName"

    .line 1058
    .line 1059
    aput-object v6, v2, v3

    .line 1060
    .line 1061
    aput-object v5, v2, v4

    .line 1062
    .line 1063
    const/16 v5, 0x53

    .line 1064
    .line 1065
    aput-object v2, v0, v5

    .line 1066
    .line 1067
    new-array v2, v1, [Ljava/lang/Object;

    .line 1068
    .line 1069
    const-string v5, "AbstractTimeUnitPattern"

    .line 1070
    .line 1071
    aput-object v5, v2, v3

    .line 1072
    .line 1073
    aput-object v7, v2, v4

    .line 1074
    .line 1075
    const/16 v5, 0x54

    .line 1076
    .line 1077
    aput-object v2, v0, v5

    .line 1078
    .line 1079
    new-array v2, v1, [Ljava/lang/Object;

    .line 1080
    .line 1081
    const-string v5, "AbstractTimeUnitFuturePrefix"

    .line 1082
    .line 1083
    aput-object v5, v2, v3

    .line 1084
    .line 1085
    aput-object v7, v2, v4

    .line 1086
    .line 1087
    const/16 v5, 0x55

    .line 1088
    .line 1089
    aput-object v2, v0, v5

    .line 1090
    .line 1091
    new-array v2, v1, [Ljava/lang/Object;

    .line 1092
    .line 1093
    const-string v5, "AbstractTimeUnitFutureSuffix"

    .line 1094
    .line 1095
    aput-object v5, v2, v3

    .line 1096
    .line 1097
    aput-object v7, v2, v4

    .line 1098
    .line 1099
    const/16 v5, 0x56

    .line 1100
    .line 1101
    aput-object v2, v0, v5

    .line 1102
    .line 1103
    new-array v2, v1, [Ljava/lang/Object;

    .line 1104
    .line 1105
    const-string v5, "AbstractTimeUnitPastPrefix"

    .line 1106
    .line 1107
    aput-object v5, v2, v3

    .line 1108
    .line 1109
    aput-object v7, v2, v4

    .line 1110
    .line 1111
    const/16 v5, 0x57

    .line 1112
    .line 1113
    aput-object v2, v0, v5

    .line 1114
    .line 1115
    new-array v2, v1, [Ljava/lang/Object;

    .line 1116
    .line 1117
    const-string v5, "AbstractTimeUnitPastSuffix"

    .line 1118
    .line 1119
    aput-object v5, v2, v3

    .line 1120
    .line 1121
    aput-object v7, v2, v4

    .line 1122
    .line 1123
    const/16 v5, 0x58

    .line 1124
    .line 1125
    aput-object v2, v0, v5

    .line 1126
    .line 1127
    new-array v2, v1, [Ljava/lang/Object;

    .line 1128
    .line 1129
    const-string v5, "AbstractTimeUnitSingularName"

    .line 1130
    .line 1131
    aput-object v5, v2, v3

    .line 1132
    .line 1133
    aput-object v7, v2, v4

    .line 1134
    .line 1135
    const/16 v5, 0x59

    .line 1136
    .line 1137
    aput-object v2, v0, v5

    .line 1138
    .line 1139
    new-array v1, v1, [Ljava/lang/Object;

    .line 1140
    .line 1141
    const-string v2, "AbstractTimeUnitPluralName"

    .line 1142
    .line 1143
    aput-object v2, v1, v3

    .line 1144
    .line 1145
    aput-object v7, v1, v4

    .line 1146
    .line 1147
    const/16 v2, 0x5a

    .line 1148
    .line 1149
    aput-object v1, v0, v2

    .line 1150
    .line 1151
    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_hr;->OBJECTS:[[Ljava/lang/Object;

    .line 1152
    .line 1153
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
    sget-object p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr;->OBJECTS:[[Ljava/lang/Object;

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
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 15
    .line 16
    const-string v0, "Minute"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "minutu"

    .line 22
    .line 23
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "minute"

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "minuta"

    .line 34
    .line 35
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_0
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Hour;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 49
    .line 50
    const-string v0, "Hour"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "sat"

    .line 56
    .line 57
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v0, "sata"

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "sati"

    .line 68
    .line 69
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_1
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Day;

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 83
    .line 84
    const-string v0, "Day"

    .line 85
    .line 86
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v0, "dan"

    .line 90
    .line 91
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v0, "dana"

    .line 96
    .line 97
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :cond_2
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Week;

    .line 111
    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 115
    .line 116
    const-string v0, "Week"

    .line 117
    .line 118
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string/jumbo v0, "tjedan"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string/jumbo v0, "tjedna"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const-string/jumbo v0, "tjedana"

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :cond_3
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Month;

    .line 148
    .line 149
    if-eqz v0, :cond_4

    .line 150
    .line 151
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 152
    .line 153
    const-string v0, "Month"

    .line 154
    .line 155
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string v0, "mjesec"

    .line 159
    .line 160
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const-string v0, "mjeseca"

    .line 165
    .line 166
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const-string v0, "mjeseci"

    .line 171
    .line 172
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    return-object p0

    .line 181
    :cond_4
    instance-of v0, p1, Lorg/ocpsoft/prettytime/units/Year;

    .line 182
    .line 183
    if-eqz v0, :cond_5

    .line 184
    .line 185
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 186
    .line 187
    const-string v0, "Year"

    .line 188
    .line 189
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string v0, "godinu"

    .line 193
    .line 194
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    const-string v0, "godine"

    .line 199
    .line 200
    invoke-virtual {p1, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    const-string v0, "godina"

    .line 205
    .line 206
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    return-object p0

    .line 215
    :cond_5
    instance-of p1, p1, Lorg/ocpsoft/prettytime/units/Millennium;

    .line 216
    .line 217
    if-eqz p1, :cond_6

    .line 218
    .line 219
    new-instance p1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 220
    .line 221
    const-string v0, "Millennium"

    .line 222
    .line 223
    invoke-direct {p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string/jumbo v0, "tisu\u0107lje\u0107e"

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v0, v5, v6}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    const-string/jumbo v0, "tisu\u0107lje\u0107a"

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v0, v3, v4}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->addNames(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormatBuilder;->build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrTimeFormat;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    return-object p0

    .line 245
    :cond_6
    const/4 p0, 0x0

    .line 246
    return-object p0
.end method

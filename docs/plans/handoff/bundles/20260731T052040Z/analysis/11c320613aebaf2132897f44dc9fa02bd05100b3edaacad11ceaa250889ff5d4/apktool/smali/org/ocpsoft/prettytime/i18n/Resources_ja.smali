.class public Lorg/ocpsoft/prettytime/i18n/Resources_ja;
.super Ljava/util/ListResourceBundle;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;
    }
.end annotation


# static fields
.field private static final OBJECTS:[[Ljava/lang/Object;


# instance fields
.field private final formatMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/ocpsoft/prettytime/TimeUnit;",
            "Lorg/ocpsoft/prettytime/TimeFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$mjwPKgl3KhzMQOD_jIUCyqzHL5Q(Lorg/ocpsoft/prettytime/i18n/Resources_ja;Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_ja;->lambda$getFormatFor$0(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 13

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
    const-string v5, "%n%u"

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
    const-string/jumbo v6, "\u4eca\u304b\u3089"

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
    const-string/jumbo v7, "\u5f8c"

    .line 40
    .line 41
    .line 42
    aput-object v7, v2, v4

    .line 43
    .line 44
    aput-object v2, v0, v1

    .line 45
    .line 46
    new-array v2, v1, [Ljava/lang/Object;

    .line 47
    .line 48
    const-string v8, "CenturyPastPrefix"

    .line 49
    .line 50
    aput-object v8, v2, v3

    .line 51
    .line 52
    const-string v8, ""

    .line 53
    .line 54
    aput-object v8, v2, v4

    .line 55
    .line 56
    const/4 v9, 0x3

    .line 57
    aput-object v2, v0, v9

    .line 58
    .line 59
    new-array v2, v1, [Ljava/lang/Object;

    .line 60
    .line 61
    const-string v9, "CenturyPastSuffix"

    .line 62
    .line 63
    aput-object v9, v2, v3

    .line 64
    .line 65
    const-string/jumbo v9, "\u524d"

    .line 66
    .line 67
    .line 68
    aput-object v9, v2, v4

    .line 69
    .line 70
    const/4 v10, 0x4

    .line 71
    aput-object v2, v0, v10

    .line 72
    .line 73
    new-array v2, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    const-string v10, "CenturySingularName"

    .line 76
    .line 77
    aput-object v10, v2, v3

    .line 78
    .line 79
    const-string/jumbo v10, "\u4e16\u7d00"

    .line 80
    .line 81
    .line 82
    aput-object v10, v2, v4

    .line 83
    .line 84
    const/4 v11, 0x5

    .line 85
    aput-object v2, v0, v11

    .line 86
    .line 87
    new-array v2, v1, [Ljava/lang/Object;

    .line 88
    .line 89
    const-string v11, "CenturyPluralName"

    .line 90
    .line 91
    aput-object v11, v2, v3

    .line 92
    .line 93
    aput-object v10, v2, v4

    .line 94
    .line 95
    const/4 v10, 0x6

    .line 96
    aput-object v2, v0, v10

    .line 97
    .line 98
    new-array v2, v1, [Ljava/lang/Object;

    .line 99
    .line 100
    const-string v10, "DayPattern"

    .line 101
    .line 102
    aput-object v10, v2, v3

    .line 103
    .line 104
    aput-object v5, v2, v4

    .line 105
    .line 106
    const/4 v10, 0x7

    .line 107
    aput-object v2, v0, v10

    .line 108
    .line 109
    new-array v2, v1, [Ljava/lang/Object;

    .line 110
    .line 111
    const-string v10, "DayFuturePrefix"

    .line 112
    .line 113
    aput-object v10, v2, v3

    .line 114
    .line 115
    aput-object v6, v2, v4

    .line 116
    .line 117
    const/16 v10, 0x8

    .line 118
    .line 119
    aput-object v2, v0, v10

    .line 120
    .line 121
    new-array v2, v1, [Ljava/lang/Object;

    .line 122
    .line 123
    const-string v10, "DayFutureSuffix"

    .line 124
    .line 125
    aput-object v10, v2, v3

    .line 126
    .line 127
    aput-object v7, v2, v4

    .line 128
    .line 129
    const/16 v10, 0x9

    .line 130
    .line 131
    aput-object v2, v0, v10

    .line 132
    .line 133
    new-array v2, v1, [Ljava/lang/Object;

    .line 134
    .line 135
    const-string v10, "DayPastPrefix"

    .line 136
    .line 137
    aput-object v10, v2, v3

    .line 138
    .line 139
    aput-object v8, v2, v4

    .line 140
    .line 141
    const/16 v10, 0xa

    .line 142
    .line 143
    aput-object v2, v0, v10

    .line 144
    .line 145
    new-array v2, v1, [Ljava/lang/Object;

    .line 146
    .line 147
    const-string v10, "DayPastSuffix"

    .line 148
    .line 149
    aput-object v10, v2, v3

    .line 150
    .line 151
    aput-object v9, v2, v4

    .line 152
    .line 153
    const/16 v10, 0xb

    .line 154
    .line 155
    aput-object v2, v0, v10

    .line 156
    .line 157
    new-array v2, v1, [Ljava/lang/Object;

    .line 158
    .line 159
    const-string v10, "DaySingularName"

    .line 160
    .line 161
    aput-object v10, v2, v3

    .line 162
    .line 163
    const-string/jumbo v10, "\u65e5"

    .line 164
    .line 165
    .line 166
    aput-object v10, v2, v4

    .line 167
    .line 168
    const/16 v11, 0xc

    .line 169
    .line 170
    aput-object v2, v0, v11

    .line 171
    .line 172
    new-array v2, v1, [Ljava/lang/Object;

    .line 173
    .line 174
    const-string v11, "DayPluralName"

    .line 175
    .line 176
    aput-object v11, v2, v3

    .line 177
    .line 178
    aput-object v10, v2, v4

    .line 179
    .line 180
    const/16 v10, 0xd

    .line 181
    .line 182
    aput-object v2, v0, v10

    .line 183
    .line 184
    new-array v2, v1, [Ljava/lang/Object;

    .line 185
    .line 186
    const-string v10, "DecadePattern"

    .line 187
    .line 188
    aput-object v10, v2, v3

    .line 189
    .line 190
    aput-object v5, v2, v4

    .line 191
    .line 192
    const/16 v10, 0xe

    .line 193
    .line 194
    aput-object v2, v0, v10

    .line 195
    .line 196
    new-array v2, v1, [Ljava/lang/Object;

    .line 197
    .line 198
    const-string v10, "DecadeFuturePrefix"

    .line 199
    .line 200
    aput-object v10, v2, v3

    .line 201
    .line 202
    aput-object v6, v2, v4

    .line 203
    .line 204
    const/16 v10, 0xf

    .line 205
    .line 206
    aput-object v2, v0, v10

    .line 207
    .line 208
    new-array v2, v1, [Ljava/lang/Object;

    .line 209
    .line 210
    const-string v10, "DecadeFutureSuffix"

    .line 211
    .line 212
    aput-object v10, v2, v3

    .line 213
    .line 214
    aput-object v7, v2, v4

    .line 215
    .line 216
    const/16 v10, 0x10

    .line 217
    .line 218
    aput-object v2, v0, v10

    .line 219
    .line 220
    new-array v2, v1, [Ljava/lang/Object;

    .line 221
    .line 222
    const-string v10, "DecadePastPrefix"

    .line 223
    .line 224
    aput-object v10, v2, v3

    .line 225
    .line 226
    aput-object v8, v2, v4

    .line 227
    .line 228
    const/16 v10, 0x11

    .line 229
    .line 230
    aput-object v2, v0, v10

    .line 231
    .line 232
    new-array v2, v1, [Ljava/lang/Object;

    .line 233
    .line 234
    const-string v10, "DecadePastSuffix"

    .line 235
    .line 236
    aput-object v10, v2, v3

    .line 237
    .line 238
    aput-object v9, v2, v4

    .line 239
    .line 240
    const/16 v10, 0x12

    .line 241
    .line 242
    aput-object v2, v0, v10

    .line 243
    .line 244
    new-array v2, v1, [Ljava/lang/Object;

    .line 245
    .line 246
    const-string v10, "DecadeSingularName"

    .line 247
    .line 248
    aput-object v10, v2, v3

    .line 249
    .line 250
    const-string/jumbo v10, "\u5e74"

    .line 251
    .line 252
    .line 253
    aput-object v10, v2, v4

    .line 254
    .line 255
    const/16 v11, 0x13

    .line 256
    .line 257
    aput-object v2, v0, v11

    .line 258
    .line 259
    new-array v2, v1, [Ljava/lang/Object;

    .line 260
    .line 261
    const-string v11, "DecadePluralName"

    .line 262
    .line 263
    aput-object v11, v2, v3

    .line 264
    .line 265
    aput-object v10, v2, v4

    .line 266
    .line 267
    const/16 v11, 0x14

    .line 268
    .line 269
    aput-object v2, v0, v11

    .line 270
    .line 271
    new-array v2, v1, [Ljava/lang/Object;

    .line 272
    .line 273
    const-string v11, "HourPattern"

    .line 274
    .line 275
    aput-object v11, v2, v3

    .line 276
    .line 277
    aput-object v5, v2, v4

    .line 278
    .line 279
    const/16 v11, 0x15

    .line 280
    .line 281
    aput-object v2, v0, v11

    .line 282
    .line 283
    new-array v2, v1, [Ljava/lang/Object;

    .line 284
    .line 285
    const-string v11, "HourFuturePrefix"

    .line 286
    .line 287
    aput-object v11, v2, v3

    .line 288
    .line 289
    aput-object v6, v2, v4

    .line 290
    .line 291
    const/16 v11, 0x16

    .line 292
    .line 293
    aput-object v2, v0, v11

    .line 294
    .line 295
    new-array v2, v1, [Ljava/lang/Object;

    .line 296
    .line 297
    const-string v11, "HourFutureSuffix"

    .line 298
    .line 299
    aput-object v11, v2, v3

    .line 300
    .line 301
    aput-object v7, v2, v4

    .line 302
    .line 303
    const/16 v11, 0x17

    .line 304
    .line 305
    aput-object v2, v0, v11

    .line 306
    .line 307
    new-array v2, v1, [Ljava/lang/Object;

    .line 308
    .line 309
    const-string v11, "HourPastPrefix"

    .line 310
    .line 311
    aput-object v11, v2, v3

    .line 312
    .line 313
    aput-object v8, v2, v4

    .line 314
    .line 315
    const/16 v11, 0x18

    .line 316
    .line 317
    aput-object v2, v0, v11

    .line 318
    .line 319
    new-array v2, v1, [Ljava/lang/Object;

    .line 320
    .line 321
    const-string v11, "HourPastSuffix"

    .line 322
    .line 323
    aput-object v11, v2, v3

    .line 324
    .line 325
    aput-object v9, v2, v4

    .line 326
    .line 327
    const/16 v11, 0x19

    .line 328
    .line 329
    aput-object v2, v0, v11

    .line 330
    .line 331
    new-array v2, v1, [Ljava/lang/Object;

    .line 332
    .line 333
    const-string v11, "HourSingularName"

    .line 334
    .line 335
    aput-object v11, v2, v3

    .line 336
    .line 337
    const-string/jumbo v11, "\u6642\u9593"

    .line 338
    .line 339
    .line 340
    aput-object v11, v2, v4

    .line 341
    .line 342
    const/16 v12, 0x1a

    .line 343
    .line 344
    aput-object v2, v0, v12

    .line 345
    .line 346
    new-array v2, v1, [Ljava/lang/Object;

    .line 347
    .line 348
    const-string v12, "HourPluralName"

    .line 349
    .line 350
    aput-object v12, v2, v3

    .line 351
    .line 352
    aput-object v11, v2, v4

    .line 353
    .line 354
    const/16 v11, 0x1b

    .line 355
    .line 356
    aput-object v2, v0, v11

    .line 357
    .line 358
    new-array v2, v1, [Ljava/lang/Object;

    .line 359
    .line 360
    const-string v11, "JustNowPattern"

    .line 361
    .line 362
    aput-object v11, v2, v3

    .line 363
    .line 364
    const-string v11, "%u"

    .line 365
    .line 366
    aput-object v11, v2, v4

    .line 367
    .line 368
    const/16 v11, 0x1c

    .line 369
    .line 370
    aput-object v2, v0, v11

    .line 371
    .line 372
    new-array v2, v1, [Ljava/lang/Object;

    .line 373
    .line 374
    const-string v11, "JustNowFuturePrefix"

    .line 375
    .line 376
    aput-object v11, v2, v3

    .line 377
    .line 378
    aput-object v6, v2, v4

    .line 379
    .line 380
    const/16 v11, 0x1d

    .line 381
    .line 382
    aput-object v2, v0, v11

    .line 383
    .line 384
    new-array v2, v1, [Ljava/lang/Object;

    .line 385
    .line 386
    const-string v11, "JustNowFutureSuffix"

    .line 387
    .line 388
    aput-object v11, v2, v3

    .line 389
    .line 390
    const-string/jumbo v11, "\u3059\u3050"

    .line 391
    .line 392
    .line 393
    aput-object v11, v2, v4

    .line 394
    .line 395
    const/16 v11, 0x1e

    .line 396
    .line 397
    aput-object v2, v0, v11

    .line 398
    .line 399
    new-array v2, v1, [Ljava/lang/Object;

    .line 400
    .line 401
    const-string v11, "JustNowPastPrefix"

    .line 402
    .line 403
    aput-object v11, v2, v3

    .line 404
    .line 405
    aput-object v8, v2, v4

    .line 406
    .line 407
    const/16 v11, 0x1f

    .line 408
    .line 409
    aput-object v2, v0, v11

    .line 410
    .line 411
    new-array v2, v1, [Ljava/lang/Object;

    .line 412
    .line 413
    const-string v11, "JustNowPastSuffix"

    .line 414
    .line 415
    aput-object v11, v2, v3

    .line 416
    .line 417
    const-string/jumbo v11, "\u305f\u3063\u305f\u4eca"

    .line 418
    .line 419
    .line 420
    aput-object v11, v2, v4

    .line 421
    .line 422
    const/16 v11, 0x20

    .line 423
    .line 424
    aput-object v2, v0, v11

    .line 425
    .line 426
    new-array v2, v1, [Ljava/lang/Object;

    .line 427
    .line 428
    const-string v11, "JustNowSingularName"

    .line 429
    .line 430
    aput-object v11, v2, v3

    .line 431
    .line 432
    aput-object v8, v2, v4

    .line 433
    .line 434
    const/16 v11, 0x21

    .line 435
    .line 436
    aput-object v2, v0, v11

    .line 437
    .line 438
    new-array v2, v1, [Ljava/lang/Object;

    .line 439
    .line 440
    const-string v11, "JustNowPluralName"

    .line 441
    .line 442
    aput-object v11, v2, v3

    .line 443
    .line 444
    aput-object v8, v2, v4

    .line 445
    .line 446
    const/16 v11, 0x22

    .line 447
    .line 448
    aput-object v2, v0, v11

    .line 449
    .line 450
    new-array v2, v1, [Ljava/lang/Object;

    .line 451
    .line 452
    const-string v11, "MillenniumPattern"

    .line 453
    .line 454
    aput-object v11, v2, v3

    .line 455
    .line 456
    aput-object v5, v2, v4

    .line 457
    .line 458
    const/16 v11, 0x23

    .line 459
    .line 460
    aput-object v2, v0, v11

    .line 461
    .line 462
    new-array v2, v1, [Ljava/lang/Object;

    .line 463
    .line 464
    const-string v11, "MillenniumFuturePrefix"

    .line 465
    .line 466
    aput-object v11, v2, v3

    .line 467
    .line 468
    aput-object v6, v2, v4

    .line 469
    .line 470
    const/16 v11, 0x24

    .line 471
    .line 472
    aput-object v2, v0, v11

    .line 473
    .line 474
    new-array v2, v1, [Ljava/lang/Object;

    .line 475
    .line 476
    const-string v11, "MillenniumFutureSuffix"

    .line 477
    .line 478
    aput-object v11, v2, v3

    .line 479
    .line 480
    aput-object v7, v2, v4

    .line 481
    .line 482
    const/16 v11, 0x25

    .line 483
    .line 484
    aput-object v2, v0, v11

    .line 485
    .line 486
    new-array v2, v1, [Ljava/lang/Object;

    .line 487
    .line 488
    const-string v11, "MillenniumPastPrefix"

    .line 489
    .line 490
    aput-object v11, v2, v3

    .line 491
    .line 492
    aput-object v8, v2, v4

    .line 493
    .line 494
    const/16 v11, 0x26

    .line 495
    .line 496
    aput-object v2, v0, v11

    .line 497
    .line 498
    new-array v2, v1, [Ljava/lang/Object;

    .line 499
    .line 500
    const-string v11, "MillenniumPastSuffix"

    .line 501
    .line 502
    aput-object v11, v2, v3

    .line 503
    .line 504
    aput-object v9, v2, v4

    .line 505
    .line 506
    const/16 v11, 0x27

    .line 507
    .line 508
    aput-object v2, v0, v11

    .line 509
    .line 510
    new-array v2, v1, [Ljava/lang/Object;

    .line 511
    .line 512
    const-string v11, "MillenniumSingularName"

    .line 513
    .line 514
    aput-object v11, v2, v3

    .line 515
    .line 516
    aput-object v10, v2, v4

    .line 517
    .line 518
    const/16 v11, 0x28

    .line 519
    .line 520
    aput-object v2, v0, v11

    .line 521
    .line 522
    new-array v2, v1, [Ljava/lang/Object;

    .line 523
    .line 524
    const-string v11, "MillenniumPluralName"

    .line 525
    .line 526
    aput-object v11, v2, v3

    .line 527
    .line 528
    aput-object v10, v2, v4

    .line 529
    .line 530
    const/16 v11, 0x29

    .line 531
    .line 532
    aput-object v2, v0, v11

    .line 533
    .line 534
    new-array v2, v1, [Ljava/lang/Object;

    .line 535
    .line 536
    const-string v11, "MillisecondPattern"

    .line 537
    .line 538
    aput-object v11, v2, v3

    .line 539
    .line 540
    aput-object v5, v2, v4

    .line 541
    .line 542
    const/16 v11, 0x2a

    .line 543
    .line 544
    aput-object v2, v0, v11

    .line 545
    .line 546
    new-array v2, v1, [Ljava/lang/Object;

    .line 547
    .line 548
    const-string v11, "MillisecondFuturePrefix"

    .line 549
    .line 550
    aput-object v11, v2, v3

    .line 551
    .line 552
    aput-object v6, v2, v4

    .line 553
    .line 554
    const/16 v11, 0x2b

    .line 555
    .line 556
    aput-object v2, v0, v11

    .line 557
    .line 558
    new-array v2, v1, [Ljava/lang/Object;

    .line 559
    .line 560
    const-string v11, "MillisecondFutureSuffix"

    .line 561
    .line 562
    aput-object v11, v2, v3

    .line 563
    .line 564
    aput-object v7, v2, v4

    .line 565
    .line 566
    const/16 v11, 0x2c

    .line 567
    .line 568
    aput-object v2, v0, v11

    .line 569
    .line 570
    new-array v2, v1, [Ljava/lang/Object;

    .line 571
    .line 572
    const-string v11, "MillisecondPastPrefix"

    .line 573
    .line 574
    aput-object v11, v2, v3

    .line 575
    .line 576
    aput-object v8, v2, v4

    .line 577
    .line 578
    const/16 v11, 0x2d

    .line 579
    .line 580
    aput-object v2, v0, v11

    .line 581
    .line 582
    new-array v2, v1, [Ljava/lang/Object;

    .line 583
    .line 584
    const-string v11, "MillisecondPastSuffix"

    .line 585
    .line 586
    aput-object v11, v2, v3

    .line 587
    .line 588
    aput-object v9, v2, v4

    .line 589
    .line 590
    const/16 v11, 0x2e

    .line 591
    .line 592
    aput-object v2, v0, v11

    .line 593
    .line 594
    new-array v2, v1, [Ljava/lang/Object;

    .line 595
    .line 596
    const-string v11, "MillisecondSingularName"

    .line 597
    .line 598
    aput-object v11, v2, v3

    .line 599
    .line 600
    const-string/jumbo v11, "\u30df\u30ea\u79d2"

    .line 601
    .line 602
    .line 603
    aput-object v11, v2, v4

    .line 604
    .line 605
    const/16 v12, 0x2f

    .line 606
    .line 607
    aput-object v2, v0, v12

    .line 608
    .line 609
    new-array v2, v1, [Ljava/lang/Object;

    .line 610
    .line 611
    const-string v12, "MillisecondPluralName"

    .line 612
    .line 613
    aput-object v12, v2, v3

    .line 614
    .line 615
    aput-object v11, v2, v4

    .line 616
    .line 617
    const/16 v11, 0x30

    .line 618
    .line 619
    aput-object v2, v0, v11

    .line 620
    .line 621
    new-array v2, v1, [Ljava/lang/Object;

    .line 622
    .line 623
    const-string v11, "MinutePattern"

    .line 624
    .line 625
    aput-object v11, v2, v3

    .line 626
    .line 627
    aput-object v5, v2, v4

    .line 628
    .line 629
    const/16 v11, 0x31

    .line 630
    .line 631
    aput-object v2, v0, v11

    .line 632
    .line 633
    new-array v2, v1, [Ljava/lang/Object;

    .line 634
    .line 635
    const-string v11, "MinuteFuturePrefix"

    .line 636
    .line 637
    aput-object v11, v2, v3

    .line 638
    .line 639
    aput-object v6, v2, v4

    .line 640
    .line 641
    const/16 v11, 0x32

    .line 642
    .line 643
    aput-object v2, v0, v11

    .line 644
    .line 645
    new-array v2, v1, [Ljava/lang/Object;

    .line 646
    .line 647
    const-string v11, "MinuteFutureSuffix"

    .line 648
    .line 649
    aput-object v11, v2, v3

    .line 650
    .line 651
    aput-object v7, v2, v4

    .line 652
    .line 653
    const/16 v11, 0x33

    .line 654
    .line 655
    aput-object v2, v0, v11

    .line 656
    .line 657
    new-array v2, v1, [Ljava/lang/Object;

    .line 658
    .line 659
    const-string v11, "MinutePastPrefix"

    .line 660
    .line 661
    aput-object v11, v2, v3

    .line 662
    .line 663
    aput-object v8, v2, v4

    .line 664
    .line 665
    const/16 v11, 0x34

    .line 666
    .line 667
    aput-object v2, v0, v11

    .line 668
    .line 669
    new-array v2, v1, [Ljava/lang/Object;

    .line 670
    .line 671
    const-string v11, "MinutePastSuffix"

    .line 672
    .line 673
    aput-object v11, v2, v3

    .line 674
    .line 675
    aput-object v9, v2, v4

    .line 676
    .line 677
    const/16 v11, 0x35

    .line 678
    .line 679
    aput-object v2, v0, v11

    .line 680
    .line 681
    new-array v2, v1, [Ljava/lang/Object;

    .line 682
    .line 683
    const-string v11, "MinuteSingularName"

    .line 684
    .line 685
    aput-object v11, v2, v3

    .line 686
    .line 687
    const-string/jumbo v11, "\u5206"

    .line 688
    .line 689
    .line 690
    aput-object v11, v2, v4

    .line 691
    .line 692
    const/16 v12, 0x36

    .line 693
    .line 694
    aput-object v2, v0, v12

    .line 695
    .line 696
    new-array v2, v1, [Ljava/lang/Object;

    .line 697
    .line 698
    const-string v12, "MinutePluralName"

    .line 699
    .line 700
    aput-object v12, v2, v3

    .line 701
    .line 702
    aput-object v11, v2, v4

    .line 703
    .line 704
    const/16 v11, 0x37

    .line 705
    .line 706
    aput-object v2, v0, v11

    .line 707
    .line 708
    new-array v2, v1, [Ljava/lang/Object;

    .line 709
    .line 710
    const-string v11, "MonthPattern"

    .line 711
    .line 712
    aput-object v11, v2, v3

    .line 713
    .line 714
    aput-object v5, v2, v4

    .line 715
    .line 716
    const/16 v11, 0x38

    .line 717
    .line 718
    aput-object v2, v0, v11

    .line 719
    .line 720
    new-array v2, v1, [Ljava/lang/Object;

    .line 721
    .line 722
    const-string v11, "MonthFuturePrefix"

    .line 723
    .line 724
    aput-object v11, v2, v3

    .line 725
    .line 726
    aput-object v6, v2, v4

    .line 727
    .line 728
    const/16 v11, 0x39

    .line 729
    .line 730
    aput-object v2, v0, v11

    .line 731
    .line 732
    new-array v2, v1, [Ljava/lang/Object;

    .line 733
    .line 734
    const-string v11, "MonthFutureSuffix"

    .line 735
    .line 736
    aput-object v11, v2, v3

    .line 737
    .line 738
    aput-object v7, v2, v4

    .line 739
    .line 740
    const/16 v11, 0x3a

    .line 741
    .line 742
    aput-object v2, v0, v11

    .line 743
    .line 744
    new-array v2, v1, [Ljava/lang/Object;

    .line 745
    .line 746
    const-string v11, "MonthPastPrefix"

    .line 747
    .line 748
    aput-object v11, v2, v3

    .line 749
    .line 750
    aput-object v8, v2, v4

    .line 751
    .line 752
    const/16 v11, 0x3b

    .line 753
    .line 754
    aput-object v2, v0, v11

    .line 755
    .line 756
    new-array v2, v1, [Ljava/lang/Object;

    .line 757
    .line 758
    const-string v11, "MonthPastSuffix"

    .line 759
    .line 760
    aput-object v11, v2, v3

    .line 761
    .line 762
    aput-object v9, v2, v4

    .line 763
    .line 764
    const/16 v11, 0x3c

    .line 765
    .line 766
    aput-object v2, v0, v11

    .line 767
    .line 768
    new-array v2, v1, [Ljava/lang/Object;

    .line 769
    .line 770
    const-string v11, "MonthSingularName"

    .line 771
    .line 772
    aput-object v11, v2, v3

    .line 773
    .line 774
    const-string/jumbo v11, "\u30f6\u6708"

    .line 775
    .line 776
    .line 777
    aput-object v11, v2, v4

    .line 778
    .line 779
    const/16 v12, 0x3d

    .line 780
    .line 781
    aput-object v2, v0, v12

    .line 782
    .line 783
    new-array v2, v1, [Ljava/lang/Object;

    .line 784
    .line 785
    const-string v12, "MonthPluralName"

    .line 786
    .line 787
    aput-object v12, v2, v3

    .line 788
    .line 789
    aput-object v11, v2, v4

    .line 790
    .line 791
    const/16 v11, 0x3e

    .line 792
    .line 793
    aput-object v2, v0, v11

    .line 794
    .line 795
    new-array v2, v1, [Ljava/lang/Object;

    .line 796
    .line 797
    const-string v11, "SecondPattern"

    .line 798
    .line 799
    aput-object v11, v2, v3

    .line 800
    .line 801
    aput-object v5, v2, v4

    .line 802
    .line 803
    const/16 v11, 0x3f

    .line 804
    .line 805
    aput-object v2, v0, v11

    .line 806
    .line 807
    new-array v2, v1, [Ljava/lang/Object;

    .line 808
    .line 809
    const-string v11, "SecondFuturePrefix"

    .line 810
    .line 811
    aput-object v11, v2, v3

    .line 812
    .line 813
    aput-object v6, v2, v4

    .line 814
    .line 815
    const/16 v11, 0x40

    .line 816
    .line 817
    aput-object v2, v0, v11

    .line 818
    .line 819
    new-array v2, v1, [Ljava/lang/Object;

    .line 820
    .line 821
    const-string v11, "SecondFutureSuffix"

    .line 822
    .line 823
    aput-object v11, v2, v3

    .line 824
    .line 825
    aput-object v7, v2, v4

    .line 826
    .line 827
    const/16 v11, 0x41

    .line 828
    .line 829
    aput-object v2, v0, v11

    .line 830
    .line 831
    new-array v2, v1, [Ljava/lang/Object;

    .line 832
    .line 833
    const-string v11, "SecondPastPrefix"

    .line 834
    .line 835
    aput-object v11, v2, v3

    .line 836
    .line 837
    aput-object v8, v2, v4

    .line 838
    .line 839
    const/16 v11, 0x42

    .line 840
    .line 841
    aput-object v2, v0, v11

    .line 842
    .line 843
    new-array v2, v1, [Ljava/lang/Object;

    .line 844
    .line 845
    const-string v11, "SecondPastSuffix"

    .line 846
    .line 847
    aput-object v11, v2, v3

    .line 848
    .line 849
    aput-object v9, v2, v4

    .line 850
    .line 851
    const/16 v11, 0x43

    .line 852
    .line 853
    aput-object v2, v0, v11

    .line 854
    .line 855
    new-array v2, v1, [Ljava/lang/Object;

    .line 856
    .line 857
    const-string v11, "SecondSingularName"

    .line 858
    .line 859
    aput-object v11, v2, v3

    .line 860
    .line 861
    const-string/jumbo v11, "\u79d2"

    .line 862
    .line 863
    .line 864
    aput-object v11, v2, v4

    .line 865
    .line 866
    const/16 v12, 0x44

    .line 867
    .line 868
    aput-object v2, v0, v12

    .line 869
    .line 870
    new-array v2, v1, [Ljava/lang/Object;

    .line 871
    .line 872
    const-string v12, "SecondPluralName"

    .line 873
    .line 874
    aput-object v12, v2, v3

    .line 875
    .line 876
    aput-object v11, v2, v4

    .line 877
    .line 878
    const/16 v11, 0x45

    .line 879
    .line 880
    aput-object v2, v0, v11

    .line 881
    .line 882
    new-array v2, v1, [Ljava/lang/Object;

    .line 883
    .line 884
    const-string v11, "WeekPattern"

    .line 885
    .line 886
    aput-object v11, v2, v3

    .line 887
    .line 888
    aput-object v5, v2, v4

    .line 889
    .line 890
    const/16 v11, 0x46

    .line 891
    .line 892
    aput-object v2, v0, v11

    .line 893
    .line 894
    new-array v2, v1, [Ljava/lang/Object;

    .line 895
    .line 896
    const-string v11, "WeekFuturePrefix"

    .line 897
    .line 898
    aput-object v11, v2, v3

    .line 899
    .line 900
    aput-object v6, v2, v4

    .line 901
    .line 902
    const/16 v11, 0x47

    .line 903
    .line 904
    aput-object v2, v0, v11

    .line 905
    .line 906
    new-array v2, v1, [Ljava/lang/Object;

    .line 907
    .line 908
    const-string v11, "WeekFutureSuffix"

    .line 909
    .line 910
    aput-object v11, v2, v3

    .line 911
    .line 912
    aput-object v7, v2, v4

    .line 913
    .line 914
    const/16 v11, 0x48

    .line 915
    .line 916
    aput-object v2, v0, v11

    .line 917
    .line 918
    new-array v2, v1, [Ljava/lang/Object;

    .line 919
    .line 920
    const-string v11, "WeekPastPrefix"

    .line 921
    .line 922
    aput-object v11, v2, v3

    .line 923
    .line 924
    aput-object v8, v2, v4

    .line 925
    .line 926
    const/16 v11, 0x49

    .line 927
    .line 928
    aput-object v2, v0, v11

    .line 929
    .line 930
    new-array v2, v1, [Ljava/lang/Object;

    .line 931
    .line 932
    const-string v11, "WeekPastSuffix"

    .line 933
    .line 934
    aput-object v11, v2, v3

    .line 935
    .line 936
    aput-object v9, v2, v4

    .line 937
    .line 938
    const/16 v11, 0x4a

    .line 939
    .line 940
    aput-object v2, v0, v11

    .line 941
    .line 942
    new-array v2, v1, [Ljava/lang/Object;

    .line 943
    .line 944
    const-string v11, "WeekSingularName"

    .line 945
    .line 946
    aput-object v11, v2, v3

    .line 947
    .line 948
    const-string/jumbo v11, "\u9031\u9593"

    .line 949
    .line 950
    .line 951
    aput-object v11, v2, v4

    .line 952
    .line 953
    const/16 v12, 0x4b

    .line 954
    .line 955
    aput-object v2, v0, v12

    .line 956
    .line 957
    new-array v2, v1, [Ljava/lang/Object;

    .line 958
    .line 959
    const-string v12, "WeekPluralName"

    .line 960
    .line 961
    aput-object v12, v2, v3

    .line 962
    .line 963
    aput-object v11, v2, v4

    .line 964
    .line 965
    const/16 v11, 0x4c

    .line 966
    .line 967
    aput-object v2, v0, v11

    .line 968
    .line 969
    new-array v2, v1, [Ljava/lang/Object;

    .line 970
    .line 971
    const-string v11, "YearPattern"

    .line 972
    .line 973
    aput-object v11, v2, v3

    .line 974
    .line 975
    aput-object v5, v2, v4

    .line 976
    .line 977
    const/16 v5, 0x4d

    .line 978
    .line 979
    aput-object v2, v0, v5

    .line 980
    .line 981
    new-array v2, v1, [Ljava/lang/Object;

    .line 982
    .line 983
    const-string v5, "YearFuturePrefix"

    .line 984
    .line 985
    aput-object v5, v2, v3

    .line 986
    .line 987
    aput-object v6, v2, v4

    .line 988
    .line 989
    const/16 v5, 0x4e

    .line 990
    .line 991
    aput-object v2, v0, v5

    .line 992
    .line 993
    new-array v2, v1, [Ljava/lang/Object;

    .line 994
    .line 995
    const-string v5, "YearFutureSuffix"

    .line 996
    .line 997
    aput-object v5, v2, v3

    .line 998
    .line 999
    aput-object v7, v2, v4

    .line 1000
    .line 1001
    const/16 v5, 0x4f

    .line 1002
    .line 1003
    aput-object v2, v0, v5

    .line 1004
    .line 1005
    new-array v2, v1, [Ljava/lang/Object;

    .line 1006
    .line 1007
    const-string v5, "YearPastPrefix"

    .line 1008
    .line 1009
    aput-object v5, v2, v3

    .line 1010
    .line 1011
    aput-object v8, v2, v4

    .line 1012
    .line 1013
    const/16 v5, 0x50

    .line 1014
    .line 1015
    aput-object v2, v0, v5

    .line 1016
    .line 1017
    new-array v2, v1, [Ljava/lang/Object;

    .line 1018
    .line 1019
    const-string v5, "YearPastSuffix"

    .line 1020
    .line 1021
    aput-object v5, v2, v3

    .line 1022
    .line 1023
    aput-object v9, v2, v4

    .line 1024
    .line 1025
    const/16 v5, 0x51

    .line 1026
    .line 1027
    aput-object v2, v0, v5

    .line 1028
    .line 1029
    new-array v2, v1, [Ljava/lang/Object;

    .line 1030
    .line 1031
    const-string v5, "YearSingularName"

    .line 1032
    .line 1033
    aput-object v5, v2, v3

    .line 1034
    .line 1035
    aput-object v10, v2, v4

    .line 1036
    .line 1037
    const/16 v5, 0x52

    .line 1038
    .line 1039
    aput-object v2, v0, v5

    .line 1040
    .line 1041
    new-array v2, v1, [Ljava/lang/Object;

    .line 1042
    .line 1043
    const-string v5, "YearPluralName"

    .line 1044
    .line 1045
    aput-object v5, v2, v3

    .line 1046
    .line 1047
    aput-object v10, v2, v4

    .line 1048
    .line 1049
    const/16 v5, 0x53

    .line 1050
    .line 1051
    aput-object v2, v0, v5

    .line 1052
    .line 1053
    new-array v2, v1, [Ljava/lang/Object;

    .line 1054
    .line 1055
    const-string v5, "AbstractTimeUnitPattern"

    .line 1056
    .line 1057
    aput-object v5, v2, v3

    .line 1058
    .line 1059
    aput-object v8, v2, v4

    .line 1060
    .line 1061
    const/16 v5, 0x54

    .line 1062
    .line 1063
    aput-object v2, v0, v5

    .line 1064
    .line 1065
    new-array v2, v1, [Ljava/lang/Object;

    .line 1066
    .line 1067
    const-string v5, "AbstractTimeUnitFuturePrefix"

    .line 1068
    .line 1069
    aput-object v5, v2, v3

    .line 1070
    .line 1071
    aput-object v8, v2, v4

    .line 1072
    .line 1073
    const/16 v5, 0x55

    .line 1074
    .line 1075
    aput-object v2, v0, v5

    .line 1076
    .line 1077
    new-array v2, v1, [Ljava/lang/Object;

    .line 1078
    .line 1079
    const-string v5, "AbstractTimeUnitFutureSuffix"

    .line 1080
    .line 1081
    aput-object v5, v2, v3

    .line 1082
    .line 1083
    aput-object v8, v2, v4

    .line 1084
    .line 1085
    const/16 v5, 0x56

    .line 1086
    .line 1087
    aput-object v2, v0, v5

    .line 1088
    .line 1089
    new-array v2, v1, [Ljava/lang/Object;

    .line 1090
    .line 1091
    const-string v5, "AbstractTimeUnitPastPrefix"

    .line 1092
    .line 1093
    aput-object v5, v2, v3

    .line 1094
    .line 1095
    aput-object v8, v2, v4

    .line 1096
    .line 1097
    const/16 v5, 0x57

    .line 1098
    .line 1099
    aput-object v2, v0, v5

    .line 1100
    .line 1101
    new-array v2, v1, [Ljava/lang/Object;

    .line 1102
    .line 1103
    const-string v5, "AbstractTimeUnitPastSuffix"

    .line 1104
    .line 1105
    aput-object v5, v2, v3

    .line 1106
    .line 1107
    aput-object v8, v2, v4

    .line 1108
    .line 1109
    const/16 v5, 0x58

    .line 1110
    .line 1111
    aput-object v2, v0, v5

    .line 1112
    .line 1113
    new-array v2, v1, [Ljava/lang/Object;

    .line 1114
    .line 1115
    const-string v5, "AbstractTimeUnitSingularName"

    .line 1116
    .line 1117
    aput-object v5, v2, v3

    .line 1118
    .line 1119
    aput-object v8, v2, v4

    .line 1120
    .line 1121
    const/16 v5, 0x59

    .line 1122
    .line 1123
    aput-object v2, v0, v5

    .line 1124
    .line 1125
    new-array v1, v1, [Ljava/lang/Object;

    .line 1126
    .line 1127
    const-string v2, "AbstractTimeUnitPluralName"

    .line 1128
    .line 1129
    aput-object v2, v1, v3

    .line 1130
    .line 1131
    aput-object v8, v1, v4

    .line 1132
    .line 1133
    const/16 v2, 0x5a

    .line 1134
    .line 1135
    aput-object v1, v0, v2

    .line 1136
    .line 1137
    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_ja;->OBJECTS:[[Ljava/lang/Object;

    .line 1138
    .line 1139
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja;->formatMap:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$getFormatFor$0(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 1

    .line 1
    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_ja$JaTimeFormat;-><init>(Ljava/util/ResourceBundle;Lorg/ocpsoft/prettytime/TimeUnit;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja;->OBJECTS:[[Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ja;->formatMap:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lorg/ocpsoft/prettytime/TimeFormat;

    .line 14
    .line 15
    return-object p0
.end method

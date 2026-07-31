.class public Lorg/ocpsoft/prettytime/i18n/Resources_fi;
.super Ljava/util/ListResourceBundle;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/ocpsoft/prettytime/impl/TimeFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;
    }
.end annotation


# static fields
.field private static CONTENTS:[[Ljava/lang/Object; = null

.field private static final tolerance:I = 0x32


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
.method public static synthetic $r8$lambda$Jau-JbEaLAVXDipJ8lUjKgYC3Qo(Lorg/ocpsoft/prettytime/i18n/Resources_fi;Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->lambda$getFormatFor$0(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/16 v0, 0x54

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
    const-string v4, "JustNowPattern"

    .line 10
    .line 11
    aput-object v4, v2, v3

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const-string v5, "%u"

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
    const-string v6, "JustNowPastSingularName"

    .line 23
    .line 24
    aput-object v6, v2, v3

    .line 25
    .line 26
    const-string v6, "hetki"

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
    const-string v6, "JustNowFutureSingularName"

    .line 35
    .line 36
    aput-object v6, v2, v3

    .line 37
    .line 38
    const-string v6, "hetken"

    .line 39
    .line 40
    aput-object v6, v2, v4

    .line 41
    .line 42
    aput-object v2, v0, v1

    .line 43
    .line 44
    new-array v2, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    const-string v6, "JustNowPastSuffix"

    .line 47
    .line 48
    aput-object v6, v2, v3

    .line 49
    .line 50
    const-string/jumbo v6, "sitten"

    .line 51
    .line 52
    .line 53
    aput-object v6, v2, v4

    .line 54
    .line 55
    const/4 v7, 0x3

    .line 56
    aput-object v2, v0, v7

    .line 57
    .line 58
    new-array v2, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    const-string v7, "JustNowFutureSuffix"

    .line 61
    .line 62
    aput-object v7, v2, v3

    .line 63
    .line 64
    const-string v7, "p\u00e4\u00e4st\u00e4"

    .line 65
    .line 66
    aput-object v7, v2, v4

    .line 67
    .line 68
    const/4 v8, 0x4

    .line 69
    aput-object v2, v0, v8

    .line 70
    .line 71
    new-array v2, v1, [Ljava/lang/Object;

    .line 72
    .line 73
    const-string v8, "MillisecondPattern"

    .line 74
    .line 75
    aput-object v8, v2, v3

    .line 76
    .line 77
    aput-object v5, v2, v4

    .line 78
    .line 79
    const/4 v8, 0x5

    .line 80
    aput-object v2, v0, v8

    .line 81
    .line 82
    new-array v2, v1, [Ljava/lang/Object;

    .line 83
    .line 84
    const-string v8, "MillisecondPluralPattern"

    .line 85
    .line 86
    aput-object v8, v2, v3

    .line 87
    .line 88
    const-string v8, "%n %u"

    .line 89
    .line 90
    aput-object v8, v2, v4

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
    const-string v9, "MillisecondPastSingularName"

    .line 98
    .line 99
    aput-object v9, v2, v3

    .line 100
    .line 101
    const-string v9, "millisekunti"

    .line 102
    .line 103
    aput-object v9, v2, v4

    .line 104
    .line 105
    const/4 v9, 0x7

    .line 106
    aput-object v2, v0, v9

    .line 107
    .line 108
    new-array v2, v1, [Ljava/lang/Object;

    .line 109
    .line 110
    const-string v9, "MillisecondPastPluralName"

    .line 111
    .line 112
    aput-object v9, v2, v3

    .line 113
    .line 114
    const-string v9, "millisekuntia"

    .line 115
    .line 116
    aput-object v9, v2, v4

    .line 117
    .line 118
    const/16 v9, 0x8

    .line 119
    .line 120
    aput-object v2, v0, v9

    .line 121
    .line 122
    new-array v2, v1, [Ljava/lang/Object;

    .line 123
    .line 124
    const-string v9, "MillisecondFutureSingularName"

    .line 125
    .line 126
    aput-object v9, v2, v3

    .line 127
    .line 128
    const-string v9, "millisekunnin"

    .line 129
    .line 130
    aput-object v9, v2, v4

    .line 131
    .line 132
    const/16 v9, 0x9

    .line 133
    .line 134
    aput-object v2, v0, v9

    .line 135
    .line 136
    new-array v2, v1, [Ljava/lang/Object;

    .line 137
    .line 138
    const-string v9, "MillisecondPastSuffix"

    .line 139
    .line 140
    aput-object v9, v2, v3

    .line 141
    .line 142
    aput-object v6, v2, v4

    .line 143
    .line 144
    const/16 v9, 0xa

    .line 145
    .line 146
    aput-object v2, v0, v9

    .line 147
    .line 148
    new-array v2, v1, [Ljava/lang/Object;

    .line 149
    .line 150
    const-string v9, "MillisecondFutureSuffix"

    .line 151
    .line 152
    aput-object v9, v2, v3

    .line 153
    .line 154
    aput-object v7, v2, v4

    .line 155
    .line 156
    const/16 v9, 0xb

    .line 157
    .line 158
    aput-object v2, v0, v9

    .line 159
    .line 160
    new-array v2, v1, [Ljava/lang/Object;

    .line 161
    .line 162
    const-string v9, "SecondPattern"

    .line 163
    .line 164
    aput-object v9, v2, v3

    .line 165
    .line 166
    aput-object v5, v2, v4

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
    const-string v9, "SecondPluralPattern"

    .line 175
    .line 176
    aput-object v9, v2, v3

    .line 177
    .line 178
    aput-object v8, v2, v4

    .line 179
    .line 180
    const/16 v9, 0xd

    .line 181
    .line 182
    aput-object v2, v0, v9

    .line 183
    .line 184
    new-array v2, v1, [Ljava/lang/Object;

    .line 185
    .line 186
    const-string v9, "SecondPastSingularName"

    .line 187
    .line 188
    aput-object v9, v2, v3

    .line 189
    .line 190
    const-string v9, "sekunti"

    .line 191
    .line 192
    aput-object v9, v2, v4

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
    const-string v9, "SecondPastPluralName"

    .line 201
    .line 202
    aput-object v9, v2, v3

    .line 203
    .line 204
    const-string v9, "sekuntia"

    .line 205
    .line 206
    aput-object v9, v2, v4

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
    const-string v9, "SecondFutureSingularName"

    .line 215
    .line 216
    aput-object v9, v2, v3

    .line 217
    .line 218
    const-string v9, "sekunnin"

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
    const-string v9, "SecondPastSuffix"

    .line 229
    .line 230
    aput-object v9, v2, v3

    .line 231
    .line 232
    aput-object v6, v2, v4

    .line 233
    .line 234
    const/16 v9, 0x11

    .line 235
    .line 236
    aput-object v2, v0, v9

    .line 237
    .line 238
    new-array v2, v1, [Ljava/lang/Object;

    .line 239
    .line 240
    const-string v9, "SecondFutureSuffix"

    .line 241
    .line 242
    aput-object v9, v2, v3

    .line 243
    .line 244
    aput-object v7, v2, v4

    .line 245
    .line 246
    const/16 v9, 0x12

    .line 247
    .line 248
    aput-object v2, v0, v9

    .line 249
    .line 250
    new-array v2, v1, [Ljava/lang/Object;

    .line 251
    .line 252
    const-string v9, "MinutePattern"

    .line 253
    .line 254
    aput-object v9, v2, v3

    .line 255
    .line 256
    aput-object v5, v2, v4

    .line 257
    .line 258
    const/16 v9, 0x13

    .line 259
    .line 260
    aput-object v2, v0, v9

    .line 261
    .line 262
    new-array v2, v1, [Ljava/lang/Object;

    .line 263
    .line 264
    const-string v9, "MinutePluralPattern"

    .line 265
    .line 266
    aput-object v9, v2, v3

    .line 267
    .line 268
    aput-object v8, v2, v4

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
    const-string v9, "MinutePastSingularName"

    .line 277
    .line 278
    aput-object v9, v2, v3

    .line 279
    .line 280
    const-string v9, "minuutti"

    .line 281
    .line 282
    aput-object v9, v2, v4

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
    const-string v9, "MinutePastPluralName"

    .line 291
    .line 292
    aput-object v9, v2, v3

    .line 293
    .line 294
    const-string v9, "minuuttia"

    .line 295
    .line 296
    aput-object v9, v2, v4

    .line 297
    .line 298
    const/16 v9, 0x16

    .line 299
    .line 300
    aput-object v2, v0, v9

    .line 301
    .line 302
    new-array v2, v1, [Ljava/lang/Object;

    .line 303
    .line 304
    const-string v9, "MinuteFutureSingularName"

    .line 305
    .line 306
    aput-object v9, v2, v3

    .line 307
    .line 308
    const-string v9, "minuutin"

    .line 309
    .line 310
    aput-object v9, v2, v4

    .line 311
    .line 312
    const/16 v9, 0x17

    .line 313
    .line 314
    aput-object v2, v0, v9

    .line 315
    .line 316
    new-array v2, v1, [Ljava/lang/Object;

    .line 317
    .line 318
    const-string v9, "MinutePastSuffix"

    .line 319
    .line 320
    aput-object v9, v2, v3

    .line 321
    .line 322
    aput-object v6, v2, v4

    .line 323
    .line 324
    const/16 v9, 0x18

    .line 325
    .line 326
    aput-object v2, v0, v9

    .line 327
    .line 328
    new-array v2, v1, [Ljava/lang/Object;

    .line 329
    .line 330
    const-string v9, "MinuteFutureSuffix"

    .line 331
    .line 332
    aput-object v9, v2, v3

    .line 333
    .line 334
    aput-object v7, v2, v4

    .line 335
    .line 336
    const/16 v9, 0x19

    .line 337
    .line 338
    aput-object v2, v0, v9

    .line 339
    .line 340
    new-array v2, v1, [Ljava/lang/Object;

    .line 341
    .line 342
    const-string v9, "HourPattern"

    .line 343
    .line 344
    aput-object v9, v2, v3

    .line 345
    .line 346
    aput-object v5, v2, v4

    .line 347
    .line 348
    const/16 v9, 0x1a

    .line 349
    .line 350
    aput-object v2, v0, v9

    .line 351
    .line 352
    new-array v2, v1, [Ljava/lang/Object;

    .line 353
    .line 354
    const-string v9, "HourPluralPattern"

    .line 355
    .line 356
    aput-object v9, v2, v3

    .line 357
    .line 358
    aput-object v8, v2, v4

    .line 359
    .line 360
    const/16 v9, 0x1b

    .line 361
    .line 362
    aput-object v2, v0, v9

    .line 363
    .line 364
    new-array v2, v1, [Ljava/lang/Object;

    .line 365
    .line 366
    const-string v9, "HourPastSingularName"

    .line 367
    .line 368
    aput-object v9, v2, v3

    .line 369
    .line 370
    const-string/jumbo v9, "tunti"

    .line 371
    .line 372
    .line 373
    aput-object v9, v2, v4

    .line 374
    .line 375
    const/16 v9, 0x1c

    .line 376
    .line 377
    aput-object v2, v0, v9

    .line 378
    .line 379
    new-array v2, v1, [Ljava/lang/Object;

    .line 380
    .line 381
    const-string v9, "HourPastPluralName"

    .line 382
    .line 383
    aput-object v9, v2, v3

    .line 384
    .line 385
    const-string/jumbo v9, "tuntia"

    .line 386
    .line 387
    .line 388
    aput-object v9, v2, v4

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
    const-string v9, "HourFutureSingularName"

    .line 397
    .line 398
    aput-object v9, v2, v3

    .line 399
    .line 400
    const-string/jumbo v9, "tunnin"

    .line 401
    .line 402
    .line 403
    aput-object v9, v2, v4

    .line 404
    .line 405
    const/16 v9, 0x1e

    .line 406
    .line 407
    aput-object v2, v0, v9

    .line 408
    .line 409
    new-array v2, v1, [Ljava/lang/Object;

    .line 410
    .line 411
    const-string v9, "HourPastSuffix"

    .line 412
    .line 413
    aput-object v9, v2, v3

    .line 414
    .line 415
    aput-object v6, v2, v4

    .line 416
    .line 417
    const/16 v9, 0x1f

    .line 418
    .line 419
    aput-object v2, v0, v9

    .line 420
    .line 421
    new-array v2, v1, [Ljava/lang/Object;

    .line 422
    .line 423
    const-string v9, "HourFutureSuffix"

    .line 424
    .line 425
    aput-object v9, v2, v3

    .line 426
    .line 427
    aput-object v7, v2, v4

    .line 428
    .line 429
    const/16 v9, 0x20

    .line 430
    .line 431
    aput-object v2, v0, v9

    .line 432
    .line 433
    new-array v2, v1, [Ljava/lang/Object;

    .line 434
    .line 435
    const-string v9, "DayPattern"

    .line 436
    .line 437
    aput-object v9, v2, v3

    .line 438
    .line 439
    aput-object v5, v2, v4

    .line 440
    .line 441
    const/16 v9, 0x21

    .line 442
    .line 443
    aput-object v2, v0, v9

    .line 444
    .line 445
    new-array v2, v1, [Ljava/lang/Object;

    .line 446
    .line 447
    const-string v9, "DayPluralPattern"

    .line 448
    .line 449
    aput-object v9, v2, v3

    .line 450
    .line 451
    aput-object v8, v2, v4

    .line 452
    .line 453
    const/16 v9, 0x22

    .line 454
    .line 455
    aput-object v2, v0, v9

    .line 456
    .line 457
    new-array v2, v1, [Ljava/lang/Object;

    .line 458
    .line 459
    const-string v9, "DayPastSingularName"

    .line 460
    .line 461
    aput-object v9, v2, v3

    .line 462
    .line 463
    const-string v9, "eilen"

    .line 464
    .line 465
    aput-object v9, v2, v4

    .line 466
    .line 467
    const/16 v9, 0x23

    .line 468
    .line 469
    aput-object v2, v0, v9

    .line 470
    .line 471
    new-array v2, v1, [Ljava/lang/Object;

    .line 472
    .line 473
    const-string v9, "DayPastPluralName"

    .line 474
    .line 475
    aput-object v9, v2, v3

    .line 476
    .line 477
    const-string v9, "p\u00e4iv\u00e4\u00e4"

    .line 478
    .line 479
    aput-object v9, v2, v4

    .line 480
    .line 481
    const/16 v9, 0x24

    .line 482
    .line 483
    aput-object v2, v0, v9

    .line 484
    .line 485
    new-array v2, v1, [Ljava/lang/Object;

    .line 486
    .line 487
    const-string v9, "DayFutureSingularName"

    .line 488
    .line 489
    aput-object v9, v2, v3

    .line 490
    .line 491
    const-string v9, "huomenna"

    .line 492
    .line 493
    aput-object v9, v2, v4

    .line 494
    .line 495
    const/16 v9, 0x25

    .line 496
    .line 497
    aput-object v2, v0, v9

    .line 498
    .line 499
    new-array v2, v1, [Ljava/lang/Object;

    .line 500
    .line 501
    const-string v9, "DayFuturePluralName"

    .line 502
    .line 503
    aput-object v9, v2, v3

    .line 504
    .line 505
    const-string v9, "p\u00e4iv\u00e4n"

    .line 506
    .line 507
    aput-object v9, v2, v4

    .line 508
    .line 509
    const/16 v9, 0x26

    .line 510
    .line 511
    aput-object v2, v0, v9

    .line 512
    .line 513
    new-array v2, v1, [Ljava/lang/Object;

    .line 514
    .line 515
    const-string v9, "DayPastSuffix"

    .line 516
    .line 517
    aput-object v9, v2, v3

    .line 518
    .line 519
    aput-object v6, v2, v4

    .line 520
    .line 521
    const/16 v9, 0x27

    .line 522
    .line 523
    aput-object v2, v0, v9

    .line 524
    .line 525
    new-array v2, v1, [Ljava/lang/Object;

    .line 526
    .line 527
    const-string v9, "DayFutureSuffix"

    .line 528
    .line 529
    aput-object v9, v2, v3

    .line 530
    .line 531
    aput-object v7, v2, v4

    .line 532
    .line 533
    const/16 v9, 0x28

    .line 534
    .line 535
    aput-object v2, v0, v9

    .line 536
    .line 537
    new-array v2, v1, [Ljava/lang/Object;

    .line 538
    .line 539
    const-string v9, "WeekPattern"

    .line 540
    .line 541
    aput-object v9, v2, v3

    .line 542
    .line 543
    aput-object v5, v2, v4

    .line 544
    .line 545
    const/16 v9, 0x29

    .line 546
    .line 547
    aput-object v2, v0, v9

    .line 548
    .line 549
    new-array v2, v1, [Ljava/lang/Object;

    .line 550
    .line 551
    const-string v9, "WeekPluralPattern"

    .line 552
    .line 553
    aput-object v9, v2, v3

    .line 554
    .line 555
    aput-object v8, v2, v4

    .line 556
    .line 557
    const/16 v9, 0x2a

    .line 558
    .line 559
    aput-object v2, v0, v9

    .line 560
    .line 561
    new-array v2, v1, [Ljava/lang/Object;

    .line 562
    .line 563
    const-string v9, "WeekPastSingularName"

    .line 564
    .line 565
    aput-object v9, v2, v3

    .line 566
    .line 567
    const-string/jumbo v9, "viikko"

    .line 568
    .line 569
    .line 570
    aput-object v9, v2, v4

    .line 571
    .line 572
    const/16 v9, 0x2b

    .line 573
    .line 574
    aput-object v2, v0, v9

    .line 575
    .line 576
    new-array v2, v1, [Ljava/lang/Object;

    .line 577
    .line 578
    const-string v9, "WeekPastPluralName"

    .line 579
    .line 580
    aput-object v9, v2, v3

    .line 581
    .line 582
    const-string/jumbo v9, "viikkoa"

    .line 583
    .line 584
    .line 585
    aput-object v9, v2, v4

    .line 586
    .line 587
    const/16 v9, 0x2c

    .line 588
    .line 589
    aput-object v2, v0, v9

    .line 590
    .line 591
    new-array v2, v1, [Ljava/lang/Object;

    .line 592
    .line 593
    const-string v9, "WeekFutureSingularName"

    .line 594
    .line 595
    aput-object v9, v2, v3

    .line 596
    .line 597
    const-string/jumbo v9, "viikon"

    .line 598
    .line 599
    .line 600
    aput-object v9, v2, v4

    .line 601
    .line 602
    const/16 v10, 0x2d

    .line 603
    .line 604
    aput-object v2, v0, v10

    .line 605
    .line 606
    new-array v2, v1, [Ljava/lang/Object;

    .line 607
    .line 608
    const-string v10, "WeekFuturePluralName"

    .line 609
    .line 610
    aput-object v10, v2, v3

    .line 611
    .line 612
    aput-object v9, v2, v4

    .line 613
    .line 614
    const/16 v9, 0x2e

    .line 615
    .line 616
    aput-object v2, v0, v9

    .line 617
    .line 618
    new-array v2, v1, [Ljava/lang/Object;

    .line 619
    .line 620
    const-string v9, "WeekPastSuffix"

    .line 621
    .line 622
    aput-object v9, v2, v3

    .line 623
    .line 624
    aput-object v6, v2, v4

    .line 625
    .line 626
    const/16 v9, 0x2f

    .line 627
    .line 628
    aput-object v2, v0, v9

    .line 629
    .line 630
    new-array v2, v1, [Ljava/lang/Object;

    .line 631
    .line 632
    const-string v9, "WeekFutureSuffix"

    .line 633
    .line 634
    aput-object v9, v2, v3

    .line 635
    .line 636
    aput-object v7, v2, v4

    .line 637
    .line 638
    const/16 v9, 0x30

    .line 639
    .line 640
    aput-object v2, v0, v9

    .line 641
    .line 642
    new-array v2, v1, [Ljava/lang/Object;

    .line 643
    .line 644
    const-string v9, "MonthPattern"

    .line 645
    .line 646
    aput-object v9, v2, v3

    .line 647
    .line 648
    aput-object v5, v2, v4

    .line 649
    .line 650
    const/16 v9, 0x31

    .line 651
    .line 652
    aput-object v2, v0, v9

    .line 653
    .line 654
    new-array v2, v1, [Ljava/lang/Object;

    .line 655
    .line 656
    const-string v9, "MonthPluralPattern"

    .line 657
    .line 658
    aput-object v9, v2, v3

    .line 659
    .line 660
    aput-object v8, v2, v4

    .line 661
    .line 662
    const/16 v9, 0x32

    .line 663
    .line 664
    aput-object v2, v0, v9

    .line 665
    .line 666
    new-array v2, v1, [Ljava/lang/Object;

    .line 667
    .line 668
    const-string v9, "MonthPastSingularName"

    .line 669
    .line 670
    aput-object v9, v2, v3

    .line 671
    .line 672
    const-string v9, "kuukausi"

    .line 673
    .line 674
    aput-object v9, v2, v4

    .line 675
    .line 676
    const/16 v9, 0x33

    .line 677
    .line 678
    aput-object v2, v0, v9

    .line 679
    .line 680
    new-array v2, v1, [Ljava/lang/Object;

    .line 681
    .line 682
    const-string v9, "MonthPastPluralName"

    .line 683
    .line 684
    aput-object v9, v2, v3

    .line 685
    .line 686
    const-string v9, "kuukautta"

    .line 687
    .line 688
    aput-object v9, v2, v4

    .line 689
    .line 690
    const/16 v9, 0x34

    .line 691
    .line 692
    aput-object v2, v0, v9

    .line 693
    .line 694
    new-array v2, v1, [Ljava/lang/Object;

    .line 695
    .line 696
    const-string v9, "MonthFutureSingularName"

    .line 697
    .line 698
    aput-object v9, v2, v3

    .line 699
    .line 700
    const-string v9, "kuukauden"

    .line 701
    .line 702
    aput-object v9, v2, v4

    .line 703
    .line 704
    const/16 v9, 0x35

    .line 705
    .line 706
    aput-object v2, v0, v9

    .line 707
    .line 708
    new-array v2, v1, [Ljava/lang/Object;

    .line 709
    .line 710
    const-string v9, "MonthPastSuffix"

    .line 711
    .line 712
    aput-object v9, v2, v3

    .line 713
    .line 714
    aput-object v6, v2, v4

    .line 715
    .line 716
    const/16 v9, 0x36

    .line 717
    .line 718
    aput-object v2, v0, v9

    .line 719
    .line 720
    new-array v2, v1, [Ljava/lang/Object;

    .line 721
    .line 722
    const-string v9, "MonthFutureSuffix"

    .line 723
    .line 724
    aput-object v9, v2, v3

    .line 725
    .line 726
    aput-object v7, v2, v4

    .line 727
    .line 728
    const/16 v9, 0x37

    .line 729
    .line 730
    aput-object v2, v0, v9

    .line 731
    .line 732
    new-array v2, v1, [Ljava/lang/Object;

    .line 733
    .line 734
    const-string v9, "YearPattern"

    .line 735
    .line 736
    aput-object v9, v2, v3

    .line 737
    .line 738
    aput-object v5, v2, v4

    .line 739
    .line 740
    const/16 v9, 0x38

    .line 741
    .line 742
    aput-object v2, v0, v9

    .line 743
    .line 744
    new-array v2, v1, [Ljava/lang/Object;

    .line 745
    .line 746
    const-string v9, "YearPluralPattern"

    .line 747
    .line 748
    aput-object v9, v2, v3

    .line 749
    .line 750
    aput-object v8, v2, v4

    .line 751
    .line 752
    const/16 v9, 0x39

    .line 753
    .line 754
    aput-object v2, v0, v9

    .line 755
    .line 756
    new-array v2, v1, [Ljava/lang/Object;

    .line 757
    .line 758
    const-string v9, "YearPastSingularName"

    .line 759
    .line 760
    aput-object v9, v2, v3

    .line 761
    .line 762
    const-string/jumbo v9, "vuosi"

    .line 763
    .line 764
    .line 765
    aput-object v9, v2, v4

    .line 766
    .line 767
    const/16 v9, 0x3a

    .line 768
    .line 769
    aput-object v2, v0, v9

    .line 770
    .line 771
    new-array v2, v1, [Ljava/lang/Object;

    .line 772
    .line 773
    const-string v9, "YearPastPluralName"

    .line 774
    .line 775
    aput-object v9, v2, v3

    .line 776
    .line 777
    const-string/jumbo v9, "vuotta"

    .line 778
    .line 779
    .line 780
    aput-object v9, v2, v4

    .line 781
    .line 782
    const/16 v9, 0x3b

    .line 783
    .line 784
    aput-object v2, v0, v9

    .line 785
    .line 786
    new-array v2, v1, [Ljava/lang/Object;

    .line 787
    .line 788
    const-string v9, "YearFutureSingularName"

    .line 789
    .line 790
    aput-object v9, v2, v3

    .line 791
    .line 792
    const-string/jumbo v9, "vuoden"

    .line 793
    .line 794
    .line 795
    aput-object v9, v2, v4

    .line 796
    .line 797
    const/16 v9, 0x3c

    .line 798
    .line 799
    aput-object v2, v0, v9

    .line 800
    .line 801
    new-array v2, v1, [Ljava/lang/Object;

    .line 802
    .line 803
    const-string v9, "YearPastSuffix"

    .line 804
    .line 805
    aput-object v9, v2, v3

    .line 806
    .line 807
    aput-object v6, v2, v4

    .line 808
    .line 809
    const/16 v9, 0x3d

    .line 810
    .line 811
    aput-object v2, v0, v9

    .line 812
    .line 813
    new-array v2, v1, [Ljava/lang/Object;

    .line 814
    .line 815
    const-string v9, "YearFutureSuffix"

    .line 816
    .line 817
    aput-object v9, v2, v3

    .line 818
    .line 819
    aput-object v7, v2, v4

    .line 820
    .line 821
    const/16 v9, 0x3e

    .line 822
    .line 823
    aput-object v2, v0, v9

    .line 824
    .line 825
    new-array v2, v1, [Ljava/lang/Object;

    .line 826
    .line 827
    const-string v9, "DecadePattern"

    .line 828
    .line 829
    aput-object v9, v2, v3

    .line 830
    .line 831
    aput-object v5, v2, v4

    .line 832
    .line 833
    const/16 v9, 0x3f

    .line 834
    .line 835
    aput-object v2, v0, v9

    .line 836
    .line 837
    new-array v2, v1, [Ljava/lang/Object;

    .line 838
    .line 839
    const-string v9, "DecadePluralPattern"

    .line 840
    .line 841
    aput-object v9, v2, v3

    .line 842
    .line 843
    aput-object v8, v2, v4

    .line 844
    .line 845
    const/16 v9, 0x40

    .line 846
    .line 847
    aput-object v2, v0, v9

    .line 848
    .line 849
    new-array v2, v1, [Ljava/lang/Object;

    .line 850
    .line 851
    const-string v9, "DecadePastSingularName"

    .line 852
    .line 853
    aput-object v9, v2, v3

    .line 854
    .line 855
    const-string/jumbo v9, "vuosikymmen"

    .line 856
    .line 857
    .line 858
    aput-object v9, v2, v4

    .line 859
    .line 860
    const/16 v9, 0x41

    .line 861
    .line 862
    aput-object v2, v0, v9

    .line 863
    .line 864
    new-array v2, v1, [Ljava/lang/Object;

    .line 865
    .line 866
    const-string v9, "DecadePastPluralName"

    .line 867
    .line 868
    aput-object v9, v2, v3

    .line 869
    .line 870
    const-string/jumbo v9, "vuosikymment\u00e4"

    .line 871
    .line 872
    .line 873
    aput-object v9, v2, v4

    .line 874
    .line 875
    const/16 v9, 0x42

    .line 876
    .line 877
    aput-object v2, v0, v9

    .line 878
    .line 879
    new-array v2, v1, [Ljava/lang/Object;

    .line 880
    .line 881
    const-string v9, "DecadeFutureSingularName"

    .line 882
    .line 883
    aput-object v9, v2, v3

    .line 884
    .line 885
    const-string/jumbo v9, "vuosikymmenen"

    .line 886
    .line 887
    .line 888
    aput-object v9, v2, v4

    .line 889
    .line 890
    const/16 v9, 0x43

    .line 891
    .line 892
    aput-object v2, v0, v9

    .line 893
    .line 894
    new-array v2, v1, [Ljava/lang/Object;

    .line 895
    .line 896
    const-string v9, "DecadePastSuffix"

    .line 897
    .line 898
    aput-object v9, v2, v3

    .line 899
    .line 900
    aput-object v6, v2, v4

    .line 901
    .line 902
    const/16 v9, 0x44

    .line 903
    .line 904
    aput-object v2, v0, v9

    .line 905
    .line 906
    new-array v2, v1, [Ljava/lang/Object;

    .line 907
    .line 908
    const-string v9, "DecadeFutureSuffix"

    .line 909
    .line 910
    aput-object v9, v2, v3

    .line 911
    .line 912
    aput-object v7, v2, v4

    .line 913
    .line 914
    const/16 v9, 0x45

    .line 915
    .line 916
    aput-object v2, v0, v9

    .line 917
    .line 918
    new-array v2, v1, [Ljava/lang/Object;

    .line 919
    .line 920
    const-string v9, "CenturyPattern"

    .line 921
    .line 922
    aput-object v9, v2, v3

    .line 923
    .line 924
    aput-object v5, v2, v4

    .line 925
    .line 926
    const/16 v9, 0x46

    .line 927
    .line 928
    aput-object v2, v0, v9

    .line 929
    .line 930
    new-array v2, v1, [Ljava/lang/Object;

    .line 931
    .line 932
    const-string v9, "CenturyPluralPattern"

    .line 933
    .line 934
    aput-object v9, v2, v3

    .line 935
    .line 936
    aput-object v8, v2, v4

    .line 937
    .line 938
    const/16 v9, 0x47

    .line 939
    .line 940
    aput-object v2, v0, v9

    .line 941
    .line 942
    new-array v2, v1, [Ljava/lang/Object;

    .line 943
    .line 944
    const-string v9, "CenturyPastSingularName"

    .line 945
    .line 946
    aput-object v9, v2, v3

    .line 947
    .line 948
    const-string/jumbo v9, "vuosisata"

    .line 949
    .line 950
    .line 951
    aput-object v9, v2, v4

    .line 952
    .line 953
    const/16 v9, 0x48

    .line 954
    .line 955
    aput-object v2, v0, v9

    .line 956
    .line 957
    new-array v2, v1, [Ljava/lang/Object;

    .line 958
    .line 959
    const-string v9, "CenturyPastPluralName"

    .line 960
    .line 961
    aput-object v9, v2, v3

    .line 962
    .line 963
    const-string/jumbo v9, "vuosisataa"

    .line 964
    .line 965
    .line 966
    aput-object v9, v2, v4

    .line 967
    .line 968
    const/16 v9, 0x49

    .line 969
    .line 970
    aput-object v2, v0, v9

    .line 971
    .line 972
    new-array v2, v1, [Ljava/lang/Object;

    .line 973
    .line 974
    const-string v9, "CenturyFutureSingularName"

    .line 975
    .line 976
    aput-object v9, v2, v3

    .line 977
    .line 978
    const-string/jumbo v9, "vuosisadan"

    .line 979
    .line 980
    .line 981
    aput-object v9, v2, v4

    .line 982
    .line 983
    const/16 v9, 0x4a

    .line 984
    .line 985
    aput-object v2, v0, v9

    .line 986
    .line 987
    new-array v2, v1, [Ljava/lang/Object;

    .line 988
    .line 989
    const-string v9, "CenturyPastSuffix"

    .line 990
    .line 991
    aput-object v9, v2, v3

    .line 992
    .line 993
    aput-object v6, v2, v4

    .line 994
    .line 995
    const/16 v9, 0x4b

    .line 996
    .line 997
    aput-object v2, v0, v9

    .line 998
    .line 999
    new-array v2, v1, [Ljava/lang/Object;

    .line 1000
    .line 1001
    const-string v9, "CenturyFutureSuffix"

    .line 1002
    .line 1003
    aput-object v9, v2, v3

    .line 1004
    .line 1005
    aput-object v7, v2, v4

    .line 1006
    .line 1007
    const/16 v9, 0x4c

    .line 1008
    .line 1009
    aput-object v2, v0, v9

    .line 1010
    .line 1011
    new-array v2, v1, [Ljava/lang/Object;

    .line 1012
    .line 1013
    const-string v9, "MillenniumPattern"

    .line 1014
    .line 1015
    aput-object v9, v2, v3

    .line 1016
    .line 1017
    aput-object v5, v2, v4

    .line 1018
    .line 1019
    const/16 v5, 0x4d

    .line 1020
    .line 1021
    aput-object v2, v0, v5

    .line 1022
    .line 1023
    new-array v2, v1, [Ljava/lang/Object;

    .line 1024
    .line 1025
    const-string v5, "MillenniumPluralPattern"

    .line 1026
    .line 1027
    aput-object v5, v2, v3

    .line 1028
    .line 1029
    aput-object v8, v2, v4

    .line 1030
    .line 1031
    const/16 v5, 0x4e

    .line 1032
    .line 1033
    aput-object v2, v0, v5

    .line 1034
    .line 1035
    new-array v2, v1, [Ljava/lang/Object;

    .line 1036
    .line 1037
    const-string v5, "MillenniumPastSingularName"

    .line 1038
    .line 1039
    aput-object v5, v2, v3

    .line 1040
    .line 1041
    const-string/jumbo v5, "vuosituhat"

    .line 1042
    .line 1043
    .line 1044
    aput-object v5, v2, v4

    .line 1045
    .line 1046
    const/16 v5, 0x4f

    .line 1047
    .line 1048
    aput-object v2, v0, v5

    .line 1049
    .line 1050
    new-array v2, v1, [Ljava/lang/Object;

    .line 1051
    .line 1052
    const-string v5, "MillenniumPastPluralName"

    .line 1053
    .line 1054
    aput-object v5, v2, v3

    .line 1055
    .line 1056
    const-string/jumbo v5, "vuosituhatta"

    .line 1057
    .line 1058
    .line 1059
    aput-object v5, v2, v4

    .line 1060
    .line 1061
    const/16 v5, 0x50

    .line 1062
    .line 1063
    aput-object v2, v0, v5

    .line 1064
    .line 1065
    new-array v2, v1, [Ljava/lang/Object;

    .line 1066
    .line 1067
    const-string v5, "MillenniumFutureSingularName"

    .line 1068
    .line 1069
    aput-object v5, v2, v3

    .line 1070
    .line 1071
    const-string/jumbo v5, "vuosituhannen"

    .line 1072
    .line 1073
    .line 1074
    aput-object v5, v2, v4

    .line 1075
    .line 1076
    const/16 v5, 0x51

    .line 1077
    .line 1078
    aput-object v2, v0, v5

    .line 1079
    .line 1080
    new-array v2, v1, [Ljava/lang/Object;

    .line 1081
    .line 1082
    const-string v5, "MillenniumPastSuffix"

    .line 1083
    .line 1084
    aput-object v5, v2, v3

    .line 1085
    .line 1086
    aput-object v6, v2, v4

    .line 1087
    .line 1088
    const/16 v5, 0x52

    .line 1089
    .line 1090
    aput-object v2, v0, v5

    .line 1091
    .line 1092
    new-array v1, v1, [Ljava/lang/Object;

    .line 1093
    .line 1094
    const-string v2, "MillenniumFutureSuffix"

    .line 1095
    .line 1096
    aput-object v2, v1, v3

    .line 1097
    .line 1098
    aput-object v7, v1, v4

    .line 1099
    .line 1100
    const/16 v2, 0x53

    .line 1101
    .line 1102
    aput-object v1, v0, v2

    .line 1103
    .line 1104
    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->CONTENTS:[[Ljava/lang/Object;

    .line 1105
    .line 1106
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
    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->formatMap:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$getFormatFor$0(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 1

    .line 1
    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_fi$FiTimeFormat;-><init>(Ljava/util/ResourceBundle;Lorg/ocpsoft/prettytime/TimeUnit;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->CONTENTS:[[Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFormatFor(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->formatMap:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda41;

    .line 4
    .line 5
    const/4 v2, 0x3

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

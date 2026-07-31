.class public final enum Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

.field public static final enum ALL:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

.field public static final enum WHATS_NEW:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;


# instance fields
.field private final drawableResource:I

.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 64

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 2
    .line 3
    const v1, 0x7f0800e7

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, "ALL"

    .line 8
    .line 9
    invoke-direct {v0, v2, v3, v2, v1}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->ALL:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 13
    .line 14
    new-instance v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 15
    .line 16
    const v3, 0x7f08012c

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    const-string v5, "MUSIC"

    .line 21
    .line 22
    invoke-direct {v1, v4, v5, v4, v3}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 26
    .line 27
    const v5, 0x7f08014b

    .line 28
    .line 29
    .line 30
    const/4 v6, 0x2

    .line 31
    const-string v7, "EDUCATION"

    .line 32
    .line 33
    invoke-direct {v3, v6, v7, v6, v5}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 37
    .line 38
    const v7, 0x7f08010f

    .line 39
    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "FITNESS"

    .line 43
    .line 44
    invoke-direct {v5, v8, v9, v8, v7}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    new-instance v7, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 48
    .line 49
    const v9, 0x7f08015a

    .line 50
    .line 51
    .line 52
    const/4 v10, 0x4

    .line 53
    const-string v11, "SPACE"

    .line 54
    .line 55
    invoke-direct {v7, v10, v11, v10, v9}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 56
    .line 57
    .line 58
    new-instance v9, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 59
    .line 60
    const v11, 0x7f080101

    .line 61
    .line 62
    .line 63
    const/4 v12, 0x5

    .line 64
    const-string v13, "COMPUTER"

    .line 65
    .line 66
    invoke-direct {v9, v12, v13, v12, v11}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    new-instance v11, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 70
    .line 71
    const v13, 0x7f08015f

    .line 72
    .line 73
    .line 74
    const/4 v14, 0x6

    .line 75
    const-string v15, "GAMING"

    .line 76
    .line 77
    invoke-direct {v11, v14, v15, v14, v13}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 78
    .line 79
    .line 80
    new-instance v13, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 81
    .line 82
    const v15, 0x7f080105

    .line 83
    .line 84
    .line 85
    move/from16 v16, v2

    .line 86
    .line 87
    const/4 v2, 0x7

    .line 88
    move/from16 v17, v4

    .line 89
    .line 90
    const-string v4, "SPORTS"

    .line 91
    .line 92
    invoke-direct {v13, v2, v4, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 93
    .line 94
    .line 95
    new-instance v4, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 96
    .line 97
    const v15, 0x7f0800f6

    .line 98
    .line 99
    .line 100
    move/from16 v18, v2

    .line 101
    .line 102
    const/16 v2, 0x8

    .line 103
    .line 104
    move/from16 v19, v6

    .line 105
    .line 106
    const-string v6, "NEWS"

    .line 107
    .line 108
    invoke-direct {v4, v2, v6, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 109
    .line 110
    .line 111
    new-instance v6, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 112
    .line 113
    const v15, 0x7f08010c

    .line 114
    .line 115
    .line 116
    move/from16 v20, v2

    .line 117
    .line 118
    const/16 v2, 0x9

    .line 119
    .line 120
    move/from16 v21, v8

    .line 121
    .line 122
    const-string v8, "FAVORITES"

    .line 123
    .line 124
    invoke-direct {v6, v2, v8, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 125
    .line 126
    .line 127
    new-instance v8, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 128
    .line 129
    const v15, 0x7f080106

    .line 130
    .line 131
    .line 132
    move/from16 v22, v2

    .line 133
    .line 134
    const/16 v2, 0xa

    .line 135
    .line 136
    move/from16 v23, v10

    .line 137
    .line 138
    const-string v10, "CAR"

    .line 139
    .line 140
    invoke-direct {v8, v2, v10, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 141
    .line 142
    .line 143
    new-instance v10, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 144
    .line 145
    const v15, 0x7f080126

    .line 146
    .line 147
    .line 148
    move/from16 v24, v2

    .line 149
    .line 150
    const/16 v2, 0xb

    .line 151
    .line 152
    move/from16 v25, v12

    .line 153
    .line 154
    const-string v12, "MOTORCYCLE"

    .line 155
    .line 156
    invoke-direct {v10, v2, v12, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 157
    .line 158
    .line 159
    new-instance v12, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 160
    .line 161
    const v15, 0x7f08015d

    .line 162
    .line 163
    .line 164
    move/from16 v26, v2

    .line 165
    .line 166
    const/16 v2, 0xc

    .line 167
    .line 168
    move/from16 v27, v14

    .line 169
    .line 170
    const-string v14, "TREND"

    .line 171
    .line 172
    invoke-direct {v12, v2, v14, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 173
    .line 174
    .line 175
    new-instance v14, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 176
    .line 177
    const v15, 0x7f080127

    .line 178
    .line 179
    .line 180
    move/from16 v28, v2

    .line 181
    .line 182
    const/16 v2, 0xd

    .line 183
    .line 184
    move-object/from16 v29, v0

    .line 185
    .line 186
    const-string v0, "MOVIE"

    .line 187
    .line 188
    invoke-direct {v14, v2, v0, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 189
    .line 190
    .line 191
    new-instance v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 192
    .line 193
    const v15, 0x7f0800e9

    .line 194
    .line 195
    .line 196
    move/from16 v30, v2

    .line 197
    .line 198
    const/16 v2, 0xe

    .line 199
    .line 200
    move-object/from16 v31, v1

    .line 201
    .line 202
    const-string v1, "BACKUP"

    .line 203
    .line 204
    invoke-direct {v0, v2, v1, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 205
    .line 206
    .line 207
    new-instance v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 208
    .line 209
    const v15, 0x7f080131

    .line 210
    .line 211
    .line 212
    move/from16 v32, v2

    .line 213
    .line 214
    const/16 v2, 0xf

    .line 215
    .line 216
    move-object/from16 v33, v0

    .line 217
    .line 218
    const-string v0, "ART"

    .line 219
    .line 220
    invoke-direct {v1, v2, v0, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 221
    .line 222
    .line 223
    new-instance v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 224
    .line 225
    const v15, 0x7f080134

    .line 226
    .line 227
    .line 228
    move/from16 v34, v2

    .line 229
    .line 230
    const/16 v2, 0x10

    .line 231
    .line 232
    move-object/from16 v35, v1

    .line 233
    .line 234
    const-string v1, "PERSON"

    .line 235
    .line 236
    invoke-direct {v0, v2, v1, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 237
    .line 238
    .line 239
    new-instance v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 240
    .line 241
    const v15, 0x7f080133

    .line 242
    .line 243
    .line 244
    move/from16 v36, v2

    .line 245
    .line 246
    const/16 v2, 0x11

    .line 247
    .line 248
    move-object/from16 v37, v0

    .line 249
    .line 250
    const-string v0, "PEOPLE"

    .line 251
    .line 252
    invoke-direct {v1, v2, v0, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 253
    .line 254
    .line 255
    new-instance v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 256
    .line 257
    const v15, 0x7f0800e8

    .line 258
    .line 259
    .line 260
    move/from16 v38, v2

    .line 261
    .line 262
    const/16 v2, 0x12

    .line 263
    .line 264
    move-object/from16 v39, v1

    .line 265
    .line 266
    const-string v1, "MONEY"

    .line 267
    .line 268
    invoke-direct {v0, v2, v1, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 269
    .line 270
    .line 271
    new-instance v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 272
    .line 273
    const v15, 0x7f0800f9

    .line 274
    .line 275
    .line 276
    move/from16 v40, v2

    .line 277
    .line 278
    const/16 v2, 0x13

    .line 279
    .line 280
    move-object/from16 v41, v0

    .line 281
    .line 282
    const-string v0, "KIDS"

    .line 283
    .line 284
    invoke-direct {v1, v2, v0, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 285
    .line 286
    .line 287
    new-instance v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 288
    .line 289
    const v15, 0x7f08010b

    .line 290
    .line 291
    .line 292
    move/from16 v42, v2

    .line 293
    .line 294
    const/16 v2, 0x14

    .line 295
    .line 296
    move-object/from16 v43, v1

    .line 297
    .line 298
    const-string v1, "FOOD"

    .line 299
    .line 300
    invoke-direct {v0, v2, v1, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 301
    .line 302
    .line 303
    new-instance v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 304
    .line 305
    const v15, 0x7f08011b

    .line 306
    .line 307
    .line 308
    move/from16 v44, v2

    .line 309
    .line 310
    const/16 v2, 0x15

    .line 311
    .line 312
    move-object/from16 v45, v0

    .line 313
    .line 314
    const-string v0, "SMILE"

    .line 315
    .line 316
    invoke-direct {v1, v2, v0, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 317
    .line 318
    .line 319
    new-instance v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 320
    .line 321
    const/16 v15, 0x16

    .line 322
    .line 323
    move/from16 v46, v2

    .line 324
    .line 325
    const v2, 0x7f08010a

    .line 326
    .line 327
    .line 328
    move-object/from16 v47, v1

    .line 329
    .line 330
    const-string v1, "EXPLORE"

    .line 331
    .line 332
    invoke-direct {v0, v15, v1, v15, v2}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 333
    .line 334
    .line 335
    new-instance v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 336
    .line 337
    const/16 v2, 0x17

    .line 338
    .line 339
    const v15, 0x7f080148

    .line 340
    .line 341
    .line 342
    move-object/from16 v48, v0

    .line 343
    .line 344
    const-string v0, "RESTAURANT"

    .line 345
    .line 346
    invoke-direct {v1, v2, v0, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 347
    .line 348
    .line 349
    new-instance v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 350
    .line 351
    const/16 v2, 0x18

    .line 352
    .line 353
    const v15, 0x7f080124

    .line 354
    .line 355
    .line 356
    move-object/from16 v49, v1

    .line 357
    .line 358
    const-string v1, "MIC"

    .line 359
    .line 360
    invoke-direct {v0, v2, v1, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 361
    .line 362
    .line 363
    new-instance v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 364
    .line 365
    const/16 v2, 0x19

    .line 366
    .line 367
    const v15, 0x7f080112

    .line 368
    .line 369
    .line 370
    move-object/from16 v50, v0

    .line 371
    .line 372
    const-string v0, "HEADSET"

    .line 373
    .line 374
    invoke-direct {v1, v2, v0, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 375
    .line 376
    .line 377
    new-instance v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 378
    .line 379
    const/16 v2, 0x1a

    .line 380
    .line 381
    const v15, 0x7f080144

    .line 382
    .line 383
    .line 384
    move-object/from16 v51, v1

    .line 385
    .line 386
    const-string v1, "RADIO"

    .line 387
    .line 388
    invoke-direct {v0, v2, v1, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 389
    .line 390
    .line 391
    new-instance v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 392
    .line 393
    const/16 v2, 0x1b

    .line 394
    .line 395
    const v15, 0x7f080153

    .line 396
    .line 397
    .line 398
    move-object/from16 v52, v0

    .line 399
    .line 400
    const-string v0, "SHOPPING_CART"

    .line 401
    .line 402
    invoke-direct {v1, v2, v0, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 403
    .line 404
    .line 405
    new-instance v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 406
    .line 407
    const/16 v2, 0x1c

    .line 408
    .line 409
    const v15, 0x7f080165

    .line 410
    .line 411
    .line 412
    move-object/from16 v53, v1

    .line 413
    .line 414
    const-string v1, "WATCH_LATER"

    .line 415
    .line 416
    invoke-direct {v0, v2, v1, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 417
    .line 418
    .line 419
    new-instance v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 420
    .line 421
    const/16 v2, 0x1d

    .line 422
    .line 423
    const v15, 0x7f080168

    .line 424
    .line 425
    .line 426
    move-object/from16 v54, v0

    .line 427
    .line 428
    const-string v0, "WORK"

    .line 429
    .line 430
    invoke-direct {v1, v2, v0, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 431
    .line 432
    .line 433
    new-instance v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 434
    .line 435
    const/16 v2, 0x1e

    .line 436
    .line 437
    const v15, 0x7f080167

    .line 438
    .line 439
    .line 440
    move-object/from16 v55, v1

    .line 441
    .line 442
    const-string v1, "HOT"

    .line 443
    .line 444
    invoke-direct {v0, v2, v1, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 445
    .line 446
    .line 447
    new-instance v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 448
    .line 449
    const/16 v2, 0x1f

    .line 450
    .line 451
    const v15, 0x7f08015e

    .line 452
    .line 453
    .line 454
    move-object/from16 v56, v0

    .line 455
    .line 456
    const-string v0, "CHANNEL"

    .line 457
    .line 458
    invoke-direct {v1, v2, v0, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 459
    .line 460
    .line 461
    new-instance v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 462
    .line 463
    const/16 v2, 0x20

    .line 464
    .line 465
    const v15, 0x7f0800ea

    .line 466
    .line 467
    .line 468
    move-object/from16 v57, v1

    .line 469
    .line 470
    const-string v1, "BOOKMARK"

    .line 471
    .line 472
    invoke-direct {v0, v2, v1, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 473
    .line 474
    .line 475
    new-instance v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 476
    .line 477
    const/16 v2, 0x21

    .line 478
    .line 479
    const v15, 0x7f080135

    .line 480
    .line 481
    .line 482
    move-object/from16 v58, v0

    .line 483
    .line 484
    const-string v0, "PETS"

    .line 485
    .line 486
    invoke-direct {v1, v2, v0, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 487
    .line 488
    .line 489
    new-instance v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 490
    .line 491
    const/16 v2, 0x22

    .line 492
    .line 493
    const v15, 0x7f080143

    .line 494
    .line 495
    .line 496
    move-object/from16 v59, v1

    .line 497
    .line 498
    const-string v1, "WORLD"

    .line 499
    .line 500
    invoke-direct {v0, v2, v1, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 501
    .line 502
    .line 503
    new-instance v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 504
    .line 505
    const/16 v2, 0x23

    .line 506
    .line 507
    const v15, 0x7f080157

    .line 508
    .line 509
    .line 510
    move-object/from16 v60, v0

    .line 511
    .line 512
    const-string v0, "STAR"

    .line 513
    .line 514
    invoke-direct {v1, v2, v0, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 515
    .line 516
    .line 517
    new-instance v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 518
    .line 519
    const/16 v2, 0x24

    .line 520
    .line 521
    const v15, 0x7f080166

    .line 522
    .line 523
    .line 524
    move-object/from16 v61, v1

    .line 525
    .line 526
    const-string v1, "SUN"

    .line 527
    .line 528
    invoke-direct {v0, v2, v1, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 529
    .line 530
    .line 531
    new-instance v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 532
    .line 533
    const/16 v2, 0x25

    .line 534
    .line 535
    const v15, 0x7f080149

    .line 536
    .line 537
    .line 538
    move-object/from16 v62, v0

    .line 539
    .line 540
    const-string v0, "RSS"

    .line 541
    .line 542
    invoke-direct {v1, v2, v0, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 543
    .line 544
    .line 545
    new-instance v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 546
    .line 547
    const/16 v2, 0x26

    .line 548
    .line 549
    const v15, 0x7f080158

    .line 550
    .line 551
    .line 552
    move-object/from16 v63, v1

    .line 553
    .line 554
    const-string v1, "WHATS_NEW"

    .line 555
    .line 556
    invoke-direct {v0, v2, v1, v2, v15}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;-><init>(ILjava/lang/String;II)V

    .line 557
    .line 558
    .line 559
    sput-object v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->WHATS_NEW:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 560
    .line 561
    const/16 v1, 0x27

    .line 562
    .line 563
    new-array v1, v1, [Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 564
    .line 565
    aput-object v29, v1, v16

    .line 566
    .line 567
    aput-object v31, v1, v17

    .line 568
    .line 569
    aput-object v3, v1, v19

    .line 570
    .line 571
    aput-object v5, v1, v21

    .line 572
    .line 573
    aput-object v7, v1, v23

    .line 574
    .line 575
    aput-object v9, v1, v25

    .line 576
    .line 577
    aput-object v11, v1, v27

    .line 578
    .line 579
    aput-object v13, v1, v18

    .line 580
    .line 581
    aput-object v4, v1, v20

    .line 582
    .line 583
    aput-object v6, v1, v22

    .line 584
    .line 585
    aput-object v8, v1, v24

    .line 586
    .line 587
    aput-object v10, v1, v26

    .line 588
    .line 589
    aput-object v12, v1, v28

    .line 590
    .line 591
    aput-object v14, v1, v30

    .line 592
    .line 593
    aput-object v33, v1, v32

    .line 594
    .line 595
    aput-object v35, v1, v34

    .line 596
    .line 597
    aput-object v37, v1, v36

    .line 598
    .line 599
    aput-object v39, v1, v38

    .line 600
    .line 601
    aput-object v41, v1, v40

    .line 602
    .line 603
    aput-object v43, v1, v42

    .line 604
    .line 605
    aput-object v45, v1, v44

    .line 606
    .line 607
    aput-object v47, v1, v46

    .line 608
    .line 609
    const/16 v2, 0x16

    .line 610
    .line 611
    aput-object v48, v1, v2

    .line 612
    .line 613
    const/16 v2, 0x17

    .line 614
    .line 615
    aput-object v49, v1, v2

    .line 616
    .line 617
    const/16 v2, 0x18

    .line 618
    .line 619
    aput-object v50, v1, v2

    .line 620
    .line 621
    const/16 v2, 0x19

    .line 622
    .line 623
    aput-object v51, v1, v2

    .line 624
    .line 625
    const/16 v2, 0x1a

    .line 626
    .line 627
    aput-object v52, v1, v2

    .line 628
    .line 629
    const/16 v2, 0x1b

    .line 630
    .line 631
    aput-object v53, v1, v2

    .line 632
    .line 633
    const/16 v2, 0x1c

    .line 634
    .line 635
    aput-object v54, v1, v2

    .line 636
    .line 637
    const/16 v2, 0x1d

    .line 638
    .line 639
    aput-object v55, v1, v2

    .line 640
    .line 641
    const/16 v2, 0x1e

    .line 642
    .line 643
    aput-object v56, v1, v2

    .line 644
    .line 645
    const/16 v2, 0x1f

    .line 646
    .line 647
    aput-object v57, v1, v2

    .line 648
    .line 649
    const/16 v2, 0x20

    .line 650
    .line 651
    aput-object v58, v1, v2

    .line 652
    .line 653
    const/16 v2, 0x21

    .line 654
    .line 655
    aput-object v59, v1, v2

    .line 656
    .line 657
    const/16 v2, 0x22

    .line 658
    .line 659
    aput-object v60, v1, v2

    .line 660
    .line 661
    const/16 v2, 0x23

    .line 662
    .line 663
    aput-object v61, v1, v2

    .line 664
    .line 665
    const/16 v2, 0x24

    .line 666
    .line 667
    aput-object v62, v1, v2

    .line 668
    .line 669
    const/16 v2, 0x25

    .line 670
    .line 671
    aput-object v63, v1, v2

    .line 672
    .line 673
    const/16 v2, 0x26

    .line 674
    .line 675
    aput-object v0, v1, v2

    .line 676
    .line 677
    sput-object v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->$VALUES:[Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 678
    .line 679
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 680
    .line 681
    invoke-direct {v0, v1}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 682
    .line 683
    .line 684
    sput-object v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 685
    .line 686
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->id:I

    .line 5
    .line 6
    iput p4, p0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->drawableResource:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;
    .locals 1

    .line 1
    const-class v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->$VALUES:[Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDrawableRes()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->drawableResource:I

    .line 2
    .line 3
    return p0
.end method

.method public final getDrawableResource()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->drawableResource:I

    .line 2
    .line 3
    return p0
.end method

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->id:I

    .line 2
    .line 3
    return p0
.end method

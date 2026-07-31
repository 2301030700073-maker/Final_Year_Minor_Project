.class public abstract Lorg/wikipedia/topics/ArticleTopics;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final all:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    .line 1
    new-instance v0, Lorg/wikipedia/topics/ArticleTopic;

    .line 2
    .line 3
    const-string v1, "architecture"

    .line 4
    .line 5
    const v2, 0x7f120a4d

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v2, v1, v1}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lorg/wikipedia/topics/ArticleTopic;

    .line 12
    .line 13
    const v2, 0x7f120a4e

    .line 14
    .line 15
    .line 16
    const-string/jumbo v3, "visual-arts"

    .line 17
    .line 18
    .line 19
    const-string v4, "art"

    .line 20
    .line 21
    invoke-direct {v1, v2, v4, v3}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lorg/wikipedia/topics/ArticleTopic;

    .line 25
    .line 26
    const-string v3, "comics-and-anime"

    .line 27
    .line 28
    const v4, 0x7f120a55

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v4, v3, v3}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v3, Lorg/wikipedia/topics/ArticleTopic;

    .line 35
    .line 36
    const-string v4, "entertainment"

    .line 37
    .line 38
    const v5, 0x7f120a5a

    .line 39
    .line 40
    .line 41
    invoke-direct {v3, v5, v4, v4}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Lorg/wikipedia/topics/ArticleTopic;

    .line 45
    .line 46
    const-string v5, "fashion"

    .line 47
    .line 48
    const v6, 0x7f120a5c

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v6, v5, v5}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v5, Lorg/wikipedia/topics/ArticleTopic;

    .line 55
    .line 56
    const v6, 0x7f120a60

    .line 57
    .line 58
    .line 59
    const-string v7, "books"

    .line 60
    .line 61
    const-string v8, "literature"

    .line 62
    .line 63
    invoke-direct {v5, v6, v8, v7}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v6, Lorg/wikipedia/topics/ArticleTopic;

    .line 67
    .line 68
    const-string v7, "music"

    .line 69
    .line 70
    const v8, 0x7f120a64

    .line 71
    .line 72
    .line 73
    invoke-direct {v6, v8, v7, v7}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v7, Lorg/wikipedia/topics/ArticleTopic;

    .line 77
    .line 78
    const-string v8, "performing-arts"

    .line 79
    .line 80
    const v9, 0x7f120a67

    .line 81
    .line 82
    .line 83
    invoke-direct {v7, v9, v8, v8}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v8, Lorg/wikipedia/topics/ArticleTopic;

    .line 87
    .line 88
    const-string v9, "sports"

    .line 89
    .line 90
    const v10, 0x7f120a6d

    .line 91
    .line 92
    .line 93
    invoke-direct {v8, v10, v9, v9}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v9, Lorg/wikipedia/topics/ArticleTopic;

    .line 97
    .line 98
    const v10, 0x7f120a70

    .line 99
    .line 100
    .line 101
    const-string v11, "films"

    .line 102
    .line 103
    const-string/jumbo v12, "tv-and-film"

    .line 104
    .line 105
    .line 106
    invoke-direct {v9, v10, v12, v11}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v10, Lorg/wikipedia/topics/ArticleTopic;

    .line 110
    .line 111
    const-string/jumbo v11, "video-games"

    .line 112
    .line 113
    .line 114
    const v12, 0x7f120a71

    .line 115
    .line 116
    .line 117
    invoke-direct {v10, v12, v11, v11}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v11, Lorg/wikipedia/topics/ArticleTopic;

    .line 121
    .line 122
    const-string v12, "biography"

    .line 123
    .line 124
    const v13, 0x7f120a50

    .line 125
    .line 126
    .line 127
    invoke-direct {v11, v13, v12, v12}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v12, Lorg/wikipedia/topics/ArticleTopic;

    .line 131
    .line 132
    const-string/jumbo v13, "women"

    .line 133
    .line 134
    .line 135
    const v14, 0x7f120a72

    .line 136
    .line 137
    .line 138
    invoke-direct {v12, v14, v13, v13}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    new-instance v13, Lorg/wikipedia/topics/ArticleTopic;

    .line 142
    .line 143
    const-string v14, "business-and-economics"

    .line 144
    .line 145
    const v15, 0x7f120a52

    .line 146
    .line 147
    .line 148
    invoke-direct {v13, v15, v14, v14}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance v14, Lorg/wikipedia/topics/ArticleTopic;

    .line 152
    .line 153
    const-string v15, "education"

    .line 154
    .line 155
    move-object/from16 v16, v0

    .line 156
    .line 157
    const v0, 0x7f120a58

    .line 158
    .line 159
    .line 160
    invoke-direct {v14, v0, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance v0, Lorg/wikipedia/topics/ArticleTopic;

    .line 164
    .line 165
    const-string v15, "food-and-drink"

    .line 166
    .line 167
    move-object/from16 v17, v1

    .line 168
    .line 169
    const v1, 0x7f120a5d

    .line 170
    .line 171
    .line 172
    invoke-direct {v0, v1, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance v1, Lorg/wikipedia/topics/ArticleTopic;

    .line 176
    .line 177
    const-string v15, "history"

    .line 178
    .line 179
    move-object/from16 v18, v0

    .line 180
    .line 181
    const v0, 0x7f120a5f

    .line 182
    .line 183
    .line 184
    invoke-direct {v1, v0, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    new-instance v0, Lorg/wikipedia/topics/ArticleTopic;

    .line 188
    .line 189
    const-string v15, "military-and-warfare"

    .line 190
    .line 191
    move-object/from16 v19, v1

    .line 192
    .line 193
    const v1, 0x7f120a63

    .line 194
    .line 195
    .line 196
    invoke-direct {v0, v1, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    new-instance v1, Lorg/wikipedia/topics/ArticleTopic;

    .line 200
    .line 201
    const-string v15, "philosophy-and-religion"

    .line 202
    .line 203
    move-object/from16 v20, v0

    .line 204
    .line 205
    const v0, 0x7f120a68

    .line 206
    .line 207
    .line 208
    invoke-direct {v1, v0, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    new-instance v0, Lorg/wikipedia/topics/ArticleTopic;

    .line 212
    .line 213
    const-string v15, "politics-and-government"

    .line 214
    .line 215
    move-object/from16 v21, v1

    .line 216
    .line 217
    const v1, 0x7f120a6a

    .line 218
    .line 219
    .line 220
    invoke-direct {v0, v1, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    new-instance v1, Lorg/wikipedia/topics/ArticleTopic;

    .line 224
    .line 225
    const-string v15, "society"

    .line 226
    .line 227
    move-object/from16 v22, v0

    .line 228
    .line 229
    const v0, 0x7f120a6b

    .line 230
    .line 231
    .line 232
    invoke-direct {v1, v0, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    new-instance v0, Lorg/wikipedia/topics/ArticleTopic;

    .line 236
    .line 237
    const-string/jumbo v15, "transportation"

    .line 238
    .line 239
    .line 240
    move-object/from16 v23, v1

    .line 241
    .line 242
    const v1, 0x7f120a6f

    .line 243
    .line 244
    .line 245
    invoke-direct {v0, v1, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    new-instance v1, Lorg/wikipedia/topics/ArticleTopic;

    .line 249
    .line 250
    const-string v15, "biology"

    .line 251
    .line 252
    move-object/from16 v24, v0

    .line 253
    .line 254
    const v0, 0x7f120a51

    .line 255
    .line 256
    .line 257
    invoke-direct {v1, v0, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    new-instance v0, Lorg/wikipedia/topics/ArticleTopic;

    .line 261
    .line 262
    const-string v15, "chemistry"

    .line 263
    .line 264
    move-object/from16 v25, v1

    .line 265
    .line 266
    const v1, 0x7f120a54

    .line 267
    .line 268
    .line 269
    invoke-direct {v0, v1, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    new-instance v1, Lorg/wikipedia/topics/ArticleTopic;

    .line 273
    .line 274
    const v15, 0x7f120a56

    .line 275
    .line 276
    .line 277
    move-object/from16 v26, v0

    .line 278
    .line 279
    const-string v0, "internet-culture"

    .line 280
    .line 281
    move-object/from16 v27, v2

    .line 282
    .line 283
    const-string v2, "computers-and-internet"

    .line 284
    .line 285
    invoke-direct {v1, v15, v2, v0}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    new-instance v0, Lorg/wikipedia/topics/ArticleTopic;

    .line 289
    .line 290
    const v2, 0x7f120a57

    .line 291
    .line 292
    .line 293
    const-string v15, "geographical"

    .line 294
    .line 295
    move-object/from16 v28, v1

    .line 296
    .line 297
    const-string v1, "earth-and-environment"

    .line 298
    .line 299
    invoke-direct {v0, v2, v1, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    new-instance v1, Lorg/wikipedia/topics/ArticleTopic;

    .line 303
    .line 304
    const-string v2, "engineering"

    .line 305
    .line 306
    const v15, 0x7f120a59

    .line 307
    .line 308
    .line 309
    invoke-direct {v1, v15, v2, v2}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    new-instance v2, Lorg/wikipedia/topics/ArticleTopic;

    .line 313
    .line 314
    const v15, 0x7f120a5e

    .line 315
    .line 316
    .line 317
    move-object/from16 v29, v0

    .line 318
    .line 319
    const-string v0, "stem"

    .line 320
    .line 321
    move-object/from16 v30, v1

    .line 322
    .line 323
    const-string v1, "general-science"

    .line 324
    .line 325
    invoke-direct {v2, v15, v1, v0}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    new-instance v0, Lorg/wikipedia/topics/ArticleTopic;

    .line 329
    .line 330
    const-string v1, "mathematics"

    .line 331
    .line 332
    const v15, 0x7f120a61

    .line 333
    .line 334
    .line 335
    invoke-direct {v0, v15, v1, v1}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    new-instance v1, Lorg/wikipedia/topics/ArticleTopic;

    .line 339
    .line 340
    const-string v15, "medicine-and-health"

    .line 341
    .line 342
    move-object/from16 v31, v0

    .line 343
    .line 344
    const v0, 0x7f120a62

    .line 345
    .line 346
    .line 347
    invoke-direct {v1, v0, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    new-instance v0, Lorg/wikipedia/topics/ArticleTopic;

    .line 351
    .line 352
    const-string v15, "physics"

    .line 353
    .line 354
    move-object/from16 v32, v1

    .line 355
    .line 356
    const v1, 0x7f120a69

    .line 357
    .line 358
    .line 359
    invoke-direct {v0, v1, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    new-instance v1, Lorg/wikipedia/topics/ArticleTopic;

    .line 363
    .line 364
    const-string v15, "technology"

    .line 365
    .line 366
    move-object/from16 v33, v0

    .line 367
    .line 368
    const v0, 0x7f120a6e

    .line 369
    .line 370
    .line 371
    invoke-direct {v1, v0, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    new-instance v0, Lorg/wikipedia/topics/ArticleTopic;

    .line 375
    .line 376
    const-string v15, "africa"

    .line 377
    .line 378
    move-object/from16 v34, v1

    .line 379
    .line 380
    const v1, 0x7f120a4c

    .line 381
    .line 382
    .line 383
    invoke-direct {v0, v1, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    new-instance v1, Lorg/wikipedia/topics/ArticleTopic;

    .line 387
    .line 388
    const-string v15, "asia"

    .line 389
    .line 390
    move-object/from16 v35, v0

    .line 391
    .line 392
    const v0, 0x7f120a4f

    .line 393
    .line 394
    .line 395
    invoke-direct {v1, v0, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    new-instance v0, Lorg/wikipedia/topics/ArticleTopic;

    .line 399
    .line 400
    const-string v15, "central-america"

    .line 401
    .line 402
    move-object/from16 v36, v1

    .line 403
    .line 404
    const v1, 0x7f120a53

    .line 405
    .line 406
    .line 407
    invoke-direct {v0, v1, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    new-instance v1, Lorg/wikipedia/topics/ArticleTopic;

    .line 411
    .line 412
    const-string v15, "europe"

    .line 413
    .line 414
    move-object/from16 v37, v0

    .line 415
    .line 416
    const v0, 0x7f120a5b

    .line 417
    .line 418
    .line 419
    invoke-direct {v1, v0, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    new-instance v0, Lorg/wikipedia/topics/ArticleTopic;

    .line 423
    .line 424
    const-string v15, "north-america"

    .line 425
    .line 426
    move-object/from16 v38, v1

    .line 427
    .line 428
    const v1, 0x7f120a65

    .line 429
    .line 430
    .line 431
    invoke-direct {v0, v1, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    new-instance v1, Lorg/wikipedia/topics/ArticleTopic;

    .line 435
    .line 436
    const-string v15, "oceania"

    .line 437
    .line 438
    move-object/from16 v39, v0

    .line 439
    .line 440
    const v0, 0x7f120a66

    .line 441
    .line 442
    .line 443
    invoke-direct {v1, v0, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    new-instance v0, Lorg/wikipedia/topics/ArticleTopic;

    .line 447
    .line 448
    const-string v15, "south-america"

    .line 449
    .line 450
    move-object/from16 v40, v1

    .line 451
    .line 452
    const v1, 0x7f120a6c

    .line 453
    .line 454
    .line 455
    invoke-direct {v0, v1, v15, v15}, Lorg/wikipedia/topics/ArticleTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    const/16 v1, 0x27

    .line 459
    .line 460
    new-array v1, v1, [Lorg/wikipedia/topics/ArticleTopic;

    .line 461
    .line 462
    const/4 v15, 0x0

    .line 463
    aput-object v16, v1, v15

    .line 464
    .line 465
    const/4 v15, 0x1

    .line 466
    aput-object v17, v1, v15

    .line 467
    .line 468
    const/4 v15, 0x2

    .line 469
    aput-object v27, v1, v15

    .line 470
    .line 471
    const/4 v15, 0x3

    .line 472
    aput-object v3, v1, v15

    .line 473
    .line 474
    const/4 v3, 0x4

    .line 475
    aput-object v4, v1, v3

    .line 476
    .line 477
    const/4 v3, 0x5

    .line 478
    aput-object v5, v1, v3

    .line 479
    .line 480
    const/4 v3, 0x6

    .line 481
    aput-object v6, v1, v3

    .line 482
    .line 483
    const/4 v3, 0x7

    .line 484
    aput-object v7, v1, v3

    .line 485
    .line 486
    const/16 v3, 0x8

    .line 487
    .line 488
    aput-object v8, v1, v3

    .line 489
    .line 490
    const/16 v3, 0x9

    .line 491
    .line 492
    aput-object v9, v1, v3

    .line 493
    .line 494
    const/16 v3, 0xa

    .line 495
    .line 496
    aput-object v10, v1, v3

    .line 497
    .line 498
    const/16 v3, 0xb

    .line 499
    .line 500
    aput-object v11, v1, v3

    .line 501
    .line 502
    const/16 v3, 0xc

    .line 503
    .line 504
    aput-object v12, v1, v3

    .line 505
    .line 506
    const/16 v3, 0xd

    .line 507
    .line 508
    aput-object v13, v1, v3

    .line 509
    .line 510
    const/16 v3, 0xe

    .line 511
    .line 512
    aput-object v14, v1, v3

    .line 513
    .line 514
    const/16 v3, 0xf

    .line 515
    .line 516
    aput-object v18, v1, v3

    .line 517
    .line 518
    const/16 v3, 0x10

    .line 519
    .line 520
    aput-object v19, v1, v3

    .line 521
    .line 522
    const/16 v3, 0x11

    .line 523
    .line 524
    aput-object v20, v1, v3

    .line 525
    .line 526
    const/16 v3, 0x12

    .line 527
    .line 528
    aput-object v21, v1, v3

    .line 529
    .line 530
    const/16 v3, 0x13

    .line 531
    .line 532
    aput-object v22, v1, v3

    .line 533
    .line 534
    const/16 v3, 0x14

    .line 535
    .line 536
    aput-object v23, v1, v3

    .line 537
    .line 538
    const/16 v3, 0x15

    .line 539
    .line 540
    aput-object v24, v1, v3

    .line 541
    .line 542
    const/16 v3, 0x16

    .line 543
    .line 544
    aput-object v25, v1, v3

    .line 545
    .line 546
    const/16 v3, 0x17

    .line 547
    .line 548
    aput-object v26, v1, v3

    .line 549
    .line 550
    const/16 v3, 0x18

    .line 551
    .line 552
    aput-object v28, v1, v3

    .line 553
    .line 554
    const/16 v3, 0x19

    .line 555
    .line 556
    aput-object v29, v1, v3

    .line 557
    .line 558
    const/16 v3, 0x1a

    .line 559
    .line 560
    aput-object v30, v1, v3

    .line 561
    .line 562
    const/16 v3, 0x1b

    .line 563
    .line 564
    aput-object v2, v1, v3

    .line 565
    .line 566
    const/16 v2, 0x1c

    .line 567
    .line 568
    aput-object v31, v1, v2

    .line 569
    .line 570
    const/16 v2, 0x1d

    .line 571
    .line 572
    aput-object v32, v1, v2

    .line 573
    .line 574
    const/16 v2, 0x1e

    .line 575
    .line 576
    aput-object v33, v1, v2

    .line 577
    .line 578
    const/16 v2, 0x1f

    .line 579
    .line 580
    aput-object v34, v1, v2

    .line 581
    .line 582
    const/16 v2, 0x20

    .line 583
    .line 584
    aput-object v35, v1, v2

    .line 585
    .line 586
    const/16 v2, 0x21

    .line 587
    .line 588
    aput-object v36, v1, v2

    .line 589
    .line 590
    const/16 v2, 0x22

    .line 591
    .line 592
    aput-object v37, v1, v2

    .line 593
    .line 594
    const/16 v2, 0x23

    .line 595
    .line 596
    aput-object v38, v1, v2

    .line 597
    .line 598
    const/16 v2, 0x24

    .line 599
    .line 600
    aput-object v39, v1, v2

    .line 601
    .line 602
    const/16 v2, 0x25

    .line 603
    .line 604
    aput-object v40, v1, v2

    .line 605
    .line 606
    const/16 v2, 0x26

    .line 607
    .line 608
    aput-object v0, v1, v2

    .line 609
    .line 610
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    sput-object v0, Lorg/wikipedia/topics/ArticleTopics;->all:Ljava/util/List;

    .line 615
    .line 616
    return-void
.end method

.class public final Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# static fields
.field public static final MODEL_TO_DISPLAY_SIZE_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v0, Landroid/util/Size;

    .line 2
    .line 3
    const/16 v1, 0x438

    .line 4
    .line 5
    const/16 v2, 0x924

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lkotlin/Pair;

    .line 11
    .line 12
    const-string v4, "REDMI NOTE 8"

    .line 13
    .line 14
    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/util/Size;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Lkotlin/Pair;

    .line 23
    .line 24
    const-string v5, "REDMI NOTE 7"

    .line 25
    .line 26
    invoke-direct {v4, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroid/util/Size;

    .line 30
    .line 31
    const/16 v5, 0x618

    .line 32
    .line 33
    const/16 v6, 0x2d0

    .line 34
    .line 35
    invoke-direct {v0, v6, v5}, Landroid/util/Size;-><init>(II)V

    .line 36
    .line 37
    .line 38
    new-instance v5, Lkotlin/Pair;

    .line 39
    .line 40
    const-string v7, "SM-A207M"

    .line 41
    .line 42
    invoke-direct {v5, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Landroid/util/Size;

    .line 46
    .line 47
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 48
    .line 49
    .line 50
    new-instance v7, Lkotlin/Pair;

    .line 51
    .line 52
    const-string v8, "REDMI NOTE 7S"

    .line 53
    .line 54
    invoke-direct {v7, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Landroid/util/Size;

    .line 58
    .line 59
    const/16 v8, 0x640

    .line 60
    .line 61
    invoke-direct {v0, v6, v8}, Landroid/util/Size;-><init>(II)V

    .line 62
    .line 63
    .line 64
    new-instance v9, Lkotlin/Pair;

    .line 65
    .line 66
    const-string v10, "SM-A127F"

    .line 67
    .line 68
    invoke-direct {v9, v10, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Landroid/util/Size;

    .line 72
    .line 73
    const/16 v10, 0x960

    .line 74
    .line 75
    invoke-direct {v0, v1, v10}, Landroid/util/Size;-><init>(II)V

    .line 76
    .line 77
    .line 78
    new-instance v11, Lkotlin/Pair;

    .line 79
    .line 80
    const-string v12, "SM-A536E"

    .line 81
    .line 82
    invoke-direct {v11, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Landroid/util/Size;

    .line 86
    .line 87
    invoke-direct {v0, v6, v8}, Landroid/util/Size;-><init>(II)V

    .line 88
    .line 89
    .line 90
    new-instance v12, Lkotlin/Pair;

    .line 91
    .line 92
    const-string v13, "220233L2I"

    .line 93
    .line 94
    invoke-direct {v12, v13, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Landroid/util/Size;

    .line 98
    .line 99
    invoke-direct {v0, v6, v8}, Landroid/util/Size;-><init>(II)V

    .line 100
    .line 101
    .line 102
    new-instance v13, Lkotlin/Pair;

    .line 103
    .line 104
    const-string v14, "V2149"

    .line 105
    .line 106
    invoke-direct {v13, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Landroid/util/Size;

    .line 110
    .line 111
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 112
    .line 113
    .line 114
    new-instance v2, Lkotlin/Pair;

    .line 115
    .line 116
    const-string v14, "VIVO 1920"

    .line 117
    .line 118
    invoke-direct {v2, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Landroid/util/Size;

    .line 122
    .line 123
    invoke-direct {v0, v1, v10}, Landroid/util/Size;-><init>(II)V

    .line 124
    .line 125
    .line 126
    new-instance v14, Lkotlin/Pair;

    .line 127
    .line 128
    const-string v15, "CPH2223"

    .line 129
    .line 130
    invoke-direct {v14, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    new-instance v0, Landroid/util/Size;

    .line 134
    .line 135
    invoke-direct {v0, v6, v8}, Landroid/util/Size;-><init>(II)V

    .line 136
    .line 137
    .line 138
    new-instance v15, Lkotlin/Pair;

    .line 139
    .line 140
    const-string v10, "V2029"

    .line 141
    .line 142
    invoke-direct {v15, v10, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    new-instance v0, Landroid/util/Size;

    .line 146
    .line 147
    const/16 v10, 0x5f0

    .line 148
    .line 149
    invoke-direct {v0, v6, v10}, Landroid/util/Size;-><init>(II)V

    .line 150
    .line 151
    .line 152
    new-instance v1, Lkotlin/Pair;

    .line 153
    .line 154
    const-string v8, "CPH1901"

    .line 155
    .line 156
    invoke-direct {v1, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Landroid/util/Size;

    .line 160
    .line 161
    invoke-direct {v0, v6, v10}, Landroid/util/Size;-><init>(II)V

    .line 162
    .line 163
    .line 164
    new-instance v8, Lkotlin/Pair;

    .line 165
    .line 166
    const-string v10, "REDMI Y3"

    .line 167
    .line 168
    invoke-direct {v8, v10, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    new-instance v0, Landroid/util/Size;

    .line 172
    .line 173
    const/16 v10, 0x640

    .line 174
    .line 175
    invoke-direct {v0, v6, v10}, Landroid/util/Size;-><init>(II)V

    .line 176
    .line 177
    .line 178
    new-instance v10, Lkotlin/Pair;

    .line 179
    .line 180
    const-string v6, "SM-A045M"

    .line 181
    .line 182
    invoke-direct {v10, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    new-instance v0, Landroid/util/Size;

    .line 186
    .line 187
    const/16 v6, 0x968

    .line 188
    .line 189
    move-object/from16 v20, v1

    .line 190
    .line 191
    const/16 v1, 0x438

    .line 192
    .line 193
    invoke-direct {v0, v1, v6}, Landroid/util/Size;-><init>(II)V

    .line 194
    .line 195
    .line 196
    new-instance v1, Lkotlin/Pair;

    .line 197
    .line 198
    const-string v6, "SM-A146U"

    .line 199
    .line 200
    invoke-direct {v1, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    new-instance v0, Landroid/util/Size;

    .line 204
    .line 205
    move-object/from16 v22, v1

    .line 206
    .line 207
    const/16 v1, 0x5f0

    .line 208
    .line 209
    const/16 v6, 0x2d0

    .line 210
    .line 211
    invoke-direct {v0, v6, v1}, Landroid/util/Size;-><init>(II)V

    .line 212
    .line 213
    .line 214
    new-instance v1, Lkotlin/Pair;

    .line 215
    .line 216
    const-string v6, "CPH1909"

    .line 217
    .line 218
    invoke-direct {v1, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    new-instance v0, Landroid/util/Size;

    .line 222
    .line 223
    move-object/from16 v23, v1

    .line 224
    .line 225
    const/16 v1, 0x5f0

    .line 226
    .line 227
    const/16 v6, 0x2d0

    .line 228
    .line 229
    invoke-direct {v0, v6, v1}, Landroid/util/Size;-><init>(II)V

    .line 230
    .line 231
    .line 232
    new-instance v1, Lkotlin/Pair;

    .line 233
    .line 234
    const-string v6, "NOKIA 4.2"

    .line 235
    .line 236
    invoke-direct {v1, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    new-instance v0, Landroid/util/Size;

    .line 240
    .line 241
    const/16 v6, 0x5a0

    .line 242
    .line 243
    move-object/from16 v24, v1

    .line 244
    .line 245
    const/16 v1, 0xb90

    .line 246
    .line 247
    invoke-direct {v0, v6, v1}, Landroid/util/Size;-><init>(II)V

    .line 248
    .line 249
    .line 250
    new-instance v1, Lkotlin/Pair;

    .line 251
    .line 252
    const-string v6, "SM-G960U1"

    .line 253
    .line 254
    invoke-direct {v1, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    new-instance v0, Landroid/util/Size;

    .line 258
    .line 259
    move-object/from16 v21, v1

    .line 260
    .line 261
    const/16 v1, 0x968

    .line 262
    .line 263
    const/16 v6, 0x438

    .line 264
    .line 265
    invoke-direct {v0, v6, v1}, Landroid/util/Size;-><init>(II)V

    .line 266
    .line 267
    .line 268
    new-instance v1, Lkotlin/Pair;

    .line 269
    .line 270
    const-string v6, "SM-A137F"

    .line 271
    .line 272
    invoke-direct {v1, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Landroid/util/Size;

    .line 276
    .line 277
    move-object/from16 v18, v1

    .line 278
    .line 279
    const/16 v1, 0x5f0

    .line 280
    .line 281
    const/16 v6, 0x2d0

    .line 282
    .line 283
    invoke-direct {v0, v6, v1}, Landroid/util/Size;-><init>(II)V

    .line 284
    .line 285
    .line 286
    new-instance v1, Lkotlin/Pair;

    .line 287
    .line 288
    const-string v6, "VIVO 1816"

    .line 289
    .line 290
    invoke-direct {v1, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    new-instance v0, Landroid/util/Size;

    .line 294
    .line 295
    const/16 v6, 0x64c

    .line 296
    .line 297
    move-object/from16 v25, v1

    .line 298
    .line 299
    const/16 v1, 0x2d0

    .line 300
    .line 301
    invoke-direct {v0, v1, v6}, Landroid/util/Size;-><init>(II)V

    .line 302
    .line 303
    .line 304
    new-instance v6, Lkotlin/Pair;

    .line 305
    .line 306
    const-string v1, "INFINIX X6817"

    .line 307
    .line 308
    invoke-direct {v6, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    new-instance v0, Landroid/util/Size;

    .line 312
    .line 313
    move-object/from16 v17, v2

    .line 314
    .line 315
    const/16 v1, 0x2d0

    .line 316
    .line 317
    const/16 v2, 0x640

    .line 318
    .line 319
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 320
    .line 321
    .line 322
    new-instance v1, Lkotlin/Pair;

    .line 323
    .line 324
    const-string v2, "SM-A037F"

    .line 325
    .line 326
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    new-instance v0, Landroid/util/Size;

    .line 330
    .line 331
    move-object/from16 v19, v1

    .line 332
    .line 333
    const/16 v1, 0x640

    .line 334
    .line 335
    const/16 v2, 0x2d0

    .line 336
    .line 337
    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    .line 338
    .line 339
    .line 340
    new-instance v1, Lkotlin/Pair;

    .line 341
    .line 342
    const-string v2, "NOKIA 2.4"

    .line 343
    .line 344
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    new-instance v0, Landroid/util/Size;

    .line 348
    .line 349
    move-object/from16 v26, v1

    .line 350
    .line 351
    const/16 v1, 0x640

    .line 352
    .line 353
    const/16 v2, 0x2d0

    .line 354
    .line 355
    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    .line 356
    .line 357
    .line 358
    new-instance v1, Lkotlin/Pair;

    .line 359
    .line 360
    const-string v2, "SM-A125M"

    .line 361
    .line 362
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    new-instance v0, Landroid/util/Size;

    .line 366
    .line 367
    move-object/from16 v16, v1

    .line 368
    .line 369
    const/16 v1, 0x960

    .line 370
    .line 371
    const/16 v2, 0x438

    .line 372
    .line 373
    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    .line 374
    .line 375
    .line 376
    new-instance v1, Lkotlin/Pair;

    .line 377
    .line 378
    const-string v2, "INFINIX X670"

    .line 379
    .line 380
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    const/16 v0, 0x19

    .line 384
    .line 385
    new-array v0, v0, [Lkotlin/Pair;

    .line 386
    .line 387
    const/4 v2, 0x0

    .line 388
    aput-object v3, v0, v2

    .line 389
    .line 390
    const/4 v2, 0x1

    .line 391
    aput-object v4, v0, v2

    .line 392
    .line 393
    const/4 v2, 0x2

    .line 394
    aput-object v5, v0, v2

    .line 395
    .line 396
    const/4 v2, 0x3

    .line 397
    aput-object v7, v0, v2

    .line 398
    .line 399
    const/4 v2, 0x4

    .line 400
    aput-object v9, v0, v2

    .line 401
    .line 402
    const/4 v2, 0x5

    .line 403
    aput-object v11, v0, v2

    .line 404
    .line 405
    const/4 v2, 0x6

    .line 406
    aput-object v12, v0, v2

    .line 407
    .line 408
    const/4 v2, 0x7

    .line 409
    aput-object v13, v0, v2

    .line 410
    .line 411
    const/16 v2, 0x8

    .line 412
    .line 413
    aput-object v17, v0, v2

    .line 414
    .line 415
    const/16 v2, 0x9

    .line 416
    .line 417
    aput-object v14, v0, v2

    .line 418
    .line 419
    const/16 v2, 0xa

    .line 420
    .line 421
    aput-object v15, v0, v2

    .line 422
    .line 423
    const/16 v2, 0xb

    .line 424
    .line 425
    aput-object v20, v0, v2

    .line 426
    .line 427
    const/16 v2, 0xc

    .line 428
    .line 429
    aput-object v8, v0, v2

    .line 430
    .line 431
    const/16 v2, 0xd

    .line 432
    .line 433
    aput-object v10, v0, v2

    .line 434
    .line 435
    const/16 v2, 0xe

    .line 436
    .line 437
    aput-object v22, v0, v2

    .line 438
    .line 439
    const/16 v2, 0xf

    .line 440
    .line 441
    aput-object v23, v0, v2

    .line 442
    .line 443
    const/16 v2, 0x10

    .line 444
    .line 445
    aput-object v24, v0, v2

    .line 446
    .line 447
    const/16 v2, 0x11

    .line 448
    .line 449
    aput-object v21, v0, v2

    .line 450
    .line 451
    const/16 v2, 0x12

    .line 452
    .line 453
    aput-object v18, v0, v2

    .line 454
    .line 455
    const/16 v2, 0x13

    .line 456
    .line 457
    aput-object v25, v0, v2

    .line 458
    .line 459
    const/16 v2, 0x14

    .line 460
    .line 461
    aput-object v6, v0, v2

    .line 462
    .line 463
    const/16 v2, 0x15

    .line 464
    .line 465
    aput-object v19, v0, v2

    .line 466
    .line 467
    const/16 v2, 0x16

    .line 468
    .line 469
    aput-object v26, v0, v2

    .line 470
    .line 471
    const/16 v2, 0x17

    .line 472
    .line 473
    aput-object v16, v0, v2

    .line 474
    .line 475
    const/16 v2, 0x18

    .line 476
    .line 477
    aput-object v1, v0, v2

    .line 478
    .line 479
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    sput-object v0, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;->MODEL_TO_DISPLAY_SIZE_MAP:Ljava/util/Map;

    .line 484
    .line 485
    return-void
.end method

.class public final enum Lorg/wikipedia/notifications/NotificationCategory;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/model/EnumCode;


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/notifications/NotificationCategory;

.field public static final enum ALPHA_BUILD_CHECKER:Lorg/wikipedia/notifications/NotificationCategory;

.field public static final enum ARTICLE_LINKED:Lorg/wikipedia/notifications/NotificationCategory;

.field public static final Companion:Lorg/wikipedia/notifications/NotificationCategory$Companion;

.field public static final enum EDIT_THANK:Lorg/wikipedia/notifications/NotificationCategory;

.field public static final enum EDIT_USER_TALK:Lorg/wikipedia/notifications/NotificationCategory;

.field public static final enum EMAIL_USER:Lorg/wikipedia/notifications/NotificationCategory;

.field private static final FILTERS_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/notifications/NotificationCategory;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum GAMES:Lorg/wikipedia/notifications/NotificationCategory;

.field public static final enum LOGIN_FAIL:Lorg/wikipedia/notifications/NotificationCategory;

.field public static final enum MENTION:Lorg/wikipedia/notifications/NotificationCategory;

.field private static final MENTIONS_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/notifications/NotificationCategory;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MILESTONE_EDIT:Lorg/wikipedia/notifications/NotificationCategory;

.field public static final enum READING_LIST_SYNCING:Lorg/wikipedia/notifications/NotificationCategory;

.field public static final enum RECOMMENDED_READING_LISTS:Lorg/wikipedia/notifications/NotificationCategory;

.field public static final enum REVERTED:Lorg/wikipedia/notifications/NotificationCategory;

.field public static final enum SYNCING:Lorg/wikipedia/notifications/NotificationCategory;

.field public static final enum SYSTEM:Lorg/wikipedia/notifications/NotificationCategory;

.field public static final enum USER_RIGHTS:Lorg/wikipedia/notifications/NotificationCategory;


# instance fields
.field private final description:I

.field private final group:Ljava/lang/String;

.field private final iconColor:I

.field private final iconResId:I

.field private final id:Ljava/lang/String;

.field private final importance:I

.field private final title:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v0, Lorg/wikipedia/notifications/NotificationCategory;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/16 v8, 0x70

    .line 5
    .line 6
    const-string v1, "SYSTEM"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "system"

    .line 10
    .line 11
    const v4, 0x7f1206ce

    .line 12
    .line 13
    .line 14
    const v5, 0x7f1206b2

    .line 15
    .line 16
    .line 17
    const v6, 0x7f0801e6

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/notifications/NotificationCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lorg/wikipedia/notifications/NotificationCategory;->SYSTEM:Lorg/wikipedia/notifications/NotificationCategory;

    .line 24
    .line 25
    new-instance v1, Lorg/wikipedia/notifications/NotificationCategory;

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    const/16 v9, 0x70

    .line 29
    .line 30
    const-string v2, "MILESTONE_EDIT"

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    const-string v4, "thank-you-edit"

    .line 34
    .line 35
    const v5, 0x7f1206cb

    .line 36
    .line 37
    .line 38
    const v6, 0x7f1206af

    .line 39
    .line 40
    .line 41
    const v7, 0x7f0801b2

    .line 42
    .line 43
    .line 44
    invoke-direct/range {v1 .. v9}, Lorg/wikipedia/notifications/NotificationCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    .line 45
    .line 46
    .line 47
    sput-object v1, Lorg/wikipedia/notifications/NotificationCategory;->MILESTONE_EDIT:Lorg/wikipedia/notifications/NotificationCategory;

    .line 48
    .line 49
    new-instance v2, Lorg/wikipedia/notifications/NotificationCategory;

    .line 50
    .line 51
    const/4 v9, 0x4

    .line 52
    const/16 v10, 0x50

    .line 53
    .line 54
    const-string v3, "EDIT_USER_TALK"

    .line 55
    .line 56
    const/4 v4, 0x2

    .line 57
    const-string v5, "edit-user-talk"

    .line 58
    .line 59
    const v6, 0x7f1206d1

    .line 60
    .line 61
    .line 62
    const v7, 0x7f1206b5

    .line 63
    .line 64
    .line 65
    const v8, 0x7f0801b7

    .line 66
    .line 67
    .line 68
    invoke-direct/range {v2 .. v10}, Lorg/wikipedia/notifications/NotificationCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    .line 69
    .line 70
    .line 71
    sput-object v2, Lorg/wikipedia/notifications/NotificationCategory;->EDIT_USER_TALK:Lorg/wikipedia/notifications/NotificationCategory;

    .line 72
    .line 73
    new-instance v3, Lorg/wikipedia/notifications/NotificationCategory;

    .line 74
    .line 75
    const/4 v10, 0x0

    .line 76
    const/16 v11, 0x70

    .line 77
    .line 78
    const-string v4, "EDIT_THANK"

    .line 79
    .line 80
    const/4 v5, 0x3

    .line 81
    const-string v6, "edit-thank"

    .line 82
    .line 83
    const v7, 0x7f1206cf

    .line 84
    .line 85
    .line 86
    const v8, 0x7f1206b3

    .line 87
    .line 88
    .line 89
    const v9, 0x7f0801b5

    .line 90
    .line 91
    .line 92
    invoke-direct/range {v3 .. v11}, Lorg/wikipedia/notifications/NotificationCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    .line 93
    .line 94
    .line 95
    sput-object v3, Lorg/wikipedia/notifications/NotificationCategory;->EDIT_THANK:Lorg/wikipedia/notifications/NotificationCategory;

    .line 96
    .line 97
    new-instance v4, Lorg/wikipedia/notifications/NotificationCategory;

    .line 98
    .line 99
    const/4 v11, 0x4

    .line 100
    const/16 v12, 0x40

    .line 101
    .line 102
    const-string v5, "REVERTED"

    .line 103
    .line 104
    const/4 v6, 0x4

    .line 105
    const-string v7, "reverted"

    .line 106
    .line 107
    const v8, 0x7f1206cd

    .line 108
    .line 109
    .line 110
    const v9, 0x7f1206b1

    .line 111
    .line 112
    .line 113
    const v10, 0x7f0801b4

    .line 114
    .line 115
    .line 116
    invoke-direct/range {v4 .. v12}, Lorg/wikipedia/notifications/NotificationCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    .line 117
    .line 118
    .line 119
    sput-object v4, Lorg/wikipedia/notifications/NotificationCategory;->REVERTED:Lorg/wikipedia/notifications/NotificationCategory;

    .line 120
    .line 121
    new-instance v5, Lorg/wikipedia/notifications/NotificationCategory;

    .line 122
    .line 123
    const/4 v12, 0x0

    .line 124
    const/16 v13, 0x60

    .line 125
    .line 126
    const-string v6, "LOGIN_FAIL"

    .line 127
    .line 128
    const/4 v7, 0x5

    .line 129
    const-string v8, "login-fail"

    .line 130
    .line 131
    const v9, 0x7f1206c9

    .line 132
    .line 133
    .line 134
    const v10, 0x7f1206ad

    .line 135
    .line 136
    .line 137
    const v11, 0x7f0801ae

    .line 138
    .line 139
    .line 140
    invoke-direct/range {v5 .. v13}, Lorg/wikipedia/notifications/NotificationCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    .line 141
    .line 142
    .line 143
    sput-object v5, Lorg/wikipedia/notifications/NotificationCategory;->LOGIN_FAIL:Lorg/wikipedia/notifications/NotificationCategory;

    .line 144
    .line 145
    new-instance v6, Lorg/wikipedia/notifications/NotificationCategory;

    .line 146
    .line 147
    const/4 v13, 0x4

    .line 148
    const/16 v14, 0x50

    .line 149
    .line 150
    const-string v7, "MENTION"

    .line 151
    .line 152
    const/4 v8, 0x6

    .line 153
    const-string v9, "mention"

    .line 154
    .line 155
    const v10, 0x7f1206ca

    .line 156
    .line 157
    .line 158
    const v11, 0x7f1206ae

    .line 159
    .line 160
    .line 161
    const v12, 0x7f0801b1

    .line 162
    .line 163
    .line 164
    invoke-direct/range {v6 .. v14}, Lorg/wikipedia/notifications/NotificationCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    .line 165
    .line 166
    .line 167
    sput-object v6, Lorg/wikipedia/notifications/NotificationCategory;->MENTION:Lorg/wikipedia/notifications/NotificationCategory;

    .line 168
    .line 169
    new-instance v7, Lorg/wikipedia/notifications/NotificationCategory;

    .line 170
    .line 171
    const/4 v14, 0x4

    .line 172
    const/16 v15, 0x50

    .line 173
    .line 174
    const-string v8, "EMAIL_USER"

    .line 175
    .line 176
    const/4 v9, 0x7

    .line 177
    const-string v10, "emailuser"

    .line 178
    .line 179
    const v11, 0x7f1206c8

    .line 180
    .line 181
    .line 182
    const v12, 0x7f1206ac

    .line 183
    .line 184
    .line 185
    const v13, 0x7f0801b0

    .line 186
    .line 187
    .line 188
    invoke-direct/range {v7 .. v15}, Lorg/wikipedia/notifications/NotificationCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    .line 189
    .line 190
    .line 191
    sput-object v7, Lorg/wikipedia/notifications/NotificationCategory;->EMAIL_USER:Lorg/wikipedia/notifications/NotificationCategory;

    .line 192
    .line 193
    new-instance v8, Lorg/wikipedia/notifications/NotificationCategory;

    .line 194
    .line 195
    const/4 v15, 0x4

    .line 196
    const/16 v16, 0x50

    .line 197
    .line 198
    const-string v9, "USER_RIGHTS"

    .line 199
    .line 200
    const/16 v10, 0x8

    .line 201
    .line 202
    const-string/jumbo v11, "user-rights"

    .line 203
    .line 204
    .line 205
    const v12, 0x7f1206d0

    .line 206
    .line 207
    .line 208
    const v13, 0x7f1206b4

    .line 209
    .line 210
    .line 211
    const v14, 0x7f0801b6

    .line 212
    .line 213
    .line 214
    invoke-direct/range {v8 .. v16}, Lorg/wikipedia/notifications/NotificationCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    .line 215
    .line 216
    .line 217
    sput-object v8, Lorg/wikipedia/notifications/NotificationCategory;->USER_RIGHTS:Lorg/wikipedia/notifications/NotificationCategory;

    .line 218
    .line 219
    new-instance v9, Lorg/wikipedia/notifications/NotificationCategory;

    .line 220
    .line 221
    const/16 v16, 0x0

    .line 222
    .line 223
    const/16 v17, 0x70

    .line 224
    .line 225
    const-string v10, "ARTICLE_LINKED"

    .line 226
    .line 227
    const/16 v11, 0x9

    .line 228
    .line 229
    const-string v12, "article-linked"

    .line 230
    .line 231
    const v13, 0x7f1206c7

    .line 232
    .line 233
    .line 234
    const v14, 0x7f1206ab

    .line 235
    .line 236
    .line 237
    const v15, 0x7f0801b3

    .line 238
    .line 239
    .line 240
    invoke-direct/range {v9 .. v17}, Lorg/wikipedia/notifications/NotificationCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    .line 241
    .line 242
    .line 243
    sput-object v9, Lorg/wikipedia/notifications/NotificationCategory;->ARTICLE_LINKED:Lorg/wikipedia/notifications/NotificationCategory;

    .line 244
    .line 245
    new-instance v10, Lorg/wikipedia/notifications/NotificationCategory;

    .line 246
    .line 247
    const/16 v17, 0x2

    .line 248
    .line 249
    const/16 v18, 0x10

    .line 250
    .line 251
    const-string v11, "ALPHA_BUILD_CHECKER"

    .line 252
    .line 253
    const/16 v12, 0xa

    .line 254
    .line 255
    const-string v13, "alpha-builder-checker"

    .line 256
    .line 257
    const v14, 0x7f12007d

    .line 258
    .line 259
    .line 260
    const v15, 0x7f12007c

    .line 261
    .line 262
    .line 263
    const v16, 0x7f080212

    .line 264
    .line 265
    .line 266
    invoke-direct/range {v10 .. v18}, Lorg/wikipedia/notifications/NotificationCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    .line 267
    .line 268
    .line 269
    sput-object v10, Lorg/wikipedia/notifications/NotificationCategory;->ALPHA_BUILD_CHECKER:Lorg/wikipedia/notifications/NotificationCategory;

    .line 270
    .line 271
    new-instance v11, Lorg/wikipedia/notifications/NotificationCategory;

    .line 272
    .line 273
    const/16 v18, 0x2

    .line 274
    .line 275
    const/16 v19, 0x10

    .line 276
    .line 277
    const-string v12, "READING_LIST_SYNCING"

    .line 278
    .line 279
    const/16 v13, 0xb

    .line 280
    .line 281
    const-string v14, "reading-list-syncing"

    .line 282
    .line 283
    const v15, 0x7f12047b

    .line 284
    .line 285
    .line 286
    const v16, 0x7f120479

    .line 287
    .line 288
    .line 289
    const v17, 0x108005f

    .line 290
    .line 291
    .line 292
    invoke-direct/range {v11 .. v19}, Lorg/wikipedia/notifications/NotificationCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    .line 293
    .line 294
    .line 295
    sput-object v11, Lorg/wikipedia/notifications/NotificationCategory;->READING_LIST_SYNCING:Lorg/wikipedia/notifications/NotificationCategory;

    .line 296
    .line 297
    new-instance v12, Lorg/wikipedia/notifications/NotificationCategory;

    .line 298
    .line 299
    const/16 v19, 0x2

    .line 300
    .line 301
    const/16 v20, 0x10

    .line 302
    .line 303
    const-string v13, "SYNCING"

    .line 304
    .line 305
    const/16 v14, 0xc

    .line 306
    .line 307
    const-string v15, "syncing"

    .line 308
    .line 309
    const v16, 0x7f120471

    .line 310
    .line 311
    .line 312
    const v17, 0x7f120470

    .line 313
    .line 314
    .line 315
    const v18, 0x1080081

    .line 316
    .line 317
    .line 318
    invoke-direct/range {v12 .. v20}, Lorg/wikipedia/notifications/NotificationCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    .line 319
    .line 320
    .line 321
    sput-object v12, Lorg/wikipedia/notifications/NotificationCategory;->SYNCING:Lorg/wikipedia/notifications/NotificationCategory;

    .line 322
    .line 323
    new-instance v13, Lorg/wikipedia/notifications/NotificationCategory;

    .line 324
    .line 325
    const/16 v20, 0x2

    .line 326
    .line 327
    const/16 v21, 0x10

    .line 328
    .line 329
    const-string v14, "RECOMMENDED_READING_LISTS"

    .line 330
    .line 331
    const/16 v15, 0xd

    .line 332
    .line 333
    const-string v16, "recommended-reading-lists"

    .line 334
    .line 335
    const v17, 0x7f12081c

    .line 336
    .line 337
    .line 338
    const v18, 0x7f1207e7

    .line 339
    .line 340
    .line 341
    const v19, 0x7f08012c

    .line 342
    .line 343
    .line 344
    invoke-direct/range {v13 .. v21}, Lorg/wikipedia/notifications/NotificationCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    .line 345
    .line 346
    .line 347
    sput-object v13, Lorg/wikipedia/notifications/NotificationCategory;->RECOMMENDED_READING_LISTS:Lorg/wikipedia/notifications/NotificationCategory;

    .line 348
    .line 349
    new-instance v14, Lorg/wikipedia/notifications/NotificationCategory;

    .line 350
    .line 351
    const/16 v21, 0x2

    .line 352
    .line 353
    const/16 v22, 0x10

    .line 354
    .line 355
    const-string v15, "GAMES"

    .line 356
    .line 357
    const/16 v16, 0xe

    .line 358
    .line 359
    const-string v17, "games"

    .line 360
    .line 361
    const v18, 0x7f1204cb

    .line 362
    .line 363
    .line 364
    const v19, 0x7f1204d1

    .line 365
    .line 366
    .line 367
    const v20, 0x7f080150

    .line 368
    .line 369
    .line 370
    invoke-direct/range {v14 .. v22}, Lorg/wikipedia/notifications/NotificationCategory;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    .line 371
    .line 372
    .line 373
    sput-object v14, Lorg/wikipedia/notifications/NotificationCategory;->GAMES:Lorg/wikipedia/notifications/NotificationCategory;

    .line 374
    .line 375
    const/16 v15, 0xf

    .line 376
    .line 377
    new-array v15, v15, [Lorg/wikipedia/notifications/NotificationCategory;

    .line 378
    .line 379
    const/16 v16, 0x0

    .line 380
    .line 381
    aput-object v0, v15, v16

    .line 382
    .line 383
    const/16 v17, 0x1

    .line 384
    .line 385
    aput-object v1, v15, v17

    .line 386
    .line 387
    const/16 v18, 0x2

    .line 388
    .line 389
    aput-object v2, v15, v18

    .line 390
    .line 391
    const/16 v19, 0x3

    .line 392
    .line 393
    aput-object v3, v15, v19

    .line 394
    .line 395
    const/16 v20, 0x4

    .line 396
    .line 397
    aput-object v4, v15, v20

    .line 398
    .line 399
    move-object/from16 v21, v0

    .line 400
    .line 401
    const/4 v0, 0x5

    .line 402
    aput-object v5, v15, v0

    .line 403
    .line 404
    const/16 v22, 0x6

    .line 405
    .line 406
    aput-object v6, v15, v22

    .line 407
    .line 408
    const/16 v23, 0x7

    .line 409
    .line 410
    aput-object v7, v15, v23

    .line 411
    .line 412
    const/16 v24, 0x8

    .line 413
    .line 414
    aput-object v8, v15, v24

    .line 415
    .line 416
    const/16 v25, 0x9

    .line 417
    .line 418
    aput-object v9, v15, v25

    .line 419
    .line 420
    const/16 v0, 0xa

    .line 421
    .line 422
    aput-object v10, v15, v0

    .line 423
    .line 424
    const/16 v10, 0xb

    .line 425
    .line 426
    aput-object v11, v15, v10

    .line 427
    .line 428
    const/16 v10, 0xc

    .line 429
    .line 430
    aput-object v12, v15, v10

    .line 431
    .line 432
    const/16 v10, 0xd

    .line 433
    .line 434
    aput-object v13, v15, v10

    .line 435
    .line 436
    const/16 v10, 0xe

    .line 437
    .line 438
    aput-object v14, v15, v10

    .line 439
    .line 440
    sput-object v15, Lorg/wikipedia/notifications/NotificationCategory;->$VALUES:[Lorg/wikipedia/notifications/NotificationCategory;

    .line 441
    .line 442
    new-instance v10, Lkotlin/enums/EnumEntriesList;

    .line 443
    .line 444
    invoke-direct {v10, v15}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 445
    .line 446
    .line 447
    sput-object v10, Lorg/wikipedia/notifications/NotificationCategory;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 448
    .line 449
    new-instance v10, Lorg/wikipedia/notifications/NotificationCategory$Companion;

    .line 450
    .line 451
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 452
    .line 453
    .line 454
    sput-object v10, Lorg/wikipedia/notifications/NotificationCategory;->Companion:Lorg/wikipedia/notifications/NotificationCategory$Companion;

    .line 455
    .line 456
    const/4 v10, 0x5

    .line 457
    new-array v11, v10, [Lorg/wikipedia/notifications/NotificationCategory;

    .line 458
    .line 459
    aput-object v6, v11, v16

    .line 460
    .line 461
    aput-object v2, v11, v17

    .line 462
    .line 463
    aput-object v7, v11, v18

    .line 464
    .line 465
    aput-object v8, v11, v19

    .line 466
    .line 467
    aput-object v4, v11, v20

    .line 468
    .line 469
    invoke-static {v11}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 470
    .line 471
    .line 472
    move-result-object v10

    .line 473
    sput-object v10, Lorg/wikipedia/notifications/NotificationCategory;->MENTIONS_GROUP:Ljava/util/List;

    .line 474
    .line 475
    new-array v0, v0, [Lorg/wikipedia/notifications/NotificationCategory;

    .line 476
    .line 477
    aput-object v2, v0, v16

    .line 478
    .line 479
    aput-object v6, v0, v17

    .line 480
    .line 481
    aput-object v7, v0, v18

    .line 482
    .line 483
    aput-object v4, v0, v19

    .line 484
    .line 485
    aput-object v8, v0, v20

    .line 486
    .line 487
    const/16 v26, 0x5

    .line 488
    .line 489
    aput-object v3, v0, v26

    .line 490
    .line 491
    aput-object v1, v0, v22

    .line 492
    .line 493
    aput-object v5, v0, v23

    .line 494
    .line 495
    aput-object v21, v0, v24

    .line 496
    .line 497
    aput-object v9, v0, v25

    .line 498
    .line 499
    invoke-static {v0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    sput-object v0, Lorg/wikipedia/notifications/NotificationCategory;->FILTERS_GROUP:Ljava/util/List;

    .line 504
    .line 505
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIII)V
    .locals 2

    .line 1
    and-int/lit8 v0, p8, 0x10

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7f040520

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v0, 0x7f040128

    .line 10
    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, p8, 0x20

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 p7, 0x3

    .line 17
    :cond_1
    and-int/lit8 p8, p8, 0x40

    .line 18
    .line 19
    if-eqz p8, :cond_2

    .line 20
    .line 21
    const-string p8, "WIKIPEDIA_NOTIFICATIONS"

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    const-string p8, "WIKIPEDIA_NOTIFICATIONS_OTHER"

    .line 25
    .line 26
    :goto_1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    iput-object p3, p0, Lorg/wikipedia/notifications/NotificationCategory;->id:Ljava/lang/String;

    .line 30
    .line 31
    iput p4, p0, Lorg/wikipedia/notifications/NotificationCategory;->title:I

    .line 32
    .line 33
    iput p5, p0, Lorg/wikipedia/notifications/NotificationCategory;->description:I

    .line 34
    .line 35
    iput p6, p0, Lorg/wikipedia/notifications/NotificationCategory;->iconResId:I

    .line 36
    .line 37
    iput v0, p0, Lorg/wikipedia/notifications/NotificationCategory;->iconColor:I

    .line 38
    .line 39
    iput p7, p0, Lorg/wikipedia/notifications/NotificationCategory;->importance:I

    .line 40
    .line 41
    iput-object p8, p0, Lorg/wikipedia/notifications/NotificationCategory;->group:Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method

.method public static final synthetic access$getFILTERS_GROUP$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/notifications/NotificationCategory;->FILTERS_GROUP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMENTIONS_GROUP$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/notifications/NotificationCategory;->MENTIONS_GROUP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/notifications/NotificationCategory;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/notifications/NotificationCategory;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/notifications/NotificationCategory;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/notifications/NotificationCategory;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/notifications/NotificationCategory;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/notifications/NotificationCategory;->$VALUES:[Lorg/wikipedia/notifications/NotificationCategory;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/notifications/NotificationCategory;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final code()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getDescription()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/notifications/NotificationCategory;->description:I

    .line 2
    .line 3
    return p0
.end method

.method public final getGroup()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationCategory;->group:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getIconColor()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/notifications/NotificationCategory;->iconColor:I

    .line 2
    .line 3
    return p0
.end method

.method public final getIconResId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/notifications/NotificationCategory;->iconResId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationCategory;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getImportance()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/notifications/NotificationCategory;->importance:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTitle()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/notifications/NotificationCategory;->title:I

    .line 2
    .line 3
    return p0
.end method

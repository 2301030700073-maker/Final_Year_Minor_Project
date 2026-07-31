.class public abstract enum Lorg/wikipedia/page/action/PageActionItem;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/model/EnumCode;


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/page/action/PageActionItem;

.field public static final enum ADD_TO_WATCHLIST:Lorg/wikipedia/page/action/PageActionItem;

.field public static final enum CATEGORIES:Lorg/wikipedia/page/action/PageActionItem;

.field public static final enum CONTENTS:Lorg/wikipedia/page/action/PageActionItem;

.field public static final Companion:Lorg/wikipedia/page/action/PageActionItem$Companion;

.field private static final DEFAULT_OVERFLOW_MENU_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_TOOLBAR_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum EDIT_ARTICLE:Lorg/wikipedia/page/action/PageActionItem;

.field public static final enum FIND_IN_ARTICLE:Lorg/wikipedia/page/action/PageActionItem;

.field public static final enum HOME:Lorg/wikipedia/page/action/PageActionItem;

.field public static final enum LANGUAGE:Lorg/wikipedia/page/action/PageActionItem;

.field public static final enum NEW_TAB:Lorg/wikipedia/page/action/PageActionItem;

.field public static final enum SAVE:Lorg/wikipedia/page/action/PageActionItem;

.field public static final enum SHARE:Lorg/wikipedia/page/action/PageActionItem;

.field public static final enum THEME:Lorg/wikipedia/page/action/PageActionItem;

.field public static final enum VIEW_EDIT_HISTORY:Lorg/wikipedia/page/action/PageActionItem;

.field public static final enum VIEW_ON_MAP:Lorg/wikipedia/page/action/PageActionItem;

.field public static final enum VIEW_TALK_PAGE:Lorg/wikipedia/page/action/PageActionItem;


# instance fields
.field private final iconResId:I

.field private final id:I

.field private final isAvailableOnMobileWeb:Z

.field private final isExternalLink:Z

.field private final titleResId:I

.field private final viewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lorg/wikipedia/page/action/PageActionItem$SAVE;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/16 v8, 0x20

    .line 5
    .line 6
    const-string v1, "SAVE"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const v4, 0x7f0904df

    .line 11
    .line 12
    .line 13
    const v5, 0x7f120096

    .line 14
    .line 15
    .line 16
    const v6, 0x7f08012a

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/page/action/PageActionItem;-><init>(Ljava/lang/String;IIIIIZI)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lorg/wikipedia/page/action/PageActionItem;->SAVE:Lorg/wikipedia/page/action/PageActionItem;

    .line 23
    .line 24
    new-instance v1, Lorg/wikipedia/page/action/PageActionItem$LANGUAGE;

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    const/16 v9, 0x20

    .line 28
    .line 29
    const-string v2, "LANGUAGE"

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x1

    .line 33
    const v5, 0x7f0904d2

    .line 34
    .line 35
    .line 36
    const v6, 0x7f120095

    .line 37
    .line 38
    .line 39
    const v7, 0x7f080202

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v1 .. v9}, Lorg/wikipedia/page/action/PageActionItem;-><init>(Ljava/lang/String;IIIIIZI)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lorg/wikipedia/page/action/PageActionItem;->LANGUAGE:Lorg/wikipedia/page/action/PageActionItem;

    .line 46
    .line 47
    new-instance v2, Lorg/wikipedia/page/action/PageActionItem$FIND_IN_ARTICLE;

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    const/16 v10, 0x30

    .line 51
    .line 52
    const-string v3, "FIND_IN_ARTICLE"

    .line 53
    .line 54
    const/4 v4, 0x2

    .line 55
    const/4 v5, 0x2

    .line 56
    const v6, 0x7f0904cc

    .line 57
    .line 58
    .line 59
    const v7, 0x7f1203f5

    .line 60
    .line 61
    .line 62
    const v8, 0x7f080169

    .line 63
    .line 64
    .line 65
    invoke-direct/range {v2 .. v10}, Lorg/wikipedia/page/action/PageActionItem;-><init>(Ljava/lang/String;IIIIIZI)V

    .line 66
    .line 67
    .line 68
    sput-object v2, Lorg/wikipedia/page/action/PageActionItem;->FIND_IN_ARTICLE:Lorg/wikipedia/page/action/PageActionItem;

    .line 69
    .line 70
    new-instance v3, Lorg/wikipedia/page/action/PageActionItem$THEME;

    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    const/16 v11, 0x20

    .line 74
    .line 75
    const-string v4, "THEME"

    .line 76
    .line 77
    const/4 v5, 0x3

    .line 78
    const/4 v6, 0x3

    .line 79
    const v7, 0x7f0904e2

    .line 80
    .line 81
    .line 82
    const v8, 0x7f120098

    .line 83
    .line 84
    .line 85
    const v9, 0x7f08017d

    .line 86
    .line 87
    .line 88
    invoke-direct/range {v3 .. v11}, Lorg/wikipedia/page/action/PageActionItem;-><init>(Ljava/lang/String;IIIIIZI)V

    .line 89
    .line 90
    .line 91
    sput-object v3, Lorg/wikipedia/page/action/PageActionItem;->THEME:Lorg/wikipedia/page/action/PageActionItem;

    .line 92
    .line 93
    new-instance v4, Lorg/wikipedia/page/action/PageActionItem$CONTENTS;

    .line 94
    .line 95
    const/4 v11, 0x0

    .line 96
    const/16 v12, 0x20

    .line 97
    .line 98
    const-string v5, "CONTENTS"

    .line 99
    .line 100
    const/4 v6, 0x4

    .line 101
    const/4 v7, 0x4

    .line 102
    const v8, 0x7f0904c8

    .line 103
    .line 104
    .line 105
    const v9, 0x7f120094

    .line 106
    .line 107
    .line 108
    const v10, 0x7f08017e

    .line 109
    .line 110
    .line 111
    invoke-direct/range {v4 .. v12}, Lorg/wikipedia/page/action/PageActionItem;-><init>(Ljava/lang/String;IIIIIZI)V

    .line 112
    .line 113
    .line 114
    sput-object v4, Lorg/wikipedia/page/action/PageActionItem;->CONTENTS:Lorg/wikipedia/page/action/PageActionItem;

    .line 115
    .line 116
    new-instance v5, Lorg/wikipedia/page/action/PageActionItem$SHARE;

    .line 117
    .line 118
    const/4 v12, 0x0

    .line 119
    const/16 v13, 0x30

    .line 120
    .line 121
    const-string v6, "SHARE"

    .line 122
    .line 123
    const/4 v7, 0x5

    .line 124
    const/4 v8, 0x5

    .line 125
    const v9, 0x7f0904e1

    .line 126
    .line 127
    .line 128
    const v10, 0x7f1203f3

    .line 129
    .line 130
    .line 131
    const v11, 0x7f0801e7

    .line 132
    .line 133
    .line 134
    invoke-direct/range {v5 .. v13}, Lorg/wikipedia/page/action/PageActionItem;-><init>(Ljava/lang/String;IIIIIZI)V

    .line 135
    .line 136
    .line 137
    sput-object v5, Lorg/wikipedia/page/action/PageActionItem;->SHARE:Lorg/wikipedia/page/action/PageActionItem;

    .line 138
    .line 139
    new-instance v6, Lorg/wikipedia/page/action/PageActionItem$ADD_TO_WATCHLIST;

    .line 140
    .line 141
    const/4 v13, 0x0

    .line 142
    const/16 v14, 0x20

    .line 143
    .line 144
    const-string v7, "ADD_TO_WATCHLIST"

    .line 145
    .line 146
    const/4 v8, 0x6

    .line 147
    const/4 v9, 0x6

    .line 148
    const v10, 0x7f0904ee

    .line 149
    .line 150
    .line 151
    const v11, 0x7f120403

    .line 152
    .line 153
    .line 154
    const v12, 0x7f080127

    .line 155
    .line 156
    .line 157
    invoke-direct/range {v6 .. v14}, Lorg/wikipedia/page/action/PageActionItem;-><init>(Ljava/lang/String;IIIIIZI)V

    .line 158
    .line 159
    .line 160
    sput-object v6, Lorg/wikipedia/page/action/PageActionItem;->ADD_TO_WATCHLIST:Lorg/wikipedia/page/action/PageActionItem;

    .line 161
    .line 162
    new-instance v7, Lorg/wikipedia/page/action/PageActionItem$VIEW_TALK_PAGE;

    .line 163
    .line 164
    const/4 v14, 0x0

    .line 165
    const/16 v15, 0x30

    .line 166
    .line 167
    const-string v8, "VIEW_TALK_PAGE"

    .line 168
    .line 169
    const/4 v9, 0x7

    .line 170
    const/4 v10, 0x7

    .line 171
    const v11, 0x7f0904ed

    .line 172
    .line 173
    .line 174
    const v12, 0x7f1203ff

    .line 175
    .line 176
    .line 177
    const v13, 0x7f080182

    .line 178
    .line 179
    .line 180
    invoke-direct/range {v7 .. v15}, Lorg/wikipedia/page/action/PageActionItem;-><init>(Ljava/lang/String;IIIIIZI)V

    .line 181
    .line 182
    .line 183
    sput-object v7, Lorg/wikipedia/page/action/PageActionItem;->VIEW_TALK_PAGE:Lorg/wikipedia/page/action/PageActionItem;

    .line 184
    .line 185
    new-instance v8, Lorg/wikipedia/page/action/PageActionItem$VIEW_EDIT_HISTORY;

    .line 186
    .line 187
    const/4 v15, 0x1

    .line 188
    const/16 v16, 0x20

    .line 189
    .line 190
    const-string v9, "VIEW_EDIT_HISTORY"

    .line 191
    .line 192
    const/16 v10, 0x8

    .line 193
    .line 194
    const/16 v11, 0x8

    .line 195
    .line 196
    const v12, 0x7f0904eb

    .line 197
    .line 198
    .line 199
    const v13, 0x7f1203f4

    .line 200
    .line 201
    .line 202
    const v14, 0x7f080181

    .line 203
    .line 204
    .line 205
    invoke-direct/range {v8 .. v16}, Lorg/wikipedia/page/action/PageActionItem;-><init>(Ljava/lang/String;IIIIIZI)V

    .line 206
    .line 207
    .line 208
    sput-object v8, Lorg/wikipedia/page/action/PageActionItem;->VIEW_EDIT_HISTORY:Lorg/wikipedia/page/action/PageActionItem;

    .line 209
    .line 210
    new-instance v9, Lorg/wikipedia/page/action/PageActionItem$NEW_TAB;

    .line 211
    .line 212
    const/16 v16, 0x0

    .line 213
    .line 214
    const/16 v17, 0x30

    .line 215
    .line 216
    const-string v10, "NEW_TAB"

    .line 217
    .line 218
    const/16 v11, 0x9

    .line 219
    .line 220
    const/16 v12, 0x9

    .line 221
    .line 222
    const v13, 0x7f0904dc

    .line 223
    .line 224
    .line 225
    const v14, 0x7f1203e3

    .line 226
    .line 227
    .line 228
    const v15, 0x7f08010e

    .line 229
    .line 230
    .line 231
    invoke-direct/range {v9 .. v17}, Lorg/wikipedia/page/action/PageActionItem;-><init>(Ljava/lang/String;IIIIIZI)V

    .line 232
    .line 233
    .line 234
    sput-object v9, Lorg/wikipedia/page/action/PageActionItem;->NEW_TAB:Lorg/wikipedia/page/action/PageActionItem;

    .line 235
    .line 236
    new-instance v10, Lorg/wikipedia/page/action/PageActionItem$HOME;

    .line 237
    .line 238
    const/16 v17, 0x0

    .line 239
    .line 240
    const/16 v18, 0x30

    .line 241
    .line 242
    const-string v11, "HOME"

    .line 243
    .line 244
    const/16 v12, 0xa

    .line 245
    .line 246
    const/16 v13, 0xa

    .line 247
    .line 248
    const v14, 0x7f0904cf

    .line 249
    .line 250
    .line 251
    const v15, 0x7f12026f

    .line 252
    .line 253
    .line 254
    const v16, 0x7f08017a

    .line 255
    .line 256
    .line 257
    invoke-direct/range {v10 .. v18}, Lorg/wikipedia/page/action/PageActionItem;-><init>(Ljava/lang/String;IIIIIZI)V

    .line 258
    .line 259
    .line 260
    sput-object v10, Lorg/wikipedia/page/action/PageActionItem;->HOME:Lorg/wikipedia/page/action/PageActionItem;

    .line 261
    .line 262
    new-instance v11, Lorg/wikipedia/page/action/PageActionItem$CATEGORIES;

    .line 263
    .line 264
    const/16 v18, 0x0

    .line 265
    .line 266
    const/16 v19, 0x30

    .line 267
    .line 268
    const-string v12, "CATEGORIES"

    .line 269
    .line 270
    const/16 v13, 0xb

    .line 271
    .line 272
    const/16 v14, 0xb

    .line 273
    .line 274
    const v15, 0x7f0904c7

    .line 275
    .line 276
    .line 277
    const v16, 0x7f120035

    .line 278
    .line 279
    .line 280
    const v17, 0x7f080137

    .line 281
    .line 282
    .line 283
    invoke-direct/range {v11 .. v19}, Lorg/wikipedia/page/action/PageActionItem;-><init>(Ljava/lang/String;IIIIIZI)V

    .line 284
    .line 285
    .line 286
    sput-object v11, Lorg/wikipedia/page/action/PageActionItem;->CATEGORIES:Lorg/wikipedia/page/action/PageActionItem;

    .line 287
    .line 288
    new-instance v12, Lorg/wikipedia/page/action/PageActionItem$EDIT_ARTICLE;

    .line 289
    .line 290
    const/16 v19, 0x0

    .line 291
    .line 292
    const/16 v20, 0x30

    .line 293
    .line 294
    const-string v13, "EDIT_ARTICLE"

    .line 295
    .line 296
    const/16 v14, 0xc

    .line 297
    .line 298
    const/16 v15, 0xc

    .line 299
    .line 300
    const v16, 0x7f0904ca

    .line 301
    .line 302
    .line 303
    const v17, 0x7f1203d8

    .line 304
    .line 305
    .line 306
    const v18, 0x7f0801a4

    .line 307
    .line 308
    .line 309
    invoke-direct/range {v12 .. v20}, Lorg/wikipedia/page/action/PageActionItem;-><init>(Ljava/lang/String;IIIIIZI)V

    .line 310
    .line 311
    .line 312
    sput-object v12, Lorg/wikipedia/page/action/PageActionItem;->EDIT_ARTICLE:Lorg/wikipedia/page/action/PageActionItem;

    .line 313
    .line 314
    new-instance v13, Lorg/wikipedia/page/action/PageActionItem$VIEW_ON_MAP;

    .line 315
    .line 316
    const/16 v20, 0x0

    .line 317
    .line 318
    const/16 v21, 0x20

    .line 319
    .line 320
    const-string v14, "VIEW_ON_MAP"

    .line 321
    .line 322
    const/16 v15, 0xd

    .line 323
    .line 324
    const/16 v16, 0xd

    .line 325
    .line 326
    const v17, 0x7f0904ec

    .line 327
    .line 328
    .line 329
    const v18, 0x7f120036

    .line 330
    .line 331
    .line 332
    const v19, 0x7f0800c3

    .line 333
    .line 334
    .line 335
    invoke-direct/range {v13 .. v21}, Lorg/wikipedia/page/action/PageActionItem;-><init>(Ljava/lang/String;IIIIIZI)V

    .line 336
    .line 337
    .line 338
    sput-object v13, Lorg/wikipedia/page/action/PageActionItem;->VIEW_ON_MAP:Lorg/wikipedia/page/action/PageActionItem;

    .line 339
    .line 340
    const/16 v14, 0xe

    .line 341
    .line 342
    new-array v14, v14, [Lorg/wikipedia/page/action/PageActionItem;

    .line 343
    .line 344
    const/4 v15, 0x0

    .line 345
    aput-object v0, v14, v15

    .line 346
    .line 347
    const/16 v16, 0x1

    .line 348
    .line 349
    aput-object v1, v14, v16

    .line 350
    .line 351
    const/16 v17, 0x2

    .line 352
    .line 353
    aput-object v2, v14, v17

    .line 354
    .line 355
    const/16 v18, 0x3

    .line 356
    .line 357
    aput-object v3, v14, v18

    .line 358
    .line 359
    const/16 v19, 0x4

    .line 360
    .line 361
    aput-object v4, v14, v19

    .line 362
    .line 363
    move/from16 v20, v15

    .line 364
    .line 365
    const/4 v15, 0x5

    .line 366
    aput-object v5, v14, v15

    .line 367
    .line 368
    const/4 v5, 0x6

    .line 369
    aput-object v6, v14, v5

    .line 370
    .line 371
    const/4 v6, 0x7

    .line 372
    aput-object v7, v14, v6

    .line 373
    .line 374
    const/16 v7, 0x8

    .line 375
    .line 376
    aput-object v8, v14, v7

    .line 377
    .line 378
    const/16 v8, 0x9

    .line 379
    .line 380
    aput-object v9, v14, v8

    .line 381
    .line 382
    const/16 v9, 0xa

    .line 383
    .line 384
    aput-object v10, v14, v9

    .line 385
    .line 386
    const/16 v10, 0xb

    .line 387
    .line 388
    aput-object v11, v14, v10

    .line 389
    .line 390
    const/16 v10, 0xc

    .line 391
    .line 392
    aput-object v12, v14, v10

    .line 393
    .line 394
    const/16 v10, 0xd

    .line 395
    .line 396
    aput-object v13, v14, v10

    .line 397
    .line 398
    sput-object v14, Lorg/wikipedia/page/action/PageActionItem;->$VALUES:[Lorg/wikipedia/page/action/PageActionItem;

    .line 399
    .line 400
    new-instance v10, Lkotlin/enums/EnumEntriesList;

    .line 401
    .line 402
    invoke-direct {v10, v14}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 403
    .line 404
    .line 405
    sput-object v10, Lorg/wikipedia/page/action/PageActionItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 406
    .line 407
    new-instance v10, Lorg/wikipedia/page/action/PageActionItem$Companion;

    .line 408
    .line 409
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 410
    .line 411
    .line 412
    sput-object v10, Lorg/wikipedia/page/action/PageActionItem;->Companion:Lorg/wikipedia/page/action/PageActionItem$Companion;

    .line 413
    .line 414
    new-array v10, v15, [Lorg/wikipedia/page/action/PageActionItem;

    .line 415
    .line 416
    aput-object v0, v10, v20

    .line 417
    .line 418
    aput-object v1, v10, v16

    .line 419
    .line 420
    aput-object v2, v10, v17

    .line 421
    .line 422
    aput-object v3, v10, v18

    .line 423
    .line 424
    aput-object v4, v10, v19

    .line 425
    .line 426
    invoke-static {v10}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    new-instance v1, Ljava/util/ArrayList;

    .line 431
    .line 432
    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 437
    .line 438
    .line 439
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    if-eqz v2, :cond_0

    .line 448
    .line 449
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    check-cast v2, Lorg/wikipedia/page/action/PageActionItem;

    .line 454
    .line 455
    iget v2, v2, Lorg/wikipedia/page/action/PageActionItem;->id:I

    .line 456
    .line 457
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    goto :goto_0

    .line 465
    :cond_0
    sput-object v1, Lorg/wikipedia/page/action/PageActionItem;->DEFAULT_TOOLBAR_LIST:Ljava/util/List;

    .line 466
    .line 467
    new-array v0, v8, [Lorg/wikipedia/page/action/PageActionItem;

    .line 468
    .line 469
    sget-object v1, Lorg/wikipedia/page/action/PageActionItem;->SHARE:Lorg/wikipedia/page/action/PageActionItem;

    .line 470
    .line 471
    aput-object v1, v0, v20

    .line 472
    .line 473
    sget-object v1, Lorg/wikipedia/page/action/PageActionItem;->ADD_TO_WATCHLIST:Lorg/wikipedia/page/action/PageActionItem;

    .line 474
    .line 475
    aput-object v1, v0, v16

    .line 476
    .line 477
    sget-object v1, Lorg/wikipedia/page/action/PageActionItem;->VIEW_TALK_PAGE:Lorg/wikipedia/page/action/PageActionItem;

    .line 478
    .line 479
    aput-object v1, v0, v17

    .line 480
    .line 481
    sget-object v1, Lorg/wikipedia/page/action/PageActionItem;->VIEW_EDIT_HISTORY:Lorg/wikipedia/page/action/PageActionItem;

    .line 482
    .line 483
    aput-object v1, v0, v18

    .line 484
    .line 485
    sget-object v1, Lorg/wikipedia/page/action/PageActionItem;->VIEW_ON_MAP:Lorg/wikipedia/page/action/PageActionItem;

    .line 486
    .line 487
    aput-object v1, v0, v19

    .line 488
    .line 489
    sget-object v1, Lorg/wikipedia/page/action/PageActionItem;->NEW_TAB:Lorg/wikipedia/page/action/PageActionItem;

    .line 490
    .line 491
    aput-object v1, v0, v15

    .line 492
    .line 493
    sget-object v1, Lorg/wikipedia/page/action/PageActionItem;->HOME:Lorg/wikipedia/page/action/PageActionItem;

    .line 494
    .line 495
    aput-object v1, v0, v5

    .line 496
    .line 497
    sget-object v1, Lorg/wikipedia/page/action/PageActionItem;->CATEGORIES:Lorg/wikipedia/page/action/PageActionItem;

    .line 498
    .line 499
    aput-object v1, v0, v6

    .line 500
    .line 501
    sget-object v1, Lorg/wikipedia/page/action/PageActionItem;->EDIT_ARTICLE:Lorg/wikipedia/page/action/PageActionItem;

    .line 502
    .line 503
    aput-object v1, v0, v7

    .line 504
    .line 505
    invoke-static {v0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    new-instance v1, Ljava/util/ArrayList;

    .line 510
    .line 511
    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 516
    .line 517
    .line 518
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    if-eqz v2, :cond_1

    .line 527
    .line 528
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    check-cast v2, Lorg/wikipedia/page/action/PageActionItem;

    .line 533
    .line 534
    iget v2, v2, Lorg/wikipedia/page/action/PageActionItem;->id:I

    .line 535
    .line 536
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    goto :goto_1

    .line 544
    :cond_1
    sput-object v1, Lorg/wikipedia/page/action/PageActionItem;->DEFAULT_OVERFLOW_MENU_LIST:Ljava/util/List;

    .line 545
    .line 546
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZI)V
    .locals 0

    .line 1
    and-int/lit8 p8, p8, 0x10

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    const/4 p7, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    iput p3, p0, Lorg/wikipedia/page/action/PageActionItem;->id:I

    .line 10
    .line 11
    iput p4, p0, Lorg/wikipedia/page/action/PageActionItem;->viewId:I

    .line 12
    .line 13
    iput p5, p0, Lorg/wikipedia/page/action/PageActionItem;->titleResId:I

    .line 14
    .line 15
    iput p6, p0, Lorg/wikipedia/page/action/PageActionItem;->iconResId:I

    .line 16
    .line 17
    iput-boolean p7, p0, Lorg/wikipedia/page/action/PageActionItem;->isAvailableOnMobileWeb:Z

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lorg/wikipedia/page/action/PageActionItem;->isExternalLink:Z

    .line 21
    .line 22
    return-void
.end method

.method public static final synthetic access$getDEFAULT_OVERFLOW_MENU_LIST$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/page/action/PageActionItem;->DEFAULT_OVERFLOW_MENU_LIST:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_TOOLBAR_LIST$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/page/action/PageActionItem;->DEFAULT_TOOLBAR_LIST:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/page/action/PageActionItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/page/action/PageActionItem;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/page/action/PageActionItem;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/page/action/PageActionItem;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/page/action/PageActionItem;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/page/action/PageActionItem;->$VALUES:[Lorg/wikipedia/page/action/PageActionItem;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/page/action/PageActionItem;

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

.method public final getIconResId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/page/action/PageActionItem;->iconResId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/page/action/PageActionItem;->id:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTitleResId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/page/action/PageActionItem;->titleResId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getViewId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/page/action/PageActionItem;->viewId:I

    .line 2
    .line 3
    return p0
.end method

.method public final isAvailableOnMobileWeb()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/wikipedia/page/action/PageActionItem;->isAvailableOnMobileWeb:Z

    .line 2
    .line 3
    return p0
.end method

.method public abstract select(Lorg/wikipedia/page/action/PageActionItem$Callback;)V
.end method

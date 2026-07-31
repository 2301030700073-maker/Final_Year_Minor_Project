.class public final enum Lorg/wikipedia/watchlist/WatchlistFilterTypes;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/model/EnumCode;


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field public static final enum ALL_CHANGES:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field public static final enum ALL_EDITORS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field public static final enum ALL_EDITS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field public static final enum ALL_USERS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field public static final enum BOT:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field private static final BOT_EDITS_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/watchlist/WatchlistFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CATEGORY_CHANGES:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field public static final Companion:Lorg/wikipedia/watchlist/WatchlistFilterTypes$Companion;

.field private static final DEFAULT_FILTER_OTHERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/wikipedia/watchlist/WatchlistFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FILTER_TYPE_OF_CHANGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/wikipedia/watchlist/WatchlistFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FILTER_TYPE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/wikipedia/watchlist/WatchlistFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum HUMAN:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field public static final enum LATEST_REVISION:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field private static final LATEST_REVISIONS_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/watchlist/WatchlistFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum LOGGED_ACTIONS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field public static final enum MINOR_EDITS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field private static final MINOR_EDITS_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/watchlist/WatchlistFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NON_MINOR_EDITS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field public static final enum NOT_LATEST_REVISION:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field public static final enum PAGE_CREATIONS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field public static final enum PAGE_EDITS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field public static final enum REGISTERED:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field public static final enum SEEN_CHANGES:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field private static final TYPE_OF_CHANGES_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/watchlist/WatchlistFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum UNREGISTERED:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field public static final enum UNSEEN_CHANGES:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

.field private static final UNSEEN_CHANGES_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/watchlist/WatchlistFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field private static final USER_STATUS_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/watchlist/WatchlistFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum WIKIDATA_EDITS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;


# instance fields
.field private final id:Ljava/lang/String;

.field private final title:I

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 2
    .line 3
    const v2, 0x7f120a25

    .line 4
    .line 5
    .line 6
    const-string v5, "edit"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v3, "PAGE_EDITS"

    .line 10
    .line 11
    const-string v4, "pageEdits"

    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->PAGE_EDITS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 17
    .line 18
    new-instance v1, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 19
    .line 20
    const v3, 0x7f120a24

    .line 21
    .line 22
    .line 23
    const-string v6, "new"

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    const-string v4, "PAGE_CREATIONS"

    .line 27
    .line 28
    const-string v5, "pageCreations"

    .line 29
    .line 30
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->PAGE_CREATIONS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 34
    .line 35
    new-instance v2, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 36
    .line 37
    const v4, 0x7f120a20

    .line 38
    .line 39
    .line 40
    const-string v7, "categorize"

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    const-string v5, "CATEGORY_CHANGES"

    .line 44
    .line 45
    const-string v6, "categoryChanges"

    .line 46
    .line 47
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sput-object v2, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->CATEGORY_CHANGES:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 51
    .line 52
    new-instance v3, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 53
    .line 54
    const v5, 0x7f120a26

    .line 55
    .line 56
    .line 57
    const-string v8, "external"

    .line 58
    .line 59
    const/4 v4, 0x3

    .line 60
    const-string v6, "WIKIDATA_EDITS"

    .line 61
    .line 62
    const-string/jumbo v7, "wikidataEdits"

    .line 63
    .line 64
    .line 65
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sput-object v3, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->WIKIDATA_EDITS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 69
    .line 70
    new-instance v4, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 71
    .line 72
    const v6, 0x7f120a22

    .line 73
    .line 74
    .line 75
    const-string v9, "log"

    .line 76
    .line 77
    const/4 v5, 0x4

    .line 78
    const-string v7, "LOGGED_ACTIONS"

    .line 79
    .line 80
    const-string v8, "loggedActions"

    .line 81
    .line 82
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sput-object v4, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->LOGGED_ACTIONS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 86
    .line 87
    new-instance v5, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 88
    .line 89
    const v7, 0x7f120a09

    .line 90
    .line 91
    .line 92
    const-string v10, ""

    .line 93
    .line 94
    const/4 v6, 0x5

    .line 95
    const-string v8, "ALL_EDITS"

    .line 96
    .line 97
    const-string v9, "allEdits"

    .line 98
    .line 99
    invoke-direct/range {v5 .. v10}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sput-object v5, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->ALL_EDITS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 103
    .line 104
    new-instance v6, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 105
    .line 106
    const v8, 0x7f120a1d

    .line 107
    .line 108
    .line 109
    const-string v11, "minor"

    .line 110
    .line 111
    const/4 v7, 0x6

    .line 112
    const-string v9, "MINOR_EDITS"

    .line 113
    .line 114
    const-string v10, "minorEdits"

    .line 115
    .line 116
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sput-object v6, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->MINOR_EDITS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 120
    .line 121
    new-instance v7, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 122
    .line 123
    const v9, 0x7f120a1b

    .line 124
    .line 125
    .line 126
    const-string v12, "!minor"

    .line 127
    .line 128
    const/4 v8, 0x7

    .line 129
    const-string v10, "NON_MINOR_EDITS"

    .line 130
    .line 131
    const-string v11, "nonMinorEdits"

    .line 132
    .line 133
    invoke-direct/range {v7 .. v12}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    sput-object v7, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->NON_MINOR_EDITS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 137
    .line 138
    new-instance v8, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 139
    .line 140
    const v10, 0x7f120a09

    .line 141
    .line 142
    .line 143
    const-string v13, ""

    .line 144
    .line 145
    const/16 v9, 0x8

    .line 146
    .line 147
    const-string v11, "ALL_EDITORS"

    .line 148
    .line 149
    const-string v12, "allEditors"

    .line 150
    .line 151
    invoke-direct/range {v8 .. v13}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    sput-object v8, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->ALL_EDITORS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 155
    .line 156
    new-instance v9, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 157
    .line 158
    const v11, 0x7f120a0a

    .line 159
    .line 160
    .line 161
    const-string v14, "bot"

    .line 162
    .line 163
    const/16 v10, 0x9

    .line 164
    .line 165
    const-string v12, "BOT"

    .line 166
    .line 167
    const-string v13, "bot"

    .line 168
    .line 169
    invoke-direct/range {v9 .. v14}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    sput-object v9, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->BOT:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 173
    .line 174
    new-instance v10, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 175
    .line 176
    const v12, 0x7f120a0c

    .line 177
    .line 178
    .line 179
    const-string v15, "!bot"

    .line 180
    .line 181
    const/16 v11, 0xa

    .line 182
    .line 183
    const-string v13, "HUMAN"

    .line 184
    .line 185
    const-string v14, "human"

    .line 186
    .line 187
    invoke-direct/range {v10 .. v15}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    sput-object v10, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->HUMAN:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 191
    .line 192
    new-instance v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 193
    .line 194
    const v13, 0x7f120a09

    .line 195
    .line 196
    .line 197
    const-string v16, ""

    .line 198
    .line 199
    const/16 v12, 0xb

    .line 200
    .line 201
    const-string v14, "ALL_CHANGES"

    .line 202
    .line 203
    const-string v15, "allChanges"

    .line 204
    .line 205
    invoke-direct/range {v11 .. v16}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    sput-object v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->ALL_CHANGES:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 209
    .line 210
    new-instance v12, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 211
    .line 212
    const v14, 0x7f120a34

    .line 213
    .line 214
    .line 215
    const-string/jumbo v17, "unread"

    .line 216
    .line 217
    .line 218
    const/16 v13, 0xc

    .line 219
    .line 220
    const-string v15, "UNSEEN_CHANGES"

    .line 221
    .line 222
    const-string/jumbo v16, "unseenChanges"

    .line 223
    .line 224
    .line 225
    invoke-direct/range {v12 .. v17}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    sput-object v12, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->UNSEEN_CHANGES:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 229
    .line 230
    new-instance v13, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 231
    .line 232
    const v15, 0x7f120a33

    .line 233
    .line 234
    .line 235
    const-string v18, "!unread"

    .line 236
    .line 237
    const/16 v14, 0xd

    .line 238
    .line 239
    const-string v16, "SEEN_CHANGES"

    .line 240
    .line 241
    const-string v17, "seenChanges"

    .line 242
    .line 243
    invoke-direct/range {v13 .. v18}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    sput-object v13, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->SEEN_CHANGES:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 247
    .line 248
    new-instance v14, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 249
    .line 250
    const v16, 0x7f120a16

    .line 251
    .line 252
    .line 253
    const-string v19, ""

    .line 254
    .line 255
    const/16 v15, 0xe

    .line 256
    .line 257
    const-string v17, "LATEST_REVISION"

    .line 258
    .line 259
    const-string v18, "latestRevision"

    .line 260
    .line 261
    invoke-direct/range {v14 .. v19}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    sput-object v14, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->LATEST_REVISION:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 265
    .line 266
    new-instance v15, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 267
    .line 268
    const v17, 0x7f120a17

    .line 269
    .line 270
    .line 271
    const-string v20, "1"

    .line 272
    .line 273
    const/16 v16, 0xf

    .line 274
    .line 275
    const-string v18, "NOT_LATEST_REVISION"

    .line 276
    .line 277
    const-string v19, "notLatestRevision"

    .line 278
    .line 279
    invoke-direct/range {v15 .. v20}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    sput-object v15, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->NOT_LATEST_REVISION:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 283
    .line 284
    new-instance v16, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 285
    .line 286
    const v18, 0x7f120a09

    .line 287
    .line 288
    .line 289
    const-string v21, ""

    .line 290
    .line 291
    const/16 v17, 0x10

    .line 292
    .line 293
    const-string v19, "ALL_USERS"

    .line 294
    .line 295
    const-string v20, "allUsers"

    .line 296
    .line 297
    invoke-direct/range {v16 .. v21}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    sput-object v16, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->ALL_USERS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 301
    .line 302
    new-instance v17, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 303
    .line 304
    const v19, 0x7f120a31

    .line 305
    .line 306
    .line 307
    const-string v22, "anon"

    .line 308
    .line 309
    const/16 v18, 0x11

    .line 310
    .line 311
    const-string v20, "UNREGISTERED"

    .line 312
    .line 313
    const-string/jumbo v21, "unregistered"

    .line 314
    .line 315
    .line 316
    invoke-direct/range {v17 .. v22}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    sput-object v17, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->UNREGISTERED:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 320
    .line 321
    new-instance v18, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 322
    .line 323
    const v20, 0x7f120a30

    .line 324
    .line 325
    .line 326
    const-string v23, "!anon"

    .line 327
    .line 328
    const/16 v19, 0x12

    .line 329
    .line 330
    const-string v21, "REGISTERED"

    .line 331
    .line 332
    const-string v22, "registered"

    .line 333
    .line 334
    invoke-direct/range {v18 .. v23}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    sput-object v18, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->REGISTERED:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 338
    .line 339
    move-object/from16 v19, v0

    .line 340
    .line 341
    const/16 v0, 0x13

    .line 342
    .line 343
    new-array v0, v0, [Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 344
    .line 345
    const/16 v20, 0x0

    .line 346
    .line 347
    aput-object v19, v0, v20

    .line 348
    .line 349
    const/16 v21, 0x1

    .line 350
    .line 351
    aput-object v1, v0, v21

    .line 352
    .line 353
    move-object/from16 v22, v1

    .line 354
    .line 355
    const/4 v1, 0x2

    .line 356
    aput-object v2, v0, v1

    .line 357
    .line 358
    move/from16 v23, v1

    .line 359
    .line 360
    const/4 v1, 0x3

    .line 361
    aput-object v3, v0, v1

    .line 362
    .line 363
    const/16 v24, 0x4

    .line 364
    .line 365
    aput-object v4, v0, v24

    .line 366
    .line 367
    move/from16 v25, v1

    .line 368
    .line 369
    const/4 v1, 0x5

    .line 370
    aput-object v5, v0, v1

    .line 371
    .line 372
    const/16 v26, 0x6

    .line 373
    .line 374
    aput-object v6, v0, v26

    .line 375
    .line 376
    const/16 v26, 0x7

    .line 377
    .line 378
    aput-object v7, v0, v26

    .line 379
    .line 380
    const/16 v26, 0x8

    .line 381
    .line 382
    aput-object v8, v0, v26

    .line 383
    .line 384
    const/16 v26, 0x9

    .line 385
    .line 386
    aput-object v9, v0, v26

    .line 387
    .line 388
    const/16 v26, 0xa

    .line 389
    .line 390
    aput-object v10, v0, v26

    .line 391
    .line 392
    const/16 v26, 0xb

    .line 393
    .line 394
    aput-object v11, v0, v26

    .line 395
    .line 396
    const/16 v26, 0xc

    .line 397
    .line 398
    aput-object v12, v0, v26

    .line 399
    .line 400
    const/16 v26, 0xd

    .line 401
    .line 402
    aput-object v13, v0, v26

    .line 403
    .line 404
    const/16 v26, 0xe

    .line 405
    .line 406
    aput-object v14, v0, v26

    .line 407
    .line 408
    const/16 v26, 0xf

    .line 409
    .line 410
    aput-object v15, v0, v26

    .line 411
    .line 412
    const/16 v26, 0x10

    .line 413
    .line 414
    aput-object v16, v0, v26

    .line 415
    .line 416
    const/16 v26, 0x11

    .line 417
    .line 418
    aput-object v17, v0, v26

    .line 419
    .line 420
    const/16 v26, 0x12

    .line 421
    .line 422
    aput-object v18, v0, v26

    .line 423
    .line 424
    sput-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->$VALUES:[Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 425
    .line 426
    new-instance v1, Lkotlin/enums/EnumEntriesList;

    .line 427
    .line 428
    invoke-direct {v1, v0}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 429
    .line 430
    .line 431
    sput-object v1, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 432
    .line 433
    new-instance v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes$Companion;

    .line 434
    .line 435
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 436
    .line 437
    .line 438
    sput-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->Companion:Lorg/wikipedia/watchlist/WatchlistFilterTypes$Companion;

    .line 439
    .line 440
    const/4 v0, 0x5

    .line 441
    new-array v1, v0, [Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 442
    .line 443
    aput-object v19, v1, v20

    .line 444
    .line 445
    aput-object v22, v1, v21

    .line 446
    .line 447
    aput-object v2, v1, v23

    .line 448
    .line 449
    aput-object v3, v1, v25

    .line 450
    .line 451
    aput-object v4, v1, v24

    .line 452
    .line 453
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    sput-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->TYPE_OF_CHANGES_GROUP:Ljava/util/List;

    .line 458
    .line 459
    move/from16 v0, v25

    .line 460
    .line 461
    new-array v1, v0, [Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 462
    .line 463
    aput-object v5, v1, v20

    .line 464
    .line 465
    aput-object v6, v1, v21

    .line 466
    .line 467
    aput-object v7, v1, v23

    .line 468
    .line 469
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    sput-object v1, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->MINOR_EDITS_GROUP:Ljava/util/List;

    .line 474
    .line 475
    new-array v1, v0, [Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 476
    .line 477
    aput-object v8, v1, v20

    .line 478
    .line 479
    aput-object v9, v1, v21

    .line 480
    .line 481
    aput-object v10, v1, v23

    .line 482
    .line 483
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    sput-object v1, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->BOT_EDITS_GROUP:Ljava/util/List;

    .line 488
    .line 489
    new-array v1, v0, [Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 490
    .line 491
    aput-object v11, v1, v20

    .line 492
    .line 493
    aput-object v12, v1, v21

    .line 494
    .line 495
    aput-object v13, v1, v23

    .line 496
    .line 497
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    sput-object v1, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->UNSEEN_CHANGES_GROUP:Ljava/util/List;

    .line 502
    .line 503
    move/from16 v1, v23

    .line 504
    .line 505
    new-array v2, v1, [Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 506
    .line 507
    aput-object v14, v2, v20

    .line 508
    .line 509
    aput-object v15, v2, v21

    .line 510
    .line 511
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    sput-object v2, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->LATEST_REVISIONS_GROUP:Ljava/util/List;

    .line 516
    .line 517
    new-array v2, v0, [Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 518
    .line 519
    aput-object v16, v2, v20

    .line 520
    .line 521
    aput-object v17, v2, v21

    .line 522
    .line 523
    aput-object v18, v2, v1

    .line 524
    .line 525
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    sput-object v2, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->USER_STATUS_GROUP:Ljava/util/List;

    .line 530
    .line 531
    new-array v2, v0, [Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 532
    .line 533
    aput-object v19, v2, v20

    .line 534
    .line 535
    aput-object v22, v2, v21

    .line 536
    .line 537
    aput-object v4, v2, v1

    .line 538
    .line 539
    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    sput-object v2, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->DEFAULT_FILTER_TYPE_OF_CHANGES:Ljava/util/Set;

    .line 544
    .line 545
    const/4 v3, 0x5

    .line 546
    new-array v3, v3, [Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 547
    .line 548
    aput-object v5, v3, v20

    .line 549
    .line 550
    aput-object v11, v3, v21

    .line 551
    .line 552
    aput-object v14, v3, v1

    .line 553
    .line 554
    aput-object v8, v3, v0

    .line 555
    .line 556
    aput-object v16, v3, v24

    .line 557
    .line 558
    invoke-static {v3}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    sput-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->DEFAULT_FILTER_OTHERS:Ljava/util/Set;

    .line 563
    .line 564
    check-cast v2, Ljava/lang/Iterable;

    .line 565
    .line 566
    invoke-static {v0, v2}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    sput-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->DEFAULT_FILTER_TYPE_SET:Ljava/util/Set;

    .line 571
    .line 572
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->id:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->title:I

    .line 7
    .line 8
    iput-object p5, p0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->value:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static final synthetic access$getBOT_EDITS_GROUP$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->BOT_EDITS_GROUP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_FILTER_OTHERS$cp()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->DEFAULT_FILTER_OTHERS:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_FILTER_TYPE_OF_CHANGES$cp()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->DEFAULT_FILTER_TYPE_OF_CHANGES:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_FILTER_TYPE_SET$cp()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->DEFAULT_FILTER_TYPE_SET:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getLATEST_REVISIONS_GROUP$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->LATEST_REVISIONS_GROUP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMINOR_EDITS_GROUP$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->MINOR_EDITS_GROUP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getTYPE_OF_CHANGES_GROUP$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->TYPE_OF_CHANGES_GROUP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getUNSEEN_CHANGES_GROUP$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->UNSEEN_CHANGES_GROUP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getUSER_STATUS_GROUP$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->USER_STATUS_GROUP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/watchlist/WatchlistFilterTypes;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/watchlist/WatchlistFilterTypes;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->$VALUES:[Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/watchlist/WatchlistFilterTypes;

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

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTitle()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->title:I

    .line 2
    .line 3
    return p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

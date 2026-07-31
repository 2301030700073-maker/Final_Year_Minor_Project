.class public final enum Lorg/schabi/newpipe/error/UserAction;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $VALUES:[Lorg/schabi/newpipe/error/UserAction;

.field public static final enum CHECK_FOR_NEW_APP_VERSION:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum DATABASE_IMPORT_EXPORT:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum DELETE_FROM_HISTORY:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum DOWNLOAD_FAILED:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum DOWNLOAD_OPEN_DIALOG:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum DOWNLOAD_POSTPROCESSING:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum GETTING_MAIN_SCREEN_TAB:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum GET_SUGGESTIONS:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum LOAD_IMAGE:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum NEW_STREAMS_NOTIFICATIONS:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum OPEN_INFO_ITEM_DIALOG:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum PLAY_ON_POPUP:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum PLAY_STREAM:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum PREFERENCES_MIGRATION:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum REQUESTED_CHANNEL:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum REQUESTED_COMMENTS:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum REQUESTED_COMMENT_REPLIES:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum REQUESTED_FEED:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum REQUESTED_KIOSK:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum REQUESTED_PLAYLIST:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum SEARCHED:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum SHARE_TO_NEWPIPE:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum SOMETHING_ELSE:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum SUBSCRIPTION_CHANGE:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum SUBSCRIPTION_GET:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum SUBSCRIPTION_IMPORT_EXPORT:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum SUBSCRIPTION_UPDATE:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum UI_ERROR:Lorg/schabi/newpipe/error/UserAction;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 57

    .line 1
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    .line 2
    .line 3
    const-string/jumbo v1, "user report"

    .line 4
    .line 5
    .line 6
    const-string v2, "USER_REPORT"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v2, v3, v1}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lorg/schabi/newpipe/error/UserAction;

    .line 13
    .line 14
    const-string/jumbo v2, "ui error"

    .line 15
    .line 16
    .line 17
    const-string v4, "UI_ERROR"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lorg/schabi/newpipe/error/UserAction;->UI_ERROR:Lorg/schabi/newpipe/error/UserAction;

    .line 24
    .line 25
    new-instance v2, Lorg/schabi/newpipe/error/UserAction;

    .line 26
    .line 27
    const-string v4, "database import or export"

    .line 28
    .line 29
    const-string v6, "DATABASE_IMPORT_EXPORT"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v7, v4}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lorg/schabi/newpipe/error/UserAction;->DATABASE_IMPORT_EXPORT:Lorg/schabi/newpipe/error/UserAction;

    .line 36
    .line 37
    new-instance v4, Lorg/schabi/newpipe/error/UserAction;

    .line 38
    .line 39
    const-string/jumbo v6, "subscription change"

    .line 40
    .line 41
    .line 42
    const-string v8, "SUBSCRIPTION_CHANGE"

    .line 43
    .line 44
    const/4 v9, 0x3

    .line 45
    invoke-direct {v4, v8, v9, v6}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sput-object v4, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_CHANGE:Lorg/schabi/newpipe/error/UserAction;

    .line 49
    .line 50
    new-instance v6, Lorg/schabi/newpipe/error/UserAction;

    .line 51
    .line 52
    const-string/jumbo v8, "subscription update"

    .line 53
    .line 54
    .line 55
    const-string v10, "SUBSCRIPTION_UPDATE"

    .line 56
    .line 57
    const/4 v11, 0x4

    .line 58
    invoke-direct {v6, v10, v11, v8}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sput-object v6, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_UPDATE:Lorg/schabi/newpipe/error/UserAction;

    .line 62
    .line 63
    new-instance v8, Lorg/schabi/newpipe/error/UserAction;

    .line 64
    .line 65
    const-string v10, "get subscription"

    .line 66
    .line 67
    const-string v12, "SUBSCRIPTION_GET"

    .line 68
    .line 69
    const/4 v13, 0x5

    .line 70
    invoke-direct {v8, v12, v13, v10}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sput-object v8, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_GET:Lorg/schabi/newpipe/error/UserAction;

    .line 74
    .line 75
    new-instance v10, Lorg/schabi/newpipe/error/UserAction;

    .line 76
    .line 77
    const-string/jumbo v12, "subscription import or export"

    .line 78
    .line 79
    .line 80
    const-string v14, "SUBSCRIPTION_IMPORT_EXPORT"

    .line 81
    .line 82
    const/4 v15, 0x6

    .line 83
    invoke-direct {v10, v14, v15, v12}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sput-object v10, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_IMPORT_EXPORT:Lorg/schabi/newpipe/error/UserAction;

    .line 87
    .line 88
    new-instance v12, Lorg/schabi/newpipe/error/UserAction;

    .line 89
    .line 90
    const-string v14, "load image"

    .line 91
    .line 92
    move/from16 v16, v3

    .line 93
    .line 94
    const-string v3, "LOAD_IMAGE"

    .line 95
    .line 96
    move/from16 v17, v5

    .line 97
    .line 98
    const/4 v5, 0x7

    .line 99
    invoke-direct {v12, v3, v5, v14}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sput-object v12, Lorg/schabi/newpipe/error/UserAction;->LOAD_IMAGE:Lorg/schabi/newpipe/error/UserAction;

    .line 103
    .line 104
    new-instance v3, Lorg/schabi/newpipe/error/UserAction;

    .line 105
    .line 106
    const-string/jumbo v14, "something else"

    .line 107
    .line 108
    .line 109
    move/from16 v18, v5

    .line 110
    .line 111
    const-string v5, "SOMETHING_ELSE"

    .line 112
    .line 113
    move/from16 v19, v7

    .line 114
    .line 115
    const/16 v7, 0x8

    .line 116
    .line 117
    invoke-direct {v3, v5, v7, v14}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sput-object v3, Lorg/schabi/newpipe/error/UserAction;->SOMETHING_ELSE:Lorg/schabi/newpipe/error/UserAction;

    .line 121
    .line 122
    new-instance v5, Lorg/schabi/newpipe/error/UserAction;

    .line 123
    .line 124
    const-string v14, "searched"

    .line 125
    .line 126
    move/from16 v20, v7

    .line 127
    .line 128
    const-string v7, "SEARCHED"

    .line 129
    .line 130
    move/from16 v21, v9

    .line 131
    .line 132
    const/16 v9, 0x9

    .line 133
    .line 134
    invoke-direct {v5, v7, v9, v14}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    sput-object v5, Lorg/schabi/newpipe/error/UserAction;->SEARCHED:Lorg/schabi/newpipe/error/UserAction;

    .line 138
    .line 139
    new-instance v7, Lorg/schabi/newpipe/error/UserAction;

    .line 140
    .line 141
    const-string v14, "get suggestions"

    .line 142
    .line 143
    move/from16 v22, v9

    .line 144
    .line 145
    const-string v9, "GET_SUGGESTIONS"

    .line 146
    .line 147
    move/from16 v23, v11

    .line 148
    .line 149
    const/16 v11, 0xa

    .line 150
    .line 151
    invoke-direct {v7, v9, v11, v14}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    sput-object v7, Lorg/schabi/newpipe/error/UserAction;->GET_SUGGESTIONS:Lorg/schabi/newpipe/error/UserAction;

    .line 155
    .line 156
    new-instance v9, Lorg/schabi/newpipe/error/UserAction;

    .line 157
    .line 158
    const-string v14, "requested stream"

    .line 159
    .line 160
    move/from16 v24, v11

    .line 161
    .line 162
    const-string v11, "REQUESTED_STREAM"

    .line 163
    .line 164
    move/from16 v25, v13

    .line 165
    .line 166
    const/16 v13, 0xb

    .line 167
    .line 168
    invoke-direct {v9, v11, v13, v14}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sput-object v9, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

    .line 172
    .line 173
    new-instance v11, Lorg/schabi/newpipe/error/UserAction;

    .line 174
    .line 175
    const-string v14, "requested channel"

    .line 176
    .line 177
    move/from16 v26, v13

    .line 178
    .line 179
    const-string v13, "REQUESTED_CHANNEL"

    .line 180
    .line 181
    move/from16 v27, v15

    .line 182
    .line 183
    const/16 v15, 0xc

    .line 184
    .line 185
    invoke-direct {v11, v13, v15, v14}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    sput-object v11, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_CHANNEL:Lorg/schabi/newpipe/error/UserAction;

    .line 189
    .line 190
    new-instance v13, Lorg/schabi/newpipe/error/UserAction;

    .line 191
    .line 192
    const-string v14, "requested playlist"

    .line 193
    .line 194
    move/from16 v28, v15

    .line 195
    .line 196
    const-string v15, "REQUESTED_PLAYLIST"

    .line 197
    .line 198
    move-object/from16 v29, v0

    .line 199
    .line 200
    const/16 v0, 0xd

    .line 201
    .line 202
    invoke-direct {v13, v15, v0, v14}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    sput-object v13, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_PLAYLIST:Lorg/schabi/newpipe/error/UserAction;

    .line 206
    .line 207
    new-instance v14, Lorg/schabi/newpipe/error/UserAction;

    .line 208
    .line 209
    const-string v15, "requested kiosk"

    .line 210
    .line 211
    move/from16 v30, v0

    .line 212
    .line 213
    const-string v0, "REQUESTED_KIOSK"

    .line 214
    .line 215
    move-object/from16 v31, v1

    .line 216
    .line 217
    const/16 v1, 0xe

    .line 218
    .line 219
    invoke-direct {v14, v0, v1, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    sput-object v14, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_KIOSK:Lorg/schabi/newpipe/error/UserAction;

    .line 223
    .line 224
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    .line 225
    .line 226
    const-string v15, "requested comments"

    .line 227
    .line 228
    move/from16 v32, v1

    .line 229
    .line 230
    const-string v1, "REQUESTED_COMMENTS"

    .line 231
    .line 232
    move-object/from16 v33, v2

    .line 233
    .line 234
    const/16 v2, 0xf

    .line 235
    .line 236
    invoke-direct {v0, v1, v2, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_COMMENTS:Lorg/schabi/newpipe/error/UserAction;

    .line 240
    .line 241
    new-instance v1, Lorg/schabi/newpipe/error/UserAction;

    .line 242
    .line 243
    const-string v15, "requested comment replies"

    .line 244
    .line 245
    move/from16 v34, v2

    .line 246
    .line 247
    const-string v2, "REQUESTED_COMMENT_REPLIES"

    .line 248
    .line 249
    move-object/from16 v35, v0

    .line 250
    .line 251
    const/16 v0, 0x10

    .line 252
    .line 253
    invoke-direct {v1, v2, v0, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 254
    .line 255
    .line 256
    sput-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_COMMENT_REPLIES:Lorg/schabi/newpipe/error/UserAction;

    .line 257
    .line 258
    new-instance v2, Lorg/schabi/newpipe/error/UserAction;

    .line 259
    .line 260
    const-string v15, "requested feed"

    .line 261
    .line 262
    move/from16 v36, v0

    .line 263
    .line 264
    const-string v0, "REQUESTED_FEED"

    .line 265
    .line 266
    move-object/from16 v37, v1

    .line 267
    .line 268
    const/16 v1, 0x11

    .line 269
    .line 270
    invoke-direct {v2, v0, v1, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 271
    .line 272
    .line 273
    sput-object v2, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_FEED:Lorg/schabi/newpipe/error/UserAction;

    .line 274
    .line 275
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    .line 276
    .line 277
    const-string v15, "bookmark"

    .line 278
    .line 279
    move/from16 v38, v1

    .line 280
    .line 281
    const-string v1, "REQUESTED_BOOKMARK"

    .line 282
    .line 283
    move-object/from16 v39, v2

    .line 284
    .line 285
    const/16 v2, 0x12

    .line 286
    .line 287
    invoke-direct {v0, v1, v2, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    .line 291
    .line 292
    new-instance v1, Lorg/schabi/newpipe/error/UserAction;

    .line 293
    .line 294
    const-string v15, "delete from history"

    .line 295
    .line 296
    move/from16 v40, v2

    .line 297
    .line 298
    const-string v2, "DELETE_FROM_HISTORY"

    .line 299
    .line 300
    move-object/from16 v41, v0

    .line 301
    .line 302
    const/16 v0, 0x13

    .line 303
    .line 304
    invoke-direct {v1, v2, v0, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    .line 306
    .line 307
    sput-object v1, Lorg/schabi/newpipe/error/UserAction;->DELETE_FROM_HISTORY:Lorg/schabi/newpipe/error/UserAction;

    .line 308
    .line 309
    new-instance v2, Lorg/schabi/newpipe/error/UserAction;

    .line 310
    .line 311
    const-string v15, "play stream"

    .line 312
    .line 313
    move/from16 v42, v0

    .line 314
    .line 315
    const-string v0, "PLAY_STREAM"

    .line 316
    .line 317
    move-object/from16 v43, v1

    .line 318
    .line 319
    const/16 v1, 0x14

    .line 320
    .line 321
    invoke-direct {v2, v0, v1, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    .line 323
    .line 324
    sput-object v2, Lorg/schabi/newpipe/error/UserAction;->PLAY_STREAM:Lorg/schabi/newpipe/error/UserAction;

    .line 325
    .line 326
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    .line 327
    .line 328
    const-string v15, "download open dialog"

    .line 329
    .line 330
    move/from16 v44, v1

    .line 331
    .line 332
    const-string v1, "DOWNLOAD_OPEN_DIALOG"

    .line 333
    .line 334
    move-object/from16 v45, v2

    .line 335
    .line 336
    const/16 v2, 0x15

    .line 337
    .line 338
    invoke-direct {v0, v1, v2, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 339
    .line 340
    .line 341
    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_OPEN_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    .line 342
    .line 343
    new-instance v1, Lorg/schabi/newpipe/error/UserAction;

    .line 344
    .line 345
    const/16 v15, 0x16

    .line 346
    .line 347
    move/from16 v46, v2

    .line 348
    .line 349
    const-string v2, "download post-processing"

    .line 350
    .line 351
    move-object/from16 v47, v0

    .line 352
    .line 353
    const-string v0, "DOWNLOAD_POSTPROCESSING"

    .line 354
    .line 355
    invoke-direct {v1, v0, v15, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 356
    .line 357
    .line 358
    sput-object v1, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_POSTPROCESSING:Lorg/schabi/newpipe/error/UserAction;

    .line 359
    .line 360
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    .line 361
    .line 362
    const/16 v2, 0x17

    .line 363
    .line 364
    const-string v15, "download failed"

    .line 365
    .line 366
    move-object/from16 v48, v1

    .line 367
    .line 368
    const-string v1, "DOWNLOAD_FAILED"

    .line 369
    .line 370
    invoke-direct {v0, v1, v2, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 371
    .line 372
    .line 373
    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_FAILED:Lorg/schabi/newpipe/error/UserAction;

    .line 374
    .line 375
    new-instance v1, Lorg/schabi/newpipe/error/UserAction;

    .line 376
    .line 377
    const/16 v2, 0x18

    .line 378
    .line 379
    const-string v15, "new streams notifications"

    .line 380
    .line 381
    move-object/from16 v49, v0

    .line 382
    .line 383
    const-string v0, "NEW_STREAMS_NOTIFICATIONS"

    .line 384
    .line 385
    invoke-direct {v1, v0, v2, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 386
    .line 387
    .line 388
    sput-object v1, Lorg/schabi/newpipe/error/UserAction;->NEW_STREAMS_NOTIFICATIONS:Lorg/schabi/newpipe/error/UserAction;

    .line 389
    .line 390
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    .line 391
    .line 392
    const/16 v2, 0x19

    .line 393
    .line 394
    const-string v15, "migration of preferences"

    .line 395
    .line 396
    move-object/from16 v50, v1

    .line 397
    .line 398
    const-string v1, "PREFERENCES_MIGRATION"

    .line 399
    .line 400
    invoke-direct {v0, v1, v2, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 401
    .line 402
    .line 403
    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->PREFERENCES_MIGRATION:Lorg/schabi/newpipe/error/UserAction;

    .line 404
    .line 405
    new-instance v1, Lorg/schabi/newpipe/error/UserAction;

    .line 406
    .line 407
    const/16 v2, 0x1a

    .line 408
    .line 409
    const-string/jumbo v15, "share to newpipe"

    .line 410
    .line 411
    .line 412
    move-object/from16 v51, v0

    .line 413
    .line 414
    const-string v0, "SHARE_TO_NEWPIPE"

    .line 415
    .line 416
    invoke-direct {v1, v0, v2, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 417
    .line 418
    .line 419
    sput-object v1, Lorg/schabi/newpipe/error/UserAction;->SHARE_TO_NEWPIPE:Lorg/schabi/newpipe/error/UserAction;

    .line 420
    .line 421
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    .line 422
    .line 423
    const/16 v2, 0x1b

    .line 424
    .line 425
    const-string v15, "check for new app version"

    .line 426
    .line 427
    move-object/from16 v52, v1

    .line 428
    .line 429
    const-string v1, "CHECK_FOR_NEW_APP_VERSION"

    .line 430
    .line 431
    invoke-direct {v0, v1, v2, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 432
    .line 433
    .line 434
    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->CHECK_FOR_NEW_APP_VERSION:Lorg/schabi/newpipe/error/UserAction;

    .line 435
    .line 436
    new-instance v1, Lorg/schabi/newpipe/error/UserAction;

    .line 437
    .line 438
    const/16 v2, 0x1c

    .line 439
    .line 440
    const-string v15, "open info item dialog"

    .line 441
    .line 442
    move-object/from16 v53, v0

    .line 443
    .line 444
    const-string v0, "OPEN_INFO_ITEM_DIALOG"

    .line 445
    .line 446
    invoke-direct {v1, v0, v2, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 447
    .line 448
    .line 449
    sput-object v1, Lorg/schabi/newpipe/error/UserAction;->OPEN_INFO_ITEM_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    .line 450
    .line 451
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    .line 452
    .line 453
    const/16 v2, 0x1d

    .line 454
    .line 455
    const-string v15, "getting main screen tab"

    .line 456
    .line 457
    move-object/from16 v54, v1

    .line 458
    .line 459
    const-string v1, "GETTING_MAIN_SCREEN_TAB"

    .line 460
    .line 461
    invoke-direct {v0, v1, v2, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 462
    .line 463
    .line 464
    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->GETTING_MAIN_SCREEN_TAB:Lorg/schabi/newpipe/error/UserAction;

    .line 465
    .line 466
    new-instance v1, Lorg/schabi/newpipe/error/UserAction;

    .line 467
    .line 468
    const/16 v2, 0x1e

    .line 469
    .line 470
    const-string v15, "play on popup"

    .line 471
    .line 472
    move-object/from16 v55, v0

    .line 473
    .line 474
    const-string v0, "PLAY_ON_POPUP"

    .line 475
    .line 476
    invoke-direct {v1, v0, v2, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 477
    .line 478
    .line 479
    sput-object v1, Lorg/schabi/newpipe/error/UserAction;->PLAY_ON_POPUP:Lorg/schabi/newpipe/error/UserAction;

    .line 480
    .line 481
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    .line 482
    .line 483
    const/16 v2, 0x1f

    .line 484
    .line 485
    const-string v15, "loading subscriptions"

    .line 486
    .line 487
    move-object/from16 v56, v1

    .line 488
    .line 489
    const-string v1, "SUBSCRIPTIONS"

    .line 490
    .line 491
    invoke-direct {v0, v1, v2, v15}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 492
    .line 493
    .line 494
    const/16 v1, 0x20

    .line 495
    .line 496
    new-array v1, v1, [Lorg/schabi/newpipe/error/UserAction;

    .line 497
    .line 498
    aput-object v29, v1, v16

    .line 499
    .line 500
    aput-object v31, v1, v17

    .line 501
    .line 502
    aput-object v33, v1, v19

    .line 503
    .line 504
    aput-object v4, v1, v21

    .line 505
    .line 506
    aput-object v6, v1, v23

    .line 507
    .line 508
    aput-object v8, v1, v25

    .line 509
    .line 510
    aput-object v10, v1, v27

    .line 511
    .line 512
    aput-object v12, v1, v18

    .line 513
    .line 514
    aput-object v3, v1, v20

    .line 515
    .line 516
    aput-object v5, v1, v22

    .line 517
    .line 518
    aput-object v7, v1, v24

    .line 519
    .line 520
    aput-object v9, v1, v26

    .line 521
    .line 522
    aput-object v11, v1, v28

    .line 523
    .line 524
    aput-object v13, v1, v30

    .line 525
    .line 526
    aput-object v14, v1, v32

    .line 527
    .line 528
    aput-object v35, v1, v34

    .line 529
    .line 530
    aput-object v37, v1, v36

    .line 531
    .line 532
    aput-object v39, v1, v38

    .line 533
    .line 534
    aput-object v41, v1, v40

    .line 535
    .line 536
    aput-object v43, v1, v42

    .line 537
    .line 538
    aput-object v45, v1, v44

    .line 539
    .line 540
    aput-object v47, v1, v46

    .line 541
    .line 542
    const/16 v2, 0x16

    .line 543
    .line 544
    aput-object v48, v1, v2

    .line 545
    .line 546
    const/16 v2, 0x17

    .line 547
    .line 548
    aput-object v49, v1, v2

    .line 549
    .line 550
    const/16 v2, 0x18

    .line 551
    .line 552
    aput-object v50, v1, v2

    .line 553
    .line 554
    const/16 v2, 0x19

    .line 555
    .line 556
    aput-object v51, v1, v2

    .line 557
    .line 558
    const/16 v2, 0x1a

    .line 559
    .line 560
    aput-object v52, v1, v2

    .line 561
    .line 562
    const/16 v2, 0x1b

    .line 563
    .line 564
    aput-object v53, v1, v2

    .line 565
    .line 566
    const/16 v2, 0x1c

    .line 567
    .line 568
    aput-object v54, v1, v2

    .line 569
    .line 570
    const/16 v2, 0x1d

    .line 571
    .line 572
    aput-object v55, v1, v2

    .line 573
    .line 574
    const/16 v2, 0x1e

    .line 575
    .line 576
    aput-object v56, v1, v2

    .line 577
    .line 578
    const/16 v2, 0x1f

    .line 579
    .line 580
    aput-object v0, v1, v2

    .line 581
    .line 582
    sput-object v1, Lorg/schabi/newpipe/error/UserAction;->$VALUES:[Lorg/schabi/newpipe/error/UserAction;

    .line 583
    .line 584
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/schabi/newpipe/error/UserAction;->message:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/error/UserAction;
    .locals 1

    .line 1
    const-class v0, Lorg/schabi/newpipe/error/UserAction;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/error/UserAction;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/error/UserAction;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->$VALUES:[Lorg/schabi/newpipe/error/UserAction;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/schabi/newpipe/error/UserAction;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/error/UserAction;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

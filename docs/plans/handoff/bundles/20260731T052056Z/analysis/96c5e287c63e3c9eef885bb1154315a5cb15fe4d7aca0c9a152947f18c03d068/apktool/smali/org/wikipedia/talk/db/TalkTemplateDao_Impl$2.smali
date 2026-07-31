.class public final Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;
.super Lcoil3/util/UtilsKt;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 7
    iput p1, p0, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget v1, v1, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;->$r8$classId:I

    .line 6
    .line 7
    const/16 v2, 0xc

    .line 8
    .line 9
    const/16 v3, 0xa

    .line 10
    .line 11
    const/16 v4, 0xb

    .line 12
    .line 13
    const/16 v5, 0x8

    .line 14
    .line 15
    const/16 v6, 0x9

    .line 16
    .line 17
    const/4 v7, 0x7

    .line 18
    const/4 v8, 0x6

    .line 19
    const/4 v9, 0x4

    .line 20
    const/4 v10, 0x5

    .line 21
    const/4 v11, 0x3

    .line 22
    const/4 v12, 0x2

    .line 23
    const/4 v13, 0x1

    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    move-object/from16 v1, p2

    .line 28
    .line 29
    check-cast v1, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget v14, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->id:I

    .line 38
    .line 39
    int-to-long v14, v14

    .line 40
    invoke-interface {v0, v14, v15, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 41
    .line 42
    .line 43
    iget-object v13, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 44
    .line 45
    invoke-static {v13}, Lorg/wikipedia/login/LoginClient;->wikiSiteToString(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v13

    .line 49
    if-nez v13, :cond_0

    .line 50
    .line 51
    invoke-interface {v0, v12}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {v0, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object v12, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->lang:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {v0, v11, v12}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v11, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->namespace:Lorg/wikipedia/page/Namespace;

    .line 64
    .line 65
    invoke-static {v11}, Lokio/ByteString$Companion;->namespaceToInt(Lorg/wikipedia/page/Namespace;)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    if-nez v11, :cond_1

    .line 70
    .line 71
    invoke-interface {v0, v9}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    int-to-long v11, v11

    .line 80
    invoke-interface {v0, v11, v12, v9}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 81
    .line 82
    .line 83
    :goto_1
    iget-object v9, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->timestamp:Ljava/util/Date;

    .line 84
    .line 85
    invoke-static {v9}, Lorg/wikipedia/login/LoginClient;->dateToTimestamp(Ljava/util/Date;)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    if-nez v9, :cond_2

    .line 90
    .line 91
    invoke-interface {v0, v10}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v11

    .line 99
    invoke-interface {v0, v11, v12, v10}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 100
    .line 101
    .line 102
    :goto_2
    iget-object v9, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->apiTitle:Ljava/lang/String;

    .line 103
    .line 104
    invoke-interface {v0, v8, v9}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v8, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->displayTitle:Ljava/lang/String;

    .line 108
    .line 109
    invoke-interface {v0, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v7, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->description:Ljava/lang/String;

    .line 113
    .line 114
    if-nez v7, :cond_3

    .line 115
    .line 116
    invoke-interface {v0, v5}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_3
    invoke-interface {v0, v5, v7}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_3
    iget-object v5, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->thumbUrl:Ljava/lang/String;

    .line 124
    .line 125
    if-nez v5, :cond_4

    .line 126
    .line 127
    invoke-interface {v0, v6}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_4
    invoke-interface {v0, v6, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :goto_4
    iget v5, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->status:I

    .line 135
    .line 136
    int-to-long v5, v5

    .line 137
    invoke-interface {v0, v5, v6, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->extract:Ljava/lang/String;

    .line 141
    .line 142
    if-nez v1, :cond_5

    .line 143
    .line 144
    invoke-interface {v0, v4}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 145
    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_5
    invoke-interface {v0, v4, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :goto_5
    invoke-interface {v0, v14, v15, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :pswitch_0
    move-object/from16 v1, p2

    .line 156
    .line 157
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    iget-object v14, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 166
    .line 167
    invoke-static {v14}, Lorg/wikipedia/login/LoginClient;->wikiSiteToString(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    if-nez v14, :cond_6

    .line 172
    .line 173
    invoke-interface {v0, v13}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_6
    invoke-interface {v0, v13, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :goto_6
    iget-object v13, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->namespace:Lorg/wikipedia/page/Namespace;

    .line 181
    .line 182
    invoke-static {v13}, Lokio/ByteString$Companion;->namespaceToInt(Lorg/wikipedia/page/Namespace;)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    if-nez v13, :cond_7

    .line 187
    .line 188
    invoke-interface {v0, v12}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 189
    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_7
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    int-to-long v13, v13

    .line 197
    invoke-interface {v0, v13, v14, v12}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 198
    .line 199
    .line 200
    :goto_7
    iget-object v12, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 201
    .line 202
    invoke-interface {v0, v11, v12}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v11, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 206
    .line 207
    invoke-interface {v0, v9, v11}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v9, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 211
    .line 212
    if-nez v9, :cond_8

    .line 213
    .line 214
    invoke-interface {v0, v10}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 215
    .line 216
    .line 217
    goto :goto_8

    .line 218
    :cond_8
    invoke-interface {v0, v10, v9}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :goto_8
    iget-object v9, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 222
    .line 223
    if-nez v9, :cond_9

    .line 224
    .line 225
    invoke-interface {v0, v8}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 226
    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_9
    invoke-interface {v0, v8, v9}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :goto_9
    iget-wide v8, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 233
    .line 234
    invoke-interface {v0, v8, v9, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 235
    .line 236
    .line 237
    iget-wide v7, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 238
    .line 239
    invoke-interface {v0, v7, v8, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 240
    .line 241
    .line 242
    iget-wide v7, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 243
    .line 244
    invoke-interface {v0, v7, v8, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 245
    .line 246
    .line 247
    iget-wide v5, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    .line 248
    .line 249
    invoke-interface {v0, v5, v6, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 250
    .line 251
    .line 252
    iget-boolean v3, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 253
    .line 254
    int-to-long v5, v3

    .line 255
    invoke-interface {v0, v5, v6, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 256
    .line 257
    .line 258
    iget-wide v3, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:J

    .line 259
    .line 260
    invoke-interface {v0, v3, v4, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 261
    .line 262
    .line 263
    const/16 v2, 0xd

    .line 264
    .line 265
    iget-wide v3, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->sizeBytes:J

    .line 266
    .line 267
    invoke-interface {v0, v3, v4, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 268
    .line 269
    .line 270
    const/16 v2, 0xe

    .line 271
    .line 272
    iget-object v3, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 273
    .line 274
    invoke-interface {v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const/16 v2, 0xf

    .line 278
    .line 279
    iget-wide v3, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->revId:J

    .line 280
    .line 281
    invoke-interface {v0, v3, v4, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 282
    .line 283
    .line 284
    const/16 v2, 0x10

    .line 285
    .line 286
    iget-wide v3, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId:J

    .line 287
    .line 288
    invoke-interface {v0, v3, v4, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 289
    .line 290
    .line 291
    const/16 v2, 0x11

    .line 292
    .line 293
    iget-wide v3, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 294
    .line 295
    invoke-interface {v0, v3, v4, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :pswitch_1
    move-object/from16 v1, p2

    .line 300
    .line 301
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    iget-wide v1, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 310
    .line 311
    invoke-interface {v0, v1, v2, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :pswitch_2
    move-object/from16 v1, p2

    .line 316
    .line 317
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 318
    .line 319
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    iget-object v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->listTitle:Ljava/lang/String;

    .line 326
    .line 327
    invoke-interface {v0, v13, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-object v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    .line 331
    .line 332
    if-nez v2, :cond_a

    .line 333
    .line 334
    invoke-interface {v0, v12}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 335
    .line 336
    .line 337
    goto :goto_a

    .line 338
    :cond_a
    invoke-interface {v0, v12, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 339
    .line 340
    .line 341
    :goto_a
    iget-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->mtime:J

    .line 342
    .line 343
    invoke-interface {v0, v2, v3, v11}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 344
    .line 345
    .line 346
    iget-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->atime:J

    .line 347
    .line 348
    invoke-interface {v0, v2, v3, v9}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 349
    .line 350
    .line 351
    iget-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 352
    .line 353
    invoke-interface {v0, v2, v3, v10}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 354
    .line 355
    .line 356
    iget-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->sizeBytes:J

    .line 357
    .line 358
    invoke-interface {v0, v2, v3, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 359
    .line 360
    .line 361
    iget-boolean v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->dirty:Z

    .line 362
    .line 363
    int-to-long v2, v2

    .line 364
    invoke-interface {v0, v2, v3, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 365
    .line 366
    .line 367
    iget-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    .line 368
    .line 369
    invoke-interface {v0, v2, v3, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 370
    .line 371
    .line 372
    iget-wide v1, v1, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 373
    .line 374
    invoke-interface {v0, v1, v2, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    :pswitch_3
    move-object/from16 v1, p2

    .line 379
    .line 380
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    .line 387
    .line 388
    iget-wide v1, v1, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 389
    .line 390
    invoke-interface {v0, v1, v2, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :pswitch_4
    move-object/from16 v1, p2

    .line 395
    .line 396
    check-cast v1, Lorg/wikipedia/offline/db/OfflineObject;

    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    iget v2, v1, Lorg/wikipedia/offline/db/OfflineObject;->id:I

    .line 405
    .line 406
    int-to-long v2, v2

    .line 407
    invoke-interface {v0, v2, v3, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 408
    .line 409
    .line 410
    iget-object v4, v1, Lorg/wikipedia/offline/db/OfflineObject;->url:Ljava/lang/String;

    .line 411
    .line 412
    invoke-interface {v0, v12, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-object v4, v1, Lorg/wikipedia/offline/db/OfflineObject;->lang:Ljava/lang/String;

    .line 416
    .line 417
    invoke-interface {v0, v11, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 418
    .line 419
    .line 420
    iget-object v4, v1, Lorg/wikipedia/offline/db/OfflineObject;->path:Ljava/lang/String;

    .line 421
    .line 422
    invoke-interface {v0, v9, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 423
    .line 424
    .line 425
    iget v4, v1, Lorg/wikipedia/offline/db/OfflineObject;->status:I

    .line 426
    .line 427
    int-to-long v4, v4

    .line 428
    invoke-interface {v0, v4, v5, v10}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 429
    .line 430
    .line 431
    iget-object v1, v1, Lorg/wikipedia/offline/db/OfflineObject;->usedByStr:Ljava/lang/String;

    .line 432
    .line 433
    invoke-interface {v0, v8, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-interface {v0, v2, v3, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 437
    .line 438
    .line 439
    return-void

    .line 440
    :pswitch_5
    move-object/from16 v1, p2

    .line 441
    .line 442
    check-cast v1, Lorg/wikipedia/offline/db/OfflineObject;

    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    .line 449
    .line 450
    iget v1, v1, Lorg/wikipedia/offline/db/OfflineObject;->id:I

    .line 451
    .line 452
    int-to-long v1, v1

    .line 453
    invoke-interface {v0, v1, v2, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 454
    .line 455
    .line 456
    return-void

    .line 457
    :pswitch_6
    move-object/from16 v1, p2

    .line 458
    .line 459
    check-cast v1, Lorg/wikipedia/notifications/db/Notification;

    .line 460
    .line 461
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    iget-wide v14, v1, Lorg/wikipedia/notifications/db/Notification;->id:J

    .line 468
    .line 469
    invoke-interface {v0, v14, v15, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 470
    .line 471
    .line 472
    iget-object v13, v1, Lorg/wikipedia/notifications/db/Notification;->wiki:Ljava/lang/String;

    .line 473
    .line 474
    invoke-interface {v0, v12, v13}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 475
    .line 476
    .line 477
    iget-object v12, v1, Lorg/wikipedia/notifications/db/Notification;->read:Ljava/lang/String;

    .line 478
    .line 479
    if-nez v12, :cond_b

    .line 480
    .line 481
    invoke-interface {v0, v11}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 482
    .line 483
    .line 484
    goto :goto_b

    .line 485
    :cond_b
    invoke-interface {v0, v11, v12}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 486
    .line 487
    .line 488
    :goto_b
    iget-object v11, v1, Lorg/wikipedia/notifications/db/Notification;->category:Ljava/lang/String;

    .line 489
    .line 490
    invoke-interface {v0, v9, v11}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 491
    .line 492
    .line 493
    iget-object v9, v1, Lorg/wikipedia/notifications/db/Notification;->type:Ljava/lang/String;

    .line 494
    .line 495
    invoke-interface {v0, v10, v9}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 496
    .line 497
    .line 498
    iget-wide v9, v1, Lorg/wikipedia/notifications/db/Notification;->revid:J

    .line 499
    .line 500
    invoke-interface {v0, v9, v10, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 501
    .line 502
    .line 503
    iget-object v8, v1, Lorg/wikipedia/notifications/db/Notification;->title:Lorg/wikipedia/notifications/db/Notification$Title;

    .line 504
    .line 505
    invoke-static {v8}, Lokio/Path$Companion;->titleToString(Lorg/wikipedia/notifications/db/Notification$Title;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v8

    .line 509
    if-nez v8, :cond_c

    .line 510
    .line 511
    invoke-interface {v0, v7}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 512
    .line 513
    .line 514
    goto :goto_c

    .line 515
    :cond_c
    invoke-interface {v0, v7, v8}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 516
    .line 517
    .line 518
    :goto_c
    iget-object v7, v1, Lorg/wikipedia/notifications/db/Notification;->agent:Lorg/wikipedia/notifications/db/Notification$Agent;

    .line 519
    .line 520
    invoke-static {v7}, Lokio/Path$Companion;->agentToString(Lorg/wikipedia/notifications/db/Notification$Agent;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v7

    .line 524
    if-nez v7, :cond_d

    .line 525
    .line 526
    invoke-interface {v0, v5}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 527
    .line 528
    .line 529
    goto :goto_d

    .line 530
    :cond_d
    invoke-interface {v0, v5, v7}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 531
    .line 532
    .line 533
    :goto_d
    iget-object v5, v1, Lorg/wikipedia/notifications/db/Notification;->timestamp:Lorg/wikipedia/notifications/db/Notification$Timestamp;

    .line 534
    .line 535
    invoke-static {v5}, Lokio/Path$Companion;->timestampToString(Lorg/wikipedia/notifications/db/Notification$Timestamp;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    if-nez v5, :cond_e

    .line 540
    .line 541
    invoke-interface {v0, v6}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 542
    .line 543
    .line 544
    goto :goto_e

    .line 545
    :cond_e
    invoke-interface {v0, v6, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 546
    .line 547
    .line 548
    :goto_e
    iget-object v1, v1, Lorg/wikipedia/notifications/db/Notification;->contents:Lorg/wikipedia/notifications/db/Notification$Contents;

    .line 549
    .line 550
    invoke-static {v1}, Lokio/Path$Companion;->contentsToString(Lorg/wikipedia/notifications/db/Notification$Contents;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    if-nez v1, :cond_f

    .line 555
    .line 556
    invoke-interface {v0, v3}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 557
    .line 558
    .line 559
    goto :goto_f

    .line 560
    :cond_f
    invoke-interface {v0, v3, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 561
    .line 562
    .line 563
    :goto_f
    invoke-interface {v0, v14, v15, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 564
    .line 565
    .line 566
    invoke-interface {v0, v2, v13}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 567
    .line 568
    .line 569
    return-void

    .line 570
    :pswitch_7
    move-object/from16 v1, p2

    .line 571
    .line 572
    check-cast v1, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 573
    .line 574
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    iget v14, v1, Lorg/wikipedia/games/db/DailyGameHistory;->id:I

    .line 581
    .line 582
    int-to-long v14, v14

    .line 583
    invoke-interface {v0, v14, v15, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 584
    .line 585
    .line 586
    iget v13, v1, Lorg/wikipedia/games/db/DailyGameHistory;->gameName:I

    .line 587
    .line 588
    int-to-long v2, v13

    .line 589
    invoke-interface {v0, v2, v3, v12}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 590
    .line 591
    .line 592
    iget-object v2, v1, Lorg/wikipedia/games/db/DailyGameHistory;->language:Ljava/lang/String;

    .line 593
    .line 594
    invoke-interface {v0, v11, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 595
    .line 596
    .line 597
    iget v2, v1, Lorg/wikipedia/games/db/DailyGameHistory;->year:I

    .line 598
    .line 599
    int-to-long v2, v2

    .line 600
    invoke-interface {v0, v2, v3, v9}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 601
    .line 602
    .line 603
    iget v2, v1, Lorg/wikipedia/games/db/DailyGameHistory;->month:I

    .line 604
    .line 605
    int-to-long v2, v2

    .line 606
    invoke-interface {v0, v2, v3, v10}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 607
    .line 608
    .line 609
    iget v2, v1, Lorg/wikipedia/games/db/DailyGameHistory;->day:I

    .line 610
    .line 611
    int-to-long v2, v2

    .line 612
    invoke-interface {v0, v2, v3, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 613
    .line 614
    .line 615
    iget v2, v1, Lorg/wikipedia/games/db/DailyGameHistory;->score:I

    .line 616
    .line 617
    int-to-long v2, v2

    .line 618
    invoke-interface {v0, v2, v3, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 619
    .line 620
    .line 621
    iget v2, v1, Lorg/wikipedia/games/db/DailyGameHistory;->playType:I

    .line 622
    .line 623
    int-to-long v2, v2

    .line 624
    invoke-interface {v0, v2, v3, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 625
    .line 626
    .line 627
    iget-object v2, v1, Lorg/wikipedia/games/db/DailyGameHistory;->gameData:Ljava/lang/String;

    .line 628
    .line 629
    if-nez v2, :cond_10

    .line 630
    .line 631
    invoke-interface {v0, v6}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 632
    .line 633
    .line 634
    goto :goto_10

    .line 635
    :cond_10
    invoke-interface {v0, v6, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 636
    .line 637
    .line 638
    :goto_10
    iget v2, v1, Lorg/wikipedia/games/db/DailyGameHistory;->status:I

    .line 639
    .line 640
    int-to-long v2, v2

    .line 641
    const/16 v5, 0xa

    .line 642
    .line 643
    invoke-interface {v0, v2, v3, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 644
    .line 645
    .line 646
    iget v1, v1, Lorg/wikipedia/games/db/DailyGameHistory;->currentQuestionIndex:I

    .line 647
    .line 648
    int-to-long v1, v1

    .line 649
    invoke-interface {v0, v1, v2, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 650
    .line 651
    .line 652
    const/16 v1, 0xc

    .line 653
    .line 654
    invoke-interface {v0, v14, v15, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 655
    .line 656
    .line 657
    return-void

    .line 658
    :pswitch_8
    move-object/from16 v1, p2

    .line 659
    .line 660
    check-cast v1, Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;

    .line 661
    .line 662
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    iget-object v1, v1, Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;->topicId:Ljava/lang/String;

    .line 669
    .line 670
    invoke-interface {v0, v13, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 671
    .line 672
    .line 673
    return-void

    .line 674
    :pswitch_9
    move-object/from16 v1, p2

    .line 675
    .line 676
    check-cast v1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;

    .line 677
    .line 678
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 682
    .line 683
    .line 684
    iget-object v2, v1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->apiTitle:Ljava/lang/String;

    .line 685
    .line 686
    invoke-interface {v0, v13, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 687
    .line 688
    .line 689
    iget-object v2, v1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->lang:Ljava/lang/String;

    .line 690
    .line 691
    invoke-interface {v0, v12, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 692
    .line 693
    .line 694
    iget-object v1, v1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->namespace:Lorg/wikipedia/page/Namespace;

    .line 695
    .line 696
    invoke-static {v1}, Lokio/ByteString$Companion;->namespaceToInt(Lorg/wikipedia/page/Namespace;)Ljava/lang/Integer;

    .line 697
    .line 698
    .line 699
    move-result-object v1

    .line 700
    if-nez v1, :cond_11

    .line 701
    .line 702
    invoke-interface {v0, v11}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 703
    .line 704
    .line 705
    goto :goto_11

    .line 706
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    int-to-long v1, v1

    .line 711
    invoke-interface {v0, v1, v2, v11}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 712
    .line 713
    .line 714
    :goto_11
    return-void

    .line 715
    :pswitch_a
    move-object/from16 v1, p2

    .line 716
    .line 717
    check-cast v1, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 718
    .line 719
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 723
    .line 724
    .line 725
    iget v2, v1, Lorg/wikipedia/talk/db/TalkTemplate;->id:I

    .line 726
    .line 727
    int-to-long v2, v2

    .line 728
    invoke-interface {v0, v2, v3, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 729
    .line 730
    .line 731
    iget v4, v1, Lorg/wikipedia/talk/db/TalkTemplate;->type:I

    .line 732
    .line 733
    int-to-long v4, v4

    .line 734
    invoke-interface {v0, v4, v5, v12}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 735
    .line 736
    .line 737
    iget v4, v1, Lorg/wikipedia/talk/db/TalkTemplate;->order:I

    .line 738
    .line 739
    int-to-long v4, v4

    .line 740
    invoke-interface {v0, v4, v5, v11}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 741
    .line 742
    .line 743
    iget-object v4, v1, Lorg/wikipedia/talk/db/TalkTemplate;->title:Ljava/lang/String;

    .line 744
    .line 745
    invoke-interface {v0, v9, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 746
    .line 747
    .line 748
    iget-object v4, v1, Lorg/wikipedia/talk/db/TalkTemplate;->subject:Ljava/lang/String;

    .line 749
    .line 750
    invoke-interface {v0, v10, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 751
    .line 752
    .line 753
    iget-object v1, v1, Lorg/wikipedia/talk/db/TalkTemplate;->message:Ljava/lang/String;

    .line 754
    .line 755
    invoke-interface {v0, v8, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 756
    .line 757
    .line 758
    invoke-interface {v0, v2, v3, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 759
    .line 760
    .line 761
    return-void

    .line 762
    nop

    .line 763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "UPDATE OR ABORT `RecommendedPage` SET `id` = ?,`wiki` = ?,`lang` = ?,`namespace` = ?,`timestamp` = ?,`apiTitle` = ?,`displayTitle` = ?,`description` = ?,`thumbUrl` = ?,`status` = ?,`extract` = ? WHERE `id` = ?"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "UPDATE OR REPLACE `ReadingListPage` SET `wiki` = ?,`namespace` = ?,`displayTitle` = ?,`apiTitle` = ?,`description` = ?,`thumbUrl` = ?,`listId` = ?,`id` = ?,`mtime` = ?,`atime` = ?,`offline` = ?,`status` = ?,`sizeBytes` = ?,`lang` = ?,`revId` = ?,`remoteId` = ? WHERE `id` = ?"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    const-string p0, "DELETE FROM `ReadingListPage` WHERE `id` = ?"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    const-string p0, "UPDATE OR REPLACE `ReadingList` SET `listTitle` = ?,`description` = ?,`mtime` = ?,`atime` = ?,`id` = ?,`sizeBytes` = ?,`dirty` = ?,`remoteId` = ? WHERE `id` = ?"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    const-string p0, "DELETE FROM `ReadingList` WHERE `id` = ?"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    const-string p0, "UPDATE OR REPLACE `OfflineObject` SET `id` = ?,`url` = ?,`lang` = ?,`path` = ?,`status` = ?,`usedByStr` = ? WHERE `id` = ?"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    const-string p0, "DELETE FROM `OfflineObject` WHERE `id` = ?"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    const-string p0, "UPDATE OR REPLACE `Notification` SET `id` = ?,`wiki` = ?,`read` = ?,`category` = ?,`type` = ?,`revid` = ?,`title` = ?,`agent` = ?,`timestamp` = ?,`contents` = ? WHERE `id` = ? AND `wiki` = ?"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    const-string p0, "UPDATE `DailyGameHistory` SET `id` = ?,`gameName` = ?,`language` = ?,`year` = ?,`month` = ?,`day` = ?,`score` = ?,`playType` = ?,`gameData` = ?,`status` = ?,`currentQuestionIndex` = ? WHERE `id` = ?"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    const-string p0, "DELETE FROM `InterestTopic` WHERE `topicId` = ?"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    const-string p0, "DELETE FROM `InterestArticle` WHERE `apiTitle` = ? AND `lang` = ? AND `namespace` = ?"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    const-string p0, "UPDATE OR REPLACE `TalkTemplate` SET `id` = ?,`type` = ?,`order` = ?,`title` = ?,`subject` = ?,`message` = ? WHERE `id` = ?"

    .line 40
    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

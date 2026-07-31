.class public final Landroidx/work/impl/model/WorkTagDao_Impl$1;
.super Lkotlin/text/RegexKt;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

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
    iput p1, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

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
    iget v1, v1, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

    .line 6
    .line 7
    const/16 v5, 0xd

    .line 8
    .line 9
    const/16 v6, 0xc

    .line 10
    .line 11
    const/16 v7, 0xb

    .line 12
    .line 13
    const/16 v8, 0x9

    .line 14
    .line 15
    const/16 v9, 0xa

    .line 16
    .line 17
    const/4 v10, 0x7

    .line 18
    const/16 v11, 0x8

    .line 19
    .line 20
    const/4 v12, 0x6

    .line 21
    const/4 v13, 0x5

    .line 22
    const/4 v14, 0x4

    .line 23
    const/4 v15, 0x3

    .line 24
    const/4 v2, 0x2

    .line 25
    const/4 v3, 0x1

    .line 26
    packed-switch v1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    move-object/from16 v1, p2

    .line 30
    .line 31
    check-cast v1, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget v4, v1, Lorg/wikipedia/talk/db/TalkTemplate;->id:I

    .line 40
    .line 41
    int-to-long v4, v4

    .line 42
    invoke-interface {v0, v4, v5, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 43
    .line 44
    .line 45
    iget v3, v1, Lorg/wikipedia/talk/db/TalkTemplate;->type:I

    .line 46
    .line 47
    int-to-long v3, v3

    .line 48
    invoke-interface {v0, v3, v4, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 49
    .line 50
    .line 51
    iget v2, v1, Lorg/wikipedia/talk/db/TalkTemplate;->order:I

    .line 52
    .line 53
    int-to-long v2, v2

    .line 54
    invoke-interface {v0, v2, v3, v15}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 55
    .line 56
    .line 57
    iget-object v2, v1, Lorg/wikipedia/talk/db/TalkTemplate;->title:Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {v0, v14, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, v1, Lorg/wikipedia/talk/db/TalkTemplate;->subject:Ljava/lang/String;

    .line 63
    .line 64
    invoke-interface {v0, v13, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v1, Lorg/wikipedia/talk/db/TalkTemplate;->message:Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {v0, v12, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_0
    move-object/from16 v1, p2

    .line 74
    .line 75
    check-cast v1, Lorg/wikipedia/talk/db/TalkPageSeen;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iget-object v1, v1, Lorg/wikipedia/talk/db/TalkPageSeen;->sha:Ljava/lang/String;

    .line 84
    .line 85
    invoke-interface {v0, v3, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_1
    move-object/from16 v1, p2

    .line 90
    .line 91
    check-cast v1, Lorg/wikipedia/search/db/RecentSearch;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iget-object v4, v1, Lorg/wikipedia/search/db/RecentSearch;->text:Ljava/lang/String;

    .line 100
    .line 101
    invoke-interface {v0, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v1, Lorg/wikipedia/search/db/RecentSearch;->timestamp:Ljava/util/Date;

    .line 105
    .line 106
    invoke-static {v1}, Lorg/wikipedia/login/LoginClient;->dateToTimestamp(Ljava/util/Date;)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-nez v1, :cond_0

    .line 111
    .line 112
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    invoke-interface {v0, v3, v4, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 121
    .line 122
    .line 123
    :goto_0
    return-void

    .line 124
    :pswitch_2
    move-object/from16 v1, p2

    .line 125
    .line 126
    check-cast v1, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget v4, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->id:I

    .line 135
    .line 136
    int-to-long v4, v4

    .line 137
    invoke-interface {v0, v4, v5, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 138
    .line 139
    .line 140
    iget-object v3, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 141
    .line 142
    invoke-static {v3}, Lorg/wikipedia/login/LoginClient;->wikiSiteToString(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    if-nez v3, :cond_1

    .line 147
    .line 148
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_1
    invoke-interface {v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :goto_1
    iget-object v2, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->lang:Ljava/lang/String;

    .line 156
    .line 157
    invoke-interface {v0, v15, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v2, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->namespace:Lorg/wikipedia/page/Namespace;

    .line 161
    .line 162
    invoke-static {v2}, Lokio/ByteString$Companion;->namespaceToInt(Lorg/wikipedia/page/Namespace;)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    if-nez v2, :cond_2

    .line 167
    .line 168
    invoke-interface {v0, v14}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    int-to-long v2, v2

    .line 177
    invoke-interface {v0, v2, v3, v14}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 178
    .line 179
    .line 180
    :goto_2
    iget-object v2, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->timestamp:Ljava/util/Date;

    .line 181
    .line 182
    invoke-static {v2}, Lorg/wikipedia/login/LoginClient;->dateToTimestamp(Ljava/util/Date;)Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    if-nez v2, :cond_3

    .line 187
    .line 188
    invoke-interface {v0, v13}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 193
    .line 194
    .line 195
    move-result-wide v2

    .line 196
    invoke-interface {v0, v2, v3, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 197
    .line 198
    .line 199
    :goto_3
    iget-object v2, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->apiTitle:Ljava/lang/String;

    .line 200
    .line 201
    invoke-interface {v0, v12, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v2, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->displayTitle:Ljava/lang/String;

    .line 205
    .line 206
    invoke-interface {v0, v10, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v2, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->description:Ljava/lang/String;

    .line 210
    .line 211
    if-nez v2, :cond_4

    .line 212
    .line 213
    invoke-interface {v0, v11}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_4
    invoke-interface {v0, v11, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :goto_4
    iget-object v2, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->thumbUrl:Ljava/lang/String;

    .line 221
    .line 222
    if-nez v2, :cond_5

    .line 223
    .line 224
    invoke-interface {v0, v8}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_5
    invoke-interface {v0, v8, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :goto_5
    iget v2, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->status:I

    .line 232
    .line 233
    int-to-long v2, v2

    .line 234
    invoke-interface {v0, v2, v3, v9}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 235
    .line 236
    .line 237
    iget-object v1, v1, Lorg/wikipedia/readinglist/database/RecommendedPage;->extract:Ljava/lang/String;

    .line 238
    .line 239
    if-nez v1, :cond_6

    .line 240
    .line 241
    invoke-interface {v0, v7}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 242
    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_6
    invoke-interface {v0, v7, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :goto_6
    return-void

    .line 249
    :pswitch_3
    move-object/from16 v1, p2

    .line 250
    .line 251
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    iget-object v4, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 260
    .line 261
    invoke-static {v4}, Lorg/wikipedia/login/LoginClient;->wikiSiteToString(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    if-nez v4, :cond_7

    .line 266
    .line 267
    invoke-interface {v0, v3}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 268
    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_7
    invoke-interface {v0, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :goto_7
    iget-object v3, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->namespace:Lorg/wikipedia/page/Namespace;

    .line 275
    .line 276
    invoke-static {v3}, Lokio/ByteString$Companion;->namespaceToInt(Lorg/wikipedia/page/Namespace;)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    if-nez v3, :cond_8

    .line 281
    .line 282
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 283
    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    int-to-long v3, v3

    .line 291
    invoke-interface {v0, v3, v4, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 292
    .line 293
    .line 294
    :goto_8
    iget-object v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 295
    .line 296
    invoke-interface {v0, v15, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-object v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 300
    .line 301
    invoke-interface {v0, v14, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-object v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 305
    .line 306
    if-nez v2, :cond_9

    .line 307
    .line 308
    invoke-interface {v0, v13}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 309
    .line 310
    .line 311
    goto :goto_9

    .line 312
    :cond_9
    invoke-interface {v0, v13, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :goto_9
    iget-object v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 316
    .line 317
    if-nez v2, :cond_a

    .line 318
    .line 319
    invoke-interface {v0, v12}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 320
    .line 321
    .line 322
    goto :goto_a

    .line 323
    :cond_a
    invoke-interface {v0, v12, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 324
    .line 325
    .line 326
    :goto_a
    iget-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId:J

    .line 327
    .line 328
    invoke-interface {v0, v2, v3, v10}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 329
    .line 330
    .line 331
    iget-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 332
    .line 333
    invoke-interface {v0, v2, v3, v11}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 334
    .line 335
    .line 336
    iget-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 337
    .line 338
    invoke-interface {v0, v2, v3, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 339
    .line 340
    .line 341
    iget-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    .line 342
    .line 343
    invoke-interface {v0, v2, v3, v9}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 344
    .line 345
    .line 346
    iget-boolean v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 347
    .line 348
    int-to-long v2, v2

    .line 349
    invoke-interface {v0, v2, v3, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 350
    .line 351
    .line 352
    iget-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:J

    .line 353
    .line 354
    invoke-interface {v0, v2, v3, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 355
    .line 356
    .line 357
    iget-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->sizeBytes:J

    .line 358
    .line 359
    invoke-interface {v0, v2, v3, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 360
    .line 361
    .line 362
    iget-object v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 363
    .line 364
    const/16 v3, 0xe

    .line 365
    .line 366
    invoke-interface {v0, v3, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 367
    .line 368
    .line 369
    iget-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->revId:J

    .line 370
    .line 371
    const/16 v4, 0xf

    .line 372
    .line 373
    invoke-interface {v0, v2, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 374
    .line 375
    .line 376
    iget-wide v1, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId:J

    .line 377
    .line 378
    const/16 v3, 0x10

    .line 379
    .line 380
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :pswitch_4
    move-object/from16 v1, p2

    .line 385
    .line 386
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    iget-object v4, v1, Lorg/wikipedia/readinglist/database/ReadingList;->listTitle:Ljava/lang/String;

    .line 395
    .line 396
    invoke-interface {v0, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 397
    .line 398
    .line 399
    iget-object v3, v1, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    .line 400
    .line 401
    if-nez v3, :cond_b

    .line 402
    .line 403
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 404
    .line 405
    .line 406
    goto :goto_b

    .line 407
    :cond_b
    invoke-interface {v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 408
    .line 409
    .line 410
    :goto_b
    iget-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->mtime:J

    .line 411
    .line 412
    invoke-interface {v0, v2, v3, v15}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 413
    .line 414
    .line 415
    iget-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->atime:J

    .line 416
    .line 417
    invoke-interface {v0, v2, v3, v14}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 418
    .line 419
    .line 420
    iget-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 421
    .line 422
    invoke-interface {v0, v2, v3, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 423
    .line 424
    .line 425
    iget-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->sizeBytes:J

    .line 426
    .line 427
    invoke-interface {v0, v2, v3, v12}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 428
    .line 429
    .line 430
    iget-boolean v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->dirty:Z

    .line 431
    .line 432
    int-to-long v2, v2

    .line 433
    invoke-interface {v0, v2, v3, v10}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 434
    .line 435
    .line 436
    iget-wide v1, v1, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    .line 437
    .line 438
    invoke-interface {v0, v1, v2, v11}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 439
    .line 440
    .line 441
    return-void

    .line 442
    :pswitch_5
    move-object/from16 v1, p2

    .line 443
    .line 444
    check-cast v1, Lorg/wikipedia/pageimages/db/PageImage;

    .line 445
    .line 446
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    iget-object v4, v1, Lorg/wikipedia/pageimages/db/PageImage;->lang:Ljava/lang/String;

    .line 453
    .line 454
    invoke-interface {v0, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iget-object v3, v1, Lorg/wikipedia/pageimages/db/PageImage;->namespace:Ljava/lang/String;

    .line 458
    .line 459
    invoke-interface {v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 460
    .line 461
    .line 462
    iget-object v2, v1, Lorg/wikipedia/pageimages/db/PageImage;->apiTitle:Ljava/lang/String;

    .line 463
    .line 464
    invoke-interface {v0, v15, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 465
    .line 466
    .line 467
    iget-object v2, v1, Lorg/wikipedia/pageimages/db/PageImage;->imageName:Ljava/lang/String;

    .line 468
    .line 469
    if-nez v2, :cond_c

    .line 470
    .line 471
    invoke-interface {v0, v14}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 472
    .line 473
    .line 474
    goto :goto_c

    .line 475
    :cond_c
    invoke-interface {v0, v14, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 476
    .line 477
    .line 478
    :goto_c
    iget-object v2, v1, Lorg/wikipedia/pageimages/db/PageImage;->description:Ljava/lang/String;

    .line 479
    .line 480
    if-nez v2, :cond_d

    .line 481
    .line 482
    invoke-interface {v0, v13}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 483
    .line 484
    .line 485
    goto :goto_d

    .line 486
    :cond_d
    invoke-interface {v0, v13, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 487
    .line 488
    .line 489
    :goto_d
    iget v2, v1, Lorg/wikipedia/pageimages/db/PageImage;->timeSpentSec:I

    .line 490
    .line 491
    int-to-long v2, v2

    .line 492
    invoke-interface {v0, v2, v3, v12}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 493
    .line 494
    .line 495
    iget-wide v2, v1, Lorg/wikipedia/pageimages/db/PageImage;->geoLat:D

    .line 496
    .line 497
    invoke-interface {v0, v2, v3, v10}, Landroidx/sqlite/SQLiteStatement;->bindDouble(DI)V

    .line 498
    .line 499
    .line 500
    iget-wide v1, v1, Lorg/wikipedia/pageimages/db/PageImage;->geoLon:D

    .line 501
    .line 502
    invoke-interface {v0, v1, v2, v11}, Landroidx/sqlite/SQLiteStatement;->bindDouble(DI)V

    .line 503
    .line 504
    .line 505
    return-void

    .line 506
    :pswitch_6
    move-object/from16 v1, p2

    .line 507
    .line 508
    check-cast v1, Lorg/wikipedia/offline/db/OfflineObject;

    .line 509
    .line 510
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    .line 515
    .line 516
    iget v4, v1, Lorg/wikipedia/offline/db/OfflineObject;->id:I

    .line 517
    .line 518
    int-to-long v4, v4

    .line 519
    invoke-interface {v0, v4, v5, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 520
    .line 521
    .line 522
    iget-object v3, v1, Lorg/wikipedia/offline/db/OfflineObject;->url:Ljava/lang/String;

    .line 523
    .line 524
    invoke-interface {v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 525
    .line 526
    .line 527
    iget-object v2, v1, Lorg/wikipedia/offline/db/OfflineObject;->lang:Ljava/lang/String;

    .line 528
    .line 529
    invoke-interface {v0, v15, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 530
    .line 531
    .line 532
    iget-object v2, v1, Lorg/wikipedia/offline/db/OfflineObject;->path:Ljava/lang/String;

    .line 533
    .line 534
    invoke-interface {v0, v14, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 535
    .line 536
    .line 537
    iget v2, v1, Lorg/wikipedia/offline/db/OfflineObject;->status:I

    .line 538
    .line 539
    int-to-long v2, v2

    .line 540
    invoke-interface {v0, v2, v3, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 541
    .line 542
    .line 543
    iget-object v1, v1, Lorg/wikipedia/offline/db/OfflineObject;->usedByStr:Ljava/lang/String;

    .line 544
    .line 545
    invoke-interface {v0, v12, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 546
    .line 547
    .line 548
    return-void

    .line 549
    :pswitch_7
    move-object/from16 v1, p2

    .line 550
    .line 551
    check-cast v1, Lorg/wikipedia/notifications/db/Notification;

    .line 552
    .line 553
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    iget-wide v4, v1, Lorg/wikipedia/notifications/db/Notification;->id:J

    .line 560
    .line 561
    invoke-interface {v0, v4, v5, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 562
    .line 563
    .line 564
    iget-object v3, v1, Lorg/wikipedia/notifications/db/Notification;->wiki:Ljava/lang/String;

    .line 565
    .line 566
    invoke-interface {v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 567
    .line 568
    .line 569
    iget-object v2, v1, Lorg/wikipedia/notifications/db/Notification;->read:Ljava/lang/String;

    .line 570
    .line 571
    if-nez v2, :cond_e

    .line 572
    .line 573
    invoke-interface {v0, v15}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 574
    .line 575
    .line 576
    goto :goto_e

    .line 577
    :cond_e
    invoke-interface {v0, v15, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 578
    .line 579
    .line 580
    :goto_e
    iget-object v2, v1, Lorg/wikipedia/notifications/db/Notification;->category:Ljava/lang/String;

    .line 581
    .line 582
    invoke-interface {v0, v14, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 583
    .line 584
    .line 585
    iget-object v2, v1, Lorg/wikipedia/notifications/db/Notification;->type:Ljava/lang/String;

    .line 586
    .line 587
    invoke-interface {v0, v13, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 588
    .line 589
    .line 590
    iget-wide v2, v1, Lorg/wikipedia/notifications/db/Notification;->revid:J

    .line 591
    .line 592
    invoke-interface {v0, v2, v3, v12}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 593
    .line 594
    .line 595
    iget-object v2, v1, Lorg/wikipedia/notifications/db/Notification;->title:Lorg/wikipedia/notifications/db/Notification$Title;

    .line 596
    .line 597
    invoke-static {v2}, Lokio/Path$Companion;->titleToString(Lorg/wikipedia/notifications/db/Notification$Title;)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    if-nez v2, :cond_f

    .line 602
    .line 603
    invoke-interface {v0, v10}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 604
    .line 605
    .line 606
    goto :goto_f

    .line 607
    :cond_f
    invoke-interface {v0, v10, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 608
    .line 609
    .line 610
    :goto_f
    iget-object v2, v1, Lorg/wikipedia/notifications/db/Notification;->agent:Lorg/wikipedia/notifications/db/Notification$Agent;

    .line 611
    .line 612
    invoke-static {v2}, Lokio/Path$Companion;->agentToString(Lorg/wikipedia/notifications/db/Notification$Agent;)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    if-nez v2, :cond_10

    .line 617
    .line 618
    invoke-interface {v0, v11}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 619
    .line 620
    .line 621
    goto :goto_10

    .line 622
    :cond_10
    invoke-interface {v0, v11, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 623
    .line 624
    .line 625
    :goto_10
    iget-object v2, v1, Lorg/wikipedia/notifications/db/Notification;->timestamp:Lorg/wikipedia/notifications/db/Notification$Timestamp;

    .line 626
    .line 627
    invoke-static {v2}, Lokio/Path$Companion;->timestampToString(Lorg/wikipedia/notifications/db/Notification$Timestamp;)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    if-nez v2, :cond_11

    .line 632
    .line 633
    invoke-interface {v0, v8}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 634
    .line 635
    .line 636
    goto :goto_11

    .line 637
    :cond_11
    invoke-interface {v0, v8, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 638
    .line 639
    .line 640
    :goto_11
    iget-object v1, v1, Lorg/wikipedia/notifications/db/Notification;->contents:Lorg/wikipedia/notifications/db/Notification$Contents;

    .line 641
    .line 642
    invoke-static {v1}, Lokio/Path$Companion;->contentsToString(Lorg/wikipedia/notifications/db/Notification$Contents;)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    if-nez v1, :cond_12

    .line 647
    .line 648
    invoke-interface {v0, v9}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 649
    .line 650
    .line 651
    goto :goto_12

    .line 652
    :cond_12
    invoke-interface {v0, v9, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 653
    .line 654
    .line 655
    :goto_12
    return-void

    .line 656
    :pswitch_8
    move-object/from16 v1, p2

    .line 657
    .line 658
    check-cast v1, Lorg/wikipedia/history/HistoryEntry;

    .line 659
    .line 660
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 664
    .line 665
    .line 666
    iget-object v4, v1, Lorg/wikipedia/history/HistoryEntry;->authority:Ljava/lang/String;

    .line 667
    .line 668
    invoke-interface {v0, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 669
    .line 670
    .line 671
    iget-object v3, v1, Lorg/wikipedia/history/HistoryEntry;->lang:Ljava/lang/String;

    .line 672
    .line 673
    invoke-interface {v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 674
    .line 675
    .line 676
    iget-object v2, v1, Lorg/wikipedia/history/HistoryEntry;->apiTitle:Ljava/lang/String;

    .line 677
    .line 678
    invoke-interface {v0, v15, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 679
    .line 680
    .line 681
    iget-object v2, v1, Lorg/wikipedia/history/HistoryEntry;->displayTitle:Ljava/lang/String;

    .line 682
    .line 683
    invoke-interface {v0, v14, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 684
    .line 685
    .line 686
    iget-wide v2, v1, Lorg/wikipedia/history/HistoryEntry;->id:J

    .line 687
    .line 688
    invoke-interface {v0, v2, v3, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 689
    .line 690
    .line 691
    iget-object v2, v1, Lorg/wikipedia/history/HistoryEntry;->namespace:Ljava/lang/String;

    .line 692
    .line 693
    invoke-interface {v0, v12, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 694
    .line 695
    .line 696
    iget-object v2, v1, Lorg/wikipedia/history/HistoryEntry;->timestamp:Ljava/util/Date;

    .line 697
    .line 698
    invoke-static {v2}, Lorg/wikipedia/login/LoginClient;->dateToTimestamp(Ljava/util/Date;)Ljava/lang/Long;

    .line 699
    .line 700
    .line 701
    move-result-object v2

    .line 702
    if-nez v2, :cond_13

    .line 703
    .line 704
    invoke-interface {v0, v10}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 705
    .line 706
    .line 707
    goto :goto_13

    .line 708
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 709
    .line 710
    .line 711
    move-result-wide v2

    .line 712
    invoke-interface {v0, v2, v3, v10}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 713
    .line 714
    .line 715
    :goto_13
    iget v2, v1, Lorg/wikipedia/history/HistoryEntry;->source:I

    .line 716
    .line 717
    int-to-long v2, v2

    .line 718
    invoke-interface {v0, v2, v3, v11}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 719
    .line 720
    .line 721
    iget-wide v1, v1, Lorg/wikipedia/history/HistoryEntry;->prevId:J

    .line 722
    .line 723
    invoke-interface {v0, v1, v2, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 724
    .line 725
    .line 726
    return-void

    .line 727
    :pswitch_9
    move-object/from16 v1, p2

    .line 728
    .line 729
    check-cast v1, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 730
    .line 731
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 735
    .line 736
    .line 737
    iget v4, v1, Lorg/wikipedia/games/db/DailyGameHistory;->id:I

    .line 738
    .line 739
    int-to-long v4, v4

    .line 740
    invoke-interface {v0, v4, v5, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 741
    .line 742
    .line 743
    iget v3, v1, Lorg/wikipedia/games/db/DailyGameHistory;->gameName:I

    .line 744
    .line 745
    int-to-long v3, v3

    .line 746
    invoke-interface {v0, v3, v4, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 747
    .line 748
    .line 749
    iget-object v2, v1, Lorg/wikipedia/games/db/DailyGameHistory;->language:Ljava/lang/String;

    .line 750
    .line 751
    invoke-interface {v0, v15, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 752
    .line 753
    .line 754
    iget v2, v1, Lorg/wikipedia/games/db/DailyGameHistory;->year:I

    .line 755
    .line 756
    int-to-long v2, v2

    .line 757
    invoke-interface {v0, v2, v3, v14}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 758
    .line 759
    .line 760
    iget v2, v1, Lorg/wikipedia/games/db/DailyGameHistory;->month:I

    .line 761
    .line 762
    int-to-long v2, v2

    .line 763
    invoke-interface {v0, v2, v3, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 764
    .line 765
    .line 766
    iget v2, v1, Lorg/wikipedia/games/db/DailyGameHistory;->day:I

    .line 767
    .line 768
    int-to-long v2, v2

    .line 769
    invoke-interface {v0, v2, v3, v12}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 770
    .line 771
    .line 772
    iget v2, v1, Lorg/wikipedia/games/db/DailyGameHistory;->score:I

    .line 773
    .line 774
    int-to-long v2, v2

    .line 775
    invoke-interface {v0, v2, v3, v10}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 776
    .line 777
    .line 778
    iget v2, v1, Lorg/wikipedia/games/db/DailyGameHistory;->playType:I

    .line 779
    .line 780
    int-to-long v2, v2

    .line 781
    invoke-interface {v0, v2, v3, v11}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 782
    .line 783
    .line 784
    iget-object v2, v1, Lorg/wikipedia/games/db/DailyGameHistory;->gameData:Ljava/lang/String;

    .line 785
    .line 786
    if-nez v2, :cond_14

    .line 787
    .line 788
    invoke-interface {v0, v8}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 789
    .line 790
    .line 791
    goto :goto_14

    .line 792
    :cond_14
    invoke-interface {v0, v8, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 793
    .line 794
    .line 795
    :goto_14
    iget v2, v1, Lorg/wikipedia/games/db/DailyGameHistory;->status:I

    .line 796
    .line 797
    int-to-long v2, v2

    .line 798
    invoke-interface {v0, v2, v3, v9}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 799
    .line 800
    .line 801
    iget v1, v1, Lorg/wikipedia/games/db/DailyGameHistory;->currentQuestionIndex:I

    .line 802
    .line 803
    int-to-long v1, v1

    .line 804
    invoke-interface {v0, v1, v2, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 805
    .line 806
    .line 807
    return-void

    .line 808
    :pswitch_a
    move-object/from16 v1, p2

    .line 809
    .line 810
    check-cast v1, Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;

    .line 811
    .line 812
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 816
    .line 817
    .line 818
    iget-object v1, v1, Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;->topicId:Ljava/lang/String;

    .line 819
    .line 820
    invoke-interface {v0, v3, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 821
    .line 822
    .line 823
    return-void

    .line 824
    :pswitch_b
    move-object/from16 v1, p2

    .line 825
    .line 826
    check-cast v1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;

    .line 827
    .line 828
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 829
    .line 830
    .line 831
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 832
    .line 833
    .line 834
    iget-object v4, v1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->apiTitle:Ljava/lang/String;

    .line 835
    .line 836
    invoke-interface {v0, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 837
    .line 838
    .line 839
    iget-object v3, v1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->lang:Ljava/lang/String;

    .line 840
    .line 841
    invoke-interface {v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 842
    .line 843
    .line 844
    iget-object v2, v1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->namespace:Lorg/wikipedia/page/Namespace;

    .line 845
    .line 846
    invoke-static {v2}, Lokio/ByteString$Companion;->namespaceToInt(Lorg/wikipedia/page/Namespace;)Ljava/lang/Integer;

    .line 847
    .line 848
    .line 849
    move-result-object v2

    .line 850
    if-nez v2, :cond_15

    .line 851
    .line 852
    invoke-interface {v0, v15}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 853
    .line 854
    .line 855
    goto :goto_15

    .line 856
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 857
    .line 858
    .line 859
    move-result v2

    .line 860
    int-to-long v2, v2

    .line 861
    invoke-interface {v0, v2, v3, v15}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 862
    .line 863
    .line 864
    :goto_15
    iget-object v2, v1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->displayTitle:Ljava/lang/String;

    .line 865
    .line 866
    invoke-interface {v0, v14, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 867
    .line 868
    .line 869
    iget-object v2, v1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->description:Ljava/lang/String;

    .line 870
    .line 871
    invoke-interface {v0, v13, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 872
    .line 873
    .line 874
    iget-object v1, v1, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->thumbUrl:Ljava/lang/String;

    .line 875
    .line 876
    invoke-interface {v0, v12, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 877
    .line 878
    .line 879
    return-void

    .line 880
    :pswitch_c
    move-object/from16 v1, p2

    .line 881
    .line 882
    check-cast v1, Lorg/wikipedia/edit/db/EditSummary;

    .line 883
    .line 884
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 888
    .line 889
    .line 890
    iget-object v4, v1, Lorg/wikipedia/edit/db/EditSummary;->summary:Ljava/lang/String;

    .line 891
    .line 892
    invoke-interface {v0, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 893
    .line 894
    .line 895
    iget-object v1, v1, Lorg/wikipedia/edit/db/EditSummary;->lastUsed:Ljava/util/Date;

    .line 896
    .line 897
    invoke-static {v1}, Lorg/wikipedia/login/LoginClient;->dateToTimestamp(Ljava/util/Date;)Ljava/lang/Long;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    if-nez v1, :cond_16

    .line 902
    .line 903
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 904
    .line 905
    .line 906
    goto :goto_16

    .line 907
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 908
    .line 909
    .line 910
    move-result-wide v3

    .line 911
    invoke-interface {v0, v3, v4, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 912
    .line 913
    .line 914
    :goto_16
    return-void

    .line 915
    :pswitch_d
    move-object/from16 v1, p2

    .line 916
    .line 917
    check-cast v1, Lorg/wikipedia/categories/db/Category;

    .line 918
    .line 919
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 920
    .line 921
    .line 922
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 923
    .line 924
    .line 925
    iget v4, v1, Lorg/wikipedia/categories/db/Category;->year:I

    .line 926
    .line 927
    int-to-long v4, v4

    .line 928
    invoke-interface {v0, v4, v5, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 929
    .line 930
    .line 931
    iget v3, v1, Lorg/wikipedia/categories/db/Category;->month:I

    .line 932
    .line 933
    int-to-long v3, v3

    .line 934
    invoke-interface {v0, v3, v4, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 935
    .line 936
    .line 937
    iget-object v2, v1, Lorg/wikipedia/categories/db/Category;->title:Ljava/lang/String;

    .line 938
    .line 939
    invoke-interface {v0, v15, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 940
    .line 941
    .line 942
    iget-object v2, v1, Lorg/wikipedia/categories/db/Category;->lang:Ljava/lang/String;

    .line 943
    .line 944
    invoke-interface {v0, v14, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 945
    .line 946
    .line 947
    iget v1, v1, Lorg/wikipedia/categories/db/Category;->count:I

    .line 948
    .line 949
    int-to-long v1, v1

    .line 950
    invoke-interface {v0, v1, v2, v13}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 951
    .line 952
    .line 953
    return-void

    .line 954
    :pswitch_e
    move-object/from16 v1, p2

    .line 955
    .line 956
    check-cast v1, Landroidx/work/impl/model/WorkSpec;

    .line 957
    .line 958
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 959
    .line 960
    .line 961
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 962
    .line 963
    .line 964
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 965
    .line 966
    invoke-interface {v0, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 967
    .line 968
    .line 969
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 970
    .line 971
    invoke-static {v4}, Lkotlin/TuplesKt;->stateToInt(Landroidx/work/WorkInfo$State;)I

    .line 972
    .line 973
    .line 974
    move-result v4

    .line 975
    int-to-long v5, v4

    .line 976
    invoke-interface {v0, v5, v6, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 977
    .line 978
    .line 979
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 980
    .line 981
    invoke-interface {v0, v15, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 982
    .line 983
    .line 984
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 985
    .line 986
    invoke-interface {v0, v14, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 987
    .line 988
    .line 989
    sget-object v4, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 990
    .line 991
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 992
    .line 993
    invoke-static {v4}, Lkotlin/uuid/UuidKt;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    .line 994
    .line 995
    .line 996
    move-result-object v4

    .line 997
    invoke-interface {v0, v13, v4}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 998
    .line 999
    .line 1000
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 1001
    .line 1002
    invoke-static {v4}, Lkotlin/uuid/UuidKt;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    .line 1003
    .line 1004
    .line 1005
    move-result-object v4

    .line 1006
    invoke-interface {v0, v12, v4}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1007
    .line 1008
    .line 1009
    iget-wide v4, v1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 1010
    .line 1011
    invoke-interface {v0, v4, v5, v10}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1012
    .line 1013
    .line 1014
    iget-wide v4, v1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 1015
    .line 1016
    invoke-interface {v0, v4, v5, v11}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1017
    .line 1018
    .line 1019
    iget-wide v4, v1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 1020
    .line 1021
    invoke-interface {v0, v4, v5, v8}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1022
    .line 1023
    .line 1024
    iget v4, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 1025
    .line 1026
    int-to-long v4, v4

    .line 1027
    invoke-interface {v0, v4, v5, v9}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1028
    .line 1029
    .line 1030
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 1031
    .line 1032
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1033
    .line 1034
    .line 1035
    sget-object v5, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 1036
    .line 1037
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 1038
    .line 1039
    .line 1040
    move-result v4

    .line 1041
    aget v4, v5, v4

    .line 1042
    .line 1043
    const/4 v5, 0x0

    .line 1044
    if-eq v4, v3, :cond_18

    .line 1045
    .line 1046
    if-ne v4, v2, :cond_17

    .line 1047
    .line 1048
    move v4, v3

    .line 1049
    goto :goto_17

    .line 1050
    :cond_17
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1051
    .line 1052
    .line 1053
    goto/16 :goto_26

    .line 1054
    .line 1055
    :cond_18
    move v4, v5

    .line 1056
    :goto_17
    int-to-long v10, v4

    .line 1057
    invoke-interface {v0, v10, v11, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1058
    .line 1059
    .line 1060
    iget-wide v6, v1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 1061
    .line 1062
    const/16 v4, 0xc

    .line 1063
    .line 1064
    invoke-interface {v0, v6, v7, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1065
    .line 1066
    .line 1067
    iget-wide v6, v1, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 1068
    .line 1069
    const/16 v4, 0xd

    .line 1070
    .line 1071
    invoke-interface {v0, v6, v7, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1072
    .line 1073
    .line 1074
    iget-wide v6, v1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 1075
    .line 1076
    const/16 v4, 0xe

    .line 1077
    .line 1078
    invoke-interface {v0, v6, v7, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1079
    .line 1080
    .line 1081
    iget-wide v6, v1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 1082
    .line 1083
    const/16 v4, 0xf

    .line 1084
    .line 1085
    invoke-interface {v0, v6, v7, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1086
    .line 1087
    .line 1088
    iget-boolean v4, v1, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 1089
    .line 1090
    int-to-long v6, v4

    .line 1091
    const/16 v4, 0x10

    .line 1092
    .line 1093
    invoke-interface {v0, v6, v7, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1094
    .line 1095
    .line 1096
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 1097
    .line 1098
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1099
    .line 1100
    .line 1101
    sget-object v6, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$3:[I

    .line 1102
    .line 1103
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 1104
    .line 1105
    .line 1106
    move-result v4

    .line 1107
    aget v4, v6, v4

    .line 1108
    .line 1109
    if-eq v4, v3, :cond_1a

    .line 1110
    .line 1111
    if-ne v4, v2, :cond_19

    .line 1112
    .line 1113
    move v4, v3

    .line 1114
    goto :goto_18

    .line 1115
    :cond_19
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1116
    .line 1117
    .line 1118
    goto/16 :goto_26

    .line 1119
    .line 1120
    :cond_1a
    move v4, v5

    .line 1121
    :goto_18
    int-to-long v6, v4

    .line 1122
    const/16 v4, 0x11

    .line 1123
    .line 1124
    invoke-interface {v0, v6, v7, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1125
    .line 1126
    .line 1127
    iget v4, v1, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    .line 1128
    .line 1129
    int-to-long v6, v4

    .line 1130
    const/16 v4, 0x12

    .line 1131
    .line 1132
    invoke-interface {v0, v6, v7, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1133
    .line 1134
    .line 1135
    iget v4, v1, Landroidx/work/impl/model/WorkSpec;->generation:I

    .line 1136
    .line 1137
    int-to-long v6, v4

    .line 1138
    const/16 v4, 0x13

    .line 1139
    .line 1140
    invoke-interface {v0, v6, v7, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1141
    .line 1142
    .line 1143
    const/16 v4, 0x14

    .line 1144
    .line 1145
    iget-wide v6, v1, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    .line 1146
    .line 1147
    invoke-interface {v0, v6, v7, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1148
    .line 1149
    .line 1150
    iget v4, v1, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    .line 1151
    .line 1152
    int-to-long v6, v4

    .line 1153
    const/16 v4, 0x15

    .line 1154
    .line 1155
    invoke-interface {v0, v6, v7, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1156
    .line 1157
    .line 1158
    iget v4, v1, Landroidx/work/impl/model/WorkSpec;->stopReason:I

    .line 1159
    .line 1160
    int-to-long v6, v4

    .line 1161
    const/16 v4, 0x16

    .line 1162
    .line 1163
    invoke-interface {v0, v6, v7, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1164
    .line 1165
    .line 1166
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 1167
    .line 1168
    const/16 v6, 0x17

    .line 1169
    .line 1170
    if-nez v4, :cond_1b

    .line 1171
    .line 1172
    invoke-interface {v0, v6}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1173
    .line 1174
    .line 1175
    goto :goto_19

    .line 1176
    :cond_1b
    invoke-interface {v0, v6, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1177
    .line 1178
    .line 1179
    :goto_19
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpec;->backOffOnSystemInterruptions:Ljava/lang/Boolean;

    .line 1180
    .line 1181
    if-eqz v4, :cond_1c

    .line 1182
    .line 1183
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1184
    .line 1185
    .line 1186
    move-result v4

    .line 1187
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v4

    .line 1191
    goto :goto_1a

    .line 1192
    :cond_1c
    const/4 v4, 0x0

    .line 1193
    :goto_1a
    const/16 v6, 0x18

    .line 1194
    .line 1195
    if-nez v4, :cond_1d

    .line 1196
    .line 1197
    invoke-interface {v0, v6}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1198
    .line 1199
    .line 1200
    goto :goto_1b

    .line 1201
    :cond_1d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1202
    .line 1203
    .line 1204
    move-result v4

    .line 1205
    int-to-long v7, v4

    .line 1206
    invoke-interface {v0, v7, v8, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1207
    .line 1208
    .line 1209
    :goto_1b
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 1210
    .line 1211
    iget-object v4, v1, Landroidx/work/Constraints;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 1212
    .line 1213
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1214
    .line 1215
    .line 1216
    sget-object v6, Landroidx/work/impl/model/WorkTypeConverters$WhenMappings;->$EnumSwitchMapping$2:[I

    .line 1217
    .line 1218
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 1219
    .line 1220
    .line 1221
    move-result v7

    .line 1222
    aget v6, v6, v7

    .line 1223
    .line 1224
    const/16 v7, 0x1e

    .line 1225
    .line 1226
    if-eq v6, v3, :cond_1f

    .line 1227
    .line 1228
    if-eq v6, v2, :cond_23

    .line 1229
    .line 1230
    if-eq v6, v15, :cond_22

    .line 1231
    .line 1232
    if-eq v6, v14, :cond_21

    .line 1233
    .line 1234
    if-eq v6, v13, :cond_20

    .line 1235
    .line 1236
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1237
    .line 1238
    if-lt v2, v7, :cond_1e

    .line 1239
    .line 1240
    sget-object v2, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    .line 1241
    .line 1242
    if-ne v4, v2, :cond_1e

    .line 1243
    .line 1244
    goto :goto_1c

    .line 1245
    :cond_1e
    const-string v2, "Could not convert "

    .line 1246
    .line 1247
    const-string v3, " to int"

    .line 1248
    .line 1249
    invoke-static {v4, v3, v2}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1250
    .line 1251
    .line 1252
    :cond_1f
    move v13, v5

    .line 1253
    goto :goto_1c

    .line 1254
    :cond_20
    move v13, v14

    .line 1255
    goto :goto_1c

    .line 1256
    :cond_21
    move v13, v15

    .line 1257
    goto :goto_1c

    .line 1258
    :cond_22
    move v13, v2

    .line 1259
    goto :goto_1c

    .line 1260
    :cond_23
    move v13, v3

    .line 1261
    :goto_1c
    const/16 v2, 0x19

    .line 1262
    .line 1263
    int-to-long v3, v13

    .line 1264
    invoke-interface {v0, v3, v4, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1265
    .line 1266
    .line 1267
    iget-object v2, v1, Landroidx/work/Constraints;->requiredNetworkRequestCompat:Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 1268
    .line 1269
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1270
    .line 1271
    const/16 v4, 0x1c

    .line 1272
    .line 1273
    if-ge v3, v4, :cond_24

    .line 1274
    .line 1275
    new-array v2, v5, [B

    .line 1276
    .line 1277
    goto/16 :goto_23

    .line 1278
    .line 1279
    :cond_24
    iget-object v2, v2, Landroidx/work/impl/utils/NetworkRequestCompat;->wrapped:Ljava/lang/Object;

    .line 1280
    .line 1281
    check-cast v2, Landroid/net/NetworkRequest;

    .line 1282
    .line 1283
    if-nez v2, :cond_25

    .line 1284
    .line 1285
    new-array v2, v5, [B

    .line 1286
    .line 1287
    goto/16 :goto_23

    .line 1288
    .line 1289
    :cond_25
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 1290
    .line 1291
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1292
    .line 1293
    .line 1294
    :try_start_0
    new-instance v6, Ljava/io/ObjectOutputStream;

    .line 1295
    .line 1296
    invoke-direct {v6, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1297
    .line 1298
    .line 1299
    const/16 v8, 0x1f

    .line 1300
    .line 1301
    if-lt v3, v8, :cond_26

    .line 1302
    .line 1303
    :try_start_1
    invoke-static {v2}, Landroidx/work/impl/utils/NetworkRequest31;->transportTypes(Landroid/net/NetworkRequest;)[I

    .line 1304
    .line 1305
    .line 1306
    move-result-object v3

    .line 1307
    goto :goto_1e

    .line 1308
    :cond_26
    new-array v3, v9, [I

    .line 1309
    .line 1310
    fill-array-data v3, :array_0

    .line 1311
    .line 1312
    .line 1313
    new-instance v10, Ljava/util/ArrayList;

    .line 1314
    .line 1315
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1316
    .line 1317
    .line 1318
    move v11, v5

    .line 1319
    :goto_1d
    if-ge v11, v9, :cond_28

    .line 1320
    .line 1321
    aget v12, v3, v11

    .line 1322
    .line 1323
    invoke-static {v2, v12}, Landroidx/work/impl/utils/Api28Impl;->hasTransport$work_runtime_release(Landroid/net/NetworkRequest;I)Z

    .line 1324
    .line 1325
    .line 1326
    move-result v13

    .line 1327
    if-eqz v13, :cond_27

    .line 1328
    .line 1329
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v12

    .line 1333
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    .line 1335
    .line 1336
    :cond_27
    add-int/lit8 v11, v11, 0x1

    .line 1337
    .line 1338
    goto :goto_1d

    .line 1339
    :cond_28
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/List;)[I

    .line 1340
    .line 1341
    .line 1342
    move-result-object v3

    .line 1343
    :goto_1e
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1344
    .line 1345
    if-lt v9, v8, :cond_29

    .line 1346
    .line 1347
    invoke-static {v2}, Landroidx/work/impl/utils/NetworkRequest31;->capabilities(Landroid/net/NetworkRequest;)[I

    .line 1348
    .line 1349
    .line 1350
    move-result-object v2

    .line 1351
    goto :goto_20

    .line 1352
    :cond_29
    new-array v8, v7, [I

    .line 1353
    .line 1354
    fill-array-data v8, :array_1

    .line 1355
    .line 1356
    .line 1357
    new-instance v9, Ljava/util/ArrayList;

    .line 1358
    .line 1359
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    .line 1361
    .line 1362
    move v10, v5

    .line 1363
    :goto_1f
    if-ge v10, v7, :cond_2b

    .line 1364
    .line 1365
    aget v11, v8, v10

    .line 1366
    .line 1367
    invoke-static {v2, v11}, Landroidx/work/impl/utils/Api28Impl;->hasCapability$work_runtime_release(Landroid/net/NetworkRequest;I)Z

    .line 1368
    .line 1369
    .line 1370
    move-result v12

    .line 1371
    if-eqz v12, :cond_2a

    .line 1372
    .line 1373
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v11

    .line 1377
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    .line 1379
    .line 1380
    :cond_2a
    add-int/lit8 v10, v10, 0x1

    .line 1381
    .line 1382
    goto :goto_1f

    .line 1383
    :cond_2b
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/List;)[I

    .line 1384
    .line 1385
    .line 1386
    move-result-object v2

    .line 1387
    :goto_20
    array-length v8, v3

    .line 1388
    invoke-virtual {v6, v8}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1389
    .line 1390
    .line 1391
    array-length v8, v3

    .line 1392
    move v9, v5

    .line 1393
    :goto_21
    if-ge v9, v8, :cond_2c

    .line 1394
    .line 1395
    aget v10, v3, v9

    .line 1396
    .line 1397
    invoke-virtual {v6, v10}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1398
    .line 1399
    .line 1400
    add-int/lit8 v9, v9, 0x1

    .line 1401
    .line 1402
    goto :goto_21

    .line 1403
    :catchall_0
    move-exception v0

    .line 1404
    move-object v1, v0

    .line 1405
    goto/16 :goto_29

    .line 1406
    .line 1407
    :cond_2c
    array-length v3, v2

    .line 1408
    invoke-virtual {v6, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1409
    .line 1410
    .line 1411
    array-length v3, v2

    .line 1412
    move v8, v5

    .line 1413
    :goto_22
    if-ge v8, v3, :cond_2d

    .line 1414
    .line 1415
    aget v9, v2, v8

    .line 1416
    .line 1417
    invoke-virtual {v6, v9}, Ljava/io/ObjectOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1418
    .line 1419
    .line 1420
    add-int/lit8 v8, v8, 0x1

    .line 1421
    .line 1422
    goto :goto_22

    .line 1423
    :cond_2d
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1427
    .line 1428
    .line 1429
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1430
    .line 1431
    .line 1432
    move-result-object v2

    .line 1433
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1434
    .line 1435
    .line 1436
    :goto_23
    const/16 v3, 0x1a

    .line 1437
    .line 1438
    invoke-interface {v0, v3, v2}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1439
    .line 1440
    .line 1441
    iget-boolean v2, v1, Landroidx/work/Constraints;->requiresCharging:Z

    .line 1442
    .line 1443
    const/16 v3, 0x1b

    .line 1444
    .line 1445
    int-to-long v8, v2

    .line 1446
    invoke-interface {v0, v8, v9, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1447
    .line 1448
    .line 1449
    iget-boolean v2, v1, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 1450
    .line 1451
    const/16 v3, 0x1c

    .line 1452
    .line 1453
    int-to-long v8, v2

    .line 1454
    invoke-interface {v0, v8, v9, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1455
    .line 1456
    .line 1457
    iget-boolean v2, v1, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 1458
    .line 1459
    const/16 v3, 0x1d

    .line 1460
    .line 1461
    int-to-long v8, v2

    .line 1462
    invoke-interface {v0, v8, v9, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1463
    .line 1464
    .line 1465
    iget-boolean v2, v1, Landroidx/work/Constraints;->requiresStorageNotLow:Z

    .line 1466
    .line 1467
    int-to-long v2, v2

    .line 1468
    invoke-interface {v0, v2, v3, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1469
    .line 1470
    .line 1471
    const/16 v2, 0x1f

    .line 1472
    .line 1473
    iget-wide v3, v1, Landroidx/work/Constraints;->contentTriggerUpdateDelayMillis:J

    .line 1474
    .line 1475
    invoke-interface {v0, v3, v4, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1476
    .line 1477
    .line 1478
    const/16 v2, 0x20

    .line 1479
    .line 1480
    iget-wide v3, v1, Landroidx/work/Constraints;->contentTriggerMaxDelayMillis:J

    .line 1481
    .line 1482
    invoke-interface {v0, v3, v4, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1483
    .line 1484
    .line 1485
    iget-object v1, v1, Landroidx/work/Constraints;->contentUriTriggers:Ljava/util/Set;

    .line 1486
    .line 1487
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 1488
    .line 1489
    .line 1490
    move-result v2

    .line 1491
    if-eqz v2, :cond_2e

    .line 1492
    .line 1493
    new-array v1, v5, [B

    .line 1494
    .line 1495
    goto :goto_25

    .line 1496
    :cond_2e
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 1497
    .line 1498
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1499
    .line 1500
    .line 1501
    :try_start_3
    new-instance v3, Ljava/io/ObjectOutputStream;

    .line 1502
    .line 1503
    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1504
    .line 1505
    .line 1506
    :try_start_4
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 1507
    .line 1508
    .line 1509
    move-result v4

    .line 1510
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1511
    .line 1512
    .line 1513
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v1

    .line 1517
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1518
    .line 1519
    .line 1520
    move-result v4

    .line 1521
    if-eqz v4, :cond_2f

    .line 1522
    .line 1523
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v4

    .line 1527
    check-cast v4, Landroidx/work/Constraints$ContentUriTrigger;

    .line 1528
    .line 1529
    iget-object v5, v4, Landroidx/work/Constraints$ContentUriTrigger;->uri:Landroid/net/Uri;

    .line 1530
    .line 1531
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v5

    .line 1535
    invoke-virtual {v3, v5}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1536
    .line 1537
    .line 1538
    iget-boolean v4, v4, Landroidx/work/Constraints$ContentUriTrigger;->isTriggeredForDescendants:Z

    .line 1539
    .line 1540
    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1541
    .line 1542
    .line 1543
    goto :goto_24

    .line 1544
    :catchall_1
    move-exception v0

    .line 1545
    move-object v1, v0

    .line 1546
    goto :goto_27

    .line 1547
    :cond_2f
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1554
    .line 1555
    .line 1556
    move-result-object v1

    .line 1557
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1558
    .line 1559
    .line 1560
    :goto_25
    const/16 v2, 0x21

    .line 1561
    .line 1562
    invoke-interface {v0, v2, v1}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1563
    .line 1564
    .line 1565
    :goto_26
    return-void

    .line 1566
    :catchall_2
    move-exception v0

    .line 1567
    move-object v1, v0

    .line 1568
    goto :goto_28

    .line 1569
    :goto_27
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1570
    :catchall_3
    move-exception v0

    .line 1571
    :try_start_7
    invoke-static {v3, v1}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1572
    .line 1573
    .line 1574
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1575
    :goto_28
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1576
    :catchall_4
    move-exception v0

    .line 1577
    invoke-static {v2, v1}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1578
    .line 1579
    .line 1580
    throw v0

    .line 1581
    :catchall_5
    move-exception v0

    .line 1582
    move-object v1, v0

    .line 1583
    goto :goto_2a

    .line 1584
    :goto_29
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 1585
    :catchall_6
    move-exception v0

    .line 1586
    :try_start_a
    invoke-static {v6, v1}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1587
    .line 1588
    .line 1589
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1590
    :goto_2a
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 1591
    :catchall_7
    move-exception v0

    .line 1592
    invoke-static {v4, v1}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1593
    .line 1594
    .line 1595
    throw v0

    .line 1596
    :pswitch_f
    move-object/from16 v1, p2

    .line 1597
    .line 1598
    check-cast v1, Landroidx/work/impl/model/WorkName;

    .line 1599
    .line 1600
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1601
    .line 1602
    .line 1603
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1604
    .line 1605
    .line 1606
    iget-object v4, v1, Landroidx/work/impl/model/WorkName;->name:Ljava/lang/String;

    .line 1607
    .line 1608
    invoke-interface {v0, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1609
    .line 1610
    .line 1611
    iget-object v1, v1, Landroidx/work/impl/model/WorkName;->workSpecId:Ljava/lang/String;

    .line 1612
    .line 1613
    invoke-interface {v0, v2, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1614
    .line 1615
    .line 1616
    return-void

    .line 1617
    :pswitch_10
    move-object/from16 v1, p2

    .line 1618
    .line 1619
    check-cast v1, Landroidx/work/impl/model/SystemIdInfo;

    .line 1620
    .line 1621
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1625
    .line 1626
    .line 1627
    iget-object v4, v1, Landroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    .line 1628
    .line 1629
    invoke-interface {v0, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1630
    .line 1631
    .line 1632
    iget v3, v1, Landroidx/work/impl/model/SystemIdInfo;->generation:I

    .line 1633
    .line 1634
    int-to-long v3, v3

    .line 1635
    invoke-interface {v0, v3, v4, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1636
    .line 1637
    .line 1638
    iget v1, v1, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    .line 1639
    .line 1640
    int-to-long v1, v1

    .line 1641
    invoke-interface {v0, v1, v2, v15}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1642
    .line 1643
    .line 1644
    return-void

    .line 1645
    :pswitch_11
    move-object/from16 v1, p2

    .line 1646
    .line 1647
    check-cast v1, Landroidx/work/impl/model/Preference;

    .line 1648
    .line 1649
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1650
    .line 1651
    .line 1652
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1653
    .line 1654
    .line 1655
    iget-object v4, v1, Landroidx/work/impl/model/Preference;->key:Ljava/lang/String;

    .line 1656
    .line 1657
    invoke-interface {v0, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1658
    .line 1659
    .line 1660
    iget-object v1, v1, Landroidx/work/impl/model/Preference;->value:Ljava/lang/Long;

    .line 1661
    .line 1662
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 1663
    .line 1664
    .line 1665
    move-result-wide v3

    .line 1666
    invoke-interface {v0, v3, v4, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1667
    .line 1668
    .line 1669
    return-void

    .line 1670
    :pswitch_12
    move-object/from16 v1, p2

    .line 1671
    .line 1672
    check-cast v1, Landroidx/work/impl/model/Dependency;

    .line 1673
    .line 1674
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1675
    .line 1676
    .line 1677
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1678
    .line 1679
    .line 1680
    iget-object v4, v1, Landroidx/work/impl/model/Dependency;->workSpecId:Ljava/lang/String;

    .line 1681
    .line 1682
    invoke-interface {v0, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1683
    .line 1684
    .line 1685
    iget-object v1, v1, Landroidx/work/impl/model/Dependency;->prerequisiteId:Ljava/lang/String;

    .line 1686
    .line 1687
    invoke-interface {v0, v2, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1688
    .line 1689
    .line 1690
    return-void

    .line 1691
    :pswitch_13
    move-object/from16 v1, p2

    .line 1692
    .line 1693
    check-cast v1, Landroidx/work/impl/model/WorkTag;

    .line 1694
    .line 1695
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1696
    .line 1697
    .line 1698
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1699
    .line 1700
    .line 1701
    iget-object v4, v1, Landroidx/work/impl/model/WorkTag;->tag:Ljava/lang/String;

    .line 1702
    .line 1703
    invoke-interface {v0, v3, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1704
    .line 1705
    .line 1706
    iget-object v1, v1, Landroidx/work/impl/model/WorkTag;->workSpecId:Ljava/lang/String;

    .line 1707
    .line 1708
    invoke-interface {v0, v2, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1709
    .line 1710
    .line 1711
    return-void

    .line 1712
    nop

    .line 1713
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    :array_0
    .array-data 4
        0x2
        0x0
        0x3
        0x6
        0xa
        0x9
        0x8
        0x4
        0x1
        0x5
    .end array-data

    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    :array_1
    .array-data 4
        0x11
        0x5
        0x2
        0xa
        0x1d
        0x13
        0x3
        0x20
        0x7
        0x4
        0xc
        0x24
        0x17
        0x0
        0x21
        0x14
        0xb
        0xd
        0x12
        0x15
        0xf
        0x23
        0x22
        0x8
        0x1
        0x19
        0xe
        0x10
        0x6
        0x9
    .end array-data
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Landroidx/work/impl/model/WorkTagDao_Impl$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "INSERT OR REPLACE INTO `TalkTemplate` (`id`,`type`,`order`,`title`,`subject`,`message`) VALUES (nullif(?, 0),?,?,?,?,?)"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "INSERT OR IGNORE INTO `TalkPageSeen` (`sha`) VALUES (?)"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    const-string p0, "INSERT OR REPLACE INTO `RecentSearch` (`text`,`timestamp`) VALUES (?,?)"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    const-string p0, "INSERT OR REPLACE INTO `RecommendedPage` (`id`,`wiki`,`lang`,`namespace`,`timestamp`,`apiTitle`,`displayTitle`,`description`,`thumbUrl`,`status`,`extract`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?)"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    const-string p0, "INSERT OR REPLACE INTO `ReadingListPage` (`wiki`,`namespace`,`displayTitle`,`apiTitle`,`description`,`thumbUrl`,`listId`,`id`,`mtime`,`atime`,`offline`,`status`,`sizeBytes`,`lang`,`revId`,`remoteId`) VALUES (?,?,?,?,?,?,?,nullif(?, 0),?,?,?,?,?,?,?,?)"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    const-string p0, "INSERT OR REPLACE INTO `ReadingList` (`listTitle`,`description`,`mtime`,`atime`,`id`,`sizeBytes`,`dirty`,`remoteId`) VALUES (?,?,?,?,nullif(?, 0),?,?,?)"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    const-string p0, "INSERT OR REPLACE INTO `PageImage` (`lang`,`namespace`,`apiTitle`,`imageName`,`description`,`timeSpentSec`,`geoLat`,`geoLon`) VALUES (?,?,?,?,?,?,?,?)"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    const-string p0, "INSERT OR REPLACE INTO `OfflineObject` (`id`,`url`,`lang`,`path`,`status`,`usedByStr`) VALUES (nullif(?, 0),?,?,?,?,?)"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    const-string p0, "INSERT OR REPLACE INTO `Notification` (`id`,`wiki`,`read`,`category`,`type`,`revid`,`title`,`agent`,`timestamp`,`contents`) VALUES (?,?,?,?,?,?,?,?,?,?)"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    const-string p0, "INSERT OR REPLACE INTO `HistoryEntry` (`authority`,`lang`,`apiTitle`,`displayTitle`,`id`,`namespace`,`timestamp`,`source`,`prevId`) VALUES (?,?,?,?,nullif(?, 0),?,?,?,?)"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    const-string p0, "INSERT INTO `DailyGameHistory` (`id`,`gameName`,`language`,`year`,`month`,`day`,`score`,`playType`,`gameData`,`status`,`currentQuestionIndex`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?)"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    const-string p0, "INSERT OR IGNORE INTO `InterestTopic` (`topicId`) VALUES (?)"

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    const-string p0, "INSERT OR IGNORE INTO `InterestArticle` (`apiTitle`,`lang`,`namespace`,`displayTitle`,`description`,`thumbUrl`) VALUES (?,?,?,?,?,?)"

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    const-string p0, "INSERT OR REPLACE INTO `EditSummary` (`summary`,`lastUsed`) VALUES (?,?)"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    const-string p0, "INSERT OR REPLACE INTO `Category` (`year`,`month`,`title`,`lang`,`count`) VALUES (?,?,?,?,?)"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_e
    const-string p0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_f
    const-string p0, "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_10
    const-string p0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_11
    const-string p0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_12
    const-string p0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_13
    const-string p0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

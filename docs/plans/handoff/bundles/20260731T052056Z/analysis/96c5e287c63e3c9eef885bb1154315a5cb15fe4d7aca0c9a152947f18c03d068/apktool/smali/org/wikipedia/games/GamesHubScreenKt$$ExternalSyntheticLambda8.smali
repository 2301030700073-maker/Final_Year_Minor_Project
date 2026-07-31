.class public final synthetic Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;

    .line 15
    .line 16
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 19
    .line 20
    move-object/from16 v2, p1

    .line 21
    .line 22
    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v1, v1, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;->__insertAdapterOfRecommendedPage:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0}, Lkotlin/text/RegexKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_0
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;

    .line 38
    .line 39
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    move-object/from16 v2, p1

    .line 44
    .line 45
    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object v1, v1, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;->__updateAdapterOfRecommendedPage:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 51
    .line 52
    invoke-virtual {v1, v2, v0}, Lcoil3/util/UtilsKt;->handleMultiple(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Iterable;)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    .line 57
    return-object v0

    .line 58
    :pswitch_1
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 61
    .line 62
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Ljava/util/List;

    .line 65
    .line 66
    move-object/from16 v2, p1

    .line 67
    .line 68
    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-object v1, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__updateAdapterOfReadingListPage:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 74
    .line 75
    invoke-virtual {v1, v2, v0}, Lcoil3/util/UtilsKt;->handleMultiple(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Iterable;)V

    .line 76
    .line 77
    .line 78
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 79
    .line 80
    return-object v0

    .line 81
    :pswitch_2
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Ljava/lang/String;

    .line 84
    .line 85
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v0, Ljava/util/Set;

    .line 88
    .line 89
    move-object/from16 v3, p1

    .line 90
    .line 91
    check-cast v3, Landroidx/sqlite/SQLiteConnection;

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-interface {v3, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    move v3, v5

    .line 105
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_0

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    check-cast v6, Ljava/lang/Number;

    .line 116
    .line 117
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    .line 118
    .line 119
    .line 120
    move-result-wide v6

    .line 121
    invoke-interface {v1, v6, v7, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v3, v3, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :cond_0
    const-string v0, "listTitle"

    .line 131
    .line 132
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    const-string v3, "description"

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    const-string v6, "mtime"

    .line 143
    .line 144
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    const-string v7, "atime"

    .line 149
    .line 150
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    const-string v8, "id"

    .line 155
    .line 156
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    const-string v9, "sizeBytes"

    .line 161
    .line 162
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    const-string v10, "dirty"

    .line 167
    .line 168
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    const-string v11, "remoteId"

    .line 173
    .line 174
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    new-instance v12, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    :goto_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    if-eqz v13, :cond_3

    .line 188
    .line 189
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v15

    .line 193
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    if-eqz v13, :cond_1

    .line 198
    .line 199
    move-object/from16 v16, v4

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_1
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    move-object/from16 v16, v13

    .line 207
    .line 208
    :goto_2
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 209
    .line 210
    .line 211
    move-result-wide v17

    .line 212
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 213
    .line 214
    .line 215
    move-result-wide v19

    .line 216
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 217
    .line 218
    .line 219
    move-result-wide v21

    .line 220
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 221
    .line 222
    .line 223
    move-result-wide v23

    .line 224
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 225
    .line 226
    .line 227
    move-result-wide v13

    .line 228
    long-to-int v13, v13

    .line 229
    if-eqz v13, :cond_2

    .line 230
    .line 231
    move/from16 v25, v5

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_2
    move/from16 v25, v2

    .line 235
    .line 236
    :goto_3
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 237
    .line 238
    .line 239
    move-result-wide v26

    .line 240
    new-instance v14, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 241
    .line 242
    invoke-direct/range {v14 .. v27}, Lorg/wikipedia/readinglist/database/ReadingList;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJZJ)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 250
    .line 251
    .line 252
    return-object v12

    .line 253
    :goto_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 254
    .line 255
    .line 256
    throw v0

    .line 257
    :pswitch_3
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v1, Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 260
    .line 261
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v0, Lorg/wikipedia/pageimages/db/PageImage;

    .line 264
    .line 265
    move-object/from16 v2, p1

    .line 266
    .line 267
    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    .line 268
    .line 269
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    iget-object v1, v1, Lorg/wikipedia/pageimages/db/PageImageDao_Impl;->__insertAdapterOfPageImage:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 273
    .line 274
    invoke-virtual {v1, v2, v0}, Lkotlin/text/RegexKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 278
    .line 279
    return-object v0

    .line 280
    :pswitch_4
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v1, Ljava/util/List;

    .line 283
    .line 284
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v0, Lorg/wikipedia/language/AppLanguageState;

    .line 287
    .line 288
    move-object/from16 v2, p1

    .line 289
    .line 290
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 291
    .line 292
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    new-instance v4, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda34;

    .line 300
    .line 301
    invoke-direct {v4, v5, v0, v1}, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda34;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 305
    .line 306
    const v1, 0x4f40401c

    .line 307
    .line 308
    .line 309
    invoke-direct {v0, v4, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 310
    .line 311
    .line 312
    invoke-static {v2, v3, v0}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->items$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;ILandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 313
    .line 314
    .line 315
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 316
    .line 317
    return-object v0

    .line 318
    :pswitch_5
    const-string v1, "SELECT * FROM OfflineObject WHERE url = ? AND lang = ? LIMIT 1"

    .line 319
    .line 320
    iget-object v2, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast v2, Ljava/lang/String;

    .line 323
    .line 324
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v0, Ljava/lang/String;

    .line 327
    .line 328
    move-object/from16 v6, p1

    .line 329
    .line 330
    check-cast v6, Landroidx/sqlite/SQLiteConnection;

    .line 331
    .line 332
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    :try_start_1
    invoke-interface {v1, v5, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-interface {v1, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 343
    .line 344
    .line 345
    const-string v0, "id"

    .line 346
    .line 347
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    const-string/jumbo v2, "url"

    .line 352
    .line 353
    .line 354
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    const-string v3, "lang"

    .line 359
    .line 360
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    const-string v5, "path"

    .line 365
    .line 366
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    const-string v6, "status"

    .line 371
    .line 372
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    move-result v6

    .line 376
    const-string/jumbo v7, "usedByStr"

    .line 377
    .line 378
    .line 379
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    move-result v7

    .line 383
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 384
    .line 385
    .line 386
    move-result v8

    .line 387
    if-eqz v8, :cond_4

    .line 388
    .line 389
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 390
    .line 391
    .line 392
    move-result-wide v8

    .line 393
    long-to-int v11, v8

    .line 394
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v13

    .line 398
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v14

    .line 402
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v15

    .line 406
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 407
    .line 408
    .line 409
    move-result-wide v2

    .line 410
    long-to-int v12, v2

    .line 411
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v16

    .line 415
    new-instance v10, Lorg/wikipedia/offline/db/OfflineObject;

    .line 416
    .line 417
    invoke-direct/range {v10 .. v16}, Lorg/wikipedia/offline/db/OfflineObject;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 418
    .line 419
    .line 420
    move-object v4, v10

    .line 421
    goto :goto_5

    .line 422
    :catchall_1
    move-exception v0

    .line 423
    goto :goto_6

    .line 424
    :cond_4
    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 425
    .line 426
    .line 427
    return-object v4

    .line 428
    :goto_6
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 429
    .line 430
    .line 431
    throw v0

    .line 432
    :pswitch_6
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v1, Lorg/wikipedia/notifications/db/NotificationDao_Impl;

    .line 435
    .line 436
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v0, Lorg/wikipedia/notifications/db/Notification;

    .line 439
    .line 440
    move-object/from16 v2, p1

    .line 441
    .line 442
    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    .line 443
    .line 444
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    iget-object v1, v1, Lorg/wikipedia/notifications/db/NotificationDao_Impl;->__updateAdapterOfNotification:Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 448
    .line 449
    invoke-virtual {v1, v2, v0}, Lcoil3/util/UtilsKt;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 453
    .line 454
    return-object v0

    .line 455
    :pswitch_7
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 456
    .line 457
    check-cast v1, Lorg/wikipedia/notifications/db/NotificationDao_Impl;

    .line 458
    .line 459
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 460
    .line 461
    check-cast v0, Ljava/util/List;

    .line 462
    .line 463
    move-object/from16 v2, p1

    .line 464
    .line 465
    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    .line 466
    .line 467
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    iget-object v1, v1, Lorg/wikipedia/notifications/db/NotificationDao_Impl;->__insertAdapterOfNotification:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 471
    .line 472
    if-nez v0, :cond_5

    .line 473
    .line 474
    goto :goto_8

    .line 475
    :cond_5
    const-string v3, "INSERT OR REPLACE INTO `Notification` (`id`,`wiki`,`read`,`category`,`type`,`revid`,`title`,`agent`,`timestamp`,`contents`) VALUES (?,?,?,?,?,?,?,?,?,?)"

    .line 476
    .line 477
    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    :try_start_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    :cond_6
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    if-eqz v3, :cond_7

    .line 490
    .line 491
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    if-eqz v3, :cond_6

    .line 496
    .line 497
    invoke-virtual {v1, v2, v3}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 501
    .line 502
    .line 503
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 504
    .line 505
    .line 506
    goto :goto_7

    .line 507
    :catchall_2
    move-exception v0

    .line 508
    move-object v1, v0

    .line 509
    goto :goto_9

    .line 510
    :cond_7
    invoke-static {v2, v4}, Lkotlin/TuplesKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 511
    .line 512
    .line 513
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 514
    .line 515
    return-object v0

    .line 516
    :goto_9
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 517
    :catchall_3
    move-exception v0

    .line 518
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 519
    .line 520
    .line 521
    throw v0

    .line 522
    :pswitch_8
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 523
    .line 524
    check-cast v1, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 525
    .line 526
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 527
    .line 528
    check-cast v0, Lorg/wikipedia/history/HistoryEntry;

    .line 529
    .line 530
    move-object/from16 v2, p1

    .line 531
    .line 532
    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    .line 533
    .line 534
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    .line 536
    .line 537
    iget-object v1, v1, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__insertAdapterOfHistoryEntry:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 538
    .line 539
    invoke-virtual {v1, v2, v0}, Lkotlin/text/RegexKt;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    .line 540
    .line 541
    .line 542
    move-result-wide v0

    .line 543
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    return-object v0

    .line 548
    :pswitch_9
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 549
    .line 550
    check-cast v1, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;

    .line 551
    .line 552
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 553
    .line 554
    move-object v3, v0

    .line 555
    check-cast v3, Lorg/wikipedia/games/db/DailyGameHistory;

    .line 556
    .line 557
    move-object/from16 v4, p1

    .line 558
    .line 559
    check-cast v4, Landroidx/sqlite/SQLiteConnection;

    .line 560
    .line 561
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    iget-object v1, v1, Lorg/wikipedia/games/db/DailyGameHistoryDao_Impl;->__upsertAdapterOfDailyGameHistory:Lcoil3/svg/internal/AndroidSvg;

    .line 565
    .line 566
    :try_start_4
    iget-object v0, v1, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 567
    .line 568
    check-cast v0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 569
    .line 570
    invoke-virtual {v0, v4, v3}, Lkotlin/text/RegexKt;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    .line 571
    .line 572
    .line 573
    move-result-wide v0
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 574
    goto :goto_b

    .line 575
    :catch_0
    move-exception v0

    .line 576
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v6

    .line 580
    if-eqz v6, :cond_a

    .line 581
    .line 582
    const-string/jumbo v7, "unique"

    .line 583
    .line 584
    .line 585
    invoke-static {v6, v7, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 586
    .line 587
    .line 588
    move-result v5

    .line 589
    if-nez v5, :cond_9

    .line 590
    .line 591
    const-string v5, "2067"

    .line 592
    .line 593
    invoke-static {v6, v5, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 594
    .line 595
    .line 596
    move-result v5

    .line 597
    if-nez v5, :cond_9

    .line 598
    .line 599
    const-string v5, "1555"

    .line 600
    .line 601
    invoke-static {v6, v5, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 602
    .line 603
    .line 604
    move-result v2

    .line 605
    if-eqz v2, :cond_8

    .line 606
    .line 607
    goto :goto_a

    .line 608
    :cond_8
    throw v0

    .line 609
    :cond_9
    :goto_a
    iget-object v0, v1, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 610
    .line 611
    check-cast v0, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$2;

    .line 612
    .line 613
    invoke-virtual {v0, v4, v3}, Lcoil3/util/UtilsKt;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 614
    .line 615
    .line 616
    const-wide/16 v0, -0x1

    .line 617
    .line 618
    :goto_b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    return-object v0

    .line 623
    :cond_a
    throw v0

    .line 624
    :pswitch_a
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 625
    .line 626
    move-object v8, v1

    .line 627
    check-cast v8, Ljava/lang/String;

    .line 628
    .line 629
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 630
    .line 631
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 632
    .line 633
    move-object/from16 v1, p1

    .line 634
    .line 635
    check-cast v1, Ljava/lang/String;

    .line 636
    .line 637
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    .line 639
    .line 640
    const-string v5, "language_chip_select_disabled"

    .line 641
    .line 642
    const-string v6, "games_hub"

    .line 643
    .line 644
    const/4 v4, 0x0

    .line 645
    const/16 v2, 0x3bc

    .line 646
    .line 647
    const/4 v3, 0x0

    .line 648
    const/4 v7, 0x0

    .line 649
    const/4 v9, 0x0

    .line 650
    invoke-static/range {v2 .. v9}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 657
    .line 658
    return-object v0

    .line 659
    :pswitch_b
    const-string v1, "SELECT * FROM InterestArticle WHERE lang = ?"

    .line 660
    .line 661
    iget-object v2, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 662
    .line 663
    check-cast v2, Ljava/lang/String;

    .line 664
    .line 665
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 666
    .line 667
    check-cast v0, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;

    .line 668
    .line 669
    move-object/from16 v3, p1

    .line 670
    .line 671
    check-cast v3, Landroidx/sqlite/SQLiteConnection;

    .line 672
    .line 673
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 674
    .line 675
    .line 676
    invoke-interface {v3, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    :try_start_5
    invoke-interface {v1, v5, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 681
    .line 682
    .line 683
    const-string v2, "apiTitle"

    .line 684
    .line 685
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 686
    .line 687
    .line 688
    move-result v2

    .line 689
    const-string v3, "lang"

    .line 690
    .line 691
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 692
    .line 693
    .line 694
    move-result v3

    .line 695
    const-string v5, "namespace"

    .line 696
    .line 697
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 698
    .line 699
    .line 700
    move-result v5

    .line 701
    const-string v6, "displayTitle"

    .line 702
    .line 703
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 704
    .line 705
    .line 706
    move-result v6

    .line 707
    const-string v7, "description"

    .line 708
    .line 709
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 710
    .line 711
    .line 712
    move-result v7

    .line 713
    const-string v8, "thumbUrl"

    .line 714
    .line 715
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 716
    .line 717
    .line 718
    move-result v8

    .line 719
    new-instance v9, Ljava/util/ArrayList;

    .line 720
    .line 721
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .line 723
    .line 724
    :goto_c
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 725
    .line 726
    .line 727
    move-result v10

    .line 728
    if-eqz v10, :cond_d

    .line 729
    .line 730
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v12

    .line 734
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v13

    .line 738
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 739
    .line 740
    .line 741
    move-result v10

    .line 742
    if-eqz v10, :cond_b

    .line 743
    .line 744
    move-object v10, v4

    .line 745
    goto :goto_d

    .line 746
    :cond_b
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 747
    .line 748
    .line 749
    move-result-wide v10

    .line 750
    long-to-int v10, v10

    .line 751
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 752
    .line 753
    .line 754
    move-result-object v10

    .line 755
    :goto_d
    iget-object v11, v0, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;->__namespaceTypeConverter:Lokio/ByteString$Companion;

    .line 756
    .line 757
    invoke-static {v10}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 758
    .line 759
    .line 760
    move-result-object v14

    .line 761
    if-eqz v14, :cond_c

    .line 762
    .line 763
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v15

    .line 767
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v16

    .line 771
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v17

    .line 775
    new-instance v11, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;

    .line 776
    .line 777
    invoke-direct/range {v11 .. v17}, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    goto :goto_c

    .line 784
    :catchall_4
    move-exception v0

    .line 785
    goto :goto_e

    .line 786
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 787
    .line 788
    const-string v2, "Expected NON-NULL \'org.wikipedia.page.Namespace\', but it was NULL."

    .line 789
    .line 790
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 794
    :cond_d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 795
    .line 796
    .line 797
    return-object v9

    .line 798
    :goto_e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 799
    .line 800
    .line 801
    throw v0

    .line 802
    :pswitch_c
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 803
    .line 804
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 805
    .line 806
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 807
    .line 808
    check-cast v0, Lorg/wikipedia/feed/news/NewsCard;

    .line 809
    .line 810
    move-object/from16 v2, p1

    .line 811
    .line 812
    check-cast v2, Lorg/wikipedia/feed/news/NewsItem;

    .line 813
    .line 814
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 815
    .line 816
    .line 817
    new-instance v3, Lorg/wikipedia/feed/HomeAction$NewsClick;

    .line 818
    .line 819
    invoke-direct {v3, v0, v2}, Lorg/wikipedia/feed/HomeAction$NewsClick;-><init>(Lorg/wikipedia/feed/news/NewsCard;Lorg/wikipedia/feed/news/NewsItem;)V

    .line 820
    .line 821
    .line 822
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 826
    .line 827
    return-object v0

    .line 828
    :pswitch_d
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 829
    .line 830
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 831
    .line 832
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 833
    .line 834
    check-cast v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;

    .line 835
    .line 836
    move-object/from16 v2, p1

    .line 837
    .line 838
    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 839
    .line 840
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 841
    .line 842
    .line 843
    new-instance v3, Lorg/wikipedia/feed/HomeAction$PageClick;

    .line 844
    .line 845
    new-instance v4, Lorg/wikipedia/history/HistoryEntry;

    .line 846
    .line 847
    const/16 v5, 0x31

    .line 848
    .line 849
    invoke-direct {v4, v5, v2}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 850
    .line 851
    .line 852
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/feed/HomeAction$PageClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 853
    .line 854
    .line 855
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 859
    .line 860
    return-object v0

    .line 861
    :pswitch_e
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 862
    .line 863
    check-cast v1, Lorg/wikipedia/edit/db/EditSummaryDao_Impl;

    .line 864
    .line 865
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 866
    .line 867
    check-cast v0, Lorg/wikipedia/edit/db/EditSummary;

    .line 868
    .line 869
    move-object/from16 v2, p1

    .line 870
    .line 871
    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    .line 872
    .line 873
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 874
    .line 875
    .line 876
    iget-object v1, v1, Lorg/wikipedia/edit/db/EditSummaryDao_Impl;->__insertAdapterOfEditSummary:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 877
    .line 878
    invoke-virtual {v1, v2, v0}, Lkotlin/text/RegexKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 879
    .line 880
    .line 881
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 882
    .line 883
    return-object v0

    .line 884
    :pswitch_f
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 885
    .line 886
    check-cast v1, Landroidx/compose/ui/focus/FocusRequester;

    .line 887
    .line 888
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 889
    .line 890
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 891
    .line 892
    move-object/from16 v2, p1

    .line 893
    .line 894
    check-cast v2, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 895
    .line 896
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 897
    .line 898
    .line 899
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    move-result-object v2

    .line 903
    check-cast v2, Ljava/lang/Boolean;

    .line 904
    .line 905
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 906
    .line 907
    .line 908
    move-result v2

    .line 909
    if-nez v2, :cond_e

    .line 910
    .line 911
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusRequester;->requestFocus-3ESFkO8$default(Landroidx/compose/ui/focus/FocusRequester;)V

    .line 912
    .line 913
    .line 914
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 915
    .line 916
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 917
    .line 918
    .line 919
    :cond_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 920
    .line 921
    return-object v0

    .line 922
    :pswitch_10
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 923
    .line 924
    check-cast v1, Landroidx/compose/animation/EnterTransitionImpl;

    .line 925
    .line 926
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 927
    .line 928
    check-cast v0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 929
    .line 930
    move-object/from16 v2, p1

    .line 931
    .line 932
    check-cast v2, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 933
    .line 934
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 935
    .line 936
    .line 937
    invoke-static {v1, v0}, Landroidx/compose/animation/CrossfadeKt;->togetherWith(Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ContentTransform;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    return-object v0

    .line 942
    :pswitch_11
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 943
    .line 944
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 945
    .line 946
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 947
    .line 948
    check-cast v0, Lorg/wikipedia/compose/components/ToggleSettingItem;

    .line 949
    .line 950
    move-object/from16 v2, p1

    .line 951
    .line 952
    check-cast v2, Ljava/lang/Boolean;

    .line 953
    .line 954
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 955
    .line 956
    .line 957
    iget-object v0, v0, Lorg/wikipedia/compose/components/ToggleSettingItem;->key:Ljava/lang/String;

    .line 958
    .line 959
    invoke-interface {v1, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 963
    .line 964
    return-object v0

    .line 965
    :pswitch_12
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 966
    .line 967
    check-cast v1, Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 968
    .line 969
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 970
    .line 971
    check-cast v0, Lorg/wikipedia/categories/db/Category;

    .line 972
    .line 973
    move-object/from16 v2, p1

    .line 974
    .line 975
    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    .line 976
    .line 977
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 978
    .line 979
    .line 980
    iget-object v1, v1, Lorg/wikipedia/categories/db/CategoryDao_Impl;->__insertAdapterOfCategory:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 981
    .line 982
    invoke-virtual {v1, v2, v0}, Lkotlin/text/RegexKt;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    .line 983
    .line 984
    .line 985
    move-result-wide v0

    .line 986
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    return-object v0

    .line 991
    :pswitch_13
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 992
    .line 993
    check-cast v1, Landroidx/compose/runtime/Latch;

    .line 994
    .line 995
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 996
    .line 997
    check-cast v0, Lokhttp3/tls/internal/der/AnyValue;

    .line 998
    .line 999
    move-object/from16 v2, p1

    .line 1000
    .line 1001
    check-cast v2, Lokio/BufferedSink;

    .line 1002
    .line 1003
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1004
    .line 1005
    .line 1006
    iget-object v2, v0, Lokhttp3/tls/internal/der/AnyValue;->bytes:Lokio/ByteString;

    .line 1007
    .line 1008
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v1}, Landroidx/compose/runtime/Latch;->sink()Lokio/BufferedSink;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v3

    .line 1018
    invoke-interface {v3, v2}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 1019
    .line 1020
    .line 1021
    iget-boolean v0, v0, Lokhttp3/tls/internal/der/AnyValue;->constructed:Z

    .line 1022
    .line 1023
    iput-boolean v0, v1, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 1024
    .line 1025
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1026
    .line 1027
    return-object v0

    .line 1028
    :pswitch_14
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 1029
    .line 1030
    check-cast v1, Lokhttp3/internal/cache/DiskLruCache;

    .line 1031
    .line 1032
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 1033
    .line 1034
    check-cast v0, Landroidx/compose/runtime/Latch;

    .line 1035
    .line 1036
    move-object/from16 v2, p1

    .line 1037
    .line 1038
    check-cast v2, Ljava/io/IOException;

    .line 1039
    .line 1040
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1041
    .line 1042
    .line 1043
    monitor-enter v1

    .line 1044
    :try_start_6
    invoke-virtual {v0}, Landroidx/compose/runtime/Latch;->detach$okhttp()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1045
    .line 1046
    .line 1047
    monitor-exit v1

    .line 1048
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1049
    .line 1050
    return-object v0

    .line 1051
    :catchall_5
    move-exception v0

    .line 1052
    monitor-exit v1

    .line 1053
    throw v0

    .line 1054
    :pswitch_15
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 1055
    .line 1056
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 1057
    .line 1058
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 1059
    .line 1060
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 1061
    .line 1062
    move-object/from16 v2, p1

    .line 1063
    .line 1064
    check-cast v2, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 1065
    .line 1066
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1067
    .line 1068
    .line 1069
    const-string v3, "key"

    .line 1070
    .line 1071
    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v1

    .line 1075
    invoke-virtual {v2, v3, v1}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 1076
    .line 1077
    .line 1078
    const-string/jumbo v1, "value"

    .line 1079
    .line 1080
    .line 1081
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v0

    .line 1085
    invoke-virtual {v2, v1, v0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 1086
    .line 1087
    .line 1088
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1089
    .line 1090
    return-object v0

    .line 1091
    :pswitch_16
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 1092
    .line 1093
    check-cast v1, Lkotlinx/coroutines/android/HandlerContext;

    .line 1094
    .line 1095
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 1096
    .line 1097
    check-cast v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 1098
    .line 1099
    move-object/from16 v2, p1

    .line 1100
    .line 1101
    check-cast v2, Ljava/lang/Throwable;

    .line 1102
    .line 1103
    iget-object v1, v1, Lkotlinx/coroutines/android/HandlerContext;->handler:Landroid/os/Handler;

    .line 1104
    .line 1105
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1106
    .line 1107
    .line 1108
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1109
    .line 1110
    return-object v0

    .line 1111
    :pswitch_17
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 1112
    .line 1113
    check-cast v1, Landroidx/work/impl/model/WorkTagDao_Impl;

    .line 1114
    .line 1115
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 1116
    .line 1117
    check-cast v0, Landroidx/work/impl/model/WorkTag;

    .line 1118
    .line 1119
    move-object/from16 v2, p1

    .line 1120
    .line 1121
    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    .line 1122
    .line 1123
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1124
    .line 1125
    .line 1126
    iget-object v1, v1, Landroidx/work/impl/model/WorkTagDao_Impl;->__insertAdapterOfWorkTag:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 1127
    .line 1128
    invoke-virtual {v1, v2, v0}, Lkotlin/text/RegexKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 1129
    .line 1130
    .line 1131
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1132
    .line 1133
    return-object v0

    .line 1134
    :pswitch_18
    const-string v1, "UPDATE workspec SET output=? WHERE id=?"

    .line 1135
    .line 1136
    iget-object v2, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 1137
    .line 1138
    check-cast v2, Landroidx/work/Data;

    .line 1139
    .line 1140
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 1141
    .line 1142
    check-cast v0, Ljava/lang/String;

    .line 1143
    .line 1144
    move-object/from16 v4, p1

    .line 1145
    .line 1146
    check-cast v4, Landroidx/sqlite/SQLiteConnection;

    .line 1147
    .line 1148
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1149
    .line 1150
    .line 1151
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v1

    .line 1155
    :try_start_7
    sget-object v4, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 1156
    .line 1157
    invoke-static {v2}, Lkotlin/uuid/UuidKt;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    .line 1158
    .line 1159
    .line 1160
    move-result-object v2

    .line 1161
    invoke-interface {v1, v5, v2}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1162
    .line 1163
    .line 1164
    invoke-interface {v1, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1165
    .line 1166
    .line 1167
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 1168
    .line 1169
    .line 1170
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1171
    .line 1172
    .line 1173
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1174
    .line 1175
    return-object v0

    .line 1176
    :catchall_6
    move-exception v0

    .line 1177
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1178
    .line 1179
    .line 1180
    throw v0

    .line 1181
    :pswitch_19
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 1182
    .line 1183
    check-cast v1, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 1184
    .line 1185
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 1186
    .line 1187
    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    .line 1188
    .line 1189
    move-object/from16 v2, p1

    .line 1190
    .line 1191
    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    .line 1192
    .line 1193
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1194
    .line 1195
    .line 1196
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertAdapterOfWorkSpec:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 1197
    .line 1198
    invoke-virtual {v1, v2, v0}, Lkotlin/text/RegexKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 1199
    .line 1200
    .line 1201
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1202
    .line 1203
    return-object v0

    .line 1204
    :pswitch_1a
    const-string v1, "UPDATE workspec SET state=? WHERE id=?"

    .line 1205
    .line 1206
    iget-object v2, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 1207
    .line 1208
    check-cast v2, Landroidx/work/WorkInfo$State;

    .line 1209
    .line 1210
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 1211
    .line 1212
    check-cast v0, Ljava/lang/String;

    .line 1213
    .line 1214
    move-object/from16 v4, p1

    .line 1215
    .line 1216
    check-cast v4, Landroidx/sqlite/SQLiteConnection;

    .line 1217
    .line 1218
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1219
    .line 1220
    .line 1221
    invoke-interface {v4, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v1

    .line 1225
    :try_start_8
    invoke-static {v2}, Lkotlin/TuplesKt;->stateToInt(Landroidx/work/WorkInfo$State;)I

    .line 1226
    .line 1227
    .line 1228
    move-result v2

    .line 1229
    int-to-long v6, v2

    .line 1230
    invoke-interface {v1, v6, v7, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 1231
    .line 1232
    .line 1233
    invoke-interface {v1, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1234
    .line 1235
    .line 1236
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1237
    .line 1238
    .line 1239
    invoke-static {v4}, Lkotlin/TuplesKt;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 1240
    .line 1241
    .line 1242
    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 1243
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1244
    .line 1245
    .line 1246
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v0

    .line 1250
    return-object v0

    .line 1251
    :catchall_7
    move-exception v0

    .line 1252
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1253
    .line 1254
    .line 1255
    throw v0

    .line 1256
    :pswitch_1b
    const-string v1, "SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 1257
    .line 1258
    iget-object v4, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 1259
    .line 1260
    check-cast v4, Ljava/lang/String;

    .line 1261
    .line 1262
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 1263
    .line 1264
    check-cast v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 1265
    .line 1266
    move-object/from16 v6, p1

    .line 1267
    .line 1268
    check-cast v6, Landroidx/sqlite/SQLiteConnection;

    .line 1269
    .line 1270
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1271
    .line 1272
    .line 1273
    invoke-interface {v6, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v1

    .line 1277
    :try_start_9
    invoke-interface {v1, v5, v4}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1278
    .line 1279
    .line 1280
    new-instance v4, Landroidx/collection/ArrayMap;

    .line 1281
    .line 1282
    invoke-direct {v4, v2}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 1283
    .line 1284
    .line 1285
    new-instance v7, Landroidx/collection/ArrayMap;

    .line 1286
    .line 1287
    invoke-direct {v7, v2}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 1288
    .line 1289
    .line 1290
    :cond_f
    :goto_f
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1291
    .line 1292
    .line 1293
    move-result v8

    .line 1294
    if-eqz v8, :cond_11

    .line 1295
    .line 1296
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v8

    .line 1300
    invoke-virtual {v4, v8}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 1301
    .line 1302
    .line 1303
    move-result v9

    .line 1304
    if-nez v9, :cond_10

    .line 1305
    .line 1306
    new-instance v9, Ljava/util/ArrayList;

    .line 1307
    .line 1308
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v4, v8, v9}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    .line 1313
    .line 1314
    goto :goto_10

    .line 1315
    :catchall_8
    move-exception v0

    .line 1316
    goto/16 :goto_16

    .line 1317
    .line 1318
    :cond_10
    :goto_10
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v8

    .line 1322
    invoke-virtual {v7, v8}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 1323
    .line 1324
    .line 1325
    move-result v9

    .line 1326
    if-nez v9, :cond_f

    .line 1327
    .line 1328
    new-instance v9, Ljava/util/ArrayList;

    .line 1329
    .line 1330
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v7, v8, v9}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    .line 1335
    .line 1336
    goto :goto_f

    .line 1337
    :cond_11
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {v0, v6, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v0, v6, v7}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V

    .line 1344
    .line 1345
    .line 1346
    new-instance v0, Ljava/util/ArrayList;

    .line 1347
    .line 1348
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .line 1350
    .line 1351
    :goto_11
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1352
    .line 1353
    .line 1354
    move-result v6

    .line 1355
    if-eqz v6, :cond_16

    .line 1356
    .line 1357
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v9

    .line 1361
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1362
    .line 1363
    .line 1364
    move-result-wide v10

    .line 1365
    long-to-int v6, v10

    .line 1366
    invoke-static {v6}, Lkotlin/TuplesKt;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v10

    .line 1370
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1371
    .line 1372
    .line 1373
    move-result-object v6

    .line 1374
    sget-object v8, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 1375
    .line 1376
    invoke-static {v6}, Lkotlin/uuid/UuidKt;->fromByteArray([B)Landroidx/work/Data;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v11

    .line 1380
    const/4 v6, 0x3

    .line 1381
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1382
    .line 1383
    .line 1384
    move-result-wide v12

    .line 1385
    long-to-int v6, v12

    .line 1386
    const/4 v8, 0x4

    .line 1387
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1388
    .line 1389
    .line 1390
    move-result-wide v12

    .line 1391
    long-to-int v8, v12

    .line 1392
    const/16 v12, 0xe

    .line 1393
    .line 1394
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1395
    .line 1396
    .line 1397
    move-result-wide v12

    .line 1398
    const/16 v14, 0xf

    .line 1399
    .line 1400
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1401
    .line 1402
    .line 1403
    move-result-wide v14

    .line 1404
    const/16 v3, 0x10

    .line 1405
    .line 1406
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1407
    .line 1408
    .line 1409
    move-result-wide v16

    .line 1410
    const/16 v3, 0x11

    .line 1411
    .line 1412
    move/from16 v19, v6

    .line 1413
    .line 1414
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1415
    .line 1416
    .line 1417
    move-result-wide v5

    .line 1418
    long-to-int v3, v5

    .line 1419
    invoke-static {v3}, Lkotlin/TuplesKt;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v20

    .line 1423
    const/16 v3, 0x12

    .line 1424
    .line 1425
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1426
    .line 1427
    .line 1428
    move-result-wide v21

    .line 1429
    const/16 v3, 0x13

    .line 1430
    .line 1431
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1432
    .line 1433
    .line 1434
    move-result-wide v23

    .line 1435
    const/16 v3, 0x14

    .line 1436
    .line 1437
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1438
    .line 1439
    .line 1440
    move-result-wide v5

    .line 1441
    long-to-int v3, v5

    .line 1442
    const/16 v5, 0x15

    .line 1443
    .line 1444
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1445
    .line 1446
    .line 1447
    move-result-wide v27

    .line 1448
    const/16 v5, 0x16

    .line 1449
    .line 1450
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1451
    .line 1452
    .line 1453
    move-result-wide v5

    .line 1454
    long-to-int v5, v5

    .line 1455
    const/4 v6, 0x5

    .line 1456
    move/from16 v25, v3

    .line 1457
    .line 1458
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1459
    .line 1460
    .line 1461
    move-result-wide v2

    .line 1462
    long-to-int v2, v2

    .line 1463
    invoke-static {v2}, Lkotlin/TuplesKt;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v34

    .line 1467
    const/4 v2, 0x6

    .line 1468
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1469
    .line 1470
    .line 1471
    move-result-object v2

    .line 1472
    invoke-static {v2}, Lkotlin/TuplesKt;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v33

    .line 1476
    const/4 v2, 0x7

    .line 1477
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1478
    .line 1479
    .line 1480
    move-result-wide v2

    .line 1481
    long-to-int v2, v2

    .line 1482
    if-eqz v2, :cond_12

    .line 1483
    .line 1484
    const/16 v35, 0x1

    .line 1485
    .line 1486
    goto :goto_12

    .line 1487
    :cond_12
    const/16 v35, 0x0

    .line 1488
    .line 1489
    :goto_12
    const/16 v2, 0x8

    .line 1490
    .line 1491
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1492
    .line 1493
    .line 1494
    move-result-wide v2

    .line 1495
    long-to-int v2, v2

    .line 1496
    if-eqz v2, :cond_13

    .line 1497
    .line 1498
    const/16 v36, 0x1

    .line 1499
    .line 1500
    goto :goto_13

    .line 1501
    :cond_13
    const/16 v36, 0x0

    .line 1502
    .line 1503
    :goto_13
    const/16 v2, 0x9

    .line 1504
    .line 1505
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1506
    .line 1507
    .line 1508
    move-result-wide v2

    .line 1509
    long-to-int v2, v2

    .line 1510
    if-eqz v2, :cond_14

    .line 1511
    .line 1512
    const/16 v37, 0x1

    .line 1513
    .line 1514
    goto :goto_14

    .line 1515
    :cond_14
    const/16 v37, 0x0

    .line 1516
    .line 1517
    :goto_14
    const/16 v2, 0xa

    .line 1518
    .line 1519
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1520
    .line 1521
    .line 1522
    move-result-wide v2

    .line 1523
    long-to-int v2, v2

    .line 1524
    if-eqz v2, :cond_15

    .line 1525
    .line 1526
    const/16 v38, 0x1

    .line 1527
    .line 1528
    goto :goto_15

    .line 1529
    :cond_15
    const/16 v38, 0x0

    .line 1530
    .line 1531
    :goto_15
    const/16 v2, 0xb

    .line 1532
    .line 1533
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1534
    .line 1535
    .line 1536
    move-result-wide v39

    .line 1537
    const/16 v2, 0xc

    .line 1538
    .line 1539
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1540
    .line 1541
    .line 1542
    move-result-wide v41

    .line 1543
    const/16 v2, 0xd

    .line 1544
    .line 1545
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1546
    .line 1547
    .line 1548
    move-result-object v2

    .line 1549
    invoke-static {v2}, Lkotlin/TuplesKt;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v43

    .line 1553
    new-instance v18, Landroidx/work/Constraints;

    .line 1554
    .line 1555
    move-object/from16 v32, v18

    .line 1556
    .line 1557
    invoke-direct/range {v32 .. v43}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 1558
    .line 1559
    .line 1560
    move-object/from16 v18, v32

    .line 1561
    .line 1562
    const/4 v2, 0x0

    .line 1563
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v3

    .line 1567
    invoke-static {v3, v4}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v3

    .line 1571
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1572
    .line 1573
    .line 1574
    move-object/from16 v30, v3

    .line 1575
    .line 1576
    check-cast v30, Ljava/util/List;

    .line 1577
    .line 1578
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v3

    .line 1582
    invoke-static {v3, v7}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v3

    .line 1586
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1587
    .line 1588
    .line 1589
    move-object/from16 v31, v3

    .line 1590
    .line 1591
    check-cast v31, Ljava/util/List;

    .line 1592
    .line 1593
    move/from16 v26, v8

    .line 1594
    .line 1595
    new-instance v8, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    .line 1596
    .line 1597
    move/from16 v29, v5

    .line 1598
    .line 1599
    invoke-direct/range {v8 .. v31}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    .line 1600
    .line 1601
    .line 1602
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 1603
    .line 1604
    .line 1605
    const/4 v3, 0x2

    .line 1606
    const/4 v5, 0x1

    .line 1607
    goto/16 :goto_11

    .line 1608
    .line 1609
    :cond_16
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1610
    .line 1611
    .line 1612
    return-object v0

    .line 1613
    :goto_16
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1614
    .line 1615
    .line 1616
    throw v0

    .line 1617
    :pswitch_1c
    iget-object v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 1618
    .line 1619
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 1620
    .line 1621
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 1622
    .line 1623
    check-cast v0, Lj$/time/LocalDate;

    .line 1624
    .line 1625
    move-object/from16 v2, p1

    .line 1626
    .line 1627
    check-cast v2, Lorg/wikipedia/feed/wikigames/OnThisDayGameAction;

    .line 1628
    .line 1629
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1630
    .line 1631
    .line 1632
    invoke-interface {v1, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    .line 1634
    .line 1635
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1636
    .line 1637
    return-object v0

    .line 1638
    nop

    .line 1639
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

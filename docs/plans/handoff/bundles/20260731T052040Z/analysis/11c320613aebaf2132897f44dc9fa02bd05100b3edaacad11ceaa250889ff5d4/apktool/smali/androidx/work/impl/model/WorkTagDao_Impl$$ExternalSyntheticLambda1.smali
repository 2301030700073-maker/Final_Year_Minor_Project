.class public final synthetic Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

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
    .locals 8

    .line 1
    iget v0, p0, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object v5, p0, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 16
    .line 17
    check-cast v5, Ljava/util/Collection;

    .line 18
    .line 19
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->__updateAdapterOfStreamEntity:Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 25
    .line 26
    check-cast v5, Ljava/lang/Iterable;

    .line 27
    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const-string v0, "UPDATE OR ABORT `streams` SET `uid` = ?,`service_id` = ?,`url` = ?,`title` = ?,`stream_type` = ?,`duration` = ?,`uploader` = ?,`uploader_url` = ?,`thumbnail_url` = ?,`view_count` = ?,`textual_upload_date` = ?,`upload_date` = ?,`is_upload_date_approximation` = ? WHERE `uid` = ?"

    .line 32
    .line 33
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :try_start_0
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0, v0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-static {v0, v2}, Landroidx/core/os/BundleKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-object v4

    .line 72
    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    :catchall_1
    move-exception p1

    .line 74
    invoke-static {v0, p0}, Landroidx/core/os/BundleKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

    .line 79
    .line 80
    check-cast v5, Ljava/util/ArrayList;

    .line 81
    .line 82
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__insertAdapterOfPlaylistStreamEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 88
    .line 89
    invoke-virtual {p0, p1, v5}, Lkotlin/text/CharsKt;->insertAndReturnIdsList(Landroidx/sqlite/SQLiteConnection;Ljava/util/Collection;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    .line 95
    .line 96
    check-cast v5, Ljava/util/LinkedHashMap;

    .line 97
    .line 98
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Ljava/lang/Number;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 133
    .line 134
    .line 135
    move-result-wide v1

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Ljava/lang/Number;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 143
    .line 144
    .line 145
    move-result-wide v5

    .line 146
    iget-object v0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 147
    .line 148
    new-instance v7, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda6;

    .line 149
    .line 150
    invoke-direct {v7, v5, v6, v1, v2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl$$ExternalSyntheticLambda6;-><init>(JJ)V

    .line 151
    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    invoke-static {v0, v1, v3, v7}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Ljava/lang/Number;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_3
    return-object v4

    .line 165
    :pswitch_2
    check-cast p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    .line 166
    .line 167
    check-cast v5, Ljava/util/ArrayList;

    .line 168
    .line 169
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    iget-object p0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->__insertAdapterOfFeedGroupSubscriptionEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 175
    .line 176
    invoke-virtual {p0, p1, v5}, Lkotlin/text/CharsKt;->insertAndReturnIdsList(Landroidx/sqlite/SQLiteConnection;Ljava/util/Collection;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    return-object p0

    .line 181
    :pswitch_3
    check-cast p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 182
    .line 183
    check-cast v5, Ljava/util/ArrayList;

    .line 184
    .line 185
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    iget-object p0, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__insertAdapterOfFeedEntity:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 191
    .line 192
    invoke-virtual {p0, p1, v5}, Lkotlin/text/CharsKt;->insertAndReturnIdsList(Landroidx/sqlite/SQLiteConnection;Ljava/util/Collection;)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    return-object p0

    .line 197
    :pswitch_4
    check-cast p0, Lkotlinx/coroutines/android/HandlerContext;

    .line 198
    .line 199
    check-cast v5, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 200
    .line 201
    check-cast p1, Ljava/lang/Throwable;

    .line 202
    .line 203
    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext;->handler:Landroid/os/Handler;

    .line 204
    .line 205
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    .line 207
    .line 208
    return-object v4

    .line 209
    :pswitch_5
    check-cast p0, Landroidx/work/Data;

    .line 210
    .line 211
    check-cast v5, Ljava/lang/String;

    .line 212
    .line 213
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    const-string v0, "UPDATE workspec SET output=? WHERE id=?"

    .line 219
    .line 220
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    :try_start_2
    sget-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 225
    .line 226
    invoke-static {p0}, Lokhttp3/Cookie$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-interface {p1, v3, p0}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 231
    .line 232
    .line 233
    invoke-interface {p1, v1, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 237
    .line 238
    .line 239
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 240
    .line 241
    .line 242
    return-object v4

    .line 243
    :catchall_2
    move-exception p0

    .line 244
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 245
    .line 246
    .line 247
    throw p0

    .line 248
    :pswitch_6
    check-cast p0, Landroidx/work/WorkInfo$State;

    .line 249
    .line 250
    check-cast v5, Ljava/lang/String;

    .line 251
    .line 252
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 253
    .line 254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    const-string v0, "UPDATE workspec SET state=? WHERE id=?"

    .line 258
    .line 259
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    :try_start_3
    invoke-static {p0}, Landroidx/sqlite/SQLite;->stateToInt(Landroidx/work/WorkInfo$State;)I

    .line 264
    .line 265
    .line 266
    move-result p0

    .line 267
    int-to-long v6, p0

    .line 268
    invoke-interface {v0, v3, v6, v7}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 269
    .line 270
    .line 271
    invoke-interface {v0, v1, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 275
    .line 276
    .line 277
    invoke-static {p1}, Landroidx/room/util/DBUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 278
    .line 279
    .line 280
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 281
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 282
    .line 283
    .line 284
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    return-object p0

    .line 289
    :catchall_3
    move-exception p0

    .line 290
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 291
    .line 292
    .line 293
    throw p0

    .line 294
    :pswitch_7
    check-cast p0, Landroidx/work/impl/model/WorkNameDao_Impl;

    .line 295
    .line 296
    check-cast v5, Landroidx/work/impl/model/WorkName;

    .line 297
    .line 298
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 299
    .line 300
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    iget-object p0, p0, Landroidx/work/impl/model/WorkNameDao_Impl;->__insertAdapterOfWorkName:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 304
    .line 305
    invoke-virtual {p0, p1, v5}, Lkotlin/text/CharsKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    return-object v4

    .line 309
    :pswitch_8
    check-cast p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    .line 310
    .line 311
    check-cast v5, Landroidx/work/impl/model/SystemIdInfo;

    .line 312
    .line 313
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 314
    .line 315
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    iget-object p0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__insertAdapterOfSystemIdInfo:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 319
    .line 320
    invoke-virtual {p0, p1, v5}, Lkotlin/text/CharsKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    return-object v4

    .line 324
    :pswitch_9
    check-cast p0, Landroidx/work/impl/model/PreferenceDao_Impl;

    .line 325
    .line 326
    check-cast v5, Landroidx/work/impl/model/Preference;

    .line 327
    .line 328
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 329
    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    iget-object p0, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->__insertAdapterOfPreference:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 334
    .line 335
    invoke-virtual {p0, p1, v5}, Lkotlin/text/CharsKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    return-object v4

    .line 339
    :pswitch_a
    check-cast p0, Landroidx/work/impl/model/DependencyDao_Impl;

    .line 340
    .line 341
    check-cast v5, Landroidx/work/impl/model/Dependency;

    .line 342
    .line 343
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 344
    .line 345
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    iget-object p0, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__insertAdapterOfDependency:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 349
    .line 350
    invoke-virtual {p0, p1, v5}, Lkotlin/text/CharsKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    return-object v4

    .line 354
    :pswitch_b
    check-cast p0, Lkotlinx/coroutines/StandaloneCoroutine;

    .line 355
    .line 356
    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    .line 357
    .line 358
    check-cast p1, Landroidx/work/impl/constraints/ConstraintsState;

    .line 359
    .line 360
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 361
    .line 362
    .line 363
    check-cast v5, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 364
    .line 365
    invoke-virtual {v5, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    return-object v4

    .line 369
    :pswitch_c
    check-cast p0, Landroidx/work/impl/model/WorkTagDao_Impl;

    .line 370
    .line 371
    check-cast v5, Landroidx/work/impl/model/WorkTag;

    .line 372
    .line 373
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 374
    .line 375
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    iget-object p0, p0, Landroidx/work/impl/model/WorkTagDao_Impl;->__insertAdapterOfWorkTag:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 379
    .line 380
    invoke-virtual {p0, p1, v5}, Lkotlin/text/CharsKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    return-object v4

    .line 384
    nop

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
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

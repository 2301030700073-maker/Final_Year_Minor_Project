.class public final Lokio/Path$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/lifecycle/viewmodel/CreationExtras$Key;
.implements Landroidx/preference/Preference$SummaryProvider;
.implements Lkotlin/coroutines/CoroutineContext$Key;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Factory;
.implements Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;
.implements Lcom/bumptech/glide/manager/RequestManagerTreeNode;
.implements Lcom/fsck/k9/mail/K9MailLib$DebugStatus;


# static fields
.field public static sSimpleSummaryProvider:Lokio/Path$Companion;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createThreadEntry(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/ContentValues;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "message_id"

    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "root"

    .line 19
    .line 20
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "parent"

    .line 24
    .line 25
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    .line 27
    .line 28
    const-string p1, "threads"

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static doMessageThreading(Landroid/database/sqlite/SQLiteDatabase;JLcom/fsck/k9/storage/messages/ThreadHeaders;)Lcom/fsck/k9/storage/messages/ThreadInfo;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p3, Lcom/fsck/k9/storage/messages/ThreadHeaders;->messageIdHeader:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {p0, p1, p2, v0, v1}, Lokio/Path$Companion;->getThreadInfo(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Z)Lcom/fsck/k9/storage/messages/ThreadInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v2, p3, Lcom/fsck/k9/storage/messages/ThreadHeaders;->referencesHeader:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sget-object v4, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    new-instance v4, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v5, Lcom/fsck/k9/helper/Utility;->MESSAGE_ID:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    move v6, v3

    .line 30
    :goto_0
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->find(I)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 57
    .line 58
    :cond_1
    iget-object p3, p3, Lcom/fsck/k9/storage/messages/ThreadHeaders;->inReplyToHeader:Ljava/lang/String;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    if-eqz p3, :cond_2

    .line 62
    .line 63
    sget-object v5, Lcom/fsck/k9/helper/Utility;->MESSAGE_ID:Ljava/util/regex/Pattern;

    .line 64
    .line 65
    invoke-virtual {v5, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    move-object p3, v2

    .line 89
    :goto_1
    if-eqz p3, :cond_4

    .line 90
    .line 91
    invoke-interface {v4, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    invoke-static {v4, p3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    if-eqz p3, :cond_5

    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    move-object v4, v2

    .line 114
    move-object v10, v4

    .line 115
    :cond_6
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_a

    .line 120
    .line 121
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {p0, p1, p2, v5, v3}, Lokio/Path$Companion;->getThreadInfo(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Z)Lcom/fsck/k9/storage/messages/ThreadInfo;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    if-nez v11, :cond_7

    .line 132
    .line 133
    new-instance v6, Landroid/content/ContentValues;

    .line 134
    .line 135
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v7, "message_id"

    .line 139
    .line 140
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v5, "folder_id"

    .line 144
    .line 145
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-virtual {v6, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 150
    .line 151
    .line 152
    const-string v5, "empty"

    .line 153
    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-virtual {v6, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    .line 160
    .line 161
    const-string v5, "messages"

    .line 162
    .line 163
    invoke-virtual {p0, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 164
    .line 165
    .line 166
    move-result-wide v5

    .line 167
    new-instance v8, Landroid/content/ContentValues;

    .line 168
    .line 169
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v8, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    .line 178
    .line 179
    const-string v5, "root"

    .line 180
    .line 181
    invoke-virtual {v8, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    .line 183
    .line 184
    const-string v5, "parent"

    .line 185
    .line 186
    invoke-virtual {v8, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    .line 188
    .line 189
    const-string v5, "threads"

    .line 190
    .line 191
    invoke-virtual {p0, v5, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 192
    .line 193
    .line 194
    move-result-wide v5

    .line 195
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    if-nez v4, :cond_6

    .line 200
    .line 201
    move-object v4, v10

    .line 202
    goto :goto_3

    .line 203
    :cond_7
    iget-wide v5, v11, Lcom/fsck/k9/storage/messages/ThreadInfo;->rootId:J

    .line 204
    .line 205
    if-nez v4, :cond_9

    .line 206
    .line 207
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    :cond_8
    move-object v5, p0

    .line 212
    goto :goto_4

    .line 213
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 214
    .line 215
    .line 216
    move-result-wide v7

    .line 217
    cmp-long v5, v5, v7

    .line 218
    .line 219
    if-eqz v5, :cond_8

    .line 220
    .line 221
    iget-wide v6, v11, Lcom/fsck/k9/storage/messages/ThreadInfo;->rootId:J

    .line 222
    .line 223
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 224
    .line 225
    .line 226
    move-result-wide v8

    .line 227
    move-object v5, p0

    .line 228
    invoke-static/range {v5 .. v10}, Lokio/Path$Companion;->updateThreadToNewRoot(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/Long;)V

    .line 229
    .line 230
    .line 231
    :goto_4
    iget-object v10, v11, Lcom/fsck/k9/storage/messages/ThreadInfo;->threadId:Ljava/lang/Long;

    .line 232
    .line 233
    move-object p0, v5

    .line 234
    goto :goto_3

    .line 235
    :cond_a
    move-object v5, p0

    .line 236
    if-eqz v0, :cond_d

    .line 237
    .line 238
    iget-object p0, v0, Lcom/fsck/k9/storage/messages/ThreadInfo;->threadId:Ljava/lang/Long;

    .line 239
    .line 240
    if-eqz p0, :cond_d

    .line 241
    .line 242
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 243
    .line 244
    .line 245
    move-result-wide p0

    .line 246
    const-string p2, "Thread with ID "

    .line 247
    .line 248
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p3

    .line 252
    filled-new-array {p3}, [Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p3

    .line 256
    const-string v1, "SELECT root FROM threads WHERE id = ?"

    .line 257
    .line 258
    invoke-virtual {v5, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 259
    .line 260
    .line 261
    move-result-object p3

    .line 262
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_c

    .line 267
    .line 268
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 269
    .line 270
    .line 271
    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-interface {p3}, Ljava/io/Closeable;->close()V

    .line 273
    .line 274
    .line 275
    if-nez v4, :cond_b

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_b
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 279
    .line 280
    .line 281
    move-result-wide p0

    .line 282
    cmp-long p0, v6, p0

    .line 283
    .line 284
    if-eqz p0, :cond_d

    .line 285
    .line 286
    :goto_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 290
    .line 291
    .line 292
    move-result-wide v8

    .line 293
    invoke-static/range {v5 .. v10}, Lokio/Path$Companion;->updateThreadToNewRoot(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/Long;)V

    .line 294
    .line 295
    .line 296
    goto :goto_7

    .line 297
    :catchall_0
    move-exception v0

    .line 298
    move-object p0, v0

    .line 299
    goto :goto_6

    .line 300
    :cond_c
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 301
    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string p0, " not found"

    .line 311
    .line 312
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    :goto_6
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 328
    :catchall_1
    move-exception v0

    .line 329
    move-object p1, v0

    .line 330
    invoke-static {p3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 331
    .line 332
    .line 333
    throw p1

    .line 334
    :cond_d
    :goto_7
    new-instance v5, Lcom/fsck/k9/storage/messages/ThreadInfo;

    .line 335
    .line 336
    if-eqz v0, :cond_e

    .line 337
    .line 338
    iget-object p0, v0, Lcom/fsck/k9/storage/messages/ThreadInfo;->threadId:Ljava/lang/Long;

    .line 339
    .line 340
    move-object v6, p0

    .line 341
    goto :goto_8

    .line 342
    :cond_e
    move-object v6, v2

    .line 343
    :goto_8
    if-eqz v0, :cond_f

    .line 344
    .line 345
    iget-object v2, v0, Lcom/fsck/k9/storage/messages/ThreadInfo;->messageId:Ljava/lang/Long;

    .line 346
    .line 347
    :cond_f
    move-object v7, v2

    .line 348
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 352
    .line 353
    .line 354
    move-result-wide v8

    .line 355
    invoke-direct/range {v5 .. v10}, Lcom/fsck/k9/storage/messages/ThreadInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;JLjava/lang/Long;)V

    .line 356
    .line 357
    .line 358
    return-object v5
.end method

.method public static get(Ljava/lang/String;)Lokio/Path;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lokio/internal/-Path;->SLASH:Lokio/ByteString;

    .line 5
    .line 6
    new-instance v0, Lokio/Buffer;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-static {v0, p0}, Lokio/internal/-Path;->toPath(Lokio/Buffer;Z)Lokio/Path;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static get$default(Lj$/nio/file/Path;)Lokio/Path;
    .locals 1

    sget-object v0, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokio/Path$Companion;->get(Ljava/lang/String;)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static get$default(Ljava/io/File;)Lokio/Path;
    .locals 1

    .line 1
    sget-object v0, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lokio/Path$Companion;->get(Ljava/lang/String;)Lokio/Path;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static getMessageThreadHeaders(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/fsck/k9/storage/messages/ThreadHeaders;
    .locals 4

    .line 1
    const-string v0, "Message not found: "

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "\nSELECT messages.message_id, message_parts.header \nFROM messages \nLEFT JOIN message_parts ON (messages.message_part_id = message_parts.id) \nWHERE messages.id = ?\n            "

    .line 15
    .line 16
    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 p2, 0x1

    .line 32
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getBlob(I)[B

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 49
    .line 50
    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 51
    .line 52
    .line 53
    new-instance p2, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    const/16 v3, 0x10

    .line 56
    .line 57
    invoke-direct {p2, v3, v0, v1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2, p2}, Lorg/jsoup/helper/Validate;->parse(Ljava/io/ByteArrayInputStream;Lcom/fsck/k9/mail/message/MessageHeaderCollector;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    new-instance p2, Lcom/fsck/k9/storage/messages/ThreadHeaders;

    .line 67
    .line 68
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Ljava/lang/String;

    .line 71
    .line 72
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {p2, p1, v0, v1}, Lcom/fsck/k9/storage/messages/ThreadHeaders;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 80
    .line 81
    .line 82
    return-object p2

    .line 83
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :goto_1
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    :catchall_1
    move-exception p2

    .line 107
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw p2
.end method

.method public static getThreadInfo(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Z)Lcom/fsck/k9/storage/messages/ThreadInfo;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    if-eqz p4, :cond_1

    .line 6
    .line 7
    const-string p4, "AND m.empty = 1 "

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const-string p4, ""

    .line 11
    .line 12
    :goto_0
    const-string v1, "\nSELECT t.id, t.message_id, t.root, t.parent \nFROM messages m \nLEFT JOIN threads t ON (t.message_id = m.id) \nWHERE m.folder_id = ? AND m.message_id = ? \n"

    .line 13
    .line 14
    const-string v2, "\nORDER BY m.id \nLIMIT 1\n            "

    .line 15
    .line 16
    invoke-static {v1, p4, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    filled-new-array {p1, p3}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p4, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    const/4 p3, 0x1

    .line 44
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getLong(I)J

    .line 45
    .line 46
    .line 47
    move-result-wide p3

    .line 48
    const/4 v1, 0x2

    .line 49
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    const/4 v1, 0x3

    .line 54
    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    :goto_1
    move-object v7, v0

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_1

    .line 71
    :goto_2
    new-instance v2, Lcom/fsck/k9/storage/messages/ThreadInfo;

    .line 72
    .line 73
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/storage/messages/ThreadInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;JLjava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    move-object v0, v2

    .line 85
    goto :goto_3

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    move-object p1, v0

    .line 88
    goto :goto_4

    .line 89
    :cond_3
    :goto_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 90
    .line 91
    .line 92
    return-object v0

    .line 93
    :goto_4
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    move-object p2, v0

    .line 96
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    throw p2
.end method

.method public static updateThreadToNewRoot(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/Long;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "root"

    .line 7
    .line 8
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    filled-new-array {p3}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    const-string p4, "threads"

    .line 24
    .line 25
    const-string v1, "root = ?"

    .line 26
    .line 27
    invoke-virtual {p0, p4, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const-string p3, "parent"

    .line 31
    .line 32
    invoke-virtual {v0, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    filled-new-array {p1}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "id = ?"

    .line 44
    .line 45
    invoke-virtual {p0, p4, v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lcom/bumptech/glide/load/engine/LockedResource;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/LockedResource;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public debugSensitive()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/fsck/k9/K9;->INSTANCE:Lcom/fsck/k9/K9;

    .line 2
    .line 3
    sget-object p0, Lcom/fsck/k9/K9;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 16
    .line 17
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSensitiveLoggingEnabled:Z

    .line 18
    .line 19
    return p0
.end method

.method public enabled()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/fsck/k9/K9;->INSTANCE:Lcom/fsck/k9/K9;

    .line 2
    .line 3
    sget-object p0, Lcom/fsck/k9/K9;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 16
    .line 17
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 18
    .line 19
    return p0
.end method

.method public initializeExtractor(Landroid/media/MediaExtractor;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    new-instance p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;-><init>(Ljava/nio/ByteBuffer;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/media/MediaExtractor;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public initializeRetriever(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    new-instance p0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;-><init>(Ljava/nio/ByteBuffer;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    instance-of v4, v3, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;

    .line 15
    .line 16
    iget v5, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->label:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;

    .line 29
    .line 30
    move-object/from16 v5, p0

    .line 31
    .line 32
    invoke-direct {v4, v5, v3}, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;-><init>(Lokio/Path$Companion;Lkotlin/coroutines/Continuation;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v3, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->result:Ljava/lang/Object;

    .line 36
    .line 37
    iget v5, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->label:I

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    sget-object v7, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;->INSTANCE:Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 41
    .line 42
    const/4 v8, 0x2

    .line 43
    const/4 v9, 0x1

    .line 44
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 45
    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    if-eq v5, v9, :cond_2

    .line 49
    .line 50
    if-ne v5, v8, :cond_1

    .line 51
    .line 52
    iget v0, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->I$1:I

    .line 53
    .line 54
    iget-boolean v1, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->Z$1:Z

    .line 55
    .line 56
    iget-object v2, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->L$3:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v5, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->L$2:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v4, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->L$0:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move v15, v1

    .line 66
    move-object/from16 v18, v2

    .line 67
    .line 68
    move-object/from16 v16, v5

    .line 69
    .line 70
    :goto_1
    move/from16 v17, v0

    .line 71
    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 75
    .line 76
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v6

    .line 80
    :cond_2
    iget v0, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->I$1:I

    .line 81
    .line 82
    iget-boolean v1, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->Z$1:Z

    .line 83
    .line 84
    iget-boolean v2, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->Z$0:Z

    .line 85
    .line 86
    iget v5, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->I$0:I

    .line 87
    .line 88
    iget-object v11, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->L$2:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v12, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->L$1:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v13, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->L$0:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    move/from16 v21, v2

    .line 98
    .line 99
    move v2, v1

    .line 100
    move v1, v5

    .line 101
    move-object v5, v3

    .line 102
    move/from16 v3, v21

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    sget-object v3, Lnet/thunderbird/feature/notification/resources/api/String0_commonMainKt;->notification_authentication_error_title$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 109
    .line 110
    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Lorg/jetbrains/compose/resources/StringResource;

    .line 115
    .line 116
    iput-object v0, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->L$0:Ljava/lang/String;

    .line 117
    .line 118
    move-object/from16 v5, p2

    .line 119
    .line 120
    iput-object v5, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->L$1:Ljava/lang/String;

    .line 121
    .line 122
    iput-object v0, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->L$2:Ljava/lang/String;

    .line 123
    .line 124
    iput v1, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->I$0:I

    .line 125
    .line 126
    iput-boolean v2, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->Z$0:Z

    .line 127
    .line 128
    iput-boolean v2, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->Z$1:Z

    .line 129
    .line 130
    iput v1, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->I$1:I

    .line 131
    .line 132
    iput v9, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->label:I

    .line 133
    .line 134
    sget-object v11, Lorg/jetbrains/compose/resources/ResourceReaderKt;->LocalResourceReader:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 135
    .line 136
    sget-object v11, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->getResourceEnvironment:Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$getResourceEnvironment$1;

    .line 137
    .line 138
    invoke-virtual {v11}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$getResourceEnvironment$1;->invoke()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    check-cast v11, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 143
    .line 144
    invoke-static {v3, v7, v11, v4}, Lkotlin/text/CharsKt__CharKt;->loadString(Lorg/jetbrains/compose/resources/StringResource;Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    if-ne v3, v10, :cond_4

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_4
    move-object v11, v0

    .line 152
    move-object v13, v11

    .line 153
    move v0, v1

    .line 154
    move-object v12, v5

    .line 155
    move-object v5, v3

    .line 156
    move v3, v2

    .line 157
    :goto_2
    check-cast v5, Ljava/lang/String;

    .line 158
    .line 159
    if-eqz v3, :cond_5

    .line 160
    .line 161
    sget-object v14, Lnet/thunderbird/feature/notification/resources/api/String0_commonMainKt;->notification_authentication_incoming_server_error_text$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 162
    .line 163
    invoke-virtual {v14}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    check-cast v14, Lorg/jetbrains/compose/resources/StringResource;

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_5
    sget-object v14, Lnet/thunderbird/feature/notification/resources/api/String0_commonMainKt;->notification_authentication_outgoing_server_error_text$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 171
    .line 172
    invoke-virtual {v14}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v14

    .line 176
    check-cast v14, Lorg/jetbrains/compose/resources/StringResource;

    .line 177
    .line 178
    :goto_3
    new-array v15, v9, [Ljava/lang/Object;

    .line 179
    .line 180
    const/16 v16, 0x0

    .line 181
    .line 182
    aput-object v12, v15, v16

    .line 183
    .line 184
    iput-object v13, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->L$0:Ljava/lang/String;

    .line 185
    .line 186
    iput-object v6, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->L$1:Ljava/lang/String;

    .line 187
    .line 188
    iput-object v11, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->L$2:Ljava/lang/String;

    .line 189
    .line 190
    iput-object v5, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->L$3:Ljava/lang/String;

    .line 191
    .line 192
    iput v1, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->I$0:I

    .line 193
    .line 194
    iput-boolean v3, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->Z$0:Z

    .line 195
    .line 196
    iput-boolean v2, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->Z$1:Z

    .line 197
    .line 198
    iput v0, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->I$1:I

    .line 199
    .line 200
    iput v8, v4, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->label:I

    .line 201
    .line 202
    new-instance v1, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .line 206
    .line 207
    aget-object v3, v15, v16

    .line 208
    .line 209
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    sget-object v3, Lorg/jetbrains/compose/resources/ResourceReaderKt;->LocalResourceReader:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 217
    .line 218
    sget-object v3, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt;->getResourceEnvironment:Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$getResourceEnvironment$1;

    .line 219
    .line 220
    invoke-virtual {v3}, Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$getResourceEnvironment$1;->invoke()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 225
    .line 226
    invoke-static {v14, v1, v7, v3, v4}, Lkotlin/text/CharsKt__CharKt;->loadString(Lorg/jetbrains/compose/resources/StringResource;Ljava/util/ArrayList;Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;Lorg/jetbrains/compose/resources/ResourceEnvironment;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    if-ne v3, v10, :cond_6

    .line 231
    .line 232
    :goto_4
    return-object v10

    .line 233
    :cond_6
    move v15, v2

    .line 234
    move-object/from16 v18, v5

    .line 235
    .line 236
    move-object/from16 v16, v11

    .line 237
    .line 238
    move-object v4, v13

    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :goto_5
    move-object/from16 v19, v3

    .line 242
    .line 243
    check-cast v19, Ljava/lang/String;

    .line 244
    .line 245
    new-instance v0, Lnet/thunderbird/feature/notification/api/NotificationChannel$Miscellaneous;

    .line 246
    .line 247
    invoke-direct {v0, v4}, Lnet/thunderbird/feature/notification/api/NotificationChannel$Miscellaneous;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    new-instance v14, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 251
    .line 252
    move-object/from16 v20, v0

    .line 253
    .line 254
    invoke-direct/range {v14 .. v20}, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;-><init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/notification/api/NotificationChannel$Miscellaneous;)V

    .line 255
    .line 256
    .line 257
    return-object v14
.end method

.method public provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    check-cast p1, Landroidx/preference/ListPreference;

    .line 2
    .line 3
    iget-object p0, p1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-ltz p0, :cond_0

    .line 11
    .line 12
    iget-object v1, p1, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    aget-object p0, v1, p0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p0, v0

    .line 20
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    iget-object p0, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const p1, 0x7f1204df

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    iget-object p0, p1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-ltz p0, :cond_2

    .line 43
    .line 44
    iget-object p1, p1, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    aget-object p0, p1, p0

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_2
    return-object v0
.end method

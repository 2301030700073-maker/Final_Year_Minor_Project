.class public final synthetic Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$1:J

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(JZLorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda24;->f$1:J

    .line 5
    .line 6
    iput-boolean p3, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda24;->f$2:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda24;->f$1:J

    .line 4
    .line 5
    iget-boolean v0, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda24;->f$2:Z

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    check-cast v3, Landroidx/sqlite/SQLiteConnection;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v4, "SELECT * FROM ReadingListPage WHERE status = ? AND offline = ?"

    .line 15
    .line 16
    invoke-interface {v3, v4}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v4, 0x1

    .line 21
    :try_start_0
    invoke-interface {v3, v1, v2, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    int-to-long v5, v0

    .line 26
    invoke-interface {v3, v5, v6, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v0, "wiki"

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const-string v1, "namespace"

    .line 37
    .line 38
    invoke-static {v3, v1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const-string v2, "displayTitle"

    .line 43
    .line 44
    invoke-static {v3, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const-string v5, "apiTitle"

    .line 49
    .line 50
    invoke-static {v3, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const-string v6, "description"

    .line 55
    .line 56
    invoke-static {v3, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const-string v7, "thumbUrl"

    .line 61
    .line 62
    invoke-static {v3, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const-string v8, "listId"

    .line 67
    .line 68
    invoke-static {v3, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const-string v9, "id"

    .line 73
    .line 74
    invoke-static {v3, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    const-string v10, "mtime"

    .line 79
    .line 80
    invoke-static {v3, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    const-string v11, "atime"

    .line 85
    .line 86
    invoke-static {v3, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    const-string v12, "offline"

    .line 91
    .line 92
    invoke-static {v3, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    const-string v13, "status"

    .line 97
    .line 98
    invoke-static {v3, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    const-string v14, "sizeBytes"

    .line 103
    .line 104
    invoke-static {v3, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    const-string v15, "lang"

    .line 109
    .line 110
    invoke-static {v3, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v15

    .line 114
    const-string v4, "revId"

    .line 115
    .line 116
    invoke-static {v3, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    move/from16 p1, v4

    .line 121
    .line 122
    const-string v4, "remoteId"

    .line 123
    .line 124
    invoke-static {v3, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    move/from16 v16, v4

    .line 129
    .line 130
    new-instance v4, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    :goto_0
    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 136
    .line 137
    .line 138
    move-result v17

    .line 139
    if-eqz v17, :cond_7

    .line 140
    .line 141
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 142
    .line 143
    .line 144
    move-result v17

    .line 145
    const/16 v18, 0x0

    .line 146
    .line 147
    if-eqz v17, :cond_0

    .line 148
    .line 149
    move-object/from16 v17, v18

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_0
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v17

    .line 156
    :goto_1
    invoke-static/range {v17 .. v17}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 157
    .line 158
    .line 159
    move-result-object v20

    .line 160
    if-eqz v20, :cond_6

    .line 161
    .line 162
    invoke-interface {v3, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 163
    .line 164
    .line 165
    move-result v17

    .line 166
    if-eqz v17, :cond_1

    .line 167
    .line 168
    move/from16 v17, v14

    .line 169
    .line 170
    move/from16 v44, v15

    .line 171
    .line 172
    move-object/from16 v14, v18

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_1
    move/from16 v17, v14

    .line 176
    .line 177
    move/from16 v44, v15

    .line 178
    .line 179
    invoke-interface {v3, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 180
    .line 181
    .line 182
    move-result-wide v14

    .line 183
    long-to-int v14, v14

    .line 184
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v14

    .line 188
    :goto_2
    invoke-static {v14}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 189
    .line 190
    .line 191
    move-result-object v21

    .line 192
    if-eqz v21, :cond_5

    .line 193
    .line 194
    invoke-interface {v3, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v22

    .line 198
    invoke-interface {v3, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v23

    .line 202
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 203
    .line 204
    .line 205
    move-result v14

    .line 206
    if-eqz v14, :cond_2

    .line 207
    .line 208
    move-object/from16 v24, v18

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_2
    invoke-interface {v3, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v14

    .line 215
    move-object/from16 v24, v14

    .line 216
    .line 217
    :goto_3
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 218
    .line 219
    .line 220
    move-result v14

    .line 221
    if-eqz v14, :cond_3

    .line 222
    .line 223
    :goto_4
    move-object/from16 v25, v18

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_3
    invoke-interface {v3, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v18

    .line 230
    goto :goto_4

    .line 231
    :goto_5
    invoke-interface {v3, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 232
    .line 233
    .line 234
    move-result-wide v26

    .line 235
    invoke-interface {v3, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 236
    .line 237
    .line 238
    move-result-wide v28

    .line 239
    invoke-interface {v3, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 240
    .line 241
    .line 242
    move-result-wide v30

    .line 243
    invoke-interface {v3, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 244
    .line 245
    .line 246
    move-result-wide v32

    .line 247
    invoke-interface {v3, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 248
    .line 249
    .line 250
    move-result-wide v14

    .line 251
    long-to-int v14, v14

    .line 252
    if-eqz v14, :cond_4

    .line 253
    .line 254
    const/16 v34, 0x1

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_4
    const/4 v14, 0x0

    .line 258
    move/from16 v34, v14

    .line 259
    .line 260
    :goto_6
    invoke-interface {v3, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 261
    .line 262
    .line 263
    move-result-wide v35

    .line 264
    move/from16 v14, v17

    .line 265
    .line 266
    invoke-interface {v3, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 267
    .line 268
    .line 269
    move-result-wide v37

    .line 270
    move/from16 v15, v44

    .line 271
    .line 272
    invoke-interface {v3, v15}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v39

    .line 276
    move/from16 v17, v0

    .line 277
    .line 278
    move/from16 v0, p1

    .line 279
    .line 280
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 281
    .line 282
    .line 283
    move-result-wide v40

    .line 284
    move/from16 p1, v0

    .line 285
    .line 286
    move/from16 v0, v16

    .line 287
    .line 288
    invoke-interface {v3, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 289
    .line 290
    .line 291
    move-result-wide v42

    .line 292
    new-instance v19, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 293
    .line 294
    invoke-direct/range {v19 .. v43}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZJJLjava/lang/String;JJ)V

    .line 295
    .line 296
    .line 297
    move/from16 v16, v0

    .line 298
    .line 299
    move-object/from16 v0, v19

    .line 300
    .line 301
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move/from16 v0, v17

    .line 305
    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :catchall_0
    move-exception v0

    .line 309
    goto :goto_7

    .line 310
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 311
    .line 312
    const-string v1, "Expected NON-NULL \'org.wikipedia.page.Namespace\', but it was NULL."

    .line 313
    .line 314
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw v0

    .line 318
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 319
    .line 320
    const-string v1, "Expected NON-NULL \'org.wikipedia.dataclient.WikiSite\', but it was NULL."

    .line 321
    .line 322
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :cond_7
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 327
    .line 328
    .line 329
    return-object v4

    .line 330
    :goto_7
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 331
    .line 332
    .line 333
    throw v0
.end method

.class public final synthetic Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;)V
    .locals 0

    .line 10
    const/4 p2, 0x1

    iput p2, p0, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v0, v0, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v3, "SELECT * FROM ReadingListPage WHERE UPPER(displayTitle) LIKE UPPER(?) ESCAPE \'\\\'"

    .line 19
    .line 20
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :try_start_0
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v0, "wiki"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-string v3, "namespace"

    .line 35
    .line 36
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const-string v4, "displayTitle"

    .line 41
    .line 42
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const-string v5, "apiTitle"

    .line 47
    .line 48
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const-string v6, "description"

    .line 53
    .line 54
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    const-string v7, "thumbUrl"

    .line 59
    .line 60
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    const-string v8, "listId"

    .line 65
    .line 66
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    const-string v9, "id"

    .line 71
    .line 72
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    const-string v10, "mtime"

    .line 77
    .line 78
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    const-string v11, "atime"

    .line 83
    .line 84
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v11

    .line 88
    const-string v12, "offline"

    .line 89
    .line 90
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    const-string v13, "status"

    .line 95
    .line 96
    invoke-static {v1, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    const-string v14, "sizeBytes"

    .line 101
    .line 102
    invoke-static {v1, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v14

    .line 106
    const-string v15, "lang"

    .line 107
    .line 108
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    const-string v2, "revId"

    .line 113
    .line 114
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    move/from16 p0, v2

    .line 119
    .line 120
    const-string v2, "remoteId"

    .line 121
    .line 122
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    move/from16 p1, v2

    .line 127
    .line 128
    new-instance v2, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .line 132
    .line 133
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 134
    .line 135
    .line 136
    move-result v16

    .line 137
    if-eqz v16, :cond_7

    .line 138
    .line 139
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 140
    .line 141
    .line 142
    move-result v16

    .line 143
    const/16 v17, 0x0

    .line 144
    .line 145
    if-eqz v16, :cond_0

    .line 146
    .line 147
    move-object/from16 v16, v17

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_0
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v16

    .line 154
    :goto_1
    invoke-static/range {v16 .. v16}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 155
    .line 156
    .line 157
    move-result-object v19

    .line 158
    if-eqz v19, :cond_6

    .line 159
    .line 160
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 161
    .line 162
    .line 163
    move-result v16

    .line 164
    if-eqz v16, :cond_1

    .line 165
    .line 166
    move/from16 v16, v14

    .line 167
    .line 168
    move/from16 v43, v15

    .line 169
    .line 170
    move-object/from16 v14, v17

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_1
    move/from16 v16, v14

    .line 174
    .line 175
    move/from16 v43, v15

    .line 176
    .line 177
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 178
    .line 179
    .line 180
    move-result-wide v14

    .line 181
    long-to-int v14, v14

    .line 182
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    :goto_2
    invoke-static {v14}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 187
    .line 188
    .line 189
    move-result-object v20

    .line 190
    if-eqz v20, :cond_5

    .line 191
    .line 192
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v21

    .line 196
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v22

    .line 200
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 201
    .line 202
    .line 203
    move-result v14

    .line 204
    if-eqz v14, :cond_2

    .line 205
    .line 206
    move-object/from16 v23, v17

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_2
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v14

    .line 213
    move-object/from16 v23, v14

    .line 214
    .line 215
    :goto_3
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 216
    .line 217
    .line 218
    move-result v14

    .line 219
    if-eqz v14, :cond_3

    .line 220
    .line 221
    :goto_4
    move-object/from16 v24, v17

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_3
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v17

    .line 228
    goto :goto_4

    .line 229
    :goto_5
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 230
    .line 231
    .line 232
    move-result-wide v25

    .line 233
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 234
    .line 235
    .line 236
    move-result-wide v27

    .line 237
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 238
    .line 239
    .line 240
    move-result-wide v29

    .line 241
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 242
    .line 243
    .line 244
    move-result-wide v31

    .line 245
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 246
    .line 247
    .line 248
    move-result-wide v14

    .line 249
    long-to-int v14, v14

    .line 250
    if-eqz v14, :cond_4

    .line 251
    .line 252
    const/16 v33, 0x1

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_4
    const/4 v14, 0x0

    .line 256
    move/from16 v33, v14

    .line 257
    .line 258
    :goto_6
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 259
    .line 260
    .line 261
    move-result-wide v34

    .line 262
    move/from16 v14, v16

    .line 263
    .line 264
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 265
    .line 266
    .line 267
    move-result-wide v36

    .line 268
    move/from16 v15, v43

    .line 269
    .line 270
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v38

    .line 274
    move/from16 v16, v0

    .line 275
    .line 276
    move/from16 v0, p0

    .line 277
    .line 278
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 279
    .line 280
    .line 281
    move-result-wide v39

    .line 282
    move/from16 p0, v0

    .line 283
    .line 284
    move/from16 v0, p1

    .line 285
    .line 286
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 287
    .line 288
    .line 289
    move-result-wide v41

    .line 290
    new-instance v18, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 291
    .line 292
    invoke-direct/range {v18 .. v42}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZJJLjava/lang/String;JJ)V

    .line 293
    .line 294
    .line 295
    move/from16 p1, v0

    .line 296
    .line 297
    move-object/from16 v0, v18

    .line 298
    .line 299
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move/from16 v0, v16

    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :catchall_0
    move-exception v0

    .line 307
    goto :goto_7

    .line 308
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 309
    .line 310
    const-string v2, "Expected NON-NULL \'org.wikipedia.page.Namespace\', but it was NULL."

    .line 311
    .line 312
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw v0

    .line 316
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 317
    .line 318
    const-string v2, "Expected NON-NULL \'org.wikipedia.dataclient.WikiSite\', but it was NULL."

    .line 319
    .line 320
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :cond_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 325
    .line 326
    .line 327
    return-object v2

    .line 328
    :goto_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 329
    .line 330
    .line 331
    throw v0

    .line 332
    :pswitch_0
    move-object/from16 v1, p1

    .line 333
    .line 334
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    const-string v2, "DELETE FROM TalkPageSeen WHERE sha = ?"

    .line 340
    .line 341
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    const/4 v2, 0x1

    .line 346
    :try_start_1
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 350
    .line 351
    .line 352
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 353
    .line 354
    .line 355
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 356
    .line 357
    return-object v0

    .line 358
    :catchall_1
    move-exception v0

    .line 359
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 360
    .line 361
    .line 362
    throw v0

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/Enum;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$4:Ljava/lang/Enum;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$3:Ljava/lang/String;

    .line 12
    .line 13
    iput-wide p4, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$6:J

    .line 14
    .line 15
    iput-object p6, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$5:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/page/Namespace;Ljava/lang/String;J)V
    .locals 0

    .line 18
    const/4 p1, 0x0

    iput p1, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$3:Ljava/lang/String;

    iput-object p4, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$4:Ljava/lang/Enum;

    iput-object p5, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$5:Ljava/lang/String;

    iput-wide p6, p0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$6:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$4:Ljava/lang/Enum;

    .line 7
    .line 8
    iget-object v4, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$2:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v6, v4

    .line 14
    check-cast v6, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 15
    .line 16
    move-object v7, v3

    .line 17
    check-cast v7, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Landroidx/glance/appwidget/lazy/LazyListKt$applyListScope$listScopeImpl$1;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v5, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;

    .line 27
    .line 28
    iget-object v8, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$3:Ljava/lang/String;

    .line 29
    .line 30
    iget-wide v9, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$6:J

    .line 31
    .line 32
    invoke-direct/range {v5 .. v10}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;-><init>(Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;Ljava/lang/String;J)V

    .line 33
    .line 34
    .line 35
    move-wide v8, v9

    .line 36
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 37
    .line 38
    const v4, 0xe185434

    .line 39
    .line 40
    .line 41
    invoke-direct {v3, v5, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v3}, Lcoil3/size/ViewSizeResolver$-CC;->item$default(Landroidx/glance/appwidget/lazy/LazyListKt$applyListScope$listScopeImpl$1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 45
    .line 46
    .line 47
    new-instance v5, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;

    .line 48
    .line 49
    const/4 v11, 0x1

    .line 50
    iget-object v10, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$5:Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct/range {v5 .. v11}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda13;-><init>(Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;JLjava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 56
    .line 57
    const v3, 0x4a96a5d

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v5, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->item$default(Landroidx/glance/appwidget/lazy/LazyListKt$applyListScope$listScopeImpl$1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    .line 68
    return-object v0

    .line 69
    :pswitch_0
    check-cast v4, Lorg/wikipedia/dataclient/WikiSite;

    .line 70
    .line 71
    iget-object v1, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$3:Ljava/lang/String;

    .line 72
    .line 73
    check-cast v3, Lorg/wikipedia/page/Namespace;

    .line 74
    .line 75
    iget-object v5, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$5:Ljava/lang/String;

    .line 76
    .line 77
    iget-wide v6, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;->f$6:J

    .line 78
    .line 79
    move-object/from16 v0, p1

    .line 80
    .line 81
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    const-string v8, "SELECT * FROM ReadingListPage WHERE wiki = ? AND lang = ? AND namespace = ? AND apiTitle = ? AND listId = ? AND status != ?"

    .line 87
    .line 88
    invoke-interface {v0, v8}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    :try_start_0
    invoke-static {v4}, Lorg/wikipedia/login/LoginClient;->wikiSiteToString(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 97
    .line 98
    invoke-interface {v8, v2}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    goto/16 :goto_9

    .line 104
    .line 105
    :cond_0
    invoke-interface {v8, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    const/4 v0, 0x2

    .line 109
    invoke-interface {v8, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v3}, Lokio/ByteString$Companion;->namespaceToInt(Lorg/wikipedia/page/Namespace;)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const/4 v1, 0x3

    .line 117
    if-nez v0, :cond_1

    .line 118
    .line 119
    invoke-interface {v8, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    int-to-long v3, v0

    .line 128
    invoke-interface {v8, v3, v4, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 129
    .line 130
    .line 131
    :goto_1
    const/4 v0, 0x4

    .line 132
    invoke-interface {v8, v0, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const/4 v0, 0x5

    .line 136
    invoke-interface {v8, v6, v7, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 137
    .line 138
    .line 139
    const/4 v0, 0x6

    .line 140
    const-wide/16 v3, 0x2

    .line 141
    .line 142
    invoke-interface {v8, v3, v4, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 143
    .line 144
    .line 145
    const-string/jumbo v0, "wiki"

    .line 146
    .line 147
    .line 148
    invoke-static {v8, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    const-string v1, "namespace"

    .line 153
    .line 154
    invoke-static {v8, v1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    const-string v3, "displayTitle"

    .line 159
    .line 160
    invoke-static {v8, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    const-string v4, "apiTitle"

    .line 165
    .line 166
    invoke-static {v8, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    const-string v5, "description"

    .line 171
    .line 172
    invoke-static {v8, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    const-string v6, "thumbUrl"

    .line 177
    .line 178
    invoke-static {v8, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    const-string v7, "listId"

    .line 183
    .line 184
    invoke-static {v8, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    const-string v9, "id"

    .line 189
    .line 190
    invoke-static {v8, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v9

    .line 194
    const-string v10, "mtime"

    .line 195
    .line 196
    invoke-static {v8, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    const-string v11, "atime"

    .line 201
    .line 202
    invoke-static {v8, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    const-string v12, "offline"

    .line 207
    .line 208
    invoke-static {v8, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    const-string v13, "status"

    .line 213
    .line 214
    invoke-static {v8, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v13

    .line 218
    const-string v14, "sizeBytes"

    .line 219
    .line 220
    invoke-static {v8, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v14

    .line 224
    const-string v15, "lang"

    .line 225
    .line 226
    invoke-static {v8, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v15

    .line 230
    const-string v2, "revId"

    .line 231
    .line 232
    invoke-static {v8, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    move/from16 p0, v2

    .line 237
    .line 238
    const-string v2, "remoteId"

    .line 239
    .line 240
    invoke-static {v8, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    invoke-interface {v8}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 245
    .line 246
    .line 247
    move-result v16

    .line 248
    const/16 v17, 0x0

    .line 249
    .line 250
    if-eqz v16, :cond_9

    .line 251
    .line 252
    invoke-interface {v8, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 253
    .line 254
    .line 255
    move-result v16

    .line 256
    if-eqz v16, :cond_2

    .line 257
    .line 258
    move-object/from16 v0, v17

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_2
    invoke-interface {v8, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    :goto_2
    invoke-static {v0}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 266
    .line 267
    .line 268
    move-result-object v19

    .line 269
    if-eqz v19, :cond_8

    .line 270
    .line 271
    invoke-interface {v8, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_3

    .line 276
    .line 277
    move-object/from16 v0, v17

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_3
    invoke-interface {v8, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 281
    .line 282
    .line 283
    move-result-wide v0

    .line 284
    long-to-int v0, v0

    .line 285
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    :goto_3
    invoke-static {v0}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 290
    .line 291
    .line 292
    move-result-object v20

    .line 293
    if-eqz v20, :cond_7

    .line 294
    .line 295
    invoke-interface {v8, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v21

    .line 299
    invoke-interface {v8, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v22

    .line 303
    invoke-interface {v8, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    if-eqz v0, :cond_4

    .line 308
    .line 309
    move-object/from16 v23, v17

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_4
    invoke-interface {v8, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    move-object/from16 v23, v0

    .line 317
    .line 318
    :goto_4
    invoke-interface {v8, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_5

    .line 323
    .line 324
    :goto_5
    move-object/from16 v24, v17

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_5
    invoke-interface {v8, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v17

    .line 331
    goto :goto_5

    .line 332
    :goto_6
    invoke-interface {v8, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 333
    .line 334
    .line 335
    move-result-wide v25

    .line 336
    invoke-interface {v8, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 337
    .line 338
    .line 339
    move-result-wide v27

    .line 340
    invoke-interface {v8, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 341
    .line 342
    .line 343
    move-result-wide v29

    .line 344
    invoke-interface {v8, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 345
    .line 346
    .line 347
    move-result-wide v31

    .line 348
    invoke-interface {v8, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 349
    .line 350
    .line 351
    move-result-wide v0

    .line 352
    long-to-int v0, v0

    .line 353
    if-eqz v0, :cond_6

    .line 354
    .line 355
    const/16 v33, 0x1

    .line 356
    .line 357
    goto :goto_7

    .line 358
    :cond_6
    const/4 v0, 0x0

    .line 359
    move/from16 v33, v0

    .line 360
    .line 361
    :goto_7
    invoke-interface {v8, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 362
    .line 363
    .line 364
    move-result-wide v34

    .line 365
    invoke-interface {v8, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 366
    .line 367
    .line 368
    move-result-wide v36

    .line 369
    invoke-interface {v8, v15}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v38

    .line 373
    move/from16 v0, p0

    .line 374
    .line 375
    invoke-interface {v8, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 376
    .line 377
    .line 378
    move-result-wide v39

    .line 379
    invoke-interface {v8, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 380
    .line 381
    .line 382
    move-result-wide v41

    .line 383
    new-instance v18, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 384
    .line 385
    invoke-direct/range {v18 .. v42}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZJJLjava/lang/String;JJ)V

    .line 386
    .line 387
    .line 388
    move-object/from16 v17, v18

    .line 389
    .line 390
    goto :goto_8

    .line 391
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 392
    .line 393
    const-string v1, "Expected NON-NULL \'org.wikipedia.page.Namespace\', but it was NULL."

    .line 394
    .line 395
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw v0

    .line 399
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 400
    .line 401
    const-string v1, "Expected NON-NULL \'org.wikipedia.dataclient.WikiSite\', but it was NULL."

    .line 402
    .line 403
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :cond_9
    :goto_8
    invoke-interface {v8}, Ljava/lang/AutoCloseable;->close()V

    .line 408
    .line 409
    .line 410
    return-object v17

    .line 411
    :goto_9
    invoke-interface {v8}, Ljava/lang/AutoCloseable;->close()V

    .line 412
    .line 413
    .line 414
    throw v0

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

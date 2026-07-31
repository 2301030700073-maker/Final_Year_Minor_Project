.class public final synthetic Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 9
    iput p3, p0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final invoke$org$wikipedia$offline$db$OfflineObjectDao_Impl$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object p0, p0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "SELECT * FROM OfflineObject WHERE url = ? LIMIT 1"

    .line 9
    .line 10
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x1

    .line 15
    :try_start_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p0, "id"

    .line 19
    .line 20
    invoke-static {p1, p0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const-string/jumbo v0, "url"

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const-string v1, "lang"

    .line 32
    .line 33
    invoke-static {p1, v1}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v2, "path"

    .line 38
    .line 39
    invoke-static {p1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const-string v3, "status"

    .line 44
    .line 45
    invoke-static {p1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const-string/jumbo v4, "usedByStr"

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_0

    .line 61
    .line 62
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 63
    .line 64
    .line 65
    move-result-wide v5

    .line 66
    long-to-int v8, v5

    .line 67
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    long-to-int v9, v0

    .line 84
    invoke-interface {p1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    new-instance v7, Lorg/wikipedia/offline/db/OfflineObject;

    .line 89
    .line 90
    invoke-direct/range {v7 .. v13}, Lorg/wikipedia/offline/db/OfflineObject;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    move-object p0, v0

    .line 96
    goto :goto_1

    .line 97
    :cond_0
    const/4 v7, 0x0

    .line 98
    :goto_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 99
    .line 100
    .line 101
    return-object v7

    .line 102
    :goto_1
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 103
    .line 104
    .line 105
    throw p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 74

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v3, 0x2

    .line 7
    const-string v4, "description"

    .line 8
    .line 9
    const-string v5, "namespace"

    .line 10
    .line 11
    const-string v6, "displayTitle"

    .line 12
    .line 13
    const-string v7, "apiTitle"

    .line 14
    .line 15
    const-string v8, "lang"

    .line 16
    .line 17
    const-string v9, "id"

    .line 18
    .line 19
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    const/4 v12, 0x0

    .line 22
    const/4 v13, 0x1

    .line 23
    iget-object v14, v0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 24
    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    move-object/from16 v0, p1

    .line 29
    .line 30
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v1, "SELECT * FROM OfflineObject WHERE url LIKE \'%/\' || ? || \'/%\' LIMIT 1"

    .line 36
    .line 37
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :try_start_0
    invoke-interface {v1, v13, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const-string/jumbo v2, "url"

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const-string v4, "path"

    .line 60
    .line 61
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const-string v5, "status"

    .line 66
    .line 67
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    const-string/jumbo v6, "usedByStr"

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_0

    .line 83
    .line 84
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    long-to-int v10, v7

    .line 89
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 102
    .line 103
    .line 104
    move-result-wide v2

    .line 105
    long-to-int v11, v2

    .line 106
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v15

    .line 110
    new-instance v9, Lorg/wikipedia/offline/db/OfflineObject;

    .line 111
    .line 112
    invoke-direct/range {v9 .. v15}, Lorg/wikipedia/offline/db/OfflineObject;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    move-object v10, v9

    .line 116
    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto :goto_1

    .line 119
    :cond_0
    const/4 v10, 0x0

    .line 120
    :goto_0
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 121
    .line 122
    .line 123
    return-object v10

    .line 124
    :goto_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;->invoke$org$wikipedia$offline$db$OfflineObjectDao_Impl$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    return-object v0

    .line 133
    :pswitch_1
    move-object/from16 v0, p1

    .line 134
    .line 135
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    const-string v1, "SELECT `authority`, `lang`, `apiTitle`, `displayTitle`, `id`, `namespace`, `timestamp`, `source`, `imageName`, `description`, `geoLat`, `geoLon`, `timeSpentSec` FROM (SELECT HistoryEntry.*, PageImage.imageName, PageImage.description, PageImage.geoLat, PageImage.geoLon, PageImage.timeSpentSec FROM HistoryEntry LEFT OUTER JOIN PageImage ON (HistoryEntry.namespace = PageImage.namespace AND HistoryEntry.apiTitle = PageImage.apiTitle AND HistoryEntry.lang = PageImage.lang) INNER JOIN (SELECT lang, apiTitle, MAX(timestamp) as max_timestamp FROM HistoryEntry GROUP BY lang, apiTitle) LatestEntries ON HistoryEntry.apiTitle = LatestEntries.apiTitle AND HistoryEntry.timestamp = LatestEntries.max_timestamp WHERE UPPER(HistoryEntry.displayTitle) LIKE UPPER(?) ESCAPE \'\\\' ORDER BY timestamp DESC)"

    .line 141
    .line 142
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :try_start_1
    invoke-interface {v1, v13, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v0, "authority"

    .line 150
    .line 151
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    const-string v8, "timestamp"

    .line 176
    .line 177
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    const-string v9, "source"

    .line 182
    .line 183
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    const-string v11, "imageName"

    .line 188
    .line 189
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    const-string v12, "geoLat"

    .line 198
    .line 199
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    const-string v13, "geoLon"

    .line 204
    .line 205
    invoke-static {v1, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    const-string v14, "timeSpentSec"

    .line 210
    .line 211
    invoke-static {v1, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v14

    .line 215
    new-instance v15, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .line 219
    .line 220
    :goto_2
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 221
    .line 222
    .line 223
    move-result v16

    .line 224
    if-eqz v16, :cond_7

    .line 225
    .line 226
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v18

    .line 230
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v19

    .line 234
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v20

    .line 238
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v21

    .line 242
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 243
    .line 244
    .line 245
    move-result-wide v30

    .line 246
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v22

    .line 250
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 251
    .line 252
    .line 253
    move-result v16

    .line 254
    if-eqz v16, :cond_1

    .line 255
    .line 256
    const/16 v16, 0x0

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_1
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 260
    .line 261
    .line 262
    move-result-wide v16

    .line 263
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 264
    .line 265
    .line 266
    move-result-object v16

    .line 267
    :goto_3
    invoke-static/range {v16 .. v16}, Lorg/wikipedia/login/LoginClient;->fromTimestamp(Ljava/lang/Long;)Ljava/util/Date;

    .line 268
    .line 269
    .line 270
    move-result-object v23

    .line 271
    if-eqz v23, :cond_6

    .line 272
    .line 273
    move/from16 p0, v11

    .line 274
    .line 275
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 276
    .line 277
    .line 278
    move-result-wide v10

    .line 279
    long-to-int v10, v10

    .line 280
    move/from16 v11, p0

    .line 281
    .line 282
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 283
    .line 284
    .line 285
    move-result v17

    .line 286
    if-eqz v17, :cond_2

    .line 287
    .line 288
    const/16 v26, 0x0

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_2
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v17

    .line 295
    move-object/from16 v26, v17

    .line 296
    .line 297
    :goto_4
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 298
    .line 299
    .line 300
    move-result v17

    .line 301
    if-eqz v17, :cond_3

    .line 302
    .line 303
    const/16 v27, 0x0

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_3
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v17

    .line 310
    move-object/from16 v27, v17

    .line 311
    .line 312
    :goto_5
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 313
    .line 314
    .line 315
    move-result v17

    .line 316
    if-eqz v17, :cond_4

    .line 317
    .line 318
    const/16 v28, 0x0

    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_4
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    .line 322
    .line 323
    .line 324
    move-result-wide v24

    .line 325
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 326
    .line 327
    .line 328
    move-result-object v17

    .line 329
    move-object/from16 v28, v17

    .line 330
    .line 331
    :goto_6
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 332
    .line 333
    .line 334
    move-result v17

    .line 335
    if-eqz v17, :cond_5

    .line 336
    .line 337
    const/16 v29, 0x0

    .line 338
    .line 339
    :goto_7
    move/from16 p0, v2

    .line 340
    .line 341
    move/from16 p1, v3

    .line 342
    .line 343
    goto :goto_8

    .line 344
    :cond_5
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    .line 345
    .line 346
    .line 347
    move-result-wide v24

    .line 348
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 349
    .line 350
    .line 351
    move-result-object v17

    .line 352
    move-object/from16 v29, v17

    .line 353
    .line 354
    goto :goto_7

    .line 355
    :goto_8
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 356
    .line 357
    .line 358
    move-result-wide v2

    .line 359
    long-to-int v2, v2

    .line 360
    new-instance v17, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 361
    .line 362
    move/from16 v25, v2

    .line 363
    .line 364
    move/from16 v24, v10

    .line 365
    .line 366
    invoke-direct/range {v17 .. v31}, Lorg/wikipedia/history/db/HistoryEntryWithImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;J)V

    .line 367
    .line 368
    .line 369
    move-object/from16 v2, v17

    .line 370
    .line 371
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move/from16 v2, p0

    .line 375
    .line 376
    move/from16 v3, p1

    .line 377
    .line 378
    goto/16 :goto_2

    .line 379
    .line 380
    :catchall_1
    move-exception v0

    .line 381
    goto :goto_9

    .line 382
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 383
    .line 384
    const-string v2, "Expected NON-NULL \'java.util.Date\', but it was NULL."

    .line 385
    .line 386
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 390
    :cond_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 391
    .line 392
    .line 393
    return-object v15

    .line 394
    :goto_9
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 395
    .line 396
    .line 397
    throw v0

    .line 398
    :pswitch_2
    move-object/from16 v0, p1

    .line 399
    .line 400
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    const-string v1, "SELECT * FROM InterestArticle WHERE lang = ? ORDER BY RANDOM()"

    .line 406
    .line 407
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    :try_start_2
    invoke-interface {v1, v13, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    move-result v4

    .line 434
    const-string v6, "thumbUrl"

    .line 435
    .line 436
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    move-result v6

    .line 440
    new-instance v7, Ljava/util/ArrayList;

    .line 441
    .line 442
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .line 444
    .line 445
    :goto_a
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 446
    .line 447
    .line 448
    move-result v8

    .line 449
    if-eqz v8, :cond_a

    .line 450
    .line 451
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v10

    .line 455
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v11

    .line 459
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 460
    .line 461
    .line 462
    move-result v8

    .line 463
    if-eqz v8, :cond_8

    .line 464
    .line 465
    const/4 v8, 0x0

    .line 466
    goto :goto_b

    .line 467
    :cond_8
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 468
    .line 469
    .line 470
    move-result-wide v8

    .line 471
    long-to-int v8, v8

    .line 472
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 473
    .line 474
    .line 475
    move-result-object v8

    .line 476
    :goto_b
    invoke-static {v8}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 477
    .line 478
    .line 479
    move-result-object v12

    .line 480
    if-eqz v12, :cond_9

    .line 481
    .line 482
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v13

    .line 486
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v14

    .line 490
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v15

    .line 494
    new-instance v9, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;

    .line 495
    .line 496
    invoke-direct/range {v9 .. v15}, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    goto :goto_a

    .line 503
    :catchall_2
    move-exception v0

    .line 504
    goto :goto_c

    .line 505
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 506
    .line 507
    const-string v2, "Expected NON-NULL \'org.wikipedia.page.Namespace\', but it was NULL."

    .line 508
    .line 509
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 513
    :cond_a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 514
    .line 515
    .line 516
    return-object v7

    .line 517
    :goto_c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 518
    .line 519
    .line 520
    throw v0

    .line 521
    :pswitch_3
    move-object/from16 v0, p1

    .line 522
    .line 523
    check-cast v0, Lkotlin/ranges/IntRange;

    .line 524
    .line 525
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    invoke-static {v14, v0}, Lkotlin/text/StringsKt;->substring(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    return-object v0

    .line 533
    :pswitch_4
    move-object/from16 v0, p1

    .line 534
    .line 535
    check-cast v0, Landroidx/work/impl/WorkDatabase;

    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    .line 539
    .line 540
    sget-object v1, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

    .line 541
    .line 542
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    iget-object v2, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 553
    .line 554
    new-instance v3, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 555
    .line 556
    invoke-direct {v3, v13, v14, v0}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    invoke-static {v2, v13, v13, v3}, Lkotlin/ExceptionsKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    check-cast v0, Ljava/util/List;

    .line 564
    .line 565
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    check-cast v0, Ljava/util/List;

    .line 569
    .line 570
    if-eqz v0, :cond_11

    .line 571
    .line 572
    new-instance v1, Ljava/util/ArrayList;

    .line 573
    .line 574
    const/16 v2, 0xa

    .line 575
    .line 576
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 577
    .line 578
    .line 579
    move-result v2

    .line 580
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 581
    .line 582
    .line 583
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    if-eqz v2, :cond_10

    .line 592
    .line 593
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    check-cast v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    .line 598
    .line 599
    iget-object v3, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    .line 600
    .line 601
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 602
    .line 603
    .line 604
    move-result v4

    .line 605
    if-nez v4, :cond_b

    .line 606
    .line 607
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v3

    .line 611
    check-cast v3, Landroidx/work/Data;

    .line 612
    .line 613
    :goto_e
    move-object/from16 v22, v3

    .line 614
    .line 615
    goto :goto_f

    .line 616
    :cond_b
    sget-object v3, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 617
    .line 618
    goto :goto_e

    .line 619
    :goto_f
    new-instance v17, Landroidx/work/WorkInfo;

    .line 620
    .line 621
    iget-object v3, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 622
    .line 623
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 624
    .line 625
    .line 626
    move-result-object v18

    .line 627
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 628
    .line 629
    .line 630
    iget-object v3, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    .line 631
    .line 632
    new-instance v4, Ljava/util/HashSet;

    .line 633
    .line 634
    iget-object v5, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 635
    .line 636
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 637
    .line 638
    .line 639
    iget-object v5, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    .line 640
    .line 641
    iget v6, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 642
    .line 643
    iget v7, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->generation:I

    .line 644
    .line 645
    iget-object v8, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->constraints:Landroidx/work/Constraints;

    .line 646
    .line 647
    iget-wide v9, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->initialDelay:J

    .line 648
    .line 649
    iget-wide v14, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->intervalDuration:J

    .line 650
    .line 651
    const-wide/16 v19, 0x0

    .line 652
    .line 653
    cmp-long v11, v14, v19

    .line 654
    .line 655
    if-eqz v11, :cond_c

    .line 656
    .line 657
    new-instance v12, Landroidx/work/WorkInfo$PeriodicityInfo;

    .line 658
    .line 659
    move-object/from16 v19, v3

    .line 660
    .line 661
    move-object/from16 v20, v4

    .line 662
    .line 663
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->flexDuration:J

    .line 664
    .line 665
    invoke-direct {v12, v14, v15, v3, v4}, Landroidx/work/WorkInfo$PeriodicityInfo;-><init>(JJ)V

    .line 666
    .line 667
    .line 668
    goto :goto_10

    .line 669
    :cond_c
    move-object/from16 v19, v3

    .line 670
    .line 671
    move-object/from16 v20, v4

    .line 672
    .line 673
    const/4 v12, 0x0

    .line 674
    :goto_10
    iget-object v3, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    .line 675
    .line 676
    sget-object v4, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 677
    .line 678
    if-ne v3, v4, :cond_f

    .line 679
    .line 680
    sget-object v21, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

    .line 681
    .line 682
    if-ne v3, v4, :cond_d

    .line 683
    .line 684
    if-lez v6, :cond_d

    .line 685
    .line 686
    move/from16 v23, v13

    .line 687
    .line 688
    goto :goto_11

    .line 689
    :cond_d
    const/16 v23, 0x0

    .line 690
    .line 691
    :goto_11
    iget-object v3, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 692
    .line 693
    move-wide/from16 v36, v14

    .line 694
    .line 695
    iget-wide v13, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->backoffDelayDuration:J

    .line 696
    .line 697
    move-object/from16 v21, v5

    .line 698
    .line 699
    iget-wide v4, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->lastEnqueueTime:J

    .line 700
    .line 701
    iget v15, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->periodCount:I

    .line 702
    .line 703
    if-eqz v11, :cond_e

    .line 704
    .line 705
    const/16 v31, 0x1

    .line 706
    .line 707
    :goto_12
    move-object/from16 v25, v3

    .line 708
    .line 709
    move-wide/from16 v28, v4

    .line 710
    .line 711
    goto :goto_13

    .line 712
    :cond_e
    const/16 v31, 0x0

    .line 713
    .line 714
    goto :goto_12

    .line 715
    :goto_13
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->flexDuration:J

    .line 716
    .line 717
    move-wide/from16 v34, v3

    .line 718
    .line 719
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->nextScheduleTimeOverride:J

    .line 720
    .line 721
    move-wide/from16 v38, v3

    .line 722
    .line 723
    move/from16 v24, v6

    .line 724
    .line 725
    move-wide/from16 v32, v9

    .line 726
    .line 727
    move-wide/from16 v26, v13

    .line 728
    .line 729
    move/from16 v30, v15

    .line 730
    .line 731
    invoke-static/range {v23 .. v39}, Lcoil3/util/ContextsKt;->calculateNextRunTime(ZILandroidx/work/BackoffPolicy;JJIZJJJJ)J

    .line 732
    .line 733
    .line 734
    move-result-wide v3

    .line 735
    move/from16 v23, v24

    .line 736
    .line 737
    :goto_14
    move-wide/from16 v29, v3

    .line 738
    .line 739
    goto :goto_15

    .line 740
    :cond_f
    move-object/from16 v21, v5

    .line 741
    .line 742
    move/from16 v23, v6

    .line 743
    .line 744
    move-wide/from16 v32, v9

    .line 745
    .line 746
    const-wide v3, 0x7fffffffffffffffL

    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    goto :goto_14

    .line 752
    :goto_15
    iget v2, v2, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->stopReason:I

    .line 753
    .line 754
    move/from16 v31, v2

    .line 755
    .line 756
    move/from16 v24, v7

    .line 757
    .line 758
    move-object/from16 v25, v8

    .line 759
    .line 760
    move-object/from16 v28, v12

    .line 761
    .line 762
    move-wide/from16 v26, v32

    .line 763
    .line 764
    invoke-direct/range {v17 .. v31}, Landroidx/work/WorkInfo;-><init>(Ljava/util/UUID;Landroidx/work/WorkInfo$State;Ljava/util/HashSet;Landroidx/work/Data;Landroidx/work/Data;IILandroidx/work/Constraints;JLandroidx/work/WorkInfo$PeriodicityInfo;JI)V

    .line 765
    .line 766
    .line 767
    move-object/from16 v2, v17

    .line 768
    .line 769
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    const/4 v12, 0x0

    .line 773
    const/4 v13, 0x1

    .line 774
    goto/16 :goto_d

    .line 775
    .line 776
    :cond_10
    move-object v10, v1

    .line 777
    goto :goto_16

    .line 778
    :cond_11
    const/4 v10, 0x0

    .line 779
    :goto_16
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 780
    .line 781
    .line 782
    check-cast v10, Ljava/util/List;

    .line 783
    .line 784
    return-object v10

    .line 785
    :pswitch_5
    move-object/from16 v0, p1

    .line 786
    .line 787
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 788
    .line 789
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 790
    .line 791
    .line 792
    const-string v1, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    .line 793
    .line 794
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 795
    .line 796
    .line 797
    move-result-object v1

    .line 798
    const/4 v4, 0x1

    .line 799
    :try_start_3
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 800
    .line 801
    .line 802
    new-instance v0, Ljava/util/ArrayList;

    .line 803
    .line 804
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 805
    .line 806
    .line 807
    :goto_17
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 808
    .line 809
    .line 810
    move-result v2

    .line 811
    if-eqz v2, :cond_12

    .line 812
    .line 813
    const/4 v2, 0x0

    .line 814
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v3

    .line 818
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 819
    .line 820
    .line 821
    goto :goto_17

    .line 822
    :catchall_3
    move-exception v0

    .line 823
    goto :goto_18

    .line 824
    :cond_12
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 825
    .line 826
    .line 827
    return-object v0

    .line 828
    :goto_18
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 829
    .line 830
    .line 831
    throw v0

    .line 832
    :pswitch_6
    move-object/from16 v0, p1

    .line 833
    .line 834
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 835
    .line 836
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 837
    .line 838
    .line 839
    const-string v1, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 840
    .line 841
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 842
    .line 843
    .line 844
    move-result-object v1

    .line 845
    const/4 v4, 0x1

    .line 846
    :try_start_4
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 847
    .line 848
    .line 849
    new-instance v0, Ljava/util/ArrayList;

    .line 850
    .line 851
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .line 853
    .line 854
    :goto_19
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 855
    .line 856
    .line 857
    move-result v2

    .line 858
    if-eqz v2, :cond_13

    .line 859
    .line 860
    const/4 v2, 0x0

    .line 861
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v3

    .line 865
    const/4 v4, 0x1

    .line 866
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 867
    .line 868
    .line 869
    move-result-wide v5

    .line 870
    long-to-int v2, v5

    .line 871
    invoke-static {v2}, Lkotlin/TuplesKt;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    new-instance v5, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 876
    .line 877
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 878
    .line 879
    .line 880
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 881
    .line 882
    .line 883
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 884
    .line 885
    .line 886
    iput-object v3, v5, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 887
    .line 888
    iput-object v2, v5, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    .line 889
    .line 890
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 891
    .line 892
    .line 893
    goto :goto_19

    .line 894
    :catchall_4
    move-exception v0

    .line 895
    goto :goto_1a

    .line 896
    :cond_13
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 897
    .line 898
    .line 899
    return-object v0

    .line 900
    :goto_1a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 901
    .line 902
    .line 903
    throw v0

    .line 904
    :pswitch_7
    move-object/from16 v0, p1

    .line 905
    .line 906
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 907
    .line 908
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 909
    .line 910
    .line 911
    const-string v1, "DELETE FROM workspec WHERE id=?"

    .line 912
    .line 913
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 914
    .line 915
    .line 916
    move-result-object v1

    .line 917
    const/4 v4, 0x1

    .line 918
    :try_start_5
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 919
    .line 920
    .line 921
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 922
    .line 923
    .line 924
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 925
    .line 926
    .line 927
    return-object v11

    .line 928
    :catchall_5
    move-exception v0

    .line 929
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 930
    .line 931
    .line 932
    throw v0

    .line 933
    :pswitch_8
    move-object/from16 v0, p1

    .line 934
    .line 935
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 936
    .line 937
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 938
    .line 939
    .line 940
    const-string v1, "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?"

    .line 941
    .line 942
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 943
    .line 944
    .line 945
    move-result-object v1

    .line 946
    const/4 v4, 0x1

    .line 947
    :try_start_6
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 948
    .line 949
    .line 950
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 951
    .line 952
    .line 953
    invoke-static {v0}, Lkotlin/TuplesKt;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 954
    .line 955
    .line 956
    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 957
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 958
    .line 959
    .line 960
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    return-object v0

    .line 965
    :catchall_6
    move-exception v0

    .line 966
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 967
    .line 968
    .line 969
    throw v0

    .line 970
    :pswitch_9
    move-object/from16 v0, p1

    .line 971
    .line 972
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 973
    .line 974
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 975
    .line 976
    .line 977
    const-string v1, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 978
    .line 979
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 980
    .line 981
    .line 982
    move-result-object v1

    .line 983
    const/4 v4, 0x1

    .line 984
    :try_start_7
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 985
    .line 986
    .line 987
    new-instance v0, Ljava/util/ArrayList;

    .line 988
    .line 989
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .line 991
    .line 992
    :goto_1b
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 993
    .line 994
    .line 995
    move-result v2

    .line 996
    if-eqz v2, :cond_14

    .line 997
    .line 998
    const/4 v2, 0x0

    .line 999
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1000
    .line 1001
    .line 1002
    move-result-object v3

    .line 1003
    sget-object v2, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 1004
    .line 1005
    invoke-static {v3}, Lkotlin/uuid/UuidKt;->fromByteArray([B)Landroidx/work/Data;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v2

    .line 1009
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 1010
    .line 1011
    .line 1012
    goto :goto_1b

    .line 1013
    :catchall_7
    move-exception v0

    .line 1014
    goto :goto_1c

    .line 1015
    :cond_14
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1016
    .line 1017
    .line 1018
    return-object v0

    .line 1019
    :goto_1c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1020
    .line 1021
    .line 1022
    throw v0

    .line 1023
    :pswitch_a
    move-object/from16 v0, p1

    .line 1024
    .line 1025
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1026
    .line 1027
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1028
    .line 1029
    .line 1030
    const-string v1, "UPDATE workspec SET period_count=period_count+1 WHERE id=?"

    .line 1031
    .line 1032
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v1

    .line 1036
    const/4 v4, 0x1

    .line 1037
    :try_start_8
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 1041
    .line 1042
    .line 1043
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1044
    .line 1045
    .line 1046
    return-object v11

    .line 1047
    :catchall_8
    move-exception v0

    .line 1048
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1049
    .line 1050
    .line 1051
    throw v0

    .line 1052
    :pswitch_b
    move-object/from16 v0, p1

    .line 1053
    .line 1054
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1055
    .line 1056
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1057
    .line 1058
    .line 1059
    const-string v1, "UPDATE workspec SET run_attempt_count=0 WHERE id=?"

    .line 1060
    .line 1061
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v1

    .line 1065
    const/4 v4, 0x1

    .line 1066
    :try_start_9
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1067
    .line 1068
    .line 1069
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1070
    .line 1071
    .line 1072
    invoke-static {v0}, Lkotlin/TuplesKt;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 1073
    .line 1074
    .line 1075
    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 1076
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1077
    .line 1078
    .line 1079
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v0

    .line 1083
    return-object v0

    .line 1084
    :catchall_9
    move-exception v0

    .line 1085
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1086
    .line 1087
    .line 1088
    throw v0

    .line 1089
    :pswitch_c
    move-object/from16 v0, p1

    .line 1090
    .line 1091
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1092
    .line 1093
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1094
    .line 1095
    .line 1096
    const-string v1, "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?"

    .line 1097
    .line 1098
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v1

    .line 1102
    const/4 v4, 0x1

    .line 1103
    :try_start_a
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1107
    .line 1108
    .line 1109
    invoke-static {v0}, Lkotlin/TuplesKt;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 1110
    .line 1111
    .line 1112
    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 1113
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1114
    .line 1115
    .line 1116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v0

    .line 1120
    return-object v0

    .line 1121
    :catchall_a
    move-exception v0

    .line 1122
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1123
    .line 1124
    .line 1125
    throw v0

    .line 1126
    :pswitch_d
    move-object/from16 v0, p1

    .line 1127
    .line 1128
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1129
    .line 1130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1131
    .line 1132
    .line 1133
    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 1134
    .line 1135
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v1

    .line 1139
    const/4 v4, 0x1

    .line 1140
    :try_start_b
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1141
    .line 1142
    .line 1143
    new-instance v0, Ljava/util/ArrayList;

    .line 1144
    .line 1145
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1146
    .line 1147
    .line 1148
    :goto_1d
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1149
    .line 1150
    .line 1151
    move-result v2

    .line 1152
    if-eqz v2, :cond_15

    .line 1153
    .line 1154
    const/4 v2, 0x0

    .line 1155
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v3

    .line 1159
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 1160
    .line 1161
    .line 1162
    goto :goto_1d

    .line 1163
    :catchall_b
    move-exception v0

    .line 1164
    goto :goto_1e

    .line 1165
    :cond_15
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1166
    .line 1167
    .line 1168
    return-object v0

    .line 1169
    :goto_1e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1170
    .line 1171
    .line 1172
    throw v0

    .line 1173
    :pswitch_e
    move-object/from16 v0, p1

    .line 1174
    .line 1175
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1176
    .line 1177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1178
    .line 1179
    .line 1180
    const-string v1, "SELECT state FROM workspec WHERE id=?"

    .line 1181
    .line 1182
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v1

    .line 1186
    const/4 v4, 0x1

    .line 1187
    :try_start_c
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1191
    .line 1192
    .line 1193
    move-result v0

    .line 1194
    if-eqz v0, :cond_17

    .line 1195
    .line 1196
    const/4 v2, 0x0

    .line 1197
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1198
    .line 1199
    .line 1200
    move-result v0

    .line 1201
    if-eqz v0, :cond_16

    .line 1202
    .line 1203
    const/4 v0, 0x0

    .line 1204
    goto :goto_1f

    .line 1205
    :cond_16
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1206
    .line 1207
    .line 1208
    move-result-wide v2

    .line 1209
    long-to-int v0, v2

    .line 1210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v0

    .line 1214
    :goto_1f
    if-nez v0, :cond_18

    .line 1215
    .line 1216
    :cond_17
    const/4 v10, 0x0

    .line 1217
    goto :goto_20

    .line 1218
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1219
    .line 1220
    .line 1221
    move-result v0

    .line 1222
    invoke-static {v0}, Lkotlin/TuplesKt;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 1226
    goto :goto_20

    .line 1227
    :catchall_c
    move-exception v0

    .line 1228
    goto :goto_21

    .line 1229
    :goto_20
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1230
    .line 1231
    .line 1232
    return-object v10

    .line 1233
    :goto_21
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1234
    .line 1235
    .line 1236
    throw v0

    .line 1237
    :pswitch_f
    move-object/from16 v0, p1

    .line 1238
    .line 1239
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1240
    .line 1241
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1242
    .line 1243
    .line 1244
    const-string v1, "SELECT * FROM workspec WHERE id=?"

    .line 1245
    .line 1246
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v1

    .line 1250
    const/4 v4, 0x1

    .line 1251
    :try_start_d
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1252
    .line 1253
    .line 1254
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1255
    .line 1256
    .line 1257
    move-result v0

    .line 1258
    const-string v2, "state"

    .line 1259
    .line 1260
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1261
    .line 1262
    .line 1263
    move-result v2

    .line 1264
    const-string/jumbo v3, "worker_class_name"

    .line 1265
    .line 1266
    .line 1267
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1268
    .line 1269
    .line 1270
    move-result v3

    .line 1271
    const-string v5, "input_merger_class_name"

    .line 1272
    .line 1273
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1274
    .line 1275
    .line 1276
    move-result v5

    .line 1277
    const-string v6, "input"

    .line 1278
    .line 1279
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1280
    .line 1281
    .line 1282
    move-result v6

    .line 1283
    const-string v7, "output"

    .line 1284
    .line 1285
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1286
    .line 1287
    .line 1288
    move-result v7

    .line 1289
    const-string v8, "initial_delay"

    .line 1290
    .line 1291
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1292
    .line 1293
    .line 1294
    move-result v8

    .line 1295
    const-string v9, "interval_duration"

    .line 1296
    .line 1297
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1298
    .line 1299
    .line 1300
    move-result v9

    .line 1301
    const-string v10, "flex_duration"

    .line 1302
    .line 1303
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1304
    .line 1305
    .line 1306
    move-result v10

    .line 1307
    const-string v11, "run_attempt_count"

    .line 1308
    .line 1309
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1310
    .line 1311
    .line 1312
    move-result v11

    .line 1313
    const-string v12, "backoff_policy"

    .line 1314
    .line 1315
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1316
    .line 1317
    .line 1318
    move-result v12

    .line 1319
    const-string v13, "backoff_delay_duration"

    .line 1320
    .line 1321
    invoke-static {v1, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1322
    .line 1323
    .line 1324
    move-result v13

    .line 1325
    const-string v14, "last_enqueue_time"

    .line 1326
    .line 1327
    invoke-static {v1, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1328
    .line 1329
    .line 1330
    move-result v14

    .line 1331
    const-string v15, "minimum_retention_duration"

    .line 1332
    .line 1333
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1334
    .line 1335
    .line 1336
    move-result v15

    .line 1337
    const-string v4, "schedule_requested_at"

    .line 1338
    .line 1339
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1340
    .line 1341
    .line 1342
    move-result v4

    .line 1343
    move/from16 p1, v4

    .line 1344
    .line 1345
    const-string v4, "run_in_foreground"

    .line 1346
    .line 1347
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1348
    .line 1349
    .line 1350
    move-result v4

    .line 1351
    move/from16 v17, v4

    .line 1352
    .line 1353
    const-string v4, "out_of_quota_policy"

    .line 1354
    .line 1355
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1356
    .line 1357
    .line 1358
    move-result v4

    .line 1359
    move/from16 v18, v4

    .line 1360
    .line 1361
    const-string v4, "period_count"

    .line 1362
    .line 1363
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1364
    .line 1365
    .line 1366
    move-result v4

    .line 1367
    move/from16 v19, v4

    .line 1368
    .line 1369
    const-string v4, "generation"

    .line 1370
    .line 1371
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1372
    .line 1373
    .line 1374
    move-result v4

    .line 1375
    move/from16 v20, v4

    .line 1376
    .line 1377
    const-string v4, "next_schedule_time_override"

    .line 1378
    .line 1379
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1380
    .line 1381
    .line 1382
    move-result v4

    .line 1383
    move/from16 v21, v4

    .line 1384
    .line 1385
    const-string v4, "next_schedule_time_override_generation"

    .line 1386
    .line 1387
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1388
    .line 1389
    .line 1390
    move-result v4

    .line 1391
    move/from16 v22, v4

    .line 1392
    .line 1393
    const-string v4, "stop_reason"

    .line 1394
    .line 1395
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1396
    .line 1397
    .line 1398
    move-result v4

    .line 1399
    move/from16 v23, v4

    .line 1400
    .line 1401
    const-string/jumbo v4, "trace_tag"

    .line 1402
    .line 1403
    .line 1404
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1405
    .line 1406
    .line 1407
    move-result v4

    .line 1408
    move/from16 v24, v4

    .line 1409
    .line 1410
    const-string v4, "backoff_on_system_interruptions"

    .line 1411
    .line 1412
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1413
    .line 1414
    .line 1415
    move-result v4

    .line 1416
    move/from16 v25, v4

    .line 1417
    .line 1418
    const-string v4, "required_network_type"

    .line 1419
    .line 1420
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1421
    .line 1422
    .line 1423
    move-result v4

    .line 1424
    move/from16 v26, v4

    .line 1425
    .line 1426
    const-string v4, "required_network_request"

    .line 1427
    .line 1428
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1429
    .line 1430
    .line 1431
    move-result v4

    .line 1432
    move/from16 v27, v4

    .line 1433
    .line 1434
    const-string v4, "requires_charging"

    .line 1435
    .line 1436
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1437
    .line 1438
    .line 1439
    move-result v4

    .line 1440
    move/from16 v28, v4

    .line 1441
    .line 1442
    const-string v4, "requires_device_idle"

    .line 1443
    .line 1444
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1445
    .line 1446
    .line 1447
    move-result v4

    .line 1448
    move/from16 v29, v4

    .line 1449
    .line 1450
    const-string v4, "requires_battery_not_low"

    .line 1451
    .line 1452
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1453
    .line 1454
    .line 1455
    move-result v4

    .line 1456
    move/from16 v30, v4

    .line 1457
    .line 1458
    const-string v4, "requires_storage_not_low"

    .line 1459
    .line 1460
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1461
    .line 1462
    .line 1463
    move-result v4

    .line 1464
    move/from16 v31, v4

    .line 1465
    .line 1466
    const-string/jumbo v4, "trigger_content_update_delay"

    .line 1467
    .line 1468
    .line 1469
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1470
    .line 1471
    .line 1472
    move-result v4

    .line 1473
    move/from16 v32, v4

    .line 1474
    .line 1475
    const-string/jumbo v4, "trigger_max_content_delay"

    .line 1476
    .line 1477
    .line 1478
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1479
    .line 1480
    .line 1481
    move-result v4

    .line 1482
    move/from16 v33, v4

    .line 1483
    .line 1484
    const-string v4, "content_uri_triggers"

    .line 1485
    .line 1486
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 1487
    .line 1488
    .line 1489
    move-result v4

    .line 1490
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1491
    .line 1492
    .line 1493
    move-result v34

    .line 1494
    if-eqz v34, :cond_22

    .line 1495
    .line 1496
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v41

    .line 1500
    move v0, v14

    .line 1501
    move/from16 v34, v15

    .line 1502
    .line 1503
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1504
    .line 1505
    .line 1506
    move-result-wide v14

    .line 1507
    long-to-int v2, v14

    .line 1508
    invoke-static {v2}, Lkotlin/TuplesKt;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v42

    .line 1512
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v43

    .line 1516
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v44

    .line 1520
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1521
    .line 1522
    .line 1523
    move-result-object v2

    .line 1524
    sget-object v3, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 1525
    .line 1526
    invoke-static {v2}, Lkotlin/uuid/UuidKt;->fromByteArray([B)Landroidx/work/Data;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v45

    .line 1530
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1531
    .line 1532
    .line 1533
    move-result-object v2

    .line 1534
    invoke-static {v2}, Lkotlin/uuid/UuidKt;->fromByteArray([B)Landroidx/work/Data;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v46

    .line 1538
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1539
    .line 1540
    .line 1541
    move-result-wide v47

    .line 1542
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1543
    .line 1544
    .line 1545
    move-result-wide v49

    .line 1546
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1547
    .line 1548
    .line 1549
    move-result-wide v51

    .line 1550
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1551
    .line 1552
    .line 1553
    move-result-wide v2

    .line 1554
    long-to-int v2, v2

    .line 1555
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1556
    .line 1557
    .line 1558
    move-result-wide v5

    .line 1559
    long-to-int v3, v5

    .line 1560
    invoke-static {v3}, Lkotlin/TuplesKt;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v55

    .line 1564
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1565
    .line 1566
    .line 1567
    move-result-wide v56

    .line 1568
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1569
    .line 1570
    .line 1571
    move-result-wide v58

    .line 1572
    move/from16 v0, v34

    .line 1573
    .line 1574
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1575
    .line 1576
    .line 1577
    move-result-wide v60

    .line 1578
    move/from16 v0, p1

    .line 1579
    .line 1580
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1581
    .line 1582
    .line 1583
    move-result-wide v62

    .line 1584
    move/from16 v0, v17

    .line 1585
    .line 1586
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1587
    .line 1588
    .line 1589
    move-result-wide v5

    .line 1590
    long-to-int v0, v5

    .line 1591
    if-eqz v0, :cond_19

    .line 1592
    .line 1593
    const/16 v64, 0x1

    .line 1594
    .line 1595
    :goto_22
    move/from16 v0, v18

    .line 1596
    .line 1597
    goto :goto_23

    .line 1598
    :cond_19
    const/16 v64, 0x0

    .line 1599
    .line 1600
    goto :goto_22

    .line 1601
    :goto_23
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1602
    .line 1603
    .line 1604
    move-result-wide v5

    .line 1605
    long-to-int v0, v5

    .line 1606
    invoke-static {v0}, Lkotlin/TuplesKt;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v65

    .line 1610
    move/from16 v0, v19

    .line 1611
    .line 1612
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1613
    .line 1614
    .line 1615
    move-result-wide v5

    .line 1616
    long-to-int v0, v5

    .line 1617
    move/from16 v3, v20

    .line 1618
    .line 1619
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1620
    .line 1621
    .line 1622
    move-result-wide v5

    .line 1623
    long-to-int v3, v5

    .line 1624
    move/from16 v5, v21

    .line 1625
    .line 1626
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1627
    .line 1628
    .line 1629
    move-result-wide v68

    .line 1630
    move/from16 v5, v22

    .line 1631
    .line 1632
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1633
    .line 1634
    .line 1635
    move-result-wide v5

    .line 1636
    long-to-int v5, v5

    .line 1637
    move/from16 v6, v23

    .line 1638
    .line 1639
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1640
    .line 1641
    .line 1642
    move-result-wide v6

    .line 1643
    long-to-int v6, v6

    .line 1644
    move/from16 v7, v24

    .line 1645
    .line 1646
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1647
    .line 1648
    .line 1649
    move-result v8

    .line 1650
    if-eqz v8, :cond_1a

    .line 1651
    .line 1652
    const/16 v72, 0x0

    .line 1653
    .line 1654
    :goto_24
    move/from16 v7, v25

    .line 1655
    .line 1656
    goto :goto_25

    .line 1657
    :cond_1a
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v7

    .line 1661
    move-object/from16 v72, v7

    .line 1662
    .line 1663
    goto :goto_24

    .line 1664
    :goto_25
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1665
    .line 1666
    .line 1667
    move-result v8

    .line 1668
    if-eqz v8, :cond_1b

    .line 1669
    .line 1670
    const/4 v7, 0x0

    .line 1671
    goto :goto_26

    .line 1672
    :cond_1b
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1673
    .line 1674
    .line 1675
    move-result-wide v7

    .line 1676
    long-to-int v7, v7

    .line 1677
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v7

    .line 1681
    :goto_26
    if-eqz v7, :cond_1d

    .line 1682
    .line 1683
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 1684
    .line 1685
    .line 1686
    move-result v7

    .line 1687
    if-eqz v7, :cond_1c

    .line 1688
    .line 1689
    const/4 v7, 0x1

    .line 1690
    goto :goto_27

    .line 1691
    :cond_1c
    const/4 v7, 0x0

    .line 1692
    :goto_27
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v10

    .line 1696
    move-object/from16 v73, v10

    .line 1697
    .line 1698
    :goto_28
    move/from16 v7, v26

    .line 1699
    .line 1700
    goto :goto_29

    .line 1701
    :catchall_d
    move-exception v0

    .line 1702
    goto/16 :goto_33

    .line 1703
    .line 1704
    :cond_1d
    const/16 v73, 0x0

    .line 1705
    .line 1706
    goto :goto_28

    .line 1707
    :goto_29
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1708
    .line 1709
    .line 1710
    move-result-wide v7

    .line 1711
    long-to-int v7, v7

    .line 1712
    invoke-static {v7}, Lkotlin/TuplesKt;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v10

    .line 1716
    move/from16 v7, v27

    .line 1717
    .line 1718
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1719
    .line 1720
    .line 1721
    move-result-object v7

    .line 1722
    invoke-static {v7}, Lkotlin/TuplesKt;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v9

    .line 1726
    move/from16 v7, v28

    .line 1727
    .line 1728
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1729
    .line 1730
    .line 1731
    move-result-wide v7

    .line 1732
    long-to-int v7, v7

    .line 1733
    if-eqz v7, :cond_1e

    .line 1734
    .line 1735
    const/4 v11, 0x1

    .line 1736
    :goto_2a
    move/from16 v7, v29

    .line 1737
    .line 1738
    goto :goto_2b

    .line 1739
    :cond_1e
    const/4 v11, 0x0

    .line 1740
    goto :goto_2a

    .line 1741
    :goto_2b
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1742
    .line 1743
    .line 1744
    move-result-wide v7

    .line 1745
    long-to-int v7, v7

    .line 1746
    if-eqz v7, :cond_1f

    .line 1747
    .line 1748
    const/4 v12, 0x1

    .line 1749
    :goto_2c
    move/from16 v7, v30

    .line 1750
    .line 1751
    goto :goto_2d

    .line 1752
    :cond_1f
    const/4 v12, 0x0

    .line 1753
    goto :goto_2c

    .line 1754
    :goto_2d
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1755
    .line 1756
    .line 1757
    move-result-wide v7

    .line 1758
    long-to-int v7, v7

    .line 1759
    if-eqz v7, :cond_20

    .line 1760
    .line 1761
    const/4 v13, 0x1

    .line 1762
    :goto_2e
    move/from16 v7, v31

    .line 1763
    .line 1764
    goto :goto_2f

    .line 1765
    :cond_20
    const/4 v13, 0x0

    .line 1766
    goto :goto_2e

    .line 1767
    :goto_2f
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1768
    .line 1769
    .line 1770
    move-result-wide v7

    .line 1771
    long-to-int v7, v7

    .line 1772
    if-eqz v7, :cond_21

    .line 1773
    .line 1774
    const/4 v14, 0x1

    .line 1775
    :goto_30
    move/from16 v7, v32

    .line 1776
    .line 1777
    goto :goto_31

    .line 1778
    :cond_21
    const/4 v14, 0x0

    .line 1779
    goto :goto_30

    .line 1780
    :goto_31
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1781
    .line 1782
    .line 1783
    move-result-wide v15

    .line 1784
    move/from16 v7, v33

    .line 1785
    .line 1786
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1787
    .line 1788
    .line 1789
    move-result-wide v17

    .line 1790
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1791
    .line 1792
    .line 1793
    move-result-object v4

    .line 1794
    invoke-static {v4}, Lkotlin/TuplesKt;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v19

    .line 1798
    new-instance v53, Landroidx/work/Constraints;

    .line 1799
    .line 1800
    move-object/from16 v8, v53

    .line 1801
    .line 1802
    invoke-direct/range {v8 .. v19}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 1803
    .line 1804
    .line 1805
    move-object/from16 v53, v8

    .line 1806
    .line 1807
    new-instance v40, Landroidx/work/impl/model/WorkSpec;

    .line 1808
    .line 1809
    move/from16 v66, v0

    .line 1810
    .line 1811
    move/from16 v54, v2

    .line 1812
    .line 1813
    move/from16 v67, v3

    .line 1814
    .line 1815
    move/from16 v70, v5

    .line 1816
    .line 1817
    move/from16 v71, v6

    .line 1818
    .line 1819
    invoke-direct/range {v40 .. v73}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 1820
    .line 1821
    .line 1822
    move-object/from16 v10, v40

    .line 1823
    .line 1824
    goto :goto_32

    .line 1825
    :cond_22
    const/4 v10, 0x0

    .line 1826
    :goto_32
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1827
    .line 1828
    .line 1829
    return-object v10

    .line 1830
    :goto_33
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1831
    .line 1832
    .line 1833
    throw v0

    .line 1834
    :pswitch_10
    move-object/from16 v0, p1

    .line 1835
    .line 1836
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1837
    .line 1838
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1839
    .line 1840
    .line 1841
    const-string v1, "DELETE from WorkProgress where work_spec_id=?"

    .line 1842
    .line 1843
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1844
    .line 1845
    .line 1846
    move-result-object v1

    .line 1847
    const/4 v4, 0x1

    .line 1848
    :try_start_e
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1849
    .line 1850
    .line 1851
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 1852
    .line 1853
    .line 1854
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1855
    .line 1856
    .line 1857
    return-object v11

    .line 1858
    :catchall_e
    move-exception v0

    .line 1859
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1860
    .line 1861
    .line 1862
    throw v0

    .line 1863
    :pswitch_11
    move-object/from16 v0, p1

    .line 1864
    .line 1865
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1866
    .line 1867
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1868
    .line 1869
    .line 1870
    const-string v1, "SELECT name FROM workname WHERE work_spec_id=?"

    .line 1871
    .line 1872
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v1

    .line 1876
    const/4 v4, 0x1

    .line 1877
    :try_start_f
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1878
    .line 1879
    .line 1880
    new-instance v0, Ljava/util/ArrayList;

    .line 1881
    .line 1882
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1883
    .line 1884
    .line 1885
    :goto_34
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1886
    .line 1887
    .line 1888
    move-result v2

    .line 1889
    if-eqz v2, :cond_23

    .line 1890
    .line 1891
    const/4 v2, 0x0

    .line 1892
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1893
    .line 1894
    .line 1895
    move-result-object v3

    .line 1896
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 1897
    .line 1898
    .line 1899
    goto :goto_34

    .line 1900
    :catchall_f
    move-exception v0

    .line 1901
    goto :goto_35

    .line 1902
    :cond_23
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1903
    .line 1904
    .line 1905
    return-object v0

    .line 1906
    :goto_35
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1907
    .line 1908
    .line 1909
    throw v0

    .line 1910
    :pswitch_12
    move-object/from16 v0, p1

    .line 1911
    .line 1912
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1913
    .line 1914
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1915
    .line 1916
    .line 1917
    const-string v1, "DELETE FROM SystemIdInfo where work_spec_id=?"

    .line 1918
    .line 1919
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v1

    .line 1923
    const/4 v4, 0x1

    .line 1924
    :try_start_10
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1925
    .line 1926
    .line 1927
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 1928
    .line 1929
    .line 1930
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1931
    .line 1932
    .line 1933
    return-object v11

    .line 1934
    :catchall_10
    move-exception v0

    .line 1935
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1936
    .line 1937
    .line 1938
    throw v0

    .line 1939
    :pswitch_13
    move-object/from16 v0, p1

    .line 1940
    .line 1941
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1942
    .line 1943
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1944
    .line 1945
    .line 1946
    const-string v1, "SELECT long_value FROM Preference where `key`=?"

    .line 1947
    .line 1948
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1949
    .line 1950
    .line 1951
    move-result-object v1

    .line 1952
    const/4 v4, 0x1

    .line 1953
    :try_start_11
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 1954
    .line 1955
    .line 1956
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1957
    .line 1958
    .line 1959
    move-result v0

    .line 1960
    if-eqz v0, :cond_24

    .line 1961
    .line 1962
    const/4 v2, 0x0

    .line 1963
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1964
    .line 1965
    .line 1966
    move-result v0

    .line 1967
    if-eqz v0, :cond_25

    .line 1968
    .line 1969
    :cond_24
    const/4 v10, 0x0

    .line 1970
    goto :goto_36

    .line 1971
    :cond_25
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1972
    .line 1973
    .line 1974
    move-result-wide v2

    .line 1975
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1976
    .line 1977
    .line 1978
    move-result-object v10
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 1979
    goto :goto_36

    .line 1980
    :catchall_11
    move-exception v0

    .line 1981
    goto :goto_37

    .line 1982
    :goto_36
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1983
    .line 1984
    .line 1985
    return-object v10

    .line 1986
    :goto_37
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1987
    .line 1988
    .line 1989
    throw v0

    .line 1990
    :pswitch_14
    move-object/from16 v0, p1

    .line 1991
    .line 1992
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 1993
    .line 1994
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1995
    .line 1996
    .line 1997
    const-string v1, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    .line 1998
    .line 1999
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v1

    .line 2003
    const/4 v4, 0x1

    .line 2004
    :try_start_12
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 2005
    .line 2006
    .line 2007
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 2008
    .line 2009
    .line 2010
    move-result v0

    .line 2011
    if-eqz v0, :cond_26

    .line 2012
    .line 2013
    const/4 v2, 0x0

    .line 2014
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2015
    .line 2016
    .line 2017
    move-result-wide v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 2018
    long-to-int v0, v5

    .line 2019
    if-eqz v0, :cond_26

    .line 2020
    .line 2021
    const/4 v12, 0x1

    .line 2022
    goto :goto_38

    .line 2023
    :catchall_12
    move-exception v0

    .line 2024
    goto :goto_39

    .line 2025
    :cond_26
    const/4 v12, 0x0

    .line 2026
    :goto_38
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2027
    .line 2028
    .line 2029
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v0

    .line 2033
    return-object v0

    .line 2034
    :goto_39
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2035
    .line 2036
    .line 2037
    throw v0

    .line 2038
    :pswitch_15
    move-object/from16 v0, p1

    .line 2039
    .line 2040
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 2041
    .line 2042
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2043
    .line 2044
    .line 2045
    const-string v1, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    .line 2046
    .line 2047
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 2048
    .line 2049
    .line 2050
    move-result-object v1

    .line 2051
    const/4 v4, 0x1

    .line 2052
    :try_start_13
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 2053
    .line 2054
    .line 2055
    new-instance v0, Ljava/util/ArrayList;

    .line 2056
    .line 2057
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2058
    .line 2059
    .line 2060
    :goto_3a
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 2061
    .line 2062
    .line 2063
    move-result v2

    .line 2064
    if-eqz v2, :cond_27

    .line 2065
    .line 2066
    const/4 v2, 0x0

    .line 2067
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 2068
    .line 2069
    .line 2070
    move-result-object v3

    .line 2071
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 2072
    .line 2073
    .line 2074
    goto :goto_3a

    .line 2075
    :catchall_13
    move-exception v0

    .line 2076
    goto :goto_3b

    .line 2077
    :cond_27
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2078
    .line 2079
    .line 2080
    return-object v0

    .line 2081
    :goto_3b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2082
    .line 2083
    .line 2084
    throw v0

    .line 2085
    :pswitch_16
    move-object/from16 v0, p1

    .line 2086
    .line 2087
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 2088
    .line 2089
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2090
    .line 2091
    .line 2092
    const-string v1, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    .line 2093
    .line 2094
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 2095
    .line 2096
    .line 2097
    move-result-object v1

    .line 2098
    const/4 v4, 0x1

    .line 2099
    :try_start_14
    invoke-interface {v1, v4, v14}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 2100
    .line 2101
    .line 2102
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 2103
    .line 2104
    .line 2105
    move-result v0

    .line 2106
    if-eqz v0, :cond_28

    .line 2107
    .line 2108
    const/4 v2, 0x0

    .line 2109
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 2110
    .line 2111
    .line 2112
    move-result-wide v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 2113
    long-to-int v0, v5

    .line 2114
    if-eqz v0, :cond_29

    .line 2115
    .line 2116
    const/4 v12, 0x1

    .line 2117
    goto :goto_3c

    .line 2118
    :catchall_14
    move-exception v0

    .line 2119
    goto :goto_3d

    .line 2120
    :cond_28
    const/4 v2, 0x0

    .line 2121
    :cond_29
    move v12, v2

    .line 2122
    :goto_3c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2123
    .line 2124
    .line 2125
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2126
    .line 2127
    .line 2128
    move-result-object v0

    .line 2129
    return-object v0

    .line 2130
    :goto_3d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2131
    .line 2132
    .line 2133
    throw v0

    .line 2134
    :pswitch_17
    move-object/from16 v0, p1

    .line 2135
    .line 2136
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 2137
    .line 2138
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 2139
    .line 2140
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->Error:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2141
    .line 2142
    invoke-interface {v0, v1, v14}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 2143
    .line 2144
    .line 2145
    return-object v11

    .line 2146
    :pswitch_18
    move-object/from16 v0, p1

    .line 2147
    .line 2148
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 2149
    .line 2150
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 2151
    .line 2152
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->LiveRegion:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2153
    .line 2154
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 2155
    .line 2156
    const/4 v5, 0x3

    .line 2157
    aget-object v5, v2, v5

    .line 2158
    .line 2159
    new-instance v5, Landroidx/compose/ui/semantics/LiveRegionMode;

    .line 2160
    .line 2161
    const/4 v4, 0x1

    .line 2162
    invoke-direct {v5, v4}, Landroidx/compose/ui/semantics/LiveRegionMode;-><init>(I)V

    .line 2163
    .line 2164
    .line 2165
    invoke-interface {v0, v1, v5}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 2166
    .line 2167
    .line 2168
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2169
    .line 2170
    aget-object v2, v2, v3

    .line 2171
    .line 2172
    invoke-interface {v0, v1, v14}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 2173
    .line 2174
    .line 2175
    return-object v11

    .line 2176
    :pswitch_19
    move-object/from16 v0, p1

    .line 2177
    .line 2178
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 2179
    .line 2180
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 2181
    .line 2182
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2183
    .line 2184
    invoke-static {v14}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 2185
    .line 2186
    .line 2187
    move-result-object v3

    .line 2188
    invoke-interface {v0, v1, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 2189
    .line 2190
    .line 2191
    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 2192
    .line 2193
    .line 2194
    return-object v11

    .line 2195
    :pswitch_1a
    move-object/from16 v0, p1

    .line 2196
    .line 2197
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 2198
    .line 2199
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 2200
    .line 2201
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2202
    .line 2203
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 2204
    .line 2205
    aget-object v2, v2, v3

    .line 2206
    .line 2207
    invoke-interface {v0, v1, v14}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 2208
    .line 2209
    .line 2210
    return-object v11

    .line 2211
    :pswitch_1b
    move-object/from16 v0, p1

    .line 2212
    .line 2213
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 2214
    .line 2215
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 2216
    .line 2217
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2218
    .line 2219
    invoke-static {v14}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 2220
    .line 2221
    .line 2222
    move-result-object v3

    .line 2223
    invoke-interface {v0, v1, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 2224
    .line 2225
    .line 2226
    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 2227
    .line 2228
    .line 2229
    return-object v11

    .line 2230
    :pswitch_1c
    move-object/from16 v0, p1

    .line 2231
    .line 2232
    check-cast v0, Ljava/lang/String;

    .line 2233
    .line 2234
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2235
    .line 2236
    .line 2237
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 2238
    .line 2239
    .line 2240
    move-result v1

    .line 2241
    if-eqz v1, :cond_2b

    .line 2242
    .line 2243
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 2244
    .line 2245
    .line 2246
    move-result v1

    .line 2247
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 2248
    .line 2249
    .line 2250
    move-result v2

    .line 2251
    if-ge v1, v2, :cond_2a

    .line 2252
    .line 2253
    goto :goto_3e

    .line 2254
    :cond_2a
    move-object v14, v0

    .line 2255
    goto :goto_3e

    .line 2256
    :cond_2b
    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2257
    .line 2258
    .line 2259
    move-result-object v14

    .line 2260
    :goto_3e
    return-object v14

    .line 2261
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

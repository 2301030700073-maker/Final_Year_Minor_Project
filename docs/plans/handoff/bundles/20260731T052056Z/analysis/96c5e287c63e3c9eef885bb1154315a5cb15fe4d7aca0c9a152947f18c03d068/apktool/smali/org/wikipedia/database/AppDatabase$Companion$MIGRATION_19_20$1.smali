.class public final Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;
.super Landroidx/room/migration/Migration;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final migrate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 9

    .line 1
    iget p0, p0, Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, "ALTER TABLE PageImage ADD COLUMN geoLon REAL NOT NULL DEFAULT 0.0"

    .line 4
    .line 5
    const-string v1, "ALTER TABLE PageImage ADD COLUMN geoLat REAL NOT NULL DEFAULT 0.0"

    .line 6
    .line 7
    const-string v2, "ALTER TABLE PageImage ADD COLUMN description TEXT DEFAULT \'\'"

    .line 8
    .line 9
    const-string v3, "ALTER TABLE PageImage ADD COLUMN timeSpentSec INTEGER NOT NULL DEFAULT 0"

    .line 10
    .line 11
    const-string v4, "INSERT INTO HistoryEntry (authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source) SELECT authority, lang, apiTitle, displayTitle, id, namespace, timestamp, source FROM HistoryEntry_old"

    .line 12
    .line 13
    const-string v5, "CREATE TABLE `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL DEFAULT -1)"

    .line 14
    .line 15
    const-string v6, "ALTER TABLE HistoryEntry RENAME TO HistoryEntry_old"

    .line 16
    .line 17
    const-string v7, "CREATE INDEX IF NOT EXISTS index_PageImage_lang_namespace_apiTitle ON PageImage (lang, namespace, apiTitle)"

    .line 18
    .line 19
    const-string v8, "CREATE INDEX IF NOT EXISTS index_HistoryEntry_lang_namespace_apiTitle ON HistoryEntry (lang, namespace, apiTitle)"

    .line 20
    .line 21
    packed-switch p0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const-string p0, "ALTER TABLE RecommendedPage ADD COLUMN extract TEXT"

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const-string p0, "CREATE TABLE IF NOT EXISTS InterestTopic (topicId TEXT NOT NULL,PRIMARY KEY (topicId))"

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p0, "CREATE TABLE IF NOT EXISTS InterestArticle (apiTitle TEXT NOT NULL,lang TEXT NOT NULL,namespace INTEGER NOT NULL,displayTitle TEXT NOT NULL,description TEXT NOT NULL,thumbUrl TEXT NOT NULL,PRIMARY KEY (apiTitle, lang, namespace))"

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const-string p0, "ALTER TABLE DailyGameHistory ADD COLUMN status INTEGER NOT NULL DEFAULT 1"

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p0, "ALTER TABLE DailyGameHistory ADD COLUMN currentQuestionIndex INTEGER NOT NULL DEFAULT 5"

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const-string p0, "CREATE TABLE Category_temp (    year INTEGER NOT NULL,    month INTEGER NOT NULL,    title TEXT NOT NULL,    lang TEXT NOT NULL,    count INTEGER NOT NULL,    PRIMARY KEY (year, month, title, lang))"

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lj$/time/LocalDate;->getMonthValue()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v2, "INSERT INTO Category_temp (year, month, title, lang, count)    SELECT        COALESCE(CAST(strftime(\'%Y\', timeStamp / 1000, \'unixepoch\') AS INTEGER), "

    .line 88
    .line 89
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p0, ") AS year,        COALESCE(CAST(strftime(\'%m\', timeStamp / 1000, \'unixepoch\') AS INTEGER), "

    .line 96
    .line 97
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p0, ") AS month,        title,        lang,        COUNT(*) AS count    FROM Category GROUP BY year, month, title, lang"

    .line 104
    .line 105
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string p0, "DROP TABLE Category"

    .line 116
    .line 117
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string p0, "ALTER TABLE Category_temp RENAME TO Category"

    .line 121
    .line 122
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    const-string p0, "CREATE TABLE IF NOT EXISTS RecommendedPage (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    wiki TEXT NOT NULL,    lang TEXT NOT NULL DEFAULT \'en\',    namespace INTEGER NOT NULL,    timestamp INTEGER NOT NULL,    apiTitle TEXT NOT NULL,    displayTitle TEXT NOT NULL,    description TEXT,    thumbUrl TEXT,    status INTEGER NOT NULL DEFAULT 0)"

    .line 130
    .line 131
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    const-string p0, "CREATE TABLE IF NOT EXISTS Category (title TEXT NOT NULL,lang TEXT NOT NULL,timeStamp INTEGER NOT NULL,PRIMARY KEY (title, lang, timeStamp))"

    .line 139
    .line 140
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string p0, "CREATE TABLE IF NOT EXISTS DailyGameHistory (    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,    gameName INTEGER NOT NULL,    language TEXT NOT NULL,    year INTEGER NOT NULL,    month INTEGER NOT NULL,    day INTEGER NOT NULL,    score INTEGER NOT NULL,    playType INTEGER NOT NULL,    gameData TEXT)"

    .line 144
    .line 145
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v8}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v7}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v6}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v5}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v8}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string p0, "CREATE INDEX IF NOT EXISTS index_HistoryEntry_old_lang_namespace_apiTitle ON HistoryEntry_old (lang, namespace, apiTitle)"

    .line 172
    .line 173
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v3}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v7}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const-string p0, "UPDATE PageImage SET description = (SELECT HistoryEntry_old.description     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), timeSpentSec = COALESCE((SELECT HistoryEntry_old.timeSpentSec     FROM HistoryEntry_old     WHERE PageImage.lang = HistoryEntry_old.lang     AND PageImage.namespace = HistoryEntry_old.namespace     AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)"

    .line 195
    .line 196
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const-string p0, "INSERT INTO PageImage (lang, namespace, apiTitle, description, timeSpentSec) SELECT lang, namespace, apiTitle, description, COALESCE(timeSpentSec, 0) as timeSpentSec FROM (SELECT lang, namespace, apiTitle, description, MAX(COALESCE(timeSpentSec, 0)) as timeSpentSec     FROM HistoryEntry_old GROUP BY lang, namespace, apiTitle) AS HistoryUnique WHERE NOT EXISTS (SELECT 1 FROM PageImage     WHERE PageImage.lang = HistoryUnique.lang AND         PageImage.namespace = HistoryUnique.namespace AND         PageImage.apiTitle = HistoryUnique.apiTitle)"

    .line 200
    .line 201
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :pswitch_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v6}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v5}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v3}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string p0, "UPDATE PageImage SET description = (SELECT description FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle)"

    .line 230
    .line 231
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const-string p0, "UPDATE PageImage SET timeSpentSec = COALESCE((SELECT timeSpentSec FROM HistoryEntry_old WHERE PageImage.lang = HistoryEntry_old.lang AND PageImage.namespace = HistoryEntry_old.namespace AND PageImage.apiTitle = HistoryEntry_old.apiTitle), 0)"

    .line 235
    .line 236
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :pswitch_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    const-string p0, "ALTER TABLE HistoryEntry ADD COLUMN description TEXT NOT NULL DEFAULT \'\'"

    .line 244
    .line 245
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :pswitch_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    const-string p0, "CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL, PRIMARY KEY(`id`))"

    .line 253
    .line 254
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :pswitch_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    const-string p0, "CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))"

    .line 262
    .line 263
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :pswitch_b
    const-string p0, "INSERT OR REPLACE INTO PageImage (lang, namespace, apiTitle, imageName) SELECT COALESCE(lang,\'"

    .line 268
    .line 269
    const-string v0, "INSERT INTO HistoryEntry (id, authority, lang, apiTitle, displayTitle, namespace, source, timestamp, timeSpentSec) SELECT _id, COALESCE(site,\'"

    .line 270
    .line 271
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 275
    .line 276
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-static {v1}, Lorg/wikipedia/staticdata/MainPageNameData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    const-string v4, "CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))"

    .line 301
    .line 302
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :try_start_0
    const-string v4, "INSERT OR REPLACE INTO RecentSearch (text, timestamp) SELECT text, timestamp FROM recentsearches"

    .line 306
    .line 307
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .line 309
    .line 310
    :catch_0
    const-string v4, "DROP TABLE IF EXISTS recentsearches"

    .line 311
    .line 312
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    const-string v4, "CREATE TABLE IF NOT EXISTS `TalkPageSeen_temp` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))"

    .line 316
    .line 317
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    :try_start_1
    const-string v4, "SELECT * FROM sqlite_master WHERE type=\'table\' AND name=\'talkpageseen\'"

    .line 321
    .line 322
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    .line 323
    .line 324
    .line 325
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 326
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    if-lez v5, :cond_0

    .line 331
    .line 332
    const-string v5, "INSERT OR REPLACE INTO TalkPageSeen_temp (sha) SELECT sha FROM talkpageseen"

    .line 333
    .line 334
    invoke-virtual {p1, v5}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string v5, "DROP TABLE talkpageseen"

    .line 338
    .line 339
    invoke-virtual {p1, v5}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    .line 341
    .line 342
    goto :goto_0

    .line 343
    :catchall_0
    move-exception v5

    .line 344
    goto :goto_1

    .line 345
    :cond_0
    :goto_0
    :try_start_3
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 346
    .line 347
    .line 348
    goto :goto_2

    .line 349
    :goto_1
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 350
    :catchall_1
    move-exception v6

    .line 351
    :try_start_5
    invoke-static {v4, v5}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 352
    .line 353
    .line 354
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 355
    :catch_1
    :goto_2
    const-string v4, "ALTER TABLE TalkPageSeen_temp RENAME TO TalkPageSeen"

    .line 356
    .line 357
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    const-string v4, "CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))"

    .line 361
    .line 362
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    :try_start_6
    const-string v4, "INSERT OR REPLACE INTO EditSummary (summary, lastUsed) SELECT summary, lastUsed FROM editsummaries"

    .line 366
    .line 367
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 368
    .line 369
    .line 370
    :catch_2
    const-string v4, "DROP TABLE IF EXISTS editsummaries"

    .line 371
    .line 372
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    const-string v4, "CREATE TABLE IF NOT EXISTS `OfflineObject_temp` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)"

    .line 376
    .line 377
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    :try_start_7
    const-string v4, "SELECT * FROM sqlite_master WHERE type=\'table\' AND name=\'offlineobject\'"

    .line 381
    .line 382
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    .line 383
    .line 384
    .line 385
    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 386
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    if-lez v5, :cond_1

    .line 391
    .line 392
    const-string v5, "INSERT INTO OfflineObject_temp (id, url, lang, path, status, usedByStr) SELECT _id, url, lang, path, status, usedby FROM offlineobject"

    .line 393
    .line 394
    invoke-virtual {p1, v5}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const-string v5, "DROP TABLE offlineobject"

    .line 398
    .line 399
    invoke-virtual {p1, v5}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 400
    .line 401
    .line 402
    goto :goto_3

    .line 403
    :catchall_2
    move-exception v5

    .line 404
    goto :goto_4

    .line 405
    :cond_1
    :goto_3
    :try_start_9
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 406
    .line 407
    .line 408
    goto :goto_5

    .line 409
    :goto_4
    :try_start_a
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 410
    :catchall_3
    move-exception v6

    .line 411
    :try_start_b
    invoke-static {v4, v5}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 412
    .line 413
    .line 414
    throw v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 415
    :catch_3
    :goto_5
    const-string v4, "ALTER TABLE OfflineObject_temp RENAME TO OfflineObject"

    .line 416
    .line 417
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    const-string v4, "DROP TABLE IF EXISTS readinglist"

    .line 421
    .line 422
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    const-string v4, "DROP TABLE IF EXISTS readinglistpage"

    .line 426
    .line 427
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    const-string v4, "CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)"

    .line 431
    .line 432
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    const-string v4, "CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)"

    .line 436
    .line 437
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    :try_start_c
    const-string v4, "INSERT INTO ReadingList (id, listTitle, description, mtime, atime, sizeBytes, dirty, remoteId) SELECT _id, COALESCE(readingListTitle,\'\'), readingListDescription, readingListMtime, readingListAtime, readingListSizeBytes, readingListDirty, readingListRemoteId FROM localreadinglist"

    .line 441
    .line 442
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    const-string v4, "INSERT INTO ReadingListPage (id, wiki, namespace, displayTitle, apiTitle, description, thumbUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId) SELECT _id, site, namespace, title, COALESCE(apiTitle,title), description, thumbnailUrl, listId, mtime, atime, offline, status, sizeBytes, lang, revId, remoteId FROM localreadinglistpage"

    .line 446
    .line 447
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 448
    .line 449
    .line 450
    :catch_4
    const-string v4, "DROP TABLE IF EXISTS localreadinglist"

    .line 451
    .line 452
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    const-string v4, "DROP TABLE IF EXISTS localreadinglistpage"

    .line 456
    .line 457
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    const-string v4, "CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `timeSpentSec` INTEGER NOT NULL)"

    .line 461
    .line 462
    invoke-virtual {p1, v4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    const-string v0, "\'), COALESCE(lang,\'"

    .line 474
    .line 475
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    const-string v0, "\'), COALESCE(title,\'"

    .line 482
    .line 483
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string v0, "\'), COALESCE(displayTitle,\'\'), COALESCE(namespace,\'\'), COALESCE(source,2), COALESCE(timestamp,0), COALESCE(timeSpent,0) FROM history"

    .line 490
    .line 491
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 499
    .line 500
    .line 501
    :catch_5
    const-string v0, "DROP TABLE IF EXISTS history"

    .line 502
    .line 503
    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    const-string v0, "CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))"

    .line 507
    .line 508
    invoke-virtual {p1, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    const-string p0, "\'), COALESCE(namespace,\'\'), COALESCE(title,\'"

    .line 520
    .line 521
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    const-string p0, "\'), imageName FROM pageimages"

    .line 528
    .line 529
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object p0

    .line 536
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 537
    .line 538
    .line 539
    :catch_6
    const-string p0, "DROP TABLE pageimages"

    .line 540
    .line 541
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    return-void

    .line 545
    :pswitch_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 546
    .line 547
    .line 548
    return-void

    .line 549
    :pswitch_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    return-void

    .line 553
    :pswitch_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    return-void

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
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

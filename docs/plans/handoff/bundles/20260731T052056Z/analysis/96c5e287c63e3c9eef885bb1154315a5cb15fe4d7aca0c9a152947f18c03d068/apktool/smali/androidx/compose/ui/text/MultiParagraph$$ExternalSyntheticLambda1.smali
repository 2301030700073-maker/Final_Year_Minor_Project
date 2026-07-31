.class public final synthetic Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IILorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$1:I

    .line 8
    .line 9
    iput p2, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$2:I

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/AndroidPath;II)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p2, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 46

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    iget v3, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$2:I

    .line 8
    .line 9
    iget v0, v0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$1:I

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v2, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 15
    .line 16
    move-object/from16 v1, p1

    .line 17
    .line 18
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v4, "SELECT * FROM ReadingListPage WHERE atime > 0 ORDER BY atime DESC LIMIT ? OFFSET ?"

    .line 24
    .line 25
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    int-to-long v4, v0

    .line 30
    const/4 v0, 0x1

    .line 31
    :try_start_0
    invoke-interface {v1, v4, v5, v0}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    int-to-long v5, v3

    .line 36
    invoke-interface {v1, v5, v6, v4}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v3, "wiki"

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const-string v4, "namespace"

    .line 47
    .line 48
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const-string v5, "displayTitle"

    .line 53
    .line 54
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    const-string v6, "apiTitle"

    .line 59
    .line 60
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const-string v7, "description"

    .line 65
    .line 66
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    const-string v8, "thumbUrl"

    .line 71
    .line 72
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    const-string v9, "listId"

    .line 77
    .line 78
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    const-string v10, "id"

    .line 83
    .line 84
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    const-string v11, "mtime"

    .line 89
    .line 90
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    const-string v12, "atime"

    .line 95
    .line 96
    invoke-static {v1, v12}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    const-string v13, "offline"

    .line 101
    .line 102
    invoke-static {v1, v13}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    const-string v14, "status"

    .line 107
    .line 108
    invoke-static {v1, v14}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v14

    .line 112
    const-string v15, "sizeBytes"

    .line 113
    .line 114
    invoke-static {v1, v15}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v15

    .line 118
    const-string v0, "lang"

    .line 119
    .line 120
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    move/from16 p1, v0

    .line 125
    .line 126
    const-string v0, "revId"

    .line 127
    .line 128
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    move/from16 v16, v0

    .line 133
    .line 134
    const-string v0, "remoteId"

    .line 135
    .line 136
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    move/from16 v17, v0

    .line 141
    .line 142
    new-instance v0, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 148
    .line 149
    .line 150
    move-result v18

    .line 151
    if-eqz v18, :cond_7

    .line 152
    .line 153
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 154
    .line 155
    .line 156
    move-result v18

    .line 157
    const/16 v19, 0x0

    .line 158
    .line 159
    if-eqz v18, :cond_0

    .line 160
    .line 161
    move-object/from16 v18, v19

    .line 162
    .line 163
    :goto_1
    move/from16 v20, v3

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_0
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v18

    .line 170
    goto :goto_1

    .line 171
    :goto_2
    iget-object v3, v2, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__wikiSiteTypeConverter:Lorg/wikipedia/login/LoginClient;

    .line 172
    .line 173
    invoke-static/range {v18 .. v18}, Lorg/wikipedia/login/LoginClient;->stringToWikiSite(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 174
    .line 175
    .line 176
    move-result-object v22

    .line 177
    if-eqz v22, :cond_6

    .line 178
    .line 179
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_1

    .line 184
    .line 185
    move-object/from16 v18, v2

    .line 186
    .line 187
    move-object/from16 v2, v19

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_1
    move-object/from16 v18, v2

    .line 191
    .line 192
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 193
    .line 194
    .line 195
    move-result-wide v2

    .line 196
    long-to-int v2, v2

    .line 197
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    :goto_3
    invoke-static {v2}, Lokio/ByteString$Companion;->intToNamespace(Ljava/lang/Integer;)Lorg/wikipedia/page/Namespace;

    .line 202
    .line 203
    .line 204
    move-result-object v23

    .line 205
    if-eqz v23, :cond_5

    .line 206
    .line 207
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v24

    .line 211
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v25

    .line 215
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_2

    .line 220
    .line 221
    move-object/from16 v26, v19

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_2
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    move-object/from16 v26, v2

    .line 229
    .line 230
    :goto_4
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-eqz v2, :cond_3

    .line 235
    .line 236
    :goto_5
    move-object/from16 v27, v19

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_3
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v19

    .line 243
    goto :goto_5

    .line 244
    :goto_6
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 245
    .line 246
    .line 247
    move-result-wide v28

    .line 248
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 249
    .line 250
    .line 251
    move-result-wide v30

    .line 252
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 253
    .line 254
    .line 255
    move-result-wide v32

    .line 256
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 257
    .line 258
    .line 259
    move-result-wide v34

    .line 260
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 261
    .line 262
    .line 263
    move-result-wide v2

    .line 264
    long-to-int v2, v2

    .line 265
    if-eqz v2, :cond_4

    .line 266
    .line 267
    const/16 v36, 0x1

    .line 268
    .line 269
    goto :goto_7

    .line 270
    :cond_4
    const/4 v2, 0x0

    .line 271
    move/from16 v36, v2

    .line 272
    .line 273
    :goto_7
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 274
    .line 275
    .line 276
    move-result-wide v37

    .line 277
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 278
    .line 279
    .line 280
    move-result-wide v39

    .line 281
    move/from16 v2, p1

    .line 282
    .line 283
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v41

    .line 287
    move/from16 v3, v16

    .line 288
    .line 289
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 290
    .line 291
    .line 292
    move-result-wide v42

    .line 293
    move/from16 p1, v2

    .line 294
    .line 295
    move/from16 v2, v17

    .line 296
    .line 297
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 298
    .line 299
    .line 300
    move-result-wide v44

    .line 301
    new-instance v21, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 302
    .line 303
    invoke-direct/range {v21 .. v45}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZJJLjava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 304
    .line 305
    .line 306
    move-object/from16 v16, v1

    .line 307
    .line 308
    move-object/from16 v1, v21

    .line 309
    .line 310
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move/from16 v17, v2

    .line 314
    .line 315
    move-object/from16 v1, v16

    .line 316
    .line 317
    move-object/from16 v2, v18

    .line 318
    .line 319
    move/from16 v16, v3

    .line 320
    .line 321
    move/from16 v3, v20

    .line 322
    .line 323
    goto/16 :goto_0

    .line 324
    .line 325
    :catchall_0
    move-exception v0

    .line 326
    goto :goto_8

    .line 327
    :catchall_1
    move-exception v0

    .line 328
    move-object/from16 v16, v1

    .line 329
    .line 330
    goto :goto_8

    .line 331
    :cond_5
    move-object/from16 v16, v1

    .line 332
    .line 333
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 334
    .line 335
    const-string v1, "Expected NON-NULL \'org.wikipedia.page.Namespace\', but it was NULL."

    .line 336
    .line 337
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    throw v0

    .line 341
    :cond_6
    move-object/from16 v16, v1

    .line 342
    .line 343
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 344
    .line 345
    const-string v1, "Expected NON-NULL \'org.wikipedia.dataclient.WikiSite\', but it was NULL."

    .line 346
    .line 347
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    :cond_7
    move-object/from16 v16, v1

    .line 352
    .line 353
    invoke-interface/range {v16 .. v16}, Ljava/lang/AutoCloseable;->close()V

    .line 354
    .line 355
    .line 356
    return-object v0

    .line 357
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/lang/AutoCloseable;->close()V

    .line 358
    .line 359
    .line 360
    throw v0

    .line 361
    :pswitch_0
    check-cast v2, Landroidx/compose/ui/graphics/AndroidPath;

    .line 362
    .line 363
    move-object/from16 v1, p1

    .line 364
    .line 365
    check-cast v1, Landroidx/compose/ui/text/ParagraphInfo;

    .line 366
    .line 367
    iget-object v4, v1, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    .line 368
    .line 369
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/ParagraphInfo;->toLocalIndex(I)I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/ParagraphInfo;->toLocalIndex(I)I

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    iget-object v5, v4, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    .line 378
    .line 379
    if-ltz v0, :cond_8

    .line 380
    .line 381
    if-gt v0, v3, :cond_8

    .line 382
    .line 383
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    if-gt v3, v6, :cond_8

    .line 388
    .line 389
    goto :goto_9

    .line 390
    :cond_8
    const-string v6, ") or end("

    .line 391
    .line 392
    const-string v7, ") is out of range [0.."

    .line 393
    .line 394
    const-string v8, "start("

    .line 395
    .line 396
    invoke-static {v0, v3, v8, v6, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string v5, "], or start > end!"

    .line 408
    .line 409
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    invoke-static {v5}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    :goto_9
    new-instance v5, Landroid/graphics/Path;

    .line 420
    .line 421
    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 422
    .line 423
    .line 424
    iget-object v4, v4, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 425
    .line 426
    iget-object v6, v4, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 427
    .line 428
    invoke-virtual {v6, v0, v3, v5}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 429
    .line 430
    .line 431
    iget v0, v4, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 432
    .line 433
    const/4 v3, 0x0

    .line 434
    if-eqz v0, :cond_9

    .line 435
    .line 436
    invoke-virtual {v5}, Landroid/graphics/Path;->isEmpty()Z

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    if-nez v4, :cond_9

    .line 441
    .line 442
    int-to-float v0, v0

    .line 443
    invoke-virtual {v5, v3, v0}, Landroid/graphics/Path;->offset(FF)V

    .line 444
    .line 445
    .line 446
    :cond_9
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPath;

    .line 447
    .line 448
    invoke-direct {v0, v5}, Landroidx/compose/ui/graphics/AndroidPath;-><init>(Landroid/graphics/Path;)V

    .line 449
    .line 450
    .line 451
    iget v1, v1, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    .line 452
    .line 453
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 454
    .line 455
    .line 456
    move-result v3

    .line 457
    int-to-long v3, v3

    .line 458
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    int-to-long v5, v1

    .line 463
    const/16 v1, 0x20

    .line 464
    .line 465
    shl-long/2addr v3, v1

    .line 466
    const-wide v7, 0xffffffffL

    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    and-long/2addr v5, v7

    .line 472
    or-long/2addr v3, v5

    .line 473
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/AndroidPath;->translate-k-4lQ0M(J)V

    .line 474
    .line 475
    .line 476
    invoke-static {v2, v0}, Landroidx/compose/ui/Modifier$-CC;->addPath-Uv8p0NA$default(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPath;)V

    .line 477
    .line 478
    .line 479
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 480
    .line 481
    return-object v0

    .line 482
    nop

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

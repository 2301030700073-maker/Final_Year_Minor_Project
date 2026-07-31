.class public final synthetic Lcom/fsck/k9/storage/messages/DeleteMessageOperations$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# instance fields
.field public final synthetic f$0:Lcom/fsck/k9/storage/messages/DeleteFolderOperations;

.field public final synthetic f$1:J

.field public final synthetic f$2:Z

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/storage/messages/DeleteFolderOperations;JZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/DeleteMessageOperations$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/storage/messages/DeleteFolderOperations;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/fsck/k9/storage/messages/DeleteMessageOperations$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/fsck/k9/storage/messages/DeleteMessageOperations$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/fsck/k9/storage/messages/DeleteMessageOperations$$ExternalSyntheticLambda0;->f$3:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/storage/messages/DeleteMessageOperations$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/storage/messages/DeleteFolderOperations;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string v1, "id"

    .line 10
    .line 11
    filled-new-array {v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    iget-wide v10, p0, Lcom/fsck/k9/storage/messages/DeleteMessageOperations$$ExternalSyntheticLambda0;->f$1:J

    .line 16
    .line 17
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    filled-new-array {v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    const-string v3, "message_parts"

    .line 28
    .line 29
    const-string v5, "root = ? AND data_location = 2"

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    move-object v2, p1

    .line 33
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    iget-object v1, v0, Lcom/fsck/k9/storage/messages/DeleteFolderOperations;->attachmentFileManager:Lcom/google/zxing/BinaryBitmap;

    .line 49
    .line 50
    invoke-virtual {v1, v3, v4}, Lcom/google/zxing/BinaryBitmap;->deleteFile(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    move-object p0, v0

    .line 56
    goto/16 :goto_7

    .line 57
    .line 58
    :cond_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 59
    .line 60
    .line 61
    iget-boolean p1, p0, Lcom/fsck/k9/storage/messages/DeleteMessageOperations$$ExternalSyntheticLambda0;->f$2:Z

    .line 62
    .line 63
    iget-wide v0, p0, Lcom/fsck/k9/storage/messages/DeleteMessageOperations$$ExternalSyntheticLambda0;->f$3:J

    .line 64
    .line 65
    const-string p0, "id = ?"

    .line 66
    .line 67
    const-string v4, "messages"

    .line 68
    .line 69
    const/4 v5, 0x1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    filled-new-array {p1}, [Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v6, "message_parts"

    .line 81
    .line 82
    const-string v7, "root = ?"

    .line 83
    .line 84
    invoke-virtual {v2, v6, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    filled-new-array {p1}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v6, "messages_fulltext"

    .line 96
    .line 97
    const-string v7, "docid = ?"

    .line 98
    .line 99
    invoke-virtual {v2, v6, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    new-instance p1, Landroid/content/ContentValues;

    .line 103
    .line 104
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v6, "deleted"

    .line 108
    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {p1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    .line 115
    .line 116
    const-string v3, "empty"

    .line 117
    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {p1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    .line 124
    .line 125
    const-string v3, "subject"

    .line 126
    .line 127
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v3, "date"

    .line 131
    .line 132
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string v3, "flags"

    .line 136
    .line 137
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v3, "sender_list"

    .line 141
    .line 142
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v3, "to_list"

    .line 146
    .line 147
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v3, "cc_list"

    .line 151
    .line 152
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v3, "bcc_list"

    .line 156
    .line 157
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v3, "reply_to_list"

    .line 161
    .line 162
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string v3, "attachment_count"

    .line 166
    .line 167
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-string v3, "internal_date"

    .line 171
    .line 172
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v3, "preview_type"

    .line 176
    .line 177
    const-string v5, "none"

    .line 178
    .line 179
    invoke-virtual {p1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string v3, "preview"

    .line 183
    .line 184
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v3, "mime_type"

    .line 188
    .line 189
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string v3, "normalized_subject_hash"

    .line 193
    .line 194
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const-string v3, "message_part_id"

    .line 198
    .line 199
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    const-string v3, "encryption_type"

    .line 203
    .line 204
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    filled-new-array {v0}, [Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v2, v4, p1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    goto/16 :goto_5

    .line 219
    .line 220
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 225
    .line 226
    .line 227
    move-result-wide v0

    .line 228
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    filled-new-array {v0}, [Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const-string v1, "\nSELECT messages.id \nFROM threads threads1 \nJOIN threads threads2 ON (threads1.parent = threads2.id) \nJOIN messages ON (threads2.message_id = messages.id AND messages.empty = 1) \nWHERE threads1.message_id = ?\n            "

    .line 237
    .line 238
    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_2

    .line 247
    .line 248
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-nez v0, :cond_2

    .line 253
    .line 254
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 255
    .line 256
    .line 257
    move-result-wide v6

    .line 258
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 259
    .line 260
    .line 261
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 262
    goto :goto_2

    .line 263
    :catchall_1
    move-exception v0

    .line 264
    move-object p0, v0

    .line 265
    goto :goto_6

    .line 266
    :cond_2
    const/4 v0, 0x0

    .line 267
    :goto_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 271
    .line 272
    .line 273
    move-result-wide v6

    .line 274
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    filled-new-array {p1}, [Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {v2, v4, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    if-eqz v0, :cond_5

    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 288
    .line 289
    .line 290
    move-result-wide v6

    .line 291
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    filled-new-array {p1}, [Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    const-string v1, "\nSELECT COUNT(threads2.id) \nFROM threads threads1 \nJOIN threads threads2 ON (threads2.parent = threads1.id) \nWHERE threads1.message_id = ?\n            "

    .line 300
    .line 301
    invoke-virtual {v2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_3

    .line 310
    .line 311
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-nez v1, :cond_3

    .line 316
    .line 317
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 318
    .line 319
    .line 320
    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 321
    const-wide/16 v8, 0x0

    .line 322
    .line 323
    cmp-long v1, v6, v8

    .line 324
    .line 325
    if-lez v1, :cond_3

    .line 326
    .line 327
    move v1, v5

    .line 328
    goto :goto_3

    .line 329
    :catchall_2
    move-exception v0

    .line 330
    move-object p0, v0

    .line 331
    goto :goto_4

    .line 332
    :cond_3
    move v1, v3

    .line 333
    :goto_3
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 334
    .line 335
    .line 336
    if-eqz v1, :cond_4

    .line 337
    .line 338
    goto :goto_5

    .line 339
    :cond_4
    move-object p1, v0

    .line 340
    goto :goto_1

    .line 341
    :goto_4
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 342
    :catchall_3
    move-exception v0

    .line 343
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 344
    .line 345
    .line 346
    throw v0

    .line 347
    :cond_5
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 348
    .line 349
    return-object p0

    .line 350
    :goto_6
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 351
    :catchall_4
    move-exception v0

    .line 352
    move-object p1, v0

    .line 353
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 354
    .line 355
    .line 356
    throw p1

    .line 357
    :goto_7
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 358
    :catchall_5
    move-exception v0

    .line 359
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 360
    .line 361
    .line 362
    throw v0
.end method

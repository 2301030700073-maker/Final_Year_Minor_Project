.class public final Lcom/fsck/k9/mailstore/LocalStore;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final GET_ATTACHMENT_COLS:[Ljava/lang/String;

.field public static final UID_CHECK_PROJECTION:[Ljava/lang/String;


# instance fields
.field public final account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final attachmentInfoExtractor:Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

.field public final database:Lcom/fsck/k9/mailstore/LockableDatabase;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final localMessageUidPrefixProvider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

.field public final outboxStateRepository:Lcom/fsck/k9/mailstore/LocalStore$1;

.field public final pendingCommandSerializer:Lcom/fsck/k9/controller/PendingCommandSerializer;

.field public final storageFilesProvider:Lcom/fsck/k9/mailstore/LocalStore$1;


# direct methods
.method public static -$$Nest$mwriteCursorPartsToOutputStream(Lcom/fsck/k9/mailstore/LocalStore;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/io/OutputStream;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_11

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x2

    .line 19
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    const/4 v7, 0x3

    .line 24
    const/4 v8, 0x1

    .line 25
    if-eq v6, v8, :cond_c

    .line 26
    .line 27
    if-ne v6, v5, :cond_1

    .line 28
    .line 29
    goto/16 :goto_7

    .line 30
    .line 31
    :cond_1
    if-ne v6, v7, :cond_0

    .line 32
    .line 33
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const-string v7, "id"

    .line 42
    .line 43
    filled-new-array {v7}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    filled-new-array {v6}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    const/4 v14, 0x0

    .line 52
    const/4 v15, 0x0

    .line 53
    const-string v9, "messages"

    .line 54
    .line 55
    const-string v11, "message_part_id = ?"

    .line 56
    .line 57
    const/4 v13, 0x0

    .line 58
    move-object/from16 v8, p1

    .line 59
    .line 60
    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 65
    .line 66
    .line 67
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    const/4 v8, 0x0

    .line 69
    if-nez v7, :cond_2

    .line 70
    .line 71
    sget-object v3, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 72
    .line 73
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 74
    .line 75
    .line 76
    :goto_1
    move-object v3, v8

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    :try_start_1
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 79
    .line 80
    .line 81
    move-result-wide v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    sget-object v7, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 83
    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 85
    .line 86
    .line 87
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    new-instance v7, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v9, Landroidx/compose/runtime/Latch;

    .line 101
    .line 102
    invoke-direct {v9, v0, v6, v3, v7}, Landroidx/compose/runtime/Latch;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/util/List;ZLjava/util/HashMap;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v9}, Lcom/fsck/k9/mailstore/LocalStore;->doBatchSetSelection(Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_3

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    check-cast v6, Ljava/util/Map$Entry;

    .line 128
    .line 129
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    check-cast v7, Ljava/lang/Long;

    .line 134
    .line 135
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 136
    .line 137
    .line 138
    move-result-wide v9

    .line 139
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    check-cast v6, Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Ljava/lang/String;

    .line 150
    .line 151
    new-instance v6, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 152
    .line 153
    invoke-direct {v6, v0, v9, v10}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v3}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    new-instance v7, Lcom/fsck/k9/mail/FetchProfile;

    .line 161
    .line 162
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    sget-object v9, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 166
    .line 167
    invoke-virtual {v7, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    invoke-virtual {v6, v9, v7}, Lcom/fsck/k9/mailstore/LocalFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;)V

    .line 175
    .line 176
    .line 177
    :goto_2
    if-eqz v3, :cond_b

    .line 178
    .line 179
    iget-wide v6, v3, Lcom/fsck/k9/mailstore/LocalMessage;->messagePartId:J

    .line 180
    .line 181
    cmp-long v6, v6, v4

    .line 182
    .line 183
    if-nez v6, :cond_4

    .line 184
    .line 185
    :goto_3
    move-object v8, v3

    .line 186
    goto :goto_6

    .line 187
    :cond_4
    new-instance v6, Ljava/util/Stack;

    .line 188
    .line 189
    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    :cond_5
    :goto_4
    invoke-virtual {v6}, Ljava/util/Stack;->empty()Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-nez v3, :cond_8

    .line 200
    .line 201
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    check-cast v3, Lcom/fsck/k9/mail/Part;

    .line 206
    .line 207
    instance-of v7, v3, Lcom/fsck/k9/mailstore/LocalPart;

    .line 208
    .line 209
    if-eqz v7, :cond_6

    .line 210
    .line 211
    move-object v7, v3

    .line 212
    check-cast v7, Lcom/fsck/k9/mailstore/LocalPart;

    .line 213
    .line 214
    invoke-interface {v7}, Lcom/fsck/k9/mailstore/LocalPart;->getPartId()J

    .line 215
    .line 216
    .line 217
    move-result-wide v9

    .line 218
    cmp-long v7, v9, v4

    .line 219
    .line 220
    if-nez v7, :cond_6

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_6
    invoke-interface {v3}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    instance-of v7, v3, Lcom/fsck/k9/mail/Multipart;

    .line 228
    .line 229
    if-eqz v7, :cond_7

    .line 230
    .line 231
    move-object v7, v3

    .line 232
    check-cast v7, Lcom/fsck/k9/mail/Multipart;

    .line 233
    .line 234
    iget-object v7, v7, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-static {v7}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    if-eqz v9, :cond_7

    .line 249
    .line 250
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    check-cast v9, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 255
    .line 256
    invoke-virtual {v6, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_7
    instance-of v7, v3, Lcom/fsck/k9/mail/Part;

    .line 261
    .line 262
    if-eqz v7, :cond_5

    .line 263
    .line 264
    check-cast v3, Lcom/fsck/k9/mail/Part;

    .line 265
    .line 266
    invoke-virtual {v6, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_8
    :goto_6
    if-eqz v8, :cond_a

    .line 271
    .line 272
    invoke-interface {v8}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    if-eqz v3, :cond_9

    .line 277
    .line 278
    invoke-interface {v3, v2}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_9
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 284
    .line 285
    const-string v1, "Attachment part isn\'t available!"

    .line 286
    .line 287
    invoke-direct {v0, v1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw v0

    .line 291
    :cond_a
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 292
    .line 293
    const-string v1, "Unable to find attachment part in associated message (db integrity error?)"

    .line 294
    .line 295
    invoke-direct {v0, v1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw v0

    .line 299
    :cond_b
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 300
    .line 301
    const-string v1, "Unable to find message for attachment!"

    .line 302
    .line 303
    invoke-direct {v0, v1}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v0

    .line 307
    :catchall_0
    move-exception v0

    .line 308
    invoke-static {v6}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 309
    .line 310
    .line 311
    throw v0

    .line 312
    :cond_c
    :goto_7
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    if-eq v6, v8, :cond_e

    .line 317
    .line 318
    if-ne v6, v5, :cond_d

    .line 319
    .line 320
    iget-object v5, v0, Lcom/fsck/k9/mailstore/LocalStore;->storageFilesProvider:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 321
    .line 322
    invoke-virtual {v5}, Lcom/fsck/k9/mailstore/LocalStore$1;->getAttachmentDirectory()Ljava/io/File;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    new-instance v6, Ljava/io/File;

    .line 327
    .line 328
    invoke-direct {v6, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    new-instance v4, Ljava/io/FileInputStream;

    .line 332
    .line 333
    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 334
    .line 335
    .line 336
    goto :goto_8

    .line 337
    :cond_d
    const-string v0, "unhandled case"

    .line 338
    .line 339
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :cond_e
    const/4 v4, 0x4

    .line 344
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 349
    .line 350
    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 351
    .line 352
    .line 353
    move-object v4, v5

    .line 354
    :goto_8
    :try_start_2
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    const-string v6, "base64"

    .line 359
    .line 360
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    if-eqz v6, :cond_f

    .line 365
    .line 366
    new-instance v5, Lcom/fsck/k9/mailstore/LocalStore$11;

    .line 367
    .line 368
    invoke-direct {v5, v4, v4, v3}, Lcom/fsck/k9/mailstore/LocalStore$11;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;I)V

    .line 369
    .line 370
    .line 371
    :goto_9
    move-object v4, v5

    .line 372
    goto :goto_a

    .line 373
    :cond_f
    const-string v6, "quoted-printable"

    .line 374
    .line 375
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    if-eqz v5, :cond_10

    .line 380
    .line 381
    new-instance v5, Lcom/fsck/k9/mailstore/LocalStore$12;

    .line 382
    .line 383
    invoke-direct {v5, v4, v4, v3}, Lcom/fsck/k9/mailstore/LocalStore$12;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;I)V

    .line 384
    .line 385
    .line 386
    goto :goto_9

    .line 387
    :cond_10
    :goto_a
    invoke-static {v4, v2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 388
    .line 389
    .line 390
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_0

    .line 394
    .line 395
    :catchall_1
    move-exception v0

    .line 396
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V

    .line 397
    .line 398
    .line 399
    throw v0

    .line 400
    :cond_11
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    sput-object v1, Lcom/fsck/k9/mailstore/LocalStore;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    sput-object v0, Lcom/fsck/k9/mailstore/LocalStore;->EMPTY_BYTE_ARRAY:[B

    .line 9
    .line 10
    const-string v0, "uid"

    .line 11
    .line 12
    filled-new-array {v0}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/fsck/k9/mailstore/LocalStore;->UID_CHECK_PROJECTION:[Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "encoding"

    .line 19
    .line 20
    const-string v1, "data"

    .line 21
    .line 22
    const-string v2, "id"

    .line 23
    .line 24
    const-string v3, "root"

    .line 25
    .line 26
    const-string v4, "data_location"

    .line 27
    .line 28
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/fsck/k9/mailstore/LocalStore;->GET_ATTACHMENT_COLS:[Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;Landroid/content/Context;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/fsck/k9/controller/PendingCommandSerializer;->INSTANCE:Lcom/fsck/k9/controller/PendingCommandSerializer;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->pendingCommandSerializer:Lcom/fsck/k9/controller/PendingCommandSerializer;

    .line 7
    .line 8
    const-class v0, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore;->attachmentInfoExtractor:Lcom/fsck/k9/message/extractors/AttachmentInfoExtractor;

    .line 17
    .line 18
    const-class v0, Lcom/fsck/k9/mailstore/AndroidStorageFilesProviderFactory;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/fsck/k9/mailstore/AndroidStorageFilesProviderFactory;

    .line 25
    .line 26
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/fsck/k9/mailstore/AndroidStorageFilesProviderFactory;->context:Landroid/content/Context;

    .line 34
    .line 35
    invoke-direct {v2, v0, v1}, Lcom/fsck/k9/mailstore/LocalStore$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore;->storageFilesProvider:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 39
    .line 40
    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalStore;->localMessageUidPrefixProvider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 43
    .line 44
    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 45
    .line 46
    const-class p1, Lcom/fsck/k9/storage/K9SchemaDefinitionFactory;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/fsck/k9/storage/K9SchemaDefinitionFactory;

    .line 53
    .line 54
    new-instance p1, Lcom/fsck/k9/mailstore/LocalStore$3;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Lcom/fsck/k9/mailstore/LocalStore$3;-><init>(Lcom/fsck/k9/mailstore/LocalStore;)V

    .line 57
    .line 58
    .line 59
    new-instance p4, Lokhttp3/ConnectionPool;

    .line 60
    .line 61
    const/4 v0, 0x4

    .line 62
    invoke-direct {p4, v0, p1}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iput-object v3, p1, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p1, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/lang/Object;

    .line 87
    .line 88
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p1, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object p2, p1, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object v2, p1, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 98
    .line 99
    iput-object p4, p1, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 100
    .line 101
    iput-object p3, p1, Lcom/fsck/k9/mailstore/LockableDatabase;->generalSettingsManager:Ljava/lang/Object;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 104
    .line 105
    iget-object p2, p1, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p2, Ljava/util/concurrent/locks/Lock;

    .line 108
    .line 109
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 110
    .line 111
    .line 112
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LockableDatabase;->openOrCreateDataspace()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite()V

    .line 116
    .line 117
    .line 118
    const-class p2, Lkotlin/time/Clock;

    .line 119
    .line 120
    invoke-static {p2}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    check-cast p2, Lkotlin/time/Clock;

    .line 125
    .line 126
    new-instance p3, Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 127
    .line 128
    invoke-direct {p3, v1, p1, p2}, Lcom/fsck/k9/mailstore/LocalStore$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore;->outboxStateRepository:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 132
    .line 133
    return-void

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite()V

    .line 136
    .line 137
    .line 138
    throw p0
.end method

.method public static getColumnNameForFlag(Lnet/thunderbird/core/common/mail/Flag;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/mailstore/LocalStore$17;->$SwitchMap$net$thunderbird$core$common$mail$Flag:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p0, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    if-eq p0, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x5

    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    const-string p0, "forwarded"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    const-string p0, "Flag must be a special column flag"

    .line 25
    .line 26
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :cond_1
    const-string p0, "answered"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    const-string p0, "flagged"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_3
    const-string p0, "read"

    .line 38
    .line 39
    return-object p0
.end method

.method public static serializeFlags(Ljava/util/Set;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lnet/thunderbird/core/common/mail/Flag;

    .line 21
    .line 22
    sget-object v2, Lcom/fsck/k9/mailstore/LocalStore$17;->$SwitchMap$net$thunderbird$core$common$mail$Flag:[I

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    aget v2, v2, v3

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-eq v2, v3, :cond_0

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    if-eq v2, v3, :cond_0

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    if-eq v2, v3, :cond_0

    .line 38
    .line 39
    const/4 v3, 0x4

    .line 40
    if-eq v2, v3, :cond_0

    .line 41
    .line 42
    const/4 v3, 0x5

    .line 43
    if-eq v2, v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-object p0, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    .line 51
    const/16 p0, 0x2c

    .line 52
    .line 53
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method


# virtual methods
.method public final delete()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/concurrent/locks/Lock;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :catch_0
    move-exception v3

    .line 28
    :try_start_1
    const-string v4, "Exception caught in DB close: %s"

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    new-array v5, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object v3, v5, v2

    .line 37
    .line 38
    invoke-static {v4, v5}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore$1;->getAttachmentDirectory()Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    array-length v5, v4

    .line 50
    move v6, v2

    .line 51
    :goto_1
    if-ge v6, v5, :cond_1

    .line 52
    .line 53
    aget-object v7, v4, v6

    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_0

    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-nez v7, :cond_0

    .line 66
    .line 67
    const-string v7, "Attachment was not deleted!"

    .line 68
    .line 69
    new-array v8, v2, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-static {v7, v8}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catch_1
    move-exception v3

    .line 76
    goto :goto_3

    .line 77
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-nez v3, :cond_2

    .line 91
    .line 92
    const-string v3, "Attachment directory was not deleted!"

    .line 93
    .line 94
    new-array v4, v2, [Ljava/lang/Object;

    .line 95
    .line 96
    invoke-static {v3, v4}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :goto_3
    :try_start_3
    const-string v4, "Exception caught in clearing attachments: %s"

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    new-array v5, v1, [Ljava/lang/Object;

    .line 107
    .line 108
    aput-object v3, v5, v2

    .line 109
    .line 110
    invoke-static {v4, v5}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    .line 112
    .line 113
    :cond_2
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore$1;->getDatabaseFile()Ljava/io/File;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    const-string v0, "LockableDatabase: deleteDatabase(): No files deleted."

    .line 124
    .line 125
    new-array v3, v2, [Ljava/lang/Object;

    .line 126
    .line 127
    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    .line 129
    .line 130
    goto :goto_5

    .line 131
    :catch_2
    move-exception v0

    .line 132
    :try_start_5
    const-string v3, "LockableDatabase: delete(): Unable to delete backing DB file"

    .line 133
    .line 134
    new-array v2, v2, [Ljava/lang/Object;

    .line 135
    .line 136
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    new-instance v5, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    const/16 v6, 0x9

    .line 143
    .line 144
    invoke-direct {v5, v3, v2, v6}, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    .line 145
    .line 146
    .line 147
    const/4 v2, 0x0

    .line 148
    invoke-static {v4, v2, v0, v5, v1}, Lkotlinx/io/Sink$-CC;->info$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 149
    .line 150
    .line 151
    :cond_3
    :goto_5
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :goto_6
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite()V

    .line 156
    .line 157
    .line 158
    throw v0
.end method

.method public final doBatchSetSelection(Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;->getListSize()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_2

    .line 12
    .line 13
    const-string v2, " IN ("

    .line 14
    .line 15
    invoke-static {v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {p1}, Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;->getListSize()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sub-int/2addr v3, v1

    .line 24
    const/16 v4, 0x1f4

    .line 25
    .line 26
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    add-int/2addr v3, v1

    .line 31
    move v4, v1

    .line 32
    :goto_1
    if-ge v4, v3, :cond_1

    .line 33
    .line 34
    if-le v4, v1, :cond_0

    .line 35
    .line 36
    const-string v5, ",?"

    .line 37
    .line 38
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_0
    const-string v5, "?"

    .line 43
    .line 44
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :goto_2
    invoke-interface {p1, v4}, Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;->getListItem(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const-string v1, ")"

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 63
    .line 64
    const/16 v4, 0x1a

    .line 65
    .line 66
    invoke-direct {v1, p1, v2, v0, v4}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    invoke-virtual {v2, v4, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Lcom/fsck/k9/mailstore/LocalStore$BatchSetSelection;->postDbWork()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    .line 80
    .line 81
    move v1, v3

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method

.method public final notifyChange()V
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 10
    .line 11
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;->notifyMessageListChanged(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

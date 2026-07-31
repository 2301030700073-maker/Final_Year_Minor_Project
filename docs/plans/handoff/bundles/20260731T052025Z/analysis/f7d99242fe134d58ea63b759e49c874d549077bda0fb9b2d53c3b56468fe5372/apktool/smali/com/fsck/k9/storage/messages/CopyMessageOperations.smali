.class public final Lcom/fsck/k9/storage/messages/CopyMessageOperations;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountId:Lnet/thunderbird/feature/account/AccountId;

.field public final attachmentFileManager:Lcom/google/zxing/BinaryBitmap;

.field public final lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lcom/google/zxing/BinaryBitmap;Lcom/fsck/k9/message/extractors/BasicPartInfoExtractor;Lokio/Path$Companion;Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 19
    iput-object p2, p0, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->attachmentFileManager:Lcom/google/zxing/BinaryBitmap;

    .line 20
    iput-object p5, p0, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->accountId:Lnet/thunderbird/feature/account/AccountId;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lcom/google/zxing/BinaryBitmap;Lokio/Path$Companion;Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->attachmentFileManager:Lcom/google/zxing/BinaryBitmap;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 15
    .line 16
    return-void
.end method

.method public static addChildrenToStack(Ljava/util/Stack;Lcom/fsck/k9/mail/Part;J)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/fsck/k9/mail/Multipart;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/fsck/k9/mail/Multipart;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    :goto_0
    const/4 v1, -0x1

    .line 20
    if-ge v1, v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Lcom/fsck/k9/storage/messages/PartContainer;

    .line 27
    .line 28
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v3, v1}, Lcom/fsck/k9/storage/messages/PartContainer;-><init>(Ljava/lang/Long;Lcom/fsck/k9/mail/Part;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    instance-of v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    new-instance v0, Lcom/fsck/k9/storage/messages/PartContainer;

    .line 49
    .line 50
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p1, Lcom/fsck/k9/mail/Part;

    .line 55
    .line 56
    invoke-direct {v0, p2, p1}, Lcom/fsck/k9/storage/messages/PartContainer;-><init>(Ljava/lang/Long;Lcom/fsck/k9/mail/Part;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public static createOrReplaceFulltextEntry(Landroid/database/sqlite/SQLiteDatabase;JLapp/k9mail/legacy/mailstore/SaveMessageData;)V
    .locals 2

    .line 1
    iget-object p3, p3, Lapp/k9mail/legacy/mailstore/SaveMessageData;->textForSearchIndex:Ljava/lang/String;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "docid"

    .line 12
    .line 13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "fulltext"

    .line 21
    .line 22
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "messages_fulltext"

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static decodeAndCountBytes(Ljava/io/InputStream;Ljava/lang/String;J)J
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "base64"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/fsck/k9/mailstore/LocalStore$11;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/fsck/k9/mailstore/LocalStore$11;-><init>(Ljava/io/InputStream;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    move-object p0, p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const-string v0, "quoted-printable"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    new-instance p1, Lcom/fsck/k9/mailstore/LocalStore$12;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/fsck/k9/mailstore/LocalStore$12;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    :try_start_1
    new-instance p1, Lcom/fsck/k9/mail/filter/CountingOutputStream;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/io/OutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    :try_start_2
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 36
    .line 37
    .line 38
    iget-wide v0, p1, Lcom/fsck/k9/mail/filter/CountingOutputStream;->mCount:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    .line 40
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_4
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 44
    .line 45
    .line 46
    return-wide v0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_2

    .line 49
    :catchall_1
    move-exception v0

    .line 50
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 51
    :catchall_2
    move-exception v1

    .line 52
    :try_start_6
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 56
    :goto_2
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 57
    :catchall_3
    move-exception v0

    .line 58
    :try_start_8
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 62
    :catch_0
    return-wide p2
.end method

.method public static readMessagePart(Landroid/database/Cursor;)Lcom/fsck/k9/storage/messages/DatabaseMessagePart;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const/4 v4, 0x1

    .line 11
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x2

    .line 16
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x3

    .line 20
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    const/4 v7, 0x4

    .line 25
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    const/4 v8, 0x5

    .line 30
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    const/4 v9, 0x6

    .line 35
    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    if-eqz v10, :cond_0

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 44
    .line 45
    .line 46
    move-result-wide v9

    .line 47
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    :goto_0
    const/4 v10, 0x7

    .line 52
    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 53
    .line 54
    .line 55
    move-result v12

    .line 56
    if-eqz v12, :cond_1

    .line 57
    .line 58
    const/4 v10, 0x0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    :goto_1
    const/16 v12, 0x8

    .line 65
    .line 66
    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    if-eqz v13, :cond_2

    .line 71
    .line 72
    const/4 v12, 0x0

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getBlob(I)[B

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    :goto_2
    const/16 v13, 0x9

    .line 79
    .line 80
    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    .line 81
    .line 82
    .line 83
    move-result v14

    .line 84
    if-eqz v14, :cond_3

    .line 85
    .line 86
    const/4 v13, 0x0

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    :goto_3
    const/16 v14, 0xa

    .line 93
    .line 94
    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    .line 95
    .line 96
    .line 97
    move-result v15

    .line 98
    if-eqz v15, :cond_4

    .line 99
    .line 100
    const/4 v14, 0x0

    .line 101
    goto :goto_4

    .line 102
    :cond_4
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    :goto_4
    const/16 v15, 0xb

    .line 107
    .line 108
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    const/16 v11, 0xc

    .line 113
    .line 114
    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    .line 115
    .line 116
    .line 117
    move-result v17

    .line 118
    if-eqz v17, :cond_5

    .line 119
    .line 120
    const/4 v11, 0x0

    .line 121
    :goto_5
    move-object/from16 v17, v1

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_5
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getBlob(I)[B

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    goto :goto_5

    .line 129
    :goto_6
    const/16 v1, 0xd

    .line 130
    .line 131
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 132
    .line 133
    .line 134
    move-result v18

    .line 135
    if-eqz v18, :cond_6

    .line 136
    .line 137
    const/16 v18, 0x0

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_6
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    move-object/from16 v18, v1

    .line 145
    .line 146
    :goto_7
    const/16 v1, 0xe

    .line 147
    .line 148
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 149
    .line 150
    .line 151
    move-result v19

    .line 152
    if-eqz v19, :cond_7

    .line 153
    .line 154
    const/16 v19, 0x0

    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_7
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    move-object/from16 v19, v1

    .line 162
    .line 163
    :goto_8
    const/16 v1, 0xf

    .line 164
    .line 165
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 166
    .line 167
    .line 168
    move-result v20

    .line 169
    if-eqz v20, :cond_8

    .line 170
    .line 171
    const/16 v20, 0x0

    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_8
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    move-object/from16 v20, v1

    .line 179
    .line 180
    :goto_9
    const/16 v1, 0x10

    .line 181
    .line 182
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 183
    .line 184
    .line 185
    move-result v21

    .line 186
    if-eqz v21, :cond_9

    .line 187
    .line 188
    const/16 v21, 0x0

    .line 189
    .line 190
    goto :goto_a

    .line 191
    :cond_9
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    move-object/from16 v21, v1

    .line 196
    .line 197
    :goto_a
    const/16 v1, 0x11

    .line 198
    .line 199
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 200
    .line 201
    .line 202
    move-result v22

    .line 203
    if-eqz v22, :cond_a

    .line 204
    .line 205
    move-object/from16 v16, v19

    .line 206
    .line 207
    const/16 v19, 0x0

    .line 208
    .line 209
    move-wide v1, v2

    .line 210
    move v3, v4

    .line 211
    move-wide v4, v5

    .line 212
    move v6, v7

    .line 213
    move-object v7, v8

    .line 214
    move-object v8, v9

    .line 215
    move-object v9, v10

    .line 216
    move-object v10, v12

    .line 217
    move-object v12, v14

    .line 218
    move-object/from16 v0, v17

    .line 219
    .line 220
    move-object/from16 v17, v20

    .line 221
    .line 222
    move-object v14, v11

    .line 223
    move-object v11, v13

    .line 224
    move v13, v15

    .line 225
    move-object/from16 v15, v18

    .line 226
    .line 227
    :goto_b
    move-object/from16 v18, v21

    .line 228
    .line 229
    goto :goto_c

    .line 230
    :cond_a
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    move-object/from16 v16, v19

    .line 235
    .line 236
    move-object/from16 v19, v0

    .line 237
    .line 238
    move-wide v1, v2

    .line 239
    move v3, v4

    .line 240
    move-wide v4, v5

    .line 241
    move v6, v7

    .line 242
    move-object v7, v8

    .line 243
    move-object v8, v9

    .line 244
    move-object v9, v10

    .line 245
    move-object v10, v12

    .line 246
    move-object v12, v14

    .line 247
    move-object v14, v11

    .line 248
    move-object v11, v13

    .line 249
    move v13, v15

    .line 250
    move-object/from16 v0, v17

    .line 251
    .line 252
    move-object/from16 v15, v18

    .line 253
    .line 254
    move-object/from16 v17, v20

    .line 255
    .line 256
    goto :goto_b

    .line 257
    :goto_c
    invoke-direct/range {v0 .. v19}, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;-><init>(JIJILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I[B[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    return-object v0
.end method


# virtual methods
.method public readMessageToContentValues(Landroid/database/sqlite/SQLiteDatabase;JJJ)Landroid/content/ContentValues;
    .locals 32

    .line 1
    const-string v0, "Message with ID "

    .line 2
    .line 3
    const-string v22, "forwarded"

    .line 4
    .line 5
    const-string v23, "encryption_type"

    .line 6
    .line 7
    const-string v2, "deleted"

    .line 8
    .line 9
    const-string v3, "subject"

    .line 10
    .line 11
    const-string v4, "date"

    .line 12
    .line 13
    const-string v5, "flags"

    .line 14
    .line 15
    const-string v6, "sender_list"

    .line 16
    .line 17
    const-string v7, "to_list"

    .line 18
    .line 19
    const-string v8, "cc_list"

    .line 20
    .line 21
    const-string v9, "bcc_list"

    .line 22
    .line 23
    const-string v10, "reply_to_list"

    .line 24
    .line 25
    const-string v11, "attachment_count"

    .line 26
    .line 27
    const-string v12, "internal_date"

    .line 28
    .line 29
    const-string v13, "message_id"

    .line 30
    .line 31
    const-string v14, "preview_type"

    .line 32
    .line 33
    const-string v15, "preview"

    .line 34
    .line 35
    const-string v16, "mime_type"

    .line 36
    .line 37
    const-string v17, "normalized_subject_hash"

    .line 38
    .line 39
    const-string v18, "empty"

    .line 40
    .line 41
    const-string v19, "read"

    .line 42
    .line 43
    const-string v20, "flagged"

    .line 44
    .line 45
    const-string v21, "answered"

    .line 46
    .line 47
    filled-new-array/range {v2 .. v23}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v26

    .line 51
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    filled-new-array {v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v28

    .line 59
    const/16 v30, 0x0

    .line 60
    .line 61
    const/16 v31, 0x0

    .line 62
    .line 63
    const-string v25, "messages"

    .line 64
    .line 65
    const-string v27, "id = ?"

    .line 66
    .line 67
    const/16 v29, 0x0

    .line 68
    .line 69
    move-object/from16 v24, p1

    .line 70
    .line 71
    invoke-virtual/range {v24 .. v31}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_c

    .line 80
    .line 81
    new-instance v0, Landroid/content/ContentValues;

    .line 82
    .line 83
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v2, "deleted"

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    .line 99
    .line 100
    const-string v2, "subject"

    .line 101
    .line 102
    const/4 v3, 0x1

    .line 103
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    const/4 v5, 0x0

    .line 108
    if-eqz v4, :cond_0

    .line 109
    .line 110
    move-object v3, v5

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v2, "date"

    .line 120
    .line 121
    const/4 v3, 0x2

    .line 122
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 123
    .line 124
    .line 125
    move-result-wide v3

    .line 126
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    .line 132
    .line 133
    const-string v2, "flags"

    .line 134
    .line 135
    const/4 v3, 0x3

    .line 136
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_1

    .line 141
    .line 142
    move-object v3, v5

    .line 143
    goto :goto_1

    .line 144
    :cond_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v2, "sender_list"

    .line 152
    .line 153
    const/4 v3, 0x4

    .line 154
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_2

    .line 159
    .line 160
    move-object v3, v5

    .line 161
    goto :goto_2

    .line 162
    :cond_2
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string v2, "to_list"

    .line 170
    .line 171
    const/4 v3, 0x5

    .line 172
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_3

    .line 177
    .line 178
    move-object v3, v5

    .line 179
    goto :goto_3

    .line 180
    :cond_3
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    :goto_3
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v2, "cc_list"

    .line 188
    .line 189
    const/4 v3, 0x6

    .line 190
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_4

    .line 195
    .line 196
    move-object v3, v5

    .line 197
    goto :goto_4

    .line 198
    :cond_4
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    :goto_4
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string v2, "bcc_list"

    .line 206
    .line 207
    const/4 v3, 0x7

    .line 208
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-eqz v4, :cond_5

    .line 213
    .line 214
    move-object v3, v5

    .line 215
    goto :goto_5

    .line 216
    :cond_5
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    :goto_5
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string v2, "reply_to_list"

    .line 224
    .line 225
    const/16 v3, 0x8

    .line 226
    .line 227
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_6

    .line 232
    .line 233
    move-object v3, v5

    .line 234
    goto :goto_6

    .line 235
    :cond_6
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    :goto_6
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    const-string v2, "attachment_count"

    .line 243
    .line 244
    const/16 v3, 0x9

    .line 245
    .line 246
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    .line 256
    .line 257
    const-string v2, "internal_date"

    .line 258
    .line 259
    const/16 v3, 0xa

    .line 260
    .line 261
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 262
    .line 263
    .line 264
    move-result-wide v3

    .line 265
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    .line 271
    .line 272
    const-string v2, "message_id"

    .line 273
    .line 274
    const/16 v3, 0xb

    .line 275
    .line 276
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    if-eqz v4, :cond_7

    .line 281
    .line 282
    move-object v3, v5

    .line 283
    goto :goto_7

    .line 284
    :cond_7
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    :goto_7
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const-string v2, "preview_type"

    .line 292
    .line 293
    const/16 v3, 0xc

    .line 294
    .line 295
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    if-eqz v4, :cond_8

    .line 300
    .line 301
    move-object v3, v5

    .line 302
    goto :goto_8

    .line 303
    :cond_8
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    :goto_8
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const-string v2, "preview"

    .line 311
    .line 312
    const/16 v3, 0xd

    .line 313
    .line 314
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-eqz v4, :cond_9

    .line 319
    .line 320
    move-object v3, v5

    .line 321
    goto :goto_9

    .line 322
    :cond_9
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    :goto_9
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const-string v2, "mime_type"

    .line 330
    .line 331
    const/16 v3, 0xe

    .line 332
    .line 333
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    if-eqz v4, :cond_a

    .line 338
    .line 339
    move-object v3, v5

    .line 340
    goto :goto_a

    .line 341
    :cond_a
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    :goto_a
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const-string v2, "normalized_subject_hash"

    .line 349
    .line 350
    const/16 v3, 0xf

    .line 351
    .line 352
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 353
    .line 354
    .line 355
    move-result-wide v3

    .line 356
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 361
    .line 362
    .line 363
    const-string v2, "empty"

    .line 364
    .line 365
    const/16 v3, 0x10

    .line 366
    .line 367
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    .line 377
    .line 378
    const-string v2, "read"

    .line 379
    .line 380
    const/16 v3, 0x11

    .line 381
    .line 382
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    .line 392
    .line 393
    const-string v2, "flagged"

    .line 394
    .line 395
    const/16 v3, 0x12

    .line 396
    .line 397
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    .line 407
    .line 408
    const-string v2, "answered"

    .line 409
    .line 410
    const/16 v3, 0x13

    .line 411
    .line 412
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    .line 422
    .line 423
    const-string v2, "forwarded"

    .line 424
    .line 425
    const/16 v3, 0x14

    .line 426
    .line 427
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    .line 437
    .line 438
    const-string v2, "encryption_type"

    .line 439
    .line 440
    const/16 v3, 0x15

    .line 441
    .line 442
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    if-eqz v4, :cond_b

    .line 447
    .line 448
    goto :goto_b

    .line 449
    :cond_b
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    :goto_b
    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    .line 455
    .line 456
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 457
    .line 458
    .line 459
    const-string v1, "folder_id"

    .line 460
    .line 461
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 466
    .line 467
    .line 468
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    const-string v3, "K9LOCAL:"

    .line 475
    .line 476
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    const-string v2, "uid"

    .line 487
    .line 488
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    const-string v1, "message_part_id"

    .line 492
    .line 493
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 498
    .line 499
    .line 500
    move-object/from16 v1, p0

    .line 501
    .line 502
    iget-object v1, v1, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 503
    .line 504
    iget-object v1, v1, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 505
    .line 506
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    const-string v2, "account_id"

    .line 511
    .line 512
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    return-object v0

    .line 516
    :catchall_0
    move-exception v0

    .line 517
    move-object v2, v0

    .line 518
    goto :goto_c

    .line 519
    :cond_c
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 520
    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    move-wide/from16 v4, p2

    .line 527
    .line 528
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    const-string v0, " not found"

    .line 532
    .line 533
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    :goto_c
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 549
    :catchall_1
    move-exception v0

    .line 550
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 551
    .line 552
    .line 553
    throw v0
.end method

.method public replaceMessage(JJLandroid/database/sqlite/SQLiteDatabase;Lapp/k9mail/legacy/mailstore/SaveMessageData;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 11

    .line 1
    move-object/from16 v8, p6

    .line 2
    .line 3
    if-eqz p7, :cond_1

    .line 4
    .line 5
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v9

    .line 9
    const-string v0, "id"

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    filled-new-array {v0}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const-string v1, "message_parts"

    .line 26
    .line 27
    const-string v3, "root = ? AND data_location = 2"

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    move-object/from16 v0, p5

    .line 31
    .line 32
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    iget-object v4, p0, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->attachmentFileManager:Lcom/google/zxing/BinaryBitmap;

    .line 48
    .line 49
    invoke-virtual {v4, v2, v3}, Lcom/google/zxing/BinaryBitmap;->deleteFile(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    move-object p0, v0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 57
    .line 58
    .line 59
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    filled-new-array {v1}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "message_parts"

    .line 68
    .line 69
    const-string v3, "root = ?"

    .line 70
    .line 71
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    :catchall_1
    move-exception v0

    .line 77
    move-object p1, v0

    .line 78
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_1
    move-object/from16 v0, p5

    .line 83
    .line 84
    :goto_2
    iget-object v1, v8, Lapp/k9mail/legacy/mailstore/SaveMessageData;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 85
    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->saveMessageParts(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mail/internet/MimeMessage;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    move-wide v1, p1

    .line 95
    move-object v5, v0

    .line 96
    move-object v6, v8

    .line 97
    move-object v0, p0

    .line 98
    move-object/from16 v8, p8

    .line 99
    .line 100
    invoke-virtual/range {v0 .. v8}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->saveMessage(JJLandroid/database/sqlite/SQLiteDatabase;Lapp/k9mail/legacy/mailstore/SaveMessageData;Ljava/lang/Long;Ljava/lang/String;)J

    .line 101
    .line 102
    .line 103
    move-result-wide p0

    .line 104
    move-object v0, v5

    .line 105
    move-object v8, v6

    .line 106
    invoke-static {v0, p0, p1, v8}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->createOrReplaceFulltextEntry(Landroid/database/sqlite/SQLiteDatabase;JLapp/k9mail/legacy/mailstore/SaveMessageData;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public saveMessage(JJLandroid/database/sqlite/SQLiteDatabase;Lapp/k9mail/legacy/mailstore/SaveMessageData;Ljava/lang/Long;Ljava/lang/String;)J
    .locals 15

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    move-object/from16 v1, p6

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object v3, v1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 11
    .line 12
    iget-object v4, v1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->downloadState:Lcom/fsck/k9/mail/MessageDownloadState;

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const-wide/16 v5, 0x0

    .line 19
    .line 20
    const/4 v7, 0x2

    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    const/4 v8, 0x1

    .line 24
    if-eq v4, v8, :cond_1

    .line 25
    .line 26
    if-ne v4, v7, :cond_0

    .line 27
    .line 28
    sget-object v4, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_FULL:Lnet/thunderbird/core/common/mail/Flag;

    .line 29
    .line 30
    invoke-virtual {v3, v4, v8}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 35
    .line 36
    .line 37
    return-wide v5

    .line 38
    :cond_1
    sget-object v4, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_PARTIAL:Lnet/thunderbird/core/common/mail/Flag;

    .line 39
    .line 40
    invoke-virtual {v3, v4, v8}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    new-instance v4, Landroid/content/ContentValues;

    .line 44
    .line 45
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v8, "folder_id"

    .line 49
    .line 50
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    .line 56
    .line 57
    const-string v8, "uid"

    .line 58
    .line 59
    move-object/from16 v9, p8

    .line 60
    .line 61
    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v8, "deleted"

    .line 65
    .line 66
    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    .line 68
    .line 69
    const-string v8, "empty"

    .line 70
    .line 71
    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    .line 73
    .line 74
    const-string v2, "message_part_id"

    .line 75
    .line 76
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v4, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 81
    .line 82
    .line 83
    iget-wide v8, v1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->date:J

    .line 84
    .line 85
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-string v8, "date"

    .line 90
    .line 91
    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    .line 93
    .line 94
    iget-wide v8, v1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->internalDate:J

    .line 95
    .line 96
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v8, "internal_date"

    .line 101
    .line 102
    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    .line 104
    .line 105
    const-string v2, "subject"

    .line 106
    .line 107
    iget-object v8, v1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->subject:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v4, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v2, v3, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 113
    .line 114
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    check-cast v8, Ljava/lang/Iterable;

    .line 122
    .line 123
    new-instance v9, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-eqz v10, :cond_4

    .line 137
    .line 138
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    move-object v11, v10

    .line 143
    check-cast v11, Lnet/thunderbird/core/common/mail/Flag;

    .line 144
    .line 145
    sget-object v12, Lcom/fsck/k9/storage/messages/FlagMessageOperationsKt;->SPECIAL_FLAGS:Ljava/util/Set;

    .line 146
    .line 147
    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-nez v11, :cond_3

    .line 152
    .line 153
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    const/4 v13, 0x0

    .line 158
    const/16 v14, 0x3e

    .line 159
    .line 160
    const-string v10, ","

    .line 161
    .line 162
    const/4 v11, 0x0

    .line 163
    const/4 v12, 0x0

    .line 164
    invoke-static/range {v9 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    const-string v9, "flags"

    .line 169
    .line 170
    invoke-virtual {v4, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    sget-object v8, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 174
    .line 175
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    const-string v9, "read"

    .line 184
    .line 185
    invoke-virtual {v4, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    .line 187
    .line 188
    sget-object v8, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 189
    .line 190
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    const-string v9, "flagged"

    .line 199
    .line 200
    invoke-virtual {v4, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    .line 202
    .line 203
    sget-object v8, Lnet/thunderbird/core/common/mail/Flag;->ANSWERED:Lnet/thunderbird/core/common/mail/Flag;

    .line 204
    .line 205
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v8

    .line 209
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    const-string v9, "answered"

    .line 214
    .line 215
    invoke-virtual {v4, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    .line 217
    .line 218
    sget-object v8, Lnet/thunderbird/core/common/mail/Flag;->FORWARDED:Lnet/thunderbird/core/common/mail/Flag;

    .line 219
    .line 220
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    const-string v8, "forwarded"

    .line 229
    .line 230
    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    .line 232
    .line 233
    sget-object v2, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 234
    .line 235
    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-static {v2}, Lcom/fsck/k9/mail/K9MailLib;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    const-string v8, "sender_list"

    .line 244
    .line 245
    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    sget-object v2, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 249
    .line 250
    invoke-virtual {v3, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {v2}, Lcom/fsck/k9/mail/K9MailLib;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    const-string v8, "to_list"

    .line 259
    .line 260
    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    sget-object v2, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 264
    .line 265
    invoke-virtual {v3, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-static {v2}, Lcom/fsck/k9/mail/K9MailLib;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    const-string v8, "cc_list"

    .line 274
    .line 275
    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    sget-object v2, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 279
    .line 280
    invoke-virtual {v3, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-static {v2}, Lcom/fsck/k9/mail/K9MailLib;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    const-string v8, "bcc_list"

    .line 289
    .line 290
    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->getReplyTo()[Lcom/fsck/k9/mail/Address;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-static {v2}, Lcom/fsck/k9/mail/K9MailLib;->pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    const-string v8, "reply_to_list"

    .line 302
    .line 303
    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget v2, v1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->attachmentCount:I

    .line 307
    .line 308
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    const-string v8, "attachment_count"

    .line 313
    .line 314
    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    .line 316
    .line 317
    const-string v2, "message_id"

    .line 318
    .line 319
    invoke-virtual {v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v8

    .line 323
    invoke-virtual {v4, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    const-string v2, "mime_type"

    .line 327
    .line 328
    invoke-interface {v3}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string v2, "encryption_type"

    .line 336
    .line 337
    iget-object v3, v1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->encryptionType:Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    iget-object v1, v1, Lapp/k9mail/legacy/mailstore/SaveMessageData;->previewResult:Lokio/PriorityQueue;

    .line 343
    .line 344
    iget v2, v1, Lokio/PriorityQueue;->size:I

    .line 345
    .line 346
    const/4 v3, 0x0

    .line 347
    if-eqz v2, :cond_8

    .line 348
    .line 349
    sget-object v8, Lcom/fsck/k9/mailstore/DatabasePreviewType;->Companion:Lcom/fsck/k9/mailstore/SendState$Companion;

    .line 350
    .line 351
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    invoke-static {v2}, Lcom/fsck/k9/mailstore/SendState$Companion;->fromPreviewType(I)Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    iget-object v2, v2, Lcom/fsck/k9/mailstore/DatabasePreviewType;->databaseValue:Ljava/lang/String;

    .line 359
    .line 360
    const-string v8, "preview_type"

    .line 361
    .line 362
    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget v2, v1, Lokio/PriorityQueue;->size:I

    .line 366
    .line 367
    const-string v8, "preview"

    .line 368
    .line 369
    if-ne v2, v7, :cond_6

    .line 370
    .line 371
    if-ne v2, v7, :cond_5

    .line 372
    .line 373
    iget-object v1, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v1, Ljava/lang/String;

    .line 376
    .line 377
    invoke-virtual {v4, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    goto :goto_2

    .line 381
    :cond_5
    const-string p0, "Preview is not available"

    .line 382
    .line 383
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    return-wide v5

    .line 387
    :cond_6
    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    :goto_2
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 391
    .line 392
    iget-object p0, p0, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 393
    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p0

    .line 398
    const-string v1, "account_id"

    .line 399
    .line 400
    invoke-virtual {v4, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    const-string p0, "messages"

    .line 404
    .line 405
    if-eqz p7, :cond_7

    .line 406
    .line 407
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    .line 408
    .line 409
    .line 410
    move-result-wide v1

    .line 411
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    filled-new-array {v1}, [Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    const-string v2, "id = ?"

    .line 420
    .line 421
    invoke-virtual {v0, p0, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    .line 425
    .line 426
    .line 427
    move-result-wide v0

    .line 428
    return-wide v0

    .line 429
    :cond_7
    invoke-virtual {v0, p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 430
    .line 431
    .line 432
    move-result-wide v0

    .line 433
    return-wide v0

    .line 434
    :cond_8
    throw v3
.end method

.method public saveMessagePart(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/storage/messages/PartContainer;Ljava/lang/Long;I)J
    .locals 9

    .line 1
    iget-object v0, p2, Lcom/fsck/k9/storage/messages/PartContainer;->part:Lcom/fsck/k9/mail/Part;

    .line 2
    .line 3
    new-instance v1, Landroid/content/ContentValues;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "root"

    .line 9
    .line 10
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p2, Lcom/fsck/k9/storage/messages/PartContainer;->parentId:Ljava/lang/Long;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide p2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/16 p2, -0x1

    .line 23
    .line 24
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string p3, "parent"

    .line 29
    .line 30
    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    .line 32
    .line 33
    const-string p2, "seq"

    .line 34
    .line 35
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    .line 41
    .line 42
    const-string p2, "server_extra"

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getServerExtra()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p2, 0x3

    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    .line 57
    .line 58
    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, p3}, Lcom/fsck/k9/mail/Part;->writeHeaderTo(Ljava/io/ByteArrayOutputStream;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    const-string p4, "mime_type"

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, p4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string p4, "header"

    .line 81
    .line 82
    invoke-virtual {v1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 83
    .line 84
    .line 85
    const/4 p3, 0x0

    .line 86
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    const-string p4, "type"

    .line 91
    .line 92
    invoke-virtual {v1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 96
    .line 97
    .line 98
    move-result-object p4

    .line 99
    instance-of v2, p4, Lcom/fsck/k9/mail/Multipart;

    .line 100
    .line 101
    const-string v3, "boundary"

    .line 102
    .line 103
    const-string v4, "data_location"

    .line 104
    .line 105
    const/4 v5, 0x0

    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    check-cast p4, Lcom/fsck/k9/mail/Multipart;

    .line 109
    .line 110
    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    .line 112
    .line 113
    check-cast p4, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 114
    .line 115
    iget-object p2, p4, Lcom/fsck/k9/mail/internet/MimeMultipart;->preamble:[B

    .line 116
    .line 117
    const-string p3, "preamble"

    .line 118
    .line 119
    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 120
    .line 121
    .line 122
    const-string p2, "epilogue"

    .line 123
    .line 124
    iget-object p3, p4, Lcom/fsck/k9/mail/internet/MimeMultipart;->epilogue:[B

    .line 125
    .line 126
    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 127
    .line 128
    .line 129
    iget-object p2, p4, Lcom/fsck/k9/mail/internet/MimeMultipart;->boundary:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    :goto_1
    move-object p4, v5

    .line 135
    goto/16 :goto_7

    .line 136
    .line 137
    :cond_2
    instance-of v2, p4, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 138
    .line 139
    if-eqz v2, :cond_3

    .line 140
    .line 141
    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    const-string p2, "decoded_body_size"

    .line 146
    .line 147
    const-string v2, "display_name"

    .line 148
    .line 149
    if-nez p4, :cond_6

    .line 150
    .line 151
    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p4

    .line 155
    if-eqz p4, :cond_4

    .line 156
    .line 157
    invoke-static {p4}, Lcom/fsck/k9/mail/internet/JisSupport;->decode(Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeValue;

    .line 158
    .line 159
    .line 160
    move-result-object p4

    .line 161
    goto :goto_2

    .line 162
    :cond_4
    move-object p4, v5

    .line 163
    :goto_2
    invoke-static {v0, p4}, Lcom/fsck/k9/message/extractors/BasicPartInfoExtractor;->getDisplayName(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/internet/MimeValue;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    if-eqz p4, :cond_5

    .line 168
    .line 169
    iget-object p4, p4, Lcom/fsck/k9/mail/internet/MimeValue;->parameters:Ljava/util/Map;

    .line 170
    .line 171
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 172
    .line 173
    const-string v8, "size"

    .line 174
    .line 175
    invoke-virtual {v8, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-interface {p4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p4

    .line 186
    check-cast p4, Ljava/lang/String;

    .line 187
    .line 188
    if-eqz p4, :cond_5

    .line 189
    .line 190
    invoke-static {p4}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 191
    .line 192
    .line 193
    move-result-object p4

    .line 194
    goto :goto_3

    .line 195
    :cond_5
    move-object p4, v5

    .line 196
    :goto_3
    invoke-virtual {v1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-static {p2}, Lcom/fsck/k9/mail/internet/JisSupport;->isMultipart(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-eqz p2, :cond_1

    .line 214
    .line 215
    sget-object p2, Lcom/fsck/k9/mail/BoundaryGenerator;->INSTANCE:Lcom/fsck/k9/mail/BoundaryGenerator;

    .line 216
    .line 217
    invoke-virtual {p2}, Lcom/fsck/k9/mail/BoundaryGenerator;->generateBoundary()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_6
    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p3

    .line 229
    if-eqz p3, :cond_7

    .line 230
    .line 231
    invoke-static {p3}, Lcom/fsck/k9/mail/internet/JisSupport;->decode(Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeValue;

    .line 232
    .line 233
    .line 234
    move-result-object p3

    .line 235
    goto :goto_4

    .line 236
    :cond_7
    move-object p3, v5

    .line 237
    :goto_4
    invoke-static {v0, p3}, Lcom/fsck/k9/message/extractors/BasicPartInfoExtractor;->getDisplayName(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/internet/MimeValue;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p3

    .line 241
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const-string p3, "Content-Transfer-Encoding"

    .line 245
    .line 246
    invoke-interface {v0, p3}, Lcom/fsck/k9/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p3

    .line 250
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    invoke-static {p3}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p3

    .line 257
    check-cast p3, Ljava/lang/String;

    .line 258
    .line 259
    if-eqz p3, :cond_8

    .line 260
    .line 261
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 262
    .line 263
    invoke-virtual {p3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p3

    .line 267
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_8
    const-string p3, "7bit"

    .line 272
    .line 273
    :goto_5
    const-string v2, "encoding"

    .line 274
    .line 275
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    const-string v2, "content_id"

    .line 279
    .line 280
    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getContentId()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    instance-of v2, p4, Lcom/fsck/k9/mail/internet/SizeAware;

    .line 288
    .line 289
    if-eqz v2, :cond_c

    .line 290
    .line 291
    move-object v2, p4

    .line 292
    check-cast v2, Lcom/fsck/k9/mail/internet/SizeAware;

    .line 293
    .line 294
    invoke-interface {v2}, Lcom/fsck/k9/mail/internet/SizeAware;->getSize()J

    .line 295
    .line 296
    .line 297
    move-result-wide v2

    .line 298
    const-wide/16 v6, 0x4000

    .line 299
    .line 300
    cmp-long v6, v2, v6

    .line 301
    .line 302
    if-lez v6, :cond_a

    .line 303
    .line 304
    const/4 p4, 0x2

    .line 305
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object p4

    .line 309
    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    .line 311
    .line 312
    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 313
    .line 314
    .line 315
    move-result-object p4

    .line 316
    instance-of v0, p4, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    .line 317
    .line 318
    if-eqz v0, :cond_9

    .line 319
    .line 320
    check-cast p4, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;

    .line 321
    .line 322
    iget-object p4, p4, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_9
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    const-string v0, "body"

    .line 329
    .line 330
    sget-object v4, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mTempDirectory:Ljava/io/File;

    .line 331
    .line 332
    invoke-static {v0, v5, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    new-instance v4, Ljava/io/FileOutputStream;

    .line 337
    .line 338
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 339
    .line 340
    .line 341
    :try_start_0
    invoke-interface {p4, v4}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 345
    .line 346
    .line 347
    move-object p4, v0

    .line 348
    :goto_6
    new-instance v0, Ljava/io/FileInputStream;

    .line 349
    .line 350
    invoke-direct {v0, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 351
    .line 352
    .line 353
    :try_start_1
    invoke-static {v0, p3, v2, v3}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->decodeAndCountBytes(Ljava/io/InputStream;Ljava/lang/String;J)J

    .line 354
    .line 355
    .line 356
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 358
    .line 359
    .line 360
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 361
    .line 362
    .line 363
    move-result-object p3

    .line 364
    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 365
    .line 366
    .line 367
    goto :goto_7

    .line 368
    :catchall_0
    move-exception p0

    .line 369
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 370
    :catchall_1
    move-exception p1

    .line 371
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 372
    .line 373
    .line 374
    throw p1

    .line 375
    :catchall_2
    move-exception p0

    .line 376
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 377
    :catchall_3
    move-exception p1

    .line 378
    invoke-static {v4, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 379
    .line 380
    .line 381
    throw p1

    .line 382
    :cond_a
    const/4 v0, 0x1

    .line 383
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    .line 389
    .line 390
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 391
    .line 392
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 393
    .line 394
    .line 395
    invoke-interface {p4, v0}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 399
    .line 400
    .line 401
    move-result-object p4

    .line 402
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    const-string v0, "data"

    .line 406
    .line 407
    invoke-virtual {v1, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 408
    .line 409
    .line 410
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 411
    .line 412
    invoke-direct {v0, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 413
    .line 414
    .line 415
    array-length p4, p4

    .line 416
    int-to-long v2, p4

    .line 417
    invoke-static {v0, p3, v2, v3}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->decodeAndCountBytes(Ljava/io/InputStream;Ljava/lang/String;J)J

    .line 418
    .line 419
    .line 420
    move-result-wide p3

    .line 421
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 422
    .line 423
    .line 424
    move-result-object p3

    .line 425
    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_1

    .line 429
    .line 430
    :goto_7
    const-string p2, "message_parts"

    .line 431
    .line 432
    invoke-virtual {p1, p2, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 433
    .line 434
    .line 435
    move-result-wide p1

    .line 436
    if-eqz p4, :cond_b

    .line 437
    .line 438
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->attachmentFileManager:Lcom/google/zxing/BinaryBitmap;

    .line 439
    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/BinaryBitmap;->getAttachmentFile(J)Ljava/io/File;

    .line 441
    .line 442
    .line 443
    move-result-object p0

    .line 444
    invoke-static {p4, p0}, Lcom/fsck/k9/helper/FileHelper;->renameOrMoveByCopying(Ljava/io/File;Ljava/io/File;)V

    .line 445
    .line 446
    .line 447
    :cond_b
    return-wide p1

    .line 448
    :cond_c
    const-string p0, "Body needs to implement SizeAware"

    .line 449
    .line 450
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    const-wide/16 p0, 0x0

    .line 454
    .line 455
    return-wide p0
.end method

.method public saveMessageParts(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mail/internet/MimeMessage;)J
    .locals 7

    .line 1
    new-instance v0, Lcom/fsck/k9/storage/messages/PartContainer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p2}, Lcom/fsck/k9/storage/messages/PartContainer;-><init>(Ljava/lang/Long;Lcom/fsck/k9/mail/Part;)V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->saveMessagePart(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/storage/messages/PartContainer;Ljava/lang/Long;I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    new-instance v2, Ljava/util/Stack;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v2, p2, v0, v1}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->addChildrenToStack(Ljava/util/Stack;Lcom/fsck/k9/mail/Part;J)V

    .line 18
    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    move v3, p2

    .line 22
    :goto_0
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/fsck/k9/storage/messages/PartContainer;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {p0, p1, v4, v5, v3}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->saveMessagePart(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/storage/messages/PartContainer;Ljava/lang/Long;I)J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    add-int/2addr v3, p2

    .line 46
    iget-object v4, v4, Lcom/fsck/k9/storage/messages/PartContainer;->part:Lcom/fsck/k9/mail/Part;

    .line 47
    .line 48
    invoke-static {v2, v4, v5, v6}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->addChildrenToStack(Ljava/util/Stack;Lcom/fsck/k9/mail/Part;J)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-wide v0
.end method

.method public writeMessagePart(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/storage/messages/DatabaseMessagePart;Ljava/lang/Long;J)J
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p2, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->type:I

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "type"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "root"

    .line 18
    .line 19
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 20
    .line 21
    .line 22
    const-string p3, "parent"

    .line 23
    .line 24
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p4

    .line 28
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 29
    .line 30
    .line 31
    iget p3, p2, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->seq:I

    .line 32
    .line 33
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    const-string p4, "seq"

    .line 38
    .line 39
    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    .line 41
    .line 42
    const-string p3, "mime_type"

    .line 43
    .line 44
    iget-object p4, p2, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->mimeType:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p3, "decoded_body_size"

    .line 50
    .line 51
    iget-object p4, p2, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->decodedBodySize:Ljava/lang/Long;

    .line 52
    .line 53
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    .line 55
    .line 56
    const-string p3, "display_name"

    .line 57
    .line 58
    iget-object p4, p2, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->displayName:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p3, "header"

    .line 64
    .line 65
    iget-object p4, p2, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->header:[B

    .line 66
    .line 67
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 68
    .line 69
    .line 70
    const-string p3, "encoding"

    .line 71
    .line 72
    iget-object p4, p2, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->encoding:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string p3, "charset"

    .line 78
    .line 79
    iget-object p4, p2, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->charset:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget p3, p2, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->dataLocation:I

    .line 85
    .line 86
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p4

    .line 90
    const-string p5, "data_location"

    .line 91
    .line 92
    invoke-virtual {v0, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    .line 94
    .line 95
    const-string p4, "data"

    .line 96
    .line 97
    iget-object p5, p2, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->data:[B

    .line 98
    .line 99
    invoke-virtual {v0, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 100
    .line 101
    .line 102
    const-string p4, "preamble"

    .line 103
    .line 104
    iget-object p5, p2, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->preamble:[B

    .line 105
    .line 106
    invoke-virtual {v0, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 107
    .line 108
    .line 109
    const-string p4, "epilogue"

    .line 110
    .line 111
    iget-object p5, p2, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->epilogue:[B

    .line 112
    .line 113
    invoke-virtual {v0, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 114
    .line 115
    .line 116
    const-string p4, "boundary"

    .line 117
    .line 118
    iget-object p5, p2, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->boundary:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string p4, "content_id"

    .line 124
    .line 125
    iget-object p5, p2, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->contentId:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string p4, "server_extra"

    .line 131
    .line 132
    iget-object p5, p2, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->serverExtra:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v0, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string p4, "message_parts"

    .line 138
    .line 139
    const/4 p5, 0x0

    .line 140
    invoke-virtual {p1, p4, p5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 141
    .line 142
    .line 143
    move-result-wide p4

    .line 144
    const/4 p1, 0x2

    .line 145
    if-ne p3, p1, :cond_0

    .line 146
    .line 147
    iget-wide p1, p2, Lcom/fsck/k9/storage/messages/DatabaseMessagePart;->id:J

    .line 148
    .line 149
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->attachmentFileManager:Lcom/google/zxing/BinaryBitmap;

    .line 150
    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/BinaryBitmap;->getAttachmentFile(J)Ljava/io/File;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p0, p4, p5}, Lcom/google/zxing/BinaryBitmap;->getAttachmentFile(J)Ljava/io/File;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    const/4 p2, 0x6

    .line 160
    invoke-static {p1, p0, p2}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;I)V

    .line 161
    .line 162
    .line 163
    :cond_0
    return-wide p4
.end method

.class public final Lcom/fsck/k9/mailstore/LocalStore$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;
.implements Lapp/k9mail/legacy/mailstore/MessageMapper;
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;

.field public final val$folders:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "error_timestamp"

    .line 2
    .line 3
    const-string v1, "error"

    .line 4
    .line 5
    const-string v2, "send_state"

    .line 6
    .line 7
    const-string v3, "number_of_send_attempts"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/fsck/k9/mailstore/LocalStore$1;->COLUMNS:[Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->$r8$classId:I

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->$r8$classId:I

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public destroyMessages(JLjava/util/Collection;)V
    .locals 10

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lcom/fsck/k9/storage/messages/K9MessageStore;->deleteMessageOperations:Lcom/fsck/k9/storage/messages/DeleteFolderOperations;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v8, v2, Lcom/fsck/k9/storage/messages/DeleteFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 33
    .line 34
    new-instance v1, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/4 v9, 0x1

    .line 37
    invoke-direct {v1, v9, p1, p2, v0}, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;-><init>(IJLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {v8, v0, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/fsck/k9/storage/messages/MessageData;

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-wide v6, v0, Lcom/fsck/k9/storage/messages/MessageData;->messageId:J

    .line 51
    .line 52
    iget-wide v3, v0, Lcom/fsck/k9/storage/messages/MessageData;->messagePartId:J

    .line 53
    .line 54
    iget-boolean v5, v0, Lcom/fsck/k9/storage/messages/MessageData;->hasThreadChildren:Z

    .line 55
    .line 56
    new-instance v1, Lcom/fsck/k9/storage/messages/DeleteMessageOperations$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    invoke-direct/range {v1 .. v7}, Lcom/fsck/k9/storage/messages/DeleteMessageOperations$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/storage/messages/DeleteFolderOperations;JZJ)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8, v9, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore$1;->notifyChange()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/fsck/k9/mailstore/LocalStore$1;->$r8$classId:I

    .line 6
    .line 7
    const-string v3, "messages"

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    const-string v9, "id = ?"

    .line 11
    .line 12
    const/4 v10, 0x0

    .line 13
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v2, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    :pswitch_0
    check-cast v0, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 21
    .line 22
    sget-object v2, Lnet/thunderbird/core/common/mail/Flag;->X_SUBJECT_DECRYPTED:Lnet/thunderbird/core/common/mail/Flag;

    .line 23
    .line 24
    invoke-static {v0, v2}, Lcom/fsck/k9/mailstore/LocalMessage;->access$001(Lcom/fsck/k9/mailstore/LocalMessage;Lnet/thunderbird/core/common/mail/Flag;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Landroid/content/ContentValues;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v5, "subject"

    .line 33
    .line 34
    check-cast v4, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v4, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 40
    .line 41
    invoke-static {v4}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/util/Set;

    .line 46
    .line 47
    invoke-static {v4}, Lcom/fsck/k9/mailstore/LocalStore;->serializeFlags(Ljava/util/Set;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "flags"

    .line 52
    .line 53
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-wide v4, v0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 57
    .line 58
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    filled-new-array {v0}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v1, v3, v2, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return-object v10

    .line 70
    :pswitch_1
    check-cast v0, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 73
    .line 74
    .line 75
    new-instance v2, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 76
    .line 77
    iget-object v3, v0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 78
    .line 79
    check-cast v4, Ljava/lang/String;

    .line 80
    .line 81
    iget-object v5, v0, Lcom/fsck/k9/mailstore/LocalFolder;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 82
    .line 83
    invoke-direct {v2, v3, v4, v0, v5}, Lcom/fsck/k9/mailstore/LocalMessage;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalFolder;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 84
    .line 85
    .line 86
    :try_start_0
    const-string v3, "SELECT subject, sender_list, date, uid, flags, messages.id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, messages.message_id, folder_id, preview, threads.id, threads.root, deleted, read, flagged, answered, forwarded, message_part_id, messages.mime_type, preview_type, header FROM messages LEFT JOIN message_parts ON (message_parts.id = messages.message_part_id) LEFT JOIN threads ON (threads.message_id = messages.id) WHERE uid = ? AND folder_id = ?"

    .line 87
    .line 88
    iget-object v4, v2, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 89
    .line 90
    iget-wide v5, v0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 91
    .line 92
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 101
    .line 102
    .line 103
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 105
    .line 106
    .line 107
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    if-nez v0, :cond_0

    .line 109
    .line 110
    sget-object v0, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 111
    .line 112
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->populateFromGetMessageCursor(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .line 118
    .line 119
    sget-object v0, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 120
    .line 121
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 122
    .line 123
    .line 124
    move-object v10, v2

    .line 125
    :goto_0
    return-object v10

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    move-object v10, v1

    .line 128
    goto :goto_1

    .line 129
    :catchall_1
    move-exception v0

    .line 130
    :goto_1
    invoke-static {v10}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :pswitch_2
    move-object v9, v4

    .line 135
    check-cast v9, Ljava/util/List;

    .line 136
    .line 137
    move-object v10, v0

    .line 138
    check-cast v10, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 139
    .line 140
    invoke-virtual {v10}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 141
    .line 142
    .line 143
    new-instance v11, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    new-instance v12, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    new-instance v13, Ljava/util/HashSet;

    .line 154
    .line 155
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 156
    .line 157
    .line 158
    move v14, v8

    .line 159
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-ge v14, v0, :cond_6

    .line 164
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v2, "folder_id = ? AND UID IN ("

    .line 168
    .line 169
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-wide v2, v10, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 173
    .line 174
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    sub-int/2addr v2, v14

    .line 186
    const/16 v3, 0x1f4

    .line 187
    .line 188
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    add-int v15, v2, v14

    .line 193
    .line 194
    move v2, v14

    .line 195
    :goto_3
    if-ge v2, v15, :cond_2

    .line 196
    .line 197
    if-le v2, v14, :cond_1

    .line 198
    .line 199
    const-string v3, ",?"

    .line 200
    .line 201
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_1
    const-string v3, "?"

    .line 206
    .line 207
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    :goto_4
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    check-cast v3, Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    add-int/lit8 v2, v2, 0x1

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_2
    const-string v2, ")"

    .line 223
    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    sget-object v0, Lcom/fsck/k9/mailstore/LocalStore;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    move-object v4, v0

    .line 238
    check-cast v4, [Ljava/lang/String;

    .line 239
    .line 240
    const/4 v6, 0x0

    .line 241
    const/4 v7, 0x0

    .line 242
    const-string v1, "messages"

    .line 243
    .line 244
    sget-object v2, Lcom/fsck/k9/mailstore/LocalStore;->UID_CHECK_PROJECTION:[Ljava/lang/String;

    .line 245
    .line 246
    const/4 v5, 0x0

    .line 247
    move-object/from16 v0, p1

    .line 248
    .line 249
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    :goto_5
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_3

    .line 258
    .line 259
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 264
    .line 265
    .line 266
    goto :goto_5

    .line 267
    :catchall_2
    move-exception v0

    .line 268
    goto :goto_7

    .line 269
    :cond_3
    sget-object v0, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 270
    .line 271
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 272
    .line 273
    .line 274
    :goto_6
    if-ge v14, v15, :cond_5

    .line 275
    .line 276
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    check-cast v0, Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-nez v1, :cond_4

    .line 287
    .line 288
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_5
    invoke-virtual {v13}, Ljava/util/HashSet;->clear()V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 298
    .line 299
    .line 300
    move-object/from16 v1, p1

    .line 301
    .line 302
    move v14, v15

    .line 303
    goto/16 :goto_2

    .line 304
    .line 305
    :goto_7
    invoke-static {v1}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 306
    .line 307
    .line 308
    throw v0

    .line 309
    :cond_6
    return-object v11

    .line 310
    :pswitch_3
    check-cast v4, [Ljava/lang/String;

    .line 311
    .line 312
    move-object v12, v0

    .line 313
    check-cast v12, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 314
    .line 315
    iget-object v11, v12, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 316
    .line 317
    const-string v0, "message_part_id"

    .line 318
    .line 319
    filled-new-array {v0}, [Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    const/4 v6, 0x0

    .line 324
    const/4 v7, 0x0

    .line 325
    const-string v1, "messages"

    .line 326
    .line 327
    const-string v3, "folder_id = ? AND empty = 0"

    .line 328
    .line 329
    const/4 v5, 0x0

    .line 330
    move-object/from16 v0, p1

    .line 331
    .line 332
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    move-object v2, v0

    .line 337
    :goto_8
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    const/4 v3, 0x1

    .line 342
    if-eqz v0, :cond_7

    .line 343
    .line 344
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 345
    .line 346
    .line 347
    move-result-wide v5

    .line 348
    iget-object v0, v11, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 349
    .line 350
    new-instance v7, Lcom/fsck/k9/mailstore/LocalFolder$6;

    .line 351
    .line 352
    invoke-direct {v7, v12, v5, v6, v3}, Lcom/fsck/k9/mailstore/LocalFolder$6;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;JI)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v8, v7}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 356
    .line 357
    .line 358
    goto :goto_8

    .line 359
    :catchall_3
    move-exception v0

    .line 360
    goto :goto_9

    .line 361
    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 362
    .line 363
    .line 364
    const-string v0, "DELETE FROM threads WHERE message_id IN (SELECT id FROM messages WHERE folder_id = ?)"

    .line 365
    .line 366
    invoke-virtual {v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    const-string v0, "DELETE FROM messages WHERE folder_id = ?"

    .line 370
    .line 371
    invoke-virtual {v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    const-string v0, "DELETE FROM folder_extra_values WHERE folder_id = ?"

    .line 375
    .line 376
    invoke-virtual {v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    iput v3, v12, Lcom/fsck/k9/mailstore/LocalFolder;->moreMessages:I

    .line 380
    .line 381
    iget-object v0, v11, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 382
    .line 383
    new-instance v11, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 384
    .line 385
    const/16 v16, 0x17

    .line 386
    .line 387
    const/4 v15, 0x0

    .line 388
    const-string v13, "more_messages"

    .line 389
    .line 390
    const-string v14, "unknown"

    .line 391
    .line 392
    invoke-direct/range {v11 .. v16}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v8, v11}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    const-wide/16 v0, 0x0

    .line 399
    .line 400
    iput-wide v0, v12, Lcom/fsck/k9/mailstore/LocalFolder;->lastChecked:J

    .line 401
    .line 402
    new-instance v0, Landroid/content/ContentValues;

    .line 403
    .line 404
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 405
    .line 406
    .line 407
    const-string v1, "last_updated"

    .line 408
    .line 409
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    iget-wide v3, v12, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 413
    .line 414
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    filled-new-array {v1}, [Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    const-string v3, "folders"

    .line 423
    .line 424
    invoke-virtual {v2, v3, v0, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    return-object v10

    .line 428
    :goto_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 429
    .line 430
    .line 431
    throw v0

    .line 432
    :pswitch_4
    move-object v2, v1

    .line 433
    check-cast v4, Landroid/content/ContentValues;

    .line 434
    .line 435
    check-cast v0, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 436
    .line 437
    iget-wide v0, v0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 438
    .line 439
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    filled-new-array {v0}, [Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-virtual {v2, v3, v4, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    return-object v10

    .line 451
    :pswitch_5
    move-object v2, v1

    .line 452
    check-cast v4, Ljava/util/LinkedList;

    .line 453
    .line 454
    :try_start_5
    const-string v1, "SELECT folders.id, name, visible_limit, last_updated, status, integrate, top_group, sync_enabled, visible, notifications_enabled, more_messages, server_id, local_only, type FROM folders ORDER BY name ASC"

    .line 455
    .line 456
    invoke-virtual {v2, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 457
    .line 458
    .line 459
    move-result-object v10

    .line 460
    :goto_a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    if-eqz v1, :cond_9

    .line 465
    .line 466
    invoke-interface {v10, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    if-eqz v1, :cond_8

    .line 471
    .line 472
    goto :goto_a

    .line 473
    :cond_8
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 474
    .line 475
    .line 476
    move-result-wide v1

    .line 477
    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 478
    .line 479
    move-object v5, v0

    .line 480
    check-cast v5, Lcom/fsck/k9/mailstore/LocalStore;

    .line 481
    .line 482
    invoke-direct {v3, v5, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v3, v10}, Lcom/fsck/k9/mailstore/LocalFolder;->open(Landroid/database/Cursor;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 489
    .line 490
    .line 491
    goto :goto_a

    .line 492
    :catchall_4
    move-exception v0

    .line 493
    goto :goto_b

    .line 494
    :cond_9
    sget-object v0, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 495
    .line 496
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 497
    .line 498
    .line 499
    return-object v4

    .line 500
    :goto_b
    invoke-static {v10}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 501
    .line 502
    .line 503
    throw v0

    .line 504
    nop

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getAttachmentDirectory()Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, ".db_att"

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public getDatabaseFile()Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, ".db"

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public getFolderId()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;

    .line 4
    .line 5
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getFolderId()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getFromAddresses()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;

    .line 4
    .line 5
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getFromAddresses()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getHasAttachments()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;

    .line 4
    .line 5
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getHasAttachments()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;

    .line 4
    .line 5
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getId()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getInternalDate()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;

    .line 4
    .line 5
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getInternalDate()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getMessageDate()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;

    .line 4
    .line 5
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getMessageDate()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getMessageServerId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;

    .line 4
    .line 5
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getMessageServerId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getPreview()Lokio/PriorityQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;

    .line 4
    .line 5
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getPreview()Lokio/PriorityQueue;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;

    .line 4
    .line 5
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getSubject()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getThreadCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;

    .line 4
    .line 5
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getThreadCount()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getThreadRoot()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;

    .line 4
    .line 5
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getThreadRoot()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getToAddresses()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;

    .line 4
    .line 5
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getToAddresses()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public incrementSendAttempts(J)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 4
    .line 5
    new-instance v0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p1, p2}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;-><init>(IJ)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public isAnswered()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/mailstore/MessageListCache;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;

    .line 8
    .line 9
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getId()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    sget-object v3, Lnet/thunderbird/core/common/mail/Flag;->ANSWERED:Lnet/thunderbird/core/common/mail/Flag;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mailstore/MessageListCache;->getFlagForMessage(JLnet/thunderbird/core/common/mail/Flag;)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getThreadRoot()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mailstore/MessageListCache;->getFlagForThread(JLnet/thunderbird/core/common/mail/Flag;)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_1
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->isAnswered()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method public isForwarded()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/mailstore/MessageListCache;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;

    .line 8
    .line 9
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getId()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    sget-object v3, Lnet/thunderbird/core/common/mail/Flag;->FORWARDED:Lnet/thunderbird/core/common/mail/Flag;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mailstore/MessageListCache;->getFlagForMessage(JLnet/thunderbird/core/common/mail/Flag;)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getThreadRoot()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mailstore/MessageListCache;->getFlagForThread(JLnet/thunderbird/core/common/mail/Flag;)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_1
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->isForwarded()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method public isRead()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/mailstore/MessageListCache;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;

    .line 8
    .line 9
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getId()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    sget-object v3, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mailstore/MessageListCache;->getFlagForMessage(JLnet/thunderbird/core/common/mail/Flag;)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getThreadRoot()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mailstore/MessageListCache;->getFlagForThread(JLnet/thunderbird/core/common/mail/Flag;)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_1
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->isRead()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method public isStarred()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/mailstore/MessageListCache;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;

    .line 8
    .line 9
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getId()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    sget-object v3, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mailstore/MessageListCache;->getFlagForMessage(JLnet/thunderbird/core/common/mail/Flag;)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getThreadRoot()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/mailstore/MessageListCache;->getFlagForThread(JLnet/thunderbird/core/common/mail/Flag;)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_1
    invoke-interface {p0}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->isStarred()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method public map(Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-interface {p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getId()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getFolderId()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Lcom/fsck/k9/mailstore/MessageListCache;

    .line 12
    .line 13
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/fsck/k9/mailstore/MessageListCache;->isMessageHidden(JJ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    invoke-direct {v0, v1, v4, p1}, Lcom/fsck/k9/mailstore/LocalStore$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lapp/k9mail/legacy/mailstore/MessageMapper;

    .line 30
    .line 31
    invoke-interface {p0, v0}, Lapp/k9mail/legacy/mailstore/MessageMapper;->map(Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public notifyChange()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/mailstore/LocalStore;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public removeOutboxState(J)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 4
    .line 5
    new-instance v0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-direct {v0, v1, p1, p2}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;-><init>(IJ)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setSendAttemptError(JLjava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lkotlin/time/Clock;

    .line 7
    .line 8
    invoke-interface {v0}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lkotlin/time/Instant;->toEpochMilliseconds()J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 19
    .line 20
    new-instance v1, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;

    .line 21
    .line 22
    move-wide v2, p1

    .line 23
    move-object v6, p3

    .line 24
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;-><init>(JJLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-void
.end method

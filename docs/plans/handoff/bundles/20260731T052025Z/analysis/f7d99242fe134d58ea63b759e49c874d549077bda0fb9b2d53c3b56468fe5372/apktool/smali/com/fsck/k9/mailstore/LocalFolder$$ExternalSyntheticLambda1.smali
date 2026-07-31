.class public final synthetic Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/legacy/mailstore/FolderMapper;
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;Lnet/thunderbird/core/android/account/LegacyAccountDto;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;->f$1:J

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder;J)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v5, v0

    .line 4
    check-cast v5, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 5
    .line 6
    invoke-virtual {v5}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 10
    .line 11
    iget-object v2, v5, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 12
    .line 13
    iget-object v6, v5, Lcom/fsck/k9/mailstore/LocalFolder;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 14
    .line 15
    iget-wide v3, p0, Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;->f$1:J

    .line 16
    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/mailstore/LocalMessage;-><init>(Lcom/fsck/k9/mailstore/LocalStore;JLcom/fsck/k9/mailstore/LocalFolder;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget-wide v2, v5, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 25
    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v0, "SELECT subject, sender_list, date, uid, flags, messages.id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, messages.message_id, folder_id, preview, threads.id, threads.root, deleted, read, flagged, answered, forwarded, message_part_id, messages.mime_type, preview_type, header FROM messages LEFT JOIN message_parts ON (message_parts.id = messages.message_part_id) LEFT JOIN threads ON (threads.message_id = messages.id) WHERE messages.id = ? AND folder_id = ?"

    .line 35
    .line 36
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1, p0}, Lcom/fsck/k9/mailstore/LocalMessage;->populateFromGetMessageCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    sget-object p1, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    .line 51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    move-object p1, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    sget-object p1, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 59
    .line 60
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    return-object p0

    .line 65
    :goto_0
    invoke-static {p0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public map(Lokhttp3/ConnectionPool;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 6
    .line 7
    move-object/from16 v2, p1

    .line 8
    .line 9
    iget-object v3, v2, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Landroid/database/Cursor;

    .line 12
    .line 13
    invoke-virtual {v2}, Lokhttp3/ConnectionPool;->getId()J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    invoke-virtual {v2}, Lokhttp3/ConnectionPool;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-virtual {v2}, Lokhttp3/ConnectionPool;->getId()J

    .line 22
    .line 23
    .line 24
    move-result-wide v8

    .line 25
    iget-wide v10, v0, Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;->f$1:J

    .line 26
    .line 27
    cmp-long v0, v8, v10

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    move-object v0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v0, v4

    .line 35
    :goto_0
    sget-object v8, Lnet/thunderbird/feature/mail/folder/api/FolderType;->REGULAR:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 36
    .line 37
    sget-object v9, Lnet/thunderbird/feature/mail/folder/api/FolderType;->INBOX:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 38
    .line 39
    sget-object v10, Lnet/thunderbird/feature/mail/folder/api/FolderType;->DRAFTS:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 40
    .line 41
    sget-object v11, Lnet/thunderbird/feature/mail/folder/api/FolderType;->SENT:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 42
    .line 43
    sget-object v12, Lnet/thunderbird/feature/mail/folder/api/FolderType;->TRASH:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 44
    .line 45
    sget-object v13, Lnet/thunderbird/feature/mail/folder/api/FolderType;->SPAM:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 46
    .line 47
    sget-object v14, Lnet/thunderbird/feature/mail/folder/api/FolderType;->ARCHIVE:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, v0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Landroid/database/Cursor;

    .line 54
    .line 55
    const/4 v2, 0x2

    .line 56
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Landroidx/room/util/SchemaInfoUtilKt;->fromDatabaseFolderType(Ljava/lang/String;)Lcom/fsck/k9/mail/FolderType;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    packed-switch v0, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 75
    .line 76
    .line 77
    return-object v4

    .line 78
    :goto_1
    :pswitch_0
    move-object v8, v14

    .line 79
    goto/16 :goto_c

    .line 80
    .line 81
    :goto_2
    :pswitch_1
    move-object v8, v13

    .line 82
    goto/16 :goto_c

    .line 83
    .line 84
    :goto_3
    :pswitch_2
    move-object v8, v12

    .line 85
    goto/16 :goto_c

    .line 86
    .line 87
    :goto_4
    :pswitch_3
    move-object v8, v11

    .line 88
    goto/16 :goto_c

    .line 89
    .line 90
    :goto_5
    :pswitch_4
    move-object v8, v10

    .line 91
    goto/16 :goto_c

    .line 92
    .line 93
    :pswitch_5
    sget-object v8, Lnet/thunderbird/feature/mail/folder/api/FolderType;->OUTBOX:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 94
    .line 95
    goto/16 :goto_c

    .line 96
    .line 97
    :goto_6
    :pswitch_6
    move-object v8, v9

    .line 98
    goto/16 :goto_c

    .line 99
    .line 100
    :cond_1
    invoke-virtual {v2}, Lokhttp3/ConnectionPool;->getId()J

    .line 101
    .line 102
    .line 103
    move-result-wide v15

    .line 104
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getInboxFolderId()Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-nez v0, :cond_2

    .line 112
    .line 113
    goto :goto_7

    .line 114
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 115
    .line 116
    .line 117
    move-result-wide v17

    .line 118
    cmp-long v0, v15, v17

    .line 119
    .line 120
    if-nez v0, :cond_3

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_3
    :goto_7
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSentFolderId()Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-nez v0, :cond_4

    .line 128
    .line 129
    goto :goto_8

    .line 130
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 131
    .line 132
    .line 133
    move-result-wide v17

    .line 134
    cmp-long v0, v15, v17

    .line 135
    .line 136
    if-nez v0, :cond_5

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_5
    :goto_8
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getTrashFolderId()Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-nez v0, :cond_6

    .line 144
    .line 145
    goto :goto_9

    .line 146
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 147
    .line 148
    .line 149
    move-result-wide v17

    .line 150
    cmp-long v0, v15, v17

    .line 151
    .line 152
    if-nez v0, :cond_7

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    :goto_9
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDraftsFolderId()Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-nez v0, :cond_8

    .line 160
    .line 161
    goto :goto_a

    .line 162
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 163
    .line 164
    .line 165
    move-result-wide v11

    .line 166
    cmp-long v0, v15, v11

    .line 167
    .line 168
    if-nez v0, :cond_9

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_9
    :goto_a
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getArchiveFolderId()Ljava/lang/Long;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-nez v0, :cond_a

    .line 176
    .line 177
    goto :goto_b

    .line 178
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 179
    .line 180
    .line 181
    move-result-wide v9

    .line 182
    cmp-long v0, v15, v9

    .line 183
    .line 184
    if-nez v0, :cond_b

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_b
    :goto_b
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSpamFolderId()Ljava/lang/Long;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    if-nez v0, :cond_c

    .line 192
    .line 193
    goto :goto_c

    .line 194
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 195
    .line 196
    .line 197
    move-result-wide v9

    .line 198
    cmp-long v0, v15, v9

    .line 199
    .line 200
    if-nez v0, :cond_d

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_d
    :goto_c
    :pswitch_7
    const/4 v0, 0x4

    .line 204
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    const/4 v2, 0x0

    .line 209
    const/4 v10, 0x1

    .line 210
    if-ne v0, v10, :cond_e

    .line 211
    .line 212
    move v9, v10

    .line 213
    goto :goto_d

    .line 214
    :cond_e
    move v9, v2

    .line 215
    :goto_d
    new-instance v4, Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 216
    .line 217
    invoke-direct/range {v4 .. v9}, Lnet/thunderbird/feature/mail/folder/api/Folder;-><init>(JLjava/lang/String;Lnet/thunderbird/feature/mail/folder/api/FolderType;Z)V

    .line 218
    .line 219
    .line 220
    const/4 v0, 0x5

    .line 221
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-ne v0, v10, :cond_f

    .line 226
    .line 227
    move v13, v10

    .line 228
    goto :goto_e

    .line 229
    :cond_f
    move v13, v2

    .line 230
    :goto_e
    const/16 v0, 0xe

    .line 231
    .line 232
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 233
    .line 234
    .line 235
    move-result v14

    .line 236
    const/16 v0, 0xf

    .line 237
    .line 238
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 239
    .line 240
    .line 241
    move-result v15

    .line 242
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->folderPathDelimiter()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v16

    .line 246
    new-instance v11, Lapp/k9mail/legacy/ui/folder/DisplayFolder;

    .line 247
    .line 248
    move-object v12, v4

    .line 249
    invoke-direct/range {v11 .. v16}, Lapp/k9mail/legacy/ui/folder/DisplayFolder;-><init>(Lnet/thunderbird/feature/mail/folder/api/Folder;ZIILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    return-object v11

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
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

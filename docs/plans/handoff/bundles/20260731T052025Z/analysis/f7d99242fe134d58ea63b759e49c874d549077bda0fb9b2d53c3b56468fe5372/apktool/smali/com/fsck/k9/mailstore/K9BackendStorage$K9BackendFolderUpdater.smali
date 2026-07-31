.class public final Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final synthetic this$0:Lokhttp3/Dispatcher;


# direct methods
.method public constructor <init>(Lokhttp3/Dispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;->this$0:Lokhttp3/Dispatcher;

    .line 5
    .line 6
    iget-object p0, p1, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/fsck/k9/mailstore/BackendFoldersRefreshListener;

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/fsck/k9/mailstore/BackendFoldersRefreshListener;->onBeforeFolderListRefresh()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;->this$0:Lokhttp3/Dispatcher;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/fsck/k9/mailstore/BackendFoldersRefreshListener;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/fsck/k9/mailstore/BackendFoldersRefreshListener;->onAfterFolderListRefresh()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final createFolders(Ljava/util/List;)Ljava/util/Set;
    .locals 23

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    move-object/from16 v2, p1

    .line 15
    .line 16
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x1

    .line 32
    move-object/from16 v4, p0

    .line 33
    .line 34
    iget-object v5, v4, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;->this$0:Lokhttp3/Dispatcher;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/fsck/k9/backend/api/FolderInfo;

    .line 43
    .line 44
    new-instance v6, Lapp/k9mail/legacy/mailstore/CreateFolderInfo;

    .line 45
    .line 46
    iget-object v7, v2, Lcom/fsck/k9/backend/api/FolderInfo;->serverId:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v8, v2, Lcom/fsck/k9/backend/api/FolderInfo;->name:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/fsck/k9/backend/api/FolderInfo;->type:Lcom/fsck/k9/mail/FolderType;

    .line 51
    .line 52
    iget-object v5, v5, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v5, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v9, v5, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v9, Lcom/fsck/k9/Preferences;

    .line 62
    .line 63
    invoke-virtual {v9}, Lcom/fsck/k9/Preferences;->getStorage()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    iget-object v11, v5, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v11, Lnet/thunderbird/feature/account/AccountId;

    .line 70
    .line 71
    new-instance v12, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v13, "."

    .line 80
    .line 81
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    iget-object v5, v5, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v5, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 94
    .line 95
    invoke-virtual {v5, v11}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getByIdSync(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    if-eqz v5, :cond_1

    .line 100
    .line 101
    new-instance v13, Lapp/k9mail/legacy/mailstore/FolderSettings;

    .line 102
    .line 103
    iget v14, v5, Lnet/thunderbird/core/android/account/LegacyAccount;->displayCount:I

    .line 104
    .line 105
    const-string v5, ".visible"

    .line 106
    .line 107
    invoke-virtual {v12, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    invoke-virtual {v10, v11, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    const-string v3, ".syncEnabled"

    .line 116
    .line 117
    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    move-object/from16 p1, v1

    .line 122
    .line 123
    const/4 v1, 0x0

    .line 124
    invoke-virtual {v10, v11, v1}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 125
    .line 126
    .line 127
    move-result v16

    .line 128
    const-string v11, ".notificationsEnabled"

    .line 129
    .line 130
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v10, v4, v1}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 135
    .line 136
    .line 137
    move-result v17

    .line 138
    const-string v4, ".pushEnabled"

    .line 139
    .line 140
    move-object/from16 v21, v9

    .line 141
    .line 142
    invoke-virtual {v12, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-virtual {v10, v9, v1}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 147
    .line 148
    .line 149
    move-result v18

    .line 150
    const-string v9, ".inTopGroup"

    .line 151
    .line 152
    move-object/from16 v19, v13

    .line 153
    .line 154
    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v13

    .line 158
    invoke-virtual {v10, v13, v1}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 159
    .line 160
    .line 161
    move-result v13

    .line 162
    move-object/from16 v22, v0

    .line 163
    .line 164
    const-string v0, ".integrate"

    .line 165
    .line 166
    move/from16 v20, v13

    .line 167
    .line 168
    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    invoke-virtual {v10, v13, v1}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    move-object/from16 v13, v19

    .line 177
    .line 178
    move/from16 v19, v20

    .line 179
    .line 180
    move/from16 v20, v1

    .line 181
    .line 182
    invoke-direct/range {v13 .. v20}, Lapp/k9mail/legacy/mailstore/FolderSettings;-><init>(IZZZZZZ)V

    .line 183
    .line 184
    .line 185
    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/Preferences;->createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v12, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-virtual {v1, v5}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v1, v3}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v1, v3}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v12, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v1, v3}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v1, v3}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v1, v0}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->commit()Z

    .line 232
    .line 233
    .line 234
    invoke-direct {v6, v7, v8, v2, v13}, Lapp/k9mail/legacy/mailstore/CreateFolderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/FolderType;Lapp/k9mail/legacy/mailstore/FolderSettings;)V

    .line 235
    .line 236
    .line 237
    move-object/from16 v0, v22

    .line 238
    .line 239
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-object/from16 v1, p1

    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_1
    const-string v0, "Account not found: "

    .line 247
    .line 248
    invoke-static {v11, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const/4 v0, 0x0

    .line 252
    return-object v0

    .line 253
    :cond_2
    iget-object v1, v5, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v1, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 256
    .line 257
    iget-object v2, v1, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 258
    .line 259
    iget-object v2, v2, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v2, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 262
    .line 263
    iget-object v2, v2, Lcom/fsck/k9/storage/messages/K9MessageStore;->createFolderOperations:Lcom/google/zxing/BinaryBitmap;

    .line 264
    .line 265
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    new-instance v4, Lkotlin/collections/builders/SetBuilder;

    .line 269
    .line 270
    invoke-direct {v4}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    iget-object v5, v2, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v5, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 276
    .line 277
    new-instance v6, Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;

    .line 278
    .line 279
    const/4 v7, 0x4

    .line 280
    invoke-direct {v6, v0, v4, v2, v7}, Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5, v3, v6}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    invoke-static {v4}, Lorg/jsoup/helper/Validate;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v1}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->notifyFolderSettingsChanged()V

    .line 291
    .line 292
    .line 293
    return-object v0
.end method

.class public final synthetic Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$4:Ljava/lang/Object;

    .line 14
    .line 15
    iput-wide p5, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$2:J

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/util/List;)V
    .locals 1

    .line 18
    const/4 v0, 0x3

    iput v0, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$4:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    iput-wide p4, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$2:J

    iput-object p6, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 19
    iput p7, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$2:J

    iput-object p5, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    iput-object p6, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$4:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$4:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v4, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 19
    .line 20
    iget-wide v5, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$2:J

    .line 21
    .line 22
    iget-object p0, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/List;

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->enableProgressIndicator(Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 32
    .line 33
    invoke-virtual {v1, v4}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v7, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 38
    .line 39
    invoke-direct {v7, v1, v5, v6}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalFolder;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v4}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, v7, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v7, v4}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-nez v5, :cond_1

    .line 78
    .line 79
    invoke-interface {v0, v1, v4}, Lcom/fsck/k9/backend/api/Backend;->downloadMessageStructure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    if-eqz v3, :cond_4

    .line 84
    .line 85
    :goto_1
    invoke-virtual {v3, v2}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->enableProgressIndicator(Z)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    move-object p0, v0

    .line 91
    goto :goto_4

    .line 92
    :catch_0
    move-exception v0

    .line 93
    move-object p0, v0

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    :try_start_1
    new-instance p0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 96
    .line 97
    const-string v0, "Folder not found"

    .line 98
    .line 99
    invoke-direct {p0, v0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0
    :try_end_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :goto_2
    :try_start_2
    const-string v0, "Exception in loadSearchResults"

    .line 104
    .line 105
    new-array v1, v2, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-static {p0, v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .line 109
    .line 110
    if-eqz v3, :cond_4

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    :goto_3
    return-void

    .line 114
    :goto_4
    if-eqz v3, :cond_5

    .line 115
    .line 116
    invoke-virtual {v3, v2}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->enableProgressIndicator(Z)V

    .line 117
    .line 118
    .line 119
    :cond_5
    throw p0

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 123
    .line 124
    iget-object v3, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v3, Ljava/lang/String;

    .line 127
    .line 128
    iget-wide v4, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$2:J

    .line 129
    .line 130
    iget-object v6, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v6, Ljava/lang/String;

    .line 133
    .line 134
    iget-object p0, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$4:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p0, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 137
    .line 138
    iget-object v7, v0, Lcom/fsck/k9/controller/MessagingController;->preferences:Lcom/fsck/k9/Preferences;

    .line 139
    .line 140
    invoke-virtual {v7, v3}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    if-eqz p0, :cond_6

    .line 145
    .line 146
    invoke-virtual {p0}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->remoteSearchStarted()V

    .line 147
    .line 148
    .line 149
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    :try_start_3
    iget-object v9, v0, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 155
    .line 156
    invoke-virtual {v9, v7}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    new-instance v10, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 161
    .line 162
    invoke-direct {v10, v9, v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v10}, Lcom/fsck/k9/mailstore/LocalFolder;->exists()Z

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    if-eqz v11, :cond_b

    .line 170
    .line 171
    invoke-virtual {v10}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 172
    .line 173
    .line 174
    iget-object v11, v10, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0, v7}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    monitor-enter v7

    .line 181
    monitor-exit v7

    .line 182
    invoke-interface {v12, v11, v6}, Lcom/fsck/k9/backend/api/Backend;->search(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    const-string v11, "Remote search got %d results"

    .line 187
    .line 188
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 189
    .line 190
    .line 191
    move-result v12

    .line 192
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    new-array v13, v1, [Ljava/lang/Object;

    .line 197
    .line 198
    aput-object v12, v13, v2

    .line 199
    .line 200
    invoke-static {v11, v13}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    iget-object v9, v9, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 204
    .line 205
    new-instance v11, Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 206
    .line 207
    const/4 v12, 0x7

    .line 208
    invoke-direct {v11, v12, v10, v6, v2}, Lcom/fsck/k9/mailstore/LocalStore$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v9, v2, v11}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    check-cast v6, Ljava/util/List;

    .line 216
    .line 217
    if-eqz p0, :cond_7

    .line 218
    .line 219
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    invoke-virtual {v7}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getRemoteSearchNumResults()I

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    invoke-virtual {p0, v9, v11}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->remoteSearchServerQueryComplete(II)V

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :catchall_1
    move-exception v0

    .line 232
    goto/16 :goto_b

    .line 233
    .line 234
    :catch_1
    move-exception v0

    .line 235
    goto :goto_8

    .line 236
    :cond_7
    :goto_5
    invoke-virtual {v7}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getRemoteSearchNumResults()I

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    if-lez v9, :cond_8

    .line 241
    .line 242
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 243
    .line 244
    .line 245
    move-result v11

    .line 246
    if-le v11, v9, :cond_8

    .line 247
    .line 248
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 249
    .line 250
    .line 251
    move-result v11

    .line 252
    invoke-interface {v6, v9, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    invoke-interface {v6, v2, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    :cond_8
    invoke-virtual {v0, v7}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    iget-object v9, v10, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 265
    .line 266
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    :cond_9
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v11

    .line 274
    if-eqz v11, :cond_a

    .line 275
    .line 276
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v11

    .line 280
    check-cast v11, Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v10, v11}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 283
    .line 284
    .line 285
    move-result-object v12

    .line 286
    if-nez v12, :cond_9

    .line 287
    .line 288
    invoke-interface {v0, v9, v11}, Lcom/fsck/k9/backend/api/Backend;->downloadMessageStructure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 289
    .line 290
    .line 291
    goto :goto_6

    .line 292
    :cond_a
    if-eqz p0, :cond_e

    .line 293
    .line 294
    :goto_7
    invoke-virtual {v7}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getRemoteSearchNumResults()I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    invoke-virtual {p0, v0, v8}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->remoteSearchFinished(ILjava/util/List;)V

    .line 299
    .line 300
    .line 301
    goto :goto_a

    .line 302
    :cond_b
    :try_start_4
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 303
    .line 304
    const-string v6, "Folder not found"

    .line 305
    .line 306
    invoke-direct {v0, v6}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 310
    :goto_8
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    if-eqz v6, :cond_c

    .line 319
    .line 320
    const-string v3, "Caught exception on aborted remote search; safe to ignore."

    .line 321
    .line 322
    new-array v2, v2, [Ljava/lang/Object;

    .line 323
    .line 324
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    new-instance v5, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;

    .line 329
    .line 330
    const/16 v6, 0x9

    .line 331
    .line 332
    invoke-direct {v5, v3, v2, v6}, Lnet/thunderbird/core/logging/legacy/Log$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    .line 333
    .line 334
    .line 335
    const/4 v2, 0x0

    .line 336
    invoke-static {v4, v2, v0, v5, v1}, Lkotlinx/io/Sink$-CC;->info$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 337
    .line 338
    .line 339
    goto :goto_9

    .line 340
    :cond_c
    const-string v6, "Could not complete remote search"

    .line 341
    .line 342
    new-array v9, v2, [Ljava/lang/Object;

    .line 343
    .line 344
    invoke-static {v0, v6, v9}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    if-eqz p0, :cond_d

    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->remoteSearchFailed()V

    .line 353
    .line 354
    .line 355
    :cond_d
    const-string v6, "Remote search failed for account %s, folder %d"

    .line 356
    .line 357
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    const/4 v5, 0x2

    .line 362
    new-array v5, v5, [Ljava/lang/Object;

    .line 363
    .line 364
    aput-object v3, v5, v2

    .line 365
    .line 366
    aput-object v4, v5, v1

    .line 367
    .line 368
    invoke-static {v0, v6, v5}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 369
    .line 370
    .line 371
    :goto_9
    if-eqz p0, :cond_e

    .line 372
    .line 373
    goto :goto_7

    .line 374
    :cond_e
    :goto_a
    return-void

    .line 375
    :goto_b
    if-eqz p0, :cond_f

    .line 376
    .line 377
    invoke-virtual {v7}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getRemoteSearchNumResults()I

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    invoke-virtual {p0, v1, v8}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->remoteSearchFinished(ILjava/util/List;)V

    .line 382
    .line 383
    .line 384
    :cond_f
    throw v0

    .line 385
    :pswitch_1
    iget-object v0, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    .line 388
    .line 389
    iget-object v1, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 390
    .line 391
    move-object v3, v1

    .line 392
    check-cast v3, Landroid/hardware/camera2/CameraCaptureSession;

    .line 393
    .line 394
    iget-object v1, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    .line 395
    .line 396
    move-object v4, v1

    .line 397
    check-cast v4, Landroid/hardware/camera2/CaptureRequest;

    .line 398
    .line 399
    iget-object v1, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$4:Ljava/lang/Object;

    .line 400
    .line 401
    move-object v5, v1

    .line 402
    check-cast v5, Landroid/view/Surface;

    .line 403
    .line 404
    iget-wide v6, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$2:J

    .line 405
    .line 406
    iget-object v2, v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 407
    .line 408
    invoke-static/range {v2 .. v7}, Landroidx/camera/camera2/compat/Api24Compat;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    .line 409
    .line 410
    .line 411
    return-void

    .line 412
    :pswitch_2
    iget-object v0, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v0, Lkotlin/jvm/functions/Function4;

    .line 415
    .line 416
    iget-object v1, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 417
    .line 418
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 419
    .line 420
    iget-wide v2, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$2:J

    .line 421
    .line 422
    iget-object v4, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v4, Ljava/util/List;

    .line 425
    .line 426
    iget-object p0, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;->f$4:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast p0, Ljava/lang/Long;

    .line 429
    .line 430
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-interface {v0, v1, v2, v4, p0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    nop

    .line 439
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

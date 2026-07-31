.class public final Lcom/fsck/k9/controller/MessagingController$3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field public final synthetic val$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/controller/MessagingController$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$3;->this$0:Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$3;->val$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/controller/MessagingController$3;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    const-string v3, "uid LIKE \'K9LOCAL:%\'"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    iget-object v5, v0, Lcom/fsck/k9/controller/MessagingController$3;->val$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 11
    .line 12
    iget-object v6, v0, Lcom/fsck/k9/controller/MessagingController$3;->this$0:Lcom/fsck/k9/controller/MessagingController;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getTrashFolderId()Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const-string v0, "No Trash folder configured. Can\'t empty trash."

    .line 25
    .line 26
    new-array v1, v7, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :catch_0
    move-exception v0

    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_0
    iget-object v1, v6, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 37
    .line 38
    invoke-virtual {v1, v5}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v8

    .line 46
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 47
    .line 48
    invoke-direct {v0, v1, v8, v9}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v5}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-interface {v8}, Lcom/fsck/k9/backend/api/Backend;->getSupportsTrashFolder()Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-nez v8, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->clearAllMessages()V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget-object v9, v0, Lcom/fsck/k9/mailstore/LocalFolder;->localMessageUidPrefixProvider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 69
    .line 70
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-object v1, v1, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 74
    .line 75
    new-instance v9, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    invoke-direct {v9, v2, v0, v3}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v7, v9}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 84
    .line 85
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v4}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessages(Z)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-eqz v9, :cond_2

    .line 124
    .line 125
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    check-cast v9, Lnet/thunderbird/core/common/mail/Flag;

    .line 130
    .line 131
    invoke-virtual {v2, v9, v4}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    :goto_1
    iget-object v0, v6, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_4

    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 152
    .line 153
    invoke-virtual {v1, v5}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->folderStatusChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    if-eqz v8, :cond_5

    .line 158
    .line 159
    invoke-static {}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingEmptyTrash;->create()Lcom/fsck/k9/controller/MessagingControllerCommands$PendingEmptyTrash;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v6, v5, v0}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v5}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :goto_3
    const-string v1, "emptyTrash failed"

    .line 171
    .line 172
    new-array v2, v7, [Ljava/lang/Object;

    .line 173
    .line 174
    invoke-static {v0, v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_5
    :goto_4
    return-void

    .line 178
    :pswitch_0
    :try_start_1
    invoke-virtual {v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSpamFolderId()Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    if-nez v0, :cond_6

    .line 183
    .line 184
    const-string v0, "No Spam folder configured. Can\'t empty spam."

    .line 185
    .line 186
    new-array v1, v7, [Ljava/lang/Object;

    .line 187
    .line 188
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_8

    .line 192
    .line 193
    :catch_1
    move-exception v0

    .line 194
    goto/16 :goto_7

    .line 195
    .line 196
    :cond_6
    iget-object v1, v6, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 197
    .line 198
    invoke-virtual {v1, v5}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 203
    .line 204
    .line 205
    move-result-wide v8

    .line 206
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 207
    .line 208
    invoke-direct {v0, v1, v8, v9}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 212
    .line 213
    .line 214
    iget-object v8, v0, Lcom/fsck/k9/mailstore/LocalFolder;->localMessageUidPrefixProvider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 215
    .line 216
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    iget-object v1, v1, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 220
    .line 221
    new-instance v8, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;

    .line 222
    .line 223
    invoke-direct {v8, v2, v0, v3}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v7, v8}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 230
    .line 231
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v4}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessages(Z)Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_8

    .line 251
    .line 252
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    check-cast v2, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    .line 267
    .line 268
    move-result v8

    .line 269
    if-eqz v8, :cond_7

    .line 270
    .line 271
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    check-cast v8, Lnet/thunderbird/core/common/mail/Flag;

    .line 276
    .line 277
    invoke-virtual {v2, v8, v4}, Lcom/fsck/k9/mailstore/LocalMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 278
    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_8
    iget-object v0, v6, Lcom/fsck/k9/controller/MessagingController;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_9

    .line 292
    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    check-cast v1, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 298
    .line 299
    invoke-virtual {v1, v5}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->folderStatusChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 300
    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_9
    invoke-static {}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingEmptySpam;->create()Lcom/fsck/k9/controller/MessagingControllerCommands$PendingEmptySpam;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v6, v5, v0}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v6, v5}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    .line 312
    .line 313
    goto :goto_8

    .line 314
    :goto_7
    const-string v1, "emptySpam failed"

    .line 315
    .line 316
    new-array v2, v7, [Ljava/lang/Object;

    .line 317
    .line 318
    invoke-static {v0, v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    :goto_8
    return-void

    .line 322
    :pswitch_1
    iget-object v0, v6, Lcom/fsck/k9/controller/MessagingController;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 323
    .line 324
    iget-object v1, v5, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    new-instance v2, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 333
    .line 334
    const/4 v3, 0x3

    .line 335
    const/4 v8, 0x0

    .line 336
    invoke-direct {v2, v0, v1, v8, v3}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 337
    .line 338
    .line 339
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 340
    .line 341
    invoke-static {v0, v2}, Lkotlinx/coroutines/JobKt;->runBlockingK(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    check-cast v0, Ljava/lang/Boolean;

    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_d

    .line 352
    .line 353
    invoke-virtual {v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isNotifySync()Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_c

    .line 358
    .line 359
    iget-object v0, v6, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    iget-object v0, v0, Lcom/fsck/k9/notification/NotificationController;->syncNotificationController:Lcom/fsck/k9/notification/SyncNotificationController;

    .line 365
    .line 366
    iget-object v1, v0, Lcom/fsck/k9/notification/SyncNotificationController;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 367
    .line 368
    invoke-virtual {v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    iget-object v3, v0, Lcom/fsck/k9/notification/SyncNotificationController;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 373
    .line 374
    iget-object v3, v3, Lcom/fsck/k9/notification/K9NotificationResourceProvider;->context:Landroid/content/Context;

    .line 375
    .line 376
    const v9, 0x7f1204f4

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v10

    .line 383
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    new-array v11, v4, [Ljava/lang/Object;

    .line 387
    .line 388
    aput-object v2, v11, v7

    .line 389
    .line 390
    const v7, 0x7f1204f3

    .line 391
    .line 392
    .line 393
    invoke-virtual {v3, v7, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 401
    .line 402
    .line 403
    move-result v11

    .line 404
    mul-int/lit8 v11, v11, 0x10

    .line 405
    .line 406
    add-int/lit8 v11, v11, 0x8

    .line 407
    .line 408
    iget-object v12, v0, Lcom/fsck/k9/notification/SyncNotificationController;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 409
    .line 410
    iget-object v13, v5, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 411
    .line 412
    invoke-static {v12, v13}, Lkotlinx/io/Sink$-CC;->getOutboxFolderIdSync$default(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;)J

    .line 413
    .line 414
    .line 415
    move-result-wide v12

    .line 416
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 417
    .line 418
    .line 419
    move-result-object v14

    .line 420
    const-wide/16 v15, -0x1

    .line 421
    .line 422
    cmp-long v12, v12, v15

    .line 423
    .line 424
    if-eqz v12, :cond_a

    .line 425
    .line 426
    move-object v8, v14

    .line 427
    :cond_a
    if-eqz v8, :cond_b

    .line 428
    .line 429
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 430
    .line 431
    .line 432
    move-result-wide v12

    .line 433
    iget-object v0, v0, Lcom/fsck/k9/notification/SyncNotificationController;->actionBuilder:Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 434
    .line 435
    invoke-virtual {v0, v5, v12, v13}, Lcom/fsck/k9/notification/K9NotificationActionCreator;->createViewFolderPendingIntent(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Landroid/app/PendingIntent;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    sget-object v8, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MISCELLANEOUS:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 440
    .line 441
    invoke-virtual {v1, v5, v8}, Lcom/fsck/k9/notification/NotificationHelper;->createNotificationBuilder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Landroidx/core/app/NotificationCompat$Builder;

    .line 442
    .line 443
    .line 444
    move-result-object v12

    .line 445
    iget-object v13, v12, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 446
    .line 447
    const v14, 0x7f08011c

    .line 448
    .line 449
    .line 450
    iput v14, v13, Landroid/app/Notification;->icon:I

    .line 451
    .line 452
    invoke-virtual {v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 453
    .line 454
    .line 455
    move-result v15

    .line 456
    iput v15, v12, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 457
    .line 458
    move-object v15, v10

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 460
    .line 461
    .line 462
    move-result-wide v9

    .line 463
    iput-wide v9, v13, Landroid/app/Notification;->when:J

    .line 464
    .line 465
    const/4 v9, 0x2

    .line 466
    invoke-virtual {v12, v9, v4}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v12, v7}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)V

    .line 470
    .line 471
    .line 472
    invoke-static {v15}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    iput-object v4, v12, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 477
    .line 478
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    iput-object v2, v12, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 483
    .line 484
    iput-object v0, v12, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 485
    .line 486
    invoke-virtual {v1, v5, v8}, Lcom/fsck/k9/notification/NotificationHelper;->createNotificationBuilder(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Landroidx/core/app/NotificationCompat$Builder;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    iget-object v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 491
    .line 492
    iput v14, v2, Landroid/app/Notification;->icon:I

    .line 493
    .line 494
    invoke-virtual {v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    iput v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 499
    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 501
    .line 502
    .line 503
    move-result-wide v7

    .line 504
    iput-wide v7, v2, Landroid/app/Notification;->when:J

    .line 505
    .line 506
    const v2, 0x7f1204f4

    .line 507
    .line 508
    .line 509
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    .line 515
    .line 516
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    iput-object v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 521
    .line 522
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    iput-object v0, v12, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 530
    .line 531
    invoke-virtual {v12}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1, v11, v0}, Lcom/fsck/k9/notification/NotificationHelper;->notify(ILandroid/app/Notification;)V

    .line 539
    .line 540
    .line 541
    goto :goto_9

    .line 542
    :cond_b
    const-string v0, "Outbox folder not configured"

    .line 543
    .line 544
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    goto :goto_a

    .line 548
    :cond_c
    :goto_9
    :try_start_2
    invoke-virtual {v6, v5}, Lcom/fsck/k9/controller/MessagingController;->sendPendingMessagesSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 549
    .line 550
    .line 551
    invoke-static {v6, v5}, Lcom/fsck/k9/controller/MessagingController;->-$$Nest$mclearSendingNotificationIfNecessary(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 552
    .line 553
    .line 554
    goto :goto_a

    .line 555
    :catchall_0
    move-exception v0

    .line 556
    invoke-static {v6, v5}, Lcom/fsck/k9/controller/MessagingController;->-$$Nest$mclearSendingNotificationIfNecessary(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 557
    .line 558
    .line 559
    throw v0

    .line 560
    :cond_d
    :goto_a
    return-void

    .line 561
    :pswitch_2
    new-array v0, v4, [Ljava/lang/Object;

    .line 562
    .line 563
    aput-object v5, v0, v7

    .line 564
    .line 565
    const-string v1, "Clearing notification flag for %s"

    .line 566
    .line 567
    invoke-static {v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    iget-object v0, v6, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 571
    .line 572
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    .line 577
    .line 578
    iget-object v0, v0, Lcom/fsck/k9/notification/NotificationController;->syncNotificationController:Lcom/fsck/k9/notification/SyncNotificationController;

    .line 579
    .line 580
    invoke-virtual {v5}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    mul-int/lit8 v1, v1, 0x10

    .line 585
    .line 586
    add-int/lit8 v1, v1, 0x8

    .line 587
    .line 588
    iget-object v0, v0, Lcom/fsck/k9/notification/SyncNotificationController;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 589
    .line 590
    iget-object v0, v0, Lcom/fsck/k9/notification/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 591
    .line 592
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 593
    .line 594
    .line 595
    return-void

    .line 596
    :pswitch_3
    :try_start_3
    invoke-virtual {v6, v5}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommandsSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    :try_end_3
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_3 .. :try_end_3} :catch_2

    .line 597
    .line 598
    .line 599
    goto :goto_b

    .line 600
    :catch_2
    move-exception v0

    .line 601
    const-string v1, "processPendingCommands"

    .line 602
    .line 603
    new-array v2, v7, [Ljava/lang/Object;

    .line 604
    .line 605
    invoke-static {v0, v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    :goto_b
    return-void

    .line 609
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

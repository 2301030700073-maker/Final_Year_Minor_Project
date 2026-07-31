.class public final synthetic Landroidx/room/RoomDatabase$closeBarrier$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1
    iput p7, p0, Landroidx/room/RoomDatabase$closeBarrier$1;->$r8$classId:I

    .line 2
    .line 3
    move-object v0, p4

    .line 4
    move-object p4, p2

    .line 5
    move p2, p6

    .line 6
    move-object p6, p5

    .line 7
    move-object p5, v0

    .line 8
    invoke-direct/range {p0 .. p6}, Lkotlin/jvm/internal/FunctionReference;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/room/RoomDatabase$closeBarrier$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x3

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment;

    .line 18
    .line 19
    invoke-virtual {v0, v6, v6}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_0
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;

    .line 28
    .line 29
    iget-boolean v1, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->dragDidMove:Z

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iget-object v3, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->draggedOffsetY$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->draggedKey$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 38
    .line 39
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-boolean v6, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->dragDidMove:Z

    .line 43
    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->notifyStateChanged()V

    .line 48
    .line 49
    .line 50
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    .line 52
    return-object v0

    .line 53
    :pswitch_1
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 54
    .line 55
    move-object v1, v0

    .line 56
    check-cast v1, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;

    .line 57
    .line 58
    monitor-enter v1

    .line 59
    :try_start_0
    const-string v0, "%s.idleRefresh()"

    .line 60
    .line 61
    iget-object v2, v1, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->logTag:Ljava/lang/String;

    .line 62
    .line 63
    new-array v3, v4, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v2, v3, v6

    .line 66
    .line 67
    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-boolean v0, v1, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->idleSent:Z

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-boolean v0, v1, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->doneSent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->sendDone()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_4

    .line 85
    :catch_0
    move-exception v0

    .line 86
    :try_start_2
    const-string v2, "%s: IOException while sending DONE"

    .line 87
    .line 88
    iget-object v3, v1, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->logTag:Ljava/lang/String;

    .line 89
    .line 90
    new-array v4, v4, [Ljava/lang/Object;

    .line 91
    .line 92
    aput-object v3, v4, v6

    .line 93
    .line 94
    invoke-static {v0, v2, v4}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .line 96
    .line 97
    :goto_1
    monitor-exit v1

    .line 98
    goto :goto_3

    .line 99
    :cond_2
    :goto_2
    :try_start_3
    const-string v0, "%s: Connection is not in a state where it can be refreshed."

    .line 100
    .line 101
    iget-object v2, v1, Lcom/fsck/k9/mail/store/imap/RealImapFolderIdler;->logTag:Ljava/lang/String;

    .line 102
    .line 103
    new-array v3, v4, [Ljava/lang/Object;

    .line 104
    .line 105
    aput-object v2, v3, v6

    .line 106
    .line 107
    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    .line 109
    .line 110
    monitor-exit v1

    .line 111
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 112
    .line 113
    return-object v0

    .line 114
    :goto_4
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    throw v0

    .line 116
    :pswitch_2
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    const-string v1, "Refreshing ImapBackendPusher (at least one retry timer has expired)"

    .line 124
    .line 125
    new-array v2, v6, [Ljava/lang/Object;

    .line 126
    .line 127
    invoke-static {v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->updateFolders$1()V

    .line 131
    .line 132
    .line 133
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 134
    .line 135
    return-object v0

    .line 136
    :pswitch_3
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->onTimeout()V

    .line 141
    .line 142
    .line 143
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 144
    .line 145
    return-object v0

    .line 146
    :pswitch_4
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v0, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/fsck/k9/backend/imap/BackendIdleRefreshManager;->onTimeout()V

    .line 151
    .line 152
    .line 153
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 154
    .line 155
    return-object v0

    .line 156
    :pswitch_5
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    new-instance v2, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 168
    .line 169
    const/16 v3, 0xb

    .line 170
    .line 171
    invoke-direct {v2, v0, v7, v3}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 172
    .line 173
    .line 174
    invoke-static {v1, v7, v7, v2, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 175
    .line 176
    .line 177
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 178
    .line 179
    return-object v0

    .line 180
    :pswitch_6
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;

    .line 183
    .line 184
    sget-object v1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$RequestCameraPermission;->INSTANCE:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$RequestCameraPermission;

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 190
    .line 191
    return-object v0

    .line 192
    :pswitch_7
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity;

    .line 195
    .line 196
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 197
    .line 198
    .line 199
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 200
    .line 201
    return-object v0

    .line 202
    :pswitch_8
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    new-instance v2, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 214
    .line 215
    const/16 v3, 0x9

    .line 216
    .line 217
    invoke-direct {v2, v0, v7, v3}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 218
    .line 219
    .line 220
    invoke-static {v1, v7, v7, v2, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 221
    .line 222
    .line 223
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 224
    .line 225
    return-object v0

    .line 226
    :pswitch_9
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 227
    .line 228
    move-object v1, v0

    .line 229
    check-cast v1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsViewModel;

    .line 230
    .line 231
    iget-object v2, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 232
    .line 233
    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    move-object v3, v0

    .line 238
    check-cast v3, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    iget-object v3, v1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 244
    .line 245
    check-cast v3, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 246
    .line 247
    iget-object v3, v3, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 248
    .line 249
    invoke-static {v3}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt;->toSyncOptionsState(Lapp/k9mail/feature/account/common/domain/entity/AccountState;)Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v2, v0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_3

    .line 258
    .line 259
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 260
    .line 261
    return-object v0

    .line 262
    :pswitch_a
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsViewModel;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    new-instance v2, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 274
    .line 275
    invoke-direct {v2, v0, v7, v3}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 276
    .line 277
    .line 278
    invoke-static {v1, v7, v7, v2, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 279
    .line 280
    .line 281
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 282
    .line 283
    return-object v0

    .line 284
    :pswitch_b
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;

    .line 287
    .line 288
    iget-object v1, v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 289
    .line 290
    check-cast v1, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 291
    .line 292
    iget-object v1, v1, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 293
    .line 294
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    new-instance v3, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 299
    .line 300
    const/16 v4, 0x18

    .line 301
    .line 302
    invoke-direct {v3, v0, v1, v7, v4}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 303
    .line 304
    .line 305
    invoke-static {v2, v7, v7, v3, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 306
    .line 307
    .line 308
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 309
    .line 310
    return-object v0

    .line 311
    :pswitch_c
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 312
    .line 313
    move-object v1, v0

    .line 314
    check-cast v1, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;

    .line 315
    .line 316
    iget-object v2, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 317
    .line 318
    :cond_4
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    move-object v3, v0

    .line 323
    check-cast v3, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 324
    .line 325
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    iget-object v3, v1, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->accountStateRepository:Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;

    .line 329
    .line 330
    check-cast v3, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;

    .line 331
    .line 332
    iget-object v3, v3, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 333
    .line 334
    iget-boolean v4, v1, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->isIncomingValidation:Z

    .line 335
    .line 336
    invoke-static {v3, v4}, Landroidx/sqlite/SQLite;->toServerValidationState(Lapp/k9mail/feature/account/common/domain/entity/AccountState;Z)Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-virtual {v2, v0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-eqz v0, :cond_4

    .line 345
    .line 346
    invoke-virtual {v1}, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->onValidateConfig()V

    .line 347
    .line 348
    .line 349
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 350
    .line 351
    return-object v0

    .line 352
    :pswitch_d
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;

    .line 355
    .line 356
    invoke-virtual {v0}, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;->loadAccountState()V

    .line 357
    .line 358
    .line 359
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 360
    .line 361
    return-object v0

    .line 362
    :pswitch_e
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 363
    .line 364
    check-cast v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;

    .line 365
    .line 366
    invoke-virtual {v0}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;->loadAccountState()V

    .line 367
    .line 368
    .line 369
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 370
    .line 371
    return-object v0

    .line 372
    :pswitch_f
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;

    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    new-instance v2, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;

    .line 384
    .line 385
    invoke-direct {v2, v0, v7, v4}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel$updateSuccess$2;-><init>(Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 386
    .line 387
    .line 388
    invoke-static {v1, v7, v7, v2, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 389
    .line 390
    .line 391
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 392
    .line 393
    return-object v0

    .line 394
    :pswitch_10
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v0, Landroid/view/View;

    .line 397
    .line 398
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 399
    .line 400
    const/16 v2, 0x1e

    .line 401
    .line 402
    if-lt v1, v2, :cond_5

    .line 403
    .line 404
    invoke-static {v0}, Landroidx/core/os/BuildCompat$Api30Impl;->setImportantForContentCapture(Landroid/view/View;)V

    .line 405
    .line 406
    .line 407
    :cond_5
    const/16 v2, 0x1d

    .line 408
    .line 409
    if-lt v1, v2, :cond_7

    .line 410
    .line 411
    invoke-static {v0}, Landroidx/tracing/TraceApi29Impl;->getContentCaptureSession(Landroid/view/View;)Landroid/view/contentcapture/ContentCaptureSession;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    if-nez v1, :cond_6

    .line 416
    .line 417
    goto :goto_5

    .line 418
    :cond_6
    new-instance v7, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    .line 419
    .line 420
    invoke-direct {v7, v1, v0}, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;-><init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)V

    .line 421
    .line 422
    .line 423
    :cond_7
    :goto_5
    return-object v7

    .line 424
    :pswitch_11
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 425
    .line 426
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast v0, Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 429
    .line 430
    iget-object v5, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    .line 431
    .line 432
    iget-object v8, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    .line 433
    .line 434
    iget-object v9, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusOwner:Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 435
    .line 436
    invoke-virtual {v9}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 437
    .line 438
    .line 439
    move-result-object v10

    .line 440
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    if-nez v10, :cond_b

    .line 446
    .line 447
    iget-object v4, v8, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 448
    .line 449
    iget-object v7, v8, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 450
    .line 451
    array-length v10, v7

    .line 452
    add-int/lit8 v10, v10, -0x2

    .line 453
    .line 454
    if-ltz v10, :cond_18

    .line 455
    .line 456
    move v11, v6

    .line 457
    const-wide/16 v17, 0x80

    .line 458
    .line 459
    const-wide/16 v19, 0xff

    .line 460
    .line 461
    :goto_6
    aget-wide v13, v7, v11

    .line 462
    .line 463
    move-object/from16 p0, v7

    .line 464
    .line 465
    not-long v6, v13

    .line 466
    shl-long/2addr v6, v2

    .line 467
    and-long/2addr v6, v13

    .line 468
    and-long/2addr v6, v15

    .line 469
    cmp-long v6, v6, v15

    .line 470
    .line 471
    if-eqz v6, :cond_a

    .line 472
    .line 473
    sub-int v6, v11, v10

    .line 474
    .line 475
    not-int v6, v6

    .line 476
    ushr-int/lit8 v6, v6, 0x1f

    .line 477
    .line 478
    rsub-int/lit8 v6, v6, 0x8

    .line 479
    .line 480
    const/4 v7, 0x0

    .line 481
    :goto_7
    if-ge v7, v6, :cond_9

    .line 482
    .line 483
    and-long v21, v13, v19

    .line 484
    .line 485
    cmp-long v21, v21, v17

    .line 486
    .line 487
    if-gez v21, :cond_8

    .line 488
    .line 489
    shl-int/lit8 v21, v11, 0x3

    .line 490
    .line 491
    add-int v21, v21, v7

    .line 492
    .line 493
    aget-object v21, v4, v21

    .line 494
    .line 495
    move-object/from16 v12, v21

    .line 496
    .line 497
    check-cast v12, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 498
    .line 499
    invoke-interface {v12, v1}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 500
    .line 501
    .line 502
    :cond_8
    shr-long/2addr v13, v3

    .line 503
    add-int/lit8 v7, v7, 0x1

    .line 504
    .line 505
    goto :goto_7

    .line 506
    :cond_9
    if-ne v6, v3, :cond_18

    .line 507
    .line 508
    :cond_a
    if-eq v11, v10, :cond_18

    .line 509
    .line 510
    add-int/lit8 v11, v11, 0x1

    .line 511
    .line 512
    move-object/from16 v7, p0

    .line 513
    .line 514
    const/4 v6, 0x0

    .line 515
    goto :goto_6

    .line 516
    :cond_b
    const-wide/16 v17, 0x80

    .line 517
    .line 518
    const-wide/16 v19, 0xff

    .line 519
    .line 520
    iget-boolean v6, v10, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 521
    .line 522
    if-eqz v6, :cond_18

    .line 523
    .line 524
    invoke-virtual {v5, v10}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v6

    .line 528
    if-eqz v6, :cond_c

    .line 529
    .line 530
    invoke-virtual {v10}, Landroidx/compose/ui/focus/FocusTargetNode;->invalidateFocus$ui()V

    .line 531
    .line 532
    .line 533
    :cond_c
    invoke-virtual {v10}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 534
    .line 535
    .line 536
    move-result-object v6

    .line 537
    iget-object v11, v10, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 538
    .line 539
    iget-boolean v11, v11, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 540
    .line 541
    if-nez v11, :cond_d

    .line 542
    .line 543
    const-string/jumbo v11, "visitAncestors called on an unattached node"

    .line 544
    .line 545
    .line 546
    invoke-static {v11}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    :cond_d
    iget-object v11, v10, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 550
    .line 551
    invoke-static {v10}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 552
    .line 553
    .line 554
    move-result-object v10

    .line 555
    const/4 v12, 0x0

    .line 556
    :goto_8
    if-eqz v10, :cond_14

    .line 557
    .line 558
    iget-object v13, v10, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 559
    .line 560
    iget-object v13, v13, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 561
    .line 562
    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    .line 563
    .line 564
    iget v13, v13, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 565
    .line 566
    and-int/lit16 v13, v13, 0x1400

    .line 567
    .line 568
    if-eqz v13, :cond_12

    .line 569
    .line 570
    :goto_9
    if-eqz v11, :cond_12

    .line 571
    .line 572
    iget v13, v11, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 573
    .line 574
    and-int/lit16 v14, v13, 0x1400

    .line 575
    .line 576
    if-eqz v14, :cond_11

    .line 577
    .line 578
    and-int/lit16 v13, v13, 0x400

    .line 579
    .line 580
    if-eqz v13, :cond_e

    .line 581
    .line 582
    add-int/lit8 v12, v12, 0x1

    .line 583
    .line 584
    :cond_e
    instance-of v13, v11, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 585
    .line 586
    if-eqz v13, :cond_11

    .line 587
    .line 588
    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterSet;->contains(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v13

    .line 592
    if-nez v13, :cond_f

    .line 593
    .line 594
    goto :goto_b

    .line 595
    :cond_f
    if-gt v12, v4, :cond_10

    .line 596
    .line 597
    move-object v13, v11

    .line 598
    check-cast v13, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 599
    .line 600
    invoke-interface {v13, v6}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 601
    .line 602
    .line 603
    goto :goto_a

    .line 604
    :cond_10
    move-object v13, v11

    .line 605
    check-cast v13, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 606
    .line 607
    sget-object v14, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 608
    .line 609
    invoke-interface {v13, v14}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 610
    .line 611
    .line 612
    :goto_a
    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    :cond_11
    :goto_b
    iget-object v11, v11, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 616
    .line 617
    goto :goto_9

    .line 618
    :cond_12
    invoke-virtual {v10}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 619
    .line 620
    .line 621
    move-result-object v10

    .line 622
    if-eqz v10, :cond_13

    .line 623
    .line 624
    iget-object v11, v10, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 625
    .line 626
    if-eqz v11, :cond_13

    .line 627
    .line 628
    iget-object v11, v11, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 629
    .line 630
    check-cast v11, Landroidx/compose/ui/node/TailModifierNode;

    .line 631
    .line 632
    goto :goto_8

    .line 633
    :cond_13
    move-object v11, v7

    .line 634
    goto :goto_8

    .line 635
    :cond_14
    iget-object v4, v8, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 636
    .line 637
    iget-object v6, v8, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 638
    .line 639
    array-length v7, v6

    .line 640
    add-int/lit8 v7, v7, -0x2

    .line 641
    .line 642
    if-ltz v7, :cond_18

    .line 643
    .line 644
    const/4 v10, 0x0

    .line 645
    :goto_c
    aget-wide v11, v6, v10

    .line 646
    .line 647
    not-long v13, v11

    .line 648
    shl-long/2addr v13, v2

    .line 649
    and-long/2addr v13, v11

    .line 650
    and-long/2addr v13, v15

    .line 651
    cmp-long v13, v13, v15

    .line 652
    .line 653
    if-eqz v13, :cond_17

    .line 654
    .line 655
    sub-int v13, v10, v7

    .line 656
    .line 657
    not-int v13, v13

    .line 658
    ushr-int/lit8 v13, v13, 0x1f

    .line 659
    .line 660
    rsub-int/lit8 v13, v13, 0x8

    .line 661
    .line 662
    const/4 v14, 0x0

    .line 663
    :goto_d
    if-ge v14, v13, :cond_16

    .line 664
    .line 665
    and-long v23, v11, v19

    .line 666
    .line 667
    cmp-long v21, v23, v17

    .line 668
    .line 669
    if-gez v21, :cond_15

    .line 670
    .line 671
    shl-int/lit8 v21, v10, 0x3

    .line 672
    .line 673
    add-int v21, v21, v14

    .line 674
    .line 675
    aget-object v21, v4, v21

    .line 676
    .line 677
    move-object/from16 v15, v21

    .line 678
    .line 679
    check-cast v15, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 680
    .line 681
    invoke-interface {v15, v1}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 682
    .line 683
    .line 684
    :cond_15
    shr-long/2addr v11, v3

    .line 685
    add-int/lit8 v14, v14, 0x1

    .line 686
    .line 687
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    goto :goto_d

    .line 693
    :cond_16
    if-ne v13, v3, :cond_18

    .line 694
    .line 695
    :cond_17
    if-eq v10, v7, :cond_18

    .line 696
    .line 697
    add-int/lit8 v10, v10, 0x1

    .line 698
    .line 699
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    goto :goto_c

    .line 705
    :cond_18
    invoke-virtual {v9}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    if-eqz v2, :cond_19

    .line 710
    .line 711
    iget-object v2, v9, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 712
    .line 713
    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 714
    .line 715
    .line 716
    move-result-object v2

    .line 717
    if-ne v2, v1, :cond_1a

    .line 718
    .line 719
    :cond_19
    invoke-virtual {v9}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearOwnerFocus()V

    .line 720
    .line 721
    .line 722
    :cond_1a
    invoke-virtual {v5}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v8}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 726
    .line 727
    .line 728
    const/4 v12, 0x0

    .line 729
    iput-boolean v12, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->isInvalidationScheduled:Z

    .line 730
    .line 731
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 732
    .line 733
    return-object v0

    .line 734
    :pswitch_12
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 735
    .line 736
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 737
    .line 738
    invoke-interface {v0}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;->data()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    return-object v0

    .line 743
    :pswitch_13
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 744
    .line 745
    check-cast v0, Landroidx/compose/foundation/FocusableNode;

    .line 746
    .line 747
    iget-object v0, v0, Landroidx/compose/foundation/FocusableNode;->focusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 748
    .line 749
    invoke-virtual {v0, v2}, Landroidx/compose/ui/focus/FocusTargetNode;->requestFocus-3ESFkO8(I)Z

    .line 750
    .line 751
    .line 752
    move-result v0

    .line 753
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    return-object v0

    .line 758
    :pswitch_14
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 759
    .line 760
    check-cast v0, Landroidx/room/RoomDatabase;

    .line 761
    .line 762
    iget-object v1, v0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 763
    .line 764
    if-eqz v1, :cond_1c

    .line 765
    .line 766
    invoke-static {v1, v7}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 770
    .line 771
    .line 772
    iget-object v0, v0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    .line 773
    .line 774
    if-eqz v0, :cond_1b

    .line 775
    .line 776
    iget-object v0, v0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast v0, Landroidx/room/coroutines/ConnectionPool;

    .line 779
    .line 780
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 781
    .line 782
    .line 783
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 784
    .line 785
    return-object v0

    .line 786
    :cond_1b
    const-string v0, "connectionManager"

    .line 787
    .line 788
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    throw v7

    .line 792
    :cond_1c
    const-string v0, "coroutineScope"

    .line 793
    .line 794
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    throw v7

    .line 798
    nop

    .line 799
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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

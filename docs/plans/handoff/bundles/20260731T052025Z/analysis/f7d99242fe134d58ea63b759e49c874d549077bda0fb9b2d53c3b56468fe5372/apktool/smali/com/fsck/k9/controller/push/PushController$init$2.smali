.class public final Lcom/fsck/k9/controller/push/PushController$init$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/fsck/k9/controller/push/PushController;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/controller/push/PushController;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/controller/push/PushController$init$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/controller/push/PushController$init$2;->this$0:Lcom/fsck/k9/controller/push/PushController;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lcom/fsck/k9/controller/push/PushController$init$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/controller/push/PushController$init$2;->this$0:Lcom/fsck/k9/controller/push/PushController;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/fsck/k9/controller/push/PushController$init$2;

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lcom/fsck/k9/controller/push/PushController$init$2;-><init>(Lcom/fsck/k9/controller/push/PushController;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lcom/fsck/k9/controller/push/PushController$init$2;

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lcom/fsck/k9/controller/push/PushController$init$2;-><init>(Lcom/fsck/k9/controller/push/PushController;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lcom/fsck/k9/controller/push/PushController$init$2;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lcom/fsck/k9/controller/push/PushController$init$2;-><init>(Lcom/fsck/k9/controller/push/PushController;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Lcom/fsck/k9/controller/push/PushController$init$2;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-direct {p1, p0, p2, v0}, Lcom/fsck/k9/controller/push/PushController$init$2;-><init>(Lcom/fsck/k9/controller/push/PushController;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_3
    new-instance p1, Lcom/fsck/k9/controller/push/PushController$init$2;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-direct {p1, p0, p2, v0}, Lcom/fsck/k9/controller/push/PushController$init$2;-><init>(Lcom/fsck/k9/controller/push/PushController;Lkotlin/coroutines/Continuation;I)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/controller/push/PushController$init$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/controller/push/PushController$init$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/fsck/k9/controller/push/PushController$init$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/fsck/k9/controller/push/PushController$init$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Lnet/thunderbird/core/preference/BackgroundOps;

    .line 23
    .line 24
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/controller/push/PushController$init$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/fsck/k9/controller/push/PushController$init$2;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/fsck/k9/controller/push/PushController$init$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 37
    .line 38
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/controller/push/PushController$init$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lcom/fsck/k9/controller/push/PushController$init$2;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lcom/fsck/k9/controller/push/PushController$init$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 51
    .line 52
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/controller/push/PushController$init$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lcom/fsck/k9/controller/push/PushController$init$2;

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lcom/fsck/k9/controller/push/PushController$init$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 65
    .line 66
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 67
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/controller/push/PushController$init$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lcom/fsck/k9/controller/push/PushController$init$2;

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Lcom/fsck/k9/controller/push/PushController$init$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/controller/push/PushController$init$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/fsck/k9/controller/push/PushController$init$2;->this$0:Lcom/fsck/k9/controller/push/PushController;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/fsck/k9/controller/push/PushController;->lock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object p1, p1, Lcom/fsck/k9/controller/push/PushController;->pushers:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/fsck/k9/controller/push/AccountPushController;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/fsck/k9/controller/push/AccountPushController;->reconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    monitor-exit v0

    .line 43
    iget-object p0, p0, Lcom/fsck/k9/controller/push/PushController$init$2;->this$0:Lcom/fsck/k9/controller/push/PushController;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/fsck/k9/controller/push/PushController;->updatePushers()V

    .line 46
    .line 47
    .line 48
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0

    .line 51
    :goto_1
    monitor-exit v0

    .line 52
    throw p0

    .line 53
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/fsck/k9/controller/push/PushController$init$2;->this$0:Lcom/fsck/k9/controller/push/PushController;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/fsck/k9/controller/push/PushController;->launchUpdatePushers()V

    .line 59
    .line 60
    .line 61
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p0

    .line 64
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/fsck/k9/controller/push/PushController$init$2;->this$0:Lcom/fsck/k9/controller/push/PushController;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/fsck/k9/controller/push/PushController;->updatePushers()V

    .line 70
    .line 71
    .line 72
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/fsck/k9/controller/push/PushController$init$2;->this$0:Lcom/fsck/k9/controller/push/PushController;

    .line 79
    .line 80
    iget-object p1, p0, Lcom/fsck/k9/controller/push/PushController;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 81
    .line 82
    check-cast p1, Lcom/fsck/k9/Preferences;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/fsck/k9/controller/push/PushController;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 105
    .line 106
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iget-object v1, v1, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setPushDisabled()V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 125
    .line 126
    return-object p0

    .line 127
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object p0, p0, Lcom/fsck/k9/controller/push/PushController$init$2;->this$0:Lcom/fsck/k9/controller/push/PushController;

    .line 131
    .line 132
    const-string p1, "PushController.initInBackground()"

    .line 133
    .line 134
    const/4 v0, 0x0

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    .line 136
    .line 137
    invoke-static {p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/fsck/k9/controller/push/PushController;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 141
    .line 142
    new-instance v0, Lcom/fsck/k9/notification/NotificationChannelManager$1;

    .line 143
    .line 144
    const/4 v1, 0x1

    .line 145
    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/notification/NotificationChannelManager$1;-><init>(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    check-cast p1, Lcom/fsck/k9/Preferences;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    iget-object p1, p1, Lcom/fsck/k9/Preferences;->accountsChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/fsck/k9/controller/push/PushController;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 159
    .line 160
    check-cast p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 161
    .line 162
    iget-object p1, p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->generalSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 163
    .line 164
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 165
    .line 166
    const/4 v1, 0x2

    .line 167
    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 168
    .line 169
    .line 170
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    new-instance v0, Lcom/fsck/k9/controller/push/PushController$init$2;

    .line 175
    .line 176
    const/4 v2, 0x0

    .line 177
    const/4 v3, 0x3

    .line 178
    invoke-direct {v0, p0, v2, v3}, Lcom/fsck/k9/controller/push/PushController$init$2;-><init>(Lcom/fsck/k9/controller/push/PushController;Lkotlin/coroutines/Continuation;I)V

    .line 179
    .line 180
    .line 181
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 182
    .line 183
    invoke-direct {v2, p1, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/fsck/k9/controller/push/PushController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 187
    .line 188
    invoke-static {v2, p1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/fsck/k9/controller/push/PushController;->backendManager:Lcom/fsck/k9/backend/BackendManager;

    .line 192
    .line 193
    new-instance v0, Lcom/fsck/k9/controller/push/PushController$initInBackground$2;

    .line 194
    .line 195
    invoke-direct {v0, p0}, Lcom/fsck/k9/controller/push/PushController$initInBackground$2;-><init>(Lcom/fsck/k9/controller/push/PushController;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    iget-object p1, p1, Lcom/fsck/k9/backend/BackendManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/fsck/k9/controller/push/PushController;->updatePushers()V

    .line 207
    .line 208
    .line 209
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 210
    .line 211
    return-object p0

    .line 212
    nop

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

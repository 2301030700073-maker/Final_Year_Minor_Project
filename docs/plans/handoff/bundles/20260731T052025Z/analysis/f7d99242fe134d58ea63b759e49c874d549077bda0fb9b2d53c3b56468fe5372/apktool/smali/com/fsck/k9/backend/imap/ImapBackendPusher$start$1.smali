.class public final Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lcom/fsck/k9/backend/imap/ImapBackendPusher;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/backend/imap/ImapBackendPusher;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;->this$0:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

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
    iget p1, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;->this$0:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;-><init>(Lcom/fsck/k9/backend/imap/ImapBackendPusher;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;-><init>(Lcom/fsck/k9/backend/imap/ImapBackendPusher;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, -0x1

    .line 7
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;->this$0:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x1

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;->label:I

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    if-ne v0, v9, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object v1, v8

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v6, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushConfigProvider:Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;->this$0:Lcom/fsck/k9/backends/DefaultImapBackendFactory;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 44
    .line 45
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object v4, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 51
    .line 52
    check-cast v4, Lcom/fsck/k9/Preferences;

    .line 53
    .line 54
    new-instance v10, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 55
    .line 56
    invoke-direct {v10, v4, p1, v8, v7}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 57
    .line 58
    .line 59
    invoke-static {v10}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1, v3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v3, v4, Lcom/fsck/k9/Preferences;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 68
    .line 69
    invoke-static {p1, v3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v3, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 74
    .line 75
    invoke-direct {v3, p1, v0, v9}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;I)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 79
    .line 80
    invoke-direct {p1, v3, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1;

    .line 84
    .line 85
    invoke-direct {v0, p1, v9}, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;I)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1$1;

    .line 93
    .line 94
    invoke-direct {v0, v6, v9}, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1$1;-><init>(Lcom/fsck/k9/backend/imap/ImapBackendPusher;I)V

    .line 95
    .line 96
    .line 97
    iput v9, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;->label:I

    .line 98
    .line 99
    invoke-interface {p1, v0, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-ne p0, v5, :cond_2

    .line 104
    .line 105
    move-object v1, v5

    .line 106
    :cond_2
    :goto_0
    return-object v1

    .line 107
    :pswitch_0
    iget v0, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;->label:I

    .line 108
    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    if-ne v0, v9, :cond_3

    .line 112
    .line 113
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    move-object v1, v8

    .line 121
    goto :goto_1

    .line 122
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, v6, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->pushConfigProvider:Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;

    .line 126
    .line 127
    iget-object v0, p1, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;->this$0:Lcom/fsck/k9/backends/DefaultImapBackendFactory;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 130
    .line 131
    iget-object p1, p1, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 132
    .line 133
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iget-object v4, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 139
    .line 140
    check-cast v4, Lcom/fsck/k9/Preferences;

    .line 141
    .line 142
    new-instance v10, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 143
    .line 144
    invoke-direct {v10, v4, p1, v8, v7}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 145
    .line 146
    .line 147
    invoke-static {v10}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {p1, v3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object v3, v4, Lcom/fsck/k9/Preferences;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 156
    .line 157
    invoke-static {p1, v3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    new-instance v3, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 162
    .line 163
    invoke-direct {v3, p1, v0, v9}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;I)V

    .line 164
    .line 165
    .line 166
    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 167
    .line 168
    invoke-direct {p1, v3, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 169
    .line 170
    .line 171
    new-instance v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1;

    .line 172
    .line 173
    invoke-direct {v0, p1, v7}, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;I)V

    .line 174
    .line 175
    .line 176
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    new-instance v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1$1;

    .line 181
    .line 182
    invoke-direct {v0, v6, v7}, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1$1;-><init>(Lcom/fsck/k9/backend/imap/ImapBackendPusher;I)V

    .line 183
    .line 184
    .line 185
    iput v9, p0, Lcom/fsck/k9/backend/imap/ImapBackendPusher$start$1;->label:I

    .line 186
    .line 187
    invoke-interface {p1, v0, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    if-ne p0, v5, :cond_5

    .line 192
    .line 193
    move-object v1, v5

    .line 194
    :cond_5
    :goto_1
    return-object v1

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

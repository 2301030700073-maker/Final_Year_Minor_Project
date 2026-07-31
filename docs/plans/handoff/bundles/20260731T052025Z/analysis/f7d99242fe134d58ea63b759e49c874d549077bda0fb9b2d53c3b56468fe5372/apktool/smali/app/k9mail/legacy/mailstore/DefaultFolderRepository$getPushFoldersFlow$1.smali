.class public final Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $accountId:Lnet/thunderbird/feature/account/AccountId;

.field public final synthetic $messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/feature/account/AccountId;Lapp/k9mail/legacy/mailstore/ListenableMessageStore;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p5, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->this$0:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->$accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 6
    .line 7
    iput-object p3, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->$messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    iget v0, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v1, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;

    .line 7
    .line 8
    iget-object v4, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->$messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    iget-object v2, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->this$0:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 12
    .line 13
    iget-object v3, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->$accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 14
    .line 15
    move-object v5, p2

    .line 16
    invoke-direct/range {v1 .. v6}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;-><init>(Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/feature/account/AccountId;Lapp/k9mail/legacy/mailstore/ListenableMessageStore;Lkotlin/coroutines/Continuation;I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, v1, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->L$0:Ljava/lang/Object;

    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    move-object v5, p2

    .line 23
    new-instance v2, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;

    .line 24
    .line 25
    move-object v6, v5

    .line 26
    iget-object v5, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->$messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    iget-object v3, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->this$0:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 30
    .line 31
    iget-object v4, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->$accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 32
    .line 33
    invoke-direct/range {v2 .. v7}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;-><init>(Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/feature/account/AccountId;Lapp/k9mail/legacy/mailstore/ListenableMessageStore;Lkotlin/coroutines/Continuation;I)V

    .line 34
    .line 35
    .line 36
    iput-object p1, v2, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    return-object v2

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    iget-object v5, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->this$0:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 11
    .line 12
    iget-object v6, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->$accountId:Lnet/thunderbird/feature/account/AccountId;

    .line 13
    .line 14
    iget-object v7, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->$messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 15
    .line 16
    const/4 v8, 0x1

    .line 17
    const/4 v9, 0x0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->L$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lkotlinx/coroutines/channels/ProducerScope;

    .line 24
    .line 25
    iget v10, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->label:I

    .line 26
    .line 27
    if-eqz v10, :cond_2

    .line 28
    .line 29
    if-eq v10, v8, :cond_1

    .line 30
    .line 31
    if-ne v10, v4, :cond_0

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    move-object v1, v9

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object p1, v5, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 56
    .line 57
    invoke-virtual {p1, v6}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object p1, p1, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/fsck/k9/storage/messages/K9MessageStore;->hasPushEnabledFolder()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object v0, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    iput v8, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->label:I

    .line 78
    .line 79
    move-object v2, v0

    .line 80
    check-cast v2, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 81
    .line 82
    iget-object v2, v2, Lkotlinx/coroutines/channels/ProducerCoroutine;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 83
    .line 84
    invoke-interface {v2, p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-ne p1, v3, :cond_3

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    :goto_0
    new-instance p1, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    invoke-direct {p1, v0, v5, v6, v8}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/feature/account/AccountId;I)V

    .line 94
    .line 95
    .line 96
    iget-object v2, v7, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->folderSettingsListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 97
    .line 98
    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    new-instance v2, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 102
    .line 103
    const/16 v5, 0xf

    .line 104
    .line 105
    invoke-direct {v2, v5, v7, p1}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iput-object v9, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->L$0:Ljava/lang/Object;

    .line 109
    .line 110
    iput v4, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->label:I

    .line 111
    .line 112
    invoke-static {v0, v2, p0}, Lkotlin/ranges/RangesKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-ne p0, v3, :cond_4

    .line 117
    .line 118
    :goto_1
    move-object v1, v3

    .line 119
    :cond_4
    :goto_2
    return-object v1

    .line 120
    :pswitch_0
    iget-object v0, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->L$0:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Lkotlinx/coroutines/channels/ProducerScope;

    .line 123
    .line 124
    iget v10, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->label:I

    .line 125
    .line 126
    if-eqz v10, :cond_7

    .line 127
    .line 128
    if-eq v10, v8, :cond_6

    .line 129
    .line 130
    if-ne v10, v4, :cond_5

    .line 131
    .line 132
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_5
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    move-object v1, v9

    .line 140
    goto :goto_5

    .line 141
    :cond_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v6}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->getPushFolders(Lnet/thunderbird/feature/account/AccountId;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iput-object v0, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->L$0:Ljava/lang/Object;

    .line 153
    .line 154
    iput v8, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->label:I

    .line 155
    .line 156
    move-object v2, v0

    .line 157
    check-cast v2, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 158
    .line 159
    iget-object v2, v2, Lkotlinx/coroutines/channels/ProducerCoroutine;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 160
    .line 161
    invoke-interface {v2, p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-ne p1, v3, :cond_8

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_8
    :goto_3
    new-instance p1, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0;

    .line 169
    .line 170
    const/4 v2, 0x0

    .line 171
    invoke-direct {p1, v0, v5, v6, v2}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/feature/account/AccountId;I)V

    .line 172
    .line 173
    .line 174
    iget-object v2, v7, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->folderSettingsListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 175
    .line 176
    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    new-instance v2, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 180
    .line 181
    const/16 v5, 0xe

    .line 182
    .line 183
    invoke-direct {v2, v5, v7, p1}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    iput-object v9, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->L$0:Ljava/lang/Object;

    .line 187
    .line 188
    iput v4, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1;->label:I

    .line 189
    .line 190
    invoke-static {v0, v2, p0}, Lkotlin/ranges/RangesKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    if-ne p0, v3, :cond_9

    .line 195
    .line 196
    :goto_4
    move-object v1, v3

    .line 197
    :cond_9
    :goto_5
    return-object v1

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

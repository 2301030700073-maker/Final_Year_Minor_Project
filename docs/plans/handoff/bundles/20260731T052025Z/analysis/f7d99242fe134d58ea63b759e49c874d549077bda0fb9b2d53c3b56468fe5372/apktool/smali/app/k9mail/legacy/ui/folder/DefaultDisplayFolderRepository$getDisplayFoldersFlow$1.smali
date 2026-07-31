.class public final Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final synthetic $includeHiddenFolders:Z

.field public final synthetic $messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

.field public J$0:J

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;


# direct methods
.method public constructor <init>(Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;Lnet/thunderbird/core/android/account/LegacyAccountDto;ZLapp/k9mail/legacy/mailstore/ListenableMessageStore;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->this$0:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    iput-boolean p3, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->$includeHiddenFolders:Z

    .line 6
    .line 7
    iput-object p4, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->$messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;

    .line 2
    .line 3
    iget-boolean v3, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->$includeHiddenFolders:Z

    .line 4
    .line 5
    iget-object v4, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->$messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 6
    .line 7
    iget-object v1, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->this$0:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 8
    .line 9
    iget-object v2, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;-><init>(Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;Lnet/thunderbird/core/android/account/LegacyAccountDto;ZLapp/k9mail/legacy/mailstore/ListenableMessageStore;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v6, v1

    .line 6
    check-cast v6, Lkotlinx/coroutines/channels/ProducerScope;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->label:I

    .line 9
    .line 10
    iget-object v2, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 11
    .line 12
    const/4 v9, 0x3

    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v10, 0x0

    .line 16
    iget-object v5, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->this$0:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 17
    .line 18
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 19
    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    if-eq v1, v4, :cond_2

    .line 23
    .line 24
    if-eq v1, v3, :cond_1

    .line 25
    .line 26
    if-ne v1, v9, :cond_0

    .line 27
    .line 28
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v10

    .line 39
    :cond_1
    iget-wide v1, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->J$0:J

    .line 40
    .line 41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-wide v3, v1

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    move-object/from16 v1, p1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v5, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 56
    .line 57
    iget-object v7, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 58
    .line 59
    iput-object v6, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    iput v4, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->label:I

    .line 62
    .line 63
    invoke-virtual {v1, v7, v0}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->getOutboxFolderId(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-ne v1, v11, :cond_4

    .line 68
    .line 69
    :goto_0
    move-object v1, v11

    .line 70
    goto :goto_3

    .line 71
    :cond_4
    :goto_1
    check-cast v1, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    iget-boolean v1, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->$includeHiddenFolders:Z

    .line 78
    .line 79
    invoke-static {v5, v2, v7, v8, v1}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->access$getDisplayFolders(Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;Lnet/thunderbird/core/android/account/LegacyAccountDto;JZ)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iput-object v6, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    iput-wide v7, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->J$0:J

    .line 86
    .line 87
    iput v3, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->label:I

    .line 88
    .line 89
    move-object v2, v6

    .line 90
    check-cast v2, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 91
    .line 92
    iget-object v2, v2, Lkotlinx/coroutines/channels/ProducerCoroutine;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 93
    .line 94
    invoke-interface {v2, v1, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-ne v1, v11, :cond_5

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    move-wide v3, v7

    .line 102
    :goto_2
    new-instance v2, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1;

    .line 103
    .line 104
    iget-object v7, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 105
    .line 106
    iget-boolean v8, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->$includeHiddenFolders:Z

    .line 107
    .line 108
    invoke-direct/range {v2 .. v8}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1;-><init>(JLapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;Lkotlinx/coroutines/channels/ProducerScope;Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V

    .line 109
    .line 110
    .line 111
    move-object v13, v2

    .line 112
    iget-object v1, v5, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->messagingController:Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;

    .line 113
    .line 114
    check-cast v1, Lcom/fsck/k9/controller/MessagingController;

    .line 115
    .line 116
    invoke-virtual {v1, v13}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 117
    .line 118
    .line 119
    new-instance v15, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0;

    .line 120
    .line 121
    iget-object v7, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 122
    .line 123
    iget-boolean v8, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->$includeHiddenFolders:Z

    .line 124
    .line 125
    move-object v2, v15

    .line 126
    invoke-direct/range {v2 .. v8}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0;-><init>(JLapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;Lkotlinx/coroutines/channels/ProducerScope;Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V

    .line 127
    .line 128
    .line 129
    iget-object v14, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->$messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 130
    .line 131
    iget-object v1, v14, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->folderSettingsListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 132
    .line 133
    invoke-virtual {v1, v15}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-object v1, v11

    .line 137
    new-instance v11, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;

    .line 138
    .line 139
    const/16 v16, 0x8

    .line 140
    .line 141
    move-object v12, v5

    .line 142
    invoke-direct/range {v11 .. v16}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 143
    .line 144
    .line 145
    iput-object v10, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->L$0:Ljava/lang/Object;

    .line 146
    .line 147
    iput-wide v3, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->J$0:J

    .line 148
    .line 149
    iput v9, v0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;->label:I

    .line 150
    .line 151
    invoke-static {v6, v11, v0}, Lkotlin/ranges/RangesKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-ne v0, v1, :cond_6

    .line 156
    .line 157
    :goto_3
    return-object v1

    .line 158
    :cond_6
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 159
    .line 160
    return-object v0
.end method

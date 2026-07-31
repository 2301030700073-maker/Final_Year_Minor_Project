.class public final Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/fsck/k9/ui/messagelist/MessageListLiveData;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListLiveData;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;->this$0:Lcom/fsck/k9/ui/messagelist/MessageListLiveData;

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
    iget p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;->this$0:Lcom/fsck/k9/ui/messagelist/MessageListLiveData;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListLiveData;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListLiveData;Lkotlin/coroutines/Continuation;I)V

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
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$loadMessageListAsync$1$messageList$1;->this$0:Lcom/fsck/k9/ui/messagelist/MessageListLiveData;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;->config:Lcom/fsck/k9/ui/messagelist/MessageListConfig;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListConfig;->search:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/room/util/SchemaInfoUtilKt;->getLegacyAccountsFromLocalSearch(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/16 v1, 0xa

    .line 27
    .line 28
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 50
    .line 51
    iget-object v1, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/String;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;->messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;->messageListChangedListener:Lcom/fsck/k9/ui/messagelist/MessageListLiveData$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object v1, v1, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;->accountListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 87
    .line 88
    new-instance v3, Lkotlin/Pair;

    .line 89
    .line 90
    invoke-direct {v3, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 98
    .line 99
    return-object p0

    .line 100
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;->messageListLoader:Lcom/fsck/k9/ui/messagelist/MessageListLoader;

    .line 104
    .line 105
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListLiveData;->config:Lcom/fsck/k9/ui/messagelist/MessageListConfig;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/fsck/k9/ui/messagelist/MessageListLoader;->getMessageListInfo(Lcom/fsck/k9/ui/messagelist/MessageListConfig;)Lcom/fsck/k9/ui/messagelist/MessageListInfo;

    .line 114
    .line 115
    .line 116
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_2

    .line 118
    :catch_0
    move-exception p0

    .line 119
    const-string p1, "Error while fetching message list"

    .line 120
    .line 121
    const/4 v0, 0x0

    .line 122
    new-array v1, v0, [Ljava/lang/Object;

    .line 123
    .line 124
    invoke-static {p0, p1, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    new-instance p0, Lcom/fsck/k9/ui/messagelist/MessageListInfo;

    .line 128
    .line 129
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 130
    .line 131
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/ui/messagelist/MessageListInfo;-><init>(Ljava/util/List;Z)V

    .line 132
    .line 133
    .line 134
    :goto_2
    return-object p0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

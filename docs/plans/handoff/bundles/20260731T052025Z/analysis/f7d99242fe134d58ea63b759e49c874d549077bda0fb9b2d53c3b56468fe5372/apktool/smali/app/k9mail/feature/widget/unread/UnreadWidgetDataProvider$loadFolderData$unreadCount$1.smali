.class public final Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final synthetic $folderId:J

.field public final synthetic this$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;Lnet/thunderbird/core/android/account/LegacyAccountDto;JLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;->this$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;

    .line 2
    .line 3
    iput-object p2, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    iput-wide p3, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;->$folderId:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;

    .line 2
    .line 3
    iget-object v2, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    iget-wide v3, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;->$folderId:J

    .line 6
    .line 7
    iget-object v1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;->this$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;

    .line 8
    .line 9
    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;Lnet/thunderbird/core/android/account/LegacyAccountDto;JLkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;->this$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;

    .line 5
    .line 6
    iget-object p1, p1, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->messageCountsProvider:Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 7
    .line 8
    iget-wide v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;->$folderId:J

    .line 9
    .line 10
    iget-object p0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :try_start_0
    iget-object v3, p1, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 17
    .line 18
    invoke-virtual {v3, p0}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object p1, p1, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 23
    .line 24
    iget-object v4, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 25
    .line 26
    invoke-static {p1, v4}, Lkotlinx/io/Sink$-CC;->getOutboxFolderIdSync$default(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    cmp-long p1, v0, v4

    .line 31
    .line 32
    iget-object v3, v3, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    :try_start_1
    iget-object p1, v3, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 43
    .line 44
    new-instance v3, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    const/4 v4, 0x5

    .line 47
    invoke-direct {v3, v4, v0, v1}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;-><init>(IJ)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    check-cast p1, Ljava/lang/Number;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, v3, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 67
    .line 68
    new-instance v3, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    const/4 v4, 0x6

    .line 71
    invoke-direct {v3, v4, v0, v1}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;-><init>(IJ)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v2, v3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    check-cast p1, Ljava/lang/Number;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception p1

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const/4 v1, 0x2

    .line 94
    new-array v1, v1, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object p0, v1, v2

    .line 97
    .line 98
    const/4 p0, 0x1

    .line 99
    aput-object v0, v1, p0

    .line 100
    .line 101
    const-string p0, "Unable to getUnreadMessageCount for account: %s, folder: %d"

    .line 102
    .line 103
    invoke-static {p1, p0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    new-instance p0, Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-direct {p0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 109
    .line 110
    .line 111
    return-object p0
.end method

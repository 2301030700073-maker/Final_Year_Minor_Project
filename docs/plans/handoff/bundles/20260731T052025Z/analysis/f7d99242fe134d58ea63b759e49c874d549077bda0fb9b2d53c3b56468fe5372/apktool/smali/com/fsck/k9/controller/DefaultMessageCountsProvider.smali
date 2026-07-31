.class public final Lcom/fsck/k9/controller/DefaultMessageCountsProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

.field public final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

.field public final messagingControllerRegistry:Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;

.field public final outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;


# direct methods
.method public constructor <init>(Lapp/k9mail/legacy/mailstore/MessageStoreManager;Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p4, p0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->messagingControllerRegistry:Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getMessageCounts(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/message/controller/MessageCounts;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    new-instance v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    invoke-direct {v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 107
    iget-object v2, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 108
    invoke-static {v1, v2}, Lkotlinx/io/Sink$-CC;->getOutboxFolderIdSync$default(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;)J

    move-result-wide v1

    .line 109
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getTrashFolderId()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/appcompat/app/ActionBar;->excludeSpecialFolder(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Ljava/lang/Long;)V

    .line 110
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDraftsFolderId()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/appcompat/app/ActionBar;->excludeSpecialFolder(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Ljava/lang/Long;)V

    .line 111
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSpamFolderId()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/appcompat/app/ActionBar;->excludeSpecialFolder(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Ljava/lang/Long;)V

    .line 112
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/appcompat/app/ActionBar;->excludeSpecialFolder(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Ljava/lang/Long;)V

    .line 113
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSentFolderId()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/appcompat/app/ActionBar;->excludeSpecialFolder(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Ljava/lang/Long;)V

    .line 114
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getInboxFolderId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 115
    new-instance v3, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;

    .line 116
    sget-object v4, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->FOLDER:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 117
    sget-object v5, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->EQUALS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 118
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-direct {v3, v4, v5, v1}, Lnet/thunderbird/feature/search/legacy/api/SearchCondition;-><init>(Lnet/thunderbird/feature/search/legacy/api/SearchField;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, v3}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->or(Lnet/thunderbird/feature/search/legacy/api/SearchCondition;)V

    .line 121
    :cond_0
    sget-object v1, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->VISIBLE:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 122
    const-string v2, "1"

    .line 123
    sget-object v3, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->EQUALS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->and(Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;Ljava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;)V

    .line 125
    invoke-virtual {v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getConditions()Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->getMessageCounts(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;)Lapp/k9mail/legacy/message/controller/MessageCounts;

    move-result-object p0

    return-object p0
.end method

.method public final getMessageCounts(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;)Lapp/k9mail/legacy/message/controller/MessageCounts;
    .locals 3

    .line 126
    :try_start_0
    iget-object p0, p0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    invoke-virtual {p0, p1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    move-result-object p0

    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 127
    new-instance v0, Lapp/k9mail/legacy/message/controller/MessageCounts;

    .line 128
    iget-object v1, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 129
    const-string v2, "messages.read = 0"

    .line 130
    invoke-virtual {v1, v2, p2}, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->getMessageCount(Ljava/lang/String;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;)I

    move-result v1

    .line 131
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 132
    const-string v2, "messages.flagged = 1"

    .line 133
    invoke-virtual {p0, v2, p2}, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->getMessageCount(Ljava/lang/String;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;)I

    move-result p0

    .line 134
    invoke-direct {v0, v1, p0}, Lapp/k9mail/legacy/message/controller/MessageCounts;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const/4 p2, 0x1

    .line 135
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "Unable to getMessageCounts for account: %s"

    invoke-static {p0, p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    new-instance p0, Lapp/k9mail/legacy/message/controller/MessageCounts;

    invoke-direct {p0, v0, v0}, Lapp/k9mail/legacy/message/controller/MessageCounts;-><init>(II)V

    return-object p0
.end method

.method public final getMessageCounts(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)Lapp/k9mail/legacy/message/controller/MessageCounts;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p1, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->accountUuidSet:Ljava/util/Set;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getAccountUuids()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/Iterable;

    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    move-object v4, v3

    .line 51
    check-cast v4, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 52
    .line 53
    iget-object v4, v4, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move-object v0, v2

    .line 66
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v1, 0x0

    .line 71
    move v2, v1

    .line 72
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 83
    .line 84
    invoke-virtual {p1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getConditions()Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->getMessageCounts(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/feature/search/legacy/SearchConditionTreeNode;)Lapp/k9mail/legacy/message/controller/MessageCounts;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iget v4, v3, Lapp/k9mail/legacy/message/controller/MessageCounts;->unread:I

    .line 93
    .line 94
    add-int/2addr v1, v4

    .line 95
    iget v3, v3, Lapp/k9mail/legacy/message/controller/MessageCounts;->starred:I

    .line 96
    .line 97
    add-int/2addr v2, v3

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    new-instance p0, Lapp/k9mail/legacy/message/controller/MessageCounts;

    .line 100
    .line 101
    invoke-direct {p0, v1, v2}, Lapp/k9mail/legacy/message/controller/MessageCounts;-><init>(II)V

    .line 102
    .line 103
    .line 104
    return-object p0
.end method

.class public final Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

.field public final outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lapp/k9mail/legacy/mailstore/MessageStoreManager;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;)V
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
    iput-object p1, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 12
    .line 13
    iput-object p2, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 14
    .line 15
    iput-object p3, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 16
    .line 17
    iput-object v0, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 18
    .line 19
    return-void
.end method

.method public static getFolderType(Lokhttp3/ConnectionPool;Lnet/thunderbird/core/android/account/LegacyAccount;J)Lnet/thunderbird/feature/mail/folder/api/FolderType;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lokhttp3/ConnectionPool;->getId()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long p2, v0, p2

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    sget-object p0, Lnet/thunderbird/feature/mail/folder/api/FolderType;->OUTBOX:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lokhttp3/ConnectionPool;->getId()J

    .line 13
    .line 14
    .line 15
    move-result-wide p2

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object p0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->inboxFolderId:Ljava/lang/Long;

    .line 20
    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    cmp-long p0, p2, v0

    .line 29
    .line 30
    if-nez p0, :cond_2

    .line 31
    .line 32
    sget-object p0, Lnet/thunderbird/feature/mail/folder/api/FolderType;->INBOX:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    :goto_0
    iget-object p0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderId:Ljava/lang/Long;

    .line 36
    .line 37
    if-nez p0, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    cmp-long p0, p2, v0

    .line 45
    .line 46
    if-nez p0, :cond_4

    .line 47
    .line 48
    sget-object p0, Lnet/thunderbird/feature/mail/folder/api/FolderType;->SENT:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_4
    :goto_1
    iget-object p0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderId:Ljava/lang/Long;

    .line 52
    .line 53
    if-nez p0, :cond_5

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    cmp-long p0, p2, v0

    .line 61
    .line 62
    if-nez p0, :cond_6

    .line 63
    .line 64
    sget-object p0, Lnet/thunderbird/feature/mail/folder/api/FolderType;->TRASH:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_6
    :goto_2
    iget-object p0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderId:Ljava/lang/Long;

    .line 68
    .line 69
    if-nez p0, :cond_7

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    cmp-long p0, p2, v0

    .line 77
    .line 78
    if-nez p0, :cond_8

    .line 79
    .line 80
    sget-object p0, Lnet/thunderbird/feature/mail/folder/api/FolderType;->DRAFTS:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_8
    :goto_3
    iget-object p0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderId:Ljava/lang/Long;

    .line 84
    .line 85
    if-nez p0, :cond_9

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    cmp-long p0, p2, v0

    .line 93
    .line 94
    if-nez p0, :cond_a

    .line 95
    .line 96
    sget-object p0, Lnet/thunderbird/feature/mail/folder/api/FolderType;->ARCHIVE:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_a
    :goto_4
    iget-object p0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderId:Ljava/lang/Long;

    .line 100
    .line 101
    if-nez p0, :cond_b

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide p0

    .line 108
    cmp-long p0, p2, p0

    .line 109
    .line 110
    if-nez p0, :cond_c

    .line 111
    .line 112
    sget-object p0, Lnet/thunderbird/feature/mail/folder/api/FolderType;->SPAM:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 113
    .line 114
    return-object p0

    .line 115
    :cond_c
    :goto_5
    sget-object p0, Lnet/thunderbird/feature/mail/folder/api/FolderType;->REGULAR:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 116
    .line 117
    return-object p0
.end method


# virtual methods
.method public final getAccountById(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getAccountById$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getAccountById$1;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getAccountById$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getAccountById$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getAccountById$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getAccountById$1;-><init>(Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getAccountById$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getAccountById$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    iget-object p1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getAccountById$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 36
    .line 37
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iput-object p1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getAccountById$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 57
    .line 58
    iput v3, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getAccountById$1;->label:I

    .line 59
    .line 60
    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 65
    .line 66
    if-ne p2, p0, :cond_3

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_3
    :goto_1
    check-cast p2, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 70
    .line 71
    if-eqz p2, :cond_4

    .line 72
    .line 73
    return-object p2

    .line 74
    :cond_4
    const-string p0, "Account not found: "

    .line 75
    .line 76
    invoke-static {p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v2
.end method

.method public final getFolder(Lnet/thunderbird/feature/account/AccountId;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p4, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;-><init>(Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v4, :cond_2

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    iget-wide p1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->J$0:J

    .line 41
    .line 42
    iget-object p3, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->L$2:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 43
    .line 44
    iget-object v0, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->L$1:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 45
    .line 46
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    move-object v2, v0

    .line 50
    goto :goto_3

    .line 51
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :cond_2
    iget-wide p2, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->J$0:J

    .line 58
    .line 59
    iget-object p1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 60
    .line 61
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 69
    .line 70
    iput-wide p2, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->J$0:J

    .line 71
    .line 72
    iput v4, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->label:I

    .line 73
    .line 74
    invoke-virtual {p0, p1, v0}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->getAccountById(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p4

    .line 78
    if-ne p4, v5, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    :goto_1
    check-cast p4, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 82
    .line 83
    iget-object v1, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 84
    .line 85
    invoke-virtual {v1, p1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v2, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 90
    .line 91
    iput-object p4, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->L$1:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 92
    .line 93
    iput-object v1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->L$2:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 94
    .line 95
    iput-wide p2, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->J$0:J

    .line 96
    .line 97
    iput v3, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolder$1;->label:I

    .line 98
    .line 99
    iget-object v2, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 100
    .line 101
    invoke-virtual {v2, p1, v0}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->getOutboxFolderId(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-ne p1, v5, :cond_5

    .line 106
    .line 107
    :goto_2
    return-object v5

    .line 108
    :cond_5
    move-object v2, p4

    .line 109
    move-object p4, p1

    .line 110
    move-wide p1, p2

    .line 111
    move-object p3, v1

    .line 112
    :goto_3
    check-cast p4, Ljava/lang/Number;

    .line 113
    .line 114
    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    .line 115
    .line 116
    .line 117
    move-result-wide v3

    .line 118
    new-instance v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$$ExternalSyntheticLambda0;

    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    move-object v1, p0

    .line 122
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/core/android/account/LegacyAccount;JI)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object p0, p3, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 129
    .line 130
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 133
    .line 134
    invoke-virtual {p0, p1, p2, v0}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolder(JLapp/k9mail/legacy/mailstore/FolderMapper;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0
.end method

.method public final getFolderDetails(Lnet/thunderbird/feature/account/AccountId;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p4, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;-><init>(Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v4, :cond_2

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    iget-wide p1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->J$0:J

    .line 41
    .line 42
    iget-object p3, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->L$2:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 43
    .line 44
    iget-object v0, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->L$1:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 45
    .line 46
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    move-object v2, v0

    .line 50
    goto :goto_3

    .line 51
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :cond_2
    iget-wide p2, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->J$0:J

    .line 58
    .line 59
    iget-object p1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 60
    .line 61
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 69
    .line 70
    iput-wide p2, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->J$0:J

    .line 71
    .line 72
    iput v4, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->label:I

    .line 73
    .line 74
    invoke-virtual {p0, p1, v0}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->getAccountById(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p4

    .line 78
    if-ne p4, v5, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    :goto_1
    check-cast p4, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 82
    .line 83
    iget-object v1, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 84
    .line 85
    invoke-virtual {v1, p1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v2, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 90
    .line 91
    iput-object p4, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->L$1:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 92
    .line 93
    iput-object v1, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->L$2:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 94
    .line 95
    iput-wide p2, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->J$0:J

    .line 96
    .line 97
    iput v3, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getFolderDetails$1;->label:I

    .line 98
    .line 99
    iget-object v2, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 100
    .line 101
    invoke-virtual {v2, p1, v0}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;->getOutboxFolderId(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-ne p1, v5, :cond_5

    .line 106
    .line 107
    :goto_2
    return-object v5

    .line 108
    :cond_5
    move-object v2, p4

    .line 109
    move-object p4, p1

    .line 110
    move-wide p1, p2

    .line 111
    move-object p3, v1

    .line 112
    :goto_3
    check-cast p4, Ljava/lang/Number;

    .line 113
    .line 114
    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    .line 115
    .line 116
    .line 117
    move-result-wide v3

    .line 118
    new-instance v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$$ExternalSyntheticLambda0;

    .line 119
    .line 120
    const/4 v5, 0x1

    .line 121
    move-object v1, p0

    .line 122
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/core/android/account/LegacyAccount;JI)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object p0, p3, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 129
    .line 130
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 133
    .line 134
    invoke-virtual {p0, p1, p2, v0}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolder(JLapp/k9mail/legacy/mailstore/FolderMapper;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0
.end method

.method public final getPushFolders(Lnet/thunderbird/feature/account/AccountId;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance p1, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;

    .line 11
    .line 12
    const/4 v0, 0x6

    .line 13
    invoke-direct {p1, v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolders(Lapp/k9mail/legacy/mailstore/FolderMapper;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance p1, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    invoke-direct {p1, v0, p0}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance p0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/16 v1, 0x15

    .line 35
    .line 36
    invoke-direct {p0, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lkotlin/sequences/FilteringSequence;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-direct {v1, p1, v2, p0}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    new-instance p0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    const/16 p1, 0x16

    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lkotlin/sequences/TakeWhileSequence;

    .line 53
    .line 54
    invoke-direct {p1, v1, p0, v0}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public final getRemoteFolders(Lnet/thunderbird/feature/account/AccountId;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance p1, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    invoke-direct {p1, v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolders(Lapp/k9mail/legacy/mailstore/FolderMapper;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

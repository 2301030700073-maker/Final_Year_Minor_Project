.class public final Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final context:Landroid/content/Context;

.field public final coreResourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

.field public final defaultFolderProvider:Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

.field public final folderNameFormatter:Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

.field public final folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final messageCountsProvider:Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

.field public final preferences:Lcom/fsck/k9/Preferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/Preferences;Lcom/fsck/k9/controller/DefaultMessageCountsProvider;Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;Lcom/fsck/k9/resources/K9CoreResourceProvider;Lnet/thunderbird/core/logging/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->preferences:Lcom/fsck/k9/Preferences;

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->messageCountsProvider:Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 9
    .line 10
    iput-object p4, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->defaultFolderProvider:Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 11
    .line 12
    iput-object p5, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 13
    .line 14
    iput-object p6, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->folderNameFormatter:Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 15
    .line 16
    iput-object p7, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->coreResourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 17
    .line 18
    iput-object p8, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getClickIntentForFolder(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2, p3}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAllowedFolder(J)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    const/4 p2, 0x1

    .line 18
    iget-object p0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {p0, v0, p1, p2}, Lcom/fsck/k9/activity/MessageHomeActivity$Companion;->intentDisplaySearch(Landroid/content/Context;Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;ZZ)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/high16 p1, 0x20000

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public final getFolderDisplayName(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p4, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$getFolderDisplayName$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$getFolderDisplayName$1;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$getFolderDisplayName$1;->label:I

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
    iput v1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$getFolderDisplayName$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$getFolderDisplayName$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$getFolderDisplayName$1;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$getFolderDisplayName$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$getFolderDisplayName$1;->label:I

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
    iget-wide p2, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$getFolderDisplayName$1;->J$0:J

    .line 36
    .line 37
    iget-object p1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$getFolderDisplayName$1;->L$0:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 38
    .line 39
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p4, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 53
    .line 54
    iput-object p1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$getFolderDisplayName$1;->L$0:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 55
    .line 56
    iput-wide p2, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$getFolderDisplayName$1;->J$0:J

    .line 57
    .line 58
    iput v3, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$getFolderDisplayName$1;->label:I

    .line 59
    .line 60
    iget-object v1, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 61
    .line 62
    invoke-virtual {v1, p4, p2, p3, v0}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->getFolder(Lnet/thunderbird/feature/account/AccountId;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 67
    .line 68
    if-ne p4, v0, :cond_3

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_3
    :goto_1
    check-cast p4, Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 72
    .line 73
    if-eqz p4, :cond_4

    .line 74
    .line 75
    iget-object p0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->folderNameFormatter:Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 76
    .line 77
    invoke-virtual {p0, p4}, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;->displayName(Lnet/thunderbird/feature/mail/folder/api/Folder;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_4
    new-instance p4, Landroidx/compose/ui/text/platform/AndroidTextPaint$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    invoke-direct {p4, p1, p2, p3, v3}, Landroidx/compose/ui/text/platform/AndroidTextPaint$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;JI)V

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x2

    .line 88
    iget-object p0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 89
    .line 90
    const-string p2, "UnreadWidgetDataProvider"

    .line 91
    .line 92
    invoke-static {p0, p2, v2, p4, p1}, Lkotlinx/io/Sink$-CC;->error$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 93
    .line 94
    .line 95
    const-string p0, ""

    .line 96
    .line 97
    return-object p0
.end method

.method public final loadAccountData(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadAccountData$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadAccountData$1;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadAccountData$1;->label:I

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
    iput v1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadAccountData$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadAccountData$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadAccountData$1;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadAccountData$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadAccountData$1;->label:I

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
    iget-object p1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadAccountData$1;->L$2:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadAccountData$1;->L$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 38
    .line 39
    iget-object v0, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadAccountData$1;->L$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object v7, p2

    .line 45
    move-object p2, p1

    .line 46
    move-object p1, v0

    .line 47
    move-object v0, v7

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v2

    .line 55
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->preferences:Lcom/fsck/k9/Preferences;

    .line 59
    .line 60
    iget-object v1, p1, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;->accountUuid:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p2, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    return-object v2

    .line 69
    :cond_3
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    sget-object v4, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 74
    .line 75
    sget-object v4, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 76
    .line 77
    new-instance v5, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 78
    .line 79
    const/16 v6, 0x19

    .line 80
    .line 81
    invoke-direct {v5, p0, v1, v2, v6}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 82
    .line 83
    .line 84
    iput-object p1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadAccountData$1;->L$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;

    .line 85
    .line 86
    iput-object v1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadAccountData$1;->L$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 87
    .line 88
    iput-object p2, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadAccountData$1;->L$2:Ljava/lang/String;

    .line 89
    .line 90
    iput v3, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadAccountData$1;->label:I

    .line 91
    .line 92
    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 97
    .line 98
    if-ne v0, v2, :cond_4

    .line 99
    .line 100
    return-object v2

    .line 101
    :cond_4
    :goto_1
    check-cast v0, Ljava/lang/Number;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iget-object v2, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->defaultFolderProvider:Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Lcom/fsck/k9/ui/messagelist/DefaultFolderProvider;->getDefaultFolder(Lnet/thunderbird/core/android/account/LegacyAccountDto;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    invoke-virtual {p0, v1, v2, v3}, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->getClickIntentForFolder(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    new-instance v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetData;

    .line 118
    .line 119
    invoke-direct {v1, p1, p2, v0, p0}, Lapp/k9mail/feature/widget/unread/UnreadWidgetData;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 120
    .line 121
    .line 122
    return-object v1
.end method

.method public final loadFolderData(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    instance-of v3, v2, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;

    .line 11
    .line 12
    iget v4, v3, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->label:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->label:I

    .line 22
    .line 23
    :goto_0
    move-object v6, v3

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v3, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;

    .line 26
    .line 27
    invoke-direct {v3, p0, v2}, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v2, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v3, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->label:I

    .line 34
    .line 35
    const/4 v7, 0x2

    .line 36
    const/4 v4, 0x1

    .line 37
    const/4 v8, 0x0

    .line 38
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    if-eq v3, v4, :cond_2

    .line 43
    .line 44
    if-ne v3, v7, :cond_1

    .line 45
    .line 46
    iget-wide v3, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->J$0:J

    .line 47
    .line 48
    iget-object v0, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->L$5:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v5, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->L$2:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 51
    .line 52
    iget-object v6, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->L$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;

    .line 53
    .line 54
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v8

    .line 65
    :cond_2
    iget-wide v10, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->J$0:J

    .line 66
    .line 67
    iget-object v0, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->L$3:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v3, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->L$2:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 70
    .line 71
    iget-object v5, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->L$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;

    .line 72
    .line 73
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    move-wide v11, v10

    .line 77
    move-object v10, v5

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v2, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;->accountUuid:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v3, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->preferences:Lcom/fsck/k9/Preferences;

    .line 85
    .line 86
    invoke-virtual {v3, v2}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-nez v3, :cond_4

    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :cond_4
    iget-object v2, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;->folderId:Ljava/lang/Long;

    .line 95
    .line 96
    if-eqz v2, :cond_7

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 99
    .line 100
    .line 101
    move-result-wide v10

    .line 102
    invoke-virtual {v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iput-object v0, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->L$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;

    .line 107
    .line 108
    iput-object v3, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->L$2:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 109
    .line 110
    iput-object v2, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->L$3:Ljava/lang/String;

    .line 111
    .line 112
    iput-wide v10, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->J$0:J

    .line 113
    .line 114
    iput v4, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->label:I

    .line 115
    .line 116
    invoke-virtual {p0, v3, v10, v11, v6}, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->getFolderDisplayName(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    if-ne v5, v9, :cond_5

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_5
    move-wide v11, v10

    .line 124
    move-object v10, v0

    .line 125
    move-object v0, v2

    .line 126
    move-object v2, v5

    .line 127
    :goto_2
    check-cast v2, Ljava/lang/String;

    .line 128
    .line 129
    new-array v5, v7, [Ljava/lang/Object;

    .line 130
    .line 131
    const/4 v13, 0x0

    .line 132
    aput-object v0, v5, v13

    .line 133
    .line 134
    aput-object v2, v5, v4

    .line 135
    .line 136
    iget-object v0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->context:Landroid/content/Context;

    .line 137
    .line 138
    const v2, 0x7f120661

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 149
    .line 150
    sget-object v14, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 151
    .line 152
    new-instance v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;

    .line 153
    .line 154
    const/4 v5, 0x0

    .line 155
    move-object v1, p0

    .line 156
    move-object v2, v3

    .line 157
    move-wide v3, v11

    .line 158
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$unreadCount$1;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;Lnet/thunderbird/core/android/account/LegacyAccountDto;JLkotlin/coroutines/Continuation;)V

    .line 159
    .line 160
    .line 161
    iput-object v10, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->L$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;

    .line 162
    .line 163
    iput-object v2, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->L$2:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 164
    .line 165
    iput-object v8, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->L$3:Ljava/lang/String;

    .line 166
    .line 167
    iput-object v13, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->L$5:Ljava/lang/String;

    .line 168
    .line 169
    iput-wide v3, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->J$0:J

    .line 170
    .line 171
    iput v7, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadFolderData$1;->label:I

    .line 172
    .line 173
    invoke-static {v14, v0, v6}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-ne v0, v9, :cond_6

    .line 178
    .line 179
    :goto_3
    return-object v9

    .line 180
    :cond_6
    move-object v5, v2

    .line 181
    move-object v6, v10

    .line 182
    move-object v2, v0

    .line 183
    move-object v0, v13

    .line 184
    :goto_4
    check-cast v2, Ljava/lang/Number;

    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    invoke-virtual {p0, v5, v3, v4}, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->getClickIntentForFolder(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    new-instance v3, Lapp/k9mail/feature/widget/unread/UnreadWidgetData;

    .line 195
    .line 196
    invoke-direct {v3, v6, v0, v2, v1}, Lapp/k9mail/feature/widget/unread/UnreadWidgetData;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 197
    .line 198
    .line 199
    return-object v3

    .line 200
    :cond_7
    :goto_5
    return-object v8
.end method

.method public final loadUnifiedFoldersData(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadUnifiedFoldersData$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadUnifiedFoldersData$1;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadUnifiedFoldersData$1;->label:I

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
    iput v1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadUnifiedFoldersData$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadUnifiedFoldersData$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadUnifiedFoldersData$1;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadUnifiedFoldersData$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadUnifiedFoldersData$1;->label:I

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
    iget-object p1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadUnifiedFoldersData$1;->L$2:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadUnifiedFoldersData$1;->L$1:Lnet/thunderbird/feature/search/legacy/SearchAccount;

    .line 38
    .line 39
    iget-object v0, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadUnifiedFoldersData$1;->L$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object v4, p1

    .line 45
    move-object p1, v0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p1, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;->accountUuid:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "unified_folders"

    .line 59
    .line 60
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    iget-object p2, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->coreResourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/fsck/k9/resources/K9CoreResourceProvider;->searchUnifiedFoldersTitle()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {p2}, Lcom/fsck/k9/resources/K9CoreResourceProvider;->searchUnifiedFoldersDetail()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    new-instance v5, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 77
    .line 78
    invoke-direct {v5}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v1, v5, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 82
    .line 83
    sget-object v1, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->INTEGRATE:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 84
    .line 85
    const-string v6, "1"

    .line 86
    .line 87
    sget-object v7, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->EQUALS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 88
    .line 89
    invoke-virtual {v5, v1, v6, v7}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->and(Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;Ljava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lnet/thunderbird/feature/search/legacy/SearchAccount;

    .line 93
    .line 94
    invoke-direct {v1, v5, v4, p2}, Lnet/thunderbird/feature/search/legacy/SearchAccount;-><init>(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 98
    .line 99
    sget-object p2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 100
    .line 101
    new-instance v5, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 102
    .line 103
    const/16 v6, 0x1a

    .line 104
    .line 105
    invoke-direct {v5, p0, v1, v2, v6}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 106
    .line 107
    .line 108
    iput-object p1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadUnifiedFoldersData$1;->L$0:Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;

    .line 109
    .line 110
    iput-object v1, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadUnifiedFoldersData$1;->L$1:Lnet/thunderbird/feature/search/legacy/SearchAccount;

    .line 111
    .line 112
    iput-object v4, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadUnifiedFoldersData$1;->L$2:Ljava/lang/String;

    .line 113
    .line 114
    iput v3, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider$loadUnifiedFoldersData$1;->label:I

    .line 115
    .line 116
    invoke-static {p2, v5, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 121
    .line 122
    if-ne p2, v0, :cond_3

    .line 123
    .line 124
    return-object v0

    .line 125
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Number;

    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    sget-object v0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 132
    .line 133
    iget-object v0, v1, Lnet/thunderbird/feature/search/legacy/SearchAccount;->relatedSearch:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 134
    .line 135
    const/4 v1, 0x0

    .line 136
    iget-object p0, p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->context:Landroid/content/Context;

    .line 137
    .line 138
    invoke-static {p0, v0, v1, v3}, Lcom/fsck/k9/activity/MessageHomeActivity$Companion;->intentDisplaySearch(Landroid/content/Context;Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;ZZ)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    new-instance v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetData;

    .line 143
    .line 144
    invoke-direct {v0, p1, v4, p2, p0}, Lapp/k9mail/feature/widget/unread/UnreadWidgetData;-><init>(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 145
    .line 146
    .line 147
    return-object v0

    .line 148
    :cond_4
    const-string p0, "SearchAccount expected"

    .line 149
    .line 150
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    return-object v2
.end method

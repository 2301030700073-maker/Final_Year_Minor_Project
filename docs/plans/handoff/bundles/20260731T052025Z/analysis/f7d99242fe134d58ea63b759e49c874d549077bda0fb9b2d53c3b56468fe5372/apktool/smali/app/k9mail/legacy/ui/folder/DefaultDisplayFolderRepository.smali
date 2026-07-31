.class public final Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

.field public final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

.field public final messagingController:Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;

.field public final outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

.field public final sortForDisplay:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;


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
    iput-object p4, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 12
    .line 13
    iput-object p2, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->messagingController:Lapp/k9mail/legacy/message/controller/MessagingControllerRegistry;

    .line 14
    .line 15
    iput-object p1, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 16
    .line 17
    iput-object p3, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->outboxFolderManager:Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 18
    .line 19
    iput-object v0, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 20
    .line 21
    new-instance p1, Landroidx/viewpager/widget/ViewPager$1;

    .line 22
    .line 23
    const/16 p2, 0xe

    .line 24
    .line 25
    invoke-direct {p1, p2}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance p2, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;

    .line 29
    .line 30
    const/4 p3, 0x6

    .line 31
    invoke-direct {p2, p3, p1}, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;

    .line 35
    .line 36
    const/4 p3, 0x7

    .line 37
    invoke-direct {p1, p3, p2}, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    new-instance p2, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;

    .line 41
    .line 42
    const/16 p3, 0x8

    .line 43
    .line 44
    invoke-direct {p2, p3, p1}, Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 p3, 0x1

    .line 52
    invoke-virtual {p1, p3}, Ljava/text/Collator;->setDecomposition(I)V

    .line 53
    .line 54
    .line 55
    new-instance p3, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;

    .line 56
    .line 57
    invoke-direct {p3, p2, p1}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;-><init>(Lcom/bytehamster/lib/preferencesearch/PreferenceParser$1;Ljava/text/Collator;)V

    .line 58
    .line 59
    .line 60
    iput-object p3, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->sortForDisplay:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;

    .line 61
    .line 62
    return-void
.end method

.method public static final access$getDisplayFolders(Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;Lnet/thunderbird/core/android/account/LegacyAccountDto;JZ)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 2
    .line 3
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Ljava/lang/String;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    invoke-direct {v2, p0, p1, p2, p3}, Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;-><init>(Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;Lnet/thunderbird/core/android/account/LegacyAccountDto;J)V

    .line 16
    .line 17
    .line 18
    iget-object p1, v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object p2, p1, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 30
    .line 31
    new-instance p3, Lcom/fsck/k9/storage/messages/RetrieveFolderOperations$$ExternalSyntheticLambda6;

    .line 32
    .line 33
    invoke-direct {p3, p1, p4, v1, v2}, Lcom/fsck/k9/storage/messages/RetrieveFolderOperations$$ExternalSyntheticLambda6;-><init>(Lcom/fsck/k9/storage/messages/CheckFolderOperations;ZLjava/lang/Long;Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p2, p1, p3}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    check-cast p1, Ljava/util/List;

    .line 45
    .line 46
    iget-object p0, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->sortForDisplay:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$special$$inlined$thenBy$1;

    .line 47
    .line 48
    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method


# virtual methods
.method public final getDisplayFoldersFlow(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)Lkotlinx/coroutines/flow/Flow;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 5
    .line 6
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Ljava/lang/String;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    new-instance v2, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    move-object v3, p0

    .line 16
    move-object v4, p1

    .line 17
    move v5, p2

    .line 18
    invoke-direct/range {v2 .. v7}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1;-><init>(Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;Lnet/thunderbird/core/android/account/LegacyAccountDto;ZLapp/k9mail/legacy/mailstore/ListenableMessageStore;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 p1, -0x1

    .line 26
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iget-object p1, v3, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 35
    .line 36
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

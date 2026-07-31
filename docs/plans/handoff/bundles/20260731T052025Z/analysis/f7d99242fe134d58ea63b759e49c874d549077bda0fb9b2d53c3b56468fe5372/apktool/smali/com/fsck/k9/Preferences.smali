.class public final Lcom/fsck/k9/Preferences;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;


# instance fields
.field public final accountDefaultsProvider:Lnet/thunderbird/core/android/account/AccountDefaultsProvider;

.field public final accountLock:Ljava/lang/Object;

.field public final accountRemovedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final accountsChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public accountsInOrder:Ljava/util/ArrayList;

.field public accountsMap:Ljava/util/LinkedHashMap;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public currentStorage:Lnet/thunderbird/core/preference/storage/InMemoryStorage;

.field public final generalSettingsManager$delegate:Lkotlin/Lazy;

.field public final legacyAccountStorageHandler:Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;

.field public final localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

.field public newAccount:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final storageLock:Ljava/lang/Object;

.field public final storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/preferences/K9StoragePersister;Lcom/fsck/k9/mailstore/LocalStoreProvider;Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;Lnet/thunderbird/core/android/account/AccountDefaultsProvider;)V
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
    iput-object p1, p0, Lcom/fsck/k9/Preferences;->storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/fsck/k9/Preferences;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/fsck/k9/Preferences;->legacyAccountStorageHandler:Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/fsck/k9/Preferences;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 18
    .line 19
    iput-object p4, p0, Lcom/fsck/k9/Preferences;->accountDefaultsProvider:Lnet/thunderbird/core/android/account/AccountDefaultsProvider;

    .line 20
    .line 21
    new-instance p1, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-direct {p1, p2}, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 25
    .line 26
    .line 27
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 28
    .line 29
    invoke-static {p2, p1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/fsck/k9/Preferences;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 34
    .line 35
    new-instance p1, Ljava/lang/Object;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/fsck/k9/Preferences;->accountLock:Ljava/lang/Object;

    .line 41
    .line 42
    new-instance p1, Ljava/lang/Object;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/fsck/k9/Preferences;->storageLock:Ljava/lang/Object;

    .line 48
    .line 49
    new-instance p1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/fsck/k9/Preferences;->accountsInOrder:Ljava/util/ArrayList;

    .line 55
    .line 56
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/fsck/k9/Preferences;->accountsChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 62
    .line 63
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/fsck/k9/Preferences;->accountRemovedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 69
    .line 70
    return-void
.end method

.method public static final access$getCompleteAccounts(Lcom/fsck/k9/Preferences;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 26
    .line 27
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isFinishedSetup()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method

.method public static moveToPosition(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;I)V
    .locals 9

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "accountUuids"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    :cond_0
    const-string v1, ","

    .line 14
    .line 15
    filled-new-array {v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x6

    .line 20
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    move-object v3, v2

    .line 44
    check-cast v3, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-lez v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const/4 v2, -0x1

    .line 61
    if-eq p1, v2, :cond_4

    .line 62
    .line 63
    if-ne p1, p3, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p3, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const/4 v7, 0x0

    .line 78
    const/16 v8, 0x3e

    .line 79
    .line 80
    const-string v4, ","

    .line 81
    .line 82
    const/4 v5, 0x0

    .line 83
    const/4 v6, 0x0

    .line 84
    invoke-static/range {v3 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p2, v0, p0}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;
    .locals 4

    .line 1
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/Preferences;->storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/fsck/k9/preferences/K9StoragePersister;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v3, v1, Lcom/fsck/k9/preferences/K9StorageEditor;->changes:Ljava/util/HashMap;

    .line 23
    .line 24
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v3, v1, Lcom/fsck/k9/preferences/K9StorageEditor;->removals:Ljava/util/ArrayList;

    .line 30
    .line 31
    iput-object v0, v1, Lcom/fsck/k9/preferences/K9StorageEditor;->storageUpdater:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    iput-object p0, v1, Lcom/fsck/k9/preferences/K9StorageEditor;->storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 34
    .line 35
    iput-object v2, v1, Lcom/fsck/k9/preferences/K9StorageEditor;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 36
    .line 37
    return-object v1
.end method

.method public final deleteAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->accountLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->accountsMap:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->accountsInOrder:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/fsck/k9/Preferences;->legacyAccountStorageHandler:Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getStorage()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, p1, v3, v1}, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->delete(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->commit()Z

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->newAccount:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 41
    .line 42
    if-ne p1, v1, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/fsck/k9/Preferences;->newAccount:Lnet/thunderbird/core/android/account/LegacyAccountDto;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    :cond_1
    monitor-exit v0

    .line 48
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->accountRemovedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lapp/k9mail/legacy/mailstore/MessageStoreManager$$ExternalSyntheticLambda0;

    .line 68
    .line 69
    iget-object v2, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 70
    .line 71
    iget-object v1, v1, Lapp/k9mail/legacy/mailstore/MessageStoreManager$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    iget-object v1, v1, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->messageStores:Lj$/util/concurrent/ConcurrentHashMap;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->notifyAccountsChangeListeners()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :goto_2
    monitor-exit v0

    .line 87
    throw p0
.end method

.method public final generateAccountNumber()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 31
    .line 32
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/4 v0, -0x1

    .line 53
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Ljava/lang/Number;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/lit8 v2, v0, 0x1

    .line 70
    .line 71
    if-le v1, v2, :cond_1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    move v0, v1

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    return v0
.end method

.method public final getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->accountLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->accountsMap:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->loadAccounts()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/Preferences;->accountsMap:Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-object p0

    .line 30
    :goto_1
    monitor-exit v0

    .line 31
    throw p0
.end method

.method public final getAccounts()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->accountLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->accountsMap:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->loadAccounts()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/Preferences;->accountsInOrder:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p0
.end method

.method public final getAccountsFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 3

    .line 1
    new-instance v0, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p0, v1, v2}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, -0x1

    .line 13
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/fsck/k9/Preferences;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 18
    .line 19
    invoke-static {v0, p0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final getStorage()Lnet/thunderbird/core/preference/storage/InMemoryStorage;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->storageLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->currentStorage:Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/fsck/k9/Preferences;->currentStorage:Lnet/thunderbird/core/preference/storage/InMemoryStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit v0

    .line 20
    return-object v1

    .line 21
    :goto_1
    monitor-exit v0

    .line 22
    throw p0
.end method

.method public final loadAccounts()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->accountLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getStorage()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "accountUuids"

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    const-string v5, ","

    .line 35
    .line 36
    filled-new-array {v5}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const/4 v6, 0x6

    .line 41
    invoke-static {v3, v5, v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Ljava/lang/String;

    .line 60
    .line 61
    iget-object v6, p0, Lcom/fsck/k9/Preferences;->accountsMap:Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_4

    .line 74
    :cond_1
    move-object v6, v4

    .line 75
    :goto_1
    if-nez v6, :cond_2

    .line 76
    .line 77
    new-instance v6, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 78
    .line 79
    new-instance v7, Lcom/fsck/k9/Preferences$$ExternalSyntheticLambda1;

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    invoke-direct {v7, p0, v8}, Lcom/fsck/k9/Preferences$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/Preferences;I)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v6, v5, v7}, Lnet/thunderbird/core/android/account/LegacyAccountDto;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object v7, p0, Lcom/fsck/k9/Preferences;->legacyAccountStorageHandler:Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getStorage()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v6, v8}, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->load(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    iget-object v5, p0, Lcom/fsck/k9/Preferences;->accountDefaultsProvider:Lnet/thunderbird/core/android/account/AccountDefaultsProvider;

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getStorage()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v5, Lnet/thunderbird/app/common/account/DefaultAccountDefaultsProvider;

    .line 113
    .line 114
    invoke-virtual {v5, v6, v7}, Lnet/thunderbird/app/common/account/DefaultAccountDefaultsProvider;->applyOverwrites(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/fsck/k9/Preferences;->newAccount:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 119
    .line 120
    if-eqz v3, :cond_6

    .line 121
    .line 122
    invoke-virtual {v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    const/4 v6, -0x1

    .line 127
    if-eq v5, v6, :cond_4

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    move-object v3, v4

    .line 131
    :goto_3
    if-eqz v3, :cond_6

    .line 132
    .line 133
    iget-object v5, v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 134
    .line 135
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-nez v5, :cond_5

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :cond_5
    iput-object v4, p0, Lcom/fsck/k9/Preferences;->newAccount:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 148
    .line 149
    :cond_6
    iput-object v1, p0, Lcom/fsck/k9/Preferences;->accountsMap:Ljava/util/LinkedHashMap;

    .line 150
    .line 151
    iput-object v2, p0, Lcom/fsck/k9/Preferences;->accountsInOrder:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    monitor-exit v0

    .line 154
    return-void

    .line 155
    :goto_4
    monitor-exit v0

    .line 156
    throw p0
.end method

.method public final notifyAccountsChangeListeners()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/Preferences;->accountsChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lnet/thunderbird/core/android/account/AccountsChangeListener;

    .line 21
    .line 22
    invoke-interface {v0}, Lnet/thunderbird/core/android/account/AccountsChangeListener;->onAccountsChanged()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->generateAccountNumber()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAccountNumber(I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isChangedVisibleLimits()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayCount()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    new-instance v3, Landroid/content/ContentValues;

    .line 37
    .line 38
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v4, "visible_limit"

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v2, "more_messages"

    .line 52
    .line 53
    const-string v4, "unknown"

    .line 54
    .line 55
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v1, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 59
    .line 60
    new-instance v2, Lcom/fsck/k9/mailstore/LocalStore$2;

    .line 61
    .line 62
    invoke-direct {v2, v3, v0}, Lcom/fsck/k9/mailstore/LocalStore$2;-><init>(Landroid/content/ContentValues;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception v1

    .line 70
    const-string v2, "Failed to load LocalStore!"

    .line 71
    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {v1, v2, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->resetChangeMarkers()V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->accountLock:Ljava/lang/Object;

    .line 81
    .line 82
    monitor-enter v0

    .line 83
    :try_start_1
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->createStorageEditor()Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/fsck/k9/Preferences;->legacyAccountStorageHandler:Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getStorage()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v2, p1, v3, v1}, Lnet/thunderbird/feature/account/storage/legacy/LegacyAccountStorageHandler;->save(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->commit()Z

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->loadAccounts()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .line 101
    .line 102
    monitor-exit v0

    .line 103
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->notifyAccountsChangeListeners()V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    monitor-exit v0

    .line 109
    throw p0
.end method

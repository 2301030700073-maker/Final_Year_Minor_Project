.class public final Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/preference/PreferenceChangeSubscriber;


# instance fields
.field public final configState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final mutex:Lkotlinx/coroutines/sync/MutexImpl;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final storageEditor:Lcom/fsck/k9/preferences/K9StorageEditor;

.field public final storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/preferences/K9StoragePersister;Lcom/fsck/k9/preferences/K9StorageEditor;Lnet/thunderbird/core/preference/PreferenceChangeBroker;)V
    .locals 2

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 20
    .line 21
    iput-object p2, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 22
    .line 23
    iput-object p3, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->storageEditor:Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 24
    .line 25
    iput-object v0, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 26
    .line 27
    iput-object v1, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 28
    .line 29
    check-cast p4, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;

    .line 30
    .line 31
    invoke-virtual {p4, p0}, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;->subscribe(Lnet/thunderbird/core/preference/PreferenceChangeSubscriber;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->loadConfig()Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 43
    .line 44
    new-instance p1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 45
    .line 46
    invoke-direct {p1}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final getConfig()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 8
    .line 9
    return-object p0
.end method

.method public final loadConfig()Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;
    .locals 10

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "showUnifiedInbox"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "showComposeButtonOnMessageList"

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-virtual {v0, v1, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "isThreadedViewEnabled"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "showStarredCount"

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "messageListStars"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v3}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string v0, "messageListSenderAboveSubject"

    .line 60
    .line 61
    invoke-virtual {p0, v0, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    new-instance v3, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 66
    .line 67
    invoke-direct/range {v3 .. v9}, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;-><init>(ZZZZZZ)V

    .line 68
    .line 69
    .line 70
    return-object v3
.end method

.method public final receive(Lnet/thunderbird/core/preference/PreferenceScope;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/thunderbird/core/preference/PreferenceScope;->ALL:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lnet/thunderbird/core/preference/PreferenceScope;->DISPLAY_INBOX:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 13
    .line 14
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v1, v0

    .line 19
    check-cast v1, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 20
    .line 21
    invoke-virtual {p0}, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->loadConfig()Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final save(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, v1}, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 13
    .line 14
    const-string v2, "DefaultDisplayInboxSettingsPreferenceManager"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x2

    .line 18
    invoke-static {v1, v2, v3, v0, v4}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    invoke-direct {v0, p1, v5}, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2, v3, v0, v4}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    .line 31
    .line 32
    const/16 v1, 0x16

    .line 33
    .line 34
    invoke-direct {v0, p0, p1, v3, v1}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 38
    .line 39
    iget-object v2, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 40
    .line 41
    invoke-static {v1, v2, v3, v0, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DefaultDisplayInboxSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 45
    .line 46
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    move-object v2, v1

    .line 51
    check-cast v2, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 52
    .line 53
    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    return-void
.end method

.class public final Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/preference/PreferenceChangeSubscriber;


# instance fields
.field public final configState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final logLevelManager:Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final mutex:Lkotlinx/coroutines/sync/MutexImpl;

.field public final platformConfigProvider:Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final storageEditor:Lcom/fsck/k9/preferences/K9StorageEditor;

.field public final storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lcom/fsck/k9/preferences/K9StoragePersister;Lcom/fsck/k9/preferences/K9StorageEditor;Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;Lnet/thunderbird/core/preference/PreferenceChangeBroker;)V
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
    iput-object p1, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 20
    .line 21
    iput-object p2, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 22
    .line 23
    iput-object p3, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->storageEditor:Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 24
    .line 25
    iput-object p4, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->logLevelManager:Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;

    .line 26
    .line 27
    iput-object v0, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 28
    .line 29
    iput-object v1, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 30
    .line 31
    iput-object p5, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->platformConfigProvider:Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

    .line 32
    .line 33
    check-cast p6, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;

    .line 34
    .line 35
    invoke-virtual {p6, p0}, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;->subscribe(Lnet/thunderbird/core/preference/PreferenceChangeSubscriber;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->loadConfig()Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 47
    .line 48
    new-instance p1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 49
    .line 50
    invoke-direct {p1}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final loadConfig()Lnet/thunderbird/core/preference/debugging/DebuggingSettings;
    .locals 6

    .line 1
    new-instance v0, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->platformConfigProvider:Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v3, "enableDebugLogging"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v2, v3, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v5, "enableSyncDebugLogging"

    .line 26
    .line 27
    invoke-virtual {v3, v5, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v5, "enableSensitiveLogging"

    .line 36
    .line 37
    invoke-virtual {v1, v5, v4}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getBoolean(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-direct {v0, v2, v3, v1}, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;-><init>(ZZZ)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->logLevelManager:Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;->logLevel:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 52
    .line 53
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    move-object v2, p0

    .line 58
    check-cast v2, Lnet/thunderbird/core/logging/LogLevel;

    .line 59
    .line 60
    sget-object v2, Lnet/thunderbird/core/logging/LogLevel;->VERBOSE:Lnet/thunderbird/core/logging/LogLevel;

    .line 61
    .line 62
    invoke-virtual {v1, p0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;->defaultLevel:Lnet/thunderbird/core/logging/LogLevel;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;->logLevel:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 75
    .line 76
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    move-object v3, v2

    .line 81
    check-cast v3, Lnet/thunderbird/core/logging/LogLevel;

    .line 82
    .line 83
    invoke-virtual {p0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    :goto_0
    return-object v0
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
    sget-object v0, Lnet/thunderbird/core/preference/PreferenceScope;->DEBUGGING:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

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
    check-cast v1, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 20
    .line 21
    invoke-virtual {p0}, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->loadConfig()Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

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
    check-cast p1, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, v1}, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/preference/debugging/DebuggingSettings;I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 13
    .line 14
    const-string v2, "DefaultDebuggingSettingsPreferenceManager"

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
    new-instance v0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    invoke-direct {v0, p1, v5}, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/preference/debugging/DebuggingSettings;I)V

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
    const/16 v1, 0x14

    .line 33
    .line 34
    invoke-direct {v0, p0, p1, v3, v1}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 38
    .line 39
    iget-object v2, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 40
    .line 41
    invoke-static {v1, v2, v3, v0, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

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
    check-cast v2, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 52
    .line 53
    iget-boolean v2, p1, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 54
    .line 55
    iget-object v3, p0, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->logLevelManager:Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object v2, v3, Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;->logLevel:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 63
    .line 64
    :cond_1
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    move-object v4, v3

    .line 69
    check-cast v4, Lnet/thunderbird/core/logging/LogLevel;

    .line 70
    .line 71
    sget-object v4, Lnet/thunderbird/core/logging/LogLevel;->VERBOSE:Lnet/thunderbird/core/logging/LogLevel;

    .line 72
    .line 73
    invoke-virtual {v2, v3, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    iget-object v2, v3, Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;->defaultLevel:Lnet/thunderbird/core/logging/LogLevel;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    iget-object v3, v3, Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;->logLevel:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 86
    .line 87
    :cond_3
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    move-object v5, v4

    .line 92
    check-cast v5, Lnet/thunderbird/core/logging/LogLevel;

    .line 93
    .line 94
    invoke-virtual {v3, v4, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    :goto_0
    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    .line 106
    return-void
.end method

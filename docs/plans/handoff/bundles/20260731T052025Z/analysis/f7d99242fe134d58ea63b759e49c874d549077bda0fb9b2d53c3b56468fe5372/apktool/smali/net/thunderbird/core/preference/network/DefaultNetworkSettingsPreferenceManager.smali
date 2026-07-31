.class public final Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;
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
    iput-object p1, p0, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 20
    .line 21
    iput-object p2, p0, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;->storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 22
    .line 23
    iput-object p3, p0, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;->storageEditor:Lcom/fsck/k9/preferences/K9StorageEditor;

    .line 24
    .line 25
    iput-object v0, p0, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 26
    .line 27
    iput-object v1, p0, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 28
    .line 29
    check-cast p4, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;

    .line 30
    .line 31
    invoke-virtual {p4, p0}, Lnet/thunderbird/core/preference/DefaultPreferenceChangeBroker;->subscribe(Lnet/thunderbird/core/preference/PreferenceChangeSubscriber;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;->loadConfig()Lnet/thunderbird/core/preference/network/NetworkSettings;

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
    iput-object p1, p0, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 43
    .line 44
    new-instance p1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 45
    .line 46
    invoke-direct {p1}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final loadConfig()Lnet/thunderbird/core/preference/network/NetworkSettings;
    .locals 8

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;->storagePersister:Lcom/fsck/k9/preferences/K9StoragePersister;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lnet/thunderbird/core/preference/network/NetworkSettingsKt;->NETWORK_SETTINGS_DEFAULT_BACKGROUND_OPS:Lnet/thunderbird/core/preference/BackgroundOps;

    .line 8
    .line 9
    const-string v1, "backgroundOperations"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-static {p0}, Lnet/thunderbird/core/preference/BackgroundOps;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/BackgroundOps;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    move-object v0, p0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Unable to convert stored key [backgroundOperations] value ["

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p0, "] "

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-class v1, Lnet/thunderbird/core/preference/BackgroundOps;

    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v3, "to enum of type "

    .line 58
    .line 59
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, "."

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {}, Lnet/thunderbird/core/preference/BackgroundOps;->values()[Lnet/thunderbird/core/preference/BackgroundOps;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const/4 v6, 0x0

    .line 79
    const/16 v7, 0x3f

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    const/4 v4, 0x0

    .line 83
    const/4 v5, 0x0

    .line 84
    invoke-static/range {v2 .. v7}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const-string v3, "Valid values: "

    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {p0, v1, v2, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    const/4 p0, 0x0

    .line 98
    return-object p0

    .line 99
    :cond_0
    :goto_0
    new-instance p0, Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 100
    .line 101
    invoke-direct {p0, v0}, Lnet/thunderbird/core/preference/network/NetworkSettings;-><init>(Lnet/thunderbird/core/preference/BackgroundOps;)V

    .line 102
    .line 103
    .line 104
    return-object p0
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
    sget-object v0, Lnet/thunderbird/core/preference/PreferenceScope;->NETWORK:Lnet/thunderbird/core/preference/PreferenceScope;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

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
    check-cast v1, Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 20
    .line 21
    invoke-virtual {p0}, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;->loadConfig()Lnet/thunderbird/core/preference/network/NetworkSettings;

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
    check-cast p1, Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, v1}, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/preference/network/NetworkSettings;I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 13
    .line 14
    const-string v2, "DefaultNetworkSettingsPreferenceManager"

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
    new-instance v0, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    invoke-direct {v0, p1, v5}, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/preference/network/NetworkSettings;I)V

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
    const/16 v1, 0x1a

    .line 33
    .line 34
    invoke-direct {v0, p0, p1, v3, v1}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 38
    .line 39
    iget-object v2, p0, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 40
    .line 41
    invoke-static {v1, v2, v3, v0, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/core/preference/network/DefaultNetworkSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

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
    check-cast v2, Lnet/thunderbird/core/preference/network/NetworkSettings;

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

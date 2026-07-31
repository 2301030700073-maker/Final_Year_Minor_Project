.class public final Lapp/k9mail/K9App;
.super Landroid/app/Application;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final appCoroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final appLanguageManager$delegate:Lkotlin/Lazy;

.field public appLanguageManagerInitialized:Z

.field public final logger$delegate:Lkotlin/Lazy;

.field public final messageListWidgetManager$delegate:Lkotlin/Lazy;

.field public final messagingController$delegate:Lkotlin/Lazy;

.field public final messagingListenerProvider$delegate:Lkotlin/Lazy;

.field public final notificationChannelManager$delegate:Lkotlin/Lazy;

.field public final syncDebugFileLogSink$delegate:Lkotlin/Lazy;

.field public final themeManager$delegate:Lkotlin/Lazy;

.field public final workManagerConfigurationProvider$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnet/thunderbird/app/common/BaseApplication$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lnet/thunderbird/app/common/BaseApplication$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/K9App;I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lapp/k9mail/K9App;->messagingController$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lnet/thunderbird/app/common/BaseApplication$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v0, p0, v2}, Lnet/thunderbird/app/common/BaseApplication$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/K9App;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lapp/k9mail/K9App;->messagingListenerProvider$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance v0, Lnet/thunderbird/app/common/BaseApplication$special$$inlined$inject$default$1;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-direct {v0, p0, v2}, Lnet/thunderbird/app/common/BaseApplication$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/K9App;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lapp/k9mail/K9App;->themeManager$delegate:Lkotlin/Lazy;

    .line 41
    .line 42
    new-instance v0, Lnet/thunderbird/app/common/BaseApplication$special$$inlined$inject$default$1;

    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    invoke-direct {v0, p0, v2}, Lnet/thunderbird/app/common/BaseApplication$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/K9App;I)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lapp/k9mail/K9App;->appLanguageManager$delegate:Lkotlin/Lazy;

    .line 53
    .line 54
    new-instance v0, Lnet/thunderbird/app/common/BaseApplication$special$$inlined$inject$default$1;

    .line 55
    .line 56
    const/4 v2, 0x4

    .line 57
    invoke-direct {v0, p0, v2}, Lnet/thunderbird/app/common/BaseApplication$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/K9App;I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lapp/k9mail/K9App;->notificationChannelManager$delegate:Lkotlin/Lazy;

    .line 65
    .line 66
    new-instance v0, Lnet/thunderbird/app/common/BaseApplication$special$$inlined$inject$default$1;

    .line 67
    .line 68
    const/4 v2, 0x5

    .line 69
    invoke-direct {v0, p0, v2}, Lnet/thunderbird/app/common/BaseApplication$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/K9App;I)V

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lapp/k9mail/K9App;->messageListWidgetManager$delegate:Lkotlin/Lazy;

    .line 77
    .line 78
    new-instance v0, Lnet/thunderbird/app/common/BaseApplication$special$$inlined$inject$default$1;

    .line 79
    .line 80
    const/4 v2, 0x6

    .line 81
    invoke-direct {v0, p0, v2}, Lnet/thunderbird/app/common/BaseApplication$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/K9App;I)V

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lapp/k9mail/K9App;->workManagerConfigurationProvider$delegate:Lkotlin/Lazy;

    .line 89
    .line 90
    new-instance v0, Lnet/thunderbird/app/common/BaseApplication$special$$inlined$inject$default$1;

    .line 91
    .line 92
    const/4 v2, 0x7

    .line 93
    invoke-direct {v0, p0, v2}, Lnet/thunderbird/app/common/BaseApplication$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/K9App;I)V

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lapp/k9mail/K9App;->logger$delegate:Lkotlin/Lazy;

    .line 101
    .line 102
    new-instance v0, Lorg/koin/core/qualifier/StringQualifier;

    .line 103
    .line 104
    const-string v2, "syncDebug"

    .line 105
    .line 106
    invoke-direct {v0, v2}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 110
    .line 111
    const/16 v3, 0x1b

    .line 112
    .line 113
    invoke-direct {v2, v3, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p0, Lapp/k9mail/K9App;->syncDebugFileLogSink$delegate:Lkotlin/Lazy;

    .line 121
    .line 122
    invoke-static {}, Lkotlinx/coroutines/JobKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, p0, Lapp/k9mail/K9App;->appCoroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 127
    .line 128
    return-void
.end method


# virtual methods
.method public final applyOverrideLocaleToConfiguration()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lapp/k9mail/K9App;->getAppLanguageManager()Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/fsck/k9/ui/base/AppLanguageManager;->currentOverrideLocale:Ljava/util/Locale;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lapp/k9mail/K9App;->getSuperResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1, v0}, Lapp/k9mail/K9App;->updateConfigurationWithLocale(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/fsck/k9/Core;->context$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    sget-object v0, Lapp/k9mail/K9KoinModuleKt;->appModule:Lorg/koin/core/module/Module;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2, p0, v0}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    new-instance v2, Lorg/koin/core/KoinApplication;

    .line 19
    .line 20
    invoke-direct {v2}, Lorg/koin/core/KoinApplication;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v3, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    iget-object v3, v2, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    .line 28
    .line 29
    sput-object v3, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v1, v2, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    .line 35
    .line 36
    invoke-virtual {v1}, Lorg/koin/core/Koin;->createEagerInstances()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    iget-object v0, p0, Lapp/k9mail/K9App;->logger$delegate:Lkotlin/Lazy;

    .line 41
    .line 42
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    sput-object v0, Lnet/thunderbird/core/logging/legacy/Log;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 52
    .line 53
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    :try_start_1
    new-instance p0, Lorg/koin/core/error/InstanceCreationException;

    .line 60
    .line 61
    const-string p1, "A Koin Application has already been started"

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :goto_0
    monitor-exit v0

    .line 68
    throw p0
.end method

.method public final getAppLanguageManager()Lcom/fsck/k9/ui/base/AppLanguageManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/k9mail/K9App;->appLanguageManager$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lapp/k9mail/K9App;->appLanguageManagerInitialized:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lapp/k9mail/K9App;->getAppLanguageManager()Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lcom/fsck/k9/ui/base/AppLanguageManager;->currentOverrideLocale:Ljava/util/Locale;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Landroidx/camera/camera2/compat/Api24Compat;->getCurrentLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    const-string v2, "Resources configuration was reset. Re-applying locale override."

    .line 38
    .line 39
    invoke-static {v2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lapp/k9mail/K9App;->getAppLanguageManager()Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v1, v1, Lcom/fsck/k9/ui/base/AppLanguageManager;->currentOverrideLocale:Ljava/util/Locale;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p0}, Lapp/k9mail/K9App;->applyOverrideLocaleToConfiguration()V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method public final getSuperResources()Landroid/content/res/Resources;
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lapp/k9mail/K9App;->applyOverrideLocaleToConfiguration()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lapp/k9mail/K9App;->getSuperResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onCreate()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/fsck/k9/K9;->INSTANCE:Lcom/fsck/k9/K9;

    .line 5
    .line 6
    new-instance v0, Lokio/Path$Companion;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 12
    .line 13
    const-string v0, "database_version_cache"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/fsck/k9/K9;->databaseVersionCache:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v2, "last_account_database_version"

    .line 26
    .line 27
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const-class v2, Lcom/fsck/k9/storage/K9SchemaDefinitionFactory;

    .line 32
    .line 33
    invoke-static {v2}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/fsck/k9/storage/K9SchemaDefinitionFactory;

    .line 38
    .line 39
    const/16 v2, 0x5b

    .line 40
    .line 41
    if-lt v0, v2, :cond_0

    .line 42
    .line 43
    invoke-static {v1}, Lcom/fsck/k9/K9;->setDatabasesUpToDate(Z)V

    .line 44
    .line 45
    .line 46
    :cond_0
    sget-object v0, Lcom/fsck/k9/K9;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 47
    .line 48
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->preferences:Lcom/fsck/k9/Preferences;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getStorage()Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/fsck/k9/K9;->loadPrefs(Lnet/thunderbird/core/preference/storage/InMemoryStorage;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lcom/fsck/k9/Core;->context$delegate:Lkotlin/Lazy;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mTempDirectory:Ljava/io/File;

    .line 70
    .line 71
    invoke-static {p0}, Lcom/fsck/k9/Core;->setServicesEnabled(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lcom/fsck/k9/Core;->appCoroutineScope$delegate:Lkotlin/Lazy;

    .line 75
    .line 76
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 81
    .line 82
    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 83
    .line 84
    sget-object v2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 85
    .line 86
    new-instance v3, Lcom/fsck/k9/Core$restoreNotifications$1;

    .line 87
    .line 88
    const/4 v4, 0x2

    .line 89
    const/4 v5, 0x0

    .line 90
    invoke-direct {v3, v4, v5, v1}, Lcom/fsck/k9/Core$restoreNotifications$1;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v2, v5, v3, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lapp/k9mail/K9App;->getAppLanguageManager()Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v2, v0, Lcom/fsck/k9/ui/base/AppLanguageManager;->displayCoreSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

    .line 101
    .line 102
    invoke-virtual {v2}, Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 107
    .line 108
    iget-object v2, v2, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appLanguage:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Lcom/fsck/k9/ui/base/AppLanguageManager;->setLocale(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lapp/k9mail/K9App;->applyOverrideLocaleToConfiguration()V

    .line 114
    .line 115
    .line 116
    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lapp/k9mail/K9App;->appLanguageManagerInitialized:Z

    .line 118
    .line 119
    invoke-virtual {p0}, Lapp/k9mail/K9App;->getAppLanguageManager()Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    iget-object v2, v2, Lcom/fsck/k9/ui/base/AppLanguageManager;->overrideLocale:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 124
    .line 125
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 126
    .line 127
    invoke-direct {v3, v2, v1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 128
    .line 129
    .line 130
    new-instance v2, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 131
    .line 132
    const/16 v6, 0xc

    .line 133
    .line 134
    invoke-direct {v2, p0, v5, v6}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 135
    .line 136
    .line 137
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 138
    .line 139
    invoke-direct {v6, v3, v2, v4}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Lapp/k9mail/K9App;->appCoroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 143
    .line 144
    invoke-static {v6, v2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lapp/k9mail/K9App;->getAppLanguageManager()Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    iget-object v3, v3, Lcom/fsck/k9/ui/base/AppLanguageManager;->appLocale:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 152
    .line 153
    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    new-instance v6, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 158
    .line 159
    const/16 v7, 0xf

    .line 160
    .line 161
    invoke-direct {v6, p0, v5, v7}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 162
    .line 163
    .line 164
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 165
    .line 166
    invoke-direct {v7, v3, v6, v4}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 167
    .line 168
    .line 169
    invoke-static {v7, v2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 170
    .line 171
    .line 172
    iget-object v2, p0, Lapp/k9mail/K9App;->themeManager$delegate:Lkotlin/Lazy;

    .line 173
    .line 174
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 179
    .line 180
    iget-object v3, v2, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 181
    .line 182
    check-cast v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 183
    .line 184
    iget-object v3, v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->generalSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 185
    .line 186
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 187
    .line 188
    const/4 v7, 0x4

    .line 189
    invoke-direct {v6, v3, v7}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 190
    .line 191
    .line 192
    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    new-instance v6, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 197
    .line 198
    const/16 v7, 0x10

    .line 199
    .line 200
    invoke-direct {v6, v2, v5, v7}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 201
    .line 202
    .line 203
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 204
    .line 205
    invoke-direct {v5, v3, v6, v4}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 206
    .line 207
    .line 208
    iget-object v2, v2, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->appCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 209
    .line 210
    sget-object v3, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 211
    .line 212
    iget-object v3, v3, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    .line 213
    .line 214
    new-instance v4, Lkotlinx/coroutines/internal/ContextScope;

    .line 215
    .line 216
    invoke-interface {v2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-direct {v4, v2}, Lkotlinx/coroutines/internal/ContextScope;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v5, v4}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 228
    .line 229
    .line 230
    iget-object v2, p0, Lapp/k9mail/K9App;->messageListWidgetManager$delegate:Lkotlin/Lazy;

    .line 231
    .line 232
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;

    .line 237
    .line 238
    iget-object v3, v2, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->context:Landroid/content/Context;

    .line 239
    .line 240
    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    iput-object v4, v2, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 245
    .line 246
    if-nez v4, :cond_1

    .line 247
    .line 248
    const-string v4, "Message list widget is not supported on this device."

    .line 249
    .line 250
    new-array v5, v1, [Ljava/lang/Object;

    .line 251
    .line 252
    invoke-static {v4, v5}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_1
    invoke-virtual {v2}, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->getAppWidgetIds()[I

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    array-length v4, v4

    .line 260
    if-nez v4, :cond_2

    .line 261
    .line 262
    move v1, v0

    .line 263
    :cond_2
    if-nez v1, :cond_4

    .line 264
    .line 265
    invoke-virtual {v2}, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->getAppWidgetIds()[I

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    array-length v1, v0

    .line 270
    if-nez v1, :cond_3

    .line 271
    .line 272
    goto :goto_0

    .line 273
    :cond_3
    new-instance v1, Landroid/content/Intent;

    .line 274
    .line 275
    const-class v4, Lcom/fsck/k9/widget/list/MessageListWidgetProvider;

    .line 276
    .line 277
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .line 279
    .line 280
    const-string v4, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 281
    .line 282
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    .line 284
    .line 285
    const-string v4, "appWidgetIds"

    .line 286
    .line 287
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 291
    .line 292
    .line 293
    :goto_0
    invoke-virtual {v2}, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->registerMessageListChangedListener()V

    .line 294
    .line 295
    .line 296
    :cond_4
    iget-object v0, p0, Lapp/k9mail/K9App;->messagingListenerProvider$delegate:Lkotlin/Lazy;

    .line 297
    .line 298
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    check-cast v0, Lcom/fsck/k9/DefaultMessagingListenerProvider;

    .line 303
    .line 304
    iget-object v0, v0, Lcom/fsck/k9/DefaultMessagingListenerProvider;->listeners:Ljava/util/List;

    .line 305
    .line 306
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_5

    .line 315
    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    check-cast v1, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 321
    .line 322
    iget-object v2, p0, Lapp/k9mail/K9App;->messagingController$delegate:Lkotlin/Lazy;

    .line 323
    .line 324
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    check-cast v2, Lcom/fsck/k9/controller/MessagingController;

    .line 329
    .line 330
    invoke-virtual {v2, v1}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V

    .line 331
    .line 332
    .line 333
    goto :goto_1

    .line 334
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    new-instance v1, Lnet/thunderbird/core/common/exception/ExceptionHandler;

    .line 339
    .line 340
    invoke-direct {v1, v0}, Lnet/thunderbird/core/common/exception/ExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 341
    .line 342
    .line 343
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 344
    .line 345
    .line 346
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->newInstance:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 347
    .line 348
    iget-object v0, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 349
    .line 350
    new-instance v1, Landroidx/emoji2/text/EmojiCompatInitializer$1;

    .line 351
    .line 352
    iget-object p0, p0, Lapp/k9mail/K9App;->syncDebugFileLogSink$delegate:Lkotlin/Lazy;

    .line 353
    .line 354
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object p0

    .line 358
    check-cast p0, Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 359
    .line 360
    invoke-direct {v1, p0}, Landroidx/emoji2/text/EmojiCompatInitializer$1;-><init>(Lnet/thunderbird/core/logging/file/FileLogSink;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 364
    .line 365
    .line 366
    return-void
.end method

.method public final updateConfigurationWithLocale(Landroid/content/res/Configuration;Ljava/util/Locale;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Updating application configuration with locale \'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "\'"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroid/content/res/Configuration;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p2}, Landroidx/camera/camera2/compat/Api24Compat;->setCurrentLocale(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lapp/k9mail/K9App;->getSuperResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0}, Lapp/k9mail/K9App;->getSuperResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

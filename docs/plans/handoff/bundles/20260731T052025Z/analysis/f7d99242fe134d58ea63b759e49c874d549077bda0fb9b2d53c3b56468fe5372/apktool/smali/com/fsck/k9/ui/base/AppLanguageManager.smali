.class public final Lcom/fsck/k9/ui/base/AppLanguageManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final _appLocale:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final _overrideLocale:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final appLocale:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public currentOverrideLocale:Ljava/util/Locale;

.field public final displayCoreSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

.field public final overrideLocale:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final systemLocaleListener:Lcom/fsck/k9/ui/base/AppLanguageManager$$ExternalSyntheticLambda0;

.field public final systemLocaleManager:Lcom/fsck/k9/ui/base/locale/SystemLocaleManager;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/base/locale/SystemLocaleManager;Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;)V
    .locals 2

    .line 1
    invoke-static {}, Lkotlinx/coroutines/JobKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/fsck/k9/ui/base/AppLanguageManager;->systemLocaleManager:Lcom/fsck/k9/ui/base/locale/SystemLocaleManager;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/fsck/k9/ui/base/AppLanguageManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/fsck/k9/ui/base/AppLanguageManager;->displayCoreSettingsPreferenceManager:Lnet/thunderbird/core/preference/display/coreSettings/DefaultDisplayCoreSettingsPreferenceManager;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    const/4 p2, 0x6

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/fsck/k9/ui/base/AppLanguageManager;->_overrideLocale:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 22
    .line 23
    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/fsck/k9/ui/base/AppLanguageManager;->_appLocale:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/fsck/k9/ui/base/AppLanguageManager;->overrideLocale:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/fsck/k9/ui/base/AppLanguageManager;->appLocale:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 32
    .line 33
    new-instance p1, Lcom/fsck/k9/ui/base/AppLanguageManager$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/fsck/k9/ui/base/AppLanguageManager$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/base/AppLanguageManager;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/fsck/k9/ui/base/AppLanguageManager;->systemLocaleListener:Lcom/fsck/k9/ui/base/AppLanguageManager$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final setLocale(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v7, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move-object v5, v7

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v3, 0x5

    .line 17
    if-ne v0, v3, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/16 v4, 0x5f

    .line 25
    .line 26
    if-ne v3, v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v3, Ljava/util/Locale$Builder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/util/Locale$Builder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_0
    move-object v5, p1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    new-instance v0, Ljava/util/Locale$Builder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_0

    .line 69
    :goto_1
    iput-object v5, p0, Lcom/fsck/k9/ui/base/AppLanguageManager;->currentOverrideLocale:Ljava/util/Locale;

    .line 70
    .line 71
    if-nez v5, :cond_2

    .line 72
    .line 73
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Landroidx/camera/camera2/compat/Api24Compat;->getCurrentLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    move-object v6, p1

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    move-object v6, v5

    .line 91
    :goto_2
    invoke-static {v6}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/fsck/k9/ui/base/AppLanguageManager;->systemLocaleManager:Lcom/fsck/k9/ui/base/locale/SystemLocaleManager;

    .line 95
    .line 96
    iget-object v3, p0, Lcom/fsck/k9/ui/base/AppLanguageManager;->systemLocaleListener:Lcom/fsck/k9/ui/base/AppLanguageManager$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    if-nez v5, :cond_4

    .line 99
    .line 100
    monitor-enter p1

    .line 101
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object v0, p1, Lcom/fsck/k9/ui/base/locale/SystemLocaleManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    const-string v0, "Enable LocaleBroadcastReceiver"

    .line 113
    .line 114
    new-array v4, v2, [Ljava/lang/Object;

    .line 115
    .line 116
    invoke-static {v0, v4}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    :try_start_1
    iget-object v0, p1, Lcom/fsck/k9/ui/base/locale/SystemLocaleManager;->packageManager:Landroid/content/pm/PackageManager;

    .line 120
    .line 121
    iget-object v4, p1, Lcom/fsck/k9/ui/base/locale/SystemLocaleManager;->componentName:Landroid/content/ComponentName;

    .line 122
    .line 123
    const/4 v8, 0x1

    .line 124
    invoke-virtual {v0, v4, v8, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :catch_0
    move-exception v0

    .line 129
    :try_start_2
    const-string v4, "Error enabling LocaleBroadcastReceiver"

    .line 130
    .line 131
    new-array v2, v2, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-static {v0, v4, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    :goto_3
    iget-object v0, p1, Lcom/fsck/k9/ui/base/locale/SystemLocaleManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 137
    .line 138
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    .line 140
    .line 141
    monitor-exit p1

    .line 142
    goto :goto_4

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    move-object p0, v0

    .line 145
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    throw p0

    .line 147
    :cond_4
    invoke-virtual {p1, v3}, Lcom/fsck/k9/ui/base/locale/SystemLocaleManager;->removeListener(Lcom/fsck/k9/ui/base/AppLanguageManager$$ExternalSyntheticLambda0;)V

    .line 148
    .line 149
    .line 150
    :goto_4
    iget-object p1, p0, Lcom/fsck/k9/ui/base/AppLanguageManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 151
    .line 152
    new-instance v3, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 153
    .line 154
    const/16 v8, 0x17

    .line 155
    .line 156
    move-object v4, p0

    .line 157
    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 158
    .line 159
    .line 160
    invoke-static {p1, v7, v7, v3, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 161
    .line 162
    .line 163
    return-void
.end method

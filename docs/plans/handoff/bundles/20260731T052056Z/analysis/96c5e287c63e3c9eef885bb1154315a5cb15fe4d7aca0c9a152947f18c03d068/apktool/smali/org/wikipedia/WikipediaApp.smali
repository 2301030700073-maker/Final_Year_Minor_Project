.class public final Lorg/wikipedia/WikipediaApp;
.super Landroid/app/Application;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/WikipediaApp;",
        "Landroid/app/Application;",
        "<init>",
        "()V",
        "org/jsoup/Jsoup",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static instance:Lorg/wikipedia/WikipediaApp;


# instance fields
.field public final activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

.field public final appSessionEvent$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final connectionStateMonitor:Lorg/wikipedia/connectivity/ConnectionStateMonitor;

.field public currentTheme:Lorg/wikipedia/theme/Theme;

.field public defaultWikiSite:Lorg/wikipedia/dataclient/WikiSite;

.field public final languageState$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final mainThreadHandler$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final tabList:Ljava/util/ArrayList;

.field public final userAgent$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final voiceRecognitionAvailable$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    sput-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 5
    .line 6
    new-instance v0, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/WikipediaApp;I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lorg/wikipedia/WikipediaApp;->mainThreadHandler$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 18
    .line 19
    new-instance v0, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/WikipediaApp;I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lorg/wikipedia/WikipediaApp;->languageState$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 31
    .line 32
    new-instance v0, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, v1}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(I)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lorg/wikipedia/WikipediaApp;->appSessionEvent$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 44
    .line 45
    new-instance v0, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/WikipediaApp;I)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lorg/wikipedia/WikipediaApp;->userAgent$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 57
    .line 58
    new-instance v0, Lorg/wikipedia/ActivityLifecycleHandler;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

    .line 64
    .line 65
    new-instance v0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;

    .line 66
    .line 67
    invoke-direct {v0}, Lorg/wikipedia/connectivity/ConnectionStateMonitor;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->connectionStateMonitor:Lorg/wikipedia/connectivity/ConnectionStateMonitor;

    .line 71
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 78
    .line 79
    sget-object v0, Lorg/wikipedia/theme/Theme;->Companion:Lorg/wikipedia/theme/Theme$Companion;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    sget-object v0, Lorg/wikipedia/theme/Theme;->LIGHT:Lorg/wikipedia/theme/Theme;

    .line 85
    .line 86
    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 87
    .line 88
    new-instance v0, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    const/4 v1, 0x3

    .line 91
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/WikipediaApp;I)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 95
    .line 96
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 97
    .line 98
    .line 99
    iput-object v1, p0, Lorg/wikipedia/WikipediaApp;->voiceRecognitionAvailable$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 100
    .line 101
    return-void
.end method

.method public static getAppInstallID()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const v1, 0x7f120649

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object v0
.end method

.method public static resetAfterLogOut()V
    .locals 5

    .line 1
    invoke-static {}, Lokhttp3/Headers$Companion;->account()Landroid/accounts/Account;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lokhttp3/Headers$Companion;->accountManager()Landroid/accounts/AccountManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 15
    .line 16
    const v0, 0x7f120647

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 21
    .line 22
    .line 23
    const-string v0, ""

    .line 24
    .line 25
    const v2, 0x7f120646

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, ""

    .line 32
    .line 33
    const v2, 0x7f120621

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const v0, 0x7f120698

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 43
    .line 44
    .line 45
    const v0, 0x7f120696

    .line 46
    .line 47
    .line 48
    const-wide/16 v2, 0x0

    .line 49
    .line 50
    invoke-static {v2, v3, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 51
    .line 52
    .line 53
    const v0, 0x7f120697

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 57
    .line 58
    .line 59
    const v0, 0x7f120613

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v3, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 66
    .line 67
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setImpactLastResponseBody(Ljava/util/Map;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setYearInReviewModelData(Ljava/util/Map;)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;

    .line 74
    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    :try_start_0
    new-instance v0, Lcoil3/network/NetworkHeaders$Builder;

    .line 78
    .line 79
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getCookies()Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 84
    .line 85
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, v2}, Lcoil3/network/NetworkHeaders$Builder;-><init>(Ljava/util/LinkedHashMap;)V

    .line 89
    .line 90
    .line 91
    sput-object v0, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->logRemoteErrorIfProd(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    :goto_0
    sget-object v0, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;

    .line 99
    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    new-instance v0, Lcoil3/network/NetworkHeaders$Builder;

    .line 103
    .line 104
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, v1}, Lcoil3/network/NetworkHeaders$Builder;-><init>(Ljava/util/LinkedHashMap;)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;

    .line 113
    .line 114
    :cond_2
    monitor-enter v0

    .line 115
    :try_start_1
    iget-object v1, v0, Lcoil3/network/NetworkHeaders$Builder;->data:Ljava/util/LinkedHashMap;

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lcoil3/network/NetworkHeaders$Builder;->persistCookies()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    .line 123
    monitor-exit v0

    .line 124
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    new-instance v1, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 129
    .line 130
    const/4 v2, 0x2

    .line 131
    const/4 v3, 0x3

    .line 132
    const/4 v4, 0x0

    .line 133
    invoke-direct {v1, v2, v3, v4}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v0, v4, v4, v1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 137
    .line 138
    .line 139
    new-instance v0, Lorg/wikipedia/events/LoggedOutEvent;

    .line 140
    .line 141
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-static {v0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    const-string v0, "Logout complete."

    .line 148
    .line 149
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :catchall_0
    move-exception v1

    .line 154
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    throw v1
.end method

.method public static unmarshalTheme(I)Lorg/wikipedia/theme/Theme;
    .locals 3

    .line 1
    sget-object v0, Lorg/wikipedia/theme/Theme;->Companion:Lorg/wikipedia/theme/Theme$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/wikipedia/theme/Theme;->getEntries()Lkotlin/enums/EnumEntries;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Lorg/wikipedia/theme/Theme;

    .line 26
    .line 27
    invoke-virtual {v2}, Lorg/wikipedia/theme/Theme;->getMarshallingId()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ne v2, p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    :goto_0
    check-cast v1, Lorg/wikipedia/theme/Theme;

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "Theme id="

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, " is invalid, using fallback."

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object p0, Lorg/wikipedia/theme/Theme;->Companion:Lorg/wikipedia/theme/Theme$Companion;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    sget-object p0, Lorg/wikipedia/theme/Theme;->LIGHT:Lorg/wikipedia/theme/Theme;

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_2
    return-object v1
.end method


# virtual methods
.method public final commitTabState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0x7f120692

    .line 8
    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 13
    .line 14
    invoke-static {v2}, Lorg/wikipedia/settings/PrefsIoUtil;->remove(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->initTabs()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    :try_start_0
    sget-object p0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v1, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 32
    .line 33
    sget-object v3, Lorg/wikipedia/page/tabs/Tab;->Companion:Lorg/wikipedia/page/tabs/Tab$Companion;

    .line 34
    .line 35
    invoke-virtual {v3}, Lorg/wikipedia/page/tabs/Tab$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x1

    .line 40
    invoke-direct {v1, v3, v4}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    :goto_0
    invoke-static {v2, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final getAcceptLanguage(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string v0, "meta"

    .line 4
    .line 5
    iget-object v1, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const-string p1, ""

    .line 18
    .line 19
    :goto_1
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lorg/wikipedia/language/AppLanguageState;->getSystemLanguageCode()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string/jumbo v2, "zh"

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static {p1, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const v3, 0x3f666666    # 0.9f

    .line 58
    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Lorg/wikipedia/language/AppLanguageState;->getBcp47LanguageCode(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {p1, v2, v3}, Lokhttp3/Cache$Companion;->appendToAcceptLanguage(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const v3, 0x3f4ccccc    # 0.79999995f

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {v1, p1}, Lorg/wikipedia/language/AppLanguageState;->getBcp47LanguageCode(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :goto_2
    invoke-virtual {v1, v0}, Lorg/wikipedia/language/AppLanguageState;->getBcp47LanguageCode(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {p1, v0, v3}, Lokhttp3/Cache$Companion;->appendToAcceptLanguage(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const v0, 0x3dcccccd    # 0.1f

    .line 87
    .line 88
    .line 89
    sub-float/2addr v3, v0

    .line 90
    invoke-virtual {v1, p0}, Lorg/wikipedia/language/AppLanguageState;->getBcp47LanguageCode(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p1, p0, v3}, Lokhttp3/Cache$Companion;->appendToAcceptLanguage(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0
.end method

.method public final getAppOrSystemLanguageCode()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getAppSessionEvent()Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/WikipediaApp;->appSessionEvent$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getFontSize(Z)F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const v0, 0x7f07049e

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {}, Lokio/Okio__OkioKt;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v2, 0x22

    .line 19
    .line 20
    if-lt v1, v2, :cond_0

    .line 21
    .line 22
    invoke-static {p0, v0}, Landroidx/core/util/TypedValueCompat$Api34Impl;->deriveDimension(FLandroid/util/DisplayMetrics;)F

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    cmpl-float v2, v0, v1

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    move p0, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    div-float/2addr p0, v0

    .line 37
    :goto_0
    if-eqz p1, :cond_2

    .line 38
    .line 39
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 40
    .line 41
    const p1, 0x7f1205f4

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-static {p1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 51
    .line 52
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    :goto_1
    int-to-float p1, p1

    .line 57
    new-instance v0, Landroid/util/TypedValue;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    const v3, 0x7f07049f

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    mul-float/2addr v0, p1

    .line 85
    const/high16 p1, 0x3f800000    # 1.0f

    .line 86
    .line 87
    add-float/2addr v0, p1

    .line 88
    mul-float/2addr v0, p0

    .line 89
    return v0
.end method

.method public final getLanguageState()Lorg/wikipedia/language/AppLanguageState;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/WikipediaApp;->languageState$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/language/AppLanguageState;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getMainThreadHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/WikipediaApp;->mainThreadHandler$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/Handler;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getTabCount()I
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lorg/wikipedia/page/tabs/Tab;

    .line 28
    .line 29
    iget-object v0, v0, Lorg/wikipedia/page/tabs/Tab;->backStack:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    :goto_0
    return v1

    .line 38
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method

.method public final declared-synchronized getWikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->defaultWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v1, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const v3, 0x7f12062a

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    const-string v0, ""

    .line 60
    .line 61
    :goto_0
    sget-object v1, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->defaultWikiSite:Lorg/wikipedia/dataclient/WikiSite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    :cond_1
    monitor-exit p0

    .line 73
    return-object v0

    .line 74
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw v0
.end method

.method public final initTabs()V
    .locals 6

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-array v1, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const v2, 0x7f120692

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object p0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-static {v2, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    :try_start_0
    sget-object v2, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance v3, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 70
    .line 71
    sget-object v4, Lorg/wikipedia/page/tabs/Tab;->Companion:Lorg/wikipedia/page/tabs/Tab$Companion;

    .line 72
    .line 73
    invoke-virtual {v4}, Lorg/wikipedia/page/tabs/Tab$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const/4 v5, 0x1

    .line 78
    invoke-direct {v3, v4, v5}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 79
    .line 80
    .line 81
    invoke-static {v3}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 86
    .line 87
    invoke-virtual {v2, v1, v3}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    :goto_0
    check-cast v0, Ljava/util/List;

    .line 97
    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 101
    .line 102
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    new-instance v0, Lorg/wikipedia/page/tabs/Tab;

    .line 112
    .line 113
    invoke-direct {v0}, Lorg/wikipedia/page/tabs/Tab;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_4
    return-void
.end method

.method public final isOnline()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/wikipedia/WikipediaApp;->connectionStateMonitor:Lorg/wikipedia/connectivity/ConnectionStateMonitor;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->lastCheckedMillis:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    const-wide/32 v2, 0xea60

    .line 14
    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->updateOnlineState(Ljava/lang/Boolean;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iput-wide v0, p0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->lastCheckedMillis:J

    .line 29
    .line 30
    :cond_0
    iget-boolean p0, p0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->online:Z

    .line 31
    .line 32
    return p0
.end method

.method public final onCreate()V
    .locals 12

    .line 1
    sget-object v0, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 4
    .line 5
    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x1c

    .line 9
    .line 10
    if-lt v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    :cond_0
    const-class v3, Landroid/os/UserManager;

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-nez v3, :cond_2

    .line 25
    .line 26
    :cond_1
    return-void

    .line 27
    :cond_2
    sget-object v3, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 28
    .line 29
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 30
    .line 31
    const v4, 0x7f120629

    .line 32
    .line 33
    .line 34
    const-string v5, ""

    .line 35
    .line 36
    invoke-static {v4, v5}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    const-string v4, "https://wikipedia.org/"

    .line 53
    .line 54
    :cond_3
    sput-object v4, Lorg/wikipedia/dataclient/WikiSite;->DEFAULT_BASE_URL:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v3, p0, Lorg/wikipedia/WikipediaApp;->connectionStateMonitor:Lorg/wikipedia/connectivity/ConnectionStateMonitor;

    .line 57
    .line 58
    invoke-virtual {v3}, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->ensureNetworkCallbackRegistered()V

    .line 59
    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-virtual {v3, v4}, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->updateOnlineState(Ljava/lang/Boolean;)V

    .line 63
    .line 64
    .line 65
    sget-object v3, Landroidx/appcompat/app/AppCompatDelegate;->sSerialExecutorForLocalesStorage:Landroidx/room/TransactionExecutor;

    .line 66
    .line 67
    sget v3, Landroidx/appcompat/widget/VectorEnabledTintResources;->$r8$clinit:I

    .line 68
    .line 69
    sget-object v3, Lorg/wikipedia/theme/Theme;->Companion:Lorg/wikipedia/theme/Theme$Companion;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    sget-object v3, Lorg/wikipedia/theme/Theme;->LIGHT:Lorg/wikipedia/theme/Theme;

    .line 75
    .line 76
    invoke-virtual {v3}, Lorg/wikipedia/theme/Theme;->getMarshallingId()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    const v5, 0x7f1205d6

    .line 81
    .line 82
    .line 83
    invoke-static {v5, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-static {v3}, Lorg/wikipedia/WikipediaApp;->unmarshalTheme(I)Lorg/wikipedia/theme/Theme;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {p0, v3}, Lorg/wikipedia/WikipediaApp;->setCurrentTheme(Lorg/wikipedia/theme/Theme;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->initTabs()V

    .line 95
    .line 96
    .line 97
    iget-object v3, p0, Lorg/wikipedia/WikipediaApp;->activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

    .line 98
    .line 99
    invoke-virtual {p0, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v3}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 103
    .line 104
    .line 105
    sget-object v3, Lorg/wikipedia/notifications/NotificationCategory;->Companion:Lorg/wikipedia/notifications/NotificationCategory$Companion;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    new-instance v3, Landroidx/core/app/NotificationManagerCompat;

    .line 111
    .line 112
    invoke-direct {v3, p0}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    const/16 v5, 0x1a

    .line 116
    .line 117
    iget-object v6, v3, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    .line 118
    .line 119
    if-lt v1, v2, :cond_4

    .line 120
    .line 121
    invoke-virtual {v3}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroup()Landroid/app/NotificationChannelGroup;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-eqz v1, :cond_6

    .line 126
    .line 127
    new-instance v7, Landroidx/core/app/NotificationChannelGroupCompat;

    .line 128
    .line 129
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 130
    .line 131
    invoke-direct {v7, v1, v8}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Landroid/app/NotificationChannelGroup;Ljava/util/List;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    if-lt v1, v5, :cond_6

    .line 136
    .line 137
    invoke-virtual {v3}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannelGroup()Landroid/app/NotificationChannelGroup;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    if-eqz v7, :cond_6

    .line 142
    .line 143
    new-instance v8, Landroidx/core/app/NotificationChannelGroupCompat;

    .line 144
    .line 145
    if-lt v1, v5, :cond_5

    .line 146
    .line 147
    invoke-virtual {v6}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    goto :goto_0

    .line 152
    :cond_5
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 153
    .line 154
    :goto_0
    invoke-direct {v8, v7, v1}, Landroidx/core/app/NotificationChannelGroupCompat;-><init>(Landroid/app/NotificationChannelGroup;Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    move-object v7, v8

    .line 158
    goto :goto_1

    .line 159
    :cond_6
    move-object v7, v4

    .line 160
    :goto_1
    if-eqz v7, :cond_9

    .line 161
    .line 162
    iget-object v1, v7, Landroidx/core/app/NotificationChannelGroupCompat;->mChannels:Ljava/util/List;

    .line 163
    .line 164
    if-eqz v1, :cond_9

    .line 165
    .line 166
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-eqz v7, :cond_8

    .line 175
    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    move-object v8, v7

    .line 181
    check-cast v8, Landroidx/core/app/NotificationChannelCompat;

    .line 182
    .line 183
    iget-object v8, v8, Landroidx/core/app/NotificationChannelCompat;->mId:Ljava/lang/String;

    .line 184
    .line 185
    sget-object v9, Lorg/wikipedia/notifications/NotificationCategory;->GAMES:Lorg/wikipedia/notifications/NotificationCategory;

    .line 186
    .line 187
    invoke-virtual {v9}, Lorg/wikipedia/notifications/NotificationCategory;->getId()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    if-eqz v8, :cond_7

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_8
    move-object v7, v4

    .line 199
    :goto_2
    check-cast v7, Landroidx/core/app/NotificationChannelCompat;

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_9
    move-object v7, v4

    .line 203
    :goto_3
    if-eqz v7, :cond_a

    .line 204
    .line 205
    const-string v1, "Create notification channels skipped."

    .line 206
    .line 207
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_c

    .line 211
    .line 212
    :cond_a
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 213
    .line 214
    const v1, 0x7f120487

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    const v7, 0x7f120486

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 229
    .line 230
    if-ge v8, v5, :cond_b

    .line 231
    .line 232
    move-object v9, v4

    .line 233
    goto :goto_4

    .line 234
    :cond_b
    new-instance v9, Landroid/app/NotificationChannelGroup;

    .line 235
    .line 236
    const-string v10, "WIKIPEDIA_NOTIFICATIONS"

    .line 237
    .line 238
    invoke-direct {v9, v10, v1}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    if-lt v8, v2, :cond_c

    .line 242
    .line 243
    invoke-virtual {v9, v7}, Landroid/app/NotificationChannelGroup;->setDescription(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :cond_c
    :goto_4
    if-lt v8, v5, :cond_d

    .line 247
    .line 248
    invoke-virtual {v6, v9}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 249
    .line 250
    .line 251
    :cond_d
    const v1, 0x7f120485

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    if-ge v8, v5, :cond_e

    .line 263
    .line 264
    move-object v9, v4

    .line 265
    goto :goto_5

    .line 266
    :cond_e
    new-instance v9, Landroid/app/NotificationChannelGroup;

    .line 267
    .line 268
    const-string v10, "WIKIPEDIA_NOTIFICATIONS_OTHER"

    .line 269
    .line 270
    invoke-direct {v9, v10, v7}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    if-lt v8, v2, :cond_f

    .line 274
    .line 275
    invoke-virtual {v9, v1}, Landroid/app/NotificationChannelGroup;->setDescription(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    :cond_f
    :goto_5
    if-lt v8, v5, :cond_10

    .line 279
    .line 280
    invoke-virtual {v6, v9}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 281
    .line 282
    .line 283
    :cond_10
    const-string v1, "MEDIAWIKI_ECHO_CHANNEL"

    .line 284
    .line 285
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationManagerCompat;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    const-string v1, "ALPHA_UPDATE_CHECKER_CHANNEL"

    .line 289
    .line 290
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationManagerCompat;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    const-string v1, "READING_LIST_SYNCING_CHANNEL"

    .line 294
    .line 295
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationManagerCompat;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    const-string v1, "SYNCING_CHANNEL"

    .line 299
    .line 300
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationManagerCompat;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-static {}, Lorg/wikipedia/notifications/NotificationCategory;->getEntries()Lkotlin/enums/EnumEntries;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    new-instance v2, Ljava/util/ArrayList;

    .line 308
    .line 309
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    :cond_11
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-eqz v3, :cond_15

    .line 321
    .line 322
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    check-cast v3, Lorg/wikipedia/notifications/NotificationCategory;

    .line 327
    .line 328
    invoke-virtual {v3}, Lorg/wikipedia/notifications/NotificationCategory;->getId()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 333
    .line 334
    if-lt v8, v5, :cond_13

    .line 335
    .line 336
    if-lt v8, v5, :cond_12

    .line 337
    .line 338
    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    goto :goto_7

    .line 343
    :cond_12
    move-object v7, v4

    .line 344
    :goto_7
    if-eqz v7, :cond_13

    .line 345
    .line 346
    new-instance v8, Landroidx/core/app/NotificationChannelCompat;

    .line 347
    .line 348
    invoke-direct {v8, v7}, Landroidx/core/app/NotificationChannelCompat;-><init>(Landroid/app/NotificationChannel;)V

    .line 349
    .line 350
    .line 351
    goto :goto_8

    .line 352
    :cond_13
    move-object v8, v4

    .line 353
    :goto_8
    if-nez v8, :cond_14

    .line 354
    .line 355
    invoke-virtual {v3}, Lorg/wikipedia/notifications/NotificationCategory;->getId()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    invoke-virtual {v3}, Lorg/wikipedia/notifications/NotificationCategory;->getImportance()I

    .line 360
    .line 361
    .line 362
    move-result v8

    .line 363
    new-instance v9, Landroidx/core/app/NotificationChannelCompat;

    .line 364
    .line 365
    invoke-direct {v9, v8, v7}, Landroidx/core/app/NotificationChannelCompat;-><init>(ILjava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3}, Lorg/wikipedia/notifications/NotificationCategory;->getTitle()I

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    iput-object v7, v9, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/CharSequence;

    .line 377
    .line 378
    invoke-virtual {v3}, Lorg/wikipedia/notifications/NotificationCategory;->getDescription()I

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    iput-object v7, v9, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v3}, Lorg/wikipedia/notifications/NotificationCategory;->getGroup()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    iput-object v3, v9, Landroidx/core/app/NotificationChannelCompat;->mGroupId:Ljava/lang/String;

    .line 393
    .line 394
    const v3, 0x7f06002b

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    iput v3, v9, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    .line 402
    .line 403
    const/4 v3, 0x1

    .line 404
    iput-boolean v3, v9, Landroidx/core/app/NotificationChannelCompat;->mVibrationEnabled:Z

    .line 405
    .line 406
    goto :goto_9

    .line 407
    :cond_14
    move-object v9, v4

    .line 408
    :goto_9
    if-eqz v9, :cond_11

    .line 409
    .line 410
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    goto :goto_6

    .line 414
    :cond_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 415
    .line 416
    if-lt v1, v5, :cond_19

    .line 417
    .line 418
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    if-nez v1, :cond_19

    .line 423
    .line 424
    new-instance v1, Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-eqz v3, :cond_18

    .line 442
    .line 443
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    check-cast v3, Landroidx/core/app/NotificationChannelCompat;

    .line 448
    .line 449
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 450
    .line 451
    if-ge v7, v5, :cond_16

    .line 452
    .line 453
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    move-object v11, v4

    .line 457
    goto :goto_b

    .line 458
    :cond_16
    iget-object v8, v3, Landroidx/core/app/NotificationChannelCompat;->mId:Ljava/lang/String;

    .line 459
    .line 460
    iget-object v9, v3, Landroidx/core/app/NotificationChannelCompat;->mName:Ljava/lang/CharSequence;

    .line 461
    .line 462
    iget v10, v3, Landroidx/core/app/NotificationChannelCompat;->mImportance:I

    .line 463
    .line 464
    new-instance v11, Landroid/app/NotificationChannel;

    .line 465
    .line 466
    invoke-direct {v11, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 467
    .line 468
    .line 469
    iget-object v8, v3, Landroidx/core/app/NotificationChannelCompat;->mDescription:Ljava/lang/String;

    .line 470
    .line 471
    invoke-virtual {v11, v8}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    iget-object v8, v3, Landroidx/core/app/NotificationChannelCompat;->mGroupId:Ljava/lang/String;

    .line 475
    .line 476
    invoke-virtual {v11, v8}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    iget-boolean v8, v3, Landroidx/core/app/NotificationChannelCompat;->mShowBadge:Z

    .line 480
    .line 481
    invoke-virtual {v11, v8}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 482
    .line 483
    .line 484
    iget-object v8, v3, Landroidx/core/app/NotificationChannelCompat;->mSound:Landroid/net/Uri;

    .line 485
    .line 486
    iget-object v9, v3, Landroidx/core/app/NotificationChannelCompat;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 487
    .line 488
    invoke-virtual {v11, v8, v9}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 489
    .line 490
    .line 491
    iget-boolean v8, v3, Landroidx/core/app/NotificationChannelCompat;->mLights:Z

    .line 492
    .line 493
    invoke-virtual {v11, v8}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 494
    .line 495
    .line 496
    iget v8, v3, Landroidx/core/app/NotificationChannelCompat;->mLightColor:I

    .line 497
    .line 498
    invoke-virtual {v11, v8}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 499
    .line 500
    .line 501
    iget-object v8, v3, Landroidx/core/app/NotificationChannelCompat;->mVibrationPattern:[J

    .line 502
    .line 503
    invoke-virtual {v11, v8}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 504
    .line 505
    .line 506
    iget-boolean v8, v3, Landroidx/core/app/NotificationChannelCompat;->mVibrationEnabled:Z

    .line 507
    .line 508
    invoke-virtual {v11, v8}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 509
    .line 510
    .line 511
    const/16 v8, 0x1e

    .line 512
    .line 513
    if-lt v7, v8, :cond_17

    .line 514
    .line 515
    iget-object v7, v3, Landroidx/core/app/NotificationChannelCompat;->mParentId:Ljava/lang/String;

    .line 516
    .line 517
    if-eqz v7, :cond_17

    .line 518
    .line 519
    iget-object v3, v3, Landroidx/core/app/NotificationChannelCompat;->mConversationId:Ljava/lang/String;

    .line 520
    .line 521
    if-eqz v3, :cond_17

    .line 522
    .line 523
    invoke-static {v11, v7, v3}, Landroidx/core/app/NotificationChannelCompat$Api30Impl;->setConversationId(Landroid/app/NotificationChannel;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    :cond_17
    :goto_b
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    goto :goto_a

    .line 530
    :cond_18
    invoke-virtual {v6, v1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 531
    .line 532
    .line 533
    :cond_19
    :goto_c
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 534
    .line 535
    invoke-static {v1}, Lkotlinx/coroutines/AwaitKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    new-instance v2, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 540
    .line 541
    const/4 v3, 0x5

    .line 542
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 543
    .line 544
    .line 545
    new-instance v5, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 546
    .line 547
    const/4 v6, 0x7

    .line 548
    invoke-direct {v5, v6, p0, v4}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 549
    .line 550
    .line 551
    const/4 v6, 0x2

    .line 552
    invoke-static {v1, v2, v4, v5, v6}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 553
    .line 554
    .line 555
    sget v1, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->$r8$clinit:I

    .line 556
    .line 557
    invoke-static {p0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->startPollTask(Landroid/content/Context;)V

    .line 558
    .line 559
    .line 560
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 561
    .line 562
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 563
    .line 564
    .line 565
    move-result-object p0

    .line 566
    new-instance v1, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 567
    .line 568
    const/4 v2, 0x4

    .line 569
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 570
    .line 571
    .line 572
    new-instance v0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 573
    .line 574
    invoke-direct {v0, v6, v3, v4}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 575
    .line 576
    .line 577
    invoke-static {p0, v1, v4, v0, v6}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 578
    .line 579
    .line 580
    new-instance p0, Lokio/ByteString$Companion;

    .line 581
    .line 582
    const/16 v0, 0x14

    .line 583
    .line 584
    invoke-direct {p0, v0}, Lokio/ByteString$Companion;-><init>(I)V

    .line 585
    .line 586
    .line 587
    new-instance v0, Lorg/wikipedia/views/imageservice/CoilImageServiceLoader$$ExternalSyntheticLambda0;

    .line 588
    .line 589
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 590
    .line 591
    .line 592
    sget-object v1, Lcoil3/SingletonImageLoader;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 593
    .line 594
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    instance-of v3, v2, Lcoil3/RealImageLoader;

    .line 599
    .line 600
    if-eqz v3, :cond_1b

    .line 601
    .line 602
    check-cast v2, Lcoil3/RealImageLoader;

    .line 603
    .line 604
    sget-object v0, Lcoil3/SingletonImageLoaderKt;->DefaultSingletonImageLoaderFactory:Lcoil3/SingletonImageLoaderKt$$ExternalSyntheticLambda0;

    .line 605
    .line 606
    iget-object v0, v2, Lcoil3/RealImageLoader;->options:Lcoil3/RealImageLoader$Options;

    .line 607
    .line 608
    iget-object v0, v0, Lcoil3/RealImageLoader$Options;->defaults:Lcoil3/request/ImageRequest$Defaults;

    .line 609
    .line 610
    iget-object v0, v0, Lcoil3/request/ImageRequest$Defaults;->extras:Lcoil3/Extras;

    .line 611
    .line 612
    sget-object v1, Lcoil3/SingletonImageLoaderKt;->DefaultSingletonImageLoaderKey:Lcoil3/Extras$Key;

    .line 613
    .line 614
    iget-object v0, v0, Lcoil3/Extras;->data:Ljava/util/Map;

    .line 615
    .line 616
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    if-nez v0, :cond_1a

    .line 621
    .line 622
    goto :goto_d

    .line 623
    :cond_1a
    const-string p0, "The singleton image loader has already been created. This indicates that \'setSafe\' is being called after the first \'get\' call. Ensure that \'setSafe\' is called before any Coil API usages (e.g. `load`, `AsyncImage`, `rememberAsyncImagePainter`, etc.)."

    .line 624
    .line 625
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    return-void

    .line 629
    :cond_1b
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-result v3

    .line 633
    if-eqz v3, :cond_1c

    .line 634
    .line 635
    goto :goto_d

    .line 636
    :cond_1c
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    if-eq v3, v2, :cond_1b

    .line 641
    .line 642
    :goto_d
    sput-object p0, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 643
    .line 644
    return-void
.end method

.method public final declared-synchronized resetWikiSite()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lorg/wikipedia/WikipediaApp;->defaultWikiSite:Lorg/wikipedia/dataclient/WikiSite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public final setCurrentTheme(Lorg/wikipedia/theme/Theme;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 9
    .line 10
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/wikipedia/theme/Theme;->getMarshallingId()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const p1, 0x7f1205d6

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Lorg/wikipedia/events/ThemeFontChangeEvent;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final setFontSizeMultiplier(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0a0038

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const v1, 0x7f0a0037

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p1, v0, p0}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 28
    .line 29
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eq p0, p1, :cond_0

    .line 34
    .line 35
    const p1, 0x7f12069a

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 39
    .line 40
    .line 41
    new-instance p0, Lorg/wikipedia/events/ChangeTextSizeEvent;

    .line 42
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_0
    const/4 p0, 0x0

    .line 52
    return p0
.end method

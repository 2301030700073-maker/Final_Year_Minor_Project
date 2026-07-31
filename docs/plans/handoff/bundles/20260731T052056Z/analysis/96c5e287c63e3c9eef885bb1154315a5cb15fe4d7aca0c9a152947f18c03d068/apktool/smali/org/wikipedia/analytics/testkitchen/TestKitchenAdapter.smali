.class public final Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final client:Lorg/wikimedia/testkitchen/TestKitchenClient;

.field public static final flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lokio/ByteString$Companion;

    .line 7
    .line 8
    const/16 v2, 0xd

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lokio/ByteString$Companion;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-direct {v2, v3}, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;-><init>(I)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    new-instance v3, Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 22
    .line 23
    invoke-direct {v3, v0, v0, v1}, Lorg/wikimedia/testkitchen/TestKitchenClient;-><init>(Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;Lokio/ByteString$Companion;)V

    .line 24
    .line 25
    .line 26
    sput-object v3, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;->run()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static getAgentData()Lorg/wikimedia/testkitchen/context/AgentData;
    .locals 10

    .line 1
    new-instance v0, Lorg/wikimedia/testkitchen/context/AgentData;

    .line 2
    .line 3
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getAppInstallID()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v2, v2, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 23
    .line 24
    .line 25
    const/16 v3, 0x256

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 32
    .line 33
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v4, " "

    .line 44
    .line 45
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Lorg/wikipedia/language/AppLanguageState;->getSystemLanguageCode()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-string v6, "org.wikipedia"

    .line 68
    .line 69
    const-string v7, "beta"

    .line 70
    .line 71
    const/4 v8, 0x0

    .line 72
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    const-string v9, "dev"

    .line 77
    .line 78
    if-eqz v7, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const-string v7, "alpha"

    .line 82
    .line 83
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v6, v9, v8}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_2

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const-string v9, "prod"

    .line 98
    .line 99
    :goto_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v6, "fdroidrelease"

    .line 103
    .line 104
    iput-object v6, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appFlavor:Ljava/lang/String;

    .line 105
    .line 106
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appInstallId:Ljava/lang/String;

    .line 107
    .line 108
    iput-object v2, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appTheme:Ljava/lang/String;

    .line 109
    .line 110
    iput-object v3, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appVersion:Ljava/lang/Integer;

    .line 111
    .line 112
    const-string v1, "WikipediaApp/r/50598-r-2026-07-13"

    .line 113
    .line 114
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/AgentData;->appVersionName:Ljava/lang/String;

    .line 115
    .line 116
    const-string v1, "android"

    .line 117
    .line 118
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/AgentData;->clientPlatform:Ljava/lang/String;

    .line 119
    .line 120
    const-string v1, "app"

    .line 121
    .line 122
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/AgentData;->clientPlatformFamily:Ljava/lang/String;

    .line 123
    .line 124
    iput-object v4, v0, Lorg/wikimedia/testkitchen/context/AgentData;->deviceFamily:Ljava/lang/String;

    .line 125
    .line 126
    iput-object v5, v0, Lorg/wikimedia/testkitchen/context/AgentData;->deviceLanguage:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v9, v0, Lorg/wikimedia/testkitchen/context/AgentData;->releaseStatus:Ljava/lang/String;

    .line 129
    .line 130
    return-object v0
.end method

.method public static getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lorg/wikimedia/testkitchen/context/PageData;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lorg/wikipedia/page/Namespace;->code()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    sget-object v4, Lorg/wikipedia/page/Namespace;->Companion:Lorg/wikipedia/page/Namespace$Companion;

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v5}, Lorg/wikipedia/page/Namespace;->code()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {v5}, Lorg/wikipedia/page/Namespace$Companion;->of(I)Lorg/wikipedia/page/Namespace;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 45
    .line 46
    iget-object p0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, v1, Lorg/wikimedia/testkitchen/context/PageData;->id:Ljava/lang/Integer;

    .line 52
    .line 53
    iput-object v2, v1, Lorg/wikimedia/testkitchen/context/PageData;->title:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v3, v1, Lorg/wikimedia/testkitchen/context/PageData;->namespaceId:Ljava/lang/Integer;

    .line 56
    .line 57
    iput-object v4, v1, Lorg/wikimedia/testkitchen/context/PageData;->namespaceName:Ljava/lang/String;

    .line 58
    .line 59
    iput-object v0, v1, Lorg/wikimedia/testkitchen/context/PageData;->revisionId:Ljava/lang/Long;

    .line 60
    .line 61
    iput-object v0, v1, Lorg/wikimedia/testkitchen/context/PageData;->wikidataItemQid:Ljava/lang/String;

    .line 62
    .line 63
    iput-object p0, v1, Lorg/wikimedia/testkitchen/context/PageData;->contentLanguage:Ljava/lang/String;

    .line 64
    .line 65
    return-object v1
.end method

.method public static getPerformerData()Lorg/wikimedia/testkitchen/context/PerformerData;
    .locals 12

    .line 1
    new-instance v0, Lorg/wikimedia/testkitchen/context/PerformerData;

    .line 2
    .line 3
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 20
    .line 21
    iget-object v3, v3, Lorg/wikimedia/testkitchen/TestKitchenClient;->sessionController:Lorg/wikimedia/testkitchen/SessionController;

    .line 22
    .line 23
    monitor-enter v3

    .line 24
    :try_start_0
    iget-object v4, v3, Lorg/wikimedia/testkitchen/SessionController;->sessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit v3

    .line 27
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 28
    .line 29
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/16 v5, 0xa

    .line 42
    .line 43
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const-string v7, ","

    .line 48
    .line 49
    const/4 v10, 0x0

    .line 50
    const/16 v11, 0x3e

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    invoke-static/range {v6 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v5}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    iput-object v6, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->id:Ljava/lang/Integer;

    .line 71
    .line 72
    iput-object v6, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->name:Ljava/lang/String;

    .line 73
    .line 74
    iput-object v1, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->isLoggedIn:Ljava/lang/Boolean;

    .line 75
    .line 76
    iput-object v2, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->isTemp:Ljava/lang/Boolean;

    .line 77
    .line 78
    iput-object v4, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->sessionId:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v6, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->pageviewId:Ljava/lang/String;

    .line 81
    .line 82
    iput-object v6, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->groups:Ljava/util/Collection;

    .line 83
    .line 84
    iput-object v3, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->languageGroups:Ljava/lang/String;

    .line 85
    .line 86
    iput-object v5, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->languagePrimary:Ljava/lang/String;

    .line 87
    .line 88
    iput-object v6, v0, Lorg/wikimedia/testkitchen/context/PerformerData;->registrationDt:Lj$/time/Instant;

    .line 89
    .line 90
    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw v0
.end method


# virtual methods
.method public final sendEvents(Lorg/wikimedia/testkitchen/config/DestinationEventService;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p3, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter$sendEvents$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter$sendEvents$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter$sendEvents$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter$sendEvents$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter$sendEvents$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter$sendEvents$1;-><init>(Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter$sendEvents$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter$sendEvents$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    if-eq v1, v3, :cond_2

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    iget-object p2, v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter$sendEvents$1;->L$1:Ljava/util/List;

    .line 40
    .line 41
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_4

    .line 45
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :cond_2
    iget-object p2, v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter$sendEvents$1;->L$1:Ljava/util/List;

    .line 53
    .line 54
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const-string p0, "beta"

    .line 62
    .line 63
    const-string v1, "org.wikipedia"

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-static {v1, p0, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    const-string p0, "alpha"

    .line 74
    .line 75
    invoke-static {v1, p0, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_5

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    const-string p0, "dev"

    .line 83
    .line 84
    invoke-static {v1, p0, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_7

    .line 89
    .line 90
    sget-object p0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 91
    .line 92
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->getAnalyticsRest(Lorg/wikimedia/testkitchen/config/DestinationEventService;)Lorg/wikipedia/analytics/eventplatform/EventService;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    iput-object p2, v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter$sendEvents$1;->L$1:Ljava/util/List;

    .line 97
    .line 98
    iput v3, v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter$sendEvents$1;->label:I

    .line 99
    .line 100
    invoke-interface {p0, p2, v0}, Lorg/wikipedia/analytics/eventplatform/EventService;->postEventsTk(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    if-ne p0, p3, :cond_6

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_6
    :goto_1
    check-cast p0, Lretrofit2/Response;

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_7
    :goto_2
    sget-object p0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 111
    .line 112
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->getAnalyticsRest(Lorg/wikimedia/testkitchen/config/DestinationEventService;)Lorg/wikipedia/analytics/eventplatform/EventService;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    iput-object p2, v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter$sendEvents$1;->L$1:Ljava/util/List;

    .line 117
    .line 118
    iput v2, v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter$sendEvents$1;->label:I

    .line 119
    .line 120
    invoke-interface {p0, p2, v0}, Lorg/wikipedia/analytics/eventplatform/EventService;->postEventsHastyTk(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    if-ne p0, p3, :cond_8

    .line 125
    .line 126
    :goto_3
    return-object p3

    .line 127
    :cond_8
    :goto_4
    check-cast p0, Lretrofit2/Response;

    .line 128
    .line 129
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iget-object p0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    .line 134
    .line 135
    iget p0, p0, Lokhttp3/Response;->code:I

    .line 136
    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p1, " events sent successfully ("

    .line 146
    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p0, ")"

    .line 154
    .line 155
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 166
    .line 167
    return-object p0
.end method

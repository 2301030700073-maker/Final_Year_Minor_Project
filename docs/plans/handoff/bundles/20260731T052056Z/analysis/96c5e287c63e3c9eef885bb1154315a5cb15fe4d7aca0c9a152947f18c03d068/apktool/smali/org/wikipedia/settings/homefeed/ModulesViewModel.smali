.class public final Lorg/wikipedia/settings/homefeed/ModulesViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final feedConfigurationState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final hiddenModules:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/settings/SettingsRepository;->hiddenModules:Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;

    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 11
    .line 12
    const-wide/16 v3, 0x1388

    .line 13
    .line 14
    const-wide v5, 0x7fffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3, v4, v5, v6}, Lkotlinx/coroutines/flow/StartedWhileSubscribed;-><init>(JJ)V

    .line 20
    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    invoke-static {v0, v1, v2, v7}, Lkotlinx/coroutines/flow/StateFlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel;->hiddenModules:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 28
    .line 29
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 30
    .line 31
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->topicInterestDao()Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 40
    .line 41
    const-string v1, "InterestTopic"

    .line 42
    .line 43
    filled-new-array {v1}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 48
    .line 49
    const/16 v8, 0xe

    .line 50
    .line 51
    invoke-direct {v2, v8}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/DpKt;->createFlow(Landroidx/room/RoomDatabase;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->articleInterestDao()Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v1, v1, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 67
    .line 68
    const-string v2, "InterestArticle"

    .line 69
    .line 70
    filled-new-array {v2}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v8, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 75
    .line 76
    const/16 v9, 0xb

    .line 77
    .line 78
    invoke-direct {v8, v9}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v2, v8}, Landroidx/compose/ui/unit/DpKt;->createFlow(Landroidx/room/RoomDatabase;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->historyEntryDao()Lorg/wikipedia/history/db/HistoryEntryDao_Impl;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget-object v2, v2, Lorg/wikipedia/history/db/HistoryEntryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 94
    .line 95
    const-string v8, "HistoryEntry"

    .line 96
    .line 97
    filled-new-array {v8}, [Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    new-instance v9, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 102
    .line 103
    const/16 v10, 0x16

    .line 104
    .line 105
    invoke-direct {v9, v10}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-static {v2, v8, v9}, Landroidx/compose/ui/unit/DpKt;->createFlow(Landroidx/room/RoomDatabase;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v8, Lorg/wikipedia/settings/homefeed/ModulesViewModel$feedConfigurationState$1;

    .line 113
    .line 114
    const/4 v9, 0x4

    .line 115
    invoke-direct {v8, v9, v7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 116
    .line 117
    .line 118
    const/4 v7, 0x3

    .line 119
    new-array v7, v7, [Lkotlinx/coroutines/flow/Flow;

    .line 120
    .line 121
    const/4 v9, 0x0

    .line 122
    aput-object v0, v7, v9

    .line 123
    .line 124
    const/4 v0, 0x1

    .line 125
    aput-object v1, v7, v0

    .line 126
    .line 127
    const/4 v0, 0x2

    .line 128
    aput-object v2, v7, v0

    .line 129
    .line 130
    new-instance v0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 131
    .line 132
    const/4 v1, 0x6

    .line 133
    invoke-direct {v0, v1, v7, v8}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    new-instance v2, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 141
    .line 142
    invoke-direct {v2, v3, v4, v5, v6}, Lkotlinx/coroutines/flow/StartedWhileSubscribed;-><init>(JJ)V

    .line 143
    .line 144
    .line 145
    sget-object v3, Lorg/wikipedia/settings/homefeed/FeedConfigurationState$Loading;->INSTANCE:Lorg/wikipedia/settings/homefeed/FeedConfigurationState$Loading;

    .line 146
    .line 147
    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/StateFlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iput-object v0, p0, Lorg/wikipedia/settings/homefeed/ModulesViewModel;->feedConfigurationState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 152
    .line 153
    return-void
.end method


# virtual methods
.method public final toggleModuleVisibility(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p2, p1, v1}, Lorg/wikipedia/settings/homefeed/ModulesViewModel$toggleModuleVisibility$1;-><init>(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 16
    .line 17
    .line 18
    return-void
.end method

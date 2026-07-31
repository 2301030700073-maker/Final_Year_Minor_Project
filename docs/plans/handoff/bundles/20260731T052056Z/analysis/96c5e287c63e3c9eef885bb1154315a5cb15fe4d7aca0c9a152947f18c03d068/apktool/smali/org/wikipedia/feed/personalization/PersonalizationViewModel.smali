.class public final Lorg/wikipedia/feed/personalization/PersonalizationViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final Factory:Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;


# instance fields
.field public articlesJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final feedPreferenceUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final homePreferenceRepository:Lokhttp3/MultipartBody$Builder;

.field public final interestSelectionRepository:Lretrofit2/Retrofit;

.field public final interestUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public interestsUpdated:Z

.field public final state:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcoil3/network/NetworkHeaders$Builder;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lcoil3/network/NetworkHeaders$Builder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    const/16 v2, 0x9

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const-class v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 15
    .line 16
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2, v1}, Lcoil3/network/NetworkHeaders$Builder;->addInitializer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcoil3/network/NetworkHeaders$Builder;->build()Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->Factory:Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Lretrofit2/Retrofit;Lokhttp3/MultipartBody$Builder;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->interestSelectionRepository:Lretrofit2/Retrofit;

    .line 9
    .line 10
    move-object/from16 v2, p2

    .line 11
    .line 12
    iput-object v2, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->homePreferenceRepository:Lokhttp3/MultipartBody$Builder;

    .line 13
    .line 14
    new-instance v2, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 15
    .line 16
    iget-object v1, v1, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 19
    .line 20
    iget-object v9, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 21
    .line 22
    sget-object v1, Lorg/wikipedia/topics/ArticleTopics;->all:Ljava/util/List;

    .line 23
    .line 24
    move-object v3, v2

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    const/16 v4, 0xa

    .line 28
    .line 29
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lorg/wikipedia/topics/ArticleTopic;

    .line 51
    .line 52
    new-instance v5, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    invoke-direct {v5, v4, v6}, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;-><init>(Lorg/wikipedia/topics/ArticleTopic;Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 63
    .line 64
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getHomePreferenceSelection()Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    const/4 v12, 0x0

    .line 69
    const/4 v15, 0x0

    .line 70
    move-object v1, v3

    .line 71
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    sget-object v6, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 76
    .line 77
    sget-object v8, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 78
    .line 79
    const/4 v13, 0x0

    .line 80
    const/16 v16, 0x0

    .line 81
    .line 82
    move-object v7, v3

    .line 83
    move-object v11, v3

    .line 84
    move-object v14, v3

    .line 85
    invoke-direct/range {v1 .. v16}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;-><init>(Ljava/util/List;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iput-object v1, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 93
    .line 94
    new-instance v2, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;

    .line 95
    .line 96
    const/4 v3, 0x1

    .line 97
    invoke-direct {v2, v1, v3}, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;I)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 109
    .line 110
    invoke-virtual {v4}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->toInterestUiState()Lorg/wikipedia/feed/personalization/interest/InterestUiState;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedLazily;

    .line 115
    .line 116
    invoke-static {v2, v3, v5, v4}, Lkotlinx/coroutines/flow/StateFlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iput-object v2, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->interestUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 121
    .line 122
    new-instance v2, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;

    .line 123
    .line 124
    const/4 v3, 0x2

    .line 125
    invoke-direct {v2, v1, v3}, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;I)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 137
    .line 138
    invoke-virtual {v1}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->toFeedPreferenceUiState()Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v2, v3, v5, v1}, Lkotlinx/coroutines/flow/StateFlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iput-object v1, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->feedPreferenceUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 147
    .line 148
    return-void
.end method


# virtual methods
.method public final initialize(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;

    .line 11
    .line 12
    iget v3, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v4, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->label:I

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    .line 38
    const/4 v7, 0x2

    .line 39
    const/4 v8, 0x1

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    if-eq v4, v8, :cond_2

    .line 43
    .line 44
    if-ne v4, v7, :cond_1

    .line 45
    .line 46
    iget-object v3, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->L$2:Ljava/util/List;

    .line 47
    .line 48
    iget-object v2, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->L$0:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 49
    .line 50
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    move-object v12, v3

    .line 54
    goto :goto_3

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto/16 :goto_6

    .line 57
    .line 58
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v5

    .line 64
    :cond_2
    iget v4, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->I$0:I

    .line 65
    .line 66
    iget-object v8, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->L$1:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v9, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->L$0:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 69
    .line 70
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :try_start_2
    iget-object v0, v1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->interestSelectionRepository:Lretrofit2/Retrofit;

    .line 78
    .line 79
    iget-object v4, v0, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v4, Lorg/wikipedia/dataclient/WikiSite;

    .line 82
    .line 83
    iget-object v4, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 84
    .line 85
    iput-object v1, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->L$0:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 86
    .line 87
    iput-object v4, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->L$1:Ljava/lang/String;

    .line 88
    .line 89
    const/4 v9, 0x0

    .line 90
    iput v9, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->I$0:I

    .line 91
    .line 92
    iput v8, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->label:I

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Lretrofit2/Retrofit;->getPersistedTopics(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-ne v0, v3, :cond_4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    move-object v8, v4

    .line 102
    move v4, v9

    .line 103
    move-object v9, v1

    .line 104
    :goto_1
    check-cast v0, Ljava/util/List;

    .line 105
    .line 106
    iget-object v10, v9, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->interestSelectionRepository:Lretrofit2/Retrofit;

    .line 107
    .line 108
    iput-object v9, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->L$0:Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 109
    .line 110
    iput-object v5, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->L$1:Ljava/lang/String;

    .line 111
    .line 112
    iput-object v0, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->L$2:Ljava/util/List;

    .line 113
    .line 114
    iput v4, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->I$0:I

    .line 115
    .line 116
    iput v7, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$initialize$1;->label:I

    .line 117
    .line 118
    invoke-virtual {v10, v8, v2}, Lretrofit2/Retrofit;->getPersistedArticles(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-ne v2, v3, :cond_5

    .line 123
    .line 124
    :goto_2
    return-object v3

    .line 125
    :cond_5
    move-object v12, v0

    .line 126
    move-object v0, v2

    .line 127
    move-object v2, v9

    .line 128
    :goto_3
    check-cast v0, Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_7

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_6

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_6
    iget-object v3, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 144
    .line 145
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 150
    .line 151
    iget-object v3, v3, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articles:Ljava/util/List;

    .line 152
    .line 153
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-eqz v3, :cond_7

    .line 158
    .line 159
    invoke-virtual {v2}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->loadInitialArticles()V

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_7
    :goto_4
    iget-object v3, v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 164
    .line 165
    :cond_8
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    move-object v7, v4

    .line 170
    check-cast v7, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 171
    .line 172
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    const/16 v20, 0x0

    .line 177
    .line 178
    const/16 v21, 0x7fcf

    .line 179
    .line 180
    const/4 v8, 0x0

    .line 181
    const/4 v9, 0x0

    .line 182
    const/4 v10, 0x0

    .line 183
    const/4 v13, 0x0

    .line 184
    const/4 v14, 0x0

    .line 185
    const/4 v15, 0x0

    .line 186
    const/16 v16, 0x0

    .line 187
    .line 188
    const/16 v17, 0x0

    .line 189
    .line 190
    const/16 v18, 0x0

    .line 191
    .line 192
    const/16 v19, 0x0

    .line 193
    .line 194
    invoke-static/range {v7 .. v21}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->copy$default(Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;I)Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v3, v4, v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    if-eqz v4, :cond_8

    .line 203
    .line 204
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;

    .line 209
    .line 210
    if-eqz v0, :cond_9

    .line 211
    .line 212
    invoke-virtual {v2, v0}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->loadArticlesByTopic(Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;)V

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_9
    invoke-virtual {v2}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->loadInitialArticles()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    .line 218
    .line 219
    :goto_5
    move-object v2, v6

    .line 220
    goto :goto_7

    .line 221
    :goto_6
    new-instance v2, Lkotlin/Result$Failure;

    .line 222
    .line 223
    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    :goto_7
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    if-eqz v10, :cond_b

    .line 231
    .line 232
    :cond_a
    iget-object v0, v1, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 233
    .line 234
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    move-object v7, v2

    .line 239
    check-cast v7, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 240
    .line 241
    const/16 v20, 0x0

    .line 242
    .line 243
    const/16 v21, 0x7ff3

    .line 244
    .line 245
    const/4 v8, 0x0

    .line 246
    const/4 v9, 0x0

    .line 247
    const/4 v11, 0x0

    .line 248
    const/4 v12, 0x0

    .line 249
    const/4 v13, 0x0

    .line 250
    const/4 v14, 0x0

    .line 251
    const/4 v15, 0x0

    .line 252
    const/16 v16, 0x0

    .line 253
    .line 254
    const/16 v17, 0x0

    .line 255
    .line 256
    const/16 v18, 0x0

    .line 257
    .line 258
    const/16 v19, 0x0

    .line 259
    .line 260
    invoke-static/range {v7 .. v21}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->copy$default(Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Ljava/util/List;ZLjava/lang/Throwable;Ljava/util/List;ZLjava/lang/Throwable;I)Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-virtual {v0, v2, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_a

    .line 269
    .line 270
    :cond_b
    return-object v6
.end method

.method public final loadArticlesByTopic(Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 8
    .line 9
    iget-object v0, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articles:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->articlesJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;I)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 37
    .line 38
    const/16 v4, 0xe

    .line 39
    .line 40
    invoke-direct {v3, p0, p1, v1, v4}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x2

    .line 44
    invoke-static {v0, v2, v1, v3, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->articlesJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 49
    .line 50
    return-void
.end method

.method public final loadInitialArticles()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 8
    .line 9
    iget-object v0, v0, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->articles:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->articlesJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;

    .line 31
    .line 32
    const/4 v3, 0x4

    .line 33
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;I)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-direct {v3, p0, v1, v4}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$loadInitialArticles$2;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 40
    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    invoke-static {v0, v2, v1, v3, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;->articlesJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 48
    .line 49
    return-void
.end method

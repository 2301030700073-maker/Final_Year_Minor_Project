.class public final Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final fromSettings:Z

.field public final randomizeEvent:Lorg/wikipedia/util/SingleLiveData;

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "fromSettings"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput-boolean p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->fromSettings:Z

    .line 20
    .line 21
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 26
    .line 27
    new-instance v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 33
    .line 34
    new-instance p1, Lorg/wikipedia/util/SingleLiveData;

    .line 35
    .line 36
    invoke-direct {p1}, Lorg/wikipedia/util/SingleLiveData;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->randomizeEvent:Lorg/wikipedia/util/SingleLiveData;

    .line 40
    .line 41
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$loadItems$2;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;Lkotlin/coroutines/Continuation;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x2

    .line 57
    invoke-static {p1, v0, v2, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final commitSelection()V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Success;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lorg/wikipedia/util/Resource$Success;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_4

    .line 17
    .line 18
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;

    .line 21
    .line 22
    iget-object v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->selectedItems:Ljava/util/Set;

    .line 23
    .line 24
    check-cast v1, Ljava/util/Collection;

    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-boolean v3, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->fromSettings:Z

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    iget-object v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel$UiState;->items:Ljava/util/List;

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 50
    .line 51
    :try_start_0
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance v4, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 57
    .line 58
    sget-object v5, Lorg/wikipedia/page/PageTitle;->Companion:Lorg/wikipedia/page/PageTitle$Companion;

    .line 59
    .line 60
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const/4 v6, 0x1

    .line 65
    invoke-direct {v4, v5, v6}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v4, v1}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    const v0, 0x7f120669

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const/4 v7, 0x0

    .line 94
    const/16 v8, 0x1f4

    .line 95
    .line 96
    const-string v0, "interest_select_click"

    .line 97
    .line 98
    const-string v1, "discover_settings"

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    const/4 v4, 0x0

    .line 102
    const/4 v5, 0x0

    .line 103
    const/4 v6, 0x0

    .line 104
    invoke-static/range {v0 .. v8}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_2
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListInterestsViewModel;->randomizeEvent:Lorg/wikipedia/util/SingleLiveData;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    if-eqz p0, :cond_3

    .line 115
    .line 116
    const-string p0, "random_submit_click"

    .line 117
    .line 118
    :goto_2
    move-object v2, p0

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    const-string p0, "submit_click"

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    const/4 v9, 0x0

    .line 132
    const/16 v10, 0x1f4

    .line 133
    .line 134
    const-string v3, "rrl_interests_select"

    .line 135
    .line 136
    const/4 v4, 0x0

    .line 137
    const/4 v6, 0x0

    .line 138
    const/4 v7, 0x0

    .line 139
    const/4 v8, 0x0

    .line 140
    invoke-static/range {v2 .. v10}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    :cond_4
    :goto_4
    return-void
.end method

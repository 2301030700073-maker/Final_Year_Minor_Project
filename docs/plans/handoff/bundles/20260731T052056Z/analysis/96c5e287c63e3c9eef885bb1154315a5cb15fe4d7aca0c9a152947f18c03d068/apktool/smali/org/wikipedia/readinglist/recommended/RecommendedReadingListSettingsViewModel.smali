.class public final Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _resetUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final resetUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

    .line 5
    .line 6
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 7
    .line 8
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isRecommendedReadingListEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListArticlesNumber()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListUpdateFrequency()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSource()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isRecommendedReadingListNotificationEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;-><init>(ZILorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;Z)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 36
    .line 37
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 43
    .line 44
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->_resetUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 49
    .line 50
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->resetUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final toggleNotification(Z)V
    .locals 8

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setRecommendedReadingListNotificationEnabled(Z)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    move-object v1, v0

    .line 13
    check-cast v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    const/16 v7, 0xf

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    move v6, p1

    .line 22
    invoke-static/range {v1 .. v7}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->copy$default(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;ZILorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;ZI)Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final updateRecommendedReadingListSource(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 5
    .line 6
    const v0, 0x7f12066f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 17
    .line 18
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const/16 v7, 0x17

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    move-object v5, p1

    .line 32
    invoke-static/range {v1 .. v7}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->copy$default(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;ZILorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;ZI)Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

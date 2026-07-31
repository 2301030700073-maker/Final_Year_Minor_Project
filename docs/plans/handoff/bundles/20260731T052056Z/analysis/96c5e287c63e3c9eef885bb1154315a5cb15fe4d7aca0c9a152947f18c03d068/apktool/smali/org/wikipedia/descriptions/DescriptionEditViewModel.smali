.class public final Lorg/wikipedia/descriptions/DescriptionEditViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final DESCRIPTION_TEMPLATES:[Ljava/lang/String;


# instance fields
.field public final _loadPageSummaryState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _postDescriptionState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _requestSuggestionState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _waitForRevisionState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field public clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public editingAllowed:Z

.field public final highlightText:Ljava/lang/String;

.field public final invokeSource:Lorg/wikipedia/Constants$InvokeSource;

.field public final loadPageSummaryState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final pageTitle:Lorg/wikipedia/page/PageTitle;

.field public final postDescriptionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final requestSuggestionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final sourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

.field public final targetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

.field public final waitForRevisionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Short description"

    .line 2
    .line 3
    const-string v1, "SHORTDESC"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->DESCRIPTION_TEMPLATES:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "title"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 17
    .line 18
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 19
    .line 20
    const-string v0, "highlightText"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->highlightText:Ljava/lang/String;

    .line 29
    .line 30
    const-string v0, "intentAction"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 40
    .line 41
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 42
    .line 43
    const-string v0, "invokeSource"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    check-cast v0, Lorg/wikipedia/Constants$InvokeSource;

    .line 53
    .line 54
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 55
    .line 56
    const-string v0, "sourceSummary"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 63
    .line 64
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->sourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 65
    .line 66
    const-string v0, "targetSummary"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 73
    .line 74
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->targetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->editingAllowed:Z

    .line 78
    .line 79
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->_loadPageSummaryState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 84
    .line 85
    new-instance v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 86
    .line 87
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->loadPageSummaryState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 91
    .line 92
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->_requestSuggestionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 97
    .line 98
    new-instance v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 99
    .line 100
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->requestSuggestionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 104
    .line 105
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->_postDescriptionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 110
    .line 111
    new-instance v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 112
    .line 113
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->postDescriptionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 117
    .line 118
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->_waitForRevisionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 123
    .line 124
    new-instance v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 125
    .line 126
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->waitForRevisionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 130
    .line 131
    return-void
.end method


# virtual methods
.method public final postDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v8}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 10
    .line 11
    .line 12
    move-result-object v9

    .line 13
    new-instance v10, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescription$$inlined$CoroutineExceptionHandler$1;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {v10, p0, v0}, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescription$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;I)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    move-object v1, p0

    .line 23
    move-object v2, p1

    .line 24
    move-object v3, p2

    .line 25
    move-object v4, p3

    .line 26
    move-object v5, p4

    .line 27
    move-object/from16 v6, p5

    .line 28
    .line 29
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-static {v9, v10, v8, v0, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 38
    .line 39
    return-void
.end method

.method public final postDescriptionToArticle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p7

    .line 4
    .line 5
    instance-of v2, v1, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;

    .line 11
    .line 12
    iget v3, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->label:I

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
    iput v3, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v4, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->label:I

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    if-eq v4, v7, :cond_2

    .line 44
    .line 45
    if-ne v4, v6, :cond_1

    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v8

    .line 57
    :cond_2
    iget-object v4, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$5:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v7, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$4:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v9, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$3:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v10, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$2:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v11, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$1:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v12, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$0:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object v14, v4

    .line 73
    move-object v13, v7

    .line 74
    move-object v15, v9

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 80
    .line 81
    iget-object v1, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 82
    .line 83
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    new-instance v9, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-direct {v9, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 94
    .line 95
    .line 96
    move-object/from16 v10, p1

    .line 97
    .line 98
    iput-object v10, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$0:Ljava/lang/String;

    .line 99
    .line 100
    move-object/from16 v11, p2

    .line 101
    .line 102
    iput-object v11, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$1:Ljava/lang/String;

    .line 103
    .line 104
    move-object/from16 v12, p3

    .line 105
    .line 106
    iput-object v12, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$2:Ljava/lang/String;

    .line 107
    .line 108
    move-object/from16 v13, p4

    .line 109
    .line 110
    iput-object v13, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$3:Ljava/lang/String;

    .line 111
    .line 112
    move-object/from16 v14, p5

    .line 113
    .line 114
    iput-object v14, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$4:Ljava/lang/String;

    .line 115
    .line 116
    move-object/from16 v15, p6

    .line 117
    .line 118
    iput-object v15, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$5:Ljava/lang/String;

    .line 119
    .line 120
    iput v7, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->label:I

    .line 121
    .line 122
    invoke-interface {v1, v4, v9, v2}, Lorg/wikipedia/dataclient/Service;->getWikiTextForSectionWithInfo(Ljava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-ne v1, v3, :cond_4

    .line 127
    .line 128
    move-object v0, v3

    .line 129
    goto/16 :goto_b

    .line 130
    .line 131
    :cond_4
    move-object/from16 v18, v12

    .line 132
    .line 133
    move-object v12, v10

    .line 134
    move-object/from16 v10, v18

    .line 135
    .line 136
    move-object/from16 v18, v15

    .line 137
    .line 138
    move-object v15, v13

    .line 139
    move-object v13, v14

    .line 140
    move-object/from16 v14, v18

    .line 141
    .line 142
    :goto_1
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 143
    .line 144
    iget-object v4, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 145
    .line 146
    if-eqz v4, :cond_5

    .line 147
    .line 148
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    if-eqz v4, :cond_5

    .line 153
    .line 154
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->getErrorForAction()Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    goto :goto_2

    .line 159
    :cond_5
    move-object v4, v8

    .line 160
    :goto_2
    if-eqz v4, :cond_7

    .line 161
    .line 162
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    if-eqz v7, :cond_6

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_6
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 174
    .line 175
    new-instance v1, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 176
    .line 177
    invoke-direct {v1, v0}, Lorg/wikipedia/dataclient/mwapi/MwException;-><init>(Lorg/wikipedia/dataclient/mwapi/MwServiceError;)V

    .line 178
    .line 179
    .line 180
    throw v1

    .line 181
    :cond_7
    :goto_3
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 182
    .line 183
    if-eqz v1, :cond_8

    .line 184
    .line 185
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-eqz v1, :cond_8

    .line 190
    .line 191
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    .line 192
    .line 193
    if-eqz v1, :cond_8

    .line 194
    .line 195
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_8
    move-object v1, v8

    .line 203
    :goto_4
    if-eqz v1, :cond_9

    .line 204
    .line 205
    const-string v4, "main"

    .line 206
    .line 207
    invoke-virtual {v1, v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->getContentFromSlot(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    goto :goto_5

    .line 212
    :cond_9
    move-object v4, v8

    .line 213
    :goto_5
    if-nez v4, :cond_a

    .line 214
    .line 215
    const-string v4, ""

    .line 216
    .line 217
    :cond_a
    move/from16 p7, v5

    .line 218
    .line 219
    if-eqz v1, :cond_b

    .line 220
    .line 221
    iget-wide v5, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_b
    const-wide/16 v5, 0x0

    .line 225
    .line 226
    :goto_6
    const-string v1, "(\\{\\{[Ss]hort description\\|(?:1=)?)([^}|]+)([^}]*\\}\\})"

    .line 227
    .line 228
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v9, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 240
    .line 241
    .line 242
    move-result v9

    .line 243
    if-eqz v9, :cond_c

    .line 244
    .line 245
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    new-instance v9, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string v7, "$1"

    .line 255
    .line 256
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v7, "$3"

    .line 263
    .line 264
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    :goto_7
    move-object v8, v1

    .line 283
    goto :goto_8

    .line 284
    :cond_c
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->DESCRIPTION_TEMPLATES:[Ljava/lang/String;

    .line 285
    .line 286
    aget-object v1, v1, p7

    .line 287
    .line 288
    const-string/jumbo v7, "|"

    .line 289
    .line 290
    .line 291
    const-string/jumbo v9, "}}\n"

    .line 292
    .line 293
    .line 294
    const-string/jumbo v8, "{{"

    .line 295
    .line 296
    .line 297
    invoke-static {v8, v1, v7, v11, v9}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-static {v1}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    goto :goto_7

    .line 313
    :goto_8
    iget-object v1, v0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 314
    .line 315
    if-eqz v1, :cond_e

    .line 316
    .line 317
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-nez v1, :cond_d

    .line 322
    .line 323
    goto :goto_9

    .line 324
    :cond_d
    const v1, 0x7f1201ba

    .line 325
    .line 326
    .line 327
    goto :goto_a

    .line 328
    :cond_e
    :goto_9
    const v1, 0x7f1201b4

    .line 329
    .line 330
    .line 331
    :goto_a
    invoke-static {v1, v0}, Lorg/jsoup/nodes/NodeUtils;->getString(ILorg/wikipedia/page/PageTitle;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    if-eqz v10, :cond_f

    .line 336
    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v1, ", "

    .line 346
    .line 347
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    :cond_f
    sget-object v4, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 358
    .line 359
    iget-object v4, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 360
    .line 361
    invoke-static {v4}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-static {}, Lokhttp3/Headers$Companion;->getAssertUser()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    const/4 v9, 0x0

    .line 374
    iput-object v9, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$0:Ljava/lang/String;

    .line 375
    .line 376
    iput-object v9, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$1:Ljava/lang/String;

    .line 377
    .line 378
    iput-object v9, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$2:Ljava/lang/String;

    .line 379
    .line 380
    iput-object v9, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$3:Ljava/lang/String;

    .line 381
    .line 382
    iput-object v9, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$4:Ljava/lang/String;

    .line 383
    .line 384
    iput-object v9, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->L$5:Ljava/lang/String;

    .line 385
    .line 386
    const/4 v9, 0x2

    .line 387
    iput v9, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToArticle$1;->label:I

    .line 388
    .line 389
    move-wide v10, v5

    .line 390
    const-string v5, "0"

    .line 391
    .line 392
    const/4 v9, 0x0

    .line 393
    const/16 v17, 0x1800

    .line 394
    .line 395
    move-object v6, v4

    .line 396
    move-object v4, v0

    .line 397
    move-object v0, v3

    .line 398
    move-object v3, v6

    .line 399
    move-object v6, v1

    .line 400
    move-object/from16 v16, v2

    .line 401
    .line 402
    invoke-static/range {v3 .. v17}, Lorg/wikipedia/dataclient/Service$-CC;->postEditSubmit$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    if-ne v1, v0, :cond_10

    .line 407
    .line 408
    :goto_b
    return-object v0

    .line 409
    :cond_10
    return-object v1
.end method

.method public final postDescriptionToWikidata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    instance-of v2, v1, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;

    .line 11
    .line 12
    iget v3, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->label:I

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
    iput v3, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->label:I

    .line 22
    .line 23
    :goto_0
    move-object v13, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;

    .line 26
    .line 27
    invoke-direct {v2, v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v1, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v3, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->label:I

    .line 36
    .line 37
    iget-object v4, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 38
    .line 39
    const/4 v5, 0x4

    .line 40
    const/4 v6, 0x3

    .line 41
    const/4 v7, 0x2

    .line 42
    const/4 v8, 0x1

    .line 43
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    if-eqz v3, :cond_5

    .line 47
    .line 48
    if-eq v3, v8, :cond_4

    .line 49
    .line 50
    if-eq v3, v7, :cond_3

    .line 51
    .line 52
    if-eq v3, v6, :cond_2

    .line 53
    .line 54
    if-ne v3, v5, :cond_1

    .line 55
    .line 56
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v9

    .line 66
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_3
    iget-object v3, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$6:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 71
    .line 72
    iget-object v7, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$3:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v8, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$2:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v10, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$1:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v11, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$0:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_5

    .line 84
    .line 85
    :cond_4
    iget-object v3, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$3:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v8, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$2:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v10, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$1:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v11, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$0:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    move-object v15, v3

    .line 97
    move-object v14, v8

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 103
    .line 104
    iget-object v1, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 105
    .line 106
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    new-instance v10, Ljava/lang/Integer;

    .line 115
    .line 116
    const/4 v11, 0x0

    .line 117
    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    .line 118
    .line 119
    .line 120
    move-object/from16 v11, p1

    .line 121
    .line 122
    iput-object v11, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$0:Ljava/lang/String;

    .line 123
    .line 124
    move-object/from16 v12, p2

    .line 125
    .line 126
    iput-object v12, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$1:Ljava/lang/String;

    .line 127
    .line 128
    move-object/from16 v14, p3

    .line 129
    .line 130
    iput-object v14, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$2:Ljava/lang/String;

    .line 131
    .line 132
    move-object/from16 v15, p4

    .line 133
    .line 134
    iput-object v15, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$3:Ljava/lang/String;

    .line 135
    .line 136
    iput v8, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->label:I

    .line 137
    .line 138
    invoke-interface {v1, v3, v10, v13}, Lorg/wikipedia/dataclient/Service;->getWikiTextForSectionWithInfo(Ljava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-ne v1, v2, :cond_6

    .line 143
    .line 144
    goto/16 :goto_9

    .line 145
    .line 146
    :cond_6
    move-object v10, v12

    .line 147
    :goto_2
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 148
    .line 149
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 150
    .line 151
    if-eqz v1, :cond_7

    .line 152
    .line 153
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    if-eqz v1, :cond_7

    .line 158
    .line 159
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->getErrorForAction()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    goto :goto_3

    .line 164
    :cond_7
    move-object v1, v9

    .line 165
    :goto_3
    if-eqz v1, :cond_9

    .line 166
    .line 167
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_8

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_8
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 179
    .line 180
    new-instance v1, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 181
    .line 182
    invoke-direct {v1, v0}, Lorg/wikipedia/dataclient/mwapi/MwException;-><init>(Lorg/wikipedia/dataclient/mwapi/MwServiceError;)V

    .line 183
    .line 184
    .line 185
    throw v1

    .line 186
    :cond_9
    :goto_4
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 187
    .line 188
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 189
    .line 190
    .line 191
    iget-object v1, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 192
    .line 193
    iget-object v8, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 194
    .line 195
    iput-object v8, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 196
    .line 197
    sget-object v8, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 198
    .line 199
    if-eq v4, v8, :cond_c

    .line 200
    .line 201
    sget-object v8, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 202
    .line 203
    if-eq v4, v8, :cond_c

    .line 204
    .line 205
    sget-object v8, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 206
    .line 207
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    iput-object v11, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$0:Ljava/lang/String;

    .line 212
    .line 213
    iput-object v10, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$1:Ljava/lang/String;

    .line 214
    .line 215
    iput-object v14, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$2:Ljava/lang/String;

    .line 216
    .line 217
    iput-object v15, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$3:Ljava/lang/String;

    .line 218
    .line 219
    iput-object v3, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$6:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 220
    .line 221
    iput v7, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->label:I

    .line 222
    .line 223
    invoke-interface {v1, v13}, Lorg/wikipedia/dataclient/Service;->getSiteInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    if-ne v1, v2, :cond_a

    .line 228
    .line 229
    goto/16 :goto_9

    .line 230
    .line 231
    :cond_a
    move-object v8, v14

    .line 232
    move-object v7, v15

    .line 233
    :goto_5
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 234
    .line 235
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 236
    .line 237
    if-eqz v1, :cond_b

    .line 238
    .line 239
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->siteInfo:Lorg/wikipedia/settings/SiteInfo;

    .line 240
    .line 241
    if-eqz v1, :cond_b

    .line 242
    .line 243
    iget-object v1, v1, Lorg/wikipedia/settings/SiteInfo;->lang:Ljava/lang/String;

    .line 244
    .line 245
    if-eqz v1, :cond_b

    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 248
    .line 249
    .line 250
    move-result v12

    .line 251
    if-lez v12, :cond_b

    .line 252
    .line 253
    const-string/jumbo v12, "zh"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v12

    .line 260
    if-nez v12, :cond_b

    .line 261
    .line 262
    iput-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 263
    .line 264
    :cond_b
    move-object v12, v7

    .line 265
    move-object v14, v8

    .line 266
    :goto_6
    move-object v8, v10

    .line 267
    move-object v10, v11

    .line 268
    goto :goto_7

    .line 269
    :cond_c
    move-object v12, v15

    .line 270
    goto :goto_6

    .line 271
    :goto_7
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 272
    .line 273
    if-eq v4, v1, :cond_f

    .line 274
    .line 275
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 276
    .line 277
    if-ne v4, v1, :cond_d

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_d
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 281
    .line 282
    sget-object v1, Lorg/wikipedia/Constants;->wikidataWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 283
    .line 284
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 289
    .line 290
    move-object v4, v3

    .line 291
    check-cast v4, Ljava/lang/String;

    .line 292
    .line 293
    iget-object v3, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 294
    .line 295
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    invoke-static {}, Lokhttp3/Headers$Companion;->getAssertUser()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v11

    .line 307
    iput-object v9, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$0:Ljava/lang/String;

    .line 308
    .line 309
    iput-object v9, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$1:Ljava/lang/String;

    .line 310
    .line 311
    iput-object v9, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$2:Ljava/lang/String;

    .line 312
    .line 313
    iput-object v9, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$3:Ljava/lang/String;

    .line 314
    .line 315
    iput-object v9, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$6:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 316
    .line 317
    iput v5, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->label:I

    .line 318
    .line 319
    move-object v5, v4

    .line 320
    move-object v3, v1

    .line 321
    move-object v9, v14

    .line 322
    invoke-interface/range {v3 .. v13}, Lorg/wikipedia/dataclient/Service;->postDescriptionEdit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    if-ne v0, v2, :cond_e

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_e
    return-object v0

    .line 330
    :cond_f
    :goto_8
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 331
    .line 332
    sget-object v1, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 333
    .line 334
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 339
    .line 340
    move-object v4, v3

    .line 341
    check-cast v4, Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    invoke-static {}, Lokhttp3/Headers$Companion;->getAssertUser()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v11

    .line 351
    iput-object v9, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$0:Ljava/lang/String;

    .line 352
    .line 353
    iput-object v9, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$1:Ljava/lang/String;

    .line 354
    .line 355
    iput-object v9, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$2:Ljava/lang/String;

    .line 356
    .line 357
    iput-object v9, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$3:Ljava/lang/String;

    .line 358
    .line 359
    iput-object v9, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->L$6:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 360
    .line 361
    iput v6, v13, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescriptionToWikidata$1;->label:I

    .line 362
    .line 363
    const-string v6, "commonswiki"

    .line 364
    .line 365
    move-object v5, v4

    .line 366
    move-object v3, v1

    .line 367
    move-object v9, v14

    .line 368
    invoke-interface/range {v3 .. v13}, Lorg/wikipedia/dataclient/Service;->postLabelEdit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    if-ne v0, v2, :cond_10

    .line 373
    .line 374
    :goto_9
    return-object v2

    .line 375
    :cond_10
    return-object v0
.end method

.method public final shouldWriteToLocalWiki()Z
    .locals 3

    .line 1
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 5
    .line 6
    if-eq v2, v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 9
    .line 10
    if-ne v2, v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 15
    .line 16
    iget-object p0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v0, "en"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    const-string v0, "test"

    .line 30
    .line 31
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return v1

    .line 39
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 40
    return p0
.end method

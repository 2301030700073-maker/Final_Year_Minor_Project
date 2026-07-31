.class public final Lorg/wikipedia/edit/EditSectionViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _fetchSectionTextState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _postEditState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _waitForRevisionState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public currentRevision:J

.field public final editNotices:Ljava/util/ArrayList;

.field public editingAllowed:Z

.field public final fetchSectionTextState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final invokeSource:Lorg/wikipedia/Constants$InvokeSource;

.field public pageTitle:Lorg/wikipedia/page/PageTitle;

.field public final postEditState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final sectionAnchor:Ljava/lang/String;

.field public final sectionID:I

.field public sectionWikitext:Ljava/lang/String;

.field public sectionWikitextOriginal:Ljava/lang/String;

.field public tempAccountsEnabled:Z

.field public final textToHighlight:Ljava/lang/String;

.field public final waitForRevisionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 4

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
    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 19
    .line 20
    const-string v0, "invokeSource"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    check-cast v0, Lorg/wikipedia/Constants$InvokeSource;

    .line 30
    .line 31
    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 32
    .line 33
    const-string v0, "sectionId"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Integer;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, -0x1

    .line 49
    :goto_0
    iput v0, p0, Lorg/wikipedia/edit/EditSectionViewModel;->sectionID:I

    .line 50
    .line 51
    const-string v0, "sectionAnchor"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/String;

    .line 58
    .line 59
    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionViewModel;->sectionAnchor:Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "sectionHighlightText"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/lang/String;

    .line 68
    .line 69
    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionViewModel;->textToHighlight:Ljava/lang/String;

    .line 70
    .line 71
    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lorg/wikipedia/edit/EditSectionViewModel;->tempAccountsEnabled:Z

    .line 73
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionViewModel;->editNotices:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionViewModel;->_fetchSectionTextState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 86
    .line 87
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 88
    .line 89
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lorg/wikipedia/edit/EditSectionViewModel;->fetchSectionTextState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 93
    .line 94
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionViewModel;->_postEditState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 99
    .line 100
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 101
    .line 102
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 103
    .line 104
    .line 105
    iput-object v1, p0, Lorg/wikipedia/edit/EditSectionViewModel;->postEditState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 106
    .line 107
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p0, Lorg/wikipedia/edit/EditSectionViewModel;->_waitForRevisionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 112
    .line 113
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 114
    .line 115
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 116
    .line 117
    .line 118
    iput-object v1, p0, Lorg/wikipedia/edit/EditSectionViewModel;->waitForRevisionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 119
    .line 120
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-instance v1, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$$inlined$CoroutineExceptionHandler$1;

    .line 125
    .line 126
    invoke-direct {v1, p0, p1}, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/edit/EditSectionViewModel;I)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 130
    .line 131
    const/16 v2, 0x1d

    .line 132
    .line 133
    const/4 v3, 0x0

    .line 134
    invoke-direct {p1, v2, p0, v3}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 135
    .line 136
    .line 137
    const/4 p0, 0x2

    .line 138
    invoke-static {v0, v1, v3, p1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 139
    .line 140
    .line 141
    return-void
.end method

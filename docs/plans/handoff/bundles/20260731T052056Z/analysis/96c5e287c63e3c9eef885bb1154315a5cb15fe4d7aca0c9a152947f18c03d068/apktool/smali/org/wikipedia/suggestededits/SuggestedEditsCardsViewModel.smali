.class public final Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field public langFromCode:Ljava/lang/String;

.field public langToCode:Ljava/lang/String;

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


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
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 8
    .line 9
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langFromCode:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-ge v2, v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v0, ""

    .line 34
    .line 35
    :goto_0
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langToCode:Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "intentAction"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    check-cast p1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 49
    .line 50
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 51
    .line 52
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 57
    .line 58
    new-instance v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 59
    .line 60
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 64
    .line 65
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v0, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 75
    .line 76
    const/4 v2, 0x3

    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-direct {v1, v2, p0, v3}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x2

    .line 82
    invoke-static {p1, v0, v3, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 83
    .line 84
    .line 85
    return-void
.end method

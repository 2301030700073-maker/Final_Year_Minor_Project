.class public final Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final age:I

.field public final date:Ljava/util/Calendar;

.field public final handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final wikiSite:Lorg/wikipedia/dataclient/WikiSite;

.field public final year:I


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
    new-instance v0, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 13
    .line 14
    const-string/jumbo v0, "wikiSite"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 25
    .line 26
    iput-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 27
    .line 28
    const-string v0, "age"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Integer;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v0, v1

    .line 45
    :goto_0
    iput v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->age:I

    .line 46
    .line 47
    const-string/jumbo v2, "year"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/Integer;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    :cond_1
    iput v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->year:I

    .line 63
    .line 64
    const-string v1, "invokeSource"

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    check-cast p1, Lorg/wikipedia/Constants$InvokeSource;

    .line 74
    .line 75
    sget-object p1, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 76
    .line 77
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const/4 v1, 0x5

    .line 86
    neg-int v0, v0

    .line 87
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->date:Ljava/util/Calendar;

    .line 91
    .line 92
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 97
    .line 98
    new-instance v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 99
    .line 100
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public final loadOnThisDay(Ljava/util/Calendar;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/util/Resource$Loading;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 23
    .line 24
    const/16 v3, 0xb

    .line 25
    .line 26
    invoke-direct {v1, p0, p1, v2, v3}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 31
    .line 32
    invoke-static {v0, p0, v2, v1, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 33
    .line 34
    .line 35
    return-void
.end method

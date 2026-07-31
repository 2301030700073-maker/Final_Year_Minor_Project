.class public final Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _categoryState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final categories:[Ljava/lang/String;

.field public final categoryState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final languages:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v17, "Vegetables"

    .line 7
    .line 8
    const-string v18, "Philosophy"

    .line 9
    .line 10
    const-string v1, "Animals"

    .line 11
    .line 12
    const-string v2, "Science"

    .line 13
    .line 14
    const-string v3, "Technology"

    .line 15
    .line 16
    const-string v4, "History"

    .line 17
    .line 18
    const-string v5, "Geography"

    .line 19
    .line 20
    const-string v6, "Art"

    .line 21
    .line 22
    const-string v7, "Music"

    .line 23
    .line 24
    const-string v8, "Literature"

    .line 25
    .line 26
    const-string v9, "Sports"

    .line 27
    .line 28
    const-string v10, "Food"

    .line 29
    .line 30
    const-string v11, "Politics"

    .line 31
    .line 32
    const-string v12, "Religion"

    .line 33
    .line 34
    const-string v13, "Education"

    .line 35
    .line 36
    const-string v14, "Health"

    .line 37
    .line 38
    const-string v15, "Environment"

    .line 39
    .line 40
    const-string v16, "Fruit"

    .line 41
    .line 42
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->categories:[Ljava/lang/String;

    .line 47
    .line 48
    const-string v1, "en"

    .line 49
    .line 50
    const-string/jumbo v2, "zh-cn"

    .line 51
    .line 52
    .line 53
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->languages:[Ljava/lang/String;

    .line 58
    .line 59
    sget-object v1, Lorg/wikipedia/util/UiState$Loading;->INSTANCE:Lorg/wikipedia/util/UiState$Loading;

    .line 60
    .line 61
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->_categoryState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 66
    .line 67
    new-instance v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 68
    .line 69
    invoke-direct {v2, v1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 70
    .line 71
    .line 72
    iput-object v2, v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->categoryState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 73
    .line 74
    invoke-virtual {v0}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->loadCategories()V

    .line 75
    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final loadCategories()V
    .locals 5

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 6
    .line 7
    new-instance v2, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 8
    .line 9
    const/16 v3, 0xf

    .line 10
    .line 11
    invoke-direct {v2, v1, v3}, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 15
    .line 16
    const/16 v3, 0xe

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v1, v3, p0, v4}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x2

    .line 23
    invoke-static {v0, v2, v4, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 24
    .line 25
    .line 26
    return-void
.end method

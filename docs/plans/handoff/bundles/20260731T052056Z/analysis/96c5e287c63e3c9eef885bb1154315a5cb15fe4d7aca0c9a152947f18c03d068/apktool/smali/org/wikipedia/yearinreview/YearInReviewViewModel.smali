.class public final Lorg/wikipedia/yearinreview/YearInReviewViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static currentCampaignId:Ljava/lang/String;


# instance fields
.field public final _uiScreenListState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final handler:Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

.field public screenshotHeaderBitmap:Landroid/graphics/Bitmap;

.field public final uiScreenListState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/yearinreview/YearInReviewViewModel;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel;->handler:Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 10
    .line 11
    sget-object v1, Lorg/wikipedia/util/UiState$Loading;->INSTANCE:Lorg/wikipedia/util/UiState$Loading;

    .line 12
    .line 13
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel;->_uiScreenListState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 18
    .line 19
    new-instance v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 20
    .line 21
    invoke-direct {v2, v1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel;->uiScreenListState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 28
    .line 29
    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lorg/wikipedia/yearinreview/YearInReviewViewModel;->screenshotHeaderBitmap:Landroid/graphics/Bitmap;

    .line 37
    .line 38
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/yearinreview/YearInReviewViewModel$fetchPersonalizedData$1;-><init>(Lorg/wikipedia/yearinreview/YearInReviewViewModel;Lkotlin/coroutines/Continuation;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x2

    .line 49
    invoke-static {v1, v0, v3, v2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 50
    .line 51
    .line 52
    return-void
.end method

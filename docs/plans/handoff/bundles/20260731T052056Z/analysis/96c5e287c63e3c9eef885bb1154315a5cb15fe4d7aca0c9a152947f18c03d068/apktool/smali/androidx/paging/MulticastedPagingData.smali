.class public final Landroidx/paging/MulticastedPagingData;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final accumulated:Lokhttp3/Request$Builder;

.field public final parent:Landroidx/paging/PagingData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;Landroidx/paging/PagingData;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Landroidx/paging/MulticastedPagingData;->parent:Landroidx/paging/PagingData;

    .line 8
    .line 9
    new-instance v0, Lokhttp3/Request$Builder;

    .line 10
    .line 11
    iget-object p2, p2, Landroidx/paging/PagingData;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lokhttp3/internal/http/StatusLine;

    .line 20
    .line 21
    const/16 v2, 0xa

    .line 22
    .line 23
    invoke-direct {v1, v2}, Lokhttp3/internal/http/StatusLine;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 27
    .line 28
    const v1, 0x7fffffff

    .line 29
    .line 30
    .line 31
    sget-object v2, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-static {v3, v1, v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableSharedFlow(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 39
    .line 40
    new-instance v2, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 41
    .line 42
    const/16 v4, 0x18

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-direct {v2, v4, v0, v5}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 46
    .line 47
    .line 48
    new-instance v4, Lkotlinx/coroutines/flow/SubscribedSharedFlow;

    .line 49
    .line 50
    invoke-direct {v4, v1, v2}, Lkotlinx/coroutines/flow/SubscribedSharedFlow;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;Landroidx/paging/SingleRunner$runInIsolation$2;)V

    .line 51
    .line 52
    .line 53
    iput-object v4, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 54
    .line 55
    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    .line 56
    .line 57
    new-instance v2, Landroidx/paging/PageFetcher$flow$1;

    .line 58
    .line 59
    const/16 v4, 0x9

    .line 60
    .line 61
    invoke-direct {v2, p2, v0, v5, v4}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v5, v1, v2, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance p2, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    const/16 v1, 0xe

    .line 71
    .line 72
    invoke-direct {p2, v1, v0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 76
    .line 77
    .line 78
    iput-object p1, v0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 79
    .line 80
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 81
    .line 82
    const/16 p2, 0x8

    .line 83
    .line 84
    invoke-direct {p1, p2, v0, v5}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 85
    .line 86
    .line 87
    new-instance p2, Lkotlinx/coroutines/flow/SafeFlow;

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-direct {p2, v1, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iput-object p2, v0, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object v0, p0, Landroidx/paging/MulticastedPagingData;->accumulated:Lokhttp3/Request$Builder;

    .line 96
    .line 97
    return-void
.end method

.class public final Landroidx/paging/PageFetcher$GenerationInfo;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final cachedInitialState:Landroidx/paging/PagingState;

.field public final job:Lkotlinx/coroutines/JobImpl;

.field public final snapshot:Landroidx/paging/PageFetcherSnapshot;


# direct methods
.method public constructor <init>(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/PagingState;Lkotlinx/coroutines/JobImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/paging/PageFetcher$GenerationInfo;->snapshot:Landroidx/paging/PageFetcherSnapshot;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/paging/PageFetcher$GenerationInfo;->cachedInitialState:Landroidx/paging/PagingState;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/paging/PageFetcher$GenerationInfo;->job:Lkotlinx/coroutines/JobImpl;

    .line 9
    .line 10
    return-void
.end method

.class public final Landroidx/paging/PageFetcherSnapshotState$Holder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final lock:Lkotlinx/coroutines/sync/MutexImpl;

.field public final state:Landroidx/paging/PageFetcherSnapshotState;


# direct methods
.method public constructor <init>(Landroidx/paging/PagingConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl;

    .line 5
    .line 6
    invoke-direct {v0}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 10
    .line 11
    new-instance v0, Landroidx/paging/PageFetcherSnapshotState;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroidx/paging/PageFetcherSnapshotState;-><init>(Landroidx/paging/PagingConfig;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 17
    .line 18
    return-void
.end method

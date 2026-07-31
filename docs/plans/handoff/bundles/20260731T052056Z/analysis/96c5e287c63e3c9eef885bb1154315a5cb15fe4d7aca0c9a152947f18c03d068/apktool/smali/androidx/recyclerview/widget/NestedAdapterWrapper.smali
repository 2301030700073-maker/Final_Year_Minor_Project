.class public final Landroidx/recyclerview/widget/NestedAdapterWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public final mAdapterObserver:Landroidx/paging/PagingDataAdapter$1;

.field public mCachedItemCount:I

.field public final mCallback:Lorg/wikipedia/databinding/FragmentNewsBinding;

.field public final mStableIdLookup:Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;

.field public final mViewTypeLookup:Lcoil3/ImageLoader$Builder;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Lorg/wikipedia/databinding/FragmentNewsBinding;Lokio/PriorityQueue;Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/paging/PagingDataAdapter$1;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1, p0}, Landroidx/paging/PagingDataAdapter$1;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mAdapterObserver:Landroidx/paging/PagingDataAdapter$1;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 13
    .line 14
    iput-object p2, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCallback:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 15
    .line 16
    new-instance p2, Lcoil3/ImageLoader$Builder;

    .line 17
    .line 18
    invoke-direct {p2, p3, p0}, Lcoil3/ImageLoader$Builder;-><init>(Lokio/PriorityQueue;Landroidx/recyclerview/widget/NestedAdapterWrapper;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mViewTypeLookup:Lcoil3/ImageLoader$Builder;

    .line 22
    .line 23
    iput-object p4, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mStableIdLookup:Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    iput p2, p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

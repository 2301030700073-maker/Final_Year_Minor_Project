.class public final Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$3;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$3;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 p1, 0xc

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    int-to-float p1, p3

    .line 16
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    float-to-int p1, p1

    .line 21
    mul-int/2addr p0, p1

    .line 22
    return p0
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1
    sget p1, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$3;->this$0:Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    .line 4
    .line 5
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    instance-of p1, p2, Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    instance-of p1, p2, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    :cond_0
    instance-of p1, p3, Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    instance-of p1, p3, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iget-object p3, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 45
    .line 46
    invoke-virtual {p3, p1, p2}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->swapItems(II)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object p0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->debounceSaver:Lokhttp3/internal/connection/RealConnectionPool;

    .line 53
    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnectionPool;->setHasChangesToSave()V

    .line 57
    .line 58
    .line 59
    :cond_2
    return p1

    .line 60
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 61
    return p0
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    return-void
.end method

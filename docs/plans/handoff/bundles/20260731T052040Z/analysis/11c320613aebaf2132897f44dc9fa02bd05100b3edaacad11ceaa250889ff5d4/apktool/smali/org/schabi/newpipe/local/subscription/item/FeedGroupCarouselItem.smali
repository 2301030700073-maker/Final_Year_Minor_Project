.class public final Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem$Companion;


# instance fields
.field public final carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

.field public carouselLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public listState:Landroid/os/Parcelable;

.field public listViewMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->Companion:Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/xwray/groupie/GroupAdapter;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/xwray/groupie/Item;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

    .line 8
    .line 9
    iput-boolean p2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->listViewMode:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 1

    .line 28
    check-cast p1, Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->listState:Landroid/os/Parcelable;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final bind(Landroidx/viewbinding/ViewBinding;ILjava/util/List;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p2, 0x2

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->updateViewMode(Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->bind(Landroidx/viewbinding/ViewBinding;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final getLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d0051

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    new-instance v0, Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;

    .line 7
    .line 8
    invoke-direct {v0, p1, p1}, Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->updateViewMode(Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final unbind(Lcom/xwray/groupie/GroupieViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/xwray/groupie/Item;->unbind(Lcom/xwray/groupie/GroupieViewHolder;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->listState:Landroid/os/Parcelable;

    .line 20
    .line 21
    return-void
.end method

.method public final updateViewMode(Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselAdapter:Lcom/xwray/groupie/GroupAdapter;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;->rootView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-boolean v2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->listViewMode:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 25
    .line 26
    const/16 v3, 0x70

    .line 27
    .line 28
    invoke-static {v0, v3}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(Landroid/content/Context;I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 41
    .line 42
    div-int/2addr v4, v3

    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-direct {v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iput-object v2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCarouselItem;->carouselLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 52
    .line 53
    iget-object p0, p1, Lorg/schabi/newpipe/databinding/FeedItemCarouselBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

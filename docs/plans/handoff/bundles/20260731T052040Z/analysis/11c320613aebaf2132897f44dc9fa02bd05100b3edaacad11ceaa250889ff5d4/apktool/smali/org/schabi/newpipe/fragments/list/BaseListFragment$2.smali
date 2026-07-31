.class public final Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;
.super Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/fragments/list/BaseListFragment;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$2;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    sget p1, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->$r8$clinit:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->useNormalItemListScrollListener()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget p1, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->$r8$clinit:I

    .line 15
    .line 16
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->hasMoreItems()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->useNormalItemListScrollListener()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    const/4 p2, 0x1

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_4

    .line 43
    .line 44
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    const/4 p2, -0x1

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->loadMoreItems()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->useNormalItemListScrollListener()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.class public final Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;
.implements Lcom/xwray/groupie/OnItemClickListener;
.implements Lcom/xwray/groupie/OnItemLongClickListener;


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/feed/FeedFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/schabi/newpipe/local/feed/FeedFragment;->Companion:Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "Unable to process"

    .line 13
    .line 14
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onItemClick(Lcom/xwray/groupie/Item;Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    instance-of p2, p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 12
    .line 13
    iget-boolean p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->isRefreshing:Z

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    check-cast p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    .line 18
    .line 19
    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;->streamWithState:Lorg/schabi/newpipe/database/stream/StreamWithState;

    .line 20
    .line 21
    iget-object p1, p1, Lorg/schabi/newpipe/database/stream/StreamWithState;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-static/range {v0 .. v6}, Landroidx/sqlite/SQLite;->openVideoDetailFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public onItemLongClick(Lcom/xwray/groupie/Item;Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    instance-of p2, p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    .line 8
    .line 9
    if-eqz p2, :cond_2

    .line 10
    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$listenerStreamItem$1;->this$0:Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 12
    .line 13
    iget-boolean p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment;->isRefreshing:Z

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    check-cast p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;

    .line 18
    .line 19
    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/item/StreamItem;->streamWithState:Lorg/schabi/newpipe/database/stream/StreamWithState;

    .line 20
    .line 21
    iget-object p1, p1, Lorg/schabi/newpipe/database/stream/StreamWithState;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 47
    .line 48
    invoke-direct {v1, v0, p2, p0, p1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->create()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->show()V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 59
    return p0

    .line 60
    :cond_2
    const/4 p0, 0x0

    .line 61
    return p0
.end method

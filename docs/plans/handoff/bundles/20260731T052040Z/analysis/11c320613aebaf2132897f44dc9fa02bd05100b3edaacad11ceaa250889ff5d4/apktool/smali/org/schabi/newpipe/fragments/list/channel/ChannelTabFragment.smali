.class public Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;
.super Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment<",
        "Lorg/schabi/newpipe/extractor/InfoItem;",
        "Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;",
        ">;",
        "Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;"
    }
.end annotation


# instance fields
.field protected channelName:Ljava/lang/String;

.field public playlistControlBinding:Lokhttp3/Dispatcher;

.field protected tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_CHANNEL:Lorg/schabi/newpipe/error/UserAction;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;-><init>(Lorg/schabi/newpipe/error/UserAction;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static getInstance(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p0, v0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 7
    .line 8
    iput-object p1, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 9
    .line 10
    iput-object p2, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->channelName:Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public final getListHeaderSupplier()Ljava/util/function/Supplier;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/math/MathKt;->isStreamsTab(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    const v2, 0x7f0d00dd

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lokhttp3/Dispatcher;->bind(Landroid/view/View;)Lokhttp3/Dispatcher;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 30
    .line 31
    new-instance p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment$$ExternalSyntheticLambda0;-><init>(Lokhttp3/Dispatcher;)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public final getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    const/16 v2, 0x1b

    .line 22
    .line 23
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/util/List;

    .line 39
    .line 40
    new-instance v1, Lorg/schabi/newpipe/player/playqueue/ChannelTabPlayQueue;

    .line 41
    .line 42
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    .line 43
    .line 44
    check-cast v2, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    .line 45
    .line 46
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 51
    .line 52
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentInfo:Lorg/schabi/newpipe/extractor/ListInfo;

    .line 53
    .line 54
    check-cast p0, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    .line 55
    .line 56
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListInfo;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-direct {v1, v2, v3, p0, v0}, Lorg/schabi/newpipe/player/playqueue/ChannelTabPlayQueue;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    return-object v1
.end method

.method public final handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V
    .locals 3

    .line 1
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->handleResult(Lorg/schabi/newpipe/extractor/ListInfo;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 7
    .line 8
    instance-of v0, v0, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getChannelTabLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 27
    .line 28
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 33
    .line 34
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getSortFilter()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1, v0, v2, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromQuery(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string v1, "Could not recreate channel tab handler"

    .line 49
    .line 50
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    .line 58
    .line 59
    invoke-virtual {p1}, Lorg/schabi/newpipe/info_list/InfoListAdapter;->getItemCount()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    if-le p1, v1, :cond_1

    .line 67
    .line 68
    iget-object p1, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Landroid/widget/LinearLayout;

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    iget-object p1, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, Landroid/widget/LinearLayout;

    .line 80
    .line 81
    const/16 v0, 0x8

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    :goto_1
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 87
    .line 88
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 89
    .line 90
    invoke-static {p1, v0, p0}, Lnet/newpipe/app/AppKt;->initPlaylistControlClickListener(Landroidx/appcompat/app/AppCompatActivity;Lokhttp3/Dispatcher;Lorg/schabi/newpipe/fragments/list/playlist/PlaylistControlViewHolder;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method public final loadMoreItemsLogic()Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->currentNextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 6
    .line 7
    invoke-static {v0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda4;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v2, v0, v1, p0, v3}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda4;-><init>(ILjava/io/Serializable;Lorg/schabi/newpipe/extractor/Page;I)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    invoke-direct {p0, v2, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public final loadResult(Z)Lio/reactivex/rxjava3/core/Single;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->serviceId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->tabHandler:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 4
    .line 5
    invoke-static {v0, p0, p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelTab(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Z)Lio/reactivex/rxjava3/core/Single;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const p0, 0x7f0d0055

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->playlistControlBinding:Lokhttp3/Dispatcher;

    .line 6
    .line 7
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->channelName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

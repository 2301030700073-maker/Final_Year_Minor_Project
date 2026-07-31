.class public final Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/util/OnClickGesture;
.implements Lorg/reactivestreams/Subscriber;


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public held(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 2
    .line 3
    instance-of v0, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 8
    .line 9
    sget v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->$r8$clinit:I

    .line 10
    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :try_start_0
    new-instance v2, Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v2, v3, v0, p0, v1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->DELETE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/16 v4, 0x19

    .line 38
    .line 39
    invoke-direct {v3, p0, p1, v4}, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0, v3}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->setAction(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->create()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catch_0
    move-exception p0

    .line 54
    invoke-static {p0, v1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->reportErrorDuringInitialization(Ljava/lang/IllegalArgumentException;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    .line 1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 2
    .line 3
    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->SOMETHING_ELSE:Lorg/schabi/newpipe/error/UserAction;

    .line 4
    .line 5
    const-string v2, "History Statistics"

    .line 6
    .line 7
    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->handleResult(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const-wide/16 v0, 0x1

    .line 13
    .line 14
    invoke-interface {p0, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/BaseLocalListFragment;->showLoading()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-object p1, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->databaseSubscription:Lorg/reactivestreams/Subscription;

    .line 14
    .line 15
    const-wide/16 v0, 0x1

    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public selected(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 2
    .line 3
    instance-of v0, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 8
    .line 9
    iget-object p1, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$1;->this$0:Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-static/range {v0 .. v6}, Landroidx/sqlite/SQLite;->openVideoDetailFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

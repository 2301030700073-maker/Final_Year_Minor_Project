.class public Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public emptyView:Landroid/widget/TextView;

.field public feedGroups:Ljava/util/List;

.field public onSelectedListener:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;

.field public progressBar:Landroid/widget/ProgressBar;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->onSelectedListener:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$$ExternalSyntheticLambda4;

    .line 6
    .line 7
    new-instance v0, Ljava/util/Vector;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->feedGroups:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lokio/Options$Companion;->isLightThemeSelected(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const p1, 0x7f140178

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const p1, 0x7f140145

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    const p3, 0x7f0d00f5

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0a0206

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    iput-object p2, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 30
    .line 31
    .line 32
    new-instance p2, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;

    .line 33
    .line 34
    const/4 p3, 0x1

    .line 35
    invoke-direct {p2, p0, p3}, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    .line 36
    .line 37
    .line 38
    iget-object p3, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 41
    .line 42
    .line 43
    const p2, 0x7f0a031d

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Landroid/widget/ProgressBar;

    .line 51
    .line 52
    iput-object p2, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 53
    .line 54
    const p2, 0x7f0a0144

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Landroid/widget/TextView;

    .line 62
    .line 63
    iput-object p2, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->emptyView:Landroid/widget/TextView;

    .line 64
    .line 65
    iget-object p2, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object p2, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    const/16 p3, 0x8

    .line 73
    .line 74
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->emptyView:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-static {p2}, Lnet/newpipe/app/AppKt;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/AppDatabase;->feedGroupDAO()Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->getAll()Lio/reactivex/rxjava3/core/Flowable;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    new-instance p3, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;

    .line 99
    .line 100
    const/4 v0, 0x4

    .line 101
    invoke-direct {p3, p2, v0}, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;-><init>(Ljava/lang/Object;I)V

    .line 102
    .line 103
    .line 104
    sget-object p2, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 105
    .line 106
    invoke-virtual {p3, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    new-instance p3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 119
    .line 120
    const/16 v0, 0xe

    .line 121
    .line 122
    invoke-direct {p3, p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(Ljava/lang/Object;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    .line 126
    .line 127
    .line 128
    return-object p1
.end method

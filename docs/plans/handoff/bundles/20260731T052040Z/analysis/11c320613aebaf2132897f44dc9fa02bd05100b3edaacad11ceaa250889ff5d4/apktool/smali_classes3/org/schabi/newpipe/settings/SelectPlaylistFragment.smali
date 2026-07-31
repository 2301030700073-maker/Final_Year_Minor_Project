.class public Lorg/schabi/newpipe/settings/SelectPlaylistFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public disposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

.field public emptyView:Landroid/widget/TextView;

.field public onSelectedListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

.field public playlists:Ljava/util/List;

.field public progressBar:Landroid/widget/ProgressBar;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static -$$Nest$mclickedItem(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->onSelectedListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->playlists:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 12
    .line 13
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 18
    .line 19
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->onSelectedListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getUid()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getOrderingName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    .line 32
    .line 33
    new-instance v3, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;

    .line 34
    .line 35
    invoke-direct {v3, p1, v1, v2}, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;-><init>(Ljava/lang/String;J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->addTab(Lorg/schabi/newpipe/settings/tabs/Tab;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 47
    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->onSelectedListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 49
    .line 50
    iget v1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->serviceId:I

    .line 51
    .line 52
    iget-object v2, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->url:Ljava/lang/String;

    .line 53
    .line 54
    iget-object p1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->orderingName:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;

    .line 59
    .line 60
    new-instance v3, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    iput v1, v3, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    .line 66
    .line 67
    iput-object v2, v3, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistUrl:Ljava/lang/String;

    .line 68
    .line 69
    iput-object p1, v3, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    .line 70
    .line 71
    sget-object p1, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_REMOTE_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 72
    .line 73
    iput-object p1, v3, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 74
    .line 75
    const-wide/16 v1, -0x1

    .line 76
    .line 77
    iput-wide v1, v3, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistId:J

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment;->addTab(Lorg/schabi/newpipe/settings/tabs/Tab;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->onSelectedListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->disposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 8
    .line 9
    new-instance v0, Ljava/util/Vector;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->playlists:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 1
    const p3, 0x7f0d00f9

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
    const p2, 0x7f0a031d

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroid/widget/ProgressBar;

    .line 17
    .line 18
    iput-object p2, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 19
    .line 20
    const p2, 0x7f0a0206

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    iput-object p2, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    const p2, 0x7f0a0144

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object p2, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->emptyView:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object p2, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 54
    .line 55
    .line 56
    new-instance p2, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;

    .line 57
    .line 58
    const/4 p3, 0x2

    .line 59
    invoke-direct {p2, p0, p3}, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 68
    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    const/16 v1, 0x8

    .line 75
    .line 76
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->emptyView:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {p2}, Lnet/newpipe/app/AppKt;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/AppDatabase;->streamDAO()Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/AppDatabase;->playlistDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/AppDatabase;->playlistStreamDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/AppDatabase;->playlistRemoteDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    iget-object v1, v1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 107
    .line 108
    const-string v2, "playlists"

    .line 109
    .line 110
    const-string v3, "playlist_stream_join"

    .line 111
    .line 112
    const-string v4, "streams"

    .line 113
    .line 114
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    new-instance v3, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 119
    .line 120
    const/4 v4, 0x3

    .line 121
    invoke-direct {v3, v4}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 122
    .line 123
    .line 124
    const/4 v4, 0x1

    .line 125
    invoke-static {v1, v4, v2, v3}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    sget-object v2, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget-object p2, p2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 136
    .line 137
    const-string v3, "remote_playlists"

    .line 138
    .line 139
    filled-new-array {v3}, [Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    new-instance v5, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;

    .line 144
    .line 145
    invoke-direct {v5, p3}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 146
    .line 147
    .line 148
    invoke-static {p2, v0, v3, v5}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p2, v2}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    new-instance p3, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 157
    .line 158
    const/16 v2, 0xa

    .line 159
    .line 160
    invoke-direct {p3, v2}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 161
    .line 162
    .line 163
    invoke-static {v1, p2, p3}, Lio/reactivex/rxjava3/core/Flowable;->combineLatest(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Flowable;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    new-instance p3, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$$ExternalSyntheticLambda0;

    .line 176
    .line 177
    invoke-direct {p3, p0, v0}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;I)V

    .line 178
    .line 179
    .line 180
    new-instance v0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$$ExternalSyntheticLambda0;

    .line 181
    .line 182
    invoke-direct {v0, p0, v4}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;I)V

    .line 183
    .line 184
    .line 185
    new-instance v1, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 186
    .line 187
    invoke-direct {v1, p3, v0}, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 191
    .line 192
    .line 193
    iput-object v1, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->disposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 194
    .line 195
    return-object p1
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->disposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

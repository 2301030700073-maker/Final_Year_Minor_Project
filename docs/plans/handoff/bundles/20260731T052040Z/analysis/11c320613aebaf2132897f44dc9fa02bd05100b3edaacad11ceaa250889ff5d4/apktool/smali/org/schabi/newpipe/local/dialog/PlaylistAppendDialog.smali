.class public final Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;
.super Lorg/schabi/newpipe/local/dialog/PlaylistDialog;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public playlistAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

.field public final playlistDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public playlistDuplicateIndicator:Landroid/widget/TextView;

.field public playlistRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static $r8$lambda$32Imcs3GYaB-AK9Bg8ybmEKtLfQ(Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDuplicateIndicator:Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->clearStreamItemList()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;->addItems(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDuplicateIndicator:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 34
    .line 35
    const/4 v2, 0x5

    .line 36
    invoke-direct {v0, v2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/16 v1, 0x8

    .line 47
    .line 48
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const p0, 0x7f0d0039

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 5
    .line 6
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, v1, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/jsoup/parser/TokenData;

    .line 15
    .line 16
    iput-object v2, v1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    iput-object v2, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 24
    .line 25
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    new-instance p2, Lokhttp3/Dispatcher;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p2, v0}, Lokhttp3/Dispatcher;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/LocalItemListAdapter;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 24
    .line 25
    new-instance v1, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/16 v2, 0x17

    .line 28
    .line 29
    invoke-direct {v1, p0, p2, v2}, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItemBuilder:Lorg/jsoup/parser/TokenData;

    .line 33
    .line 34
    iput-object v1, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 35
    .line 36
    const v0, 0x7f0a030f

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    iput-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    iget-object v1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 64
    .line 65
    .line 66
    const v0, 0x7f0a030e

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/TextView;

    .line 74
    .line 75
    iput-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDuplicateIndicator:Landroid/widget/TextView;

    .line 76
    .line 77
    const v0, 0x7f0a0289

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v0, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;

    .line 85
    .line 86
    const/4 v1, 0x5

    .line 87
    invoke-direct {v0, p0, v1}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->streamEntities:Ljava/util/List;

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 101
    .line 102
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget-object p2, p2, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-object p2, p2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 117
    .line 118
    const-string v0, "playlists"

    .line 119
    .line 120
    const-string v1, "playlist_stream_join"

    .line 121
    .line 122
    const-string/jumbo v3, "streams"

    .line 123
    .line 124
    .line 125
    filled-new-array {v3, v0, v1}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v1, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    invoke-direct {v1, p1, v2}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    const/4 p1, 0x1

    .line 135
    invoke-static {p2, p1, v0, v1}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    sget-object p2, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 140
    .line 141
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    new-instance p2, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 154
    .line 155
    const/16 v0, 0xd

    .line 156
    .line 157
    invoke-direct {p2, p0, v0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 158
    .line 159
    .line 160
    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 161
    .line 162
    new-instance v1, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 163
    .line 164
    invoke-direct {v1, p2, v0}, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 168
    .line 169
    .line 170
    iget-object p0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 171
    .line 172
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 173
    .line 174
    .line 175
    return-void
.end method

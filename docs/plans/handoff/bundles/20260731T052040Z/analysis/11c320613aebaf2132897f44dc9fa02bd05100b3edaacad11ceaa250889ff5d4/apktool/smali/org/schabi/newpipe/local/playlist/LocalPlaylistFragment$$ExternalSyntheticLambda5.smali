.class public final synthetic Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda5;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda5;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 9
    .line 10
    sget-object p1, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->JUST_URLS:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->sharePlaylist(Lorg/schabi/newpipe/local/playlist/PlayListShareMode;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    sget p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 17
    .line 18
    sget-object p1, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->YOUTUBE_TEMP_PLAYLIST:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->sharePlaylist(Lorg/schabi/newpipe/local/playlist/PlayListShareMode;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iget-boolean p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->isRewritingPlaylist:Z

    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->showLoading()V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lokhttp3/Dispatcher;

    .line 36
    .line 37
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iget-object p2, p2, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

    .line 46
    .line 47
    iget-object v2, p2, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 48
    .line 49
    const-string v3, "playlist_stream_join"

    .line 50
    .line 51
    const-string/jumbo v4, "stream_state"

    .line 52
    .line 53
    .line 54
    const-string/jumbo v5, "streams"

    .line 55
    .line 56
    .line 57
    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    new-instance v4, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;

    .line 62
    .line 63
    invoke-direct {v4, v0, v1, p2, p1}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;-><init>(JLorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;I)V

    .line 64
    .line 65
    .line 66
    invoke-static {v2, p1, v3, v4}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget-object p2, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;

    .line 77
    .line 78
    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 82
    .line 83
    invoke-virtual {v0, p2}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    const/4 v2, 0x2

    .line 94
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 95
    .line 96
    .line 97
    new-instance v2, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    const/4 v3, 0x3

    .line 100
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    sget-object p0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Landroidx/transition/Transition$1;

    .line 104
    .line 105
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 106
    .line 107
    invoke-direct {v3, v1, v2, p0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 108
    .line 109
    .line 110
    :try_start_0
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;

    .line 111
    .line 112
    invoke-direct {p0, v3, v0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p0}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 119
    .line 120
    .line 121
    :goto_0
    return-void

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    const-string/jumbo p1, "subscribeActual failed"

    .line 124
    .line 125
    .line 126
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    throw p0

    .line 131
    :catch_0
    move-exception p0

    .line 132
    throw p0

    .line 133
    :pswitch_2
    sget p1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 134
    .line 135
    sget-object p1, Lorg/schabi/newpipe/local/playlist/PlayListShareMode;->WITH_TITLES:Lorg/schabi/newpipe/local/playlist/PlayListShareMode;

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->sharePlaylist(Lorg/schabi/newpipe/local/playlist/PlayListShareMode;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

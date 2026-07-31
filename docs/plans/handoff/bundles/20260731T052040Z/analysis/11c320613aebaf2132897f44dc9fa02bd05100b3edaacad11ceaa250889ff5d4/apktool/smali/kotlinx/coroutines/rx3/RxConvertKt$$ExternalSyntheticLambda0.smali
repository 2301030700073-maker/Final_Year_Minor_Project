.class public final synthetic Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/runtime/ShouldPauseCallback;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;
.implements Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;
.implements Lorg/mozilla/javascript/ContextAction;
.implements Lio/reactivex/rxjava3/functions/Consumer;
.implements Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;
.implements Lio/reactivex/rxjava3/functions/Function;
.implements Lorg/schabi/newpipe/util/OnClickGesture;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroid/content/Context;

    .line 11
    .line 12
    check-cast v1, Ljava/util/function/Consumer;

    .line 13
    .line 14
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 15
    .line 16
    new-instance v0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {v2, v0, v3}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;-><init>(Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, v0}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v2, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;

    .line 38
    .line 39
    invoke-direct {v2, p0, p1}, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_CONSUMER:Lio/noties/markwon/BlockHandlerDef;

    .line 43
    .line 44
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;

    .line 45
    .line 46
    invoke-direct {v3, v0, p0, v2}, Lio/reactivex/rxjava3/internal/operators/completable/CompletablePeek;-><init>(Lio/reactivex/rxjava3/core/Completable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 47
    .line 48
    .line 49
    new-instance p0, Lio/reactivex/rxjava3/internal/observers/EmptyCompletableObserver;

    .line 50
    .line 51
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, p0}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :sswitch_0
    check-cast p0, Lorg/schabi/newpipe/player/Player;

    .line 62
    .line 63
    check-cast v1, Lorg/schabi/newpipe/player/TimestampChangeData;

    .line 64
    .line 65
    move-object v3, p1

    .line 66
    check-cast v3, Ljava/lang/Throwable;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 72
    .line 73
    iget-object v5, v1, Lorg/schabi/newpipe/player/TimestampChangeData;->url:Ljava/lang/String;

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    sget-object v4, Lorg/schabi/newpipe/error/UserAction;->PLAY_ON_POPUP:Lorg/schabi/newpipe/error/UserAction;

    .line 77
    .line 78
    move-object v7, v5

    .line 79
    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 83
    .line 84
    invoke-static {p0, v2}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :sswitch_1
    check-cast p0, Ljava/util/function/Consumer;

    .line 89
    .line 90
    check-cast v1, Ljava/util/List;

    .line 91
    .line 92
    check-cast p1, Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_0

    .line 99
    .line 100
    new-instance p1, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;

    .line 101
    .line 102
    invoke-direct {p1}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v1, p1, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->streamEntities:Ljava/util/List;

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;

    .line 109
    .line 110
    invoke-direct {p1}, Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v1, p1, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->streamEntities:Ljava/util/List;

    .line 114
    .line 115
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :sswitch_2
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 120
    .line 121
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 122
    .line 123
    check-cast p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 124
    .line 125
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 126
    .line 127
    iget-wide v2, p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->progressMillis:J

    .line 128
    .line 129
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    .line 130
    .line 131
    .line 132
    move-result-wide v0

    .line 133
    const-wide/16 v4, 0x3e8

    .line 134
    .line 135
    mul-long/2addr v0, v4

    .line 136
    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updatePlaybackProgress(JJ)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    nop

    .line 141
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    .line 4
    .line 5
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 8
    .line 9
    check-cast p1, Ljava/util/List;

    .line 10
    .line 11
    sget v1, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->$r8$clinit:I

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget v2, Lio/reactivex/rxjava3/core/Flowable;->BUFFER_SIZE:I

    .line 19
    .line 20
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableJust;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableJust;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget v4, v3, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->serviceId:I

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-ne v4, v5, :cond_2

    .line 52
    .line 53
    iget-object v4, v3, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->streamCount:Ljava/lang/Long;

    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getStreamCount()J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    if-nez v4, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 63
    .line 64
    .line 65
    move-result-wide v7

    .line 66
    cmp-long v4, v7, v5

    .line 67
    .line 68
    if-nez v4, :cond_2

    .line 69
    .line 70
    iget-object v4, v3, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->orderingName:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_2

    .line 81
    .line 82
    iget-object v4, v3, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->url:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_2

    .line 93
    .line 94
    iget-object v4, v3, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->thumbnailUrl:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getThumbnails()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {v5}, Lorg/schabi/newpipe/util/image/ImageStrategy;->imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_2

    .line 112
    .line 113
    iget-object v3, v3, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uploader:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getUploaderName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_2

    .line 124
    .line 125
    :goto_0
    return-object v2

    .line 126
    :cond_2
    :goto_1
    iget-object v0, v0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->remotePlaylistManager:Lorg/jsoup/parser/TokenData;

    .line 127
    .line 128
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 133
    .line 134
    iget-wide v1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uid:J

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    new-instance p1, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;

    .line 140
    .line 141
    invoke-direct {p1, p0, v0, v1, v2}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;Lorg/jsoup/parser/TokenData;J)V

    .line 142
    .line 143
    .line 144
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 145
    .line 146
    const/4 v0, 0x3

    .line 147
    invoke-direct {p0, p1, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 148
    .line 149
    .line 150
    sget-object p1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    instance-of p1, p0, Lio/reactivex/rxjava3/internal/fuseable/FuseToFlowable;

    .line 157
    .line 158
    if-eqz p1, :cond_3

    .line 159
    .line 160
    check-cast p0, Lio/reactivex/rxjava3/internal/fuseable/FuseToFlowable;

    .line 161
    .line 162
    invoke-interface {p0}, Lio/reactivex/rxjava3/internal/fuseable/FuseToFlowable;->fuseToFlowable()Lio/reactivex/rxjava3/core/Flowable;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    return-object p0

    .line 167
    :cond_3
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray;

    .line 168
    .line 169
    const/4 v0, 0x5

    .line 170
    invoke-direct {p1, p0, v0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeConcatArray;-><init>(Ljava/lang/Object;I)V

    .line 171
    .line 172
    .line 173
    return-object p1
.end method

.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    .line 4
    .line 5
    iget-object v2, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Landroidx/work/rxjava3/RxWorker;

    .line 14
    .line 15
    check-cast v2, Lio/reactivex/rxjava3/core/Single;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/work/WorkerParameters;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    sget-object v1, Lio/reactivex/rxjava3/schedulers/Schedulers;->SINGLE:Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler;

    .line 22
    .line 23
    new-instance v1, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;-><init>(Ljava/util/concurrent/Executor;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object p0, p0, Landroidx/work/WorkerParameters;->mWorkTaskExecutor:Lokhttp3/Dispatcher;

    .line 33
    .line 34
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Landroidx/room/TransactionExecutor;

    .line 37
    .line 38
    new-instance v1, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;-><init>(Ljava/util/concurrent/Executor;)V

    .line 41
    .line 42
    .line 43
    new-instance p0, Lcoil3/memory/MemoryCacheService;

    .line 44
    .line 45
    invoke-direct {p0, p1}, Lcoil3/memory/MemoryCacheService;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :try_start_0
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 49
    .line 50
    invoke-direct {p1, p0, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    const-string p0, "converted single to future"

    .line 57
    .line 58
    return-object p0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    const-string/jumbo p1, "subscribeActual failed"

    .line 61
    .line 62
    .line 63
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    throw p0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    throw p0

    .line 70
    :pswitch_0
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 71
    .line 72
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 73
    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 77
    .line 78
    .line 79
    new-instance v4, Landroidx/work/WorkerKt$$ExternalSyntheticLambda1;

    .line 80
    .line 81
    invoke-direct {v4, v0, v3}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 82
    .line 83
    .line 84
    iget-object v5, p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 85
    .line 86
    if-eqz v5, :cond_0

    .line 87
    .line 88
    invoke-virtual {v5, v4, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    new-instance v1, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    .line 92
    .line 93
    invoke-direct {v1, v3, v0, p1, v2}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_1
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 103
    .line 104
    check-cast v2, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    .line 108
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 109
    .line 110
    .line 111
    new-instance v3, Landroidx/work/WorkerKt$$ExternalSyntheticLambda1;

    .line 112
    .line 113
    const/4 v4, 0x1

    .line 114
    invoke-direct {v3, v0, v4}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 115
    .line 116
    .line 117
    iget-object v4, p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 118
    .line 119
    if-eqz v4, :cond_1

    .line 120
    .line 121
    invoke-virtual {v4, v3, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 122
    .line 123
    .line 124
    :cond_1
    new-instance v1, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    .line 125
    .line 126
    const/4 v3, 0x4

    .line 127
    invoke-direct {v1, v3, v0, p1, v2}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 131
    .line 132
    .line 133
    const-string p0, "setForegroundAsync"

    .line 134
    .line 135
    return-object p0

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public create(ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 9
    .line 10
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->$r8$lambda$iXnzbVbG8qjEjzu8ihjd0xt5GvM(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_0
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 22
    .line 23
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, [I

    .line 26
    .line 27
    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->$r8$lambda$JZPUS2p844jiiiIC_BytyLOxXI0(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[IILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic held(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 9
    .line 10
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/google/android/exoplayer2/video/VideoSize;

    .line 13
    .line 14
    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 15
    .line 16
    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$RSt9FQDtZJcRAz_SMvE2PDSMsV4(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 23
    .line 24
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 27
    .line 28
    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 29
    .line 30
    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$dvsuihy6C7j8kkHMtZ33JiUSFvQ(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_2
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 37
    .line 38
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lcom/google/android/exoplayer2/DeviceInfo;

    .line 41
    .line 42
    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 43
    .line 44
    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$KTibsJvpB_LPztV2PfqkUP6kdq8(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_3
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 51
    .line 52
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lcom/google/android/exoplayer2/Tracks;

    .line 55
    .line 56
    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 57
    .line 58
    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$awxfDq2PTUrsPPs8tGGvVrDQY3Q(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_4
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 65
    .line 66
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Ljava/util/List;

    .line 69
    .line 70
    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 71
    .line 72
    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$oDnFhLD61hrJsDTAf5ENmh1clXg(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_5
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 79
    .line 80
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 83
    .line 84
    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 85
    .line 86
    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$p3l870gIpyzmxqjuRA_7k0GCsIg(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_6
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 93
    .line 94
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p0, Lcom/google/android/exoplayer2/Player$Commands;

    .line 97
    .line 98
    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 99
    .line 100
    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$R2bn18m7ExnMMPJy6IUH2S4irZY(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_7
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 107
    .line 108
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p0, Lcom/google/android/exoplayer2/text/CueGroup;

    .line 111
    .line 112
    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 113
    .line 114
    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$kXbjkDMryJ-B5uUHCvnSZR3SMRw(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_8
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 121
    .line 122
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p0, Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 125
    .line 126
    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 127
    .line 128
    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$eNpBgcxO_yIpSb11QYu3KnPF5BE(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :pswitch_9
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 135
    .line 136
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 139
    .line 140
    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 141
    .line 142
    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$d3hiXz3I2U2jb4emQovFspnq4wo(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;

    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/Player;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$dp8whrNYdpBD6v-RhgNMnVkTlFs(Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/util/FlagSet;)V

    return-void
.end method

.method public onClick(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 4

    .line 1
    iget p1, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    .line 12
    .line 13
    check-cast v0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 14
    .line 15
    sget p1, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->$r8$clinit:I

    .line 16
    .line 17
    iget-object p1, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 18
    .line 19
    iget-object p1, p1, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget-object p2, p0, Lorg/schabi/newpipe/local/BaseLocalListFragment;->itemListAdapter:Lorg/schabi/newpipe/local/LocalItemListAdapter;

    .line 30
    .line 31
    iget-object p2, p2, Lorg/schabi/newpipe/local/LocalItemListAdapter;->localItems:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 38
    .line 39
    instance-of p2, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 40
    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    check-cast p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 44
    .line 45
    iget-object p2, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 46
    .line 47
    iget-wide v2, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamId:J

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance p1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda21;

    .line 53
    .line 54
    invoke-direct {p1, p2, v2, v3}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda21;-><init>(Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;J)V

    .line 55
    .line 56
    .line 57
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;

    .line 58
    .line 59
    invoke-direct {p2, p1, v1}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;-><init>(Ljava/lang/Object;I)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance p2, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda5;

    .line 77
    .line 78
    invoke-direct {p2, p0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda5;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

    .line 87
    .line 88
    invoke-direct {v1, v0, p2}, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 97
    .line 98
    .line 99
    :cond_0
    return-void

    .line 100
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    .line 101
    .line 102
    check-cast v0, Landroid/content/Context;

    .line 103
    .line 104
    sget p1, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->$r8$clinit:I

    .line 105
    .line 106
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->infoListAdapter:Lorg/schabi/newpipe/info_list/InfoListAdapter;

    .line 107
    .line 108
    iget-object p1, p1, Lorg/schabi/newpipe/info_list/InfoListAdapter;->infoItemList:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->getPlayQueue$1(I)Lorg/schabi/newpipe/player/playqueue/PlaylistPlayQueue;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    const/4 p1, 0x1

    .line 123
    invoke-static {v0, p0, p1}, Landroidx/sqlite/SQLite;->playOnBackgroundPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/schabi/newpipe/settings/ExoPlayerSettingsFragment;

    .line 4
    .line 5
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    sget v1, Lorg/schabi/newpipe/settings/ExoPlayerSettingsFragment;->$r8$clinit:I

    .line 10
    .line 11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-interface {p2, p0, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    .line 38
    .line 39
    const p0, 0x7f130104

    .line 40
    .line 41
    .line 42
    iget-object p2, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    const/4 p0, 0x1

    .line 52
    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lorg/schabi/newpipe/settings/HistorySettingsFragment;

    .line 4
    .line 5
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/preference/Preference;

    .line 8
    .line 9
    sget v0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->$r8$clinit:I

    .line 10
    .line 11
    iget-object v0, p1, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f13040f

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, ""

    .line 25
    .line 26
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lorg/schabi/newpipe/DownloaderImpl;->instance:Lorg/schabi/newpipe/DownloaderImpl;

    .line 34
    .line 35
    const-string v1, "recaptcha_cookies"

    .line 36
    .line 37
    iget-object v0, v0, Lorg/schabi/newpipe/DownloaderImpl;->mCookies:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const v0, 0x7f13040e

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x1

    .line 61
    return p0
.end method

.method public run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lorg/mozilla/javascript/Script;

    .line 8
    .line 9
    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->$r8$lambda$B2eXsVuwqILKQT5naPebIWhlFzI([Ljava/lang/String;Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public selected(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v2, v0

    .line 4
    check-cast v2, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;

    .line 5
    .line 6
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v5, p0

    .line 9
    check-cast v5, Lokhttp3/Dispatcher;

    .line 10
    .line 11
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 12
    .line 13
    iget-object v6, v2, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->streamEntities:Ljava/util/List;

    .line 14
    .line 15
    instance-of p0, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    .line 16
    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    if-eqz v6, :cond_2

    .line 20
    .line 21
    move-object v4, p1

    .line 22
    check-cast v4, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    .line 23
    .line 24
    iget-wide p0, v4, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->timesStreamIsContained:J

    .line 25
    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    cmp-long v0, p0, v0

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-lez v0, :cond_0

    .line 32
    .line 33
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const/4 p1, 0x1

    .line 38
    new-array p1, p1, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object p0, p1, v1

    .line 41
    .line 42
    const p0, 0x7f1303da

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const p0, 0x7f1303d9

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_0
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object p0, v2, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->playlistDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 66
    .line 67
    iget-wide v7, v4, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->uid:J

    .line 68
    .line 69
    iget-object p1, v5, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

    .line 72
    .line 73
    iget-object p1, p1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 74
    .line 75
    const-string v0, "playlist_stream_join"

    .line 76
    .line 77
    filled-new-array {v0}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v9, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 82
    .line 83
    const/16 v10, 0xf

    .line 84
    .line 85
    invoke-direct {v9, v7, v8, v10}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(JI)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v1, v0, v9}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;

    .line 93
    .line 94
    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    .line 95
    .line 96
    .line 97
    new-instance p1, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;

    .line 98
    .line 99
    invoke-direct {p1, v7, v8, v5, v6}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda18;-><init>(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    new-instance v7, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap;

    .line 103
    .line 104
    invoke-direct {v7, v0, p1, v1}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap;-><init>(Lio/reactivex/rxjava3/core/Maybe;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 105
    .line 106
    .line 107
    sget-object p1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 108
    .line 109
    invoke-virtual {v7, p1}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v1, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;

    .line 118
    .line 119
    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;Landroid/widget/Toast;Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;Lokhttp3/Dispatcher;Ljava/util/List;)V

    .line 120
    .line 121
    .line 122
    sget-object v3, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 123
    .line 124
    sget-object v4, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Landroidx/transition/Transition$1;

    .line 125
    .line 126
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 127
    .line 128
    invoke-direct {v5, v1, v3, v4}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 129
    .line 130
    .line 131
    :try_start_0
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;

    .line 132
    .line 133
    invoke-direct {v1, v5, v0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v5}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 140
    .line 141
    .line 142
    iget-object p0, v2, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 143
    .line 144
    if-eqz p0, :cond_1

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_1
    const-string p0, "DialogFragment "

    .line 151
    .line 152
    const-string p1, " does not have a Dialog."

    .line 153
    .line 154
    invoke-static {v2, p1, p0}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    move-object p0, v0

    .line 160
    const-string/jumbo p1, "subscribeActual failed"

    .line 161
    .line 162
    .line 163
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    throw p0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    move-object p0, v0

    .line 170
    throw p0

    .line 171
    :cond_2
    return-void
.end method

.method public shouldPause()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/compose/foundation/lazy/layout/Averages;

    .line 8
    .line 9
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->pauseRequested:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->updateElapsedAndAvailableTime()V

    .line 14
    .line 15
    .line 16
    iget-wide v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->elapsedTimeNanos:J

    .line 17
    .line 18
    iget-wide v3, p0, Landroidx/compose/foundation/lazy/layout/Averages;->resumeTimeNanos:J

    .line 19
    .line 20
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/foundation/lazy/layout/Averages;->calculateAverageTime(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    iput-wide v1, p0, Landroidx/compose/foundation/lazy/layout/Averages;->resumeTimeNanos:J

    .line 25
    .line 26
    iget-wide v3, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->availableTimeNanos:J

    .line 27
    .line 28
    iget-wide v5, p0, Landroidx/compose/foundation/lazy/layout/Averages;->pauseTimeNanos:J

    .line 29
    .line 30
    add-long/2addr v1, v5

    .line 31
    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->shouldExecute(JJ)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    xor-int/lit8 p0, p0, 0x1

    .line 36
    .line 37
    iput-boolean p0, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->pauseRequested:Z

    .line 38
    .line 39
    :cond_0
    iget-boolean p0, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->pauseRequested:Z

    .line 40
    .line 41
    return p0
.end method

.method public subscribe(Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate$CreateEmitter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1;

    .line 8
    .line 9
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Unconfined:Lkotlinx/coroutines/Unconfined;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Lnet/newpipe/app/AppKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lkotlinx/coroutines/rx3/RxConvertKt$asObservable$1$job$1;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, p0, p1, v2}, Lkotlinx/coroutines/rx3/RxConvertKt$asObservable$1$job$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lio/reactivex/rxjava3/core/ObservableEmitter;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    .line 25
    .line 26
    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->ATOMIC:Lkotlinx/coroutines/CoroutineStart;

    .line 27
    .line 28
    invoke-static {p0, v0, v2, v1}, Lkotlinx/coroutines/JobKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Lkotlinx/coroutines/rx3/RxCancellable;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lkotlinx/coroutines/rx3/RxCancellable;-><init>(Lkotlinx/coroutines/AbstractCoroutine;)V

    .line 35
    .line 36
    .line 37
    new-instance p0, Lio/reactivex/rxjava3/internal/disposables/CancellableDisposable;

    .line 38
    .line 39
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

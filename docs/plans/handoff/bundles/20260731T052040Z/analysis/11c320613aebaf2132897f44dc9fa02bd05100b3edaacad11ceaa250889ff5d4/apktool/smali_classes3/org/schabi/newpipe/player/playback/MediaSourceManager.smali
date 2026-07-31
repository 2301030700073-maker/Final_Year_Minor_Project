.class public final Lorg/schabi/newpipe/player/playback/MediaSourceManager;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final debouncedLoader:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

.field public final debouncedSignal:Lio/reactivex/rxjava3/subjects/PublishSubject;

.field public final isBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final loaderReactor:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public final loadingItems:Ljava/util/Set;

.field public final playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

.field public playQueueReactor:Lorg/reactivestreams/Subscription;

.field public final playbackListener:Lorg/schabi/newpipe/player/Player;

.field public final playbackNearEndGapMillis:J

.field public playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

.field public final removeMediaSourceHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->removeMediaSourceHandler:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v0, p2, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcastReceiver:Lio/reactivex/rxjava3/core/Flowable;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackListener:Lorg/schabi/newpipe/player/Player;

    .line 16
    .line 17
    iput-object p2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 18
    .line 19
    const-wide/16 v0, 0x7530

    .line 20
    .line 21
    iput-wide v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackNearEndGapMillis:J

    .line 22
    .line 23
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    const-string p1, "unit is null"

    .line 28
    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    invoke-static {v0, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval;

    .line 35
    .line 36
    const-wide/16 v0, 0x0

    .line 37
    .line 38
    const-wide/16 v3, 0x7d0

    .line 39
    .line 40
    move-wide v5, v3

    .line 41
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    invoke-direct/range {v2 .. v7}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableInterval;-><init>(JJLio/reactivex/rxjava3/core/Scheduler;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-direct {v0, v2, p1, v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;-><init>(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 64
    .line 65
    invoke-direct {p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->debouncedSignal:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 69
    .line 70
    const/4 v2, 0x2

    .line 71
    new-array v3, v2, [Lio/reactivex/rxjava3/core/Observable;

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    aput-object p1, v3, v4

    .line 75
    .line 76
    aput-object v0, v3, v1

    .line 77
    .line 78
    new-instance p1, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;

    .line 79
    .line 80
    const/4 v0, 0x3

    .line 81
    invoke-direct {p1, v3, v0}, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;-><init>(Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->IDENTITY:Lokio/Path$Companion;

    .line 85
    .line 86
    sget v1, Lio/reactivex/rxjava3/core/Flowable;->BUFFER_SIZE:I

    .line 87
    .line 88
    const-string v3, "maxConcurrency"

    .line 89
    .line 90
    invoke-static {v2, v3}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v2, "bufferSize"

    .line 94
    .line 95
    invoke-static {v1, v2}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    instance-of v2, p1, Lio/reactivex/rxjava3/operators/ScalarSupplier;

    .line 99
    .line 100
    if-eqz v2, :cond_1

    .line 101
    .line 102
    check-cast p1, Lio/reactivex/rxjava3/operators/ScalarSupplier;

    .line 103
    .line 104
    invoke-interface {p1}, Lio/reactivex/rxjava3/functions/Supplier;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-nez p1, :cond_0

    .line 109
    .line 110
    sget-object p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableEmpty;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/observable/ObservableEmpty;

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;

    .line 114
    .line 115
    invoke-direct {v1, p1, v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarXMapObservable;-><init>(Ljava/lang/Object;Lio/reactivex/rxjava3/functions/Function;)V

    .line 116
    .line 117
    .line 118
    move-object p1, v1

    .line 119
    goto :goto_0

    .line 120
    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;

    .line 121
    .line 122
    invoke-direct {v0, p1, v1, v4}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFlatMap;-><init>(Lio/reactivex/rxjava3/core/Observable;II)V

    .line 123
    .line 124
    .line 125
    move-object p1, v0

    .line 126
    :goto_0
    const-wide/16 v0, 0x190

    .line 127
    .line 128
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->debounce(J)Lio/reactivex/rxjava3/internal/operators/observable/ObservableDebounceTimed;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->SINGLE:Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler;

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    new-instance v0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda0;

    .line 147
    .line 148
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;)V

    .line 149
    .line 150
    .line 151
    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 152
    .line 153
    new-instance v2, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 154
    .line 155
    invoke-direct {v2, v0, v1}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    .line 159
    .line 160
    .line 161
    iput-object v2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->debouncedLoader:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 162
    .line 163
    sget-object p1, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;

    .line 164
    .line 165
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueueReactor:Lorg/reactivestreams/Subscription;

    .line 166
    .line 167
    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 168
    .line 169
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 170
    .line 171
    .line 172
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loaderReactor:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 173
    .line 174
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 175
    .line 176
    invoke-direct {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 177
    .line 178
    .line 179
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->isBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    .line 181
    new-instance p1, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 182
    .line 183
    invoke-direct {p1}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;-><init>()V

    .line 184
    .line 185
    .line 186
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 187
    .line 188
    new-instance p1, Landroidx/collection/ArraySet;

    .line 189
    .line 190
    invoke-direct {p1, v4}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 191
    .line 192
    .line 193
    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadingItems:Ljava/util/Set;

    .line 198
    .line 199
    iget-object p1, p2, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcastReceiver:Lio/reactivex/rxjava3/core/Flowable;

    .line 200
    .line 201
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    new-instance p2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 210
    .line 211
    const/16 v0, 0xc

    .line 212
    .line 213
    invoke-direct {p2, p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(Ljava/lang/Object;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_2
    const-string p0, "Play Queue has not been initialized."

    .line 221
    .line 222
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const/4 p0, 0x0

    .line 226
    throw p0
.end method


# virtual methods
.method public final loadImmediate()V
    .locals 8

    .line 1
    sget v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem(I)Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    add-int/lit8 v4, v1, -0x1

    .line 19
    .line 20
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    add-int/lit8 v1, v1, 0x2

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    new-instance v6, Landroidx/collection/ArraySet;

    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-interface {v7, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-direct {v6, v3}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 45
    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {v6, v4}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    sub-int/2addr v1, v4

    .line 57
    if-ltz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-interface {v4, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v6, v0}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {v6, v2}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 82
    .line 83
    const/16 v1, 0x15

    .line 84
    .line 85
    invoke-direct {v0, v2, v6, v1}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 86
    .line 87
    .line 88
    :goto_0
    if-nez v0, :cond_3

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadingItems:Ljava/util/Set;

    .line 92
    .line 93
    iget-object v2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 94
    .line 95
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_7

    .line 104
    .line 105
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loaderReactor:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 106
    .line 107
    iget-boolean v2, v1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->disposed:Z

    .line 108
    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    monitor-enter v1

    .line 113
    :try_start_0
    iget-boolean v2, v1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->disposed:Z

    .line 114
    .line 115
    if-eqz v2, :cond_5

    .line 116
    .line 117
    monitor-exit v1

    .line 118
    goto :goto_1

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto :goto_2

    .line 121
    :cond_5
    iget-object v2, v1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->resources:Lio/reactivex/rxjava3/internal/util/OpenHashSet;

    .line 122
    .line 123
    if-eqz v2, :cond_6

    .line 124
    .line 125
    iget v3, v2, Lio/reactivex/rxjava3/internal/util/OpenHashSet;->size:I

    .line 126
    .line 127
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_1
    const/4 v1, 0x3

    .line 129
    if-le v3, v1, :cond_7

    .line 130
    .line 131
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loaderReactor:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 132
    .line 133
    invoke-virtual {v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadingItems:Ljava/util/Set;

    .line 137
    .line 138
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    throw p0

    .line 144
    :cond_7
    :goto_3
    iget-object v1, v0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 147
    .line 148
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeLoadItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, v0, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Landroidx/collection/ArraySet;

    .line 154
    .line 155
    new-instance v1, Landroidx/collection/ArrayMap$KeyIterator;

    .line 156
    .line 157
    invoke-direct {v1, v0}, Landroidx/collection/ArrayMap$KeyIterator;-><init>(Landroidx/collection/ArraySet;)V

    .line 158
    .line 159
    .line 160
    :goto_4
    invoke-virtual {v1}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_8

    .line 165
    .line 166
    invoke-virtual {v1}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 171
    .line 172
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeLoadItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_8
    :goto_5
    return-void
.end method

.method public final maybeBlock()V
    .locals 3

    .line 1
    sget v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->isBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackListener:Lorg/schabi/newpipe/player/Player;

    .line 13
    .line 14
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    iput-object v2, v1, Lorg/schabi/newpipe/player/Player;->currentItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 23
    .line 24
    iput-object v2, v1, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 25
    .line 26
    iget-object v2, v1, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 27
    .line 28
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput-boolean v2, v1, Lorg/schabi/newpipe/player/Player;->isPrepared:Z

    .line 33
    .line 34
    const/16 v2, 0x7b

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/player/Player;->changeState(I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    new-instance v1, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 40
    .line 41
    invoke-direct {v1}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final maybeLoadItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V
    .locals 5

    .line 1
    sget v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 10
    .line 11
    iget-object v2, v2, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lt v1, v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadingItems:Ljava/util/Set;

    .line 21
    .line 22
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->get(I)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v4, 0x0

    .line 45
    if-eq v2, v0, :cond_1

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v0, v4

    .line 50
    :goto_0
    invoke-interface {v3, p1, v0}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;->shouldBeReplacedWith(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getStream()Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;

    .line 64
    .line 65
    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 69
    .line 70
    invoke-direct {v2, v0, v1, v4}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-direct {v1, v2, v0, v3}, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v2, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;

    .line 89
    .line 90
    invoke-direct {v2, p0, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 91
    .line 92
    .line 93
    sget-object p1, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 94
    .line 95
    new-instance v3, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 96
    .line 97
    invoke-direct {v3, v2, p1}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 98
    .line 99
    .line 100
    :try_start_0
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 101
    .line 102
    invoke-direct {p1, v3, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loaderReactor:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 109
    .line 110
    invoke-virtual {p0, v3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    const-string p1, "subscribeActual failed"

    .line 116
    .line 117
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    throw p0

    .line 122
    :catch_0
    move-exception p0

    .line 123
    throw p0

    .line 124
    :cond_2
    :goto_1
    return-void
.end method

.method public final maybeRenewCurrentIndex()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->get(I)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v3, 0x1

    .line 25
    invoke-interface {v2, v1, v3}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;->shouldBeReplacedWith(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeSynchronizePlayer()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    sget v1, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->$r8$clinit:I

    .line 36
    .line 37
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 38
    .line 39
    iget-object v2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->removeMediaSourceHandler:Landroid/os/Handler;

    .line 40
    .line 41
    new-instance v3, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda2;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-direct {v3, p0, v4}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;I)V

    .line 45
    .line 46
    .line 47
    monitor-enter v1

    .line 48
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->get(I)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    sget-object v4, Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;->COPY:Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    if-ne p0, v4, :cond_2

    .line 55
    .line 56
    monitor-exit v1

    .line 57
    return-void

    .line 58
    :cond_2
    :try_start_1
    invoke-virtual {v1, v0, v4, v2, v3}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->update(ILorg/schabi/newpipe/player/mediasource/ManagedMediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    throw p0

    .line 66
    :cond_3
    :goto_0
    return-void
.end method

.method public final maybeSync(Z)V
    .locals 8

    .line 1
    sget v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->isBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_b

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackListener:Lorg/schabi/newpipe/player/Player;

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_b

    .line 28
    .line 29
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 30
    .line 31
    if-eqz v1, :cond_b

    .line 32
    .line 33
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->currentItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 34
    .line 35
    if-ne v2, v0, :cond_1

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_1
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 44
    .line 45
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iget-object v3, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 50
    .line 51
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iget-object v4, p0, Lorg/schabi/newpipe/player/Player;->currentItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 60
    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    invoke-virtual {v4}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-ne v4, v5, :cond_3

    .line 72
    .line 73
    iget-object v4, p0, Lorg/schabi/newpipe/player/Player;->currentItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 74
    .line 75
    invoke-virtual {v4}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const/4 v4, 0x0

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    :goto_0
    const/4 v4, 0x1

    .line 93
    :goto_1
    iput-object v0, p0, Lorg/schabi/newpipe/player/Player;->currentItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 94
    .line 95
    iget-object v5, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 96
    .line 97
    invoke-virtual {v5}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eq v1, v5, :cond_4

    .line 102
    .line 103
    sget-object p1, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    .line 104
    .line 105
    const-string v0, "Playback - Play Queue may be not in sync: item index=["

    .line 106
    .line 107
    const-string v2, "], queue index=["

    .line 108
    .line 109
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 114
    .line 115
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p0, "]"

    .line 123
    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_4
    if-lez v3, :cond_5

    .line 136
    .line 137
    if-ge v1, v3, :cond_6

    .line 138
    .line 139
    :cond_5
    if-gez v1, :cond_7

    .line 140
    .line 141
    :cond_6
    sget-object p0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    .line 142
    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v0, "Playback - Trying to seek to invalid index=["

    .line 146
    .line 147
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v0, "] with playlist length=["

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, "]"

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_7
    if-nez p1, :cond_8

    .line 175
    .line 176
    if-ne v2, v1, :cond_8

    .line 177
    .line 178
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-nez p1, :cond_b

    .line 183
    .line 184
    :cond_8
    if-eqz v4, :cond_9

    .line 185
    .line 186
    const/4 p1, 0x0

    .line 187
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/Player;->onThumbnailLoaded(Landroid/graphics/Bitmap;)V

    .line 188
    .line 189
    .line 190
    :cond_9
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getRecoveryPosition()J

    .line 191
    .line 192
    .line 193
    move-result-wide v2

    .line 194
    const-wide/high16 v4, -0x8000000000000000L

    .line 195
    .line 196
    cmp-long p1, v2, v4

    .line 197
    .line 198
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 199
    .line 200
    if-eqz p1, :cond_a

    .line 201
    .line 202
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getRecoveryPosition()J

    .line 203
    .line 204
    .line 205
    move-result-wide v6

    .line 206
    invoke-interface {v2, v1, v6, v7}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    .line 207
    .line 208
    .line 209
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 210
    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    invoke-virtual {p0, v1, v4, v5}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->setRecovery(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .line 214
    .line 215
    monitor-exit p0

    .line 216
    return-void

    .line 217
    :catchall_0
    move-exception p1

    .line 218
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    throw p1

    .line 220
    :cond_a
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/Player;->seekToDefaultPosition(I)V

    .line 221
    .line 222
    .line 223
    :cond_b
    :goto_2
    return-void
.end method

.method public final declared-synchronized maybeSynchronizePlayer()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 3
    .line 4
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sub-int/2addr v1, v2

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-le v1, v2, :cond_0

    .line 16
    .line 17
    move v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v3

    .line 20
    :goto_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isComplete()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, v3

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_1
    move v0, v2

    .line 32
    :goto_2
    if-eqz v0, :cond_9

    .line 33
    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 35
    .line 36
    iget-object v0, v0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 43
    .line 44
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eq v0, v4, :cond_4

    .line 49
    .line 50
    :cond_3
    :goto_3
    move v0, v3

    .line 51
    goto :goto_4

    .line 52
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 53
    .line 54
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->get(I)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    if-nez v1, :cond_5

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_5
    invoke-interface {v0, v1}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;->isStreamEqual(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    :goto_4
    if-eqz v0, :cond_9

    .line 76
    .line 77
    sget v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->$r8$clinit:I

    .line 78
    .line 79
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->isBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_8

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackListener:Lorg/schabi/newpipe/player/Player;

    .line 91
    .line 92
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 93
    .line 94
    iget-object v1, v1, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 95
    .line 96
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_6

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_6
    iget v4, v0, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 104
    .line 105
    const/16 v5, 0x7b

    .line 106
    .line 107
    if-ne v4, v5, :cond_7

    .line 108
    .line 109
    const/16 v4, 0x7d

    .line 110
    .line 111
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/player/Player;->changeState(I)V

    .line 112
    .line 113
    .line 114
    :cond_7
    iget-object v4, v0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 115
    .line 116
    invoke-interface {v4, v1, v3}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    .line 117
    .line 118
    .line 119
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 120
    .line 121
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 122
    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_8
    move v2, v3

    .line 126
    :goto_5
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->maybeSync(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .line 128
    .line 129
    goto :goto_6

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    goto :goto_7

    .line 132
    :cond_9
    :goto_6
    monitor-exit p0

    .line 133
    return-void

    .line 134
    :goto_7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    throw v0
.end method

.method public final populateSources()V
    .locals 2

    .line 1
    sget v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->$r8$clinit:I

    .line 2
    .line 3
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;->COPY:Lorg/schabi/newpipe/player/mediasource/PlaceholderMediaSource;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->append(Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0

    .line 32
    :cond_0
    return-void
.end method

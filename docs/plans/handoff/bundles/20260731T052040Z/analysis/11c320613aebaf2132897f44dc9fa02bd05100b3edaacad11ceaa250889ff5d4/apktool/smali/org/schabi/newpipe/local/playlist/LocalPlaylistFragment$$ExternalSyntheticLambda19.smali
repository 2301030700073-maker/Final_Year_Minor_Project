.class public final synthetic Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiFunction;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda19;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda19;->f$1:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda19;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    check-cast p2, Ljava/util/List;

    .line 4
    .line 5
    sget v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->$r8$clinit:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda19;->f$0:Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 13
    .line 14
    iget-object v2, v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lokhttp3/Dispatcher;

    .line 15
    .line 16
    iget-object v3, v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-virtual {v2, v3, v4}, Lokhttp3/Dispatcher;->getIsPlaylistThumbnailPermanent(J)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    new-instance v3, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/16 v4, 0x8

    .line 29
    .line 30
    iget-object v5, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda19;->f$1:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 31
    .line 32
    invoke-direct {v3, v5, p1, v4}, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    invoke-direct {v4, v3, v5}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    sget-object v3, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 42
    .line 43
    invoke-virtual {v4, v3}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lio/reactivex/rxjava3/core/Single;->blockingGet()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/util/List;

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    move v5, v4

    .line 55
    move v6, v5

    .line 56
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-ge v5, v7, :cond_3

    .line 61
    .line 62
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 67
    .line 68
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    check-cast v8, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    .line 73
    .line 74
    iget-wide v9, v7, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamId:J

    .line 75
    .line 76
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-static {p2, v9}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    invoke-virtual {v7}, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    invoke-virtual {v10}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    .line 89
    .line 90
    .line 91
    move-result-wide v10

    .line 92
    if-ltz v9, :cond_1

    .line 93
    .line 94
    if-eqz v8, :cond_1

    .line 95
    .line 96
    iget-boolean v9, p0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment$$ExternalSyntheticLambda19;->f$2:Z

    .line 97
    .line 98
    if-nez v9, :cond_0

    .line 99
    .line 100
    invoke-virtual {v8, v10, v11}, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;->isFinished(J)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-nez v8, :cond_0

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_0
    if-nez v2, :cond_2

    .line 108
    .line 109
    if-nez v6, :cond_2

    .line 110
    .line 111
    iget-object v8, v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistManager:Lokhttp3/Dispatcher;

    .line 112
    .line 113
    iget-object v9, v1, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->playlistId:Ljava/lang/Long;

    .line 114
    .line 115
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 116
    .line 117
    .line 118
    move-result-wide v9

    .line 119
    iget-object v8, v8, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v8, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;

    .line 122
    .line 123
    invoke-virtual {v8, v9, v10}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;->getPlaylist(J)Lio/reactivex/rxjava3/core/Flowable;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-virtual {v8}, Lio/reactivex/rxjava3/core/Flowable;->blockingFirst()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    check-cast v8, Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    check-cast v8, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    .line 138
    .line 139
    iget-wide v8, v8, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    .line 140
    .line 141
    iget-object v7, v7, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 142
    .line 143
    invoke-virtual {v7}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    .line 144
    .line 145
    .line 146
    move-result-wide v10

    .line 147
    cmp-long v7, v8, v10

    .line 148
    .line 149
    if-nez v7, :cond_2

    .line 150
    .line 151
    const/4 v6, 0x1

    .line 152
    goto :goto_2

    .line 153
    :cond_1
    :goto_1
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_3
    new-instance p0, Landroid/util/Pair;

    .line 160
    .line 161
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    return-object p0
.end method

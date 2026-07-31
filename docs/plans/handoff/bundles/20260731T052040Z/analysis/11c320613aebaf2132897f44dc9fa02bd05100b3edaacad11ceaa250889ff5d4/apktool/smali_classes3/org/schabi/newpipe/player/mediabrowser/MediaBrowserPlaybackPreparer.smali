.class public final Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$PlaybackPreparer;


# static fields
.field public static final Companion:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$Companion;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final clearMediaSessionError:Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;

.field public final context:Lorg/schabi/newpipe/player/PlayerService;

.field public final database:Lorg/schabi/newpipe/database/AppDatabase;

.field public disposable:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

.field public final onPrepare:Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;

.field public final setMediaSessionError:Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->Companion:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$Companion;

    .line 7
    .line 8
    const-class v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/PlayerService;Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->setMediaSessionError:Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->clearMediaSessionError:Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->onPrepare:Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-static {p1}, Lnet/newpipe/app/AppKt;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->database:Lorg/schabi/newpipe/database/AppDatabase;

    .line 17
    .line 18
    return-void
.end method

.method public static extractPlayQueueFromInfoItemMediaId(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lio/reactivex/rxjava3/internal/operators/single/SingleMap;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_6

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const v5, -0x352ab080    # -6989760.0f

    .line 34
    .line 35
    .line 36
    if-eq v4, v5, :cond_1

    .line 37
    .line 38
    const v5, 0x2c0b7d03

    .line 39
    .line 40
    .line 41
    if-eq v4, v5, :cond_0

    .line 42
    .line 43
    const v5, 0x700681d2

    .line 44
    .line 45
    .line 46
    if-ne v4, v5, :cond_5

    .line 47
    .line 48
    const-string v4, "playlist"

    .line 49
    .line 50
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_5

    .line 55
    .line 56
    sget-object p1, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->PLAYLIST:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string v4, "channel"

    .line 60
    .line 61
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_5

    .line 66
    .line 67
    sget-object p1, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->CHANNEL:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string v4, "stream"

    .line 71
    .line 72
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_5

    .line 77
    .line 78
    sget-object p1, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->STREAM:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 79
    .line 80
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    if-eq p1, v0, :cond_3

    .line 87
    .line 88
    if-ne p1, v1, :cond_2

    .line 89
    .line 90
    invoke-static {v2, p2, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    new-instance p1, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1;

    .line 95
    .line 96
    invoke-direct {p1, v2, v0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1;-><init>(II)V

    .line 97
    .line 98
    .line 99
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 100
    .line 101
    invoke-direct {p2, p0, p1, v3}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 102
    .line 103
    .line 104
    return-object p2

    .line 105
    :cond_2
    invoke-static {p0}, Lokio/Okio;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    throw p0

    .line 110
    :cond_3
    invoke-static {v2, p2, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->getPlaylistInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    sget-object p1, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;->INSTANCE$2:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

    .line 115
    .line 116
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 117
    .line 118
    invoke-direct {p2, p0, p1, v3}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 119
    .line 120
    .line 121
    return-object p2

    .line 122
    :cond_4
    invoke-static {v2, p2, v3}, Lorg/schabi/newpipe/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    sget-object p1, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;->INSTANCE$1:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

    .line 127
    .line 128
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 129
    .line 130
    invoke-direct {p2, p0, p1, v3}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 131
    .line 132
    .line 133
    return-object p2

    .line 134
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 135
    .line 136
    const-string p2, "Unexpected value: "

    .line 137
    .line 138
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p0

    .line 150
    :cond_6
    invoke-static {p0}, Lokio/Okio;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    throw p0
.end method


# virtual methods
.method public final extractPlayQueueFromPlaylistMediaId(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lio/reactivex/rxjava3/internal/operators/single/SingleMap;
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_6

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v3, -0x37b507ba

    .line 19
    .line 20
    .line 21
    const-string v4, "local"

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    if-eq v2, v3, :cond_2

    .line 25
    .line 26
    const v3, 0x1c56f

    .line 27
    .line 28
    .line 29
    if-eq v2, v3, :cond_0

    .line 30
    .line 31
    const p3, 0x625df6b

    .line 32
    .line 33
    .line 34
    if-ne v2, p3, :cond_5

    .line 35
    .line 36
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_5

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string p0, "url"

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_5

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-ne p0, v5, :cond_1

    .line 56
    .line 57
    if-eqz p3, :cond_1

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {p0, p3, v0}, Lorg/schabi/newpipe/util/ExtractorHelper;->getPlaylistInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    sget-object p1, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;->INSTANCE$3:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

    .line 74
    .line 75
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 76
    .line 77
    invoke-direct {p2, p0, p1, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 78
    .line 79
    .line 80
    return-object p2

    .line 81
    :cond_1
    invoke-static {p1}, Lokio/Okio;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    throw p0

    .line 86
    :cond_2
    const-string p3, "remote"

    .line 87
    .line 88
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-eqz p3, :cond_5

    .line 93
    .line 94
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    const/4 v2, 0x2

    .line 99
    if-ne p3, v2, :cond_4

    .line 100
    .line 101
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v6

    .line 111
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->database:Lorg/schabi/newpipe/database/AppDatabase;

    .line 126
    .line 127
    if-eqz p2, :cond_3

    .line 128
    .line 129
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/AppDatabase;->streamDAO()Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/AppDatabase;->playlistDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistDAO_Impl;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/AppDatabase;->playlistStreamDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    iget-object p2, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 140
    .line 141
    const-string p3, "playlist_stream_join"

    .line 142
    .line 143
    const-string v1, "stream_state"

    .line 144
    .line 145
    const-string v2, "streams"

    .line 146
    .line 147
    filled-new-array {v2, p3, v1}, [Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    new-instance v1, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;

    .line 152
    .line 153
    invoke-direct {v1, v6, v7, p0, v0}, Lorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl$$ExternalSyntheticLambda1;-><init>(JLorg/schabi/newpipe/database/playlist/dao/PlaylistStreamDAO_Impl;I)V

    .line 154
    .line 155
    .line 156
    invoke-static {p2, v5, p3, v1}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    sget-object p2, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 161
    .line 162
    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;

    .line 167
    .line 168
    invoke-direct {p2, p0, v5}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;-><init>(Lio/reactivex/rxjava3/core/Flowable;I)V

    .line 169
    .line 170
    .line 171
    new-instance p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1;

    .line 172
    .line 173
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1;-><init>(II)V

    .line 174
    .line 175
    .line 176
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 177
    .line 178
    invoke-direct {p1, p2, p0, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 179
    .line 180
    .line 181
    return-object p1

    .line 182
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/AppDatabase;->playlistRemoteDAO()Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/dao/PlaylistRemoteDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 190
    .line 191
    const-string p2, "remote_playlists"

    .line 192
    .line 193
    filled-new-array {p2}, [Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    new-instance p3, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 198
    .line 199
    const/16 v1, 0xb

    .line 200
    .line 201
    invoke-direct {p3, v6, v7, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(JI)V

    .line 202
    .line 203
    .line 204
    invoke-static {p0, v0, p2, p3}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    sget-object p2, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 209
    .line 210
    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;

    .line 215
    .line 216
    invoke-direct {p2, p0, v5}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;-><init>(Lio/reactivex/rxjava3/core/Flowable;I)V

    .line 217
    .line 218
    .line 219
    sget-object p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;->INSTANCE$4:Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserImpl$populateRemotePlaylist$1;

    .line 220
    .line 221
    new-instance p3, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 222
    .line 223
    invoke-direct {p3, p2, p0, v5}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 224
    .line 225
    .line 226
    new-instance p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1;

    .line 227
    .line 228
    invoke-direct {p0, p1, v2}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1;-><init>(II)V

    .line 229
    .line 230
    .line 231
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 232
    .line 233
    invoke-direct {p1, p3, p0, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 234
    .line 235
    .line 236
    return-object p1

    .line 237
    :cond_4
    invoke-static {p1}, Lokio/Okio;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    throw p0

    .line 242
    :cond_5
    invoke-static {p1}, Lokio/Okio;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    throw p0

    .line 247
    :cond_6
    invoke-static {p1}, Lokio/Okio;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    throw p0
.end method

.method public final getSupportedPrepareActions()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x400

    .line 2
    .line 3
    return-wide v0
.end method

.method public final onCommand(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final onPrepare(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->onPrepare:Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/PlayerService$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onPrepareFromMediaId(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget p3, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 5
    .line 6
    iget-object p3, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->disposable:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    invoke-static {p3}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_6

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v2, :cond_5

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v3
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const v4, -0x6f36471f

    .line 49
    .line 50
    .line 51
    const-string v5, "url"

    .line 52
    .line 53
    if-eq v3, v4, :cond_4

    .line 54
    .line 55
    const v4, 0x317b13

    .line 56
    .line 57
    .line 58
    if-eq v3, v4, :cond_2

    .line 59
    .line 60
    const p3, 0x373fe494

    .line 61
    .line 62
    .line 63
    if-ne v3, p3, :cond_5

    .line 64
    .line 65
    :try_start_1
    const-string p3, "history"

    .line 66
    .line 67
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-eqz p3, :cond_5

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    const/4 v2, 0x1

    .line 78
    if-ne p3, v2, :cond_1

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    check-cast p3, Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    iget-object p3, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->database:Lorg/schabi/newpipe/database/AppDatabase;

    .line 91
    .line 92
    invoke-virtual {p3}, Lorg/schabi/newpipe/database/AppDatabase;->streamHistoryDAO()Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    iget-object v0, p3, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 97
    .line 98
    const-string v5, "streams"

    .line 99
    .line 100
    const-string v6, "stream_history"

    .line 101
    .line 102
    filled-new-array {v5, v6}, [Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    new-instance v6, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 107
    .line 108
    const/16 v7, 0x1c

    .line 109
    .line 110
    invoke-direct {v6, p3, v7}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v1, v5, v6}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;

    .line 118
    .line 119
    invoke-direct {v0, p3, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;-><init>(Lio/reactivex/rxjava3/core/Flowable;I)V

    .line 120
    .line 121
    .line 122
    new-instance p3, Lorg/schabi/newpipe/streams/WebMReader$Info;

    .line 123
    .line 124
    invoke-direct {p3, v3, v4}, Lorg/schabi/newpipe/streams/WebMReader$Info;-><init>(J)V

    .line 125
    .line 126
    .line 127
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 128
    .line 129
    invoke-direct {v2, v0, p3, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    invoke-static {p1}, Lokio/Okio;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    throw p3

    .line 138
    :catch_0
    move-exception p3

    .line 139
    goto :goto_0

    .line 140
    :cond_2
    const-string v1, "item"

    .line 141
    .line 142
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_5

    .line 147
    .line 148
    invoke-virtual {p3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    if-eqz p3, :cond_3

    .line 153
    .line 154
    invoke-static {p1, v0, p3}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->extractPlayQueueFromInfoItemMediaId(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    goto :goto_1

    .line 159
    :cond_3
    invoke-static {p1}, Lokio/Okio;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    throw p3

    .line 164
    :cond_4
    const-string v1, "playlists"

    .line 165
    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_5

    .line 171
    .line 172
    invoke-virtual {p3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    invoke-virtual {p0, p1, v0, p3}, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->extractPlayQueueFromPlaylistMediaId(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    goto :goto_1

    .line 181
    :cond_5
    invoke-static {p1}, Lokio/Okio;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    throw p3

    .line 186
    :cond_6
    invoke-static {p1}, Lokio/Okio;->parseError(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 187
    .line 188
    .line 189
    move-result-object p3

    .line 190
    throw p3
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    :goto_0
    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$JustValue;

    .line 192
    .line 193
    invoke-direct {v0, p3}, Lio/reactivex/rxjava3/internal/functions/Functions$JustValue;-><init>(Ljava/lang/Exception;)V

    .line 194
    .line 195
    .line 196
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 197
    .line 198
    const/4 p3, 0x2

    .line 199
    invoke-direct {v2, v0, p3}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 200
    .line 201
    .line 202
    :goto_1
    sget-object p3, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 203
    .line 204
    invoke-virtual {v2, p3}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 205
    .line 206
    .line 207
    move-result-object p3

    .line 208
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    new-instance v1, Lkotlinx/serialization/json/internal/Composer;

    .line 213
    .line 214
    invoke-direct {v1, p0, p2}, Lkotlinx/serialization/json/internal/Composer;-><init>(Ljava/lang/Object;Z)V

    .line 215
    .line 216
    .line 217
    new-instance p2, Lorg/jsoup/parser/TokenData;

    .line 218
    .line 219
    const/16 v2, 0x14

    .line 220
    .line 221
    invoke-direct {p2, p1, p0, v2}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 222
    .line 223
    .line 224
    new-instance p1, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 225
    .line 226
    invoke-direct {p1, v1, p2}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 227
    .line 228
    .line 229
    :try_start_2
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 230
    .line 231
    invoke-direct {p2, p1, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p3, p2}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    .line 236
    .line 237
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->disposable:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 238
    .line 239
    return-void

    .line 240
    :catchall_0
    move-exception p0

    .line 241
    const-string p1, "subscribeActual failed"

    .line 242
    .line 243
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    throw p0

    .line 248
    :catch_1
    move-exception p0

    .line 249
    throw p0
.end method

.method public final onPrepareFromSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p1, 0x7f1300b9

    .line 5
    .line 6
    .line 7
    iget-object p2, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 8
    .line 9
    invoke-static {p2}, Lcoil3/decode/StaticImageDecoderKt;->getContextForLanguage(Landroid/content/Context;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x2

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->setMediaSessionError:Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onPrepareFromUri(Landroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p1, 0x7f1300b9

    .line 5
    .line 6
    .line 7
    iget-object p2, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 8
    .line 9
    invoke-static {p2}, Lcoil3/decode/StaticImageDecoderKt;->getContextForLanguage(Landroid/content/Context;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x2

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediabrowser/MediaBrowserPlaybackPreparer;->setMediaSessionError:Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.class public final synthetic Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

.field public final synthetic f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    .line 2
    .line 3
    sget v0, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->$r8$clinit:I

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    .line 6
    .line 7
    iget-object v1, v0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadingItems:Ljava/util/Set;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 10
    .line 11
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget-object v4, v0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 25
    .line 26
    invoke-virtual {v4, v3}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->get(I)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v5, 0x1

    .line 37
    if-eq v3, v1, :cond_0

    .line 38
    .line 39
    move v1, v5

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    :goto_0
    invoke-interface {v4, p0, v1}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;->shouldBeReplacedWith(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    iget-object p0, v0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playlist:Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;

    .line 49
    .line 50
    iget-object v1, v0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->removeMediaSourceHandler:Landroid/os/Handler;

    .line 51
    .line 52
    new-instance v3, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda2;

    .line 53
    .line 54
    invoke-direct {v3, v0, v5}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2, p1, v1, v3}, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->update(ILorg/schabi/newpipe/player/mediasource/ManagedMediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackListener:Lorg/schabi/newpipe/player/Player;

    .line 6
    .line 7
    iget-object v1, v0, Lorg/schabi/newpipe/player/Player;->videoResolver:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;

    .line 8
    .line 9
    iget-object v2, v0, Lorg/schabi/newpipe/player/Player;->audioResolver:Lorg/jsoup/nodes/Printer;

    .line 10
    .line 11
    iget-object v3, v0, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    .line 12
    .line 13
    sget-object v4, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    if-ne v3, v4, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/Printer;->resolve(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto/16 :goto_7

    .line 23
    .line 24
    :cond_0
    iget-boolean v0, v0, Lorg/schabi/newpipe/player/Player;->isAudioOnly:Z

    .line 25
    .line 26
    sget-object v3, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->VIDEO_WITH_AUDIO_OR_AUDIO_ONLY:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->streamSourceType:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 31
    .line 32
    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-ne v0, v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/Printer;->resolve(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto/16 :goto_7

    .line 47
    .line 48
    :cond_1
    iget-object v0, v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 49
    .line 50
    iget-object v2, v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->dataSource:Lorg/schabi/newpipe/player/helper/PlayerDataSource;

    .line 51
    .line 52
    invoke-static {v2, p1}, Lcom/android/tools/r8/RecordTag;->maybeBuildLiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    sget-object v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->LIVE_STREAM:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 59
    .line 60
    iput-object v0, v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->streamSourceType:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 61
    .line 62
    move-object v0, v4

    .line 63
    goto/16 :goto_7

    .line 64
    .line 65
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    sget-object v8, Lorg/schabi/newpipe/util/ListHelper;->VIDEO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    .line 79
    .line 80
    sget-object v8, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 81
    .line 82
    iget v9, v8, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 83
    .line 84
    new-instance v10, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda21;

    .line 85
    .line 86
    invoke-direct {v10, v7, v9}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda21;-><init>(II)V

    .line 87
    .line 88
    .line 89
    invoke-static {v6, v10}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoOnlyStreams()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    iget v8, v8, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 102
    .line 103
    new-instance v10, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda21;

    .line 104
    .line 105
    invoke-direct {v10, v9, v8}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda21;-><init>(II)V

    .line 106
    .line 107
    .line 108
    invoke-static {v7, v10}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-static {v0, v6, v7, v5}, Lorg/schabi/newpipe/util/ListHelper;->getSortedStreamVideosList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-static {v0, v7}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredAudioStreams(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-eqz v8, :cond_3

    .line 129
    .line 130
    const/4 v8, -0x1

    .line 131
    goto :goto_0

    .line 132
    :cond_3
    iget-object v8, v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->playbackQuality:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v9, v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->qualityResolver:Lorg/schabi/newpipe/player/Player$1;

    .line 135
    .line 136
    iget-object v9, v9, Lorg/schabi/newpipe/player/Player$1;->this$0:Lorg/schabi/newpipe/player/Player;

    .line 137
    .line 138
    if-nez v8, :cond_5

    .line 139
    .line 140
    invoke-virtual {v9}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    iget-object v9, v9, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 145
    .line 146
    if-eqz v8, :cond_4

    .line 147
    .line 148
    const v8, 0x7f1300e2

    .line 149
    .line 150
    .line 151
    const v10, 0x7f1300e4

    .line 152
    .line 153
    .line 154
    invoke-static {v9, v8, v10}, Lorg/schabi/newpipe/util/ListHelper;->computeDefaultResolution(Landroid/content/Context;II)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-static {v9, v8, v6}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    goto :goto_0

    .line 163
    :cond_4
    const v8, 0x7f1300de

    .line 164
    .line 165
    .line 166
    const v10, 0x7f1300e0

    .line 167
    .line 168
    .line 169
    invoke-static {v9, v8, v10}, Lorg/schabi/newpipe/util/ListHelper;->computeDefaultResolution(Landroid/content/Context;II)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    invoke-static {v9, v8, v6}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    goto :goto_0

    .line 178
    :cond_5
    invoke-virtual {v9}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    iget-object v9, v9, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 183
    .line 184
    if-eqz v10, :cond_6

    .line 185
    .line 186
    invoke-static {v9, v8, v6}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    goto :goto_0

    .line 191
    :cond_6
    invoke-static {v9, v8, v6}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    :goto_0
    iget-object v9, v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->audioTrack:Ljava/lang/String;

    .line 196
    .line 197
    invoke-static {v0, v7, v9}, Lorg/schabi/newpipe/util/ListHelper;->getAudioFormatIndex(Lorg/schabi/newpipe/player/PlayerService;Ljava/util/List;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    new-instance v10, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;

    .line 202
    .line 203
    invoke-direct {v10, v8, v6}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;-><init>(ILjava/util/ArrayList;)V

    .line 204
    .line 205
    .line 206
    new-instance v6, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    .line 207
    .line 208
    invoke-direct {v6, v9, v7}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;-><init>(ILjava/util/List;)V

    .line 209
    .line 210
    .line 211
    new-instance v7, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;

    .line 212
    .line 213
    const/4 v8, 0x0

    .line 214
    invoke-direct {v7, p1, v10, v6, v8}, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;)V

    .line 215
    .line 216
    .line 217
    invoke-static {v10}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    new-instance v10, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 222
    .line 223
    const/4 v11, 0x2

    .line 224
    invoke-direct {v10, v11}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v9, v10}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    invoke-virtual {v9, v8}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    check-cast v9, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 236
    .line 237
    invoke-static {v6}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    new-instance v10, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 242
    .line 243
    const/4 v11, 0x0

    .line 244
    invoke-direct {v10, v11}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v6, v10}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    invoke-virtual {v6, v8}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    check-cast v6, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 256
    .line 257
    const-string v10, "VideoPlaybackResolver"

    .line 258
    .line 259
    if-eqz v9, :cond_7

    .line 260
    .line 261
    :try_start_0
    invoke-static {p1, v9}, Lcom/android/tools/r8/RecordTag;->cacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/VideoStream;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v12

    .line 265
    invoke-static {v2, v9, p1, v12, v7}, Lcom/android/tools/r8/RecordTag;->buildMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;)Lcom/google/android/exoplayer2/source/BaseMediaSource;

    .line 266
    .line 267
    .line 268
    move-result-object v12

    .line 269
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .line 271
    .line 272
    goto :goto_1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    const-string v1, "Unable to create video source"

    .line 275
    .line 276
    invoke-static {v10, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_7
    :goto_1
    if-eqz v6, :cond_9

    .line 281
    .line 282
    if-eqz v9, :cond_8

    .line 283
    .line 284
    iget-boolean v9, v9, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    .line 285
    .line 286
    if-nez v9, :cond_8

    .line 287
    .line 288
    iget-object v9, v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->audioTrack:Ljava/lang/String;

    .line 289
    .line 290
    if-eqz v9, :cond_9

    .line 291
    .line 292
    :cond_8
    :try_start_1
    invoke-static {p1, v6}, Lcom/android/tools/r8/RecordTag;->cacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-static {v2, v6, p1, v3, v7}, Lcom/android/tools/r8/RecordTag;->buildMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;)Lcom/google/android/exoplayer2/source/BaseMediaSource;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    sget-object v3, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->VIDEO_WITH_SEPARATED_AUDIO:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 304
    .line 305
    iput-object v3, v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->streamSourceType:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;
    :try_end_1
    .catch Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    .line 307
    goto :goto_2

    .line 308
    :catch_1
    move-exception v0

    .line 309
    const-string v1, "Unable to create audio source"

    .line 310
    .line 311
    invoke-static {v10, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_9
    iput-object v3, v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->streamSourceType:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 316
    .line 317
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_a

    .line 322
    .line 323
    :goto_3
    move-object v0, v8

    .line 324
    goto/16 :goto_7

    .line 325
    .line 326
    :cond_a
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubtitles()Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    if-eqz v1, :cond_e

    .line 331
    .line 332
    invoke-static {v1}, Lorg/schabi/newpipe/util/ListHelper;->getUrlAndNonTorrentStreams(Ljava/util/List;)Ljava/util/List;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    :cond_b
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    if-eqz v3, :cond_e

    .line 345
    .line 346
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    check-cast v3, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    .line 351
    .line 352
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    if-eqz v6, :cond_b

    .line 357
    .line 358
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->isAutoGenerated()Z

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    if-eqz v7, :cond_c

    .line 363
    .line 364
    const/16 v7, 0x400

    .line 365
    .line 366
    goto :goto_5

    .line 367
    :cond_c
    const/16 v7, 0x40

    .line 368
    .line 369
    :goto_5
    new-instance v8, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    .line 370
    .line 371
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v9

    .line 375
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    .line 380
    .line 381
    .line 382
    iget-object v6, v6, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    .line 383
    .line 384
    invoke-virtual {v8, v6}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getDisplayLanguageName()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    invoke-static {v7}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->isAutoGenerated()Z

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    if-eqz v3, :cond_d

    .line 405
    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    const-string v8, " ("

    .line 409
    .line 410
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    const v8, 0x7f130077

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v8

    .line 420
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v8, ")"

    .line 424
    .line 425
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    goto :goto_6

    .line 433
    :cond_d
    const-string v3, ""

    .line 434
    .line 435
    :goto_6
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    new-instance v6, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;

    .line 451
    .line 452
    iget-object v7, v2, Lorg/schabi/newpipe/player/helper/PlayerDataSource;->cacheDataSourceFactory:Lorg/schabi/newpipe/player/helper/CacheFactory;

    .line 453
    .line 454
    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 455
    .line 456
    .line 457
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    invoke-virtual {v6, v3, v7, v8}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;J)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    goto/16 :goto_4

    .line 470
    .line 471
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    if-ne v0, v5, :cond_f

    .line 476
    .line 477
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    .line 482
    .line 483
    goto :goto_7

    .line 484
    :cond_f
    new-instance v0, Lcom/google/android/exoplayer2/source/MergingMediaSource;

    .line 485
    .line 486
    new-array v1, v11, [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 487
    .line 488
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    check-cast v1, [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 493
    .line 494
    invoke-direct {v0, v5, v1}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>(Z[Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 495
    .line 496
    .line 497
    :goto_7
    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    new-instance v1, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;

    .line 502
    .line 503
    iget-object p0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda3;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 504
    .line 505
    invoke-direct {v1, p1, p0, v5}, Lorg/jsoup/select/StructuralEvaluator$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    new-instance v1, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda8;

    .line 513
    .line 514
    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object p0

    .line 521
    check-cast p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    .line 522
    .line 523
    return-object p0
.end method

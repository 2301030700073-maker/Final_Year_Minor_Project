.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    .line 7
    .line 8
    iget-object p0, p1, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 9
    .line 10
    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance p1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 15
    .line 16
    const/16 v0, 0x1a

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 27
    .line 28
    invoke-interface {p1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeExtras()Lj$/util/Optional;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 34
    .line 35
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    .line 36
    .line 37
    .line 38
    move-result-wide p0

    .line 39
    const-wide/16 v0, 0x3e8

    .line 40
    .line 41
    mul-long/2addr p0, v0

    .line 42
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :pswitch_2
    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat;

    .line 48
    .line 49
    iget-object p0, p1, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;

    .line 50
    .line 51
    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi22;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_3
    const-class p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_4
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 64
    .line 65
    iget-object p0, p1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    .line 66
    .line 67
    return-object p0

    .line 68
    :pswitch_5
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem;

    .line 69
    .line 70
    iget-object p0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 71
    .line 72
    return-object p0

    .line 73
    :pswitch_6
    const-class p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :pswitch_7
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 81
    .line 82
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :pswitch_8
    check-cast p1, Lorg/schabi/newpipe/player/Player;

    .line 92
    .line 93
    iget-object p0, p1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 94
    .line 95
    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_9
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 101
    .line 102
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :pswitch_a
    check-cast p1, Lorg/schabi/newpipe/player/Player;

    .line 112
    .line 113
    iget-object p0, p1, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    .line 114
    .line 115
    return-object p0

    .line 116
    :pswitch_b
    check-cast p1, Lorg/schabi/newpipe/player/Player;

    .line 117
    .line 118
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :pswitch_c
    check-cast p1, Lorg/schabi/newpipe/player/PlayerService;

    .line 128
    .line 129
    iget-object p0, p1, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 130
    .line 131
    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_d
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 137
    .line 138
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_e
    check-cast p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;

    .line 144
    .line 145
    iget-object p0, p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->sortedVideoStreams:Ljava/util/ArrayList;

    .line 146
    .line 147
    iget p1, p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;->selectedVideoStreamIndex:I

    .line 148
    .line 149
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    check-cast p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 154
    .line 155
    return-object p0

    .line 156
    :pswitch_f
    check-cast p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 157
    .line 158
    invoke-interface {p1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeQuality()Lj$/util/Optional;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    return-object p0

    .line 163
    :pswitch_10
    check-cast p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 164
    .line 165
    iget-object p0, p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 166
    .line 167
    return-object p0

    .line 168
    :pswitch_11
    check-cast p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 169
    .line 170
    invoke-interface {p1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeStreamInfo()Lj$/util/Optional;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    return-object p0

    .line 175
    :pswitch_12
    check-cast p1, Lorg/schabi/newpipe/player/Player;

    .line 176
    .line 177
    iget-object p0, p1, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 178
    .line 179
    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    new-instance p1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 184
    .line 185
    const/16 v0, 0x8

    .line 186
    .line 187
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, p1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    new-instance p1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 195
    .line 196
    const/4 v0, 0x0

    .line 197
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, p1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    return-object p0

    .line 205
    :pswitch_13
    check-cast p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    .line 206
    .line 207
    iget-object p0, p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->audioStreams:Ljava/util/List;

    .line 208
    .line 209
    return-object p0

    .line 210
    :pswitch_14
    check-cast p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 211
    .line 212
    invoke-interface {p1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeAudioTrack()Lj$/util/Optional;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    return-object p0

    .line 217
    :pswitch_15
    check-cast p1, Lorg/schabi/newpipe/player/Player;

    .line 218
    .line 219
    iget-object p0, p1, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 220
    .line 221
    return-object p0

    .line 222
    :pswitch_16
    check-cast p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;

    .line 223
    .line 224
    iget-wide p0, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamId:J

    .line 225
    .line 226
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    return-object p0

    .line 231
    :pswitch_17
    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 232
    .line 233
    iget-object p0, p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 234
    .line 235
    return-object p0

    .line 236
    :pswitch_18
    const-class p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 237
    .line 238
    check-cast p1, Lorg/schabi/newpipe/database/LocalItem;

    .line 239
    .line 240
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    check-cast p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 245
    .line 246
    return-object p0

    .line 247
    :pswitch_19
    check-cast p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    .line 248
    .line 249
    iget-object p0, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->latestAccessDate:Lj$/time/OffsetDateTime;

    .line 250
    .line 251
    return-object p0

    .line 252
    :pswitch_1a
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 253
    .line 254
    invoke-static {p1}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->$r8$lambda$Q6GGTTG0jN_vJR2X7AxUuUKfaU4(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Lj$/util/stream/Stream;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    return-object p0

    .line 259
    :pswitch_1b
    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;

    .line 260
    .line 261
    invoke-interface {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;->getOrderingName()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    return-object p0

    .line 266
    :pswitch_1c
    check-cast p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    .line 267
    .line 268
    iget-object p0, p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->audioStreams:Ljava/util/List;

    .line 269
    .line 270
    iget p1, p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->selectedAudioStreamIndex:I

    .line 271
    .line 272
    if-ltz p1, :cond_1

    .line 273
    .line 274
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-lt p1, v0, :cond_0

    .line 279
    .line 280
    goto :goto_0

    .line 281
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    check-cast p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 286
    .line 287
    goto :goto_1

    .line 288
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 289
    :goto_1
    return-object p0

    .line 290
    nop

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

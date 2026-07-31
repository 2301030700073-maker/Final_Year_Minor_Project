.class public final Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;


# instance fields
.field public activeQueueItemId:J

.field public final mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field public final player:Lorg/schabi/newpipe/player/Player;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat;Lorg/schabi/newpipe/player/Player;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    .line 7
    .line 8
    const-wide/16 p1, -0x1

    .line 9
    .line 10
    iput-wide p1, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->activeQueueItemId:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getActiveQueueItemId(Lcom/google/android/exoplayer2/Player;)J
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 4
    .line 5
    invoke-static {p0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance p1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 10
    .line 11
    const/16 v0, 0x15

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 p1, -0x1

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    int-to-long p0, p0

    .line 36
    return-wide p0
.end method

.method public final getSupportedQueueNavigatorActions(Lcom/google/android/exoplayer2/Player;)J
    .locals 0

    .line 1
    const-wide/16 p0, 0x1030

    .line 2
    .line 3
    return-wide p0
.end method

.method public final onCommand(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onCurrentMediaItemIndexChanged(Lcom/google/android/exoplayer2/Player;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->activeQueueItemId:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    if-le v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    int-to-long v0, p1

    .line 37
    iput-wide v0, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->activeQueueItemId:J

    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->publishFloatingQueueWindow()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onSkipToNext(Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->playNext()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSkipToPrevious(Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->playPrevious()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSkipToQueueItem(Lcom/google/android/exoplayer2/Player;J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    long-to-int p2, p2

    .line 8
    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem(I)Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/Player;->selectQueueItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onTimelineChanged(Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->publishFloatingQueueWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final publishFloatingQueueWindow()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->player:Lorg/schabi/newpipe/player/Player;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 6
    .line 7
    invoke-static {v2}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 12
    .line 13
    const/16 v4, 0x13

    .line 14
    .line 15
    invoke-direct {v3, v4}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v2, v4}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v4, v0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 42
    .line 43
    invoke-virtual {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v1, -0x1

    .line 47
    .line 48
    iput-wide v1, v0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->activeQueueItemId:J

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    iget-object v5, v1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 52
    .line 53
    invoke-virtual {v5}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const/16 v6, 0xa

    .line 58
    .line 59
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    add-int/lit8 v7, v6, -0x1

    .line 64
    .line 65
    div-int/lit8 v7, v7, 0x2

    .line 66
    .line 67
    sub-int v7, v5, v7

    .line 68
    .line 69
    sub-int/2addr v2, v6

    .line 70
    invoke-static {v7, v3, v2}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    move v7, v2

    .line 80
    :goto_0
    add-int v8, v2, v6

    .line 81
    .line 82
    if-ge v7, v8, :cond_3

    .line 83
    .line 84
    new-instance v8, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 85
    .line 86
    iget-object v9, v1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 87
    .line 88
    if-nez v9, :cond_1

    .line 89
    .line 90
    :goto_1
    const/4 v11, 0x0

    .line 91
    goto :goto_4

    .line 92
    :cond_1
    invoke-virtual {v9, v7}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem(I)Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    if-nez v9, :cond_2

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    invoke-virtual {v9}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v13

    .line 107
    invoke-virtual {v9}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploader()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v14

    .line 111
    new-instance v11, Landroid/os/Bundle;

    .line 112
    .line 113
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v15, "android.media.metadata.TITLE"

    .line 117
    .line 118
    invoke-virtual {v9}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    invoke-virtual {v11, v15, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v10, "android.media.metadata.ARTIST"

    .line 126
    .line 127
    invoke-virtual {v9}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploader()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v15

    .line 131
    invoke-virtual {v11, v10, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getDuration()J

    .line 135
    .line 136
    .line 137
    move-result-wide v15

    .line 138
    const-wide/16 v17, 0x3e8

    .line 139
    .line 140
    move-object/from16 v19, v9

    .line 141
    .line 142
    mul-long v9, v15, v17

    .line 143
    .line 144
    const-string v15, "android.media.metadata.DURATION"

    .line 145
    .line 146
    invoke-virtual {v11, v15, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 147
    .line 148
    .line 149
    int-to-long v9, v7

    .line 150
    const-wide/16 v15, 0x1

    .line 151
    .line 152
    add-long/2addr v9, v15

    .line 153
    const-string v15, "android.media.metadata.TRACK_NUMBER"

    .line 154
    .line 155
    invoke-virtual {v11, v15, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 156
    .line 157
    .line 158
    iget-object v9, v1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 159
    .line 160
    invoke-virtual {v9}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->size()I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    int-to-long v9, v9

    .line 165
    const-string v15, "android.media.metadata.NUM_TRACKS"

    .line 166
    .line 167
    invoke-virtual {v11, v15, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 168
    .line 169
    .line 170
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getThumbnails()Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    invoke-static {v9}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 179
    .line 180
    .line 181
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    move-object/from16 v17, v9

    .line 183
    .line 184
    :goto_2
    move-object/from16 v18, v11

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :catchall_0
    const/16 v17, 0x0

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :goto_3
    new-instance v11, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 191
    .line 192
    const/4 v15, 0x0

    .line 193
    const/16 v16, 0x0

    .line 194
    .line 195
    const/16 v19, 0x0

    .line 196
    .line 197
    invoke-direct/range {v11 .. v19}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 198
    .line 199
    .line 200
    :goto_4
    int-to-long v9, v7

    .line 201
    const/4 v12, 0x0

    .line 202
    invoke-direct {v8, v12, v11, v9, v10}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/media/session/MediaSession$QueueItem;Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    add-int/lit8 v7, v7, 0x1

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_3
    invoke-virtual {v4, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    .line 213
    .line 214
    .line 215
    int-to-long v1, v5

    .line 216
    iput-wide v1, v0, Lorg/schabi/newpipe/player/mediasession/PlayQueueNavigator;->activeQueueItemId:J

    .line 217
    .line 218
    return-void
.end method

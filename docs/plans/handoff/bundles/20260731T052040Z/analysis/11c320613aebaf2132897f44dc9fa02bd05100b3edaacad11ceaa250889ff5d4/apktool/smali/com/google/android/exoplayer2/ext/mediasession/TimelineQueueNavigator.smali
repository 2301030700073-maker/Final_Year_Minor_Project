.class public abstract Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$QueueNavigator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_MAX_QUEUE_SIZE:I = 0xa


# instance fields
.field private activeQueueItemId:J

.field private final maxQueueSize:I

.field private final mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 1

    const/16 v0, 0xa

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;I)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-lez p2, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 13
    .line 14
    iput p2, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->maxQueueSize:I

    .line 15
    .line 16
    const-wide/16 p1, -0x1

    .line 17
    .line 18
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->activeQueueItemId:J

    .line 19
    .line 20
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Window;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 26
    .line 27
    return-void
.end method

.method private publishFloatingQueueWindow(Lcom/google/android/exoplayer2/Player;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 16
    .line 17
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v1, -0x1

    .line 23
    .line 24
    iput-wide v1, v0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->activeQueueItemId:J

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v3, Ljava/util/ArrayDeque;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 30
    .line 31
    .line 32
    iget v4, v0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->maxQueueSize:I

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    new-instance v6, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 47
    .line 48
    invoke-virtual {v0, v1, v5}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->getMediaDescription(Lcom/google/android/exoplayer2/Player;I)Landroid/support/v4/media/MediaDescriptionCompat;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    int-to-long v8, v5

    .line 53
    const/4 v10, 0x0

    .line 54
    invoke-direct {v6, v10, v7, v8, v9}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/media/session/MediaSession$QueueItem;Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    move v7, v5

    .line 65
    :cond_1
    :goto_0
    const/4 v11, -0x1

    .line 66
    if-ne v5, v11, :cond_2

    .line 67
    .line 68
    if-eq v7, v11, :cond_5

    .line 69
    .line 70
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    if-ge v12, v4, :cond_5

    .line 75
    .line 76
    const/4 v12, 0x0

    .line 77
    if-eq v7, v11, :cond_4

    .line 78
    .line 79
    invoke-virtual {v2, v7, v12, v6}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eq v7, v11, :cond_3

    .line 84
    .line 85
    new-instance v13, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 86
    .line 87
    invoke-virtual {v0, v1, v7}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->getMediaDescription(Lcom/google/android/exoplayer2/Player;I)Landroid/support/v4/media/MediaDescriptionCompat;

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    int-to-long v11, v7

    .line 92
    invoke-direct {v13, v10, v14, v11, v12}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/media/session/MediaSession$QueueItem;Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v13}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_3
    const/4 v15, -0x1

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    move v15, v11

    .line 101
    :goto_1
    if-eq v5, v15, :cond_1

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    if-ge v11, v4, :cond_1

    .line 108
    .line 109
    const/4 v11, 0x0

    .line 110
    invoke-virtual {v2, v5, v11, v6}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eq v5, v15, :cond_1

    .line 115
    .line 116
    new-instance v11, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 117
    .line 118
    invoke-virtual {v0, v1, v5}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->getMediaDescription(Lcom/google/android/exoplayer2/Player;I)Landroid/support/v4/media/MediaDescriptionCompat;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    int-to-long v13, v5

    .line 123
    invoke-direct {v11, v10, v12, v13, v14}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/media/session/MediaSession$QueueItem;Landroid/support/v4/media/MediaDescriptionCompat;J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v11}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 131
    .line 132
    new-instance v2, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    .line 138
    .line 139
    .line 140
    iput-wide v8, v0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->activeQueueItemId:J

    .line 141
    .line 142
    return-void
.end method


# virtual methods
.method public final getActiveQueueItemId(Lcom/google/android/exoplayer2/Player;)J
    .locals 0

    .line 1
    iget-wide p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->activeQueueItemId:J

    .line 2
    .line 3
    return-wide p0
.end method

.method public abstract getMediaDescription(Lcom/google/android/exoplayer2/Player;I)Landroid/support/v4/media/MediaDescriptionCompat;
.end method

.method public getSupportedQueueNavigatorActions(Lcom/google/android/exoplayer2/Player;)J
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_6

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_6

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x1

    .line 32
    if-le v0, v1, :cond_0

    .line 33
    .line 34
    move v0, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v0, v2

    .line 37
    :goto_0
    const/4 v3, 0x5

    .line 38
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    const/4 v3, 0x6

    .line 53
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v3, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    :goto_1
    move v3, v1

    .line 63
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 72
    .line 73
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    .line 74
    .line 75
    if-nez p0, :cond_4

    .line 76
    .line 77
    :cond_3
    const/16 p0, 0x8

    .line 78
    .line 79
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_5

    .line 84
    .line 85
    :cond_4
    move v2, v1

    .line 86
    :cond_5
    move p0, v2

    .line 87
    move v2, v0

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    move p0, v2

    .line 90
    move v3, p0

    .line 91
    :goto_3
    if-eqz v2, :cond_7

    .line 92
    .line 93
    const-wide/16 v0, 0x1000

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_7
    const-wide/16 v0, 0x0

    .line 97
    .line 98
    :goto_4
    if-eqz v3, :cond_8

    .line 99
    .line 100
    const-wide/16 v2, 0x10

    .line 101
    .line 102
    or-long/2addr v0, v2

    .line 103
    :cond_8
    if-eqz p0, :cond_9

    .line 104
    .line 105
    const-wide/16 p0, 0x20

    .line 106
    .line 107
    or-long/2addr p0, v0

    .line 108
    return-wide p0

    .line 109
    :cond_9
    return-wide v0
.end method

.method public onCommand(Lcom/google/android/exoplayer2/Player;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onCurrentMediaItemIndexChanged(Lcom/google/android/exoplayer2/Player;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->activeQueueItemId:J

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
    iget v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->maxQueueSize:I

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
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->activeQueueItemId:J

    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->publishFloatingQueueWindow(Lcom/google/android/exoplayer2/Player;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onSkipToNext(Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->seekToNext()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSkipToPrevious(Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->seekToPrevious()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSkipToQueueItem(Lcom/google/android/exoplayer2/Player;J)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    long-to-int p2, p2

    .line 19
    if-ltz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-ge p2, p0, :cond_1

    .line 26
    .line 27
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->seekToDefaultPosition(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final onTimelineChanged(Lcom/google/android/exoplayer2/Player;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/TimelineQueueNavigator;->publishFloatingQueueWindow(Lcom/google/android/exoplayer2/Player;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo$Factory;
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p3, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;->f$2:Z

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
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/schabi/newpipe/player/Player;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/schabi/newpipe/player/TimestampChangeData;

    .line 8
    .line 9
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 10
    .line 11
    iget-object v2, v0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 12
    .line 13
    iget v1, v1, Lorg/schabi/newpipe/player/TimestampChangeData;->seconds:I

    .line 14
    .line 15
    int-to-long v3, v1

    .line 16
    invoke-virtual {p1, v3, v4}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setStartPosition(J)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 20
    .line 21
    invoke-direct {v3, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 22
    .line 23
    .line 24
    iget-boolean p0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;->f$2:Z

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v3, v4}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->isSameItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    iget-object v3, v0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 40
    .line 41
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ne v3, p1, :cond_0

    .line 46
    .line 47
    iget-object p1, v0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p1, v0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 53
    .line 54
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    int-to-long v3, v1

    .line 59
    const-wide/16 v5, 0x3e8

    .line 60
    .line 61
    mul-long/2addr v3, v5

    .line 62
    invoke-interface {p1, v2, v3, v4}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    .line 63
    .line 64
    .line 65
    iget-object p1, v0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 66
    .line 67
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    if-nez v2, :cond_2

    .line 72
    .line 73
    new-instance v2, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    .line 74
    .line 75
    new-array v1, p1, [Ljava/lang/Object;

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    aput-object v3, v1, v4

    .line 79
    .line 80
    new-instance v3, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .line 84
    .line 85
    aget-object p1, v1, v4

    .line 86
    .line 87
    invoke-static {p1, v3, p1, v3}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {v2, v4, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;-><init>(ILjava/util/List;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v2, v3, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->enqueueNext(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->offsetIndex(I)V

    .line 99
    .line 100
    .line 101
    :goto_0
    invoke-virtual {v0, v2, p0}, Lorg/schabi/newpipe/player/Player;->initPlayback(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public create(ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v2, v0

    .line 9
    check-cast v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 10
    .line 11
    iget-boolean v3, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda5;->f$2:Z

    .line 12
    .line 13
    move v4, p1

    .line 14
    move-object v5, p2

    .line 15
    move-object v6, p3

    .line 16
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->$r8$lambda$sih5Pv2vBFLqgJovgGnPmMZfQd4(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ZILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

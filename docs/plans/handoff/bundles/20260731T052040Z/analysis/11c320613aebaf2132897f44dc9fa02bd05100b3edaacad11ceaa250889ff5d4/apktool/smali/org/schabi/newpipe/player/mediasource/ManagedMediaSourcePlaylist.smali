.class public final Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-array v3, v2, [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 13
    .line 14
    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;[Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final declared-synchronized append(Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public final get(I)Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_1

    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lt p1, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getMediaSource(I)Lcom/google/android/exoplayer2/source/MediaSource;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/android/tools/r8/RecordTag;->from(Lcom/google/android/exoplayer2/MediaItem;)Lj$/util/Optional;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance p1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 26
    .line 27
    const/16 v1, 0x1c

    .line 28
    .line 29
    invoke-direct {p1, v1}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final declared-synchronized move(II)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_3

    .line 3
    .line 4
    if-gez p2, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge p1, v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lt p2, v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->moveMediaSource(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p1

    .line 37
    :cond_3
    :goto_2
    monitor-exit p0

    .line 38
    return-void
.end method

.method public final declared-synchronized update(ILorg/schabi/newpipe/player/mediasource/ManagedMediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lt p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 14
    .line 15
    add-int/lit8 v1, p1, 0x1

    .line 16
    .line 17
    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lorg/schabi/newpipe/player/mediasource/ManagedMediaSourcePlaylist;->internalSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 21
    .line 22
    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removeMediaSource(ILandroid/os/Handler;Ljava/lang/Runnable;)Lcom/google/android/exoplayer2/source/MediaSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1

    .line 30
    :cond_1
    :goto_0
    monitor-exit p0

    .line 31
    return-void
.end method

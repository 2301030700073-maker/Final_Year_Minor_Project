.class public final Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;
.super Lcom/google/android/exoplayer2/source/WrappingMediaSource;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;


# instance fields
.field public final expireTimestamp:J

.field public final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field public final stream:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;->stream:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 5
    .line 6
    iput-wide p4, p0, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;->expireTimestamp:J

    .line 7
    .line 8
    invoke-interface {p2, p0}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->withExtras(Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;)Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->asMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isStreamEqual(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;->stream:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final shouldBeReplacedWith(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;->stream:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    iget-wide v0, p0, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;->expireTimestamp:J

    .line 12
    .line 13
    cmp-long p0, p1, v0

    .line 14
    .line 15
    if-ltz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

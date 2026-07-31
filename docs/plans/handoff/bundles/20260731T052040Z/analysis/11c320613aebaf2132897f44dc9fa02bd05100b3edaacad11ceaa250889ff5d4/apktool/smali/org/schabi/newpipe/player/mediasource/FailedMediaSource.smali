.class public final Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/player/mediasource/ManagedMediaSource;


# static fields
.field public static final SILENT_MEDIA:Lcom/google/android/exoplayer2/source/MediaPeriod;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final error:Ljava/lang/Exception;

.field public final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field public final playQueueItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

.field public final retryTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/32 v1, 0x1e8480

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;->setDurationUs(J)Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;->createMediaSource()Lcom/google/android/exoplayer2/source/SilenceMediaSource;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->SILENT_MEDIA:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/lang/Exception;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "FailedMediaSource@"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->playQueueItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 29
    .line 30
    iput-object p2, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->error:Ljava/lang/Exception;

    .line 31
    .line 32
    iput-wide p3, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->retryTimestamp:J

    .line 33
    .line 34
    const/4 p3, 0x1

    .line 35
    new-array p4, p3, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    aput-object p2, p4, v0

    .line 39
    .line 40
    new-instance p2, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .line 44
    .line 45
    aget-object p3, p4, v0

    .line 46
    .line 47
    invoke-static {p3, p2, p3, p2}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    new-instance p3, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;

    .line 52
    .line 53
    invoke-direct {p3, p1, p2, p0}, Lorg/schabi/newpipe/player/mediaitem/ExceptionTag;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/util/List;Lcom/google/android/exoplayer2/source/BaseMediaSource;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p3}, Lcom/android/tools/r8/RecordTag;->$default$asMediaItem(Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;)Lcom/google/android/exoplayer2/MediaItem;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->SILENT_MEDIA:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isStreamEqual(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->playQueueItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

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

.method public final maybeThrowSourceInfoRefreshError()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->error:Ljava/lang/Exception;

    .line 2
    .line 3
    instance-of v0, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$StreamInfoLoadException;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "Loading failed source: "

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->error:Ljava/lang/Exception;

    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    .line 9
    .line 10
    instance-of p1, v1, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource$StreamInfoLoadException;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const-wide/32 v1, 0x1e8480

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    iget-object v7, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 24
    .line 25
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final releaseSourceInternal()V
    .locals 0

    .line 1
    return-void
.end method

.method public final shouldBeReplacedWith(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Z)Z
    .locals 2

    .line 1
    iget-object p2, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->playQueueItem:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 2
    .line 3
    if-ne p1, p2, :cond_1

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    iget-wide v0, p0, Lorg/schabi/newpipe/player/mediasource/FailedMediaSource;->retryTimestamp:J

    .line 10
    .line 11
    cmp-long p0, p1, v0

    .line 12
    .line 13
    if-ltz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

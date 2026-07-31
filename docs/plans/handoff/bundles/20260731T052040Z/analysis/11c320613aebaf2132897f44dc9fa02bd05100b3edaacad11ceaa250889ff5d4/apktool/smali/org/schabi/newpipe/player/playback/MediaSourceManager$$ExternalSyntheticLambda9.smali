.class public final synthetic Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/source/MediaSource;

.field public final synthetic f$2:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lcom/google/android/exoplayer2/source/MediaSource;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda9;->f$1:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda9;->f$2:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v2, p1

    .line 2
    check-cast v2, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 3
    .line 4
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sget-object v3, Lorg/schabi/newpipe/util/ServiceHelper;->DEFAULT_FALLBACK_SERVICE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 15
    .line 16
    sget-object v3, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    .line 17
    .line 18
    iget v3, v3, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 19
    .line 20
    if-ne p1, v3, :cond_0

    .line 21
    .line 22
    const-wide/32 v3, 0x493e0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-wide/32 v3, 0x36ee80

    .line 27
    .line 28
    .line 29
    :goto_0
    add-long/2addr v3, v0

    .line 30
    new-instance v0, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;

    .line 31
    .line 32
    iget-object v1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda9;->f$1:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 33
    .line 34
    iget-object p0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda9;->f$2:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 35
    .line 36
    move-wide v4, v3

    .line 37
    move-object v3, p0

    .line 38
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;J)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

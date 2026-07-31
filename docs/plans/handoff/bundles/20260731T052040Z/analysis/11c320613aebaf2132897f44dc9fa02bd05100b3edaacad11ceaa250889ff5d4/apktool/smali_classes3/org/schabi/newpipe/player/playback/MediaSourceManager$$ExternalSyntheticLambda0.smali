.class public final synthetic Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->loadImmediate()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    .line 4
    .line 5
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackListener:Lorg/schabi/newpipe/player/Player;

    .line 6
    .line 7
    iget-wide v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->playbackNearEndGapMillis:J

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->isLive$1()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p1, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 29
    .line 30
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    iget-object p0, p1, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 35
    .line 36
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    .line 37
    .line 38
    .line 39
    move-result-wide p0

    .line 40
    sub-long/2addr p0, v2

    .line 41
    cmp-long p0, p0, v0

    .line 42
    .line 43
    if-gez p0, :cond_1

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 48
    return p0
.end method

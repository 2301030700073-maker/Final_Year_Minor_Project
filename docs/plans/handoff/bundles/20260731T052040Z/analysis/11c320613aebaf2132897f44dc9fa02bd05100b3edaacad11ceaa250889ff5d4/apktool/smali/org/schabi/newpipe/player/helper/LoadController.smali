.class public final Lorg/schabi/newpipe/player/helper/LoadController;
.super Lcom/google/android/exoplayer2/DefaultLoadControl;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public preloadingEnabled:Z


# virtual methods
.method public final onPrepared()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/helper/LoadController;->preloadingEnabled:Z

    .line 3
    .line 4
    invoke-super {p0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->onPrepared()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onReleased()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/helper/LoadController;->preloadingEnabled:Z

    .line 3
    .line 4
    invoke-super {p0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->onReleased()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onStopped()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/helper/LoadController;->preloadingEnabled:Z

    .line 3
    .line 4
    invoke-super {p0}, Lcom/google/android/exoplayer2/DefaultLoadControl;->onStopped()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final shouldContinueLoading(JJF)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/helper/LoadController;->preloadingEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    move-object v0, p0

    .line 8
    move-wide v1, p1

    .line 9
    move-wide v3, p3

    .line 10
    move v5, p5

    .line 11
    invoke-super/range {v0 .. v5}, Lcom/google/android/exoplayer2/DefaultLoadControl;->shouldContinueLoading(JJF)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

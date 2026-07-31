.class public abstract Lorg/schabi/newpipe/player/ui/PlayerUi;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final context:Lorg/schabi/newpipe/player/PlayerService;

.field public final player:Lorg/schabi/newpipe/player/Player;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/player/Player;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public destroyPlayer()V
    .locals 0

    .line 1
    return-void
.end method

.method public initPlayback()V
    .locals 0

    .line 1
    return-void
.end method

.method public initPlayer()V
    .locals 0

    .line 1
    return-void
.end method

.method public onBlocked()V
    .locals 0

    .line 1
    return-void
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onBuffering()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onFragmentListenerSet()V
    .locals 0

    .line 1
    return-void
.end method

.method public onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onMuteUnmuteChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPaused()V
    .locals 0

    .line 1
    return-void
.end method

.method public onPausedSeek()V
    .locals 0

    .line 1
    return-void
.end method

.method public onPlayQueueEdited()V
    .locals 0

    .line 1
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPlaying()V
    .locals 0

    .line 1
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .line 1
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    .line 1
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTextTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onThumbnailLoaded(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUpdateProgress(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setupAfterIntent()V
    .locals 0

    .line 1
    return-void
.end method

.method public smoothStopForImmediateReusing()V
    .locals 0

    .line 1
    return-void
.end method

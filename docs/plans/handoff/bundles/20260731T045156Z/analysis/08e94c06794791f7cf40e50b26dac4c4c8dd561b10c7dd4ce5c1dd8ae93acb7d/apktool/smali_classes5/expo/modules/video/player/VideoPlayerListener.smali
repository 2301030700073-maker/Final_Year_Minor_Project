.class public interface abstract Lexpo/modules/video/player/VideoPlayerListener;
.super Ljava/lang/Object;
.source "VideoPlayerListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\'\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0002\u0010\u000fJ\'\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0002\u0010\u0014J\'\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\r2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0002\u0010\u000fJ$\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016J\'\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00122\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0002\u0010\u0014J\u0018\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010 \u001a\u00020!H\u0016J\u0018\u0010\"\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010#\u001a\u00020$H\u0016J\u0018\u0010%\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\'H\u0016J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\"\u0010)\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010+H\u0016J$\u0010-\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0008\u00100\u001a\u0004\u0018\u00010/H\u0016JS\u00101\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u00102\u001a\u0004\u0018\u00010\u001a2\u0008\u00103\u001a\u0004\u0018\u0001042\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00020/062\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u000208062\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020:06H\u0016\u00a2\u0006\u0002\u0010;J\u0010\u0010<\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006="
    }
    d2 = {
        "Lexpo/modules/video/player/VideoPlayerListener;",
        "",
        "onStatusChanged",
        "",
        "player",
        "Lexpo/modules/video/player/VideoPlayer;",
        "status",
        "Lexpo/modules/video/enums/PlayerStatus;",
        "oldStatus",
        "error",
        "Lexpo/modules/video/records/PlaybackError;",
        "onIsPlayingChanged",
        "isPlaying",
        "",
        "oldIsPlaying",
        "(Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V",
        "onVolumeChanged",
        "volume",
        "",
        "oldVolume",
        "(Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V",
        "onMutedChanged",
        "muted",
        "oldMuted",
        "onSourceChanged",
        "source",
        "Lexpo/modules/video/records/VideoSource;",
        "oldSource",
        "onPlaybackRateChanged",
        "rate",
        "oldRate",
        "onTracksChanged",
        "tracks",
        "Landroidx/media3/common/Tracks;",
        "onTrackSelectionParametersChanged",
        "trackSelectionParameters",
        "Landroidx/media3/common/TrackSelectionParameters;",
        "onTimeUpdate",
        "timeUpdate",
        "Lexpo/modules/video/records/TimeUpdate;",
        "onPlayedToEnd",
        "onAudioMixingModeChanged",
        "audioMixingMode",
        "Lexpo/modules/video/enums/AudioMixingMode;",
        "oldAudioMixingMode",
        "onVideoTrackChanged",
        "videoTrack",
        "Lexpo/modules/video/records/VideoTrack;",
        "oldVideoTrack",
        "onVideoSourceLoaded",
        "videoSource",
        "duration",
        "",
        "availableVideoTracks",
        "",
        "availableSubtitleTracks",
        "Lexpo/modules/video/records/SubtitleTrack;",
        "availableAudioTracks",
        "Lexpo/modules/video/records/AudioTrack;",
        "(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "onRenderedFirstFrame",
        "expo-video_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onAudioMixingModeChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)V
.end method

.method public abstract onIsPlayingChanged(Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V
.end method

.method public abstract onMutedChanged(Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V
.end method

.method public abstract onPlaybackRateChanged(Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V
.end method

.method public abstract onPlayedToEnd(Lexpo/modules/video/player/VideoPlayer;)V
.end method

.method public abstract onRenderedFirstFrame(Lexpo/modules/video/player/VideoPlayer;)V
.end method

.method public abstract onSourceChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)V
.end method

.method public abstract onStatusChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)V
.end method

.method public abstract onTimeUpdate(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/TimeUpdate;)V
.end method

.method public abstract onTrackSelectionParametersChanged(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/TrackSelectionParameters;)V
.end method

.method public abstract onTracksChanged(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/Tracks;)V
.end method

.method public abstract onVideoSourceLoaded(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/video/player/VideoPlayer;",
            "Lexpo/modules/video/records/VideoSource;",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/VideoTrack;",
            ">;",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/SubtitleTrack;",
            ">;",
            "Ljava/util/List<",
            "Lexpo/modules/video/records/AudioTrack;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onVideoTrackChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoTrack;Lexpo/modules/video/records/VideoTrack;)V
.end method

.method public abstract onVolumeChanged(Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V
.end method

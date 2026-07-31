.class public final Lexpo/modules/video/player/VideoPlayer$playerListener$1;
.super Ljava/lang/Object;
.source "VideoPlayer.kt"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/video/player/VideoPlayer;-><init>(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Lexpo/modules/video/records/VideoSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000M\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u001a\u0010\u000c\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u00032\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "expo/modules/video/player/VideoPlayer$playerListener$1",
        "Landroidx/media3/common/Player$Listener;",
        "onIsPlayingChanged",
        "",
        "isPlaying",
        "",
        "onTracksChanged",
        "tracks",
        "Landroidx/media3/common/Tracks;",
        "onTrackSelectionParametersChanged",
        "parameters",
        "Landroidx/media3/common/TrackSelectionParameters;",
        "onMediaItemTransition",
        "mediaItem",
        "Landroidx/media3/common/MediaItem;",
        "reason",
        "",
        "onPlaybackStateChanged",
        "playbackState",
        "onVolumeChanged",
        "volume",
        "",
        "onPlaybackParametersChanged",
        "playbackParameters",
        "Landroidx/media3/common/PlaybackParameters;",
        "onPlayerErrorChanged",
        "error",
        "Landroidx/media3/common/PlaybackException;",
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


# instance fields
.field final synthetic this$0:Lexpo/modules/video/player/VideoPlayer;


# direct methods
.method constructor <init>(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsPlayingChanged(Z)V
    .locals 1

    .line 179
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v0, p1}, Lexpo/modules/video/player/VideoPlayer;->setPlaying(Z)V

    return-void
.end method

.method public onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 3

    .line 238
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lexpo/modules/video/player/VideoPlayer;->setDuration(F)V

    .line 239
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lexpo/modules/video/player/VideoPlayer;->setLive(Z)V

    if-nez p2, :cond_0

    .line 241
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    new-instance v2, Lexpo/modules/video/player/PlayerEvent$PlayedToEnd;

    invoke-direct {v2}, Lexpo/modules/video/player/PlayerEvent$PlayedToEnd;-><init>()V

    check-cast v2, Lexpo/modules/video/player/PlayerEvent;

    invoke-static {v0, v2}, Lexpo/modules/video/player/VideoPlayer;->access$sendEvent(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/player/PlayerEvent;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getSubtitles()Lexpo/modules/video/player/VideoPlayerSubtitles;

    move-result-object v0

    invoke-virtual {v0, v1}, Lexpo/modules/video/player/VideoPlayerSubtitles;->setSubtitlesEnabled(Z)V

    .line 244
    invoke-super {p0, p1, p2}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    const-string v0, "playbackParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v0, p1}, Lexpo/modules/video/player/VideoPlayer;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 267
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 248
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getPlayerError()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 252
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lexpo/modules/video/player/VideoPlayer;->setDuration(F)V

    .line 253
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->isCurrentMediaItemLive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lexpo/modules/video/player/VideoPlayer;->setLive(Z)V

    .line 255
    :cond_1
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-static {v0, p1}, Lexpo/modules/video/player/VideoPlayer;->access$playerStateToPlayerStatus(Lexpo/modules/video/player/VideoPlayer;I)Lexpo/modules/video/enums/PlayerStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lexpo/modules/video/player/VideoPlayer;->access$setStatus(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/PlayerStatus;Landroidx/media3/common/PlaybackException;)V

    .line 256
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method public onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    const/4 v1, 0x0

    .line 272
    invoke-virtual {v0, v1}, Lexpo/modules/video/player/VideoPlayer;->setDuration(F)V

    const/4 v1, 0x0

    .line 273
    invoke-virtual {v0, v1}, Lexpo/modules/video/player/VideoPlayer;->setLive(Z)V

    .line 274
    sget-object v1, Lexpo/modules/video/enums/PlayerStatus;->ERROR:Lexpo/modules/video/enums/PlayerStatus;

    invoke-static {v0, v1, p1}, Lexpo/modules/video/player/VideoPlayer;->access$setStatus(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/PlayerStatus;Landroidx/media3/common/PlaybackException;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    move-object v1, p0

    check-cast v1, Lexpo/modules/video/player/VideoPlayer$playerListener$1;

    .line 276
    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v1

    invoke-static {v0, v1}, Lexpo/modules/video/player/VideoPlayer;->access$playerStateToPlayerStatus(Lexpo/modules/video/player/VideoPlayer;I)Lexpo/modules/video/enums/PlayerStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lexpo/modules/video/player/VideoPlayer;->access$setStatus(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/PlayerStatus;Landroidx/media3/common/PlaybackException;)V

    .line 279
    :goto_0
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 6

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getSubtitles()Lexpo/modules/video/player/VideoPlayerSubtitles;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayerSubtitles;->getCurrentSubtitleTrack()Lexpo/modules/video/records/SubtitleTrack;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v1}, Lexpo/modules/video/player/VideoPlayer;->getAudioTracks()Lexpo/modules/video/player/VideoPlayerAudioTracks;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->getCurrentAudioTrack()Lexpo/modules/video/records/AudioTrack;

    move-result-object v1

    .line 228
    iget-object v2, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    new-instance v3, Lexpo/modules/video/player/PlayerEvent$TrackSelectionParametersChanged;

    invoke-direct {v3, p1}, Lexpo/modules/video/player/PlayerEvent$TrackSelectionParametersChanged;-><init>(Landroidx/media3/common/TrackSelectionParameters;)V

    check-cast v3, Lexpo/modules/video/player/PlayerEvent;

    invoke-static {v2, v3}, Lexpo/modules/video/player/VideoPlayer;->access$sendEvent(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/player/PlayerEvent;)V

    .line 230
    iget-object v2, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v2}, Lexpo/modules/video/player/VideoPlayer;->getSubtitles()Lexpo/modules/video/player/VideoPlayerSubtitles;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/video/player/VideoPlayerSubtitles;->getCurrentSubtitleTrack()Lexpo/modules/video/records/SubtitleTrack;

    move-result-object v2

    .line 231
    iget-object v3, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v3}, Lexpo/modules/video/player/VideoPlayer;->getAudioTracks()Lexpo/modules/video/player/VideoPlayerAudioTracks;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->getCurrentAudioTrack()Lexpo/modules/video/records/AudioTrack;

    move-result-object v3

    .line 232
    iget-object v4, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    new-instance v5, Lexpo/modules/video/player/PlayerEvent$SubtitleTrackChanged;

    invoke-direct {v5, v2, v0}, Lexpo/modules/video/player/PlayerEvent$SubtitleTrackChanged;-><init>(Lexpo/modules/video/records/SubtitleTrack;Lexpo/modules/video/records/SubtitleTrack;)V

    check-cast v5, Lexpo/modules/video/player/PlayerEvent;

    invoke-static {v4, v5}, Lexpo/modules/video/player/VideoPlayer;->access$sendEvent(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/player/PlayerEvent;)V

    .line 233
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    new-instance v2, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;

    invoke-direct {v2, v3, v1}, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;-><init>(Lexpo/modules/video/records/AudioTrack;Lexpo/modules/video/records/AudioTrack;)V

    check-cast v2, Lexpo/modules/video/player/PlayerEvent;

    invoke-static {v0, v2}, Lexpo/modules/video/player/VideoPlayer;->access$sendEvent(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/player/PlayerEvent;)V

    .line 234
    invoke-super {p0, p1}, Landroidx/media3/common/Player$Listener;->onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "tracks"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v3}, Lexpo/modules/video/player/VideoPlayer;->getSubtitles()Lexpo/modules/video/player/VideoPlayerSubtitles;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/video/player/VideoPlayerSubtitles;->getAvailableSubtitleTracks()Ljava/util/ArrayList;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v4}, Lexpo/modules/video/player/VideoPlayer;->getAudioTracks()Lexpo/modules/video/player/VideoPlayerAudioTracks;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->getAvailableAudioTracks()Ljava/util/ArrayList;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 185
    iget-object v4, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v4}, Lexpo/modules/video/player/VideoPlayer;->getSubtitles()Lexpo/modules/video/player/VideoPlayerSubtitles;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/video/player/VideoPlayerSubtitles;->getCurrentSubtitleTrack()Lexpo/modules/video/records/SubtitleTrack;

    move-result-object v4

    .line 186
    iget-object v5, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v5}, Lexpo/modules/video/player/VideoPlayer;->getAudioTracks()Lexpo/modules/video/player/VideoPlayerAudioTracks;

    move-result-object v5

    invoke-virtual {v5}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->getCurrentAudioTrack()Lexpo/modules/video/records/AudioTrack;

    move-result-object v5

    .line 189
    iget-object v6, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    new-instance v7, Lexpo/modules/video/player/PlayerEvent$TracksChanged;

    invoke-direct {v7, v1}, Lexpo/modules/video/player/PlayerEvent$TracksChanged;-><init>(Landroidx/media3/common/Tracks;)V

    check-cast v7, Lexpo/modules/video/player/PlayerEvent;

    invoke-static {v6, v7}, Lexpo/modules/video/player/VideoPlayer;->access$sendEvent(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/player/PlayerEvent;)V

    .line 191
    iget-object v6, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v6}, Lexpo/modules/video/player/VideoPlayer;->getSubtitles()Lexpo/modules/video/player/VideoPlayerSubtitles;

    move-result-object v6

    invoke-virtual {v6}, Lexpo/modules/video/player/VideoPlayerSubtitles;->getAvailableSubtitleTracks()Ljava/util/ArrayList;

    move-result-object v6

    .line 192
    iget-object v7, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v7}, Lexpo/modules/video/player/VideoPlayer;->getAudioTracks()Lexpo/modules/video/player/VideoPlayerAudioTracks;

    move-result-object v7

    invoke-virtual {v7}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->getAvailableAudioTracks()Ljava/util/ArrayList;

    move-result-object v7

    .line 193
    iget-object v8, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v8}, Lexpo/modules/video/player/VideoPlayer;->getSubtitles()Lexpo/modules/video/player/VideoPlayerSubtitles;

    move-result-object v8

    invoke-virtual {v8}, Lexpo/modules/video/player/VideoPlayerSubtitles;->getCurrentSubtitleTrack()Lexpo/modules/video/records/SubtitleTrack;

    move-result-object v8

    .line 194
    iget-object v9, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v9}, Lexpo/modules/video/player/VideoPlayer;->getAudioTracks()Lexpo/modules/video/player/VideoPlayerAudioTracks;

    move-result-object v9

    invoke-virtual {v9}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->getCurrentAudioTrack()Lexpo/modules/video/records/AudioTrack;

    move-result-object v9

    .line 195
    iget-object v10, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-static/range {p1 .. p1}, Lexpo/modules/video/player/VideoPlayerKt;->access$toVideoTracks(Landroidx/media3/common/Tracks;)Ljava/util/List;

    move-result-object v11

    invoke-static {v10, v11}, Lexpo/modules/video/player/VideoPlayer;->access$setAvailableVideoTracks$p(Lexpo/modules/video/player/VideoPlayer;Ljava/util/List;)V

    .line 197
    iget-object v10, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v10}, Lexpo/modules/video/player/VideoPlayer;->isLoadingNewSource()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 198
    iget-object v10, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    .line 199
    new-instance v18, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;

    .line 200
    iget-object v11, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-static {v11}, Lexpo/modules/video/player/VideoPlayer;->access$getCommitedSource(Lexpo/modules/video/player/VideoPlayer;)Lexpo/modules/video/records/VideoSource;

    move-result-object v12

    .line 201
    iget-object v11, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v11}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v11

    invoke-interface {v11}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v13

    long-to-double v13, v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v13, v15

    .line 202
    iget-object v11, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v11}, Lexpo/modules/video/player/VideoPlayer;->getAvailableVideoTracks()Ljava/util/List;

    move-result-object v15

    .line 203
    move-object/from16 v16, v6

    check-cast v16, Ljava/util/List;

    .line 204
    move-object/from16 v17, v7

    check-cast v17, Ljava/util/List;

    move-object/from16 v11, v18

    .line 199
    invoke-direct/range {v11 .. v17}, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;-><init>(Lexpo/modules/video/records/VideoSource;DLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v11, v18

    check-cast v11, Lexpo/modules/video/player/PlayerEvent;

    .line 198
    invoke-static {v10, v11}, Lexpo/modules/video/player/VideoPlayer;->access$sendEvent(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/player/PlayerEvent;)V

    .line 207
    iget-object v10, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lexpo/modules/video/player/VideoPlayer;->access$setLoadingNewSource$p(Lexpo/modules/video/player/VideoPlayer;Z)V

    .line 210
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 211
    iget-object v10, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    new-instance v11, Lexpo/modules/video/player/PlayerEvent$AvailableSubtitleTracksChanged;

    check-cast v6, Ljava/util/List;

    check-cast v2, Ljava/util/List;

    invoke-direct {v11, v6, v2}, Lexpo/modules/video/player/PlayerEvent$AvailableSubtitleTracksChanged;-><init>(Ljava/util/List;Ljava/util/List;)V

    check-cast v11, Lexpo/modules/video/player/PlayerEvent;

    invoke-static {v10, v11}, Lexpo/modules/video/player/VideoPlayer;->access$sendEvent(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/player/PlayerEvent;)V

    .line 213
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 214
    iget-object v2, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    new-instance v6, Lexpo/modules/video/player/PlayerEvent$AvailableAudioTracksChanged;

    check-cast v7, Ljava/util/List;

    check-cast v3, Ljava/util/List;

    invoke-direct {v6, v7, v3}, Lexpo/modules/video/player/PlayerEvent$AvailableAudioTracksChanged;-><init>(Ljava/util/List;Ljava/util/List;)V

    check-cast v6, Lexpo/modules/video/player/PlayerEvent;

    invoke-static {v2, v6}, Lexpo/modules/video/player/VideoPlayer;->access$sendEvent(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/player/PlayerEvent;)V

    .line 216
    :cond_2
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 217
    iget-object v2, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    new-instance v3, Lexpo/modules/video/player/PlayerEvent$SubtitleTrackChanged;

    invoke-direct {v3, v8, v4}, Lexpo/modules/video/player/PlayerEvent$SubtitleTrackChanged;-><init>(Lexpo/modules/video/records/SubtitleTrack;Lexpo/modules/video/records/SubtitleTrack;)V

    check-cast v3, Lexpo/modules/video/player/PlayerEvent;

    invoke-static {v2, v3}, Lexpo/modules/video/player/VideoPlayer;->access$sendEvent(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/player/PlayerEvent;)V

    .line 219
    :cond_3
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 220
    iget-object v2, v0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    new-instance v3, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;

    invoke-direct {v3, v9, v5}, Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;-><init>(Lexpo/modules/video/records/AudioTrack;Lexpo/modules/video/records/AudioTrack;)V

    check-cast v3, Lexpo/modules/video/player/PlayerEvent;

    invoke-static {v2, v3}, Lexpo/modules/video/player/VideoPlayer;->access$sendEvent(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/player/PlayerEvent;)V

    .line 222
    :cond_4
    invoke-super/range {p0 .. p1}, Landroidx/media3/common/Player$Listener;->onTracksChanged(Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 1

    .line 260
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getMuted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$playerListener$1;->this$0:Lexpo/modules/video/player/VideoPlayer;

    invoke-virtual {v0, p1}, Lexpo/modules/video/player/VideoPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

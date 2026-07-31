.class public abstract Lexpo/modules/video/player/PlayerEvent;
.super Ljava/lang/Object;
.source "PlayerEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;,
        Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;,
        Lexpo/modules/video/player/PlayerEvent$AvailableAudioTracksChanged;,
        Lexpo/modules/video/player/PlayerEvent$AvailableSubtitleTracksChanged;,
        Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;,
        Lexpo/modules/video/player/PlayerEvent$MutedChanged;,
        Lexpo/modules/video/player/PlayerEvent$PlaybackRateChanged;,
        Lexpo/modules/video/player/PlayerEvent$PlayedToEnd;,
        Lexpo/modules/video/player/PlayerEvent$RenderedFirstFrame;,
        Lexpo/modules/video/player/PlayerEvent$SourceChanged;,
        Lexpo/modules/video/player/PlayerEvent$StatusChanged;,
        Lexpo/modules/video/player/PlayerEvent$SubtitleTrackChanged;,
        Lexpo/modules/video/player/PlayerEvent$TimeUpdated;,
        Lexpo/modules/video/player/PlayerEvent$TrackSelectionParametersChanged;,
        Lexpo/modules/video/player/PlayerEvent$TracksChanged;,
        Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;,
        Lexpo/modules/video/player/PlayerEvent$VideoTrackChanged;,
        Lexpo/modules/video/player/PlayerEvent$VolumeChanged;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerEvent.kt\nexpo/modules/video/player/PlayerEvent\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1863#2,2:166\n1863#2,2:168\n1863#2,2:170\n1863#2,2:172\n1863#2,2:174\n1863#2,2:176\n1863#2,2:178\n1863#2,2:180\n1863#2,2:182\n1863#2,2:184\n1863#2,2:186\n1863#2,2:188\n1863#2,2:190\n1863#2,2:192\n*S KotlinDebug\n*F\n+ 1 PlayerEvent.kt\nexpo/modules/video/player/PlayerEvent\n*L\n146#1:166,2\n147#1:168,2\n148#1:170,2\n149#1:172,2\n150#1:174,2\n151#1:176,2\n152#1:178,2\n153#1:180,2\n154#1:182,2\n155#1:184,2\n156#1:186,2\n157#1:188,2\n158#1:190,2\n159#1:192,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0012\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'(B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\rX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u0082\u0001\u0012)*+,-./0123456789:\u00a8\u0006;"
    }
    d2 = {
        "Lexpo/modules/video/player/PlayerEvent;",
        "",
        "<init>",
        "()V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "jsEventPayload",
        "Lexpo/modules/video/records/VideoEventPayload;",
        "getJsEventPayload",
        "()Lexpo/modules/video/records/VideoEventPayload;",
        "emitToJS",
        "",
        "getEmitToJS",
        "()Z",
        "emit",
        "",
        "player",
        "Lexpo/modules/video/player/VideoPlayer;",
        "listeners",
        "",
        "Lexpo/modules/video/player/VideoPlayerListener;",
        "StatusChanged",
        "IsPlayingChanged",
        "VolumeChanged",
        "MutedChanged",
        "SourceChanged",
        "PlaybackRateChanged",
        "TracksChanged",
        "TrackSelectionParametersChanged",
        "SubtitleTrackChanged",
        "AudioTrackChanged",
        "VideoTrackChanged",
        "RenderedFirstFrame",
        "AvailableSubtitleTracksChanged",
        "AvailableAudioTracksChanged",
        "VideoSourceLoaded",
        "TimeUpdated",
        "AudioMixingModeChanged",
        "PlayedToEnd",
        "Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;",
        "Lexpo/modules/video/player/PlayerEvent$AudioTrackChanged;",
        "Lexpo/modules/video/player/PlayerEvent$AvailableAudioTracksChanged;",
        "Lexpo/modules/video/player/PlayerEvent$AvailableSubtitleTracksChanged;",
        "Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;",
        "Lexpo/modules/video/player/PlayerEvent$MutedChanged;",
        "Lexpo/modules/video/player/PlayerEvent$PlaybackRateChanged;",
        "Lexpo/modules/video/player/PlayerEvent$PlayedToEnd;",
        "Lexpo/modules/video/player/PlayerEvent$RenderedFirstFrame;",
        "Lexpo/modules/video/player/PlayerEvent$SourceChanged;",
        "Lexpo/modules/video/player/PlayerEvent$StatusChanged;",
        "Lexpo/modules/video/player/PlayerEvent$SubtitleTrackChanged;",
        "Lexpo/modules/video/player/PlayerEvent$TimeUpdated;",
        "Lexpo/modules/video/player/PlayerEvent$TrackSelectionParametersChanged;",
        "Lexpo/modules/video/player/PlayerEvent$TracksChanged;",
        "Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;",
        "Lexpo/modules/video/player/PlayerEvent$VideoTrackChanged;",
        "Lexpo/modules/video/player/PlayerEvent$VolumeChanged;",
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
.field private final emitToJS:Z

.field private final jsEventPayload:Lexpo/modules/video/records/VideoEventPayload;

.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lexpo/modules/video/player/PlayerEvent;->name:Ljava/lang/String;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lexpo/modules/video/player/PlayerEvent;->emitToJS:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/video/player/PlayerEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lexpo/modules/video/player/VideoPlayer;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/video/player/VideoPlayer;",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/video/player/VideoPlayerListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    instance-of v0, p0, Lexpo/modules/video/player/PlayerEvent$StatusChanged;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Iterable;

    .line 166
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    .line 146
    move-object v1, p0

    check-cast v1, Lexpo/modules/video/player/PlayerEvent$StatusChanged;

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->getStatus()Lexpo/modules/video/enums/PlayerStatus;

    move-result-object v2

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->getOldStatus()Lexpo/modules/video/enums/PlayerStatus;

    move-result-object v3

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$StatusChanged;->getError()Lexpo/modules/video/records/PlaybackError;

    move-result-object v1

    invoke-interface {v0, p1, v2, v3, v1}, Lexpo/modules/video/player/VideoPlayerListener;->onStatusChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)V

    goto :goto_0

    .line 147
    :cond_0
    instance-of v0, p0, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Iterable;

    .line 168
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    .line 147
    move-object v1, p0

    check-cast v1, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->isPlaying()Z

    move-result v2

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$IsPlayingChanged;->getOldIsPlaying()Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v2, v1}, Lexpo/modules/video/player/VideoPlayerListener;->onIsPlayingChanged(Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V

    goto :goto_1

    .line 148
    :cond_1
    instance-of v0, p0, Lexpo/modules/video/player/PlayerEvent$VolumeChanged;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Iterable;

    .line 170
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    .line 148
    move-object v1, p0

    check-cast v1, Lexpo/modules/video/player/PlayerEvent$VolumeChanged;

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$VolumeChanged;->getVolume()F

    move-result v2

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$VolumeChanged;->getOldVolume()Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v2, v1}, Lexpo/modules/video/player/VideoPlayerListener;->onVolumeChanged(Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V

    goto :goto_2

    .line 149
    :cond_2
    instance-of v0, p0, Lexpo/modules/video/player/PlayerEvent$SourceChanged;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Iterable;

    .line 172
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    .line 149
    move-object v1, p0

    check-cast v1, Lexpo/modules/video/player/PlayerEvent$SourceChanged;

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$SourceChanged;->getSource()Lexpo/modules/video/records/VideoSource;

    move-result-object v2

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$SourceChanged;->getOldSource()Lexpo/modules/video/records/VideoSource;

    move-result-object v1

    invoke-interface {v0, p1, v2, v1}, Lexpo/modules/video/player/VideoPlayerListener;->onSourceChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)V

    goto :goto_3

    .line 150
    :cond_3
    instance-of v0, p0, Lexpo/modules/video/player/PlayerEvent$PlaybackRateChanged;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Iterable;

    .line 174
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    .line 150
    move-object v1, p0

    check-cast v1, Lexpo/modules/video/player/PlayerEvent$PlaybackRateChanged;

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$PlaybackRateChanged;->getRate()F

    move-result v2

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$PlaybackRateChanged;->getOldRate()Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v2, v1}, Lexpo/modules/video/player/VideoPlayerListener;->onPlaybackRateChanged(Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V

    goto :goto_4

    .line 151
    :cond_4
    instance-of v0, p0, Lexpo/modules/video/player/PlayerEvent$TracksChanged;

    if-eqz v0, :cond_5

    check-cast p2, Ljava/lang/Iterable;

    .line 176
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    .line 151
    move-object v1, p0

    check-cast v1, Lexpo/modules/video/player/PlayerEvent$TracksChanged;

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$TracksChanged;->getTracks()Landroidx/media3/common/Tracks;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lexpo/modules/video/player/VideoPlayerListener;->onTracksChanged(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/Tracks;)V

    goto :goto_5

    .line 152
    :cond_5
    instance-of v0, p0, Lexpo/modules/video/player/PlayerEvent$TrackSelectionParametersChanged;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/Iterable;

    .line 178
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    .line 152
    move-object v1, p0

    check-cast v1, Lexpo/modules/video/player/PlayerEvent$TrackSelectionParametersChanged;

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$TrackSelectionParametersChanged;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lexpo/modules/video/player/VideoPlayerListener;->onTrackSelectionParametersChanged(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/TrackSelectionParameters;)V

    goto :goto_6

    .line 153
    :cond_6
    instance-of v0, p0, Lexpo/modules/video/player/PlayerEvent$TimeUpdated;

    if-eqz v0, :cond_7

    check-cast p2, Ljava/lang/Iterable;

    .line 180
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    .line 153
    move-object v1, p0

    check-cast v1, Lexpo/modules/video/player/PlayerEvent$TimeUpdated;

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$TimeUpdated;->getTimeUpdate()Lexpo/modules/video/records/TimeUpdate;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lexpo/modules/video/player/VideoPlayerListener;->onTimeUpdate(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/TimeUpdate;)V

    goto :goto_7

    .line 154
    :cond_7
    instance-of v0, p0, Lexpo/modules/video/player/PlayerEvent$PlayedToEnd;

    if-eqz v0, :cond_8

    check-cast p2, Ljava/lang/Iterable;

    .line 182
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    .line 154
    invoke-interface {v0, p1}, Lexpo/modules/video/player/VideoPlayerListener;->onPlayedToEnd(Lexpo/modules/video/player/VideoPlayer;)V

    goto :goto_8

    .line 155
    :cond_8
    instance-of v0, p0, Lexpo/modules/video/player/PlayerEvent$MutedChanged;

    if-eqz v0, :cond_9

    check-cast p2, Ljava/lang/Iterable;

    .line 184
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    .line 155
    move-object v1, p0

    check-cast v1, Lexpo/modules/video/player/PlayerEvent$MutedChanged;

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->getMuted()Z

    move-result v2

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$MutedChanged;->getOldMuted()Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v2, v1}, Lexpo/modules/video/player/VideoPlayerListener;->onMutedChanged(Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V

    goto :goto_9

    .line 156
    :cond_9
    instance-of v0, p0, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;

    if-eqz v0, :cond_a

    check-cast p2, Ljava/lang/Iterable;

    .line 186
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    .line 156
    move-object v1, p0

    check-cast v1, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->getAudioMixingMode()Lexpo/modules/video/enums/AudioMixingMode;

    move-result-object v2

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$AudioMixingModeChanged;->getOldAudioMixingMode()Lexpo/modules/video/enums/AudioMixingMode;

    move-result-object v1

    invoke-interface {v0, p1, v2, v1}, Lexpo/modules/video/player/VideoPlayerListener;->onAudioMixingModeChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)V

    goto :goto_a

    .line 157
    :cond_a
    instance-of v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoTrackChanged;

    if-eqz v0, :cond_b

    check-cast p2, Ljava/lang/Iterable;

    .line 188
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    .line 157
    move-object v1, p0

    check-cast v1, Lexpo/modules/video/player/PlayerEvent$VideoTrackChanged;

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$VideoTrackChanged;->getVideoTrack()Lexpo/modules/video/records/VideoTrack;

    move-result-object v2

    invoke-virtual {v1}, Lexpo/modules/video/player/PlayerEvent$VideoTrackChanged;->getOldVideoTrack()Lexpo/modules/video/records/VideoTrack;

    move-result-object v1

    invoke-interface {v0, p1, v2, v1}, Lexpo/modules/video/player/VideoPlayerListener;->onVideoTrackChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoTrack;Lexpo/modules/video/records/VideoTrack;)V

    goto :goto_b

    .line 158
    :cond_b
    instance-of v0, p0, Lexpo/modules/video/player/PlayerEvent$RenderedFirstFrame;

    if-eqz v0, :cond_c

    check-cast p2, Ljava/lang/Iterable;

    .line 190
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    .line 158
    invoke-interface {v0, p1}, Lexpo/modules/video/player/VideoPlayerListener;->onRenderedFirstFrame(Lexpo/modules/video/player/VideoPlayer;)V

    goto :goto_c

    .line 159
    :cond_c
    instance-of v0, p0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;

    if-eqz v0, :cond_d

    check-cast p2, Ljava/lang/Iterable;

    .line 192
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lexpo/modules/video/player/VideoPlayerListener;

    .line 159
    move-object v0, p0

    check-cast v0, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;

    invoke-virtual {v0}, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->getVideoSource()Lexpo/modules/video/records/VideoSource;

    move-result-object v3

    invoke-virtual {v0}, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->getDuration()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0}, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->getAvailableVideoTracks()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->getAvailableSubtitleTracks()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lexpo/modules/video/player/PlayerEvent$VideoSourceLoaded;->getAvailableAudioTracks()Ljava/util/List;

    move-result-object v7

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lexpo/modules/video/player/VideoPlayerListener;->onVideoSourceLoaded(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_d

    :cond_d
    return-void
.end method

.method public getEmitToJS()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lexpo/modules/video/player/PlayerEvent;->emitToJS:Z

    return v0
.end method

.method public getJsEventPayload()Lexpo/modules/video/records/VideoEventPayload;
    .locals 1

    .line 32
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent;->jsEventPayload:Lexpo/modules/video/records/VideoEventPayload;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lexpo/modules/video/player/PlayerEvent;->name:Ljava/lang/String;

    return-object v0
.end method

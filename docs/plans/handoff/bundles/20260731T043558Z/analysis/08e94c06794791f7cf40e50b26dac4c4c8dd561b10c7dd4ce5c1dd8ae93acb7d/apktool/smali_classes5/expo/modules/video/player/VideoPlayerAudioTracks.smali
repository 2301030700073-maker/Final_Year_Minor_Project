.class public final Lexpo/modules/video/player/VideoPlayerAudioTracks;
.super Ljava/lang/Object;
.source "VideoPlayerAudioTracks.kt"

# interfaces
.implements Lexpo/modules/video/player/VideoPlayerListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoPlayerAudioTracks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoPlayerAudioTracks.kt\nexpo/modules/video/player/VideoPlayerAudioTracks\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,126:1\n295#2,2:127\n295#2,2:129\n*S KotlinDebug\n*F\n+ 1 VideoPlayerAudioTracks.kt\nexpo/modules/video/player/VideoPlayerAudioTracks\n*L\n85#1:127,2\n116#1:129,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#J\u0018\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\'H\u0016J\u0018\u0010(\u001a\u00020!2\u0006\u0010%\u001a\u00020\u00032\u0006\u0010)\u001a\u00020*H\u0016J\u0012\u0010+\u001a\u00020!2\u0008\u0010,\u001a\u0004\u0018\u00010\u0015H\u0002J\n\u0010-\u001a\u0004\u0018\u00010\rH\u0002R\u001c\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00030\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR&\u0010\u000b\u001a\u001a\u0012\u0004\u0012\u00020\r\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00158F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR!\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u00150\u001cj\u0008\u0012\u0004\u0012\u00020\u0015`\u001d\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006."
    }
    d2 = {
        "Lexpo/modules/video/player/VideoPlayerAudioTracks;",
        "Lexpo/modules/video/player/VideoPlayerListener;",
        "owner",
        "Lexpo/modules/video/player/VideoPlayer;",
        "<init>",
        "(Lexpo/modules/video/player/VideoPlayer;)V",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "videoPlayer",
        "getVideoPlayer",
        "()Lexpo/modules/video/player/VideoPlayer;",
        "formatsToGroups",
        "",
        "Landroidx/media3/common/Format;",
        "Lkotlin/Pair;",
        "Landroidx/media3/common/TrackGroup;",
        "",
        "currentAudioTrackFormat",
        "currentOverride",
        "Landroidx/media3/common/TrackSelectionOverride;",
        "value",
        "Lexpo/modules/video/records/AudioTrack;",
        "currentAudioTrack",
        "getCurrentAudioTrack",
        "()Lexpo/modules/video/records/AudioTrack;",
        "setCurrentAudioTrack",
        "(Lexpo/modules/video/records/AudioTrack;)V",
        "availableAudioTracks",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getAvailableAudioTracks",
        "()Ljava/util/ArrayList;",
        "setAudioTracksEnabled",
        "",
        "enabled",
        "",
        "onTrackSelectionParametersChanged",
        "player",
        "trackSelectionParameters",
        "Landroidx/media3/common/TrackSelectionParameters;",
        "onTracksChanged",
        "tracks",
        "Landroidx/media3/common/Tracks;",
        "applyAudioTrack",
        "audioTrack",
        "findSelectedAudioFormat",
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
.field private final availableAudioTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lexpo/modules/video/records/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private currentAudioTrackFormat:Landroidx/media3/common/Format;

.field private currentOverride:Landroidx/media3/common/TrackSelectionOverride;

.field private final formatsToGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media3/common/Format;",
            "Lkotlin/Pair<",
            "Landroidx/media3/common/TrackGroup;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final owner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/video/player/VideoPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->owner:Ljava/lang/ref/WeakReference;

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->formatsToGroups:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->availableAudioTracks:Ljava/util/ArrayList;

    .line 36
    move-object v0, p0

    check-cast v0, Lexpo/modules/video/player/VideoPlayerListener;

    invoke-virtual {p1, v0}, Lexpo/modules/video/player/VideoPlayer;->addListener(Lexpo/modules/video/player/VideoPlayerListener;)V

    return-void
.end method

.method private final applyAudioTrack(Lexpo/modules/video/records/AudioTrack;)V
    .locals 8

    .line 74
    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->getVideoPlayer()Lexpo/modules/video/player/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 75
    :cond_0
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v1

    const-string v2, "getTrackSelectionParameters(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->currentOverride:Landroidx/media3/common/TrackSelectionOverride;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverridesOfType(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v1

    :cond_1
    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 80
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->setAudioTracksEnabled(Z)V

    .line 82
    iput-object v2, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->currentOverride:Landroidx/media3/common/TrackSelectionOverride;

    return-void

    .line 85
    :cond_2
    iget-object v4, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->formatsToGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 127
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/media3/common/Format;

    .line 86
    iget-object v6, v6, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lexpo/modules/video/records/AudioTrack;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v2, v5

    .line 85
    :cond_4
    check-cast v2, Landroidx/media3/common/Format;

    if-eqz v2, :cond_5

    .line 89
    iget-object p1, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->formatsToGroups:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    if-eqz p1, :cond_5

    .line 90
    new-instance v2, Landroidx/media3/common/TrackSelectionOverride;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/TrackGroup;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v2, v4, p1}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;I)V

    .line 91
    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p1

    .line 92
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 93
    invoke-virtual {p0, v3}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->setAudioTracksEnabled(Z)V

    .line 94
    iput-object v2, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->currentOverride:Landroidx/media3/common/TrackSelectionOverride;

    :cond_5
    :goto_0
    return-void
.end method

.method private final findSelectedAudioFormat()Landroidx/media3/common/Format;
    .locals 7

    .line 100
    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->getVideoPlayer()Lexpo/modules/video/player/VideoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 101
    iget-object v2, v0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 102
    iget-object v0, v0, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    if-eqz v0, :cond_3

    .line 103
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/TrackGroup;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/TrackSelectionOverride;

    .line 104
    iget v5, v4, Landroidx/media3/common/TrackGroup;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 106
    iget-object v0, v3, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    const-string v3, "trackIndices"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 107
    invoke-virtual {v4, v0}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_6

    .line 115
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    const-string v3, "iterator(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/common/collect/UnmodifiableIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    iget-object v3, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->formatsToGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 129
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/media3/common/Format;

    .line 117
    iget-object v5, v5, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v1, v4

    .line 130
    :cond_5
    check-cast v1, Landroidx/media3/common/Format;

    :cond_6
    if-nez v0, :cond_7

    move-object v0, v1

    :cond_7
    return-object v0
.end method

.method private final getVideoPlayer()Lexpo/modules/video/player/VideoPlayer;
    .locals 1

    .line 20
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/video/player/VideoPlayer;

    return-object v0
.end method


# virtual methods
.method public final getAvailableAudioTracks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lexpo/modules/video/records/AudioTrack;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->availableAudioTracks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getCurrentAudioTrack()Lexpo/modules/video/records/AudioTrack;
    .locals 2

    .line 28
    sget-object v0, Lexpo/modules/video/records/AudioTrack;->Companion:Lexpo/modules/video/records/AudioTrack$Companion;

    iget-object v1, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->currentAudioTrackFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0, v1}, Lexpo/modules/video/records/AudioTrack$Companion;->fromFormat(Landroidx/media3/common/Format;)Lexpo/modules/video/records/AudioTrack;

    move-result-object v0

    return-object v0
.end method

.method public onAudioMixingModeChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onAudioMixingModeChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/AudioMixingMode;Lexpo/modules/video/enums/AudioMixingMode;)V

    return-void
.end method

.method public onIsPlayingChanged(Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onIsPlayingChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V

    return-void
.end method

.method public onMutedChanged(Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onMutedChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;ZLjava/lang/Boolean;)V

    return-void
.end method

.method public onPlaybackRateChanged(Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onPlaybackRateChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V

    return-void
.end method

.method public onPlayedToEnd(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onPlayedToEnd(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;)V

    return-void
.end method

.method public onRenderedFirstFrame(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onRenderedFirstFrame(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;)V

    return-void
.end method

.method public onSourceChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onSourceChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Lexpo/modules/video/records/VideoSource;)V

    return-void
.end method

.method public onStatusChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2, p3, p4}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onStatusChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/enums/PlayerStatus;Lexpo/modules/video/records/PlaybackError;)V

    return-void
.end method

.method public onTimeUpdate(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/TimeUpdate;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onTimeUpdate(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/TimeUpdate;)V

    return-void
.end method

.method public onTrackSelectionParametersChanged(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 1

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackSelectionParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->findSelectedAudioFormat()Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->currentAudioTrackFormat:Landroidx/media3/common/Format;

    .line 51
    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onTrackSelectionParametersChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public onTracksChanged(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/Tracks;)V
    .locals 8

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->formatsToGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 56
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->availableAudioTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    invoke-virtual {p2}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Tracks$Group;

    .line 58
    iget v2, v1, Landroidx/media3/common/Tracks$Group;->length:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 59
    invoke-virtual {v1, v3}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v4

    const-string v5, "getTrackFormat(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v5, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 62
    iget-object v5, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->formatsToGroups:Ljava/util/Map;

    invoke-virtual {v1}, Landroidx/media3/common/Tracks$Group;->getMediaTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v5, Lexpo/modules/video/records/AudioTrack;->Companion:Lexpo/modules/video/records/AudioTrack$Companion;

    invoke-virtual {v5, v4}, Lexpo/modules/video/records/AudioTrack$Companion;->fromFormat(Landroidx/media3/common/Format;)Lexpo/modules/video/records/AudioTrack;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    iget-object v5, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->availableAudioTracks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_3
    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->findSelectedAudioFormat()Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/video/player/VideoPlayerAudioTracks;->currentAudioTrackFormat:Landroidx/media3/common/Format;

    .line 69
    invoke-static {p0, p1, p2}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onTracksChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method public onVideoSourceLoaded(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    .line 15
    invoke-static/range {p0 .. p6}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onVideoSourceLoaded(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoSource;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onVideoTrackChanged(Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoTrack;Lexpo/modules/video/records/VideoTrack;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onVideoTrackChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;Lexpo/modules/video/records/VideoTrack;Lexpo/modules/video/records/VideoTrack;)V

    return-void
.end method

.method public onVolumeChanged(Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2, p3}, Lexpo/modules/video/player/VideoPlayerListener$DefaultImpls;->onVolumeChanged(Lexpo/modules/video/player/VideoPlayerListener;Lexpo/modules/video/player/VideoPlayer;FLjava/lang/Float;)V

    return-void
.end method

.method public final setAudioTracksEnabled(Z)V
    .locals 3

    .line 40
    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->getVideoPlayer()Lexpo/modules/video/player/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 43
    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverridesOfType(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    .line 45
    :cond_1
    invoke-direct {p0}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->getVideoPlayer()Lexpo/modules/video/player/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lexpo/modules/video/player/VideoPlayer;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setCurrentAudioTrack(Lexpo/modules/video/records/AudioTrack;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lexpo/modules/video/player/VideoPlayerAudioTracks;->applyAudioTrack(Lexpo/modules/video/records/AudioTrack;)V

    return-void
.end method

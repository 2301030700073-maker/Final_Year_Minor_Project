.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/Player;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/Player;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda44;->f$0:Lorg/schabi/newpipe/player/Player;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda44;->f$1:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda44;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda44;->f$0:Lorg/schabi/newpipe/player/Player;

    .line 4
    .line 5
    iget-object v1, v0, Lorg/schabi/newpipe/player/Player;->videoResolver:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;

    .line 6
    .line 7
    iget-object v1, v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->streamSourceType:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 8
    .line 9
    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->VIDEO_WITH_AUDIO_OR_AUDIO_ONLY:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 20
    .line 21
    iget-boolean v3, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda44;->f$1:Z

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    iget-boolean p0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda44;->f$2:Z

    .line 26
    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p0, v0, Lorg/schabi/newpipe/player/Player;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, -0x1

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    move p0, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-static {v3, v5}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    new-instance v6, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda46;

    .line 53
    .line 54
    invoke-direct {v6, v0, p0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda46;-><init>(Lorg/schabi/newpipe/player/Player;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v5, v6}, Lj$/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Lj$/util/stream/IntStream;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-interface {p0}, Lj$/util/stream/IntStream;->findFirst()Lj$/util/OptionalInt;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, v4}, Lj$/util/OptionalInt;->orElse(I)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    :goto_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    sget-object v6, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 77
    .line 78
    const/4 v7, 0x1

    .line 79
    if-eq v5, v6, :cond_4

    .line 80
    .line 81
    sget-object v6, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 82
    .line 83
    if-eq v5, v6, :cond_4

    .line 84
    .line 85
    sget-object v6, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 86
    .line 87
    if-ne v5, v6, :cond_3

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    move v6, v3

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    :goto_1
    move v6, v7

    .line 93
    :goto_2
    if-ne p0, v4, :cond_6

    .line 94
    .line 95
    if-nez v6, :cond_6

    .line 96
    .line 97
    :cond_5
    move v3, v7

    .line 98
    goto :goto_3

    .line 99
    :cond_6
    if-nez v6, :cond_b

    .line 100
    .line 101
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 102
    .line 103
    if-ne v5, p0, :cond_7

    .line 104
    .line 105
    sget-object v4, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->LIVE_STREAM:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 106
    .line 107
    if-ne v1, v4, :cond_7

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_7
    sget-object v4, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;->VIDEO_WITH_SEPARATED_AUDIO:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$SourceType;

    .line 111
    .line 112
    if-eq v1, v4, :cond_8

    .line 113
    .line 114
    if-ne v1, v2, :cond_5

    .line 115
    .line 116
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    :cond_8
    sget-object p1, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 127
    .line 128
    if-eq v5, p1, :cond_9

    .line 129
    .line 130
    if-eq v5, p0, :cond_9

    .line 131
    .line 132
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 133
    .line 134
    if-ne v5, p0, :cond_a

    .line 135
    .line 136
    :cond_9
    move v3, v7

    .line 137
    :cond_a
    xor-int/2addr v3, v7

    .line 138
    :cond_b
    :goto_3
    if-eqz v3, :cond_c

    .line 139
    .line 140
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->reloadPlayQueueManager()V

    .line 141
    .line 142
    .line 143
    :cond_c
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

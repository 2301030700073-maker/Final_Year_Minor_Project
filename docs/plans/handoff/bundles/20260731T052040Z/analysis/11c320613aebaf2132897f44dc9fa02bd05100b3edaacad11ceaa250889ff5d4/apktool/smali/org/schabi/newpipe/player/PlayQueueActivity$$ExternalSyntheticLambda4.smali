.class public final synthetic Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;->f$1:I

    .line 8
    .line 9
    iput-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/PlayQueueActivity;I)V
    .locals 1

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iget p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;->f$1:I

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    check-cast p1, Ljava/util/Map$Entry;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ge v2, p0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    sub-int/2addr p1, p0

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Pair;->setFirst(Ljava/lang/Integer;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :pswitch_0
    check-cast v1, Lorg/schabi/newpipe/player/PlayQueueActivity;

    .line 56
    .line 57
    check-cast p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    .line 58
    .line 59
    sget v0, Lorg/schabi/newpipe/player/PlayQueueActivity;->$r8$clinit:I

    .line 60
    .line 61
    iget-object v0, p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->audioStreams:Ljava/util/List;

    .line 62
    .line 63
    iget p1, p1, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;->selectedAudioStreamIndex:I

    .line 64
    .line 65
    if-eq p1, p0, :cond_2

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-gt p1, p0, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 79
    .line 80
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    iget-object p1, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 85
    .line 86
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->saveStreamProgressState()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 90
    .line 91
    .line 92
    iget-object v0, p1, Lorg/schabi/newpipe/player/Player;->videoResolver:Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;

    .line 93
    .line 94
    iput-object p0, v0, Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;->audioTrack:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v0, p1, Lorg/schabi/newpipe/player/Player;->audioResolver:Lorg/jsoup/nodes/Printer;

    .line 97
    .line 98
    iput-object p0, v0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 99
    .line 100
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->reloadPlayQueueManager()V

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_1
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

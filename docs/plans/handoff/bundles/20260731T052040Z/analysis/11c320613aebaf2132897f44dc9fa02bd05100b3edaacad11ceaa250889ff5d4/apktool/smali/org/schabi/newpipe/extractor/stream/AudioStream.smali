.class public final Lorg/schabi/newpipe/extractor/stream/AudioStream;
.super Lorg/schabi/newpipe/extractor/stream/Stream;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private final audioLocale:Ljava/util/Locale;

.field private final audioTrackId:Ljava/lang/String;

.field private final audioTrackName:Ljava/lang/String;

.field private final audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

.field private final averageBitrate:I

.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field private itag:I

.field private itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

.field private quality:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;)V
    .locals 7

    .line 1
    iget-object v1, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->id:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->content:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v3, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->isUrl:Z

    .line 6
    .line 7
    iget-object v4, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 8
    .line 9
    iget-object v5, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 10
    .line 11
    iget-object v6, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->manifestUrl:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/stream/Stream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, -0x1

    .line 18
    iput p0, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itag:I

    .line 19
    .line 20
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 25
    .line 26
    iget v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 27
    .line 28
    iput v1, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itag:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getQuality()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->quality:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getBitrate()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    iput p0, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->bitrate:I

    .line 43
    .line 44
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitStart()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    iput p0, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->initStart:I

    .line 51
    .line 52
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitEnd()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    iput p0, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->initEnd:I

    .line 59
    .line 60
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 61
    .line 62
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexStart()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    iput p0, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->indexStart:I

    .line 67
    .line 68
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 69
    .line 70
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexEnd()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    iput p0, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->indexEnd:I

    .line 75
    .line 76
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 77
    .line 78
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getCodec()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->codec:Ljava/lang/String;

    .line 83
    .line 84
    :cond_0
    iget p0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->averageBitrate:I

    .line 85
    .line 86
    iput p0, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->averageBitrate:I

    .line 87
    .line 88
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->audioTrackId:Ljava/lang/String;

    .line 89
    .line 90
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    .line 91
    .line 92
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->audioTrackName:Ljava/lang/String;

    .line 93
    .line 94
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackName:Ljava/lang/String;

    .line 95
    .line 96
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->audioLocale:Ljava/util/Locale;

    .line 97
    .line 98
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    .line 99
    .line 100
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 101
    .line 102
    iput-object p0, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 103
    .line 104
    return-void
.end method


# virtual methods
.method public final equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->averageBitrate:I

    .line 12
    .line 13
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 14
    .line 15
    iget v1, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->averageBitrate:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 30
    .line 31
    iget-object v1, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 32
    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    .line 36
    .line 37
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    .line 38
    .line 39
    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public final getAudioLocale()Ljava/util/Locale;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAudioTrackId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAudioTrackName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAverageBitrate()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->averageBitrate:I

    .line 2
    .line 3
    return p0
.end method

.method public final getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 2
    .line 3
    return-object p0
.end method

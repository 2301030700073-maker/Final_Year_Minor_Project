.class public final Lorg/schabi/newpipe/extractor/stream/VideoStream;
.super Lorg/schabi/newpipe/extractor/stream/Stream;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private fps:I

.field private height:I

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field public final isVideoOnly:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private itag:I

.field private itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

.field private quality:Ljava/lang/String;

.field public final resolution:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move v3, p3

    .line 5
    move-object v4, p4

    .line 6
    move-object v5, p5

    .line 7
    move-object/from16 v6, p8

    .line 8
    .line 9
    move-object/from16 v7, p9

    .line 10
    .line 11
    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/stream/Stream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itag:I

    .line 16
    .line 17
    if-eqz v7, :cond_0

    .line 18
    .line 19
    iput-object v7, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 20
    .line 21
    iget p1, v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 22
    .line 23
    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itag:I

    .line 24
    .line 25
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getBitrate()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->bitrate:I

    .line 30
    .line 31
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitStart()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->initStart:I

    .line 36
    .line 37
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitEnd()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->initEnd:I

    .line 42
    .line 43
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexStart()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->indexStart:I

    .line 48
    .line 49
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexEnd()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->indexEnd:I

    .line 54
    .line 55
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getCodec()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->codec:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->height:I

    .line 66
    .line 67
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->width:I

    .line 72
    .line 73
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getQuality()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->quality:Ljava/lang/String;

    .line 78
    .line 79
    iget p1, v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 80
    .line 81
    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->fps:I

    .line 82
    .line 83
    :cond_0
    iput-object p6, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 84
    .line 85
    iput-boolean p7, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    .line 86
    .line 87
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
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 12
    .line 13
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 14
    .line 15
    iget-object v1, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    .line 24
    .line 25
    iget-boolean p1, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    .line 26
    .line 27
    if-ne p0, p1, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 2
    .line 3
    return-object p0
.end method

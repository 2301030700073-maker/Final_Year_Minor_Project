.class public final synthetic Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 7
    .line 8
    sget-object p0, Lorg/schabi/newpipe/util/ListHelper;->VIDEO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :pswitch_0
    check-cast p1, [B

    .line 20
    .line 21
    array-length p0, p1

    .line 22
    return p0

    .line 23
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Frameset;

    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameHeight()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameWidth()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    :goto_0
    mul-int/2addr p1, p0

    .line 34
    return p1

    .line 35
    :pswitch_2
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Frameset;

    .line 36
    .line 37
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameHeight()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameWidth()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    goto :goto_0

    .line 46
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :pswitch_4
    check-cast p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 54
    .line 55
    iget p0, p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->pos:I

    .line 56
    .line 57
    return p0

    .line 58
    :pswitch_5
    check-cast p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 59
    .line 60
    iget p0, p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->pos:I

    .line 61
    .line 62
    return p0

    .line 63
    :pswitch_6
    check-cast p1, Lorg/jsoup/select/Evaluator;

    .line 64
    .line 65
    invoke-virtual {p1}, Lorg/jsoup/select/Evaluator;->cost()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    return p0

    .line 70
    :pswitch_7
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 71
    .line 72
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    return p0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

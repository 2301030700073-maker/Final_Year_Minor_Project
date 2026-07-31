.class public final Lorg/schabi/newpipe/extractor/stream/Frameset;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final durationPerFrame:I

.field private final frameHeight:I

.field private final frameWidth:I

.field private final framesPerPageX:I

.field private final framesPerPageY:I

.field private final totalCount:I

.field private final urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->urls:Ljava/util/List;

    .line 5
    .line 6
    iput p4, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->totalCount:I

    .line 7
    .line 8
    iput p5, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->durationPerFrame:I

    .line 9
    .line 10
    iput p2, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    .line 11
    .line 12
    iput p3, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    .line 13
    .line 14
    iput p6, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageX:I

    .line 15
    .line 16
    iput p7, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageY:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getDurationPerFrame()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->durationPerFrame:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFrameBoundsAt(J)[I
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_5

    .line 6
    .line 7
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->totalCount:I

    .line 8
    .line 9
    add-int/lit8 v1, v0, 0x1

    .line 10
    .line 11
    int-to-long v1, v1

    .line 12
    iget v3, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->durationPerFrame:I

    .line 13
    .line 14
    int-to-long v4, v3

    .line 15
    mul-long/2addr v1, v4

    .line 16
    cmp-long v1, p1, v1

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    iget v1, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageX:I

    .line 22
    .line 23
    iget v2, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageY:I

    .line 24
    .line 25
    mul-int/2addr v1, v2

    .line 26
    int-to-long v2, v3

    .line 27
    div-long/2addr p1, v2

    .line 28
    long-to-int p1, p1

    .line 29
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    rem-int p2, p1, v1

    .line 34
    .line 35
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageX:I

    .line 36
    .line 37
    div-int v2, p2, v0

    .line 38
    .line 39
    mul-int v3, v0, v2

    .line 40
    .line 41
    sub-int v3, p2, v3

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    xor-int/2addr v0, p2

    .line 47
    shr-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    or-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    if-gez v0, :cond_2

    .line 52
    .line 53
    add-int/lit8 v2, v2, -0x1

    .line 54
    .line 55
    :cond_2
    :goto_0
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageY:I

    .line 56
    .line 57
    rem-int/2addr p2, v0

    .line 58
    div-int v0, p1, v1

    .line 59
    .line 60
    mul-int v3, v1, v0

    .line 61
    .line 62
    sub-int v3, p1, v3

    .line 63
    .line 64
    if-nez v3, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    xor-int/2addr p1, v1

    .line 68
    shr-int/lit8 p1, p1, 0x1f

    .line 69
    .line 70
    or-int/lit8 p1, p1, 0x1

    .line 71
    .line 72
    if-gez p1, :cond_4

    .line 73
    .line 74
    add-int/lit8 v0, v0, -0x1

    .line 75
    .line 76
    :cond_4
    :goto_1
    iget p1, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    .line 77
    .line 78
    mul-int v1, p2, p1

    .line 79
    .line 80
    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    .line 81
    .line 82
    mul-int v3, v2, p0

    .line 83
    .line 84
    mul-int/2addr p2, p1

    .line 85
    add-int/2addr p2, p1

    .line 86
    mul-int/2addr v2, p0

    .line 87
    add-int/2addr v2, p0

    .line 88
    filled-new-array {v0, v1, v3, p2, v2}, [I

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_5
    :goto_2
    iget p1, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    .line 94
    .line 95
    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    .line 96
    .line 97
    const/4 p2, 0x0

    .line 98
    filled-new-array {p2, p2, p2, p1, p0}, [I

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method

.method public final getFrameHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFrameWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFramesPerPageX()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageX:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFramesPerPageY()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageY:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTotalCount()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->totalCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final getUrls()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->urls:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.class public final Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/util/SliderStrategy;


# instance fields
.field public final centerProgress:I

.field public final leftGap:D

.field public final rightGap:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, -0x4013333334000000L    # -0.8999999985098839

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->leftGap:D

    .line 10
    .line 11
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 12
    .line 13
    iput-wide v0, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->rightGap:D

    .line 14
    .line 15
    const/16 v0, 0x1388

    .line 16
    .line 17
    iput v0, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->centerProgress:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final progressOf(D)I
    .locals 2

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    .line 3
    sub-double/2addr p1, v0

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmpl-double v0, p1, v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->rightGap:D

    .line 11
    .line 12
    div-double/2addr p1, v0

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-wide v0, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->leftGap:D

    .line 19
    .line 20
    div-double/2addr p1, v0

    .line 21
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    neg-double p1, p1

    .line 30
    :goto_0
    iget p0, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->centerProgress:I

    .line 31
    .line 32
    int-to-double v0, p0

    .line 33
    mul-double/2addr p1, v0

    .line 34
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 35
    .line 36
    .line 37
    move-result-wide p0

    .line 38
    long-to-double p0, p0

    .line 39
    add-double/2addr v0, p0

    .line 40
    double-to-int p0, v0

    .line 41
    return p0
.end method

.method public final valueOf(I)D
    .locals 5

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->centerProgress:I

    .line 2
    .line 3
    sub-int/2addr p1, v0

    .line 4
    int-to-double v1, p1

    .line 5
    int-to-double v3, v0

    .line 6
    div-double/2addr v1, v3

    .line 7
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 8
    .line 9
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    iget-wide p0, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->rightGap:D

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-wide p0, p0, Lorg/schabi/newpipe/util/SliderStrategy$Quadratic;->leftGap:D

    .line 19
    .line 20
    :goto_0
    mul-double/2addr v0, p0

    .line 21
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    .line 22
    .line 23
    add-double/2addr v0, p0

    .line 24
    return-wide v0
.end method

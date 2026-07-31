.class public final Lcom/caverock/androidsvg/SVG$Box;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public height:F

.field public minX:F

.field public minY:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->$r8$classId:I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->$r8$classId:I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 26
    iput p2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 27
    iput p3, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 28
    iput p4, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    return-void
.end method

.method public constructor <init>(Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 8
    .line 9
    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 10
    .line 11
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 12
    .line 13
    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 14
    .line 15
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 16
    .line 17
    iput v0, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 18
    .line 19
    iget p1, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 20
    .line 21
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public intersect(FFFF)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 8
    .line 9
    iget p1, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 10
    .line 11
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 16
    .line 17
    iget p1, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 18
    .line 19
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 24
    .line 25
    iget p1, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 26
    .line 27
    invoke-static {p4, p1}, Ljava/lang/Math;->min(FF)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 32
    .line 33
    return-void
.end method

.method public isEmpty()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 2
    .line 3
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    iget v3, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 15
    .line 16
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 17
    .line 18
    cmpl-float p0, v3, p0

    .line 19
    .line 20
    if-ltz p0, :cond_1

    .line 21
    .line 22
    move v1, v2

    .line 23
    :cond_1
    or-int p0, v0, v1

    .line 24
    .line 25
    return p0
.end method

.method public maxX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 2
    .line 3
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 4
    .line 5
    add-float/2addr v0, p0

    .line 6
    return v0
.end method

.method public maxY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 2
    .line 3
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 4
    .line 5
    add-float/2addr v0, p0

    .line 6
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/caverock/androidsvg/SVG$Box;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "MutableRect("

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 14
    .line 15
    invoke-static {v1}, Lkotlin/UnsignedKt;->toStringAsFixed(F)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 28
    .line 29
    invoke-static {v2}, Lkotlin/UnsignedKt;->toStringAsFixed(F)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 40
    .line 41
    invoke-static {v2}, Lkotlin/UnsignedKt;->toStringAsFixed(F)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 52
    .line 53
    invoke-static {p0}, Lkotlin/UnsignedKt;->toStringAsFixed(F)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const/16 p0, 0x29

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v1, "["

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget v1, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, " "

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v2, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p0, "]"

    .line 109
    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public translate-k-4lQ0M(J)V
    .locals 3

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-wide v1, 0xffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    and-long/2addr p1, v1

    .line 16
    long-to-int p1, p1

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget p2, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 22
    .line 23
    add-float/2addr p2, v0

    .line 24
    iput p2, p0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 25
    .line 26
    iget p2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 27
    .line 28
    add-float/2addr p2, p1

    .line 29
    iput p2, p0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 30
    .line 31
    iget p2, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 32
    .line 33
    add-float/2addr p2, v0

    .line 34
    iput p2, p0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 35
    .line 36
    iget p2, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 37
    .line 38
    add-float/2addr p2, p1

    .line 39
    iput p2, p0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 40
    .line 41
    return-void
.end method

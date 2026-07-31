.class public Lorg/schabi/newpipe/views/ExpandableSurfaceView;
.super Landroid/view/SurfaceView;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public baseHeight:I

.field public maxHeight:I

.field public resizeMode:I

.field public scaleX:F

.field public scaleY:F

.field public videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->resizeMode:I

    .line 6
    .line 7
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->baseHeight:I

    .line 8
    .line 9
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->maxHeight:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->videoAspectRatio:F

    .line 13
    .line 14
    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->scaleX:F

    .line 17
    .line 18
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->scaleY:F

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getResizeMode()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->resizeMode:I

    .line 2
    .line 3
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->scaleX:F

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->scaleY:F

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->videoAspectRatio:F

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    cmpl-float p2, p2, v0

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget p2, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->videoAspectRatio:F

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    cmpg-float v2, p2, v1

    .line 21
    .line 22
    if-gez v2, :cond_1

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v2, 0x0

    .line 27
    :goto_0
    iget v3, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->maxHeight:I

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    iget v4, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->resizeMode:I

    .line 32
    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget v3, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->baseHeight:I

    .line 39
    .line 40
    :goto_1
    if-eqz p1, :cond_8

    .line 41
    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    int-to-float v2, p1

    .line 46
    int-to-float v4, v3

    .line 47
    div-float v5, v2, v4

    .line 48
    .line 49
    div-float v6, p2, v5

    .line 50
    .line 51
    sub-float/2addr v6, v1

    .line 52
    iput v1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->scaleX:F

    .line 53
    .line 54
    iput v1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->scaleY:F

    .line 55
    .line 56
    iget v1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->resizeMode:I

    .line 57
    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    cmpl-float v0, v6, v0

    .line 61
    .line 62
    if-lez v0, :cond_4

    .line 63
    .line 64
    div-float/2addr v2, p2

    .line 65
    float-to-int v3, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    mul-float/2addr v4, p2

    .line 68
    float-to-int p1, v4

    .line 69
    goto :goto_2

    .line 70
    :cond_5
    const/4 v2, 0x4

    .line 71
    if-ne v1, v2, :cond_7

    .line 72
    .line 73
    cmpg-float v0, v6, v0

    .line 74
    .line 75
    if-gez v0, :cond_6

    .line 76
    .line 77
    div-float/2addr v5, p2

    .line 78
    iput v5, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->scaleY:F

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_6
    div-float/2addr p2, v5

    .line 82
    iput p2, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->scaleX:F

    .line 83
    .line 84
    :cond_7
    :goto_2
    const/high16 p2, 0x40000000    # 2.0f

    .line 85
    .line 86
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-static {v3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 95
    .line 96
    .line 97
    :cond_8
    :goto_3
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->videoAspectRatio:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    cmpl-float v0, p1, v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->videoAspectRatio:F

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final setHeights(II)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->baseHeight:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->maxHeight:I

    .line 6
    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->baseHeight:I

    .line 11
    .line 12
    iput p2, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->maxHeight:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->resizeMode:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->resizeMode:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

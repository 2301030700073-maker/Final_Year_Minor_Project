.class public final Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
.super Lcom/airbnb/lottie/value/Keyframe;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public path:Landroid/graphics/Path;

.field public final pointKeyFrame:Lcom/airbnb/lottie/value/Keyframe;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/value/Keyframe;)V
    .locals 10

    .line 1
    iget-object v0, p2, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v3, v0

    .line 4
    check-cast v3, Landroid/graphics/PointF;

    .line 5
    .line 6
    iget-object v0, p2, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v4, v0

    .line 9
    check-cast v4, Landroid/graphics/PointF;

    .line 10
    .line 11
    iget-object v5, p2, Lcom/airbnb/lottie/value/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    .line 12
    .line 13
    iget-object v6, p2, Lcom/airbnb/lottie/value/Keyframe;->xInterpolator:Landroid/view/animation/Interpolator;

    .line 14
    .line 15
    iget-object v7, p2, Lcom/airbnb/lottie/value/Keyframe;->yInterpolator:Landroid/view/animation/Interpolator;

    .line 16
    .line 17
    iget v8, p2, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    .line 18
    .line 19
    iget-object v9, p2, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    .line 20
    .line 21
    move-object v1, p0

    .line 22
    move-object v2, p1

    .line 23
    invoke-direct/range {v1 .. v9}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, v1, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->pointKeyFrame:Lcom/airbnb/lottie/value/Keyframe;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->createPath()V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final createPath()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Landroid/graphics/PointF;

    .line 11
    .line 12
    check-cast v0, Landroid/graphics/PointF;

    .line 13
    .line 14
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 15
    .line 16
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 17
    .line 18
    invoke-virtual {v2, v3, v0}, Landroid/graphics/PointF;->equals(FF)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-eqz v1, :cond_3

    .line 28
    .line 29
    iget-object v2, p0, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    check-cast v1, Landroid/graphics/PointF;

    .line 36
    .line 37
    check-cast v2, Landroid/graphics/PointF;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->pointKeyFrame:Lcom/airbnb/lottie/value/Keyframe;

    .line 40
    .line 41
    iget-object v3, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    .line 44
    .line 45
    sget-object v4, Lcom/airbnb/lottie/utils/Utils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 46
    .line 47
    new-instance v5, Landroid/graphics/Path;

    .line 48
    .line 49
    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 50
    .line 51
    .line 52
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 53
    .line 54
    iget v6, v1, Landroid/graphics/PointF;->y:F

    .line 55
    .line 56
    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 57
    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    const/4 v6, 0x0

    .line 68
    cmpl-float v4, v4, v6

    .line 69
    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    cmpl-float v4, v4, v6

    .line 77
    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    :cond_1
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 81
    .line 82
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 83
    .line 84
    add-float/2addr v6, v4

    .line 85
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 86
    .line 87
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 88
    .line 89
    add-float v7, v1, v3

    .line 90
    .line 91
    iget v10, v2, Landroid/graphics/PointF;->x:F

    .line 92
    .line 93
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 94
    .line 95
    add-float v8, v10, v1

    .line 96
    .line 97
    iget v11, v2, Landroid/graphics/PointF;->y:F

    .line 98
    .line 99
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 100
    .line 101
    add-float v9, v11, v0

    .line 102
    .line 103
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    iget v0, v2, Landroid/graphics/PointF;->x:F

    .line 108
    .line 109
    iget v1, v2, Landroid/graphics/PointF;->y:F

    .line 110
    .line 111
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 112
    .line 113
    .line 114
    :goto_1
    iput-object v5, p0, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->path:Landroid/graphics/Path;

    .line 115
    .line 116
    :cond_3
    return-void
.end method

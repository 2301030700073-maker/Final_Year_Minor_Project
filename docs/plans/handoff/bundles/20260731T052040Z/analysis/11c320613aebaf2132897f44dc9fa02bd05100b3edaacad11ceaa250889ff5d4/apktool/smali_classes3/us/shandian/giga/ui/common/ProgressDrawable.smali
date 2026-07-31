.class public final Lus/shandian/giga/ui/common/ProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public mBackgroundColor:I

.field public mForegroundColor:I

.field public mMarqueeHandler:Landroid/os/Handler;

.field public mMarqueeLine:Landroid/graphics/Path;

.field public mMarqueeNext:J

.field public mMarqueeProgress:F

.field public mMarqueeSize:I

.field public mProgress:F


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    new-instance v7, Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mBackgroundColor:I

    .line 23
    .line 24
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    int-to-float v5, v0

    .line 28
    int-to-float v6, v1

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    move-object v2, p1

    .line 32
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 33
    .line 34
    .line 35
    iget p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mForegroundColor:I

    .line 36
    .line 37
    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    iget p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    if-ge p1, v3, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0, v0, v1}, Lus/shandian/giga/ui/common/ProgressDrawable;->setupMarquee(II)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    .line 53
    .line 54
    new-instance v1, Landroid/graphics/Paint;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 57
    .line 58
    .line 59
    iget v4, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mForegroundColor:I

    .line 60
    .line 61
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    .line 63
    .line 64
    int-to-float v4, p1

    .line 65
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    .line 67
    .line 68
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 69
    .line 70
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    .line 72
    .line 73
    mul-int/lit8 v4, p1, 0x2

    .line 74
    .line 75
    iget v5, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeProgress:F

    .line 76
    .line 77
    int-to-float v6, v4

    .line 78
    cmpl-float v6, v5, v6

    .line 79
    .line 80
    const/high16 v7, 0x3f800000    # 1.0f

    .line 81
    .line 82
    if-ltz v6, :cond_1

    .line 83
    .line 84
    iput v7, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeProgress:F

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    add-float/2addr v5, v7

    .line 88
    iput v5, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeProgress:F

    .line 89
    .line 90
    :goto_0
    mul-int/lit8 p1, p1, 0x4

    .line 91
    .line 92
    add-int/2addr p1, v0

    .line 93
    new-instance v0, Landroid/graphics/Path;

    .line 94
    .line 95
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 96
    .line 97
    .line 98
    neg-int v5, v4

    .line 99
    :goto_1
    if-ge v5, p1, :cond_2

    .line 100
    .line 101
    iget-object v6, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    .line 102
    .line 103
    int-to-float v7, v5

    .line 104
    iget v8, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeProgress:F

    .line 105
    .line 106
    add-float/2addr v7, v8

    .line 107
    const/4 v8, 0x0

    .line 108
    invoke-virtual {v0, v6, v7, v8}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 109
    .line 110
    .line 111
    add-int/2addr v5, v4

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 117
    .line 118
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    iget-wide v4, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeNext:J

    .line 124
    .line 125
    cmp-long p1, v0, v4

    .line 126
    .line 127
    if-ltz p1, :cond_3

    .line 128
    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 130
    .line 131
    .line 132
    move-result-wide v0

    .line 133
    const-wide/16 v4, 0x96

    .line 134
    .line 135
    add-long/2addr v0, v4

    .line 136
    iput-wide v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeNext:J

    .line 137
    .line 138
    iget-object p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeHandler:Landroid/os/Handler;

    .line 139
    .line 140
    new-instance v0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    invoke-direct {v0, p0, v3}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    .line 147
    .line 148
    :cond_3
    return-void

    .line 149
    :cond_4
    iget p0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mProgress:F

    .line 150
    .line 151
    mul-float/2addr p0, v5

    .line 152
    float-to-int p0, p0

    .line 153
    int-to-float v5, p0

    .line 154
    const/4 v3, 0x0

    .line 155
    const/4 v4, 0x0

    .line 156
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, v0, p1}, Lus/shandian/giga/ui/common/ProgressDrawable;->setupMarquee(II)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setMarquee(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    new-instance v2, Landroid/graphics/Path;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    move-object v2, v0

    .line 22
    :goto_1
    iput-object v2, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    new-instance v0, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    .line 34
    .line 35
    :cond_3
    iput-object v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeHandler:Landroid/os/Handler;

    .line 36
    .line 37
    iput v1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    .line 38
    .line 39
    const-wide/16 v0, 0x0

    .line 40
    .line 41
    iput-wide v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeNext:J

    .line 42
    .line 43
    return-void
.end method

.method public final setupMarquee(II)V
    .locals 2

    .line 1
    int-to-float p1, p1

    .line 2
    const/high16 v0, 0x41200000    # 10.0f

    .line 3
    .line 4
    mul-float/2addr p1, v0

    .line 5
    const/high16 v0, 0x42c80000    # 100.0f

    .line 6
    .line 7
    div-float/2addr p1, v0

    .line 8
    float-to-int p1, p1

    .line 9
    iput p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    .line 10
    .line 11
    iget-object p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    .line 17
    .line 18
    iget v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    .line 19
    .line 20
    neg-int v1, v0

    .line 21
    int-to-float v1, v1

    .line 22
    neg-int v0, v0

    .line 23
    int-to-float v0, v0

    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    .line 28
    .line 29
    iget v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeSize:I

    .line 30
    .line 31
    neg-int v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x4

    .line 33
    .line 34
    int-to-float v1, v1

    .line 35
    add-int/2addr p2, v0

    .line 36
    int-to-float p2, p2

    .line 37
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mMarqueeLine:Landroid/graphics/Path;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.class public final Lorg/wikipedia/views/CircularProgressBar;
.super Landroid/view/View;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR$\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R$\u0010\u0016\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/wikipedia/views/CircularProgressBar;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "currentProgress",
        "",
        "setCurrentProgress",
        "(D)V",
        "",
        "color",
        "getProgressColor",
        "()I",
        "setProgressColor",
        "(I)V",
        "progressColor",
        "getProgressBackgroundColor",
        "setProgressBackgroundColor",
        "progressBackgroundColor",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final circleBounds:Landroid/graphics/RectF;

.field public maxProgressValue:D

.field public final progressBackgroundPaint:Landroid/graphics/Paint;

.field public final progressPaint:Landroid/graphics/Paint;

.field public sweepAngle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/wikipedia/views/CircularProgressBar;->progressPaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    new-instance v1, Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lorg/wikipedia/views/CircularProgressBar;->progressBackgroundPaint:Landroid/graphics/Paint;

    .line 20
    .line 21
    new-instance v2, Landroid/graphics/RectF;

    .line 22
    .line 23
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lorg/wikipedia/views/CircularProgressBar;->circleBounds:Landroid/graphics/RectF;

    .line 27
    .line 28
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 29
    .line 30
    iput-wide v2, p0, Lorg/wikipedia/views/CircularProgressBar;->maxProgressValue:D

    .line 31
    .line 32
    sget-object v2, Lorg/wikipedia/R$styleable;->CircularProgressBar:[I

    .line 33
    .line 34
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    const/16 v3, 0x64

    .line 43
    .line 44
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    int-to-double v2, v2

    .line 49
    iput-wide v2, p0, Lorg/wikipedia/views/CircularProgressBar;->maxProgressValue:D

    .line 50
    .line 51
    const p0, 0x7f040520

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p0}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const/4 v2, 0x2

    .line 59
    invoke-virtual {p2, v2, p0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const v2, 0x7f0404fb

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v2}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    const/4 v2, 0x1

    .line 75
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-static {v3}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    float-to-int v3, v3

    .line 89
    const/4 v4, 0x3

    .line 90
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    int-to-float p2, p2

    .line 114
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    .line 116
    .line 117
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 118
    .line 119
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    .line 139
    .line 140
    return-void
.end method


# virtual methods
.method public final getProgressBackgroundColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/CircularProgressBar;->progressBackgroundPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getProgressColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/CircularProgressBar;->progressPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v4, 0x0

    .line 5
    iget-object v5, p0, Lorg/wikipedia/views/CircularProgressBar;->progressBackgroundPaint:Landroid/graphics/Paint;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/views/CircularProgressBar;->circleBounds:Landroid/graphics/RectF;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/high16 v3, 0x43b40000    # 360.0f

    .line 11
    .line 12
    move-object v0, p1

    .line 13
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    iget p1, p0, Lorg/wikipedia/views/CircularProgressBar;->sweepAngle:I

    .line 17
    .line 18
    int-to-float v9, p1

    .line 19
    const/4 v10, 0x1

    .line 20
    iget-object v11, p0, Lorg/wikipedia/views/CircularProgressBar;->progressPaint:Landroid/graphics/Paint;

    .line 21
    .line 22
    const/high16 v8, 0x43870000    # 270.0f

    .line 23
    .line 24
    move-object v6, v0

    .line 25
    move-object v7, v1

    .line 26
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onMeasure(II)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    iget-object v6, p0, Lorg/wikipedia/views/CircularProgressBar;->progressPaint:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    float-to-int v6, v6

    .line 43
    add-int v7, v3, v2

    .line 44
    .line 45
    add-int v8, v0, v1

    .line 46
    .line 47
    if-ge v7, v8, :cond_0

    .line 48
    .line 49
    move v7, v8

    .line 50
    :cond_0
    add-int/2addr v6, v7

    .line 51
    const/high16 v7, 0x40000000    # 2.0f

    .line 52
    .line 53
    const/high16 v8, -0x80000000

    .line 54
    .line 55
    if-eq p1, v8, :cond_2

    .line 56
    .line 57
    if-eq p1, v7, :cond_3

    .line 58
    .line 59
    :cond_1
    move v4, v6

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    if-le v6, v4, :cond_1

    .line 62
    .line 63
    :cond_3
    :goto_0
    if-eq p2, v8, :cond_5

    .line 64
    .line 65
    if-eq p2, v7, :cond_6

    .line 66
    .line 67
    :cond_4
    move v5, v6

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    if-le v6, v5, :cond_4

    .line 70
    .line 71
    :cond_6
    :goto_1
    sub-int/2addr v4, v0

    .line 72
    sub-int/2addr v4, v1

    .line 73
    sub-int/2addr v5, v2

    .line 74
    sub-int/2addr v5, v3

    .line 75
    if-le v5, v4, :cond_7

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_7
    move v4, v5

    .line 79
    :goto_2
    invoke-virtual {p0, v4, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    iget-object p3, p0, Lorg/wikipedia/views/CircularProgressBar;->progressPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    const/high16 p4, 0x40000000    # 2.0f

    .line 8
    .line 9
    div-float/2addr p3, p4

    .line 10
    iget-object p0, p0, Lorg/wikipedia/views/CircularProgressBar;->circleBounds:Landroid/graphics/RectF;

    .line 11
    .line 12
    iput p3, p0, Landroid/graphics/RectF;->left:F

    .line 13
    .line 14
    iput p3, p0, Landroid/graphics/RectF;->top:F

    .line 15
    .line 16
    int-to-float p1, p1

    .line 17
    sub-float/2addr p1, p3

    .line 18
    iput p1, p0, Landroid/graphics/RectF;->right:F

    .line 19
    .line 20
    int-to-float p1, p2

    .line 21
    sub-float/2addr p1, p3

    .line 22
    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    .line 23
    .line 24
    return-void
.end method

.method public final setCurrentProgress(D)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/wikipedia/views/CircularProgressBar;->maxProgressValue:D

    .line 2
    .line 3
    cmpl-double v2, p1, v0

    .line 4
    .line 5
    if-lez v2, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lorg/wikipedia/views/CircularProgressBar;->maxProgressValue:D

    .line 8
    .line 9
    move-wide v0, p1

    .line 10
    :cond_0
    div-double/2addr p1, v0

    .line 11
    const-wide v0, 0x4076800000000000L    # 360.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    mul-double/2addr p1, v0

    .line 17
    double-to-int p1, p1

    .line 18
    iput p1, p0, Lorg/wikipedia/views/CircularProgressBar;->sweepAngle:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setProgressBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/CircularProgressBar;->progressBackgroundPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setProgressColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/CircularProgressBar;->progressPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

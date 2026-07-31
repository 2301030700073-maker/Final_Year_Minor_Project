.class public Lorg/maplibre/android/annotations/BubbleLayout;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final arrowDirection:Lorg/maplibre/android/annotations/ArrowDirection;

.field public final arrowHeight:F

.field public final arrowPosition:F

.field public final arrowWidth:F

.field public bubble:Lorg/maplibre/android/annotations/Bubble;

.field public final bubbleColor:I

.field public final cornersRadius:F

.field public final strokeColor:I

.field public final strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lorg/maplibre/android/R$styleable;->maplibre_BubbleLayout:[I

    .line 10
    .line 11
    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    new-instance v1, Lorg/maplibre/android/annotations/ArrowDirection;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lorg/maplibre/android/annotations/ArrowDirection;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowDirection:Lorg/maplibre/android/annotations/ArrowDirection;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 35
    .line 36
    div-int/lit16 v1, v1, 0xa0

    .line 37
    .line 38
    int-to-float v1, v1

    .line 39
    const/high16 v2, 0x41000000    # 8.0f

    .line 40
    .line 41
    mul-float/2addr v1, v2

    .line 42
    const/4 v3, 0x3

    .line 43
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iput v1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowWidth:F

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 58
    .line 59
    div-int/lit16 v4, v4, 0xa0

    .line 60
    .line 61
    int-to-float v4, v4

    .line 62
    mul-float/2addr v2, v4

    .line 63
    const/4 v4, 0x1

    .line 64
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iput v2, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowHeight:F

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 79
    .line 80
    div-int/lit16 p1, p1, 0xa0

    .line 81
    .line 82
    int-to-float p1, p1

    .line 83
    const/high16 v5, 0x41400000    # 12.0f

    .line 84
    .line 85
    mul-float/2addr v5, p1

    .line 86
    const/4 p1, 0x2

    .line 87
    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    iput v5, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowPosition:F

    .line 92
    .line 93
    const/4 v5, 0x5

    .line 94
    const/4 v6, 0x0

    .line 95
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    iput v5, p0, Lorg/maplibre/android/annotations/BubbleLayout;->cornersRadius:F

    .line 100
    .line 101
    const/4 v5, 0x4

    .line 102
    const/4 v7, -0x1

    .line 103
    invoke-virtual {p2, v5, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    iput v5, p0, Lorg/maplibre/android/annotations/BubbleLayout;->bubbleColor:I

    .line 108
    .line 109
    const/4 v5, 0x7

    .line 110
    const/high16 v7, -0x40800000    # -1.0f

    .line 111
    .line 112
    invoke-virtual {p2, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    iput v5, p0, Lorg/maplibre/android/annotations/BubbleLayout;->strokeWidth:F

    .line 117
    .line 118
    const/4 v7, 0x6

    .line 119
    const v8, -0x777778

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    iput v7, p0, Lorg/maplibre/android/annotations/BubbleLayout;->strokeColor:I

    .line 127
    .line 128
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    if-eq v0, v4, :cond_2

    .line 150
    .line 151
    if-eq v0, p1, :cond_1

    .line 152
    .line 153
    if-eq v0, v3, :cond_0

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_0
    int-to-float p1, v9

    .line 157
    add-float/2addr p1, v2

    .line 158
    float-to-int v9, p1

    .line 159
    goto :goto_0

    .line 160
    :cond_1
    int-to-float p1, v8

    .line 161
    add-float/2addr p1, v2

    .line 162
    float-to-int v8, p1

    .line 163
    goto :goto_0

    .line 164
    :cond_2
    int-to-float p1, v7

    .line 165
    add-float/2addr p1, v1

    .line 166
    float-to-int v7, p1

    .line 167
    goto :goto_0

    .line 168
    :cond_3
    int-to-float p1, p2

    .line 169
    add-float/2addr p1, v1

    .line 170
    float-to-int p2, p1

    .line 171
    :goto_0
    cmpl-float p1, v5, v6

    .line 172
    .line 173
    if-lez p1, :cond_4

    .line 174
    .line 175
    int-to-float p1, p2

    .line 176
    add-float/2addr p1, v5

    .line 177
    float-to-int p2, p1

    .line 178
    int-to-float p1, v7

    .line 179
    add-float/2addr p1, v5

    .line 180
    float-to-int v7, p1

    .line 181
    int-to-float p1, v8

    .line 182
    add-float/2addr p1, v5

    .line 183
    float-to-int v8, p1

    .line 184
    int-to-float p1, v9

    .line 185
    add-float/2addr p1, v5

    .line 186
    float-to-int v9, p1

    .line 187
    :cond_4
    invoke-virtual {p0, p2, v8, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 188
    .line 189
    .line 190
    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->bubble:Lorg/maplibre/android/annotations/Bubble;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/maplibre/android/annotations/Bubble;->draw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getArrowDirection()Lorg/maplibre/android/annotations/ArrowDirection;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowDirection:Lorg/maplibre/android/annotations/ArrowDirection;

    .line 2
    .line 3
    return-object p0
.end method

.method public getArrowHeight()F
    .locals 0

    .line 1
    iget p0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowHeight:F

    .line 2
    .line 3
    return p0
.end method

.method public getArrowPosition()F
    .locals 0

    .line 1
    iget p0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowPosition:F

    .line 2
    .line 3
    return p0
.end method

.method public getArrowWidth()F
    .locals 0

    .line 1
    iget p0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowWidth:F

    .line 2
    .line 3
    return p0
.end method

.method public getBubbleColor()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->bubbleColor:I

    .line 2
    .line 3
    return p0
.end method

.method public getCornersRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->cornersRadius:F

    .line 2
    .line 3
    return p0
.end method

.method public getStrokeColor()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->strokeColor:I

    .line 2
    .line 3
    return p0
.end method

.method public getStrokeWidth()F
    .locals 0

    .line 1
    iget p0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->strokeWidth:F

    .line 2
    .line 3
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-ltz p1, :cond_2

    .line 13
    .line 14
    if-gez p2, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    new-instance p3, Landroid/graphics/RectF;

    .line 18
    .line 19
    int-to-float p1, p1

    .line 20
    int-to-float p2, p2

    .line 21
    const/4 p4, 0x0

    .line 22
    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lorg/maplibre/android/annotations/Bubble;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance p2, Landroid/graphics/Paint;

    .line 31
    .line 32
    const/4 p5, 0x1

    .line 33
    invoke-direct {p2, p5}, Landroid/graphics/Paint;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p1, Lorg/maplibre/android/annotations/Bubble;->paint:Landroid/graphics/Paint;

    .line 37
    .line 38
    new-instance v0, Landroid/graphics/Path;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p1, Lorg/maplibre/android/annotations/Bubble;->path:Landroid/graphics/Path;

    .line 44
    .line 45
    iput-object p3, p1, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    .line 46
    .line 47
    iget p3, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowWidth:F

    .line 48
    .line 49
    iput p3, p1, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    .line 50
    .line 51
    iget p3, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowHeight:F

    .line 52
    .line 53
    iput p3, p1, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    .line 54
    .line 55
    iget p3, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowPosition:F

    .line 56
    .line 57
    iput p3, p1, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    .line 58
    .line 59
    iget p3, p0, Lorg/maplibre/android/annotations/BubbleLayout;->cornersRadius:F

    .line 60
    .line 61
    iput p3, p1, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    .line 62
    .line 63
    iget p3, p0, Lorg/maplibre/android/annotations/BubbleLayout;->bubbleColor:I

    .line 64
    .line 65
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    .line 67
    .line 68
    iget p2, p0, Lorg/maplibre/android/annotations/BubbleLayout;->strokeWidth:F

    .line 69
    .line 70
    iput p2, p1, Lorg/maplibre/android/annotations/Bubble;->strokeWidth:F

    .line 71
    .line 72
    cmpl-float p3, p2, p4

    .line 73
    .line 74
    iget-object v1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowDirection:Lorg/maplibre/android/annotations/ArrowDirection;

    .line 75
    .line 76
    if-lez p3, :cond_1

    .line 77
    .line 78
    new-instance p3, Landroid/graphics/Paint;

    .line 79
    .line 80
    invoke-direct {p3, p5}, Landroid/graphics/Paint;-><init>(I)V

    .line 81
    .line 82
    .line 83
    iput-object p3, p1, Lorg/maplibre/android/annotations/Bubble;->strokePaint:Landroid/graphics/Paint;

    .line 84
    .line 85
    iget p5, p0, Lorg/maplibre/android/annotations/BubbleLayout;->strokeColor:I

    .line 86
    .line 87
    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    .line 89
    .line 90
    new-instance p3, Landroid/graphics/Path;

    .line 91
    .line 92
    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object p3, p1, Lorg/maplibre/android/annotations/Bubble;->strokePath:Landroid/graphics/Path;

    .line 96
    .line 97
    invoke-virtual {p1, v1, v0, p2}, Lorg/maplibre/android/annotations/Bubble;->initPath(Lorg/maplibre/android/annotations/ArrowDirection;Landroid/graphics/Path;F)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1, p3, p4}, Lorg/maplibre/android/annotations/Bubble;->initPath(Lorg/maplibre/android/annotations/ArrowDirection;Landroid/graphics/Path;F)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p1, v1, v0, p4}, Lorg/maplibre/android/annotations/Bubble;->initPath(Lorg/maplibre/android/annotations/ArrowDirection;Landroid/graphics/Path;F)V

    .line 105
    .line 106
    .line 107
    :goto_0
    iput-object p1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->bubble:Lorg/maplibre/android/annotations/Bubble;

    .line 108
    .line 109
    :cond_2
    :goto_1
    return-void
.end method

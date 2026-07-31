.class public final Lio/getstream/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final imageMatrix:Landroid/graphics/Matrix;

.field public isZoomEnabled:Z

.field public mAllowParentInterceptOnEdge:Z

.field public final mBaseMatrix:Landroid/graphics/Matrix;

.field public mBlockParentIntercept:Z

.field public mCurrentFlingRunnable:Lio/getstream/photoview/PhotoViewAttacher$FlingRunnable;

.field public final mDisplayRect:Landroid/graphics/RectF;

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public mHorizontalScrollEdge:I

.field public final mImageView:Lio/getstream/photoview/PhotoView;

.field public final mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public mLongClickListener:Landroid/view/View$OnLongClickListener;

.field public mMatrixChangeListener:Lio/getstream/photoview/OnMatrixChangedListener;

.field public final mMatrixValues:[F

.field public mMaxScale:F

.field public mMidScale:F

.field public mMinScale:F

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public final mScaleDragDetector:Lio/getstream/photoview/CustomGestureDetector;

.field public mScaleType:Landroid/widget/ImageView$ScaleType;

.field public final mSuppMatrix:Landroid/graphics/Matrix;

.field public mVerticalScrollEdge:I

.field public mZoomDuration:I

.field public final onGestureListener:Lokhttp3/ConnectionPool;


# direct methods
.method public constructor <init>(Lio/getstream/photoview/PhotoView;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/getstream/photoview/PhotoViewAttacher;->mImageView:Lio/getstream/photoview/PhotoView;

    .line 5
    .line 6
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 12
    .line 13
    const/16 v0, 0xc8

    .line 14
    .line 15
    iput v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mZoomDuration:I

    .line 16
    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    .line 19
    iput v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mMinScale:F

    .line 20
    .line 21
    const/high16 v0, 0x3fe00000    # 1.75f

    .line 22
    .line 23
    iput v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mMidScale:F

    .line 24
    .line 25
    const/high16 v0, 0x40400000    # 3.0f

    .line 26
    .line 27
    iput v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 31
    .line 32
    new-instance v1, Landroid/view/GestureDetector;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;

    .line 39
    .line 40
    invoke-direct {v3, v0, p0}, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lio/getstream/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 47
    .line 48
    new-instance v2, Landroid/graphics/Matrix;

    .line 49
    .line 50
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lio/getstream/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 54
    .line 55
    new-instance v2, Landroid/graphics/Matrix;

    .line 56
    .line 57
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lio/getstream/photoview/PhotoViewAttacher;->imageMatrix:Landroid/graphics/Matrix;

    .line 61
    .line 62
    new-instance v2, Landroid/graphics/Matrix;

    .line 63
    .line 64
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Lio/getstream/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 68
    .line 69
    new-instance v2, Landroid/graphics/RectF;

    .line 70
    .line 71
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lio/getstream/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 75
    .line 76
    const/16 v2, 0x9

    .line 77
    .line 78
    new-array v2, v2, [F

    .line 79
    .line 80
    iput-object v2, p0, Lio/getstream/photoview/PhotoViewAttacher;->mMatrixValues:[F

    .line 81
    .line 82
    const/4 v2, 0x2

    .line 83
    iput v2, p0, Lio/getstream/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 84
    .line 85
    iput v2, p0, Lio/getstream/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 86
    .line 87
    iput-boolean v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->isZoomEnabled:Z

    .line 88
    .line 89
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 90
    .line 91
    iput-object v2, p0, Lio/getstream/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 92
    .line 93
    new-instance v2, Lokhttp3/ConnectionPool;

    .line 94
    .line 95
    invoke-direct {v2, v0, p0}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iput-object v2, p0, Lio/getstream/photoview/PhotoViewAttacher;->onGestureListener:Lokhttp3/ConnectionPool;

    .line 99
    .line 100
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_0

    .line 111
    .line 112
    new-instance v0, Lio/getstream/photoview/CustomGestureDetector;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-direct {v0, p1, v2}, Lio/getstream/photoview/CustomGestureDetector;-><init>(Landroid/content/Context;Lokhttp3/ConnectionPool;)V

    .line 122
    .line 123
    .line 124
    iput-object v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mScaleDragDetector:Lio/getstream/photoview/CustomGestureDetector;

    .line 125
    .line 126
    new-instance p1, Lio/getstream/photoview/PhotoViewAttacher$1;

    .line 127
    .line 128
    invoke-direct {p1, p0}, Lio/getstream/photoview/PhotoViewAttacher$1;-><init>(Lio/getstream/photoview/PhotoViewAttacher;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 132
    .line 133
    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public final checkAndDisplayMatrix()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lio/getstream/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final checkMatrixBounds()Z
    .locals 14

    .line 1
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lio/getstream/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-object v4, p0, Lio/getstream/photoview/PhotoViewAttacher;->mImageView:Lio/getstream/photoview/PhotoView;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    sub-int/2addr v5, v6

    .line 32
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    sub-int/2addr v5, v6

    .line 37
    int-to-float v5, v5

    .line 38
    cmpg-float v6, v2, v5

    .line 39
    .line 40
    const/4 v7, -0x1

    .line 41
    const/high16 v8, 0x40000000    # 2.0f

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    const/4 v10, 0x1

    .line 45
    const/4 v11, 0x2

    .line 46
    const/4 v12, 0x0

    .line 47
    if-gtz v6, :cond_3

    .line 48
    .line 49
    iget-object v6, p0, Lio/getstream/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 50
    .line 51
    sget-object v13, Lio/getstream/photoview/PhotoViewAttacher$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    aget v6, v13, v6

    .line 58
    .line 59
    iget v13, v0, Landroid/graphics/RectF;->top:F

    .line 60
    .line 61
    if-eq v6, v11, :cond_2

    .line 62
    .line 63
    if-eq v6, v9, :cond_1

    .line 64
    .line 65
    sub-float/2addr v5, v2

    .line 66
    div-float/2addr v5, v8

    .line 67
    :goto_0
    sub-float/2addr v5, v13

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    sub-float/2addr v5, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    neg-float v5, v13

    .line 72
    :goto_1
    iput v11, p0, Lio/getstream/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 76
    .line 77
    cmpl-float v6, v2, v12

    .line 78
    .line 79
    if-lez v6, :cond_4

    .line 80
    .line 81
    iput v1, p0, Lio/getstream/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 82
    .line 83
    neg-float v5, v2

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 86
    .line 87
    cmpg-float v6, v2, v5

    .line 88
    .line 89
    if-gez v6, :cond_5

    .line 90
    .line 91
    iput v10, p0, Lio/getstream/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 92
    .line 93
    sub-float/2addr v5, v2

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    iput v7, p0, Lio/getstream/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 96
    .line 97
    move v5, v12

    .line 98
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    sub-int/2addr v2, v6

    .line 107
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    sub-int/2addr v2, v4

    .line 112
    int-to-float v2, v2

    .line 113
    cmpg-float v4, v3, v2

    .line 114
    .line 115
    if-gtz v4, :cond_8

    .line 116
    .line 117
    iget-object v1, p0, Lio/getstream/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 118
    .line 119
    sget-object v4, Lio/getstream/photoview/PhotoViewAttacher$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    aget v1, v4, v1

    .line 126
    .line 127
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 128
    .line 129
    if-eq v1, v11, :cond_7

    .line 130
    .line 131
    if-eq v1, v9, :cond_6

    .line 132
    .line 133
    sub-float/2addr v2, v3

    .line 134
    div-float/2addr v2, v8

    .line 135
    :goto_3
    sub-float/2addr v2, v0

    .line 136
    move v12, v2

    .line 137
    goto :goto_4

    .line 138
    :cond_6
    sub-float/2addr v2, v3

    .line 139
    goto :goto_3

    .line 140
    :cond_7
    neg-float v0, v0

    .line 141
    move v12, v0

    .line 142
    :goto_4
    iput v11, p0, Lio/getstream/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_8
    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 146
    .line 147
    cmpl-float v4, v3, v12

    .line 148
    .line 149
    if-lez v4, :cond_9

    .line 150
    .line 151
    iput v1, p0, Lio/getstream/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 152
    .line 153
    neg-float v12, v3

    .line 154
    goto :goto_5

    .line 155
    :cond_9
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 156
    .line 157
    cmpg-float v1, v0, v2

    .line 158
    .line 159
    if-gez v1, :cond_a

    .line 160
    .line 161
    sub-float v12, v2, v0

    .line 162
    .line 163
    iput v10, p0, Lio/getstream/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_a
    iput v7, p0, Lio/getstream/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 167
    .line 168
    :goto_5
    iget-object p0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 169
    .line 170
    invoke-virtual {p0, v12, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 171
    .line 172
    .line 173
    return v10
.end method

.method public final getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mImageView:Lio/getstream/photoview/PhotoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    int-to-float v0, v0

    .line 19
    iget-object p0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v2, v2, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public final getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Lio/getstream/photoview/PhotoViewAttacher;->imageMatrix:Landroid/graphics/Matrix;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 9
    .line 10
    invoke-virtual {v1, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 11
    .line 12
    .line 13
    return-object v1
.end method

.method public final getScale()F
    .locals 7

    .line 1
    iget-object v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object p0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mMatrixValues:[F

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget v1, p0, v1

    .line 10
    .line 11
    float-to-double v1, v1

    .line 12
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 13
    .line 14
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    double-to-float v1, v1

    .line 19
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    aget p0, p0, v0

    .line 24
    .line 25
    float-to-double v5, p0

    .line 26
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    double-to-float p0, v2

    .line 31
    add-float/2addr v1, p0

    .line 32
    float-to-double v0, v1

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    double-to-float p0, v0

    .line 38
    return p0
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-ne p2, p6, :cond_1

    .line 5
    .line 6
    if-ne p3, p7, :cond_1

    .line 7
    .line 8
    if-ne p4, p8, :cond_1

    .line 9
    .line 10
    if-eq p5, p9, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/getstream/photoview/PhotoViewAttacher;->mImageView:Lio/getstream/photoview/PhotoView;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lio/getstream/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->isZoomEnabled:Z

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    if-eqz v0, :cond_a

    .line 11
    .line 12
    move-object v0, p1

    .line 13
    check-cast v0, Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_a

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v7, 0x1

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    if-eq v0, v7, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    if-eq v0, v2, :cond_0

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->getScale()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget v2, p0, Lio/getstream/photoview/PhotoViewAttacher;->mMinScale:F

    .line 40
    .line 41
    cmpg-float v0, v0, v2

    .line 42
    .line 43
    if-gez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lio/getstream/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    move-object v2, v0

    .line 59
    new-instance v0, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    .line 60
    .line 61
    move-object v3, v2

    .line 62
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->getScale()F

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    move-object v4, v3

    .line 67
    iget v3, p0, Lio/getstream/photoview/PhotoViewAttacher;->mMinScale:F

    .line 68
    .line 69
    move-object v5, v4

    .line 70
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    move-object v1, p0

    .line 79
    invoke-direct/range {v0 .. v5}, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lio/getstream/photoview/PhotoViewAttacher;FFFF)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    :goto_0
    move v0, v7

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->getScale()F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iget v2, p0, Lio/getstream/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 92
    .line 93
    cmpl-float v0, v0, v2

    .line 94
    .line 95
    if-lez v0, :cond_4

    .line 96
    .line 97
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p0, v0}, Lio/getstream/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    move-object v2, v0

    .line 111
    new-instance v0, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    .line 112
    .line 113
    move-object v3, v2

    .line 114
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->getScale()F

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    move-object v4, v3

    .line 119
    iget v3, p0, Lio/getstream/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 120
    .line 121
    move-object v5, v4

    .line 122
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    move-object v1, p0

    .line 131
    invoke-direct/range {v0 .. v5}, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lio/getstream/photoview/PhotoViewAttacher;FFFF)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_3

    .line 143
    .line 144
    invoke-interface {v0, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 145
    .line 146
    .line 147
    :cond_3
    iget-object v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lio/getstream/photoview/PhotoViewAttacher$FlingRunnable;

    .line 148
    .line 149
    if-eqz v0, :cond_4

    .line 150
    .line 151
    iget-object v0, v0, Lio/getstream/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 152
    .line 153
    invoke-virtual {v0, v7}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 154
    .line 155
    .line 156
    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lio/getstream/photoview/PhotoViewAttacher$FlingRunnable;

    .line 158
    .line 159
    :cond_4
    :goto_1
    move v0, v6

    .line 160
    :goto_2
    iget-object v2, p0, Lio/getstream/photoview/PhotoViewAttacher;->mScaleDragDetector:Lio/getstream/photoview/CustomGestureDetector;

    .line 161
    .line 162
    if-eqz v2, :cond_8

    .line 163
    .line 164
    iget-object v0, v2, Lio/getstream/photoview/CustomGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    iget-boolean v4, v2, Lio/getstream/photoview/CustomGestureDetector;->isDragging:Z

    .line 171
    .line 172
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, p2}, Lio/getstream/photoview/CustomGestureDetector;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    .line 178
    :catch_0
    if-nez v3, :cond_5

    .line 179
    .line 180
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_5

    .line 185
    .line 186
    move v0, v7

    .line 187
    goto :goto_3

    .line 188
    :cond_5
    move v0, v6

    .line 189
    :goto_3
    if-nez v4, :cond_6

    .line 190
    .line 191
    iget-boolean v2, v2, Lio/getstream/photoview/CustomGestureDetector;->isDragging:Z

    .line 192
    .line 193
    if-nez v2, :cond_6

    .line 194
    .line 195
    move v2, v7

    .line 196
    goto :goto_4

    .line 197
    :cond_6
    move v2, v6

    .line 198
    :goto_4
    if-eqz v0, :cond_7

    .line 199
    .line 200
    if-eqz v2, :cond_7

    .line 201
    .line 202
    move v6, v7

    .line 203
    :cond_7
    iput-boolean v6, p0, Lio/getstream/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    .line 204
    .line 205
    move v0, v7

    .line 206
    :cond_8
    iget-object v1, p0, Lio/getstream/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 207
    .line 208
    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_9

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_9
    move v7, v0

    .line 216
    :goto_5
    return v7

    .line 217
    :cond_a
    return v6
.end method

.method public final setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mImageView:Lio/getstream/photoview/PhotoView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lio/getstream/photoview/OnMatrixChangedListener;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lio/getstream/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lio/getstream/photoview/OnMatrixChangedListener;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    check-cast p0, Lorg/wikipedia/gallery/GalleryItemFragment$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryItemFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Lio/getstream/photoview/PhotoView;

    .line 39
    .line 40
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Lio/getstream/photoview/PhotoView;

    .line 48
    .line 49
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoView;->getScale()F

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    .line 54
    .line 55
    sub-float/2addr p0, v0

    .line 56
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    const v0, 0x3c23d70a    # 0.01f

    .line 61
    .line 62
    .line 63
    cmpg-float p0, p0, v0

    .line 64
    .line 65
    if-gez p0, :cond_0

    .line 66
    .line 67
    const/4 p0, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 p0, 0x0

    .line 70
    :goto_0
    invoke-virtual {p1, p0}, Lio/getstream/photoview/PhotoView;->setAllowParentInterceptOnEdge(Z)V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public final setScale(FFFZ)V
    .locals 7

    .line 1
    iget v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mMinScale:F

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 8
    .line 9
    cmpl-float v0, p1, v0

    .line 10
    .line 11
    if-gtz v0, :cond_1

    .line 12
    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    new-instance v1, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    .line 16
    .line 17
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->getScale()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    move-object v2, p0

    .line 22
    move v4, p1

    .line 23
    move v5, p2

    .line 24
    move v6, p3

    .line 25
    invoke-direct/range {v1 .. v6}, Lio/getstream/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lio/getstream/photoview/PhotoViewAttacher;FFFF)V

    .line 26
    .line 27
    .line 28
    iget-object p0, v2, Lio/getstream/photoview/PhotoViewAttacher;->mImageView:Lio/getstream/photoview/PhotoView;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    move-object v2, p0

    .line 35
    move v4, p1

    .line 36
    move v5, p2

    .line 37
    move v6, p3

    .line 38
    iget-object p0, v2, Lio/getstream/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 39
    .line 40
    invoke-virtual {p0, v4, v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lio/getstream/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    const-string p0, "Scale must be within the range of minScale and maxScale"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final update()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->isZoomEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mImageView:Lio/getstream/photoview/PhotoView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lio/getstream/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lio/getstream/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mImageView:Lio/getstream/photoview/PhotoView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    sub-int/2addr v1, v2

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sub-int/2addr v1, v2

    .line 20
    int-to-float v1, v1

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    sub-int/2addr v2, v3

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    sub-int/2addr v2, v0

    .line 35
    int-to-float v0, v2

    .line 36
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object v3, p0, Lio/getstream/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 47
    .line 48
    .line 49
    int-to-float v2, v2

    .line 50
    div-float v4, v1, v2

    .line 51
    .line 52
    int-to-float p1, p1

    .line 53
    div-float v5, v0, p1

    .line 54
    .line 55
    iget-object v6, p0, Lio/getstream/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 56
    .line 57
    sget-object v7, Lio/getstream/photoview/PhotoViewAttacher$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    aget v6, v7, v6

    .line 64
    .line 65
    const/4 v8, 0x5

    .line 66
    const/4 v9, 0x0

    .line 67
    const/high16 v10, 0x40000000    # 2.0f

    .line 68
    .line 69
    if-eq v6, v8, :cond_a

    .line 70
    .line 71
    const/4 v8, 0x6

    .line 72
    if-eq v6, v8, :cond_8

    .line 73
    .line 74
    const/4 v8, 0x7

    .line 75
    if-eq v6, v8, :cond_5

    .line 76
    .line 77
    new-instance v4, Landroid/graphics/RectF;

    .line 78
    .line 79
    invoke-direct {v4, v9, v9, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Landroid/graphics/RectF;

    .line 83
    .line 84
    invoke-direct {p1, v9, v9, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    aget v0, v7, v0

    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    if-eq v0, v1, :cond_4

    .line 97
    .line 98
    const/4 v1, 0x2

    .line 99
    if-eq v0, v1, :cond_3

    .line 100
    .line 101
    const/4 v1, 0x3

    .line 102
    if-eq v0, v1, :cond_2

    .line 103
    .line 104
    const/4 v1, 0x4

    .line 105
    if-eq v0, v1, :cond_1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 109
    .line 110
    invoke-virtual {v3, v4, p1, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    .line 115
    .line 116
    invoke-virtual {v3, v4, p1, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    .line 121
    .line 122
    invoke-virtual {v3, v4, p1, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 127
    .line 128
    invoke-virtual {v3, v4, p1, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    cmpl-float v6, v4, v5

    .line 133
    .line 134
    if-lez v6, :cond_6

    .line 135
    .line 136
    move v4, v5

    .line 137
    :cond_6
    const/high16 v5, 0x3f800000    # 1.0f

    .line 138
    .line 139
    cmpl-float v6, v5, v4

    .line 140
    .line 141
    if-lez v6, :cond_7

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_7
    move v4, v5

    .line 145
    :goto_0
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 146
    .line 147
    .line 148
    mul-float/2addr v2, v4

    .line 149
    sub-float/2addr v1, v2

    .line 150
    div-float/2addr v1, v10

    .line 151
    mul-float/2addr p1, v4

    .line 152
    sub-float/2addr v0, p1

    .line 153
    div-float/2addr v0, v10

    .line 154
    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_8
    cmpg-float v6, v4, v5

    .line 159
    .line 160
    if-gez v6, :cond_9

    .line 161
    .line 162
    move v4, v5

    .line 163
    :cond_9
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 164
    .line 165
    .line 166
    mul-float/2addr v2, v4

    .line 167
    sub-float/2addr v1, v2

    .line 168
    div-float/2addr v1, v10

    .line 169
    mul-float/2addr p1, v4

    .line 170
    sub-float/2addr v0, p1

    .line 171
    div-float/2addr v0, v10

    .line 172
    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_a
    sub-float/2addr v1, v2

    .line 177
    div-float/2addr v1, v10

    .line 178
    sub-float/2addr v0, p1

    .line 179
    div-float/2addr v0, v10

    .line 180
    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 181
    .line 182
    .line 183
    :goto_1
    iget-object p1, p0, Lio/getstream/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Lio/getstream/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lio/getstream/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 202
    .line 203
    .line 204
    return-void
.end method

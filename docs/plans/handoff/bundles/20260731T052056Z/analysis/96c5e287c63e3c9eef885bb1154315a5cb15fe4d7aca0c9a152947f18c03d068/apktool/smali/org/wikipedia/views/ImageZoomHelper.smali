.class public final Lorg/wikipedia/views/ImageZoomHelper;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static isZooming:Z


# instance fields
.field public final activityWeakReference:Ljava/lang/ref/WeakReference;

.field public darkView:Landroid/view/View;

.field public isAnimatingDismiss:Z

.field public originalDistance:D

.field public originalXY:[I

.field public parentOfZoomableView:Landroid/view/ViewGroup;

.field public pivotX:I

.field public pivotY:I

.field public twoPointCenter:[I

.field public viewIndex:I

.field public final zoomListeners:Ljava/util/ArrayList;

.field public zoomableView:Landroid/view/View;

.field public zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

.field public zoomableViewLP:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>(Lorg/wikipedia/activity/BaseActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method

.method public static findZoomableView(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 13

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {p1, v3, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Landroid/graphics/Point;

    .line 24
    .line 25
    iget v5, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 26
    .line 27
    float-to-int v5, v5

    .line 28
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 29
    .line 30
    float-to-int v0, v0

    .line 31
    invoke-direct {v4, v5, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Landroid/graphics/Point;

    .line 35
    .line 36
    iget v5, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 37
    .line 38
    float-to-int v5, v5

    .line 39
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 40
    .line 41
    float-to-int v2, v2

    .line 42
    invoke-direct {v0, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 43
    .line 44
    .line 45
    check-cast p0, Landroid/view/ViewGroup;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    move v5, v1

    .line 52
    :goto_0
    if-ge v5, v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {v6}, Lokhttp3/HttpUrl$Companion;->getIntTag(Landroid/view/View;)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    const/4 v8, 0x2

    .line 66
    and-int/2addr v7, v8

    .line 67
    if-nez v7, :cond_1

    .line 68
    .line 69
    new-array v7, v8, [I

    .line 70
    .line 71
    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 72
    .line 73
    .line 74
    new-instance v8, Landroid/graphics/Rect;

    .line 75
    .line 76
    aget v9, v7, v1

    .line 77
    .line 78
    aget v10, v7, v3

    .line 79
    .line 80
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    add-int/2addr v11, v9

    .line 85
    aget v7, v7, v3

    .line 86
    .line 87
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    add-int/2addr v12, v7

    .line 92
    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 93
    .line 94
    .line 95
    iget v7, v4, Landroid/graphics/Point;->x:I

    .line 96
    .line 97
    iget v9, v4, Landroid/graphics/Point;->y:I

    .line 98
    .line 99
    invoke-virtual {v8, v7, v9}, Landroid/graphics/Rect;->contains(II)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_1

    .line 104
    .line 105
    iget v7, v0, Landroid/graphics/Point;->x:I

    .line 106
    .line 107
    iget v9, v0, Landroid/graphics/Point;->y:I

    .line 108
    .line 109
    invoke-virtual {v8, v7, v9}, Landroid/graphics/Rect;->contains(II)Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-eqz v7, :cond_1

    .line 114
    .line 115
    invoke-static {v6}, Lokhttp3/HttpUrl$Companion;->getIntTag(Landroid/view/View;)I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    and-int/2addr p0, v3

    .line 120
    if-eqz p0, :cond_0

    .line 121
    .line 122
    return-object v6

    .line 123
    :cond_0
    invoke-static {v6, p1}, Lorg/wikipedia/views/ImageZoomHelper;->findZoomableView(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    const/4 p0, 0x0

    .line 132
    return-object p0
.end method


# virtual methods
.method public final updateZoomableView(FFFIIII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    sub-float v2, v1, p3

    .line 9
    .line 10
    mul-float/2addr v2, p1

    .line 11
    add-float/2addr v2, p3

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 13
    .line 14
    .line 15
    iget-object p3, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sub-float/2addr v1, p2

    .line 21
    mul-float/2addr v1, p1

    .line 22
    add-float/2addr v1, p2

    .line 23
    invoke-virtual {p3, v1}, Landroid/view/View;->setScaleY(F)V

    .line 24
    .line 25
    .line 26
    sub-int/2addr p6, p4

    .line 27
    int-to-float p2, p6

    .line 28
    mul-float/2addr p2, p1

    .line 29
    int-to-float p3, p4

    .line 30
    add-float/2addr p2, p3

    .line 31
    sub-int/2addr p7, p5

    .line 32
    int-to-float p3, p7

    .line 33
    mul-float/2addr p3, p1

    .line 34
    int-to-float p1, p5

    .line 35
    add-float/2addr p3, p1

    .line 36
    iget-object p1, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    float-to-int p2, p2

    .line 42
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 43
    .line 44
    iget-object p1, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    float-to-int p2, p3

    .line 50
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 51
    .line 52
    iget-object p1, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

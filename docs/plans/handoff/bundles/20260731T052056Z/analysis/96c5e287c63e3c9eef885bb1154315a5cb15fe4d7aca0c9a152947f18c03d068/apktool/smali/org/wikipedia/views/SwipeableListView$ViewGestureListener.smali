.class public final Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;->this$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    .line 21
    .line 22
    iput-boolean v1, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->quickScale:Z

    .line 23
    .line 24
    new-instance v0, Landroid/graphics/PointF;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-direct {v0, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->quickScaleFocalPoint:Landroid/graphics/PointF;

    .line 38
    .line 39
    :cond_0
    return v1

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :pswitch_1
    iget-object p0, p0, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;->this$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lorg/wikipedia/views/SwipeableListView;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    sget v0, Lorg/wikipedia/views/SwipeableListView;->$r8$clinit:I

    .line 26
    .line 27
    iget-boolean v0, p0, Lorg/wikipedia/views/SwipeableListView;->rtl:Z

    .line 28
    .line 29
    const/high16 v2, 0x43480000    # 200.0f

    .line 30
    .line 31
    const/high16 v3, 0x43960000    # 300.0f

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    sub-float/2addr v0, v4

    .line 44
    cmpg-float v0, v0, v3

    .line 45
    .line 46
    if-gtz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    sub-float/2addr p1, p2

    .line 57
    cmpl-float p1, p1, v2

    .line 58
    .line 59
    if-lez p1, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    sub-float/2addr v0, v4

    .line 71
    cmpg-float v0, v0, v3

    .line 72
    .line 73
    if-gtz v0, :cond_1

    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    sub-float/2addr p2, p1

    .line 84
    cmpl-float p1, p2, v2

    .line 85
    .line 86
    if-lez p1, :cond_1

    .line 87
    .line 88
    :goto_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    const/high16 p2, 0x42c80000    # 100.0f

    .line 93
    .line 94
    cmpl-float p1, p1, p2

    .line 95
    .line 96
    if-lez p1, :cond_1

    .line 97
    .line 98
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    const/high16 p2, 0x44fa0000    # 2000.0f

    .line 103
    .line 104
    cmpg-float p1, p1, p2

    .line 105
    .line 106
    if-gez p1, :cond_1

    .line 107
    .line 108
    invoke-virtual {p0}, Lorg/wikipedia/views/SwipeableListView;->getListener()Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    if-eqz p0, :cond_1

    .line 113
    .line 114
    check-cast p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 115
    .line 116
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p0, Lorg/wikipedia/page/SidePanelHandler;

    .line 119
    .line 120
    invoke-virtual {p0}, Lorg/wikipedia/page/SidePanelHandler;->hide()V

    .line 121
    .line 122
    .line 123
    :cond_1
    return v1

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lio/getstream/photoview/PhotoViewAttacher;

    .line 16
    .line 17
    iget-object p1, p0, Lio/getstream/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lio/getstream/photoview/PhotoViewAttacher;->mImageView:Lio/getstream/photoview/PhotoView;

    .line 22
    .line 23
    invoke-interface {p1, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

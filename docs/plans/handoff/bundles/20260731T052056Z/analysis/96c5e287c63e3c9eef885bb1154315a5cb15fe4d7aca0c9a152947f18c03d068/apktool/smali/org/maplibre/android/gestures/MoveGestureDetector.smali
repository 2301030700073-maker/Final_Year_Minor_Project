.class public final Lorg/maplibre/android/gestures/MoveGestureDetector;
.super Lorg/maplibre/android/gestures/ProgressiveGesture;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final handledTypes:Ljava/util/HashSet;


# instance fields
.field public final moveDistancesObjectMap:Ljava/util/HashMap;

.field public moveThreshold:F

.field public moveThresholdRect:Landroid/graphics/RectF;

.field public previousFocalPoint:Landroid/graphics/PointF;

.field public resetFocal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/maplibre/android/gestures/MoveGestureDetector;->handledTypes:Ljava/util/HashSet;

    .line 7
    .line 8
    const/16 v1, 0xd

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/wikipedia/databinding/FragmentNewsBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/gestures/ProgressiveGesture;-><init>(Landroid/content/Context;Lorg/wikipedia/databinding/FragmentNewsBinding;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveDistancesObjectMap:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final analyzeEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    iget-object v2, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveDistancesObjectMap:Ljava/util/HashMap;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    if-eq v0, v3, :cond_1

    .line 14
    .line 15
    const/4 v3, 0x5

    .line 16
    if-eq v0, v3, :cond_3

    .line 17
    .line 18
    const/4 v3, 0x6

    .line 19
    if-eq v0, v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput-boolean v1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->resetFocal:Z

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iput-boolean v1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->resetFocal:Z

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    new-instance v4, Lorg/maplibre/android/gestures/MoveDistancesObject;

    .line 79
    .line 80
    invoke-direct {v4, v0, v1}, Lorg/maplibre/android/gestures/MoveDistancesObject;-><init>(FF)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-super {p0, p1}, Lorg/maplibre/android/gestures/ProgressiveGesture;->analyzeEvent(Landroid/view/MotionEvent;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    return p0
.end method

.method public final analyzeMovement()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveDistancesObjectMap:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lorg/maplibre/android/gestures/MoveDistancesObject;

    .line 30
    .line 31
    iget-object v3, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iget-object v4, p0, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 42
    .line 43
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget v4, v1, Lorg/maplibre/android/gestures/MoveDistancesObject;->currX:F

    .line 52
    .line 53
    iput v3, v1, Lorg/maplibre/android/gestures/MoveDistancesObject;->currX:F

    .line 54
    .line 55
    iget v4, v1, Lorg/maplibre/android/gestures/MoveDistancesObject;->initialX:F

    .line 56
    .line 57
    sub-float/2addr v4, v3

    .line 58
    iput v4, v1, Lorg/maplibre/android/gestures/MoveDistancesObject;->distanceXSinceStart:F

    .line 59
    .line 60
    iget v3, v1, Lorg/maplibre/android/gestures/MoveDistancesObject;->initialY:F

    .line 61
    .line 62
    sub-float/2addr v3, v2

    .line 63
    iput v3, v1, Lorg/maplibre/android/gestures/MoveDistancesObject;->distanceYSinceStart:F

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-boolean v0, p0, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->focalPoint:Landroid/graphics/PointF;

    .line 72
    .line 73
    iget-object v2, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->previousFocalPoint:Landroid/graphics/PointF;

    .line 74
    .line 75
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 76
    .line 77
    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 78
    .line 79
    sub-float/2addr v3, v4

    .line 80
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 81
    .line 82
    iget v4, v0, Landroid/graphics/PointF;->y:F

    .line 83
    .line 84
    sub-float/2addr v2, v4

    .line 85
    iput-object v0, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->previousFocalPoint:Landroid/graphics/PointF;

    .line 86
    .line 87
    iget-boolean v0, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->resetFocal:Z

    .line 88
    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    iput-boolean v1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->resetFocal:Z

    .line 92
    .line 93
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    invoke-interface {v0, p0, v1, v1}, Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;->onMove(Lorg/maplibre/android/gestures/MoveGestureDetector;FF)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    return p0

    .line 103
    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;

    .line 106
    .line 107
    invoke-interface {v0, p0, v3, v2}, Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;->onMove(Lorg/maplibre/android/gestures/MoveGestureDetector;FF)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    return p0

    .line 112
    :cond_2
    const/16 v0, 0xd

    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lorg/maplibre/android/gestures/MoveGestureDetector;->canExecute(I)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;

    .line 123
    .line 124
    invoke-interface {v0, p0}, Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;->onMoveBegin(Lorg/maplibre/android/gestures/MoveGestureDetector;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_3

    .line 129
    .line 130
    invoke-virtual {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->gestureStarted()V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->focalPoint:Landroid/graphics/PointF;

    .line 134
    .line 135
    iput-object v0, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->previousFocalPoint:Landroid/graphics/PointF;

    .line 136
    .line 137
    iput-boolean v1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->resetFocal:Z

    .line 138
    .line 139
    const/4 p0, 0x1

    .line 140
    return p0

    .line 141
    :cond_3
    return v1
.end method

.method public final canExecute(I)Z
    .locals 4

    .line 1
    const/16 p1, 0xd

    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/maplibre/android/gestures/MultiFingerGesture;->canExecute(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    iget-object p1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveDistancesObjectMap:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lorg/maplibre/android/gestures/MoveDistancesObject;

    .line 31
    .line 32
    iget v1, p1, Lorg/maplibre/android/gestures/MoveDistancesObject;->distanceXSinceStart:F

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget v2, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThreshold:F

    .line 39
    .line 40
    cmpl-float v1, v1, v2

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    if-gez v1, :cond_1

    .line 44
    .line 45
    iget p1, p1, Lorg/maplibre/android/gestures/MoveDistancesObject;->distanceYSinceStart:F

    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget v1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThreshold:F

    .line 52
    .line 53
    cmpl-float p1, p1, v1

    .line 54
    .line 55
    if-ltz p1, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move p1, v0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    move p1, v2

    .line 61
    :goto_1
    iget-object v1, p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->moveThresholdRect:Landroid/graphics/RectF;

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-object p0, p0, Lorg/maplibre/android/gestures/MultiFingerGesture;->focalPoint:Landroid/graphics/PointF;

    .line 66
    .line 67
    iget v3, p0, Landroid/graphics/PointF;->x:F

    .line 68
    .line 69
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 70
    .line 71
    invoke-virtual {v1, v3, p0}, Landroid/graphics/RectF;->contains(FF)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    if-eqz p1, :cond_3

    .line 79
    .line 80
    return v2

    .line 81
    :cond_3
    :goto_2
    return v0
.end method

.method public final gestureStopped()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;->gestureStopped()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;

    .line 7
    .line 8
    invoke-interface {v0, p0}, Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;->onMoveEnd(Lorg/maplibre/android/gestures/MoveGestureDetector;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getRequiredPointersCount()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final provideHandledTypes()Ljava/util/HashSet;
    .locals 0

    .line 1
    sget-object p0, Lorg/maplibre/android/gestures/MoveGestureDetector;->handledTypes:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final reset()V
    .locals 0

    .line 1
    return-void
.end method

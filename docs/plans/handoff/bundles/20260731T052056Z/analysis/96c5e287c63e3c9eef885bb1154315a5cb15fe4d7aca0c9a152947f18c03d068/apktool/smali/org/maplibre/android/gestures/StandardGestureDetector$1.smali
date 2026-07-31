.class public final Lorg/maplibre/android/gestures/StandardGestureDetector$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;


# instance fields
.field public final synthetic this$0:Lorg/maplibre/android/gestures/StandardGestureDetector;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/gestures/StandardGestureDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/gestures/StandardGestureDetector$1;->this$0:Lorg/maplibre/android/gestures/StandardGestureDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/gestures/StandardGestureDetector$1;->this$0:Lorg/maplibre/android/gestures/StandardGestureDetector;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/maplibre/android/gestures/BaseGesture;->canExecute(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/gestures/StandardGestureDetector$1;->this$0:Lorg/maplibre/android/gestures/StandardGestureDetector;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/maplibre/android/gestures/BaseGesture;->canExecute(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/gestures/StandardGestureDetector$1;->this$0:Lorg/maplibre/android/gestures/StandardGestureDetector;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/maplibre/android/gestures/BaseGesture;->canExecute(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    iget-object p0, p0, Lorg/maplibre/android/gestures/StandardGestureDetector$1;->this$0:Lorg/maplibre/android/gestures/StandardGestureDetector;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lorg/maplibre/android/gestures/BaseGesture;->canExecute(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    iget-object p0, p0, Lorg/maplibre/android/gestures/StandardGestureDetector$1;->this$0:Lorg/maplibre/android/gestures/StandardGestureDetector;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lorg/maplibre/android/gestures/BaseGesture;->canExecute(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/gestures/StandardGestureDetector$1;->this$0:Lorg/maplibre/android/gestures/StandardGestureDetector;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lorg/maplibre/android/gestures/BaseGesture;->canExecute(I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    return v0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/gestures/StandardGestureDetector$1;->this$0:Lorg/maplibre/android/gestures/StandardGestureDetector;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/maplibre/android/gestures/BaseGesture;->canExecute(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/gestures/StandardGestureDetector$1;->this$0:Lorg/maplibre/android/gestures/StandardGestureDetector;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/maplibre/android/gestures/BaseGesture;->canExecute(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    iget-object p0, p0, Lorg/maplibre/android/gestures/StandardGestureDetector$1;->this$0:Lorg/maplibre/android/gestures/StandardGestureDetector;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lorg/maplibre/android/gestures/BaseGesture;->canExecute(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lorg/maplibre/android/gestures/StandardGestureDetector$StandardOnGestureListener;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

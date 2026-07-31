.class public final Lorg/maplibre/android/gestures/StandardGestureDetector;
.super Lorg/maplibre/android/gestures/BaseGesture;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/wikipedia/databinding/FragmentNewsBinding;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/gestures/BaseGesture;-><init>(Landroid/content/Context;Lorg/wikipedia/databinding/FragmentNewsBinding;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lorg/maplibre/android/gestures/StandardGestureDetector$1;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Lorg/maplibre/android/gestures/StandardGestureDetector$1;-><init>(Lorg/maplibre/android/gestures/StandardGestureDetector;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/view/GestureDetector;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/maplibre/android/gestures/StandardGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final analyzeEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/gestures/StandardGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

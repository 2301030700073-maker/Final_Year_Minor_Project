.class public final Lorg/maplibre/android/location/LocationCameraController$LocationGesturesManager;
.super Lorg/wikipedia/databinding/FragmentNewsBinding;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Lorg/maplibre/android/location/LocationCameraController;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LocationCameraController;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController$LocationGesturesManager;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p2, p1}, Lorg/wikipedia/databinding/FragmentNewsBinding;-><init>(Landroid/content/Context;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$LocationGesturesManager;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationCameraController;->adjustGesturesThresholds()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1}, Lorg/wikipedia/databinding/FragmentNewsBinding;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

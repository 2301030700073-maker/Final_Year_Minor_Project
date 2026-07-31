.class public final Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final angularVelocityMultiplier:F

.field public final defaultSpanSinceStartThreshold:F

.field public final minimumAngularVelocity:F

.field public final minimumScaleSpanWhenRotating:F

.field public final rotateVelocityRatioThreshold:D

.field public final synthetic this$0:Lorg/maplibre/android/maps/MapGestureDetector;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;FDFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 5
    .line 6
    iput p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->minimumScaleSpanWhenRotating:F

    .line 7
    .line 8
    iput p5, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->angularVelocityMultiplier:F

    .line 9
    .line 10
    iput p6, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->minimumAngularVelocity:F

    .line 11
    .line 12
    const-wide p1, 0x3f2cd5f99c38b04cL    # 2.2000000000000003E-4

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    mul-double/2addr p3, p1

    .line 18
    iput-wide p3, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->rotateVelocityRatioThreshold:D

    .line 19
    .line 20
    iput p7, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->defaultSpanSinceStartThreshold:F

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onRotate(Lorg/maplibre/android/gestures/RotateGestureDetector;F)V
    .locals 14

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->getRawBearing()D

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    move/from16 v3, p2

    .line 16
    .line 17
    float-to-double v3, v3

    .line 18
    add-double v6, v1, v3

    .line 19
    .line 20
    iget-object v1, p0, Lorg/maplibre/android/maps/MapGestureDetector;->constantFocalPoint:Landroid/graphics/PointF;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p1, Lorg/maplibre/android/gestures/MultiFingerGesture;->focalPoint:Landroid/graphics/PointF;

    .line 26
    .line 27
    :goto_0
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 28
    .line 29
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 30
    .line 31
    iget-object v0, v0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 32
    .line 33
    float-to-double v8, v2

    .line 34
    float-to-double v10, v1

    .line 35
    const-wide/16 v12, 0x0

    .line 36
    .line 37
    move-object v5, v0

    .line 38
    check-cast v5, Lorg/maplibre/android/maps/NativeMapView;

    .line 39
    .line 40
    invoke-virtual/range {v5 .. v13}, Lorg/maplibre/android/maps/NativeMapView;->setBearing(DDDJ)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->onRotateListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lorg/maplibre/android/location/LocationCameraController$7;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    return-void
.end method

.class public final Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final minimumAngledGestureSpeed:F

.field public final minimumGestureSpeed:F

.field public final minimumVelocity:F

.field public quickZoom:Z

.field public final scaleVelocityRatioThreshold:D

.field public screenHeight:D

.field public spanSinceLast:F

.field public startZoom:D

.field public final synthetic this$0:Lorg/maplibre/android/maps/MapGestureDetector;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapGestureDetector;DFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 5
    .line 6
    iput p4, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->minimumGestureSpeed:F

    .line 7
    .line 8
    iput p5, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->minimumAngledGestureSpeed:F

    .line 9
    .line 10
    iput p6, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->minimumVelocity:F

    .line 11
    .line 12
    const-wide p4, 0x3f70624dd2f1a9fcL    # 0.004

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    mul-double/2addr p2, p4

    .line 18
    iput-wide p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->scaleVelocityRatioThreshold:D

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getScaleFocalPoint(Lorg/maplibre/android/gestures/StandardScaleGestureDetector;)Landroid/graphics/PointF;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/maplibre/android/maps/MapGestureDetector;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/maplibre/android/maps/MapGestureDetector;->constantFocalPoint:Landroid/graphics/PointF;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapGestureDetector$ScaleGestureListener;->quickZoom:Z

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    new-instance p0, Landroid/graphics/PointF;

    .line 15
    .line 16
    iget-object p1, v1, Lorg/maplibre/android/maps/UiSettings;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapView$2;->getWidth()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/high16 v0, 0x40000000    # 2.0f

    .line 23
    .line 24
    div-float/2addr p1, v0

    .line 25
    iget-object v1, v1, Lorg/maplibre/android/maps/UiSettings;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 26
    .line 27
    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView$2;->getHeight()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    div-float/2addr v1, v0

    .line 32
    invoke-direct {p0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_1
    iget-object p0, p1, Lorg/maplibre/android/gestures/MultiFingerGesture;->focalPoint:Landroid/graphics/PointF;

    .line 37
    .line 38
    return-object p0
.end method

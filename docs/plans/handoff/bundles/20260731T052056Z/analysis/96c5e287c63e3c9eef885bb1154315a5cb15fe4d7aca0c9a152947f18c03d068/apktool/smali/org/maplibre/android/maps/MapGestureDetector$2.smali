.class public final Lorg/maplibre/android/maps/MapGestureDetector$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$animationFocalPoint:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/graphics/PointF;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/maplibre/android/maps/MapGestureDetector$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/maplibre/android/maps/MapGestureDetector$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/maplibre/android/maps/MapGestureDetector$2;->val$animationFocalPoint:Landroid/graphics/PointF;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/maplibre/android/maps/MapGestureDetector$2;->$r8$classId:I

    .line 4
    .line 5
    iget-object v2, v0, Lorg/maplibre/android/maps/MapGestureDetector$2;->val$animationFocalPoint:Landroid/graphics/PointF;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/maplibre/android/maps/MapGestureDetector$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;

    .line 13
    .line 14
    iget-object v0, v0, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 15
    .line 16
    iget-object v0, v0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->getRawBearing()D

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Float;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    float-to-double v5, v1

    .line 33
    add-double v8, v3, v5

    .line 34
    .line 35
    iget v1, v2, Landroid/graphics/PointF;->x:F

    .line 36
    .line 37
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 38
    .line 39
    iget-object v0, v0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 40
    .line 41
    float-to-double v10, v1

    .line 42
    float-to-double v12, v2

    .line 43
    move-object v7, v0

    .line 44
    check-cast v7, Lorg/maplibre/android/maps/NativeMapView;

    .line 45
    .line 46
    const-wide/16 v14, 0x0

    .line 47
    .line 48
    invoke-virtual/range {v7 .. v15}, Lorg/maplibre/android/maps/NativeMapView;->setBearing(DDDJ)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_0
    check-cast v0, Lorg/maplibre/android/maps/MapGestureDetector;

    .line 53
    .line 54
    iget-object v0, v0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 55
    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/lang/Float;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    float-to-double v3, v1

    .line 67
    invoke-virtual {v0, v3, v4, v2}, Lorg/maplibre/android/maps/Transform;->setZoom(DLandroid/graphics/PointF;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

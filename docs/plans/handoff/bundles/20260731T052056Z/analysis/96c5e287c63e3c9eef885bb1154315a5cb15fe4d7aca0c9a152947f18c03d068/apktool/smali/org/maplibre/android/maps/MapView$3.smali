.class public final Lorg/maplibre/android/maps/MapView$3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;

.field public final val$cameraChangeDispatcher:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/maplibre/android/maps/MapView$3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lorg/maplibre/android/maps/AttributionDialogManager;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2}, Lorg/maplibre/android/maps/AttributionDialogManager;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMap;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/maplibre/android/maps/MapView$3;->val$cameraChangeDispatcher:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object p1, p2, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 15
    .line 16
    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$3;->this$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/maps/CameraChangeDispatcher;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/maplibre/android/maps/MapView$3;->$r8$classId:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$3;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/maplibre/android/maps/MapView$3;->val$cameraChangeDispatcher:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    .line 1
    iget v0, p0, Lorg/maplibre/android/maps/MapView$3;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/maplibre/android/maps/MapView$3;->val$cameraChangeDispatcher:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$3;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lorg/maplibre/android/maps/UiSettings;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast v1, Lorg/maplibre/android/maps/AttributionDialogManager;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lorg/maplibre/android/maps/AttributionDialogManager;->onClick(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast p0, Lorg/maplibre/android/maps/MapView;

    .line 22
    .line 23
    iget-object p1, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object v0, p1, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 28
    .line 29
    iget-object v2, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Lorg/maplibre/android/maps/MapView;->focalPoint:Landroid/graphics/PointF;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 38
    .line 39
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->notifyDeveloperAnimationListeners()V

    .line 42
    .line 43
    .line 44
    iget-object p1, v0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 45
    .line 46
    float-to-double v7, v3

    .line 47
    float-to-double v9, v2

    .line 48
    move-object v4, p1

    .line 49
    check-cast v4, Lorg/maplibre/android/maps/NativeMapView;

    .line 50
    .line 51
    const-wide/16 v5, 0x0

    .line 52
    .line 53
    const-wide/16 v11, 0x96

    .line 54
    .line 55
    invoke-virtual/range {v4 .. v12}, Lorg/maplibre/android/maps/NativeMapView;->setBearing(DDDJ)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v2, p1, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 60
    .line 61
    invoke-virtual {v2}, Lorg/maplibre/android/maps/MapView$2;->getWidth()F

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/high16 v3, 0x40000000    # 2.0f

    .line 66
    .line 67
    div-float/2addr v2, v3

    .line 68
    iget-object v4, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 69
    .line 70
    iget-object v4, v4, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 71
    .line 72
    invoke-virtual {v4}, Lorg/maplibre/android/maps/MapView$2;->getHeight()F

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    div-float/2addr v4, v3

    .line 77
    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->notifyDeveloperAnimationListeners()V

    .line 78
    .line 79
    .line 80
    iget-object p1, v0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 81
    .line 82
    float-to-double v8, v2

    .line 83
    float-to-double v10, v4

    .line 84
    move-object v5, p1

    .line 85
    check-cast v5, Lorg/maplibre/android/maps/NativeMapView;

    .line 86
    .line 87
    const-wide/16 v6, 0x0

    .line 88
    .line 89
    const-wide/16 v12, 0x96

    .line 90
    .line 91
    invoke-virtual/range {v5 .. v13}, Lorg/maplibre/android/maps/NativeMapView;->setBearing(DDDJ)V

    .line 92
    .line 93
    .line 94
    :goto_0
    check-cast v1, Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 95
    .line 96
    const/4 p1, 0x3

    .line 97
    invoke-virtual {v1, p1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 101
    .line 102
    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lorg/maplibre/android/maps/widgets/CompassView;->isAnimating:Z

    .line 104
    .line 105
    const-wide/16 v0, 0x28a

    .line 106
    .line 107
    invoke-virtual {p0, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    .line 109
    .line 110
    :cond_1
    return-void

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

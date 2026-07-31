.class public final Lorg/maplibre/android/location/LocationCameraController$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/maplibre/android/location/LocationCameraController;


# direct methods
.method public synthetic constructor <init>(Lorg/maplibre/android/location/LocationCameraController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/maplibre/android/location/LocationCameraController$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController$2;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onNewAnimationValue(Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/maplibre/android/location/LocationCameraController$2;->$r8$classId:I

    .line 4
    .line 5
    iget-object v0, v0, Lorg/maplibre/android/location/LocationCameraController$2;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p1

    .line 11
    .line 12
    check-cast v1, Ljava/lang/Float;

    .line 13
    .line 14
    iget v2, v0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    .line 15
    .line 16
    const/16 v3, 0x20

    .line 17
    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    const/16 v3, 0x10

    .line 21
    .line 22
    if-ne v2, v3, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/LocationCameraController;->setBearing(F)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    :pswitch_0
    move-object/from16 v1, p1

    .line 33
    .line 34
    check-cast v1, Ljava/lang/Float;

    .line 35
    .line 36
    iget v2, v0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    .line 37
    .line 38
    const/16 v3, 0x24

    .line 39
    .line 40
    if-ne v2, v3, :cond_2

    .line 41
    .line 42
    iget-object v2, v0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 43
    .line 44
    iget-object v2, v2, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 45
    .line 46
    invoke-virtual {v2}, Lorg/maplibre/android/maps/Transform;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-wide v2, v2, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 51
    .line 52
    const-wide/16 v4, 0x0

    .line 53
    .line 54
    cmpl-double v2, v2, v4

    .line 55
    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/LocationCameraController;->setBearing(F)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void

    .line 67
    :pswitch_1
    move-object/from16 v3, p1

    .line 68
    .line 69
    check-cast v3, Lorg/maplibre/android/geometry/LatLng;

    .line 70
    .line 71
    iget-boolean v1, v0, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning:Z

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iput-object v3, v0, Lorg/maplibre/android/location/LocationCameraController;->lastLocation:Lorg/maplibre/android/geometry/LatLng;

    .line 77
    .line 78
    iget-object v1, v0, Lorg/maplibre/android/location/LocationCameraController;->transform:Lorg/maplibre/android/maps/Transform;

    .line 79
    .line 80
    iget-object v2, v0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-object v4, v2

    .line 86
    new-instance v2, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    .line 87
    .line 88
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    .line 89
    .line 90
    const/16 v16, 0x0

    .line 91
    .line 92
    move-object v6, v4

    .line 93
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 94
    .line 95
    move-object v8, v6

    .line 96
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 97
    .line 98
    move-object v10, v8

    .line 99
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    .line 100
    .line 101
    move-object v12, v10

    .line 102
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 103
    .line 104
    move-object/from16 v17, v12

    .line 105
    .line 106
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 107
    .line 108
    move-object/from16 p0, v0

    .line 109
    .line 110
    move-object/from16 v0, v17

    .line 111
    .line 112
    invoke-direct/range {v2 .. v16}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;-><init>(Lorg/maplibre/android/geometry/LatLng;DDDDDD[D)V

    .line 113
    .line 114
    .line 115
    const/4 v3, 0x0

    .line 116
    invoke-virtual {v1, v0, v2, v3}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    .line 117
    .line 118
    .line 119
    move-object/from16 v0, p0

    .line 120
    .line 121
    iget-object v0, v0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/LocationComponent$6;

    .line 122
    .line 123
    iget-object v0, v0, Lorg/maplibre/android/location/LocationComponent$6;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 124
    .line 125
    iget-object v0, v0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveListener:Lorg/maplibre/android/location/LocationComponent$1;

    .line 126
    .line 127
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent$1;->onCameraMove()V

    .line 128
    .line 129
    .line 130
    :goto_1
    return-void

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

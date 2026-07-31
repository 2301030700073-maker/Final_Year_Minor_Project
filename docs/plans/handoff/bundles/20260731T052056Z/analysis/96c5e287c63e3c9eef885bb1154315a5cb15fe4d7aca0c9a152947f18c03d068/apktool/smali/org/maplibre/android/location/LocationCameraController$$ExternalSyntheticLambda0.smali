.class public final synthetic Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/maplibre/android/location/LocationCameraController;


# direct methods
.method public synthetic constructor <init>(Lorg/maplibre/android/location/LocationCameraController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;->f$0:Lorg/maplibre/android/location/LocationCameraController;

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
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v0, v0, Lorg/maplibre/android/location/LocationCameraController$$ExternalSyntheticLambda0;->f$0:Lorg/maplibre/android/location/LocationCameraController;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    check-cast v1, Ljava/lang/Float;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-boolean v3, v0, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning:Z

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v3, v0, Lorg/maplibre/android/location/LocationCameraController;->transform:Lorg/maplibre/android/maps/Transform;

    .line 25
    .line 26
    iget-object v4, v0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 27
    .line 28
    float-to-double v11, v1

    .line 29
    new-instance v5, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    .line 30
    .line 31
    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    .line 32
    .line 33
    const/16 v19, 0x0

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 37
    .line 38
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    .line 39
    .line 40
    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 41
    .line 42
    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    .line 43
    .line 44
    invoke-direct/range {v5 .. v19}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;-><init>(Lorg/maplibre/android/geometry/LatLng;DDDDDD[D)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v4, v5, v2}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/LocationComponent$6;

    .line 51
    .line 52
    iget-object v0, v0, Lorg/maplibre/android/location/LocationComponent$6;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 53
    .line 54
    iget-object v0, v0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveListener:Lorg/maplibre/android/location/LocationComponent$1;

    .line 55
    .line 56
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent$1;->onCameraMove()V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void

    .line 60
    :pswitch_0
    move-object/from16 v17, p1

    .line 61
    .line 62
    check-cast v17, [D

    .line 63
    .line 64
    iget-boolean v1, v0, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning:Z

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object v1, v0, Lorg/maplibre/android/location/LocationCameraController;->transform:Lorg/maplibre/android/maps/Transform;

    .line 70
    .line 71
    iget-object v3, v0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 72
    .line 73
    move-object v4, v3

    .line 74
    new-instance v3, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    .line 75
    .line 76
    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 77
    .line 78
    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    .line 79
    .line 80
    move-object v5, v4

    .line 81
    const/4 v4, 0x0

    .line 82
    move-object v7, v5

    .line 83
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 84
    .line 85
    move-object v9, v7

    .line 86
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 87
    .line 88
    move-object v11, v9

    .line 89
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    .line 90
    .line 91
    move-object/from16 v18, v11

    .line 92
    .line 93
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    .line 94
    .line 95
    move-object/from16 v19, v0

    .line 96
    .line 97
    move-object/from16 v0, v18

    .line 98
    .line 99
    invoke-direct/range {v3 .. v17}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;-><init>(Lorg/maplibre/android/geometry/LatLng;DDDDDD[D)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0, v3, v2}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    .line 103
    .line 104
    .line 105
    move-object/from16 v0, v19

    .line 106
    .line 107
    iget-object v0, v0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/LocationComponent$6;

    .line 108
    .line 109
    iget-object v0, v0, Lorg/maplibre/android/location/LocationComponent$6;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 110
    .line 111
    iget-object v0, v0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveListener:Lorg/maplibre/android/location/LocationComponent$1;

    .line 112
    .line 113
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent$1;->onCameraMove()V

    .line 114
    .line 115
    .line 116
    :goto_1
    return-void

    .line 117
    :pswitch_1
    move-object/from16 v1, p1

    .line 118
    .line 119
    check-cast v1, Ljava/lang/Float;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iget-boolean v3, v0, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning:Z

    .line 126
    .line 127
    if-eqz v3, :cond_2

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_2
    iget-object v3, v0, Lorg/maplibre/android/location/LocationCameraController;->transform:Lorg/maplibre/android/maps/Transform;

    .line 131
    .line 132
    iget-object v4, v0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 133
    .line 134
    float-to-double v5, v1

    .line 135
    new-instance v1, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;

    .line 136
    .line 137
    invoke-direct {v1, v5, v6}, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;-><init>(D)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v4, v1, v2}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, v0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/LocationComponent$6;

    .line 144
    .line 145
    iget-object v0, v0, Lorg/maplibre/android/location/LocationComponent$6;->this$0:Lorg/maplibre/android/location/LocationComponent;

    .line 146
    .line 147
    iget-object v0, v0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveListener:Lorg/maplibre/android/location/LocationComponent$1;

    .line 148
    .line 149
    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent$1;->onCameraMove()V

    .line 150
    .line 151
    .line 152
    :goto_2
    return-void

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

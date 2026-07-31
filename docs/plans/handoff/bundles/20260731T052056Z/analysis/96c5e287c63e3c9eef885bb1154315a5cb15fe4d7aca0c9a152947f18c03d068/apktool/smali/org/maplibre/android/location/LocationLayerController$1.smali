.class public final Lorg/maplibre/android/location/LocationLayerController$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/maplibre/android/location/LocationLayerController;


# direct methods
.method public synthetic constructor <init>(Lorg/maplibre/android/location/LocationLayerController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/maplibre/android/location/LocationLayerController$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/maplibre/android/location/LocationLayerController$1;->this$0:Lorg/maplibre/android/location/LocationLayerController;

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
    .locals 4

    .line 1
    iget v0, p0, Lorg/maplibre/android/location/LocationLayerController$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController$1;->this$0:Lorg/maplibre/android/location/LocationLayerController;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/Float;

    .line 9
    .line 10
    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 11
    .line 12
    iget-object v0, v0, Lorg/maplibre/android/location/LocationComponentOptions;->pulseFadeEnabled:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/high16 v1, 0x42c80000    # 100.0f

    .line 25
    .line 26
    div-float/2addr v0, v1

    .line 27
    const/high16 v1, 0x40400000    # 3.0f

    .line 28
    .line 29
    mul-float/2addr v0, v1

    .line 30
    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    .line 32
    sub-float/2addr v1, v0

    .line 33
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iget-object v1, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lorg/maplibre/geojson/Feature;

    .line 48
    .line 49
    const-string v2, "mapbox-property-pulsing-circle-radius"

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v1, v2, p1}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 56
    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object p1, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Lorg/maplibre/geojson/Feature;

    .line 63
    .line 64
    const-string v1, "mapbox-property-pulsing-circle-opacity"

    .line 65
    .line 66
    invoke-virtual {p1, v1, v0}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-virtual {p0}, Lokio/internal/DefaultSocket;->refreshSource()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_0
    check-cast p1, Ljava/lang/Float;

    .line 74
    .line 75
    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Lorg/maplibre/geojson/Feature;

    .line 86
    .line 87
    const-string v1, "mapbox-property-accuracy-radius"

    .line 88
    .line 89
    invoke-virtual {v0, v1, p1}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lokio/internal/DefaultSocket;->refreshSource()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    .line 97
    .line 98
    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Lorg/maplibre/geojson/Feature;

    .line 109
    .line 110
    const-string v1, "mapbox-property-compass-bearing"

    .line 111
    .line 112
    invoke-virtual {v0, v1, p1}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lokio/internal/DefaultSocket;->refreshSource()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_2
    check-cast p1, Ljava/lang/Float;

    .line 120
    .line 121
    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Lokio/internal/DefaultSocket;->setGpsBearing(Ljava/lang/Float;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :pswitch_3
    check-cast p1, Lorg/maplibre/android/geometry/LatLng;

    .line 128
    .line 129
    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    invoke-virtual {p1}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 139
    .line 140
    .line 141
    move-result-wide v2

    .line 142
    invoke-static {v0, v1, v2, v3}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object v0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v0, Lorg/maplibre/geojson/Feature;

    .line 149
    .line 150
    invoke-virtual {v0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-eqz v0, :cond_2

    .line 155
    .line 156
    invoke-static {p1, v0}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/Feature;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iput-object p1, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 161
    .line 162
    invoke-virtual {p0}, Lokio/internal/DefaultSocket;->refreshSource()V

    .line 163
    .line 164
    .line 165
    :cond_2
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

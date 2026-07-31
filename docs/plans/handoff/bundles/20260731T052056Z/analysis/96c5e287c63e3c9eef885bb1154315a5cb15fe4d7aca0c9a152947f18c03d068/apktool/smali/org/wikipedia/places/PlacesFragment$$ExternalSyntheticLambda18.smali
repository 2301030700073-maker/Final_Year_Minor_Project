.class public final synthetic Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/places/PlacesFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/places/PlacesFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda18;->f$0:Lorg/wikipedia/places/PlacesFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCameraIdle()V
    .locals 12

    .line 1
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda18;->f$0:Lorg/wikipedia/places/PlacesFragment;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->mapboxMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    iget-object v0, v0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_8

    .line 14
    .line 15
    iget-object v0, v0, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 16
    .line 17
    if-eqz v0, :cond_8

    .line 18
    .line 19
    new-instance v1, Landroid/location/Location;

    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->lastLocation:Landroid/location/Location;

    .line 41
    .line 42
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->mapboxMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-object v1, v1, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 47
    .line 48
    invoke-virtual {v1}, Lorg/maplibre/android/maps/Transform;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    iget-wide v1, v1, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-wide/high16 v1, 0x402e000000000000L    # 15.0

    .line 58
    .line 59
    :goto_0
    iput-wide v1, p0, Lorg/wikipedia/places/PlacesFragment;->lastZoom:D

    .line 60
    .line 61
    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    .line 62
    .line 63
    cmpg-double v1, v1, v3

    .line 64
    .line 65
    if-gez v1, :cond_1

    .line 66
    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :cond_1
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->mapboxMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 70
    .line 71
    const-wide/16 v2, 0x0

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    iget-object v1, v1, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 76
    .line 77
    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView$2;->getVisibleRegion()Lorg/maplibre/android/geometry/VisibleRegion;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v1, v1, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 82
    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    invoke-virtual {v1}, Lorg/maplibre/android/geometry/LatLngBounds;->getLatitudeSpan()D

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move-wide v4, v2

    .line 91
    :goto_1
    const-wide v6, 0x3fc999999999999aL    # 0.2

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    mul-double/2addr v4, v6

    .line 97
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->mapboxMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 98
    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    iget-object v1, v1, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 102
    .line 103
    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapView$2;->getVisibleRegion()Lorg/maplibre/android/geometry/VisibleRegion;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v1, v1, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

    .line 108
    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    invoke-virtual {v1}, Lorg/maplibre/android/geometry/LatLngBounds;->getLongitudeSpan()D

    .line 112
    .line 113
    .line 114
    move-result-wide v8

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    move-wide v8, v2

    .line 117
    :goto_2
    mul-double/2addr v8, v6

    .line 118
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->lastLocationQueried:Landroid/location/Location;

    .line 119
    .line 120
    if-eqz v1, :cond_6

    .line 121
    .line 122
    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 123
    .line 124
    .line 125
    move-result-wide v6

    .line 126
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->lastLocationQueried:Landroid/location/Location;

    .line 127
    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    .line 131
    .line 132
    .line 133
    move-result-wide v10

    .line 134
    goto :goto_3

    .line 135
    :cond_4
    move-wide v10, v2

    .line 136
    :goto_3
    sub-double/2addr v6, v10

    .line 137
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    .line 138
    .line 139
    .line 140
    move-result-wide v6

    .line 141
    cmpg-double v1, v6, v4

    .line 142
    .line 143
    if-gez v1, :cond_6

    .line 144
    .line 145
    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 146
    .line 147
    .line 148
    move-result-wide v4

    .line 149
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->lastLocationQueried:Landroid/location/Location;

    .line 150
    .line 151
    if-eqz v1, :cond_5

    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    .line 154
    .line 155
    .line 156
    move-result-wide v2

    .line 157
    :cond_5
    sub-double/2addr v4, v2

    .line 158
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 159
    .line 160
    .line 161
    move-result-wide v1

    .line 162
    cmpg-double v1, v1, v8

    .line 163
    .line 164
    if-gez v1, :cond_6

    .line 165
    .line 166
    iget-wide v1, p0, Lorg/wikipedia/places/PlacesFragment;->lastZoom:D

    .line 167
    .line 168
    iget-wide v3, p0, Lorg/wikipedia/places/PlacesFragment;->lastZoomQueried:D

    .line 169
    .line 170
    sub-double/2addr v1, v3

    .line 171
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 172
    .line 173
    .line 174
    move-result-wide v1

    .line 175
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 176
    .line 177
    cmpg-double v1, v1, v3

    .line 178
    .line 179
    if-gez v1, :cond_6

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_6
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->lastLocation:Landroid/location/Location;

    .line 183
    .line 184
    iput-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->lastLocationQueried:Landroid/location/Location;

    .line 185
    .line 186
    iget-wide v1, p0, Lorg/wikipedia/places/PlacesFragment;->lastZoom:D

    .line 187
    .line 188
    iput-wide v1, p0, Lorg/wikipedia/places/PlacesFragment;->lastZoomQueried:D

    .line 189
    .line 190
    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 191
    .line 192
    .line 193
    move-result-wide v1

    .line 194
    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 195
    .line 196
    .line 197
    move-result-wide v3

    .line 198
    iget-object v5, p0, Lorg/wikipedia/places/PlacesFragment;->mapboxMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 199
    .line 200
    if-eqz v5, :cond_7

    .line 201
    .line 202
    iget-object v5, v5, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 203
    .line 204
    invoke-virtual {v5}, Lorg/maplibre/android/maps/Transform;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    if-eqz v5, :cond_7

    .line 209
    .line 210
    iget-wide v5, v5, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 211
    .line 212
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    goto :goto_4

    .line 217
    :cond_7
    const/4 v5, 0x0

    .line 218
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string v7, ">>> requesting update: "

    .line 221
    .line 222
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v1, ", "

    .line 229
    .line 230
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 254
    .line 255
    .line 256
    move-result-wide v3

    .line 257
    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 258
    .line 259
    .line 260
    move-result-wide v5

    .line 261
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->getSearchRadius()I

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    invoke-virtual/range {v2 .. v7}, Lorg/wikipedia/places/PlacesFragmentViewModel;->fetchNearbyPages(DDI)V

    .line 266
    .line 267
    .line 268
    :cond_8
    :goto_5
    return-void
.end method

.class public final Lorg/maplibre/android/location/LocationLayerController;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final accuracyValueListener:Lorg/maplibre/android/location/LocationLayerController$1;

.field public final bitmapProvider:Landroidx/navigation/internal/NavContext;

.field public final compassBearingValueListener:Lorg/maplibre/android/location/LocationLayerController$1;

.field public final gpsBearingValueListener:Lorg/maplibre/android/location/LocationLayerController$1;

.field public final internalRenderModeChangedListener:Lorg/maplibre/android/location/LocationComponent$9;

.field public isHidden:Z

.field public isStale:Z

.field public final latLngValueListener:Lorg/maplibre/android/location/LocationLayerController$1;

.field public final locationLayerRenderer:Lokio/internal/DefaultSocket;

.field public final maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

.field public options:Lorg/maplibre/android/location/LocationComponentOptions;

.field public positionManager:Lokhttp3/MultipartBody$Builder;

.field public final pulsingCircleRadiusListener:Lorg/maplibre/android/location/LocationLayerController$1;

.field public renderMode:I


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Style;Lorg/wikipedia/login/LoginClient;Lokio/Path$Companion;Landroidx/navigation/internal/NavContext;Lorg/maplibre/android/location/LocationComponentOptions;Lorg/maplibre/android/location/LocationComponent$9;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    .line 6
    .line 7
    new-instance v1, Lorg/maplibre/android/location/LocationLayerController$1;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, v2}, Lorg/maplibre/android/location/LocationLayerController$1;-><init>(Lorg/maplibre/android/location/LocationLayerController;I)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lorg/maplibre/android/location/LocationLayerController;->latLngValueListener:Lorg/maplibre/android/location/LocationLayerController$1;

    .line 14
    .line 15
    new-instance v1, Lorg/maplibre/android/location/LocationLayerController$1;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Lorg/maplibre/android/location/LocationLayerController$1;-><init>(Lorg/maplibre/android/location/LocationLayerController;I)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lorg/maplibre/android/location/LocationLayerController;->gpsBearingValueListener:Lorg/maplibre/android/location/LocationLayerController$1;

    .line 21
    .line 22
    new-instance v0, Lorg/maplibre/android/location/LocationLayerController$1;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/location/LocationLayerController$1;-><init>(Lorg/maplibre/android/location/LocationLayerController;I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->compassBearingValueListener:Lorg/maplibre/android/location/LocationLayerController$1;

    .line 29
    .line 30
    new-instance v0, Lorg/maplibre/android/location/LocationLayerController$1;

    .line 31
    .line 32
    const/4 v1, 0x3

    .line 33
    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/location/LocationLayerController$1;-><init>(Lorg/maplibre/android/location/LocationLayerController;I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->accuracyValueListener:Lorg/maplibre/android/location/LocationLayerController$1;

    .line 37
    .line 38
    new-instance v0, Lorg/maplibre/android/location/LocationLayerController$1;

    .line 39
    .line 40
    const/4 v1, 0x4

    .line 41
    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/location/LocationLayerController$1;-><init>(Lorg/maplibre/android/location/LocationLayerController;I)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->pulsingCircleRadiusListener:Lorg/maplibre/android/location/LocationLayerController$1;

    .line 45
    .line 46
    iput-object p1, p0, Lorg/maplibre/android/location/LocationLayerController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 47
    .line 48
    iput-object p5, p0, Lorg/maplibre/android/location/LocationLayerController;->bitmapProvider:Landroidx/navigation/internal/NavContext;

    .line 49
    .line 50
    iput-object p7, p0, Lorg/maplibre/android/location/LocationLayerController;->internalRenderModeChangedListener:Lorg/maplibre/android/location/LocationComponent$9;

    .line 51
    .line 52
    iget-boolean p1, p6, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState:Z

    .line 53
    .line 54
    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationLayerController;->isStale:Z

    .line 55
    .line 56
    new-instance p5, Lokio/internal/DefaultSocket;

    .line 57
    .line 58
    invoke-direct {p5, p3, p4, p1}, Lokio/internal/DefaultSocket;-><init>(Lorg/wikipedia/login/LoginClient;Lokio/Path$Companion;Z)V

    .line 59
    .line 60
    .line 61
    iput-object p5, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 62
    .line 63
    invoke-virtual {p0, p2, p6}, Lorg/maplibre/android/location/LocationLayerController;->initializeComponents(Lorg/maplibre/android/maps/Style;Lorg/maplibre/android/location/LocationComponentOptions;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final applyStyle(Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->positionManager:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    iget-object v1, p1, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Ljava/lang/String;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eq v3, v1, :cond_0

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v3, v0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    if-eq v3, v2, :cond_2

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    :cond_1
    move v3, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move v3, v5

    .line 40
    :goto_0
    iput-object v1, v0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object v2, v0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 43
    .line 44
    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 45
    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    iget-object v1, v0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Ljava/util/HashSet;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Ljava/lang/String;

    .line 67
    .line 68
    iget-object v6, v0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v6, Lorg/maplibre/android/maps/Style;

    .line 71
    .line 72
    invoke-virtual {v6, v3}, Lorg/maplibre/android/maps/Style;->removeLayer(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lorg/maplibre/android/location/LocationLayerController;->positionManager:Lokhttp3/MultipartBody$Builder;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lokio/internal/DefaultSocket;->addLayers(Lokhttp3/MultipartBody$Builder;)V

    .line 82
    .line 83
    .line 84
    iget-boolean v1, p0, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    .line 85
    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    iput-boolean v4, p0, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    .line 89
    .line 90
    invoke-virtual {v0}, Lokio/internal/DefaultSocket;->hide()V

    .line 91
    .line 92
    .line 93
    :cond_4
    iput-object p1, p0, Lorg/maplibre/android/location/LocationLayerController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationLayerController;->styleBitmaps(Lorg/maplibre/android/location/LocationComponentOptions;)V

    .line 96
    .line 97
    .line 98
    iget v1, p1, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAlpha:F

    .line 99
    .line 100
    iget v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyColor:I

    .line 101
    .line 102
    iget-object v3, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v3, Lorg/maplibre/geojson/Feature;

    .line 105
    .line 106
    const-string v6, "mapbox-property-accuracy-alpha"

    .line 107
    .line 108
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v3, v6, v1}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v1, Lorg/maplibre/geojson/Feature;

    .line 118
    .line 119
    const-string v3, "mapbox-property-accuracy-color"

    .line 120
    .line 121
    invoke-static {v2}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->colorToRgbaString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v3, v2}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lokio/internal/DefaultSocket;->refreshSource()V

    .line 129
    .line 130
    .line 131
    new-instance v1, Lorg/maplibre/android/style/expressions/Expression$Interpolator;

    .line 132
    .line 133
    const-string v2, "linear"

    .line 134
    .line 135
    new-array v3, v5, [Lorg/maplibre/android/style/expressions/Expression;

    .line 136
    .line 137
    invoke-direct {v1, v2, v3}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    .line 138
    .line 139
    .line 140
    new-instance v2, Lorg/maplibre/android/style/expressions/Expression;

    .line 141
    .line 142
    const-string/jumbo v3, "zoom"

    .line 143
    .line 144
    .line 145
    new-array v6, v5, [Lorg/maplibre/android/style/expressions/Expression;

    .line 146
    .line 147
    invoke-direct {v2, v3, v6}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    .line 148
    .line 149
    .line 150
    iget-object v3, p0, Lorg/maplibre/android/location/LocationLayerController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 151
    .line 152
    invoke-virtual {v3}, Lorg/maplibre/android/maps/MapLibreMap;->getMinZoomLevel()D

    .line 153
    .line 154
    .line 155
    move-result-wide v6

    .line 156
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    iget v7, p1, Lorg/maplibre/android/location/LocationComponentOptions;->minZoomIconScale:F

    .line 161
    .line 162
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-static {v6, v7}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lokhttp3/FormBody$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v3}, Lorg/maplibre/android/maps/MapLibreMap;->getMaxZoomLevel()D

    .line 171
    .line 172
    .line 173
    move-result-wide v7

    .line 174
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    iget v7, p1, Lorg/maplibre/android/location/LocationComponentOptions;->maxZoomIconScale:F

    .line 179
    .line 180
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-static {v3, v7}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lokhttp3/FormBody$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    const/4 v7, 0x2

    .line 189
    new-array v8, v7, [Lokhttp3/FormBody$Builder;

    .line 190
    .line 191
    aput-object v6, v8, v5

    .line 192
    .line 193
    aput-object v3, v8, v4

    .line 194
    .line 195
    invoke-static {v8}, Lokhttp3/FormBody$Builder;->toExpressionArray([Lokhttp3/FormBody$Builder;)[Lorg/maplibre/android/style/expressions/Expression;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    new-instance v6, Lorg/maplibre/android/style/expressions/Expression;

    .line 200
    .line 201
    new-array v8, v7, [Lorg/maplibre/android/style/expressions/Expression;

    .line 202
    .line 203
    aput-object v1, v8, v5

    .line 204
    .line 205
    aput-object v2, v8, v4

    .line 206
    .line 207
    invoke-static {v8, v3}, Lorg/maplibre/android/style/expressions/Expression;->join([Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)[Lorg/maplibre/android/style/expressions/Expression;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const-string v2, "interpolate"

    .line 212
    .line 213
    invoke-direct {v6, v2, v1}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    .line 214
    .line 215
    .line 216
    iget-object v1, v0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v1, Ljava/util/HashSet;

    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_6

    .line 229
    .line 230
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    check-cast v2, Ljava/lang/String;

    .line 235
    .line 236
    iget-object v3, v0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v3, Lorg/maplibre/android/maps/Style;

    .line 239
    .line 240
    invoke-virtual {v3, v2}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    instance-of v3, v2, Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 245
    .line 246
    if-eqz v3, :cond_5

    .line 247
    .line 248
    new-instance v3, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 249
    .line 250
    const-string v8, "icon-size"

    .line 251
    .line 252
    invoke-direct {v3, v8, v6}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    new-array v8, v4, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 256
    .line 257
    aput-object v3, v8, v5

    .line 258
    .line 259
    invoke-virtual {v2, v8}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_6
    iget-object v1, v0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v1, Lorg/maplibre/android/maps/Style;

    .line 266
    .line 267
    const-string v2, "mapbox-location-pulsing-circle-layer"

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    if-eqz v1, :cond_7

    .line 274
    .line 275
    invoke-virtual {v0, v2, v4}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 276
    .line 277
    .line 278
    iget-object v0, v0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v0, Lorg/maplibre/android/maps/Style;

    .line 281
    .line 282
    invoke-virtual {v0, v2}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    const-string v1, "mapbox-property-pulsing-circle-radius"

    .line 287
    .line 288
    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    new-instance v2, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 293
    .line 294
    const-string v3, "circle-radius"

    .line 295
    .line 296
    invoke-direct {v2, v3, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    iget-object v1, p1, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor:Ljava/lang/Integer;

    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    new-instance v3, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 306
    .line 307
    const-string v6, "circle-color"

    .line 308
    .line 309
    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->colorToRgbaString(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-direct {v3, v6, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    iget-object v1, p1, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor:Ljava/lang/Integer;

    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    new-instance v6, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 323
    .line 324
    const-string v8, "circle-stroke-color"

    .line 325
    .line 326
    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->colorToRgbaString(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-direct {v6, v8, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    const-string v1, "mapbox-property-pulsing-circle-opacity"

    .line 334
    .line 335
    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    new-instance v8, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 340
    .line 341
    const-string v9, "circle-opacity"

    .line 342
    .line 343
    invoke-direct {v8, v9, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    const/4 v1, 0x4

    .line 347
    new-array v1, v1, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 348
    .line 349
    aput-object v2, v1, v5

    .line 350
    .line 351
    aput-object v3, v1, v4

    .line 352
    .line 353
    aput-object v6, v1, v7

    .line 354
    .line 355
    const/4 v2, 0x3

    .line 356
    aput-object v8, v1, v2

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 359
    .line 360
    .line 361
    :cond_7
    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationLayerController;->determineIconsSource(Lorg/maplibre/android/location/LocationComponentOptions;)V

    .line 362
    .line 363
    .line 364
    iget-boolean p1, p0, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    .line 365
    .line 366
    if-nez p1, :cond_8

    .line 367
    .line 368
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationLayerController;->show()V

    .line 369
    .line 370
    .line 371
    :cond_8
    return-void
.end method

.method public final determineIconsSource(Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, Lorg/maplibre/android/location/LocationComponentOptions;->gpsName:Ljava/lang/String;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundName:Ljava/lang/String;

    .line 11
    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const-string v0, "mapbox-location-icon"

    .line 16
    .line 17
    :goto_1
    iget-object v1, p1, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleName:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_2
    const-string v1, "mapbox-location-stale-icon"

    .line 23
    .line 24
    :goto_2
    iget-object v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundName:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_3
    const-string v2, "mapbox-location-stroke-icon"

    .line 30
    .line 31
    :goto_3
    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleName:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v3, :cond_4

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_4
    const-string v3, "mapbox-location-background-stale-icon"

    .line 37
    .line 38
    :goto_4
    iget-object p1, p1, Lorg/maplibre/android/location/LocationComponentOptions;->bearingName:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    goto :goto_5

    .line 43
    :cond_5
    const-string p1, "mapbox-location-bearing-icon"

    .line 44
    .line 45
    :goto_5
    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 46
    .line 47
    iget-object v4, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v4, Lorg/maplibre/geojson/Feature;

    .line 50
    .line 51
    const-string v5, "mapbox-property-foreground-icon"

    .line 52
    .line 53
    invoke-virtual {v4, v5, v0}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lorg/maplibre/geojson/Feature;

    .line 59
    .line 60
    const-string v4, "mapbox-property-background-icon"

    .line 61
    .line 62
    invoke-virtual {v0, v4, v2}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Lorg/maplibre/geojson/Feature;

    .line 68
    .line 69
    const-string v2, "mapbox-property-foreground-stale-icon"

    .line 70
    .line 71
    invoke-virtual {v0, v2, v1}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Lorg/maplibre/geojson/Feature;

    .line 77
    .line 78
    const-string v1, "mapbox-property-background-stale-icon"

    .line 79
    .line 80
    invoke-virtual {v0, v1, v3}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Lorg/maplibre/geojson/Feature;

    .line 86
    .line 87
    const-string v1, "mapbox-property-shadow-icon"

    .line 88
    .line 89
    invoke-virtual {v0, v1, p1}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lokio/internal/DefaultSocket;->refreshSource()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final initializeComponents(Lorg/maplibre/android/maps/Style;Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 6

    .line 1
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    iget-object v1, p2, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p2, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, p1, v1, v2}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->positionManager:Lokhttp3/MultipartBody$Builder;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 13
    .line 14
    iput-object p1, v0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p1, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lorg/maplibre/geojson/Feature;

    .line 19
    .line 20
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    new-instance v2, Lorg/maplibre/android/style/sources/GeoJsonSource;

    .line 23
    .line 24
    new-instance v3, Lorg/maplibre/android/style/sources/GeoJsonOptions;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    const/16 v4, 0x10

    .line 30
    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v5, "maxzoom"

    .line 36
    .line 37
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string v4, "synchronousUpdate"

    .line 41
    .line 42
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "mapbox-location-source"

    .line 49
    .line 50
    invoke-virtual {v2, v1, v3}, Lorg/maplibre/android/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/Feature;)V

    .line 54
    .line 55
    .line 56
    iput-object v2, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 57
    .line 58
    iget-object p1, v0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Lorg/maplibre/android/maps/Style;

    .line 61
    .line 62
    invoke-virtual {p1, v2}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lorg/maplibre/android/location/LocationLayerController;->positionManager:Lokhttp3/MultipartBody$Builder;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lokio/internal/DefaultSocket;->addLayers(Lokhttp3/MultipartBody$Builder;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p2}, Lorg/maplibre/android/location/LocationLayerController;->applyStyle(Lorg/maplibre/android/location/LocationComponentOptions;)V

    .line 71
    .line 72
    .line 73
    iget-boolean p1, p0, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    .line 74
    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    .line 79
    .line 80
    invoke-virtual {v0}, Lokio/internal/DefaultSocket;->hide()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationLayerController;->show()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final show()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    .line 3
    .line 4
    iget v1, p0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    .line 5
    .line 6
    iget-boolean v2, p0, Lorg/maplibre/android/location/LocationLayerController;->isStale:Z

    .line 7
    .line 8
    const/4 v3, 0x4

    .line 9
    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 10
    .line 11
    const-string v4, "mapbox-location-bearing-layer"

    .line 12
    .line 13
    const-string v5, "mapbox-location-accuracy-layer"

    .line 14
    .line 15
    const-string v6, "mapbox-location-background-layer"

    .line 16
    .line 17
    const-string v7, "mapbox-location-foreground-layer"

    .line 18
    .line 19
    const-string v8, "mapbox-location-shadow-layer"

    .line 20
    .line 21
    const/4 v9, 0x1

    .line 22
    if-eq v1, v3, :cond_2

    .line 23
    .line 24
    const/16 v3, 0x8

    .line 25
    .line 26
    if-eq v1, v3, :cond_1

    .line 27
    .line 28
    const/16 v3, 0x12

    .line 29
    .line 30
    if-eq v1, v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, v8, v9}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v7, v9}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v6, v9}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    xor-int/lit8 v1, v2, 0x1

    .line 46
    .line 47
    invoke-virtual {p0, v5, v1}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v4, v0}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0, v8, v0}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v7, v9}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v6, v9}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v5, v0}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v4, v0}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0, v8, v9}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v7, v9}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v6, v9}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    xor-int/lit8 v0, v2, 0x1

    .line 80
    .line 81
    invoke-virtual {p0, v5, v0}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v4, v9}, Lokio/internal/DefaultSocket;->setLayerVisibility(Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method public final styleBitmaps(Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 13

    .line 1
    iget v0, p1, Lorg/maplibre/android/location/LocationComponentOptions;->elevation:F

    .line 2
    .line 3
    iget v1, p1, Lorg/maplibre/android/location/LocationComponentOptions;->gpsDrawable:I

    .line 4
    .line 5
    iget-object v2, p1, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleTintColor:Ljava/lang/Integer;

    .line 6
    .line 7
    iget-object v3, p1, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundTintColor:Ljava/lang/Integer;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    cmpl-float v0, v0, v4

    .line 11
    .line 12
    iget-object v4, p0, Lorg/maplibre/android/location/LocationLayerController;->bitmapProvider:Landroidx/navigation/internal/NavContext;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-lez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, v4, Landroidx/navigation/internal/NavContext;->context:Landroid/content/Context;

    .line 18
    .line 19
    const v6, 0x7f08025f

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v6, v5}, Lokhttp3/HttpUrl$Companion;->getDrawableFromRes(Landroid/content/Context;ILjava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v5, p1, Lorg/maplibre/android/location/LocationComponentOptions;->elevation:F

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 37
    .line 38
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    new-instance v9, Landroid/graphics/Canvas;

    .line 43
    .line 44
    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    const/4 v12, 0x0

    .line 56
    invoke-virtual {v0, v12, v12, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    .line 58
    .line 59
    :try_start_0
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    int-to-float v0, v6

    .line 63
    add-float/2addr v0, v5

    .line 64
    const/high16 v6, 0x3f000000    # 0.5f

    .line 65
    .line 66
    add-float/2addr v0, v6

    .line 67
    float-to-int v0, v0

    .line 68
    rem-int/lit8 v9, v0, 0x2

    .line 69
    .line 70
    const/4 v10, 0x1

    .line 71
    if-ne v9, v10, :cond_0

    .line 72
    .line 73
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    :cond_0
    int-to-float v7, v7

    .line 76
    add-float/2addr v7, v5

    .line 77
    add-float/2addr v7, v6

    .line 78
    float-to-int v5, v7

    .line 79
    rem-int/lit8 v6, v5, 0x2

    .line 80
    .line 81
    if-ne v6, v10, :cond_1

    .line 82
    .line 83
    add-int/lit8 v5, v5, -0x1

    .line 84
    .line 85
    :cond_1
    invoke-static {v8, v0, v5, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v0, "radius must be > 0"

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_2
    :goto_0
    iget v0, p1, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawable:I

    .line 102
    .line 103
    iget-object v6, p1, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundTintColor:Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v4, v0, v6}, Landroidx/navigation/internal/NavContext;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget v6, p1, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawableStale:I

    .line 110
    .line 111
    iget-object v7, p1, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleTintColor:Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v4, v6, v7}, Landroidx/navigation/internal/NavContext;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    iget v7, p1, Lorg/maplibre/android/location/LocationComponentOptions;->bearingDrawable:I

    .line 118
    .line 119
    iget-object v8, p1, Lorg/maplibre/android/location/LocationComponentOptions;->bearingTintColor:Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-virtual {v4, v7, v8}, Landroidx/navigation/internal/NavContext;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    iget v8, p1, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawable:I

    .line 126
    .line 127
    invoke-virtual {v4, v8, v3}, Landroidx/navigation/internal/NavContext;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    iget p1, p1, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawableStale:I

    .line 132
    .line 133
    invoke-virtual {v4, p1, v2}, Landroidx/navigation/internal/NavContext;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget v9, p0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    .line 138
    .line 139
    const/16 v10, 0x8

    .line 140
    .line 141
    if-ne v9, v10, :cond_3

    .line 142
    .line 143
    invoke-virtual {v4, v1, v3}, Landroidx/navigation/internal/NavContext;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-virtual {v4, v1, v2}, Landroidx/navigation/internal/NavContext;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    :cond_3
    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lokio/internal/DefaultSocket;

    .line 152
    .line 153
    iget-object v1, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v1, Lorg/maplibre/android/maps/Style;

    .line 156
    .line 157
    const-string v2, "mapbox-location-shadow-icon"

    .line 158
    .line 159
    if-eqz v5, :cond_4

    .line 160
    .line 161
    invoke-virtual {v1, v2, v5}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_4
    invoke-virtual {v1, v2}, Lorg/maplibre/android/maps/Style;->removeImage(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_1
    iget-object v1, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Lorg/maplibre/android/maps/Style;

    .line 171
    .line 172
    const-string v2, "mapbox-location-stroke-icon"

    .line 173
    .line 174
    invoke-virtual {v1, v2, v0}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v0, Lorg/maplibre/android/maps/Style;

    .line 180
    .line 181
    const-string v1, "mapbox-location-background-stale-icon"

    .line 182
    .line 183
    invoke-virtual {v0, v1, v6}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, Lorg/maplibre/android/maps/Style;

    .line 189
    .line 190
    const-string v1, "mapbox-location-bearing-icon"

    .line 191
    .line 192
    invoke-virtual {v0, v1, v7}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v0, Lorg/maplibre/android/maps/Style;

    .line 198
    .line 199
    const-string v1, "mapbox-location-icon"

    .line 200
    .line 201
    invoke-virtual {v0, v1, v8}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 202
    .line 203
    .line 204
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p0, Lorg/maplibre/android/maps/Style;

    .line 207
    .line 208
    const-string v0, "mapbox-location-stale-icon"

    .line 209
    .line 210
    invoke-virtual {p0, v0, p1}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

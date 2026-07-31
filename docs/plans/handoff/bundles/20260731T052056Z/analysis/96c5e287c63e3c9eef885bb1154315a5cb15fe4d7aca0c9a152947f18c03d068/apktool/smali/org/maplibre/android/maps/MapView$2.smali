.class public final Lorg/maplibre/android/maps/MapView$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final this$0:Ljava/lang/Object;

.field public final val$cameraChangeDispatcher:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/maps/CameraChangeDispatcher;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$2;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/maplibre/android/maps/MapView$2;->val$cameraChangeDispatcher:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/maplibre/android/maps/NativeMap;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$2;->val$cameraChangeDispatcher:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/maplibre/android/maps/MapView$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static degreesToRadians(D)D
    .locals 2

    .line 1
    const-wide v0, 0x4076800000000000L    # 360.0

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    rem-double/2addr p0, v0

    .line 7
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    mul-double/2addr p0, v0

    .line 13
    const-wide v0, 0x4066800000000000L    # 180.0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    div-double/2addr p0, v0

    .line 19
    return-wide p0
.end method


# virtual methods
.method public fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$2;->val$cameraChangeDispatcher:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/maplibre/android/maps/NativeMap;

    .line 4
    .line 5
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/NativeMapView;->latLngForPixel(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public getHeight()F
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$2;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/maplibre/android/maps/MapView;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    int-to-float p0, p0

    .line 10
    return p0
.end method

.method public getMetersPerPixelAtLatitude(D)D
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$2;->val$cameraChangeDispatcher:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/maplibre/android/maps/NativeMap;

    .line 4
    .line 5
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMapView;->getMetersPerPixelAtLatitude(D)D

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public getVisibleRegion()Lorg/maplibre/android/geometry/VisibleRegion;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/maplibre/android/maps/MapView$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lorg/maplibre/android/maps/MapView;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    int-to-float v2, v2

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    new-instance v3, Landroid/graphics/PointF;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    sub-float v5, v2, v4

    .line 21
    .line 22
    const/high16 v6, 0x40000000    # 2.0f

    .line 23
    .line 24
    div-float/2addr v5, v6

    .line 25
    add-float/2addr v5, v4

    .line 26
    sub-float v7, v1, v4

    .line 27
    .line 28
    div-float/2addr v7, v6

    .line 29
    add-float/2addr v7, v4

    .line 30
    invoke-direct {v3, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lorg/maplibre/android/maps/MapView$2;->fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    new-instance v5, Landroid/graphics/PointF;

    .line 38
    .line 39
    invoke-direct {v5, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v5}, Lorg/maplibre/android/maps/MapView$2;->fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    new-instance v5, Landroid/graphics/PointF;

    .line 47
    .line 48
    invoke-direct {v5, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v5}, Lorg/maplibre/android/maps/MapView$2;->fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    new-instance v5, Landroid/graphics/PointF;

    .line 56
    .line 57
    invoke-direct {v5, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v5}, Lorg/maplibre/android/maps/MapView$2;->fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    new-instance v2, Landroid/graphics/PointF;

    .line 65
    .line 66
    invoke-direct {v2, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lorg/maplibre/android/maps/MapView$2;->fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-wide v4, -0x3fa9800000000000L    # -90.0

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    const-wide v11, 0x4056800000000000L    # 90.0

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    move-wide v13, v4

    .line 105
    move-wide/from16 v17, v11

    .line 106
    .line 107
    const-wide/16 v4, 0x0

    .line 108
    .line 109
    const-wide/16 v11, 0x0

    .line 110
    .line 111
    const-wide/16 v15, 0x0

    .line 112
    .line 113
    const-wide/16 v19, 0x0

    .line 114
    .line 115
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    const-wide v21, 0x4076800000000000L    # 360.0

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    if-eqz v6, :cond_6

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    check-cast v6, Lorg/maplibre/android/geometry/LatLng;

    .line 131
    .line 132
    invoke-virtual {v3}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 133
    .line 134
    .line 135
    move-result-wide v23

    .line 136
    invoke-static/range {v23 .. v24}, Lorg/maplibre/android/maps/MapView$2;->degreesToRadians(D)D

    .line 137
    .line 138
    .line 139
    move-result-wide v23

    .line 140
    invoke-virtual {v6}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 141
    .line 142
    .line 143
    move-result-wide v25

    .line 144
    invoke-static/range {v25 .. v26}, Lorg/maplibre/android/maps/MapView$2;->degreesToRadians(D)D

    .line 145
    .line 146
    .line 147
    move-result-wide v25

    .line 148
    invoke-virtual {v3}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 149
    .line 150
    .line 151
    move-result-wide v27

    .line 152
    invoke-static/range {v27 .. v28}, Lorg/maplibre/android/maps/MapView$2;->degreesToRadians(D)D

    .line 153
    .line 154
    .line 155
    move-result-wide v27

    .line 156
    invoke-virtual {v6}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 157
    .line 158
    .line 159
    move-result-wide v29

    .line 160
    invoke-static/range {v29 .. v30}, Lorg/maplibre/android/maps/MapView$2;->degreesToRadians(D)D

    .line 161
    .line 162
    .line 163
    move-result-wide v29

    .line 164
    sub-double v25, v25, v23

    .line 165
    .line 166
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    .line 167
    .line 168
    .line 169
    move-result-wide v23

    .line 170
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    .line 171
    .line 172
    .line 173
    move-result-wide v31

    .line 174
    const-wide/16 v33, 0x0

    .line 175
    .line 176
    mul-double v1, v31, v23

    .line 177
    .line 178
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    .line 179
    .line 180
    .line 181
    move-result-wide v23

    .line 182
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    .line 183
    .line 184
    .line 185
    move-result-wide v31

    .line 186
    mul-double v31, v31, v23

    .line 187
    .line 188
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    .line 189
    .line 190
    .line 191
    move-result-wide v23

    .line 192
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    .line 193
    .line 194
    .line 195
    move-result-wide v27

    .line 196
    mul-double v27, v27, v23

    .line 197
    .line 198
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    .line 199
    .line 200
    .line 201
    move-result-wide v23

    .line 202
    mul-double v23, v23, v27

    .line 203
    .line 204
    move-object/from16 v25, v3

    .line 205
    .line 206
    move-wide/from16 v26, v4

    .line 207
    .line 208
    sub-double v3, v31, v23

    .line 209
    .line 210
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 211
    .line 212
    .line 213
    move-result-wide v1

    .line 214
    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    rem-double/2addr v1, v3

    .line 220
    const-wide v3, 0x4066800000000000L    # 180.0

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    mul-double/2addr v1, v3

    .line 226
    const-wide v3, 0x400921fb54442d18L    # Math.PI

    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    div-double/2addr v1, v3

    .line 232
    cmpl-double v1, v1, v33

    .line 233
    .line 234
    if-ltz v1, :cond_2

    .line 235
    .line 236
    invoke-virtual {v6}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 237
    .line 238
    .line 239
    move-result-wide v1

    .line 240
    invoke-virtual/range {v25 .. v25}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 241
    .line 242
    .line 243
    move-result-wide v3

    .line 244
    sub-double v23, v1, v3

    .line 245
    .line 246
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    .line 247
    .line 248
    .line 249
    move-result-wide v23

    .line 250
    cmpl-double v1, v1, v3

    .line 251
    .line 252
    if-lez v1, :cond_0

    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_0
    sub-double v23, v21, v23

    .line 256
    .line 257
    :goto_1
    cmpl-double v1, v23, v11

    .line 258
    .line 259
    if-lez v1, :cond_1

    .line 260
    .line 261
    invoke-virtual {v6}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 262
    .line 263
    .line 264
    move-result-wide v15

    .line 265
    move-wide/from16 v11, v23

    .line 266
    .line 267
    :cond_1
    move-wide/from16 v4, v26

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_2
    invoke-virtual/range {v25 .. v25}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 271
    .line 272
    .line 273
    move-result-wide v1

    .line 274
    invoke-virtual {v6}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 275
    .line 276
    .line 277
    move-result-wide v3

    .line 278
    sub-double v23, v1, v3

    .line 279
    .line 280
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    .line 281
    .line 282
    .line 283
    move-result-wide v23

    .line 284
    cmpl-double v1, v1, v3

    .line 285
    .line 286
    if-lez v1, :cond_3

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_3
    sub-double v23, v21, v23

    .line 290
    .line 291
    :goto_2
    cmpl-double v1, v23, v26

    .line 292
    .line 293
    if-lez v1, :cond_1

    .line 294
    .line 295
    invoke-virtual {v6}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 296
    .line 297
    .line 298
    move-result-wide v19

    .line 299
    move-wide/from16 v4, v23

    .line 300
    .line 301
    :goto_3
    invoke-virtual {v6}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 302
    .line 303
    .line 304
    move-result-wide v1

    .line 305
    cmpg-double v1, v13, v1

    .line 306
    .line 307
    if-gez v1, :cond_4

    .line 308
    .line 309
    invoke-virtual {v6}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 310
    .line 311
    .line 312
    move-result-wide v1

    .line 313
    move-wide v13, v1

    .line 314
    :cond_4
    invoke-virtual {v6}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 315
    .line 316
    .line 317
    move-result-wide v1

    .line 318
    cmpl-double v1, v17, v1

    .line 319
    .line 320
    if-lez v1, :cond_5

    .line 321
    .line 322
    invoke-virtual {v6}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 323
    .line 324
    .line 325
    move-result-wide v1

    .line 326
    move-wide/from16 v17, v1

    .line 327
    .line 328
    :cond_5
    move-object/from16 v3, v25

    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :cond_6
    cmpg-double v0, v15, v19

    .line 333
    .line 334
    if-gez v0, :cond_7

    .line 335
    .line 336
    new-instance v6, Lorg/maplibre/android/geometry/VisibleRegion;

    .line 337
    .line 338
    add-double v15, v15, v21

    .line 339
    .line 340
    invoke-static/range {v13 .. v20}, Lorg/maplibre/android/geometry/LatLngBounds;->from(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;

    .line 341
    .line 342
    .line 343
    move-result-object v11

    .line 344
    invoke-direct/range {v6 .. v11}, Lorg/maplibre/android/geometry/VisibleRegion;-><init>(Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLngBounds;)V

    .line 345
    .line 346
    .line 347
    return-object v6

    .line 348
    :cond_7
    new-instance v6, Lorg/maplibre/android/geometry/VisibleRegion;

    .line 349
    .line 350
    invoke-static/range {v13 .. v20}, Lorg/maplibre/android/geometry/LatLngBounds;->from(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;

    .line 351
    .line 352
    .line 353
    move-result-object v11

    .line 354
    invoke-direct/range {v6 .. v11}, Lorg/maplibre/android/geometry/VisibleRegion;-><init>(Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLngBounds;)V

    .line 355
    .line 356
    .line 357
    return-object v6
.end method

.method public getWidth()F
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$2;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/maplibre/android/maps/MapView;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    int-to-float p0, p0

    .line 10
    return p0
.end method

.method public toScreenLocation(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$2;->val$cameraChangeDispatcher:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/maplibre/android/maps/NativeMap;

    .line 4
    .line 5
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/NativeMapView;->pixelForLatLng(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

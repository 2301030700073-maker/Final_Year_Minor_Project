.class public final Lorg/maplibre/android/maps/MapView$4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/maplibre/android/maps/MapView$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/maplibre/android/maps/MapView$4;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/maplibre/android/maps/MapView$4;->$r8$classId:I

    .line 4
    .line 5
    iget-object v0, v0, Lorg/maplibre/android/maps/MapView$4;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v0, Lorg/maplibre/android/maps/MapGestureDetector;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->cancelAnimators()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    move-object v2, v0

    .line 17
    check-cast v2, Lorg/maplibre/android/maps/MapView;

    .line 18
    .line 19
    iget-boolean v0, v2, Lorg/maplibre/android/maps/MapView;->destroyed:Z

    .line 20
    .line 21
    if-nez v0, :cond_24

    .line 22
    .line 23
    iget-object v0, v2, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 24
    .line 25
    if-nez v0, :cond_24

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, v2, Lorg/maplibre/android/maps/MapView;->focalInvalidator:Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

    .line 32
    .line 33
    new-instance v3, Lorg/maplibre/android/maps/MapView$1;

    .line 34
    .line 35
    invoke-direct {v3, v2}, Lorg/maplibre/android/maps/MapView$1;-><init>(Lorg/maplibre/android/maps/MapView;)V

    .line 36
    .line 37
    .line 38
    iget-object v4, v1, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;->focalPointChangeListeners:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance v9, Lorg/maplibre/android/maps/MapView$2;

    .line 44
    .line 45
    iget-object v3, v2, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 46
    .line 47
    invoke-direct {v9, v3, v2}, Lorg/maplibre/android/maps/MapView$2;-><init>(Lorg/maplibre/android/maps/NativeMap;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance v8, Lorg/maplibre/android/maps/UiSettings;

    .line 51
    .line 52
    invoke-virtual {v2}, Lorg/maplibre/android/maps/MapView;->getPixelRatio()F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-direct {v8, v9, v1, v3, v2}, Lorg/maplibre/android/maps/UiSettings;-><init>(Lorg/maplibre/android/maps/MapView$2;Lorg/maplibre/android/maps/FocalPointChangeListener;FLorg/maplibre/android/maps/MapView;)V

    .line 57
    .line 58
    .line 59
    new-instance v3, Landroidx/collection/LongSparseArray;

    .line 60
    .line 61
    const/4 v13, 0x0

    .line 62
    invoke-direct {v3, v13}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance v4, Lorg/maplibre/android/maps/IconManager;

    .line 66
    .line 67
    iget-object v1, v2, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 68
    .line 69
    invoke-direct {v4, v1}, Lorg/maplibre/android/maps/IconManager;-><init>(Lorg/maplibre/android/maps/NativeMap;)V

    .line 70
    .line 71
    .line 72
    new-instance v5, Lorg/maplibre/android/maps/IconManager;

    .line 73
    .line 74
    iget-object v1, v2, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 75
    .line 76
    invoke-direct {v5, v3}, Lorg/maplibre/android/maps/IconManager;-><init>(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    new-instance v6, Lokhttp3/MultipartBody$Builder;

    .line 80
    .line 81
    invoke-direct {v6, v1, v3, v4}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    new-instance v7, Lorg/maplibre/android/maps/MapView$2;

    .line 85
    .line 86
    invoke-direct {v7, v1, v3}, Lorg/maplibre/android/maps/MapView$2;-><init>(Lorg/maplibre/android/maps/NativeMap;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Lcom/hcaptcha/sdk/HCaptcha;

    .line 90
    .line 91
    invoke-direct/range {v1 .. v7}, Lcom/hcaptcha/sdk/HCaptcha;-><init>(Lorg/maplibre/android/maps/MapView;Landroidx/collection/LongSparseArray;Lorg/maplibre/android/maps/IconManager;Lorg/maplibre/android/maps/IconManager;Lokhttp3/MultipartBody$Builder;Lorg/maplibre/android/maps/MapView$2;)V

    .line 92
    .line 93
    .line 94
    new-instance v5, Lorg/maplibre/android/maps/Transform;

    .line 95
    .line 96
    iget-object v3, v2, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 97
    .line 98
    iget-object v4, v2, Lorg/maplibre/android/maps/MapView;->cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 99
    .line 100
    invoke-direct {v5, v2, v3, v4}, Lorg/maplibre/android/maps/Transform;-><init>(Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/maps/NativeMap;Lorg/maplibre/android/maps/CameraChangeDispatcher;)V

    .line 101
    .line 102
    .line 103
    new-instance v12, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    move-object v7, v5

    .line 109
    new-instance v5, Lorg/maplibre/android/maps/MapLibreMap;

    .line 110
    .line 111
    iget-object v6, v2, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 112
    .line 113
    iget-object v10, v2, Lorg/maplibre/android/maps/MapView;->registerTouchListener:Lorg/maplibre/android/maps/IconManager;

    .line 114
    .line 115
    iget-object v11, v2, Lorg/maplibre/android/maps/MapView;->cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 116
    .line 117
    invoke-direct/range {v5 .. v12}, Lorg/maplibre/android/maps/MapLibreMap;-><init>(Lorg/maplibre/android/maps/NativeMap;Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/maps/UiSettings;Lorg/maplibre/android/maps/MapView$2;Lorg/maplibre/android/maps/IconManager;Lorg/maplibre/android/maps/CameraChangeDispatcher;Ljava/util/ArrayList;)V

    .line 118
    .line 119
    .line 120
    move-object v3, v5

    .line 121
    move-object v5, v7

    .line 122
    move-object v7, v8

    .line 123
    move-object v6, v9

    .line 124
    iput-object v3, v2, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 125
    .line 126
    iput-object v3, v1, Lcom/hcaptcha/sdk/HCaptcha;->handler:Ljava/lang/Object;

    .line 127
    .line 128
    iput-object v1, v3, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lcom/hcaptcha/sdk/HCaptcha;

    .line 129
    .line 130
    new-instance v3, Lorg/maplibre/android/maps/MapGestureDetector;

    .line 131
    .line 132
    iget-object v9, v2, Lorg/maplibre/android/maps/MapView;->cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 133
    .line 134
    move-object v4, v0

    .line 135
    move-object v8, v1

    .line 136
    invoke-direct/range {v3 .. v9}, Lorg/maplibre/android/maps/MapGestureDetector;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/maps/MapView$2;Lorg/maplibre/android/maps/UiSettings;Lcom/hcaptcha/sdk/HCaptcha;Lorg/maplibre/android/maps/CameraChangeDispatcher;)V

    .line 137
    .line 138
    .line 139
    iput-object v3, v2, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 140
    .line 141
    new-instance v0, Lorg/maplibre/android/maps/Style$Builder;

    .line 142
    .line 143
    invoke-direct {v0, v5, v7, v3}, Lorg/maplibre/android/maps/Style$Builder;-><init>(Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/maps/UiSettings;Lorg/maplibre/android/maps/MapGestureDetector;)V

    .line 144
    .line 145
    .line 146
    iput-object v0, v2, Lorg/maplibre/android/maps/MapView;->mapKeyListener:Lorg/maplibre/android/maps/Style$Builder;

    .line 147
    .line 148
    iget-object v0, v2, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 149
    .line 150
    new-instance v1, Lorg/maplibre/android/location/LocationComponent;

    .line 151
    .line 152
    invoke-direct {v1, v0, v5, v12}, Lorg/maplibre/android/location/LocationComponent;-><init>(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Transform;Ljava/util/ArrayList;)V

    .line 153
    .line 154
    .line 155
    iput-object v1, v0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    .line 156
    .line 157
    const/4 v0, 0x1

    .line 158
    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v2, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 174
    .line 175
    invoke-static {}, Lorg/maplibre/android/MapLibre;->isConnected()Ljava/lang/Boolean;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    check-cast v1, Lorg/maplibre/android/maps/NativeMapView;

    .line 184
    .line 185
    invoke-virtual {v1, v3}, Lorg/maplibre/android/maps/NativeMapView;->setReachability(Z)V

    .line 186
    .line 187
    .line 188
    iget-object v1, v2, Lorg/maplibre/android/maps/MapView;->savedInstanceState:Landroid/os/Bundle;

    .line 189
    .line 190
    iget-object v3, v2, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 191
    .line 192
    const/4 v5, 0x0

    .line 193
    if-nez v1, :cond_d

    .line 194
    .line 195
    iget-object v1, v2, Lorg/maplibre/android/maps/MapView;->maplibreMapOptions:Lorg/maplibre/android/maps/MapLibreMapOptions;

    .line 196
    .line 197
    iget-object v6, v3, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 198
    .line 199
    iget-object v7, v3, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 200
    .line 201
    iget-object v8, v3, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 202
    .line 203
    iget-object v9, v8, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 204
    .line 205
    iget-object v10, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    .line 206
    .line 207
    if-eqz v10, :cond_0

    .line 208
    .line 209
    sget-object v11, Lorg/maplibre/android/camera/CameraPosition;->DEFAULT:Lorg/maplibre/android/camera/CameraPosition;

    .line 210
    .line 211
    invoke-virtual {v10, v11}, Lorg/maplibre/android/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    if-nez v11, :cond_0

    .line 216
    .line 217
    invoke-static {v10}, Lorg/wikipedia/util/TabUtil;->newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    invoke-virtual {v8, v3, v10, v13}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    .line 222
    .line 223
    .line 224
    :cond_0
    iget-wide v10, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->minZoom:D

    .line 225
    .line 226
    const-wide/16 v14, 0x0

    .line 227
    .line 228
    cmpg-double v12, v10, v14

    .line 229
    .line 230
    move-wide/from16 v16, v14

    .line 231
    .line 232
    const-string v14, "Mbgl-Transform"

    .line 233
    .line 234
    if-ltz v12, :cond_2

    .line 235
    .line 236
    const-wide v18, 0x4039800000000000L    # 25.5

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    cmpl-double v12, v10, v18

    .line 242
    .line 243
    if-lez v12, :cond_1

    .line 244
    .line 245
    goto :goto_0

    .line 246
    :cond_1
    move-object v12, v9

    .line 247
    check-cast v12, Lorg/maplibre/android/maps/NativeMapView;

    .line 248
    .line 249
    invoke-virtual {v12, v10, v11}, Lorg/maplibre/android/maps/NativeMapView;->setMinZoom(D)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_2
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v15, "Not setting minZoomPreference, value is in unsupported range: "

    .line 256
    .line 257
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    invoke-static {v14, v10}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :goto_1
    iget-wide v10, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxZoom:D

    .line 271
    .line 272
    invoke-virtual {v8, v10, v11}, Lorg/maplibre/android/maps/Transform;->setMaxZoom(D)V

    .line 273
    .line 274
    .line 275
    iget-wide v10, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->minPitch:D

    .line 276
    .line 277
    cmpg-double v8, v10, v16

    .line 278
    .line 279
    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    .line 280
    .line 281
    if-ltz v8, :cond_4

    .line 282
    .line 283
    cmpl-double v8, v10, v18

    .line 284
    .line 285
    if-lez v8, :cond_3

    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_3
    move-object v8, v9

    .line 289
    check-cast v8, Lorg/maplibre/android/maps/NativeMapView;

    .line 290
    .line 291
    invoke-virtual {v8, v10, v11}, Lorg/maplibre/android/maps/NativeMapView;->setMinPitch(D)V

    .line 292
    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_4
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string v12, "Not setting minPitchPreference, value is in unsupported range: "

    .line 298
    .line 299
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    invoke-static {v14, v8}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    :goto_3
    iget-wide v10, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->maxPitch:D

    .line 313
    .line 314
    cmpg-double v8, v10, v16

    .line 315
    .line 316
    if-ltz v8, :cond_6

    .line 317
    .line 318
    cmpl-double v8, v10, v18

    .line 319
    .line 320
    if-lez v8, :cond_5

    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_5
    check-cast v9, Lorg/maplibre/android/maps/NativeMapView;

    .line 324
    .line 325
    invoke-virtual {v9, v10, v11}, Lorg/maplibre/android/maps/NativeMapView;->setMaxPitch(D)V

    .line 326
    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_6
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    const-string v9, "Not setting maxPitchPreference, value is in unsupported range: "

    .line 332
    .line 333
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v8

    .line 343
    invoke-static {v14, v8}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :goto_5
    iget-object v8, v3, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 347
    .line 348
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 349
    .line 350
    .line 351
    move-result-object v9

    .line 352
    iget-boolean v10, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->zoomGesturesEnabled:Z

    .line 353
    .line 354
    iput-boolean v10, v8, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    .line 355
    .line 356
    iget-boolean v10, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->scrollGesturesEnabled:Z

    .line 357
    .line 358
    iput-boolean v10, v8, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    .line 359
    .line 360
    iget-boolean v10, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->horizontalScrollGesturesEnabled:Z

    .line 361
    .line 362
    iput-boolean v10, v8, Lorg/maplibre/android/maps/UiSettings;->horizontalScrollGesturesEnabled:Z

    .line 363
    .line 364
    iget-boolean v10, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->rotateGesturesEnabled:Z

    .line 365
    .line 366
    iput-boolean v10, v8, Lorg/maplibre/android/maps/UiSettings;->rotateGesturesEnabled:Z

    .line 367
    .line 368
    iget-boolean v10, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->tiltGesturesEnabled:Z

    .line 369
    .line 370
    iput-boolean v10, v8, Lorg/maplibre/android/maps/UiSettings;->tiltGesturesEnabled:Z

    .line 371
    .line 372
    iget-boolean v10, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->doubleTapGesturesEnabled:Z

    .line 373
    .line 374
    iput-boolean v10, v8, Lorg/maplibre/android/maps/UiSettings;->doubleTapGesturesEnabled:Z

    .line 375
    .line 376
    iget-boolean v10, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->quickZoomGesturesEnabled:Z

    .line 377
    .line 378
    iput-boolean v10, v8, Lorg/maplibre/android/maps/UiSettings;->quickZoomGesturesEnabled:Z

    .line 379
    .line 380
    iget-boolean v10, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->compassEnabled:Z

    .line 381
    .line 382
    if-eqz v10, :cond_7

    .line 383
    .line 384
    invoke-virtual {v8, v1, v9}, Lorg/maplibre/android/maps/UiSettings;->initialiseCompass(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/res/Resources;)V

    .line 385
    .line 386
    .line 387
    :cond_7
    iget-boolean v10, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->logoEnabled:Z

    .line 388
    .line 389
    if-eqz v10, :cond_8

    .line 390
    .line 391
    invoke-virtual {v8, v1, v9}, Lorg/maplibre/android/maps/UiSettings;->initialiseLogo(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/res/Resources;)V

    .line 392
    .line 393
    .line 394
    :cond_8
    iget-boolean v9, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->attributionEnabled:Z

    .line 395
    .line 396
    if-eqz v9, :cond_9

    .line 397
    .line 398
    invoke-virtual {v8, v4, v1}, Lorg/maplibre/android/maps/UiSettings;->initialiseAttribution(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    .line 399
    .line 400
    .line 401
    :cond_9
    iget-boolean v4, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->debugActive:Z

    .line 402
    .line 403
    iput-boolean v4, v3, Lorg/maplibre/android/maps/MapLibreMap;->debugActive:Z

    .line 404
    .line 405
    check-cast v6, Lorg/maplibre/android/maps/NativeMapView;

    .line 406
    .line 407
    invoke-virtual {v6, v4}, Lorg/maplibre/android/maps/NativeMapView;->setDebug(Z)V

    .line 408
    .line 409
    .line 410
    iget-object v3, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->apiBaseUri:Ljava/lang/String;

    .line 411
    .line 412
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    if-nez v4, :cond_b

    .line 417
    .line 418
    const-string v4, "setApiBaseUrl"

    .line 419
    .line 420
    invoke-virtual {v6, v4}, Lorg/maplibre/android/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    if-eqz v4, :cond_a

    .line 425
    .line 426
    goto :goto_6

    .line 427
    :cond_a
    iget-object v4, v6, Lorg/maplibre/android/maps/NativeMapView;->fileSource:Lorg/maplibre/android/storage/FileSource;

    .line 428
    .line 429
    invoke-virtual {v4, v3}, Lorg/maplibre/android/storage/FileSource;->setApiBaseUrl(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    :cond_b
    :goto_6
    iget-boolean v3, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchesTiles:Z

    .line 433
    .line 434
    if-nez v3, :cond_c

    .line 435
    .line 436
    check-cast v7, Lorg/maplibre/android/maps/NativeMapView;

    .line 437
    .line 438
    invoke-virtual {v7, v5}, Lorg/maplibre/android/maps/NativeMapView;->setPrefetchZoomDelta(I)V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_8

    .line 442
    .line 443
    :cond_c
    iget v1, v1, Lorg/maplibre/android/maps/MapLibreMapOptions;->prefetchZoomDelta:I

    .line 444
    .line 445
    check-cast v7, Lorg/maplibre/android/maps/NativeMapView;

    .line 446
    .line 447
    invoke-virtual {v7, v1}, Lorg/maplibre/android/maps/NativeMapView;->setPrefetchZoomDelta(I)V

    .line 448
    .line 449
    .line 450
    goto/16 :goto_8

    .line 451
    .line 452
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    .line 454
    .line 455
    const-string v4, "maplibre_cameraPosition"

    .line 456
    .line 457
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    check-cast v4, Lorg/maplibre/android/camera/CameraPosition;

    .line 462
    .line 463
    iget-object v6, v3, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 464
    .line 465
    const-string v7, "maplibre_horizontalScrollEnabled"

    .line 466
    .line 467
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 468
    .line 469
    .line 470
    move-result v7

    .line 471
    iput-boolean v7, v6, Lorg/maplibre/android/maps/UiSettings;->horizontalScrollGesturesEnabled:Z

    .line 472
    .line 473
    const-string v7, "maplibre_zoomEnabled"

    .line 474
    .line 475
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 476
    .line 477
    .line 478
    move-result v7

    .line 479
    iput-boolean v7, v6, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    .line 480
    .line 481
    const-string v7, "maplibre_scrollEnabled"

    .line 482
    .line 483
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 484
    .line 485
    .line 486
    move-result v7

    .line 487
    iput-boolean v7, v6, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    .line 488
    .line 489
    const-string v7, "maplibre_rotateEnabled"

    .line 490
    .line 491
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 492
    .line 493
    .line 494
    move-result v7

    .line 495
    iput-boolean v7, v6, Lorg/maplibre/android/maps/UiSettings;->rotateGesturesEnabled:Z

    .line 496
    .line 497
    const-string v7, "maplibre_tiltEnabled"

    .line 498
    .line 499
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 500
    .line 501
    .line 502
    move-result v7

    .line 503
    iput-boolean v7, v6, Lorg/maplibre/android/maps/UiSettings;->tiltGesturesEnabled:Z

    .line 504
    .line 505
    const-string v7, "maplibre_doubleTapEnabled"

    .line 506
    .line 507
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 508
    .line 509
    .line 510
    move-result v7

    .line 511
    iput-boolean v7, v6, Lorg/maplibre/android/maps/UiSettings;->doubleTapGesturesEnabled:Z

    .line 512
    .line 513
    const-string v7, "maplibre_scaleAnimationEnabled"

    .line 514
    .line 515
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 516
    .line 517
    .line 518
    move-result v7

    .line 519
    iput-boolean v7, v6, Lorg/maplibre/android/maps/UiSettings;->scaleVelocityAnimationEnabled:Z

    .line 520
    .line 521
    const-string v7, "maplibre_rotateAnimationEnabled"

    .line 522
    .line 523
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 524
    .line 525
    .line 526
    move-result v7

    .line 527
    iput-boolean v7, v6, Lorg/maplibre/android/maps/UiSettings;->rotateVelocityAnimationEnabled:Z

    .line 528
    .line 529
    const-string v7, "maplibre_flingAnimationEnabled"

    .line 530
    .line 531
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 532
    .line 533
    .line 534
    move-result v7

    .line 535
    iput-boolean v7, v6, Lorg/maplibre/android/maps/UiSettings;->flingVelocityAnimationEnabled:Z

    .line 536
    .line 537
    const-string v7, "maplibre_increaseRotateThreshold"

    .line 538
    .line 539
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 540
    .line 541
    .line 542
    move-result v7

    .line 543
    iput-boolean v7, v6, Lorg/maplibre/android/maps/UiSettings;->increaseRotateThresholdWhenScaling:Z

    .line 544
    .line 545
    const-string v7, "maplibre_disableRotateWhenScaling"

    .line 546
    .line 547
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 548
    .line 549
    .line 550
    move-result v7

    .line 551
    iput-boolean v7, v6, Lorg/maplibre/android/maps/UiSettings;->disableRotateWhenScaling:Z

    .line 552
    .line 553
    const-string v7, "maplibre_increaseScaleThreshold"

    .line 554
    .line 555
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 556
    .line 557
    .line 558
    move-result v7

    .line 559
    iput-boolean v7, v6, Lorg/maplibre/android/maps/UiSettings;->increaseScaleThresholdWhenRotating:Z

    .line 560
    .line 561
    const-string v7, "maplibre_quickZoom"

    .line 562
    .line 563
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 564
    .line 565
    .line 566
    move-result v7

    .line 567
    iput-boolean v7, v6, Lorg/maplibre/android/maps/UiSettings;->quickZoomGesturesEnabled:Z

    .line 568
    .line 569
    const-string v7, "maplibre_zoomRate"

    .line 570
    .line 571
    const/high16 v8, 0x3f800000    # 1.0f

    .line 572
    .line 573
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 574
    .line 575
    .line 576
    move-result v7

    .line 577
    iput v7, v6, Lorg/maplibre/android/maps/UiSettings;->zoomRate:F

    .line 578
    .line 579
    iget-object v7, v6, Lorg/maplibre/android/maps/UiSettings;->mapView:Lorg/maplibre/android/maps/MapView;

    .line 580
    .line 581
    const-string v8, "maplibre_compassEnabled"

    .line 582
    .line 583
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 584
    .line 585
    .line 586
    move-result v9

    .line 587
    if-eqz v9, :cond_e

    .line 588
    .line 589
    iget-boolean v9, v6, Lorg/maplibre/android/maps/UiSettings;->isCompassInitialized:Z

    .line 590
    .line 591
    if-nez v9, :cond_e

    .line 592
    .line 593
    invoke-virtual {v7}, Lorg/maplibre/android/maps/MapView;->initialiseCompassView()Lorg/maplibre/android/maps/widgets/CompassView;

    .line 594
    .line 595
    .line 596
    move-result-object v9

    .line 597
    iput-object v9, v6, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 598
    .line 599
    iput-boolean v0, v6, Lorg/maplibre/android/maps/UiSettings;->isCompassInitialized:Z

    .line 600
    .line 601
    :cond_e
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 602
    .line 603
    .line 604
    move-result v8

    .line 605
    invoke-virtual {v6, v8}, Lorg/maplibre/android/maps/UiSettings;->setCompassEnabled(Z)V

    .line 606
    .line 607
    .line 608
    const-string v8, "maplibre_compassGravity"

    .line 609
    .line 610
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 611
    .line 612
    .line 613
    move-result v8

    .line 614
    iget-object v9, v6, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 615
    .line 616
    if-eqz v9, :cond_f

    .line 617
    .line 618
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 619
    .line 620
    .line 621
    move-result-object v10

    .line 622
    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 623
    .line 624
    iput v8, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 625
    .line 626
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    .line 628
    .line 629
    :cond_f
    const-string v8, "maplibre_compassMarginLeft"

    .line 630
    .line 631
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 632
    .line 633
    .line 634
    move-result v14

    .line 635
    const-string v8, "maplibre_compassMarginTop"

    .line 636
    .line 637
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    move-result v15

    .line 641
    const-string v8, "maplibre_compassMarginRight"

    .line 642
    .line 643
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 644
    .line 645
    .line 646
    move-result v16

    .line 647
    const-string v8, "maplibre_compassMarginBottom"

    .line 648
    .line 649
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 650
    .line 651
    .line 652
    move-result v17

    .line 653
    iget-object v8, v6, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 654
    .line 655
    if-eqz v8, :cond_10

    .line 656
    .line 657
    iget-object v9, v6, Lorg/maplibre/android/maps/UiSettings;->compassMargins:[I

    .line 658
    .line 659
    move-object/from16 v18, v8

    .line 660
    .line 661
    move-object/from16 v19, v9

    .line 662
    .line 663
    invoke-static/range {v14 .. v19}, Lorg/maplibre/android/maps/UiSettings;->setWidgetMargins(IIIILandroid/view/View;[I)V

    .line 664
    .line 665
    .line 666
    :cond_10
    const-string v8, "maplibre_compassFade"

    .line 667
    .line 668
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 669
    .line 670
    .line 671
    move-result v8

    .line 672
    iget-object v9, v6, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 673
    .line 674
    if-eqz v9, :cond_11

    .line 675
    .line 676
    iput-boolean v8, v9, Lorg/maplibre/android/maps/widgets/CompassView;->fadeCompassViewFacingNorth:Z

    .line 677
    .line 678
    :cond_11
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 679
    .line 680
    .line 681
    move-result-object v8

    .line 682
    const-string v9, "maplibre_compassImage"

    .line 683
    .line 684
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 685
    .line 686
    .line 687
    move-result-object v9

    .line 688
    if-nez v9, :cond_12

    .line 689
    .line 690
    move-object v10, v13

    .line 691
    goto :goto_7

    .line 692
    :cond_12
    array-length v10, v9

    .line 693
    invoke-static {v9, v5, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 694
    .line 695
    .line 696
    move-result-object v9

    .line 697
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 698
    .line 699
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 700
    .line 701
    .line 702
    move-result-object v8

    .line 703
    invoke-direct {v10, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 704
    .line 705
    .line 706
    :goto_7
    iget-object v8, v6, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 707
    .line 708
    if-eqz v8, :cond_13

    .line 709
    .line 710
    invoke-virtual {v8, v10}, Lorg/maplibre/android/maps/widgets/CompassView;->setCompassImage(Landroid/graphics/drawable/Drawable;)V

    .line 711
    .line 712
    .line 713
    :cond_13
    const-string v8, "maplibre_logoEnabled"

    .line 714
    .line 715
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 716
    .line 717
    .line 718
    move-result v9

    .line 719
    if-eqz v9, :cond_14

    .line 720
    .line 721
    iget-boolean v9, v6, Lorg/maplibre/android/maps/UiSettings;->isLogoInitialized:Z

    .line 722
    .line 723
    if-nez v9, :cond_14

    .line 724
    .line 725
    invoke-virtual {v7}, Lorg/maplibre/android/maps/MapView;->initialiseLogoView()Landroid/widget/ImageView;

    .line 726
    .line 727
    .line 728
    move-result-object v9

    .line 729
    iput-object v9, v6, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    .line 730
    .line 731
    iput-boolean v0, v6, Lorg/maplibre/android/maps/UiSettings;->isLogoInitialized:Z

    .line 732
    .line 733
    :cond_14
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 734
    .line 735
    .line 736
    move-result v8

    .line 737
    invoke-virtual {v6, v8}, Lorg/maplibre/android/maps/UiSettings;->setLogoEnabled(Z)V

    .line 738
    .line 739
    .line 740
    const-string v8, "maplibre_logoGravity"

    .line 741
    .line 742
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 743
    .line 744
    .line 745
    move-result v8

    .line 746
    iget-object v9, v6, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    .line 747
    .line 748
    if-eqz v9, :cond_15

    .line 749
    .line 750
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 751
    .line 752
    .line 753
    move-result-object v10

    .line 754
    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 755
    .line 756
    iput v8, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 757
    .line 758
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 759
    .line 760
    .line 761
    :cond_15
    const-string v8, "maplibre_logoMarginLeft"

    .line 762
    .line 763
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 764
    .line 765
    .line 766
    move-result v14

    .line 767
    const-string v8, "maplibre_logoMarginTop"

    .line 768
    .line 769
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 770
    .line 771
    .line 772
    move-result v15

    .line 773
    const-string v8, "maplibre_logoMarginRight"

    .line 774
    .line 775
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 776
    .line 777
    .line 778
    move-result v16

    .line 779
    const-string v8, "maplibre_logoMarginBottom"

    .line 780
    .line 781
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 782
    .line 783
    .line 784
    move-result v17

    .line 785
    iget-object v8, v6, Lorg/maplibre/android/maps/UiSettings;->logoView:Landroid/widget/ImageView;

    .line 786
    .line 787
    if-eqz v8, :cond_16

    .line 788
    .line 789
    iget-object v9, v6, Lorg/maplibre/android/maps/UiSettings;->logoMargins:[I

    .line 790
    .line 791
    move-object/from16 v18, v8

    .line 792
    .line 793
    move-object/from16 v19, v9

    .line 794
    .line 795
    invoke-static/range {v14 .. v19}, Lorg/maplibre/android/maps/UiSettings;->setWidgetMargins(IIIILandroid/view/View;[I)V

    .line 796
    .line 797
    .line 798
    :cond_16
    const-string v8, "maplibre_atrrEnabled"

    .line 799
    .line 800
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 801
    .line 802
    .line 803
    move-result v9

    .line 804
    if-eqz v9, :cond_17

    .line 805
    .line 806
    iget-boolean v9, v6, Lorg/maplibre/android/maps/UiSettings;->isAttributionInitialized:Z

    .line 807
    .line 808
    if-nez v9, :cond_17

    .line 809
    .line 810
    invoke-virtual {v7}, Lorg/maplibre/android/maps/MapView;->initialiseAttributionView()Landroid/widget/ImageView;

    .line 811
    .line 812
    .line 813
    move-result-object v7

    .line 814
    iput-object v7, v6, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    .line 815
    .line 816
    iput-boolean v0, v6, Lorg/maplibre/android/maps/UiSettings;->isAttributionInitialized:Z

    .line 817
    .line 818
    :cond_17
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 819
    .line 820
    .line 821
    move-result v7

    .line 822
    invoke-virtual {v6, v7}, Lorg/maplibre/android/maps/UiSettings;->setAttributionEnabled(Z)V

    .line 823
    .line 824
    .line 825
    const-string v7, "maplibre_attrGravity"

    .line 826
    .line 827
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 828
    .line 829
    .line 830
    move-result v7

    .line 831
    iget-object v8, v6, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    .line 832
    .line 833
    if-eqz v8, :cond_18

    .line 834
    .line 835
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 836
    .line 837
    .line 838
    move-result-object v9

    .line 839
    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 840
    .line 841
    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 842
    .line 843
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    .line 845
    .line 846
    :cond_18
    const-string v7, "maplibre_attrMarginLeft"

    .line 847
    .line 848
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 849
    .line 850
    .line 851
    move-result v7

    .line 852
    const-string v8, "maplibre_attrMarginTop"

    .line 853
    .line 854
    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 855
    .line 856
    .line 857
    move-result v8

    .line 858
    const-string v9, "maplibre_attrMarginRight"

    .line 859
    .line 860
    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 861
    .line 862
    .line 863
    move-result v9

    .line 864
    const-string v10, "maplibre_atrrMarginBottom"

    .line 865
    .line 866
    invoke-virtual {v1, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 867
    .line 868
    .line 869
    move-result v10

    .line 870
    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/maplibre/android/maps/UiSettings;->setAttributionMargins(IIII)V

    .line 871
    .line 872
    .line 873
    const-string v7, "maplibre_deselectMarkerOnTap"

    .line 874
    .line 875
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 876
    .line 877
    .line 878
    move-result v7

    .line 879
    iput-boolean v7, v6, Lorg/maplibre/android/maps/UiSettings;->deselectMarkersOnTap:Z

    .line 880
    .line 881
    const-string v7, "maplibre_userFocalPoint"

    .line 882
    .line 883
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 884
    .line 885
    .line 886
    move-result-object v7

    .line 887
    check-cast v7, Landroid/graphics/PointF;

    .line 888
    .line 889
    if-eqz v7, :cond_19

    .line 890
    .line 891
    iput-object v7, v6, Lorg/maplibre/android/maps/UiSettings;->userProvidedFocalPoint:Landroid/graphics/PointF;

    .line 892
    .line 893
    iget-object v6, v6, Lorg/maplibre/android/maps/UiSettings;->focalPointChangeListener:Lorg/maplibre/android/maps/FocalPointChangeListener;

    .line 894
    .line 895
    invoke-interface {v6, v7}, Lorg/maplibre/android/maps/FocalPointChangeListener;->onFocalPointChanged(Landroid/graphics/PointF;)V

    .line 896
    .line 897
    .line 898
    :cond_19
    if-eqz v4, :cond_1a

    .line 899
    .line 900
    iget-wide v6, v4, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 901
    .line 902
    iget-object v15, v4, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 903
    .line 904
    iget-wide v8, v4, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    .line 905
    .line 906
    iget-wide v10, v4, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 907
    .line 908
    iget-object v4, v4, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    .line 909
    .line 910
    new-instance v14, Lorg/maplibre/android/camera/CameraPosition;

    .line 911
    .line 912
    move-object/from16 v22, v4

    .line 913
    .line 914
    move-wide/from16 v20, v6

    .line 915
    .line 916
    move-wide/from16 v18, v8

    .line 917
    .line 918
    move-wide/from16 v16, v10

    .line 919
    .line 920
    invoke-direct/range {v14 .. v22}, Lorg/maplibre/android/camera/CameraPosition;-><init>(Lorg/maplibre/android/geometry/LatLng;DDD[D)V

    .line 921
    .line 922
    .line 923
    invoke-static {v14}, Lorg/wikipedia/util/TabUtil;->newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    .line 924
    .line 925
    .line 926
    move-result-object v4

    .line 927
    invoke-virtual {v3}, Lorg/maplibre/android/maps/MapLibreMap;->notifyDeveloperAnimationListeners()V

    .line 928
    .line 929
    .line 930
    iget-object v6, v3, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 931
    .line 932
    invoke-virtual {v6, v3, v4, v13}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    .line 933
    .line 934
    .line 935
    :cond_1a
    iget-object v3, v3, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 936
    .line 937
    const-string v4, "maplibre_debugActive"

    .line 938
    .line 939
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 940
    .line 941
    .line 942
    move-result v1

    .line 943
    check-cast v3, Lorg/maplibre/android/maps/NativeMapView;

    .line 944
    .line 945
    invoke-virtual {v3, v1}, Lorg/maplibre/android/maps/NativeMapView;->setDebug(Z)V

    .line 946
    .line 947
    .line 948
    :goto_8
    iget-object v1, v2, Lorg/maplibre/android/maps/MapView;->mapCallback:Lorg/maplibre/android/maps/MapView$MapCallback;

    .line 949
    .line 950
    iget-object v3, v1, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    .line 951
    .line 952
    iget-object v4, v3, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 953
    .line 954
    iget-object v6, v4, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 955
    .line 956
    invoke-virtual {v6}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 957
    .line 958
    .line 959
    iget-object v6, v4, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lcom/hcaptcha/sdk/HCaptcha;

    .line 960
    .line 961
    iget-object v6, v6, Lcom/hcaptcha/sdk/HCaptcha;->internalConfig:Ljava/lang/Object;

    .line 962
    .line 963
    check-cast v6, Lokhttp3/MultipartBody$Builder;

    .line 964
    .line 965
    iget-object v7, v6, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 966
    .line 967
    check-cast v7, Lorg/maplibre/android/maps/NativeMap;

    .line 968
    .line 969
    iget-object v8, v6, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 970
    .line 971
    check-cast v8, Landroidx/collection/LongSparseArray;

    .line 972
    .line 973
    iget-object v6, v6, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 974
    .line 975
    check-cast v6, Lorg/maplibre/android/maps/IconManager;

    .line 976
    .line 977
    iget-object v6, v6, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/lang/Object;

    .line 978
    .line 979
    check-cast v6, Ljava/util/HashMap;

    .line 980
    .line 981
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 982
    .line 983
    .line 984
    move-result-object v6

    .line 985
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 986
    .line 987
    .line 988
    move-result-object v6

    .line 989
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 990
    .line 991
    .line 992
    move-result v9

    .line 993
    if-nez v9, :cond_23

    .line 994
    .line 995
    invoke-virtual {v8}, Landroidx/collection/LongSparseArray;->size()I

    .line 996
    .line 997
    .line 998
    move-result v6

    .line 999
    move v9, v5

    .line 1000
    :goto_9
    if-ge v9, v6, :cond_1c

    .line 1001
    .line 1002
    int-to-long v10, v9

    .line 1003
    invoke-virtual {v8, v10, v11}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v10

    .line 1007
    check-cast v10, Lorg/maplibre/android/annotations/Annotation;

    .line 1008
    .line 1009
    instance-of v11, v10, Lorg/maplibre/android/annotations/Marker;

    .line 1010
    .line 1011
    if-eqz v11, :cond_1b

    .line 1012
    .line 1013
    move-object v11, v10

    .line 1014
    check-cast v11, Lorg/maplibre/android/annotations/Marker;

    .line 1015
    .line 1016
    iget-wide v14, v10, Lorg/maplibre/android/annotations/Annotation;->id:J

    .line 1017
    .line 1018
    move-object v10, v7

    .line 1019
    check-cast v10, Lorg/maplibre/android/maps/NativeMapView;

    .line 1020
    .line 1021
    invoke-virtual {v10, v14, v15}, Lorg/maplibre/android/maps/NativeMapView;->removeAnnotation(J)V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v10, v11}, Lorg/maplibre/android/maps/NativeMapView;->addMarker(Lorg/maplibre/android/annotations/Marker;)J

    .line 1025
    .line 1026
    .line 1027
    move-result-wide v14

    .line 1028
    iput-wide v14, v11, Lorg/maplibre/android/annotations/Annotation;->id:J

    .line 1029
    .line 1030
    :cond_1b
    add-int/lit8 v9, v9, 0x1

    .line 1031
    .line 1032
    goto :goto_9

    .line 1033
    :cond_1c
    iget-object v4, v4, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lcom/hcaptcha/sdk/HCaptcha;

    .line 1034
    .line 1035
    iget-object v6, v4, Lcom/hcaptcha/sdk/HCaptcha;->onFailureListeners:Ljava/lang/Object;

    .line 1036
    .line 1037
    check-cast v6, Landroidx/collection/LongSparseArray;

    .line 1038
    .line 1039
    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    .line 1040
    .line 1041
    .line 1042
    move-result v7

    .line 1043
    :goto_a
    if-ge v5, v7, :cond_1e

    .line 1044
    .line 1045
    int-to-long v8, v5

    .line 1046
    invoke-virtual {v6, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v8

    .line 1050
    check-cast v8, Lorg/maplibre/android/annotations/Annotation;

    .line 1051
    .line 1052
    instance-of v8, v8, Lorg/maplibre/android/annotations/Marker;

    .line 1053
    .line 1054
    if-nez v8, :cond_1d

    .line 1055
    .line 1056
    add-int/lit8 v5, v5, 0x1

    .line 1057
    .line 1058
    goto :goto_a

    .line 1059
    :cond_1d
    throw v13

    .line 1060
    :cond_1e
    iget-object v4, v4, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 1061
    .line 1062
    check-cast v4, Ljava/util/ArrayList;

    .line 1063
    .line 1064
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v4

    .line 1068
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1069
    .line 1070
    .line 1071
    move-result v5

    .line 1072
    if-eqz v5, :cond_20

    .line 1073
    .line 1074
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v5

    .line 1078
    check-cast v5, Lorg/maplibre/android/annotations/Marker;

    .line 1079
    .line 1080
    iget-boolean v5, v5, Lorg/maplibre/android/annotations/Marker;->infoWindowShown:Z

    .line 1081
    .line 1082
    if-nez v5, :cond_1f

    .line 1083
    .line 1084
    goto :goto_b

    .line 1085
    :cond_1f
    throw v13

    .line 1086
    :cond_20
    iget-object v1, v1, Lorg/maplibre/android/maps/MapView$MapCallback;->onMapReadyCallbackList:Ljava/util/ArrayList;

    .line 1087
    .line 1088
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1089
    .line 1090
    .line 1091
    move-result v4

    .line 1092
    if-lez v4, :cond_22

    .line 1093
    .line 1094
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v1

    .line 1098
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1099
    .line 1100
    .line 1101
    move-result v4

    .line 1102
    if-eqz v4, :cond_22

    .line 1103
    .line 1104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v4

    .line 1108
    check-cast v4, Lorg/maplibre/android/maps/OnMapReadyCallback;

    .line 1109
    .line 1110
    if-eqz v4, :cond_21

    .line 1111
    .line 1112
    iget-object v5, v3, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 1113
    .line 1114
    invoke-interface {v4, v5}, Lorg/maplibre/android/maps/OnMapReadyCallback;->onMapReady(Lorg/maplibre/android/maps/MapLibreMap;)V

    .line 1115
    .line 1116
    .line 1117
    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1118
    .line 1119
    .line 1120
    goto :goto_c

    .line 1121
    :cond_22
    iget-object v1, v3, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 1122
    .line 1123
    iget-object v1, v1, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 1124
    .line 1125
    invoke-virtual {v1}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 1126
    .line 1127
    .line 1128
    iget-object v1, v2, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 1129
    .line 1130
    iput-boolean v0, v1, Lorg/maplibre/android/maps/MapLibreMap;->started:Z

    .line 1131
    .line 1132
    iget-object v1, v1, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    .line 1133
    .line 1134
    iput-boolean v0, v1, Lorg/maplibre/android/location/LocationComponent;->isComponentStarted:Z

    .line 1135
    .line 1136
    invoke-virtual {v1}, Lorg/maplibre/android/location/LocationComponent;->onLocationLayerStart()V

    .line 1137
    .line 1138
    .line 1139
    goto :goto_d

    .line 1140
    :cond_23
    invoke-static {v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v0

    .line 1144
    throw v0

    .line 1145
    :cond_24
    :goto_d
    return-void

    .line 1146
    nop

    .line 1147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

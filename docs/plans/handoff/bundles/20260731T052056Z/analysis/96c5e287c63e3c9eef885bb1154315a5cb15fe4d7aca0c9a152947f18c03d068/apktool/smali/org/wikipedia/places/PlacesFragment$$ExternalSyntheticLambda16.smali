.class public final synthetic Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/Style$OnStyleLoaded;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/places/PlacesFragment;

.field public final synthetic f$1:Lorg/maplibre/android/maps/MapLibreMap;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/places/PlacesFragment;Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda16;->f$0:Lorg/wikipedia/places/PlacesFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda16;->f$1:Lorg/maplibre/android/maps/MapLibreMap;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onStyleLoaded(Lorg/maplibre/android/maps/Style;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    sget-object v1, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v7, v0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda16;->f$0:Lorg/wikipedia/places/PlacesFragment;

    .line 11
    .line 12
    iget-object v2, v0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda16;->f$1:Lorg/maplibre/android/maps/MapLibreMap;

    .line 13
    .line 14
    iput-object v2, v7, Lorg/wikipedia/places/PlacesFragment;->mapboxMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 15
    .line 16
    iget-object v0, v7, Lorg/wikipedia/places/PlacesFragment;->markerBitmapBase:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    if-eqz v0, :cond_1f

    .line 19
    .line 20
    const-string v1, "markerDrawable"

    .line 21
    .line 22
    invoke-virtual {v3, v1, v0}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    .line 25
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 26
    .line 27
    iget-object v4, v2, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 28
    .line 29
    invoke-virtual {v4, v0, v1}, Lorg/maplibre/android/maps/Transform;->setMaxZoom(D)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v2, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 33
    .line 34
    const/4 v9, 0x0

    .line 35
    invoke-virtual {v0, v9}, Lorg/maplibre/android/maps/UiSettings;->setLogoEnabled(Z)V

    .line 36
    .line 37
    .line 38
    const/high16 v1, 0x41800000    # 16.0f

    .line 39
    .line 40
    invoke-static {v1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 41
    .line 42
    .line 43
    move-result v13

    .line 44
    iget-object v1, v7, Lorg/wikipedia/places/PlacesFragment;->navBarInsets:Landroidx/core/graphics/Insets;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    iget v4, v1, Landroidx/core/graphics/Insets;->left:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move v4, v9

    .line 52
    :goto_0
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget v5, v1, Landroidx/core/graphics/Insets;->right:I

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move v5, v9

    .line 58
    :goto_1
    if-eqz v1, :cond_2

    .line 59
    .line 60
    iget v6, v1, Landroidx/core/graphics/Insets;->top:I

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move v6, v9

    .line 64
    :goto_2
    if-eqz v1, :cond_3

    .line 65
    .line 66
    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    move v1, v9

    .line 70
    :goto_3
    iget-object v10, v7, Lorg/wikipedia/places/PlacesFragment;->statusBarInsets:Landroidx/core/graphics/Insets;

    .line 71
    .line 72
    if-eqz v10, :cond_4

    .line 73
    .line 74
    iget v11, v10, Landroidx/core/graphics/Insets;->left:I

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    move v11, v9

    .line 78
    :goto_4
    if-eqz v10, :cond_5

    .line 79
    .line 80
    iget v12, v10, Landroidx/core/graphics/Insets;->right:I

    .line 81
    .line 82
    move/from16 v16, v12

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_5
    move/from16 v16, v9

    .line 86
    .line 87
    :goto_5
    if-eqz v10, :cond_6

    .line 88
    .line 89
    iget v12, v10, Landroidx/core/graphics/Insets;->top:I

    .line 90
    .line 91
    goto :goto_6

    .line 92
    :cond_6
    move v12, v9

    .line 93
    :goto_6
    if-eqz v10, :cond_7

    .line 94
    .line 95
    iget v10, v10, Landroidx/core/graphics/Insets;->bottom:I

    .line 96
    .line 97
    move/from16 v17, v10

    .line 98
    .line 99
    goto :goto_7

    .line 100
    :cond_7
    move/from16 v17, v9

    .line 101
    .line 102
    :goto_7
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    const v14, 0x7f080148

    .line 107
    .line 108
    .line 109
    invoke-static {v10, v14}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-object v14, v0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 117
    .line 118
    if-eqz v14, :cond_8

    .line 119
    .line 120
    invoke-virtual {v14, v10}, Lorg/maplibre/android/maps/widgets/CompassView;->setCompassImage(Landroid/graphics/drawable/Drawable;)V

    .line 121
    .line 122
    .line 123
    :cond_8
    iget-object v10, v0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 124
    .line 125
    if-eqz v10, :cond_9

    .line 126
    .line 127
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 132
    .line 133
    const v15, 0x800035

    .line 134
    .line 135
    .line 136
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 137
    .line 138
    invoke-virtual {v10, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .line 140
    .line 141
    :cond_9
    iget-object v10, v0, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    .line 142
    .line 143
    if-eqz v10, :cond_a

    .line 144
    .line 145
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 146
    .line 147
    .line 148
    move-result-object v14

    .line 149
    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 150
    .line 151
    const v15, 0x800053

    .line 152
    .line 153
    .line 154
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 155
    .line 156
    invoke-virtual {v10, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    .line 158
    .line 159
    :cond_a
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    const v14, 0x7f0404fb

    .line 164
    .line 165
    .line 166
    invoke-static {v10, v14}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    invoke-virtual {v0, v10}, Lorg/maplibre/android/maps/UiSettings;->setAttributionTintColor(I)V

    .line 171
    .line 172
    .line 173
    add-int/2addr v4, v13

    .line 174
    add-int v10, v4, v11

    .line 175
    .line 176
    add-int/2addr v6, v13

    .line 177
    add-int/2addr v6, v12

    .line 178
    iget-object v4, v7, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 179
    .line 180
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    iget-object v4, v4, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchContainer:Lorg/wikipedia/views/WikiCardView;

    .line 184
    .line 185
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    add-int v11, v4, v6

    .line 190
    .line 191
    const/high16 v18, 0x41400000    # 12.0f

    .line 192
    .line 193
    invoke-static/range {v18 .. v18}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    add-int/2addr v4, v5

    .line 198
    add-int v12, v4, v16

    .line 199
    .line 200
    iget-object v14, v0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 201
    .line 202
    if-eqz v14, :cond_b

    .line 203
    .line 204
    iget-object v15, v0, Lorg/maplibre/android/maps/UiSettings;->compassMargins:[I

    .line 205
    .line 206
    invoke-static/range {v10 .. v15}, Lorg/maplibre/android/maps/UiSettings;->setWidgetMargins(IIIILandroid/view/View;[I)V

    .line 207
    .line 208
    .line 209
    :cond_b
    add-int/2addr v13, v5

    .line 210
    add-int v13, v13, v16

    .line 211
    .line 212
    add-int v1, v1, v17

    .line 213
    .line 214
    const/high16 v4, 0x42100000    # 36.0f

    .line 215
    .line 216
    invoke-static {v4}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    add-int/2addr v4, v1

    .line 221
    invoke-virtual {v0, v10, v9, v13, v4}, Lorg/maplibre/android/maps/UiSettings;->setAttributionMargins(IIII)V

    .line 222
    .line 223
    .line 224
    new-instance v0, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda18;

    .line 225
    .line 226
    invoke-direct {v0, v7}, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda18;-><init>(Lorg/wikipedia/places/PlacesFragment;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, v2, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 230
    .line 231
    iget-object v1, v1, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 232
    .line 233
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    iget-object v0, v2, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/IconManager;

    .line 237
    .line 238
    iget-object v0, v0, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v0, Lorg/maplibre/android/maps/MapView;

    .line 241
    .line 242
    iget-object v0, v0, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 243
    .line 244
    iget-object v0, v0, Lorg/maplibre/android/maps/MapGestureDetector;->onMapClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 245
    .line 246
    invoke-virtual {v0, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    new-instance v0, Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 250
    .line 251
    iget-object v1, v7, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapView:Landroid/view/View;

    .line 257
    .line 258
    check-cast v1, Lorg/maplibre/android/maps/MapView;

    .line 259
    .line 260
    new-instance v4, Landroidx/core/util/Pair;

    .line 261
    .line 262
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 267
    .line 268
    .line 269
    const/4 v11, 0x1

    .line 270
    new-array v12, v11, [Landroidx/core/util/Pair;

    .line 271
    .line 272
    aput-object v4, v12, v9

    .line 273
    .line 274
    new-instance v4, Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;

    .line 275
    .line 276
    invoke-direct {v4}, Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;-><init>()V

    .line 277
    .line 278
    .line 279
    new-instance v6, Lorg/maplibre/android/style/sources/GeoJsonOptions;

    .line 280
    .line 281
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 282
    .line 283
    .line 284
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 285
    .line 286
    const-string v5, "cluster"

    .line 287
    .line 288
    invoke-virtual {v6, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    const/16 v5, 0x32

    .line 292
    .line 293
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    const-string v14, "clusterRadius"

    .line 298
    .line 299
    invoke-virtual {v6, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    const/16 v5, 0xe

    .line 303
    .line 304
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    const-string v14, "clusterMaxZoom"

    .line 309
    .line 310
    invoke-virtual {v6, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    sget-object v5, Lokio/internal/DefaultSocket;->INSTANCE:Lokio/internal/DefaultSocket;

    .line 314
    .line 315
    if-eqz v5, :cond_d

    .line 316
    .line 317
    iget-object v14, v5, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v14, Lorg/maplibre/android/maps/MapView;

    .line 320
    .line 321
    if-ne v14, v1, :cond_d

    .line 322
    .line 323
    iget-object v14, v5, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v14, Lorg/maplibre/android/maps/MapLibreMap;

    .line 326
    .line 327
    if-eq v14, v2, :cond_c

    .line 328
    .line 329
    goto :goto_8

    .line 330
    :cond_c
    move/from16 p0, v9

    .line 331
    .line 332
    goto :goto_9

    .line 333
    :cond_d
    :goto_8
    new-instance v5, Lokio/internal/DefaultSocket;

    .line 334
    .line 335
    new-instance v14, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 336
    .line 337
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 338
    .line 339
    .line 340
    move-result-object v15

    .line 341
    invoke-direct {v14, v15, v9}, Lorg/wikipedia/databinding/FragmentNewsBinding;-><init>(Landroid/content/Context;Z)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 354
    .line 355
    .line 356
    const/4 v15, 0x7

    .line 357
    invoke-direct {v5, v15}, Lokio/internal/DefaultSocket;-><init>(I)V

    .line 358
    .line 359
    .line 360
    new-instance v15, Ljava/util/LinkedList;

    .line 361
    .line 362
    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 363
    .line 364
    .line 365
    iput-object v15, v5, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 366
    .line 367
    new-instance v15, Ljava/util/HashMap;

    .line 368
    .line 369
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 370
    .line 371
    .line 372
    iput-object v15, v5, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 373
    .line 374
    iput-object v1, v5, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 375
    .line 376
    iput-object v2, v5, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 377
    .line 378
    new-instance v15, Lorg/maplibre/android/plugins/annotation/DraggableAnnotationController$AnnotationMoveGestureListener;

    .line 379
    .line 380
    invoke-direct {v15, v5}, Lorg/maplibre/android/plugins/annotation/DraggableAnnotationController$AnnotationMoveGestureListener;-><init>(Lokio/internal/DefaultSocket;)V

    .line 381
    .line 382
    .line 383
    move/from16 p0, v9

    .line 384
    .line 385
    iget-object v9, v14, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v9, Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 388
    .line 389
    iput-object v15, v9, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 390
    .line 391
    new-instance v9, Lcom/google/android/material/timepicker/TimePickerView$3;

    .line 392
    .line 393
    invoke-direct {v9, v5, v14}, Lcom/google/android/material/timepicker/TimePickerView$3;-><init>(Lokio/internal/DefaultSocket;Lorg/wikipedia/databinding/FragmentNewsBinding;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 397
    .line 398
    .line 399
    sput-object v5, Lokio/internal/DefaultSocket;->INSTANCE:Lokio/internal/DefaultSocket;

    .line 400
    .line 401
    :goto_9
    invoke-direct/range {v0 .. v6}, Lorg/maplibre/android/plugins/annotation/SymbolManager;-><init>(Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Style;Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;Lokio/internal/DefaultSocket;Lorg/maplibre/android/style/sources/GeoJsonOptions;)V

    .line 402
    .line 403
    .line 404
    iget-object v1, v0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->coreElementProvider:Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;

    .line 405
    .line 406
    iget-object v1, v1, Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;->sourceId:Ljava/lang/String;

    .line 407
    .line 408
    new-instance v2, Lorg/maplibre/android/style/layers/CircleLayer;

    .line 409
    .line 410
    const-string v4, "mapbox-android-cluster-circle0"

    .line 411
    .line 412
    invoke-direct {v2, v4, v1}, Lorg/maplibre/android/style/layers/CircleLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    aget-object v5, v12, p0

    .line 416
    .line 417
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    new-instance v5, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 421
    .line 422
    const v6, -0xffff01

    .line 423
    .line 424
    .line 425
    invoke-static {v6}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->colorToRgbaString(I)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    const-string v9, "circle-color"

    .line 430
    .line 431
    invoke-direct {v5, v9, v6}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    const/high16 v6, 0x41900000    # 18.0f

    .line 435
    .line 436
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 437
    .line 438
    .line 439
    move-result-object v6

    .line 440
    new-instance v14, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 441
    .line 442
    invoke-direct {v14, v6}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    new-instance v6, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 446
    .line 447
    const-string v15, "circle-radius"

    .line 448
    .line 449
    invoke-direct {v6, v15, v14}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    const/4 v14, 0x2

    .line 453
    new-array v8, v14, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 454
    .line 455
    aput-object v5, v8, p0

    .line 456
    .line 457
    aput-object v6, v8, v11

    .line 458
    .line 459
    invoke-virtual {v2, v8}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 460
    .line 461
    .line 462
    const-string v5, "point_count"

    .line 463
    .line 464
    invoke-static {v5}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 465
    .line 466
    .line 467
    move-result-object v6

    .line 468
    new-instance v8, Lorg/maplibre/android/style/expressions/Expression;

    .line 469
    .line 470
    new-array v14, v11, [Lorg/maplibre/android/style/expressions/Expression;

    .line 471
    .line 472
    aput-object v6, v14, p0

    .line 473
    .line 474
    const-string v6, "to-number"

    .line 475
    .line 476
    invoke-direct {v8, v6, v14}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    .line 477
    .line 478
    .line 479
    new-instance v6, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 480
    .line 481
    invoke-direct {v6, v5}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    new-instance v14, Lorg/maplibre/android/style/expressions/Expression;

    .line 485
    .line 486
    move-object/from16 v19, v5

    .line 487
    .line 488
    new-array v5, v11, [Lorg/maplibre/android/style/expressions/Expression;

    .line 489
    .line 490
    aput-object v6, v5, p0

    .line 491
    .line 492
    const-string v6, "has"

    .line 493
    .line 494
    invoke-direct {v14, v6, v5}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    .line 495
    .line 496
    .line 497
    aget-object v5, v12, p0

    .line 498
    .line 499
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    new-instance v5, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 503
    .line 504
    invoke-direct {v5, v10}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    new-instance v6, Lorg/maplibre/android/style/expressions/Expression;

    .line 508
    .line 509
    const/4 v10, 0x2

    .line 510
    new-array v12, v10, [Lorg/maplibre/android/style/expressions/Expression;

    .line 511
    .line 512
    aput-object v8, v12, p0

    .line 513
    .line 514
    aput-object v5, v12, v11

    .line 515
    .line 516
    const-string v5, ">="

    .line 517
    .line 518
    invoke-direct {v6, v5, v12}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    .line 519
    .line 520
    .line 521
    new-array v5, v10, [Lorg/maplibre/android/style/expressions/Expression;

    .line 522
    .line 523
    aput-object v14, v5, p0

    .line 524
    .line 525
    aput-object v6, v5, v11

    .line 526
    .line 527
    invoke-static {}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    .line 528
    .line 529
    .line 530
    new-instance v6, Ljava/util/ArrayList;

    .line 531
    .line 532
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .line 534
    .line 535
    const-string v8, "all"

    .line 536
    .line 537
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    array-length v8, v5

    .line 541
    move/from16 v10, p0

    .line 542
    .line 543
    :goto_a
    if-ge v10, v8, :cond_f

    .line 544
    .line 545
    aget-object v12, v5, v10

    .line 546
    .line 547
    instance-of v14, v12, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 548
    .line 549
    if-eqz v14, :cond_e

    .line 550
    .line 551
    check-cast v12, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 552
    .line 553
    invoke-virtual {v12}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;->toValue()Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v12

    .line 557
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    goto :goto_b

    .line 561
    :cond_e
    invoke-virtual {v12}, Lorg/maplibre/android/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v12

    .line 565
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    :goto_b
    add-int/lit8 v10, v10, 0x1

    .line 569
    .line 570
    goto :goto_a

    .line 571
    :cond_f
    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v5

    .line 575
    invoke-virtual {v2, v5}, Lorg/maplibre/android/style/layers/Layer;->nativeSetFilter([Ljava/lang/Object;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v3, v2}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    .line 579
    .line 580
    .line 581
    new-instance v2, Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 582
    .line 583
    const-string v5, "mapbox-android-cluster-text"

    .line 584
    .line 585
    invoke-direct {v2, v5, v1}, Lorg/maplibre/android/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    invoke-static/range {v19 .. v19}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    new-instance v6, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 593
    .line 594
    const-string v8, "text-field"

    .line 595
    .line 596
    invoke-direct {v6, v8, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 597
    .line 598
    .line 599
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    new-instance v10, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 604
    .line 605
    invoke-direct {v10, v1}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    new-instance v1, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 609
    .line 610
    const-string v12, "text-size"

    .line 611
    .line 612
    invoke-direct {v1, v12, v10}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    const/4 v10, -0x1

    .line 616
    shr-int/lit8 v14, v10, 0x10

    .line 617
    .line 618
    and-int/lit16 v14, v14, 0xff

    .line 619
    .line 620
    int-to-float v14, v14

    .line 621
    move/from16 v18, v10

    .line 622
    .line 623
    shr-int/lit8 v10, v18, 0x8

    .line 624
    .line 625
    and-int/lit16 v10, v10, 0xff

    .line 626
    .line 627
    int-to-float v10, v10

    .line 628
    move/from16 v20, v11

    .line 629
    .line 630
    const/4 v11, -0x1

    .line 631
    and-int/lit16 v11, v11, 0xff

    .line 632
    .line 633
    int-to-float v11, v11

    .line 634
    move-object/from16 v21, v1

    .line 635
    .line 636
    shr-int/lit8 v1, v18, 0x18

    .line 637
    .line 638
    and-int/lit16 v1, v1, 0xff

    .line 639
    .line 640
    int-to-float v1, v1

    .line 641
    const/high16 v18, 0x437f0000    # 255.0f

    .line 642
    .line 643
    div-float v1, v1, v18

    .line 644
    .line 645
    move/from16 v18, v1

    .line 646
    .line 647
    const/4 v1, 0x4

    .line 648
    move-object/from16 v22, v6

    .line 649
    .line 650
    new-array v6, v1, [F

    .line 651
    .line 652
    aput v14, v6, p0

    .line 653
    .line 654
    aput v10, v6, v20

    .line 655
    .line 656
    const/16 v17, 0x2

    .line 657
    .line 658
    aput v11, v6, v17

    .line 659
    .line 660
    const/4 v10, 0x3

    .line 661
    aput v18, v6, v10

    .line 662
    .line 663
    aget v11, v6, p0

    .line 664
    .line 665
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 666
    .line 667
    .line 668
    move-result-object v11

    .line 669
    aget v14, v6, v20

    .line 670
    .line 671
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 672
    .line 673
    .line 674
    move-result-object v14

    .line 675
    aget v18, v6, v17

    .line 676
    .line 677
    move/from16 v23, v10

    .line 678
    .line 679
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 680
    .line 681
    .line 682
    move-result-object v10

    .line 683
    aget v6, v6, v23

    .line 684
    .line 685
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 686
    .line 687
    .line 688
    move-result-object v6

    .line 689
    new-instance v1, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 690
    .line 691
    invoke-direct {v1, v11}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 692
    .line 693
    .line 694
    new-instance v11, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 695
    .line 696
    invoke-direct {v11, v14}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 697
    .line 698
    .line 699
    new-instance v14, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 700
    .line 701
    invoke-direct {v14, v10}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 702
    .line 703
    .line 704
    new-instance v10, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 705
    .line 706
    invoke-direct {v10, v6}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 707
    .line 708
    .line 709
    new-instance v6, Lorg/maplibre/android/style/expressions/Expression;

    .line 710
    .line 711
    move-object/from16 v24, v1

    .line 712
    .line 713
    move-object/from16 v25, v10

    .line 714
    .line 715
    const/4 v1, 0x4

    .line 716
    new-array v10, v1, [Lorg/maplibre/android/style/expressions/Expression;

    .line 717
    .line 718
    aput-object v24, v10, p0

    .line 719
    .line 720
    aput-object v11, v10, v20

    .line 721
    .line 722
    const/16 v17, 0x2

    .line 723
    .line 724
    aput-object v14, v10, v17

    .line 725
    .line 726
    aput-object v25, v10, v23

    .line 727
    .line 728
    const-string v1, "rgba"

    .line 729
    .line 730
    invoke-direct {v6, v1, v10}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    .line 731
    .line 732
    .line 733
    new-instance v1, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 734
    .line 735
    const-string v10, "text-color"

    .line 736
    .line 737
    invoke-direct {v1, v10, v6}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 738
    .line 739
    .line 740
    new-instance v6, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 741
    .line 742
    const-string v11, "text-ignore-placement"

    .line 743
    .line 744
    invoke-direct {v6, v11, v13}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 745
    .line 746
    .line 747
    new-instance v14, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 748
    .line 749
    move-object/from16 v24, v1

    .line 750
    .line 751
    const-string v1, "text-allow-overlap"

    .line 752
    .line 753
    invoke-direct {v14, v1, v13}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 754
    .line 755
    .line 756
    move-object/from16 v25, v6

    .line 757
    .line 758
    const/4 v6, 0x5

    .line 759
    move-object/from16 v26, v14

    .line 760
    .line 761
    new-array v14, v6, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 762
    .line 763
    aput-object v22, v14, p0

    .line 764
    .line 765
    aput-object v21, v14, v20

    .line 766
    .line 767
    const/16 v17, 0x2

    .line 768
    .line 769
    aput-object v24, v14, v17

    .line 770
    .line 771
    aput-object v25, v14, v23

    .line 772
    .line 773
    const/16 v18, 0x4

    .line 774
    .line 775
    aput-object v26, v14, v18

    .line 776
    .line 777
    invoke-virtual {v2, v14}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v3, v2}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    .line 781
    .line 782
    .line 783
    iput-object v0, v7, Lorg/wikipedia/places/PlacesFragment;->symbolManager:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 784
    .line 785
    :try_start_0
    invoke-virtual {v3, v5}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    if-eqz v0, :cond_12

    .line 790
    .line 791
    invoke-static/range {v19 .. v19}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 792
    .line 793
    .line 794
    move-result-object v5

    .line 795
    new-instance v14, Lorg/maplibre/android/style/expressions/Expression;

    .line 796
    .line 797
    move/from16 v19, v6

    .line 798
    .line 799
    const-string v6, "to-string"

    .line 800
    .line 801
    move-object/from16 v22, v5

    .line 802
    .line 803
    move/from16 v2, v20

    .line 804
    .line 805
    new-array v5, v2, [Lorg/maplibre/android/style/expressions/Expression;

    .line 806
    .line 807
    aput-object v22, v5, p0

    .line 808
    .line 809
    invoke-direct {v14, v6, v5}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    .line 810
    .line 811
    .line 812
    new-instance v2, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 813
    .line 814
    invoke-direct {v2, v8, v14}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 815
    .line 816
    .line 817
    const/high16 v5, 0x41b00000    # 22.0f

    .line 818
    .line 819
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 820
    .line 821
    .line 822
    move-result-object v5

    .line 823
    new-instance v6, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    .line 824
    .line 825
    invoke-direct {v6, v5}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    .line 826
    .line 827
    .line 828
    new-instance v5, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 829
    .line 830
    invoke-direct {v5, v12, v6}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 834
    .line 835
    .line 836
    move-result-object v6

    .line 837
    new-instance v8, Landroid/util/TypedValue;

    .line 838
    .line 839
    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 843
    .line 844
    .line 845
    move-result-object v6

    .line 846
    const/4 v12, 0x1

    .line 847
    const v14, 0x7f0404e7

    .line 848
    .line 849
    .line 850
    invoke-virtual {v6, v14, v8, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 851
    .line 852
    .line 853
    move-result v6

    .line 854
    if-eqz v6, :cond_10

    .line 855
    .line 856
    goto :goto_c

    .line 857
    :cond_10
    const/4 v8, 0x0

    .line 858
    :goto_c
    if-eqz v8, :cond_11

    .line 859
    .line 860
    iget v6, v8, Landroid/util/TypedValue;->data:I

    .line 861
    .line 862
    new-instance v8, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 863
    .line 864
    invoke-static {v6}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->colorToRgbaString(I)Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v6

    .line 868
    invoke-direct {v8, v10, v6}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 869
    .line 870
    .line 871
    sget-object v6, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 872
    .line 873
    new-instance v10, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 874
    .line 875
    const-string v12, "text-font"

    .line 876
    .line 877
    invoke-direct {v10, v12, v6}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 878
    .line 879
    .line 880
    new-instance v6, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 881
    .line 882
    invoke-direct {v6, v11, v13}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 883
    .line 884
    .line 885
    new-instance v11, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 886
    .line 887
    invoke-direct {v11, v1, v13}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 888
    .line 889
    .line 890
    const/4 v12, 0x6

    .line 891
    new-array v12, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 892
    .line 893
    aput-object v2, v12, p0

    .line 894
    .line 895
    const/16 v20, 0x1

    .line 896
    .line 897
    aput-object v5, v12, v20

    .line 898
    .line 899
    const/16 v17, 0x2

    .line 900
    .line 901
    aput-object v8, v12, v17

    .line 902
    .line 903
    aput-object v10, v12, v23

    .line 904
    .line 905
    const/16 v18, 0x4

    .line 906
    .line 907
    aput-object v6, v12, v18

    .line 908
    .line 909
    aput-object v11, v12, v19

    .line 910
    .line 911
    invoke-virtual {v0, v12}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 912
    .line 913
    .line 914
    goto :goto_d

    .line 915
    :catch_0
    move-exception v0

    .line 916
    goto/16 :goto_e

    .line 917
    .line 918
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 919
    .line 920
    const-string v2, "Attribute not found; ID=2130969831"

    .line 921
    .line 922
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    throw v0

    .line 926
    :cond_12
    move/from16 v19, v6

    .line 927
    .line 928
    :goto_d
    invoke-virtual {v3, v4}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    if-eqz v0, :cond_13

    .line 933
    .line 934
    const/high16 v2, 0x41c00000    # 24.0f

    .line 935
    .line 936
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 937
    .line 938
    .line 939
    move-result-object v2

    .line 940
    new-instance v3, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 941
    .line 942
    invoke-direct {v3, v15, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 946
    .line 947
    .line 948
    move-result-object v2

    .line 949
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 950
    .line 951
    .line 952
    move-result-object v4

    .line 953
    const v5, 0x7f04054f

    .line 954
    .line 955
    .line 956
    invoke-static {v4, v5}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 957
    .line 958
    .line 959
    move-result v4

    .line 960
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    .line 961
    .line 962
    .line 963
    move-result v2

    .line 964
    new-instance v4, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 965
    .line 966
    invoke-static {v2}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->colorToRgbaString(I)Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v2

    .line 970
    invoke-direct {v4, v9, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 971
    .line 972
    .line 973
    const v2, 0x3f4ccccd    # 0.8f

    .line 974
    .line 975
    .line 976
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    new-instance v5, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 981
    .line 982
    const-string v6, "circle-opacity"

    .line 983
    .line 984
    invoke-direct {v5, v6, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 985
    .line 986
    .line 987
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 988
    .line 989
    .line 990
    move-result-object v2

    .line 991
    const v14, 0x7f0404e7

    .line 992
    .line 993
    .line 994
    invoke-static {v2, v14}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 995
    .line 996
    .line 997
    move-result v2

    .line 998
    new-instance v6, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 999
    .line 1000
    const-string v8, "circle-stroke-color"

    .line 1001
    .line 1002
    invoke-static {v2}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->colorToRgbaString(I)Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v2

    .line 1006
    invoke-direct {v6, v8, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1007
    .line 1008
    .line 1009
    const/high16 v2, 0x40000000    # 2.0f

    .line 1010
    .line 1011
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v2

    .line 1015
    new-instance v8, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 1016
    .line 1017
    const-string v9, "circle-stroke-width"

    .line 1018
    .line 1019
    invoke-direct {v8, v9, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1020
    .line 1021
    .line 1022
    move/from16 v2, v19

    .line 1023
    .line 1024
    new-array v2, v2, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 1025
    .line 1026
    aput-object v3, v2, p0

    .line 1027
    .line 1028
    const/16 v20, 0x1

    .line 1029
    .line 1030
    aput-object v4, v2, v20

    .line 1031
    .line 1032
    const/16 v17, 0x2

    .line 1033
    .line 1034
    aput-object v5, v2, v17

    .line 1035
    .line 1036
    aput-object v6, v2, v23

    .line 1037
    .line 1038
    const/16 v18, 0x4

    .line 1039
    .line 1040
    aput-object v8, v2, v18

    .line 1041
    .line 1042
    invoke-virtual {v0, v2}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    .line 1044
    .line 1045
    goto :goto_f

    .line 1046
    :goto_e
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 1047
    .line 1048
    .line 1049
    :cond_13
    :goto_f
    iget-object v0, v7, Lorg/wikipedia/places/PlacesFragment;->symbolManager:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 1050
    .line 1051
    if-eqz v0, :cond_14

    .line 1052
    .line 1053
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1054
    .line 1055
    new-instance v3, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 1056
    .line 1057
    const-string v4, "icon-allow-overlap"

    .line 1058
    .line 1059
    invoke-direct {v3, v4, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1060
    .line 1061
    .line 1062
    iget-object v2, v0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/HashMap;

    .line 1063
    .line 1064
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    .line 1066
    .line 1067
    iget-object v0, v0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 1068
    .line 1069
    const/4 v2, 0x1

    .line 1070
    new-array v4, v2, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 1071
    .line 1072
    aput-object v3, v4, p0

    .line 1073
    .line 1074
    invoke-virtual {v0, v4}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 1075
    .line 1076
    .line 1077
    :cond_14
    iget-object v0, v7, Lorg/wikipedia/places/PlacesFragment;->symbolManager:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 1078
    .line 1079
    if-eqz v0, :cond_15

    .line 1080
    .line 1081
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1082
    .line 1083
    new-instance v3, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 1084
    .line 1085
    invoke-direct {v3, v1, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1086
    .line 1087
    .line 1088
    iget-object v2, v0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/HashMap;

    .line 1089
    .line 1090
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    .line 1092
    .line 1093
    iget-object v0, v0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 1094
    .line 1095
    const/4 v2, 0x1

    .line 1096
    new-array v1, v2, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 1097
    .line 1098
    aput-object v3, v1, p0

    .line 1099
    .line 1100
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 1101
    .line 1102
    .line 1103
    :cond_15
    iget-object v0, v7, Lorg/wikipedia/places/PlacesFragment;->symbolManager:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 1104
    .line 1105
    if-eqz v0, :cond_16

    .line 1106
    .line 1107
    new-instance v1, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda19;

    .line 1108
    .line 1109
    invoke-direct {v1, v7}, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda19;-><init>(Lorg/wikipedia/places/PlacesFragment;)V

    .line 1110
    .line 1111
    .line 1112
    iget-object v0, v0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->clickListeners:Ljava/util/ArrayList;

    .line 1113
    .line 1114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    .line 1116
    .line 1117
    :cond_16
    invoke-virtual {v7}, Lorg/wikipedia/places/PlacesFragment;->haveLocationPermissions()Z

    .line 1118
    .line 1119
    .line 1120
    move-result v0

    .line 1121
    if-eqz v0, :cond_17

    .line 1122
    .line 1123
    invoke-virtual {v7}, Lorg/wikipedia/places/PlacesFragment;->startLocationTracking()V

    .line 1124
    .line 1125
    .line 1126
    :cond_17
    invoke-virtual {v7}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    iget-object v0, v0, Lorg/wikipedia/places/PlacesFragmentViewModel;->location:Landroid/location/Location;

    .line 1131
    .line 1132
    if-eqz v0, :cond_18

    .line 1133
    .line 1134
    const/4 v10, 0x2

    .line 1135
    invoke-static {v7, v0, v10}, Lorg/wikipedia/places/PlacesFragment;->goToLocation$default(Lorg/wikipedia/places/PlacesFragment;Landroid/location/Location;I)V

    .line 1136
    .line 1137
    .line 1138
    goto :goto_15

    .line 1139
    :cond_18
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1140
    .line 1141
    const v0, 0x7f1205df

    .line 1142
    .line 1143
    .line 1144
    const/4 v1, 0x0

    .line 1145
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v0

    .line 1149
    if-eqz v0, :cond_1a

    .line 1150
    .line 1151
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1152
    .line 1153
    .line 1154
    move-result v1

    .line 1155
    if-nez v1, :cond_19

    .line 1156
    .line 1157
    goto :goto_10

    .line 1158
    :cond_19
    move-object v1, v0

    .line 1159
    goto :goto_11

    .line 1160
    :cond_1a
    :goto_10
    const/4 v1, 0x0

    .line 1161
    :goto_11
    if-eqz v1, :cond_1b

    .line 1162
    .line 1163
    invoke-static {}, Lorg/wikipedia/places/PlacesFragment;->getDefaultLocation()Landroid/location/Location;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    const/4 v10, 0x2

    .line 1168
    invoke-static {v7, v0, v10}, Lorg/wikipedia/places/PlacesFragment;->goToLocation$default(Lorg/wikipedia/places/PlacesFragment;Landroid/location/Location;I)V

    .line 1169
    .line 1170
    .line 1171
    goto :goto_14

    .line 1172
    :cond_1b
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesLastLocationAndZoomLevel()Lkotlin/Pair;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v0

    .line 1176
    if-eqz v0, :cond_1c

    .line 1177
    .line 1178
    iget-object v1, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 1179
    .line 1180
    check-cast v1, Landroid/location/Location;

    .line 1181
    .line 1182
    goto :goto_12

    .line 1183
    :cond_1c
    const/4 v1, 0x0

    .line 1184
    :goto_12
    if-eqz v0, :cond_1d

    .line 1185
    .line 1186
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 1187
    .line 1188
    check-cast v0, Ljava/lang/Number;

    .line 1189
    .line 1190
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 1191
    .line 1192
    .line 1193
    move-result-wide v2

    .line 1194
    goto :goto_13

    .line 1195
    :cond_1d
    iget-wide v2, v7, Lorg/wikipedia/places/PlacesFragment;->lastZoom:D

    .line 1196
    .line 1197
    :goto_13
    invoke-virtual {v7, v1, v2, v3}, Lorg/wikipedia/places/PlacesFragment;->goToLocation(Landroid/location/Location;D)V

    .line 1198
    .line 1199
    .line 1200
    :goto_14
    invoke-virtual {v7}, Lorg/wikipedia/places/PlacesFragment;->haveLocationPermissions()Z

    .line 1201
    .line 1202
    .line 1203
    move-result v0

    .line 1204
    if-nez v0, :cond_1e

    .line 1205
    .line 1206
    iget-object v0, v7, Lorg/wikipedia/places/PlacesFragment;->locationPermissionRequest:Landroidx/fragment/app/Fragment$10;

    .line 1207
    .line 1208
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 1209
    .line 1210
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1211
    .line 1212
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v1

    .line 1216
    const/4 v2, 0x0

    .line 1217
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 1218
    .line 1219
    .line 1220
    :cond_1e
    :goto_15
    return-void

    .line 1221
    :cond_1f
    const/4 v2, 0x0

    .line 1222
    const-string v0, "markerBitmapBase"

    .line 1223
    .line 1224
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1225
    .line 1226
    .line 1227
    throw v2
.end method

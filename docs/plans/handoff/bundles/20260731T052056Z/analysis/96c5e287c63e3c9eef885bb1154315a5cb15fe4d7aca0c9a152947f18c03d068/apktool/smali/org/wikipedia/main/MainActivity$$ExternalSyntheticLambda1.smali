.class public final synthetic Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final invoke$org$wikipedia$places$PlacesFragment$$ExternalSyntheticLambda5(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object p0, p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/wikipedia/places/PlacesFragment;

    .line 4
    .line 5
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 6
    .line 7
    sget-object v0, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 8
    .line 9
    instance-of v0, p1, Lorg/wikipedia/util/Resource$Success;

    .line 10
    .line 11
    if-eqz v0, :cond_d

    .line 12
    .line 13
    check-cast p1, Lorg/wikipedia/util/Resource$Success;

    .line 14
    .line 15
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Ljava/util/List;

    .line 18
    .line 19
    iget-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->annotationCache:Lkotlin/collections/ArrayDeque;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/wikipedia/places/PlacesFragment;->symbolManager:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x2

    .line 25
    if-eqz v1, :cond_c

    .line 26
    .line 27
    new-instance v4, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/4 v7, 0x0

    .line 41
    if-eqz v6, :cond_3

    .line 42
    .line 43
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    move-object v8, v6

    .line 48
    check-cast v8, Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-eqz v10, :cond_2

    .line 59
    .line 60
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    move-object v11, v10

    .line 65
    check-cast v11, Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 66
    .line 67
    iget v11, v11, Lorg/wikipedia/dataclient/page/NearbyPage;->pageId:I

    .line 68
    .line 69
    iget v12, v8, Lorg/wikipedia/dataclient/page/NearbyPage;->pageId:I

    .line 70
    .line 71
    if-ne v11, v12, :cond_1

    .line 72
    .line 73
    move-object v7, v10

    .line 74
    :cond_2
    if-nez v7, :cond_0

    .line 75
    .line 76
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_c

    .line 89
    .line 90
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 95
    .line 96
    new-instance v6, Lokhttp3/MultipartBody$Builder;

    .line 97
    .line 98
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v8, Lorg/maplibre/android/geometry/LatLng;

    .line 102
    .line 103
    iget-wide v9, v5, Lorg/wikipedia/dataclient/page/NearbyPage;->latitude:D

    .line 104
    .line 105
    iget-object v11, v5, Lorg/wikipedia/dataclient/page/NearbyPage;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 106
    .line 107
    iget-wide v12, v5, Lorg/wikipedia/dataclient/page/NearbyPage;->longitude:D

    .line 108
    .line 109
    invoke-direct {v8, v9, v10, v12, v13}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 113
    .line 114
    .line 115
    move-result-wide v9

    .line 116
    invoke-virtual {v8}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 117
    .line 118
    .line 119
    move-result-wide v12

    .line 120
    invoke-static {v9, v10, v12, v13}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    iput-object v8, v6, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 125
    .line 126
    sget-object v8, Lorg/wikipedia/places/PlacesFragment;->MARKER_FONT_STACK:[Ljava/lang/String;

    .line 127
    .line 128
    iput-object v8, v6, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 129
    .line 130
    const-string v8, "markerDrawable"

    .line 131
    .line 132
    iput-object v8, v6, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 133
    .line 134
    invoke-virtual {v1, v6}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->create(Lokhttp3/MultipartBody$Builder;)Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    iput-object v6, v5, Lorg/wikipedia/dataclient/page/NearbyPage;->annotation:Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 139
    .line 140
    invoke-virtual {p0}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    iget-object v6, v6, Lorg/wikipedia/places/PlacesFragmentViewModel;->highlightedPageTitle:Lorg/wikipedia/page/PageTitle;

    .line 145
    .line 146
    if-eqz v6, :cond_5

    .line 147
    .line 148
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    goto :goto_2

    .line 153
    :cond_5
    move-object v6, v7

    .line 154
    :goto_2
    if-nez v6, :cond_6

    .line 155
    .line 156
    const-string v6, ""

    .line 157
    .line 158
    :cond_6
    invoke-virtual {v11}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-eqz v6, :cond_7

    .line 167
    .line 168
    iget-object v6, v5, Lorg/wikipedia/dataclient/page/NearbyPage;->annotation:Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 169
    .line 170
    invoke-virtual {p0, v6}, Lorg/wikipedia/places/PlacesFragment;->setMagnifiedSymbol(Lorg/maplibre/android/plugins/annotation/Symbol;)V

    .line 171
    .line 172
    .line 173
    :cond_7
    invoke-virtual {v0, v5}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iget-object v6, v5, Lorg/wikipedia/dataclient/page/NearbyPage;->annotation:Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 177
    .line 178
    invoke-virtual {v1, v6}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->update(Lorg/maplibre/android/plugins/annotation/Symbol;)V

    .line 179
    .line 180
    .line 181
    iget-object v6, v11, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 182
    .line 183
    sget-object v8, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 184
    .line 185
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isImageDownloadEnabled()Z

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    if-eqz v8, :cond_a

    .line 190
    .line 191
    if-eqz v6, :cond_a

    .line 192
    .line 193
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    if-nez v8, :cond_8

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    new-instance v9, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 205
    .line 206
    const/16 v10, 0x1a

    .line 207
    .line 208
    invoke-direct {v9, p0, v5, v6, v10}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 209
    .line 210
    .line 211
    sget-object v5, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 212
    .line 213
    if-eqz v5, :cond_9

    .line 214
    .line 215
    new-instance v5, Lcoil3/request/ImageRequest$Builder;

    .line 216
    .line 217
    invoke-direct {v5, v8}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .line 219
    .line 220
    iput-object v6, v5, Lcoil3/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 221
    .line 222
    new-instance v6, Lorg/wikipedia/views/imageservice/DimImageTransformation;

    .line 223
    .line 224
    invoke-direct {v6, v3}, Lorg/wikipedia/views/imageservice/DimImageTransformation;-><init>(I)V

    .line 225
    .line 226
    .line 227
    const/4 v10, 0x1

    .line 228
    new-array v10, v10, [Lorg/wikipedia/views/imageservice/DimImageTransformation;

    .line 229
    .line 230
    aput-object v6, v10, v2

    .line 231
    .line 232
    invoke-static {v5, v10}, Lcoil3/request/ImageRequestsKt;->transformations(Lcoil3/request/ImageRequest$Builder;[Lorg/wikipedia/views/imageservice/DimImageTransformation;)V

    .line 233
    .line 234
    .line 235
    new-instance v6, Landroidx/compose/ui/draw/DrawResult;

    .line 236
    .line 237
    invoke-direct {v6, v9}, Landroidx/compose/ui/draw/DrawResult;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 238
    .line 239
    .line 240
    iput-object v6, v5, Lcoil3/request/ImageRequest$Builder;->target:Lcoil3/target/Target;

    .line 241
    .line 242
    invoke-virtual {v5}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-static {v8}, Lcoil3/SingletonImageLoader;->get(Landroid/content/Context;)Lcoil3/RealImageLoader;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    invoke-virtual {v6, v5}, Lcoil3/RealImageLoader;->enqueue(Lcoil3/request/ImageRequest;)V

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_9
    const-string p0, "ImageService has not been set, call ImageService.setImplementation() before using ImageService"

    .line 255
    .line 256
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    return-object v7

    .line 260
    :cond_a
    :goto_3
    iget v5, v0, Lkotlin/collections/ArrayDeque;->size:I

    .line 261
    .line 262
    const/16 v6, 0xfa

    .line 263
    .line 264
    if-le v5, v6, :cond_4

    .line 265
    .line 266
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    check-cast v5, Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 271
    .line 272
    iget-object v6, v5, Lorg/wikipedia/dataclient/page/NearbyPage;->annotation:Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 273
    .line 274
    iget-object v5, v5, Lorg/wikipedia/dataclient/page/NearbyPage;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 275
    .line 276
    iget-object v8, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->annotations:Landroidx/collection/LongSparseArray;

    .line 277
    .line 278
    iget-object v6, v6, Lorg/maplibre/android/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    .line 279
    .line 280
    const-string v9, "id"

    .line 281
    .line 282
    invoke-virtual {v6, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 287
    .line 288
    .line 289
    move-result-wide v9

    .line 290
    invoke-virtual {v8, v9, v10}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 291
    .line 292
    .line 293
    iget-object v6, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->draggableAnnotationController:Lokio/internal/DefaultSocket;

    .line 294
    .line 295
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->updateSource()V

    .line 299
    .line 300
    .line 301
    iget-object v6, v5, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 302
    .line 303
    if-eqz v6, :cond_4

    .line 304
    .line 305
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    if-nez v6, :cond_b

    .line 310
    .line 311
    goto/16 :goto_1

    .line 312
    .line 313
    :cond_b
    iget-object v6, p0, Lorg/wikipedia/places/PlacesFragment;->mapboxMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 314
    .line 315
    if-eqz v6, :cond_4

    .line 316
    .line 317
    invoke-virtual {v6}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    if-eqz v6, :cond_4

    .line 322
    .line 323
    iget-object v5, v5, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6, v5}, Lorg/maplibre/android/maps/Style;->removeImage(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_1

    .line 332
    .line 333
    :cond_c
    iget-object v0, p0, Lorg/wikipedia/places/PlacesFragment;->_binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 339
    .line 340
    new-instance v1, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 341
    .line 342
    invoke-direct {v1, p0, p1}, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;-><init>(Lorg/wikipedia/places/PlacesFragment;Ljava/util/List;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 346
    .line 347
    .line 348
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    if-eqz p1, :cond_e

    .line 353
    .line 354
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 355
    .line 356
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesLastLocationAndZoomLevel()Lkotlin/Pair;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    if-nez p1, :cond_e

    .line 361
    .line 362
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    const v0, 0x7f1205ae

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    const/16 v1, 0xc

    .line 377
    .line 378
    invoke-static {p1, v0, v2, v1}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    new-instance v0, Lorg/wikipedia/util/FeedbackUtil$$ExternalSyntheticLambda1;

    .line 383
    .line 384
    invoke-direct {v0, p1, v3}, Lorg/wikipedia/util/FeedbackUtil$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/snackbar/Snackbar;I)V

    .line 385
    .line 386
    .line 387
    const v1, 0x7f120140

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 394
    .line 395
    .line 396
    iget-object p1, p0, Lorg/wikipedia/places/PlacesFragment;->lastLocation:Landroid/location/Location;

    .line 397
    .line 398
    if-eqz p1, :cond_e

    .line 399
    .line 400
    iget-wide v0, p0, Lorg/wikipedia/places/PlacesFragment;->lastZoom:D

    .line 401
    .line 402
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 403
    .line 404
    .line 405
    move-result-object p0

    .line 406
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 407
    .line 408
    .line 409
    move-result-wide v0

    .line 410
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 411
    .line 412
    .line 413
    move-result-wide v2

    .line 414
    new-instance p1, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string/jumbo v0, "|"

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    const p1, 0x7f120640

    .line 442
    .line 443
    .line 444
    invoke-static {p1, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 445
    .line 446
    .line 447
    goto :goto_4

    .line 448
    :cond_d
    instance-of v0, p1, Lorg/wikipedia/util/Resource$Error;

    .line 449
    .line 450
    if-eqz v0, :cond_e

    .line 451
    .line 452
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 453
    .line 454
    .line 455
    move-result-object p0

    .line 456
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 457
    .line 458
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 459
    .line 460
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 461
    .line 462
    .line 463
    :cond_e
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 464
    .line 465
    return-object p0
.end method

.method private final invoke$org$wikipedia$settings$AppIconDialog$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object p0, p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/wikipedia/settings/AppIconDialog;

    .line 4
    .line 5
    check-cast p1, Lorg/wikipedia/settings/LauncherIcon;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lorg/wikipedia/settings/LauncherIcon;->DEFAULT:Lorg/wikipedia/settings/LauncherIcon;

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    const-string v0, "icon_deactivate_click"

    .line 15
    .line 16
    :goto_0
    move-object v3, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const-string v0, "icon_activate_click"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :goto_1
    const/4 v6, 0x0

    .line 22
    const/16 v1, 0xee

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const-string v5, "setting"

    .line 27
    .line 28
    invoke-static/range {v1 .. v6}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 32
    .line 33
    invoke-virtual {p1}, Lorg/wikipedia/settings/LauncherIcon;->getKey()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const v1, 0x7f12067a

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 44
    .line 45
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {}, Lorg/wikipedia/settings/LauncherIcon;->getEntries()Lkotlin/enums/EnumEntries;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const/4 v4, 0x2

    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lorg/wikipedia/settings/LauncherIcon;

    .line 77
    .line 78
    invoke-virtual {v3, v0}, Lorg/wikipedia/settings/LauncherIcon;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const/4 v6, 0x1

    .line 83
    if-ne v3, p1, :cond_1

    .line 84
    .line 85
    move v4, v6

    .line 86
    :cond_1
    invoke-virtual {v1, v5, v4, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 95
    .line 96
    invoke-static {v0}, Lkotlinx/coroutines/AwaitKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 101
    .line 102
    new-instance v2, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 103
    .line 104
    const/4 v3, 0x5

    .line 105
    invoke-direct {v2, v1, v3}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 109
    .line 110
    const/4 v3, 0x7

    .line 111
    const/4 v5, 0x0

    .line 112
    invoke-direct {v1, v3, p1, v5}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v2, v5, v1, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const p1, 0x7f120861

    .line 126
    .line 127
    .line 128
    const/4 v0, 0x0

    .line 129
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 134
    .line 135
    .line 136
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 137
    .line 138
    return-object p0
.end method

.method private final invoke$org$wikipedia$suggestededits$SuggestedEditsRecentEditsActivity$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object p0, p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsActivity;

    .line 4
    .line 5
    check-cast p1, Landroidx/fragment/app/FragmentManager$1;

    .line 6
    .line 7
    sget v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsActivity;->$r8$clinit:I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 13
    .line 14
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 15
    .line 16
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 17
    .line 18
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 23
    .line 24
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const-string v6, "app_patroller_experience"

    .line 29
    .line 30
    const-string v1, "back"

    .line 31
    .line 32
    const-string v2, "pt_recent_changes"

    .line 33
    .line 34
    const-string v3, ""

    .line 35
    .line 36
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 43
    .line 44
    .line 45
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method private final invoke$org$wikipedia$suggestededits$SuggestedEditsRecentEditsOnboardingActivity$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object p0, p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsOnboardingActivity;

    .line 4
    .line 5
    check-cast p1, Landroidx/fragment/app/FragmentManager$1;

    .line 6
    .line 7
    sget v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsOnboardingActivity;->$r8$clinit:I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 13
    .line 14
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 15
    .line 16
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 17
    .line 18
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 23
    .line 24
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const-string v6, "app_patroller_experience"

    .line 29
    .line 30
    const-string v1, "back"

    .line 31
    .line 32
    const-string v2, "pt_onboarding"

    .line 33
    .line 34
    const-string v3, ""

    .line 35
    .line 36
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 43
    .line 44
    .line 45
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method private final invoke$org$wikipedia$suggestededits$SuggestionsActivity$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestionsActivity;

    .line 4
    .line 5
    check-cast p1, Landroidx/fragment/app/FragmentManager$1;

    .line 6
    .line 7
    sget v0, Lorg/wikipedia/suggestededits/SuggestionsActivity;->$r8$clinit:I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->topBaseChild()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->onBackPressed()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method private final invoke$org$wikipedia$talk$TalkTopicViewModel$loadTopic$2$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/Set;

    .line 4
    .line 5
    check-cast p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 6
    .line 7
    iget-object p1, p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    xor-int/lit8 p0, p0, 0x1

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private final invoke$org$wikipedia$usercontrib$UserContribListActivity$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 4
    .line 5
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 6
    .line 7
    instance-of p1, p1, Lorg/wikipedia/util/Resource$Success;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribStatsAdapter:Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->userContribSearchBarAdapter:Lorg/wikipedia/usercontrib/UserContribListActivity$SearchBarAdapter;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->$r8$clinit:I

    .line 24
    .line 25
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/16 v4, 0x23

    .line 6
    .line 7
    const/4 v5, 0x5

    .line 8
    const v6, 0x7f0401c3

    .line 9
    .line 10
    .line 11
    const/4 v9, 0x3

    .line 12
    const-string v10, "binding"

    .line 13
    .line 14
    const/16 v11, 0x8

    .line 15
    .line 16
    const/4 v12, 0x4

    .line 17
    const/4 v13, 0x0

    .line 18
    const/4 v14, 0x2

    .line 19
    const/4 v15, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    sget-object v17, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    .line 23
    iget-object v3, v0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 24
    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    check-cast v3, Lorg/wikipedia/watchlist/WatchlistExpiryDialog;

    .line 29
    .line 30
    move-object/from16 v0, p1

    .line 31
    .line 32
    check-cast v0, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v1, v3, Lorg/wikipedia/watchlist/WatchlistExpiryDialog;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 38
    .line 39
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel;

    .line 44
    .line 45
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v3, v1, Lorg/wikipedia/watchlist/WatchlistExpiryDialogViewModel;->handler:Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 50
    .line 51
    new-instance v4, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;

    .line 52
    .line 53
    invoke-direct {v4, v1, v0, v13, v14}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v3, v13, v4, v14}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 57
    .line 58
    .line 59
    return-object v17

    .line 60
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->invoke$org$wikipedia$usercontrib$UserContribListActivity$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0

    .line 65
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->invoke$org$wikipedia$talk$TalkTopicViewModel$loadTopic$2$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0

    .line 70
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->invoke$org$wikipedia$suggestededits$SuggestionsActivity$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0

    .line 75
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->invoke$org$wikipedia$suggestededits$SuggestedEditsRecentEditsOnboardingActivity$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0

    .line 80
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->invoke$org$wikipedia$suggestededits$SuggestedEditsRecentEditsActivity$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0

    .line 85
    :pswitch_5
    check-cast v3, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;

    .line 86
    .line 87
    move-object/from16 v0, p1

    .line 88
    .line 89
    check-cast v0, Landroidx/fragment/app/FragmentManager$1;

    .line 90
    .line 91
    sget v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->$r8$clinit:I

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    iget-object v0, v3, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagEditActivity;->suggestedEditsImageTagsFragment:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 97
    .line 98
    if-eqz v0, :cond_1

    .line 99
    .line 100
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->onBackPressed()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_0

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-object v17

    .line 111
    :cond_1
    const-string v0, "suggestedEditsImageTagsFragment"

    .line 112
    .line 113
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v13

    .line 117
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->invoke$org$wikipedia$settings$AppIconDialog$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0

    .line 122
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->invoke$org$wikipedia$places$PlacesFragment$$ExternalSyntheticLambda5(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    return-object v0

    .line 127
    :pswitch_8
    check-cast v3, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 128
    .line 129
    move-object/from16 v0, p1

    .line 130
    .line 131
    check-cast v0, Lorg/wikipedia/util/Resource;

    .line 132
    .line 133
    iget-object v0, v3, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistoryStatsAdapter:Lorg/wikipedia/page/edithistory/EditHistoryListActivity$StatsItemAdapter;

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 136
    .line 137
    .line 138
    iget-object v0, v3, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->editHistorySearchBarAdapter:Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 141
    .line 142
    .line 143
    return-object v17

    .line 144
    :pswitch_9
    check-cast v3, Lorg/wikipedia/notifications/db/NotificationDao_Impl;

    .line 145
    .line 146
    move-object/from16 v0, p1

    .line 147
    .line 148
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    const-string v1, "SELECT * FROM Notification"

    .line 154
    .line 155
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    :try_start_0
    const-string v0, "id"

    .line 160
    .line 161
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    const-string/jumbo v2, "wiki"

    .line 166
    .line 167
    .line 168
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    const-string v4, "read"

    .line 173
    .line 174
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    const-string v5, "category"

    .line 179
    .line 180
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    const-string/jumbo v6, "type"

    .line 185
    .line 186
    .line 187
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    const-string v7, "revid"

    .line 192
    .line 193
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    const-string v8, "title"

    .line 198
    .line 199
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    const-string v9, "agent"

    .line 204
    .line 205
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    const-string v10, "timestamp"

    .line 210
    .line 211
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    const-string v11, "contents"

    .line 216
    .line 217
    invoke-static {v1, v11}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    new-instance v12, Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .line 225
    .line 226
    :goto_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    if-eqz v14, :cond_7

    .line 231
    .line 232
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 233
    .line 234
    .line 235
    move-result-wide v16

    .line 236
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v18

    .line 240
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 241
    .line 242
    .line 243
    move-result v14

    .line 244
    if-eqz v14, :cond_2

    .line 245
    .line 246
    move-object/from16 v19, v13

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v14

    .line 253
    move-object/from16 v19, v14

    .line 254
    .line 255
    :goto_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v20

    .line 259
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v21

    .line 263
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 264
    .line 265
    .line 266
    move-result-wide v22

    .line 267
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 268
    .line 269
    .line 270
    move-result v14

    .line 271
    if-eqz v14, :cond_3

    .line 272
    .line 273
    move-object v14, v13

    .line 274
    goto :goto_3

    .line 275
    :cond_3
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v14

    .line 279
    :goto_3
    iget-object v15, v3, Lorg/wikipedia/notifications/db/NotificationDao_Impl;->__notificationTypeConverters:Lokio/Path$Companion;

    .line 280
    .line 281
    invoke-static {v14}, Lokio/Path$Companion;->stringToTitle(Ljava/lang/String;)Lorg/wikipedia/notifications/db/Notification$Title;

    .line 282
    .line 283
    .line 284
    move-result-object v24

    .line 285
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 286
    .line 287
    .line 288
    move-result v14

    .line 289
    if-eqz v14, :cond_4

    .line 290
    .line 291
    move-object v14, v13

    .line 292
    goto :goto_4

    .line 293
    :cond_4
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v14

    .line 297
    :goto_4
    invoke-static {v14}, Lokio/Path$Companion;->stringToAgent(Ljava/lang/String;)Lorg/wikipedia/notifications/db/Notification$Agent;

    .line 298
    .line 299
    .line 300
    move-result-object v25

    .line 301
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 302
    .line 303
    .line 304
    move-result v14

    .line 305
    if-eqz v14, :cond_5

    .line 306
    .line 307
    move-object v14, v13

    .line 308
    goto :goto_5

    .line 309
    :cond_5
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v14

    .line 313
    :goto_5
    invoke-static {v14}, Lokio/Path$Companion;->stringToTimestamp(Ljava/lang/String;)Lorg/wikipedia/notifications/db/Notification$Timestamp;

    .line 314
    .line 315
    .line 316
    move-result-object v26

    .line 317
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 318
    .line 319
    .line 320
    move-result v14

    .line 321
    if-eqz v14, :cond_6

    .line 322
    .line 323
    move-object v14, v13

    .line 324
    goto :goto_6

    .line 325
    :cond_6
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v14

    .line 329
    :goto_6
    invoke-static {v14}, Lokio/Path$Companion;->stringToContents(Ljava/lang/String;)Lorg/wikipedia/notifications/db/Notification$Contents;

    .line 330
    .line 331
    .line 332
    move-result-object v27

    .line 333
    new-instance v15, Lorg/wikipedia/notifications/db/Notification;

    .line 334
    .line 335
    invoke-direct/range {v15 .. v27}, Lorg/wikipedia/notifications/db/Notification;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/wikipedia/notifications/db/Notification$Title;Lorg/wikipedia/notifications/db/Notification$Agent;Lorg/wikipedia/notifications/db/Notification$Timestamp;Lorg/wikipedia/notifications/db/Notification$Contents;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    .line 340
    .line 341
    goto :goto_1

    .line 342
    :catchall_0
    move-exception v0

    .line 343
    goto :goto_7

    .line 344
    :cond_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 345
    .line 346
    .line 347
    return-object v12

    .line 348
    :goto_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 349
    .line 350
    .line 351
    throw v0

    .line 352
    :pswitch_a
    check-cast v3, Lorg/wikipedia/login/LoginActivity;

    .line 353
    .line 354
    move-object/from16 v0, p1

    .line 355
    .line 356
    check-cast v0, Landroidx/fragment/app/FragmentManager$1;

    .line 357
    .line 358
    sget v1, Lorg/wikipedia/login/LoginActivity;->$r8$clinit:I

    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    invoke-static {v3}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    if-eqz v4, :cond_8

    .line 368
    .line 369
    const/4 v10, 0x0

    .line 370
    const/16 v11, 0xf6

    .line 371
    .line 372
    const-string v5, "click"

    .line 373
    .line 374
    const/4 v6, 0x0

    .line 375
    const/4 v7, 0x0

    .line 376
    const-string v8, "back"

    .line 377
    .line 378
    const/4 v9, 0x0

    .line 379
    invoke-static/range {v4 .. v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 380
    .line 381
    .line 382
    :cond_8
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 383
    .line 384
    .line 385
    return-object v17

    .line 386
    :pswitch_b
    check-cast v3, Lorg/wikipedia/language/AppLanguageState;

    .line 387
    .line 388
    move-object/from16 v0, p1

    .line 389
    .line 390
    check-cast v0, Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    if-nez v0, :cond_9

    .line 400
    .line 401
    const-string v0, ""

    .line 402
    .line 403
    :cond_9
    return-object v0

    .line 404
    :pswitch_c
    check-cast v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 405
    .line 406
    move-object/from16 v0, p1

    .line 407
    .line 408
    check-cast v0, Lorg/wikipedia/util/Resource;

    .line 409
    .line 410
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Loading;

    .line 411
    .line 412
    if-eqz v1, :cond_a

    .line 413
    .line 414
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->updateOnLoading$1()V

    .line 415
    .line 416
    .line 417
    goto/16 :goto_13

    .line 418
    .line 419
    :cond_a
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Error;

    .line 420
    .line 421
    if-eqz v1, :cond_b

    .line 422
    .line 423
    check-cast v0, Lorg/wikipedia/util/Resource$Error;

    .line 424
    .line 425
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 426
    .line 427
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 428
    .line 429
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 435
    .line 436
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 437
    .line 438
    .line 439
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 440
    .line 441
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    .line 443
    .line 444
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeImage:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 447
    .line 448
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 449
    .line 450
    .line 451
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 452
    .line 453
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 457
    .line 458
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 459
    .line 460
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 461
    .line 462
    .line 463
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 464
    .line 465
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 471
    .line 472
    invoke-virtual {v1, v0, v13}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 473
    .line 474
    .line 475
    goto/16 :goto_13

    .line 476
    .line 477
    :cond_b
    instance-of v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameEnded;

    .line 478
    .line 479
    if-eqz v1, :cond_22

    .line 480
    .line 481
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameEnded;

    .line 482
    .line 483
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameEnded;->data:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 484
    .line 485
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameEnded;->gameStatistics:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;

    .line 486
    .line 487
    iget-object v4, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->mainActivity:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 488
    .line 489
    if-eqz v4, :cond_c

    .line 490
    .line 491
    invoke-virtual {v4}, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->showAppBarDateText()V

    .line 492
    .line 493
    .line 494
    :cond_c
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    iget-object v4, v4, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 499
    .line 500
    invoke-virtual {v4}, Lj$/time/LocalDate;->getMonthValue()I

    .line 501
    .line 502
    .line 503
    move-result v4

    .line 504
    move-object/from16 v19, v13

    .line 505
    .line 506
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 507
    .line 508
    .line 509
    move-result-object v13

    .line 510
    iget-object v13, v13, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 511
    .line 512
    invoke-virtual {v13}, Lj$/time/LocalDate;->getDayOfMonth()I

    .line 513
    .line 514
    .line 515
    move-result v13

    .line 516
    invoke-static {v4, v13}, Lj$/time/MonthDay;->of(II)Lj$/time/MonthDay;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 521
    .line 522
    .line 523
    move-result-object v13

    .line 524
    const/high16 v20, 0x3f800000    # 1.0f

    .line 525
    .line 526
    const-string v7, "MMMM d"

    .line 527
    .line 528
    invoke-static {v13, v7}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v7

    .line 532
    invoke-static {v7}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    .line 533
    .line 534
    .line 535
    move-result-object v7

    .line 536
    invoke-virtual {v4, v7}, Lj$/time/MonthDay;->format(Lj$/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v4

    .line 540
    iget-object v7, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->mainActivity:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 541
    .line 542
    if-eqz v7, :cond_e

    .line 543
    .line 544
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    iget-object v7, v7, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->binding:Lokhttp3/Request$Builder;

    .line 548
    .line 549
    if-eqz v7, :cond_d

    .line 550
    .line 551
    iget-object v7, v7, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 552
    .line 553
    check-cast v7, Landroid/widget/TextView;

    .line 554
    .line 555
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    .line 557
    .line 558
    goto :goto_8

    .line 559
    :cond_d
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    throw v19

    .line 563
    :cond_e
    :goto_8
    iget-object v4, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 564
    .line 565
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    iget-object v4, v4, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 569
    .line 570
    check-cast v4, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 571
    .line 572
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 573
    .line 574
    .line 575
    iget-object v4, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 576
    .line 577
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    iget-object v4, v4, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 581
    .line 582
    check-cast v4, Lorg/wikipedia/views/WikiErrorView;

    .line 583
    .line 584
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 585
    .line 586
    .line 587
    iget-object v4, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 588
    .line 589
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 590
    .line 591
    .line 592
    iget-object v4, v4, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeImage:Ljava/lang/Object;

    .line 593
    .line 594
    check-cast v4, Landroidx/core/widget/NestedScrollView;

    .line 595
    .line 596
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 597
    .line 598
    .line 599
    iget-object v4, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->answerState:Ljava/util/List;

    .line 600
    .line 601
    iget v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->totalQuestions:I

    .line 602
    .line 603
    if-eqz v4, :cond_f

    .line 604
    .line 605
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 606
    .line 607
    .line 608
    move-result v7

    .line 609
    if-eqz v7, :cond_f

    .line 610
    .line 611
    move v10, v2

    .line 612
    goto :goto_a

    .line 613
    :cond_f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 614
    .line 615
    .line 616
    move-result-object v7

    .line 617
    move v10, v2

    .line 618
    :cond_10
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 619
    .line 620
    .line 621
    move-result v11

    .line 622
    if-eqz v11, :cond_12

    .line 623
    .line 624
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v11

    .line 628
    check-cast v11, Ljava/lang/Boolean;

    .line 629
    .line 630
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 631
    .line 632
    .line 633
    move-result v11

    .line 634
    if-eqz v11, :cond_10

    .line 635
    .line 636
    add-int/lit8 v10, v10, 0x1

    .line 637
    .line 638
    if-ltz v10, :cond_11

    .line 639
    .line 640
    goto :goto_9

    .line 641
    :cond_11
    invoke-static {}, Landroidx/room/Room;->throwCountOverflow()V

    .line 642
    .line 643
    .line 644
    throw v19

    .line 645
    :cond_12
    :goto_a
    iget-object v7, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 646
    .line 647
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 648
    .line 649
    .line 650
    iget-object v7, v7, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSource:Ljava/lang/Object;

    .line 651
    .line 652
    check-cast v7, Landroid/widget/TextView;

    .line 653
    .line 654
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 655
    .line 656
    .line 657
    move-result-object v11

    .line 658
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 659
    .line 660
    .line 661
    move-result-object v13

    .line 662
    const/16 v21, -0x1

    .line 663
    .line 664
    new-array v8, v14, [Ljava/lang/Object;

    .line 665
    .line 666
    aput-object v11, v8, v2

    .line 667
    .line 668
    aput-object v13, v8, v15

    .line 669
    .line 670
    const v11, 0x7f1204de

    .line 671
    .line 672
    .line 673
    invoke-virtual {v3, v11, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v8

    .line 677
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    .line 679
    .line 680
    if-eqz v10, :cond_14

    .line 681
    .line 682
    if-eq v10, v15, :cond_14

    .line 683
    .line 684
    if-eq v10, v14, :cond_14

    .line 685
    .line 686
    if-eq v10, v9, :cond_13

    .line 687
    .line 688
    if-eq v10, v12, :cond_13

    .line 689
    .line 690
    const v7, 0x7f0600a8

    .line 691
    .line 692
    .line 693
    goto :goto_b

    .line 694
    :cond_13
    const v7, 0x7f060400

    .line 695
    .line 696
    .line 697
    goto :goto_b

    .line 698
    :cond_14
    const v7, 0x7f06042d

    .line 699
    .line 700
    .line 701
    :goto_b
    iget-object v8, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 702
    .line 703
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 704
    .line 705
    .line 706
    iget-object v8, v8, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 707
    .line 708
    check-cast v8, Landroid/widget/LinearLayout;

    .line 709
    .line 710
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 711
    .line 712
    .line 713
    move-result-object v9

    .line 714
    invoke-virtual {v9, v7}, Landroid/content/Context;->getColor(I)I

    .line 715
    .line 716
    .line 717
    move-result v7

    .line 718
    invoke-virtual {v8, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 719
    .line 720
    .line 721
    iget-object v7, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 722
    .line 723
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 724
    .line 725
    .line 726
    iget-object v7, v7, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTitle:Ljava/lang/Object;

    .line 727
    .line 728
    check-cast v7, Landroidx/compose/ui/platform/ComposeView;

    .line 729
    .line 730
    new-instance v8, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda0;

    .line 731
    .line 732
    invoke-direct {v8, v0, v3, v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;I)V

    .line 733
    .line 734
    .line 735
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 736
    .line 737
    const v9, -0x39b3f11b

    .line 738
    .line 739
    .line 740
    invoke-direct {v0, v8, v15, v9}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v7, v0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 744
    .line 745
    .line 746
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 747
    .line 748
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 749
    .line 750
    .line 751
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 752
    .line 753
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 754
    .line 755
    new-instance v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 756
    .line 757
    invoke-direct {v7, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(I)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 761
    .line 762
    .line 763
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 764
    .line 765
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 766
    .line 767
    .line 768
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 769
    .line 770
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 771
    .line 772
    new-instance v7, Lorg/wikipedia/views/MarginItemDecoration;

    .line 773
    .line 774
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 775
    .line 776
    .line 777
    move-result-object v8

    .line 778
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 779
    .line 780
    .line 781
    move-result-object v9

    .line 782
    const v10, 0x7f0704ae

    .line 783
    .line 784
    .line 785
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 786
    .line 787
    .line 788
    move-result v9

    .line 789
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 790
    .line 791
    .line 792
    move-result-object v11

    .line 793
    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 794
    .line 795
    .line 796
    move-result v11

    .line 797
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 798
    .line 799
    .line 800
    move-result-object v13

    .line 801
    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 802
    .line 803
    .line 804
    move-result v13

    .line 805
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 806
    .line 807
    .line 808
    move-result-object v8

    .line 809
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 810
    .line 811
    .line 812
    move-result v8

    .line 813
    invoke-direct {v7, v9, v11, v13, v8}, Lorg/wikipedia/views/MarginItemDecoration;-><init>(IIII)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 817
    .line 818
    .line 819
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 820
    .line 821
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 822
    .line 823
    .line 824
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 825
    .line 826
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 827
    .line 828
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 829
    .line 830
    .line 831
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 832
    .line 833
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 834
    .line 835
    .line 836
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 837
    .line 838
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 839
    .line 840
    new-instance v7, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewAdapter;

    .line 841
    .line 842
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 843
    .line 844
    .line 845
    move-result-object v8

    .line 846
    invoke-virtual {v8}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->getArticlesMentioned()Ljava/util/ArrayList;

    .line 847
    .line 848
    .line 849
    move-result-object v8

    .line 850
    invoke-direct {v7, v3, v8}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewAdapter;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;Ljava/util/ArrayList;)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->getArticlesMentioned()Ljava/util/ArrayList;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    if-eqz v4, :cond_15

    .line 865
    .line 866
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 867
    .line 868
    .line 869
    move-result v7

    .line 870
    if-eqz v7, :cond_15

    .line 871
    .line 872
    move v8, v2

    .line 873
    goto :goto_d

    .line 874
    :cond_15
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 875
    .line 876
    .line 877
    move-result-object v7

    .line 878
    move v8, v2

    .line 879
    :cond_16
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 880
    .line 881
    .line 882
    move-result v9

    .line 883
    if-eqz v9, :cond_18

    .line 884
    .line 885
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v9

    .line 889
    check-cast v9, Ljava/lang/Boolean;

    .line 890
    .line 891
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 892
    .line 893
    .line 894
    move-result v9

    .line 895
    if-eqz v9, :cond_16

    .line 896
    .line 897
    add-int/lit8 v8, v8, 0x1

    .line 898
    .line 899
    if-ltz v8, :cond_17

    .line 900
    .line 901
    goto :goto_c

    .line 902
    :cond_17
    invoke-static {}, Landroidx/room/Room;->throwCountOverflow()V

    .line 903
    .line 904
    .line 905
    throw v19

    .line 906
    :cond_18
    :goto_d
    iput v2, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->loadedImagesForShare:I

    .line 907
    .line 908
    iget-object v7, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 909
    .line 910
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 911
    .line 912
    .line 913
    iget-object v7, v7, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 914
    .line 915
    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 916
    .line 917
    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 918
    .line 919
    check-cast v7, Landroid/widget/TextView;

    .line 920
    .line 921
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 922
    .line 923
    .line 924
    move-result-object v8

    .line 925
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 926
    .line 927
    .line 928
    move-result-object v9

    .line 929
    new-array v10, v14, [Ljava/lang/Object;

    .line 930
    .line 931
    aput-object v8, v10, v2

    .line 932
    .line 933
    aput-object v9, v10, v15

    .line 934
    .line 935
    const v8, 0x7f1204e7

    .line 936
    .line 937
    .line 938
    invoke-virtual {v3, v8, v10}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v8

    .line 942
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    .line 944
    .line 945
    const/high16 v7, 0x41a00000    # 20.0f

    .line 946
    .line 947
    invoke-static {v7}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 948
    .line 949
    .line 950
    move-result v7

    .line 951
    new-instance v8, Ljava/util/ArrayList;

    .line 952
    .line 953
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 954
    .line 955
    .line 956
    move v9, v2

    .line 957
    :goto_e
    if-ge v9, v1, :cond_1a

    .line 958
    .line 959
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 960
    .line 961
    .line 962
    move-result v10

    .line 963
    new-instance v11, Landroid/widget/ImageView;

    .line 964
    .line 965
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 966
    .line 967
    .line 968
    move-result-object v13

    .line 969
    invoke-direct {v11, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 970
    .line 971
    .line 972
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    .line 974
    .line 975
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    .line 976
    .line 977
    invoke-direct {v13, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 978
    .line 979
    .line 980
    invoke-virtual {v11, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 981
    .line 982
    .line 983
    invoke-static/range {v20 .. v20}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 984
    .line 985
    .line 986
    move-result v13

    .line 987
    invoke-virtual {v11, v13, v13, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 988
    .line 989
    .line 990
    const v13, 0x7f0802fc

    .line 991
    .line 992
    .line 993
    invoke-virtual {v11, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 994
    .line 995
    .line 996
    invoke-static {v4, v9}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-result-object v13

    .line 1000
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1001
    .line 1002
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v13

    .line 1006
    if-eqz v13, :cond_19

    .line 1007
    .line 1008
    const v13, 0x7f080139

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v13

    .line 1018
    const v14, 0x7f0405d1

    .line 1019
    .line 1020
    .line 1021
    invoke-static {v13, v14}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v13

    .line 1025
    goto :goto_f

    .line 1026
    :cond_19
    const v13, 0x7f080144

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v13

    .line 1036
    invoke-static {v13, v6}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v13

    .line 1040
    :goto_f
    invoke-virtual {v11, v13}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1041
    .line 1042
    .line 1043
    invoke-static/range {v21 .. v21}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v13

    .line 1047
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v11, v10}, Landroid/view/View;->setId(I)V

    .line 1051
    .line 1052
    .line 1053
    iget-object v10, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 1054
    .line 1055
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1056
    .line 1057
    .line 1058
    iget-object v10, v10, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 1059
    .line 1060
    check-cast v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1061
    .line 1062
    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 1063
    .line 1064
    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1065
    .line 1066
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1067
    .line 1068
    .line 1069
    add-int/lit8 v9, v9, 0x1

    .line 1070
    .line 1071
    goto :goto_e

    .line 1072
    :cond_1a
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 1073
    .line 1074
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1075
    .line 1076
    .line 1077
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 1078
    .line 1079
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1080
    .line 1081
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 1082
    .line 1083
    check-cast v1, Landroidx/constraintlayout/helper/widget/Flow;

    .line 1084
    .line 1085
    new-instance v4, Ljava/util/ArrayList;

    .line 1086
    .line 1087
    const/16 v6, 0xa

    .line 1088
    .line 1089
    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1090
    .line 1091
    .line 1092
    move-result v6

    .line 1093
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v6

    .line 1100
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1101
    .line 1102
    .line 1103
    move-result v7

    .line 1104
    if-eqz v7, :cond_1b

    .line 1105
    .line 1106
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v7

    .line 1110
    check-cast v7, Landroid/widget/ImageView;

    .line 1111
    .line 1112
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 1113
    .line 1114
    .line 1115
    move-result v7

    .line 1116
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v7

    .line 1120
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    .line 1122
    .line 1123
    goto :goto_10

    .line 1124
    :cond_1b
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/List;)[I

    .line 1125
    .line 1126
    .line 1127
    move-result-object v4

    .line 1128
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 1129
    .line 1130
    .line 1131
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 1132
    .line 1133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1134
    .line 1135
    .line 1136
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 1137
    .line 1138
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1139
    .line 1140
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 1141
    .line 1142
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 1143
    .line 1144
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1145
    .line 1146
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1147
    .line 1148
    .line 1149
    invoke-direct {v4, v15}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1153
    .line 1154
    .line 1155
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 1156
    .line 1157
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1158
    .line 1159
    .line 1160
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 1161
    .line 1162
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1163
    .line 1164
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 1165
    .line 1166
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 1167
    .line 1168
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 1169
    .line 1170
    .line 1171
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 1172
    .line 1173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1174
    .line 1175
    .line 1176
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 1177
    .line 1178
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1179
    .line 1180
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 1181
    .line 1182
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 1183
    .line 1184
    new-instance v4, Ljava/util/ArrayList;

    .line 1185
    .line 1186
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v0

    .line 1193
    :cond_1c
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1194
    .line 1195
    .line 1196
    move-result v6

    .line 1197
    if-eqz v6, :cond_1e

    .line 1198
    .line 1199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v6

    .line 1203
    move-object v7, v6

    .line 1204
    check-cast v7, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 1205
    .line 1206
    invoke-virtual {v7}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v7

    .line 1210
    if-eqz v7, :cond_1c

    .line 1211
    .line 1212
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 1213
    .line 1214
    .line 1215
    move-result v7

    .line 1216
    if-nez v7, :cond_1d

    .line 1217
    .line 1218
    goto :goto_11

    .line 1219
    :cond_1d
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1220
    .line 1221
    .line 1222
    goto :goto_11

    .line 1223
    :cond_1e
    new-instance v0, Ljava/util/ArrayList;

    .line 1224
    .line 1225
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v4

    .line 1232
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1233
    .line 1234
    .line 1235
    move-result v6

    .line 1236
    if-eqz v6, :cond_21

    .line 1237
    .line 1238
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v6

    .line 1242
    add-int/lit8 v7, v2, 0x1

    .line 1243
    .line 1244
    if-ltz v2, :cond_20

    .line 1245
    .line 1246
    move-object v8, v6

    .line 1247
    check-cast v8, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 1248
    .line 1249
    rem-int/lit8 v2, v2, 0x2

    .line 1250
    .line 1251
    if-nez v2, :cond_1f

    .line 1252
    .line 1253
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    .line 1255
    .line 1256
    :cond_1f
    move v2, v7

    .line 1257
    goto :goto_12

    .line 1258
    :cond_20
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 1259
    .line 1260
    .line 1261
    throw v19

    .line 1262
    :cond_21
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v0

    .line 1266
    new-instance v2, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 1267
    .line 1268
    invoke-direct {v2, v12, v3, v0}, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;-><init>(ILjava/lang/Object;Ljava/util/List;)V

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1272
    .line 1273
    .line 1274
    goto :goto_13

    .line 1275
    :cond_22
    const/16 v21, -0x1

    .line 1276
    .line 1277
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v0

    .line 1281
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v0

    .line 1285
    new-instance v1, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    .line 1286
    .line 1287
    move/from16 v3, v21

    .line 1288
    .line 1289
    invoke-direct {v1, v0, v3, v2}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;II)V

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 1293
    .line 1294
    .line 1295
    :goto_13
    return-object v17

    .line 1296
    :pswitch_d
    move-object/from16 v19, v13

    .line 1297
    .line 1298
    const/high16 v20, 0x3f800000    # 1.0f

    .line 1299
    .line 1300
    check-cast v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;

    .line 1301
    .line 1302
    move-object/from16 v0, p1

    .line 1303
    .line 1304
    check-cast v0, Lorg/wikipedia/util/Resource;

    .line 1305
    .line 1306
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Loading;

    .line 1307
    .line 1308
    if-eqz v1, :cond_23

    .line 1309
    .line 1310
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1311
    .line 1312
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1313
    .line 1314
    .line 1315
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 1316
    .line 1317
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1318
    .line 1319
    .line 1320
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1321
    .line 1322
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1323
    .line 1324
    .line 1325
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->scoreView:Lorg/wikipedia/games/onthisday/ScoreView;

    .line 1326
    .line 1327
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1328
    .line 1329
    .line 1330
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1331
    .line 1332
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1333
    .line 1334
    .line 1335
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->currentQuestionContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1336
    .line 1337
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1338
    .line 1339
    .line 1340
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1341
    .line 1342
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1343
    .line 1344
    .line 1345
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 1346
    .line 1347
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1348
    .line 1349
    .line 1350
    goto/16 :goto_17

    .line 1351
    .line 1352
    :cond_23
    instance-of v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$CurrentQuestion;

    .line 1353
    .line 1354
    if-eqz v1, :cond_25

    .line 1355
    .line 1356
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$CurrentQuestion;

    .line 1357
    .line 1358
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$CurrentQuestion;->data:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 1359
    .line 1360
    iget v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 1361
    .line 1362
    if-lez v1, :cond_24

    .line 1363
    .line 1364
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1365
    .line 1366
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1367
    .line 1368
    .line 1369
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText1:Landroid/widget/TextView;

    .line 1370
    .line 1371
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v1

    .line 1375
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1376
    .line 1377
    .line 1378
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 1379
    .line 1380
    .line 1381
    move-result v1

    .line 1382
    if-lez v1, :cond_24

    .line 1383
    .line 1384
    new-instance v1, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    .line 1385
    .line 1386
    const/16 v4, 0x1b

    .line 1387
    .line 1388
    invoke-direct {v1, v4, v3, v0}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1389
    .line 1390
    .line 1391
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1392
    .line 1393
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1394
    .line 1395
    .line 1396
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard1:Lorg/wikipedia/views/WikiCardView;

    .line 1397
    .line 1398
    move/from16 v4, v20

    .line 1399
    .line 1400
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1401
    .line 1402
    .line 1403
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1404
    .line 1405
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1406
    .line 1407
    .line 1408
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard2:Lorg/wikipedia/views/WikiCardView;

    .line 1409
    .line 1410
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1411
    .line 1412
    .line 1413
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1414
    .line 1415
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1416
    .line 1417
    .line 1418
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate1:Landroid/widget/TextView;

    .line 1419
    .line 1420
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1421
    .line 1422
    .line 1423
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1424
    .line 1425
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1426
    .line 1427
    .line 1428
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate2:Landroid/widget/TextView;

    .line 1429
    .line 1430
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1431
    .line 1432
    .line 1433
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1434
    .line 1435
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1436
    .line 1437
    .line 1438
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->centerContent:Landroid/widget/FrameLayout;

    .line 1439
    .line 1440
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1441
    .line 1442
    .line 1443
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1444
    .line 1445
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1446
    .line 1447
    .line 1448
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard1:Lorg/wikipedia/views/WikiCardView;

    .line 1449
    .line 1450
    const/high16 v4, -0x3c380000    # -400.0f

    .line 1451
    .line 1452
    invoke-static {v4}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 1453
    .line 1454
    .line 1455
    move-result v5

    .line 1456
    new-array v6, v14, [F

    .line 1457
    .line 1458
    const/4 v7, 0x0

    .line 1459
    aput v7, v6, v2

    .line 1460
    .line 1461
    aput v5, v6, v15

    .line 1462
    .line 1463
    const-string/jumbo v5, "translationX"

    .line 1464
    .line 1465
    .line 1466
    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v0

    .line 1470
    iget-object v6, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1471
    .line 1472
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1473
    .line 1474
    .line 1475
    iget-object v6, v6, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard1:Lorg/wikipedia/views/WikiCardView;

    .line 1476
    .line 1477
    new-array v8, v14, [F

    .line 1478
    .line 1479
    fill-array-data v8, :array_0

    .line 1480
    .line 1481
    .line 1482
    const-string v10, "alpha"

    .line 1483
    .line 1484
    invoke-static {v6, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v6

    .line 1488
    iget-object v8, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1489
    .line 1490
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1491
    .line 1492
    .line 1493
    iget-object v8, v8, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard2:Lorg/wikipedia/views/WikiCardView;

    .line 1494
    .line 1495
    invoke-static {v4}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 1496
    .line 1497
    .line 1498
    move-result v4

    .line 1499
    new-array v11, v14, [F

    .line 1500
    .line 1501
    aput v7, v11, v2

    .line 1502
    .line 1503
    aput v4, v11, v15

    .line 1504
    .line 1505
    invoke-static {v8, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v4

    .line 1509
    iget-object v5, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1510
    .line 1511
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1512
    .line 1513
    .line 1514
    iget-object v5, v5, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard2:Lorg/wikipedia/views/WikiCardView;

    .line 1515
    .line 1516
    new-array v7, v14, [F

    .line 1517
    .line 1518
    fill-array-data v7, :array_1

    .line 1519
    .line 1520
    .line 1521
    invoke-static {v5, v10, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v5

    .line 1525
    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    .line 1526
    .line 1527
    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 1528
    .line 1529
    .line 1530
    const-wide/16 v10, 0xfa

    .line 1531
    .line 1532
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1533
    .line 1534
    .line 1535
    invoke-virtual {v0, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1536
    .line 1537
    .line 1538
    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual {v4, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual {v4, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1554
    .line 1555
    .line 1556
    invoke-virtual {v5, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1557
    .line 1558
    .line 1559
    invoke-virtual {v5, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1560
    .line 1561
    .line 1562
    iget-object v7, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->cardAnimatorSetOut:Landroid/animation/AnimatorSet;

    .line 1563
    .line 1564
    invoke-virtual {v7}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1568
    .line 1569
    .line 1570
    new-array v8, v12, [Landroid/animation/Animator;

    .line 1571
    .line 1572
    aput-object v0, v8, v2

    .line 1573
    .line 1574
    aput-object v6, v8, v15

    .line 1575
    .line 1576
    aput-object v4, v8, v14

    .line 1577
    .line 1578
    aput-object v5, v8, v9

    .line 1579
    .line 1580
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1581
    .line 1582
    .line 1583
    new-instance v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;

    .line 1584
    .line 1585
    invoke-direct {v0, v15, v3, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;-><init>(ILjava/lang/Object;Lkotlin/Function;)V

    .line 1586
    .line 1587
    .line 1588
    invoke-virtual {v7, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1589
    .line 1590
    .line 1591
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 1592
    .line 1593
    .line 1594
    goto/16 :goto_17

    .line 1595
    .line 1596
    :cond_24
    invoke-virtual {v3, v0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->updateGameState(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;)V

    .line 1597
    .line 1598
    .line 1599
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->animateQuestionsIn()V

    .line 1600
    .line 1601
    .line 1602
    goto/16 :goto_17

    .line 1603
    .line 1604
    :cond_25
    instance-of v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStarted;

    .line 1605
    .line 1606
    if-eqz v1, :cond_26

    .line 1607
    .line 1608
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStarted;

    .line 1609
    .line 1610
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStarted;->data:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 1611
    .line 1612
    invoke-virtual {v3, v0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->updateGameState(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;)V

    .line 1613
    .line 1614
    .line 1615
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->animateQuestionsIn()V

    .line 1616
    .line 1617
    .line 1618
    goto/16 :goto_17

    .line 1619
    .line 1620
    :cond_26
    instance-of v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$CurrentQuestionCorrect;

    .line 1621
    .line 1622
    const v4, 0x7f0800ec

    .line 1623
    .line 1624
    .line 1625
    if-eqz v1, :cond_28

    .line 1626
    .line 1627
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$CurrentQuestionCorrect;

    .line 1628
    .line 1629
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$CurrentQuestionCorrect;->data:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 1630
    .line 1631
    invoke-virtual {v3, v0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->updateGameState(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;)V

    .line 1632
    .line 1633
    .line 1634
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->updateQuestionEndLayout()V

    .line 1635
    .line 1636
    .line 1637
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1638
    .line 1639
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1640
    .line 1641
    .line 1642
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->correctIncorrectText:Landroid/widget/TextView;

    .line 1643
    .line 1644
    const v5, 0x7f1204c2

    .line 1645
    .line 1646
    .line 1647
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1648
    .line 1649
    .line 1650
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1651
    .line 1652
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1653
    .line 1654
    .line 1655
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->pointsText:Landroid/widget/TextView;

    .line 1656
    .line 1657
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1658
    .line 1659
    .line 1660
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

    .line 1661
    .line 1662
    iget-object v2, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 1663
    .line 1664
    iget v2, v2, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 1665
    .line 1666
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 1667
    .line 1668
    iget v1, v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 1669
    .line 1670
    iget-object v5, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1671
    .line 1672
    if-ge v2, v1, :cond_27

    .line 1673
    .line 1674
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1675
    .line 1676
    .line 1677
    iget-object v1, v5, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate1:Landroid/widget/TextView;

    .line 1678
    .line 1679
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1680
    .line 1681
    .line 1682
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1683
    .line 1684
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1685
    .line 1686
    .line 1687
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate1:Landroid/widget/TextView;

    .line 1688
    .line 1689
    const/4 v2, -0x1

    .line 1690
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1691
    .line 1692
    .line 1693
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1694
    .line 1695
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1696
    .line 1697
    .line 1698
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionStatusIcon1:Landroid/widget/ImageView;

    .line 1699
    .line 1700
    invoke-virtual {v3, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->setCorrectIcon(Landroid/widget/ImageView;)V

    .line 1701
    .line 1702
    .line 1703
    goto :goto_14

    .line 1704
    :cond_27
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1705
    .line 1706
    .line 1707
    iget-object v1, v5, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate2:Landroid/widget/TextView;

    .line 1708
    .line 1709
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1710
    .line 1711
    .line 1712
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1713
    .line 1714
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1715
    .line 1716
    .line 1717
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate2:Landroid/widget/TextView;

    .line 1718
    .line 1719
    const/4 v2, -0x1

    .line 1720
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1721
    .line 1722
    .line 1723
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1724
    .line 1725
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1726
    .line 1727
    .line 1728
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionStatusIcon2:Landroid/widget/ImageView;

    .line 1729
    .line 1730
    invoke-virtual {v3, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->setCorrectIcon(Landroid/widget/ImageView;)V

    .line 1731
    .line 1732
    .line 1733
    :goto_14
    const-string v1, "sound_completion"

    .line 1734
    .line 1735
    invoke-virtual {v3, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->playSound(Ljava/lang/String;)V

    .line 1736
    .line 1737
    .line 1738
    invoke-virtual {v3, v0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->enqueueGoNext(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;)V

    .line 1739
    .line 1740
    .line 1741
    goto/16 :goto_17

    .line 1742
    .line 1743
    :cond_28
    instance-of v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$CurrentQuestionIncorrect;

    .line 1744
    .line 1745
    if-eqz v1, :cond_2a

    .line 1746
    .line 1747
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$CurrentQuestionIncorrect;

    .line 1748
    .line 1749
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$CurrentQuestionIncorrect;->data:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 1750
    .line 1751
    invoke-virtual {v3, v0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->updateGameState(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;)V

    .line 1752
    .line 1753
    .line 1754
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->updateQuestionEndLayout()V

    .line 1755
    .line 1756
    .line 1757
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1758
    .line 1759
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1760
    .line 1761
    .line 1762
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->correctIncorrectText:Landroid/widget/TextView;

    .line 1763
    .line 1764
    const v5, 0x7f1204ce

    .line 1765
    .line 1766
    .line 1767
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1768
    .line 1769
    .line 1770
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionState:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;

    .line 1771
    .line 1772
    iget-object v5, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event1:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 1773
    .line 1774
    iget v5, v5, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 1775
    .line 1776
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$QuestionState;->event2:Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 1777
    .line 1778
    iget v1, v1, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 1779
    .line 1780
    iget-object v7, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1781
    .line 1782
    const v8, 0x7f080135

    .line 1783
    .line 1784
    .line 1785
    const v9, 0x7f0800ed

    .line 1786
    .line 1787
    .line 1788
    if-ge v5, v1, :cond_29

    .line 1789
    .line 1790
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1791
    .line 1792
    .line 1793
    iget-object v1, v7, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate1:Landroid/widget/TextView;

    .line 1794
    .line 1795
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1796
    .line 1797
    .line 1798
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1799
    .line 1800
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1801
    .line 1802
    .line 1803
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate2:Landroid/widget/TextView;

    .line 1804
    .line 1805
    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1806
    .line 1807
    .line 1808
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1809
    .line 1810
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1811
    .line 1812
    .line 1813
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionStatusIcon1:Landroid/widget/ImageView;

    .line 1814
    .line 1815
    invoke-virtual {v3, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->setCorrectIcon(Landroid/widget/ImageView;)V

    .line 1816
    .line 1817
    .line 1818
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1819
    .line 1820
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1821
    .line 1822
    .line 1823
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionStatusIcon2:Landroid/widget/ImageView;

    .line 1824
    .line 1825
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1826
    .line 1827
    .line 1828
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v4

    .line 1832
    invoke-static {v4, v6}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v4

    .line 1836
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1837
    .line 1838
    .line 1839
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1840
    .line 1841
    .line 1842
    goto :goto_15

    .line 1843
    :cond_29
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1844
    .line 1845
    .line 1846
    iget-object v1, v7, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate1:Landroid/widget/TextView;

    .line 1847
    .line 1848
    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1849
    .line 1850
    .line 1851
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1852
    .line 1853
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1854
    .line 1855
    .line 1856
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate2:Landroid/widget/TextView;

    .line 1857
    .line 1858
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1859
    .line 1860
    .line 1861
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1862
    .line 1863
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1864
    .line 1865
    .line 1866
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionStatusIcon1:Landroid/widget/ImageView;

    .line 1867
    .line 1868
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1869
    .line 1870
    .line 1871
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1872
    .line 1873
    .line 1874
    move-result-object v4

    .line 1875
    invoke-static {v4, v6}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 1876
    .line 1877
    .line 1878
    move-result-object v4

    .line 1879
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1880
    .line 1881
    .line 1882
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1883
    .line 1884
    .line 1885
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1886
    .line 1887
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1888
    .line 1889
    .line 1890
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionStatusIcon2:Landroid/widget/ImageView;

    .line 1891
    .line 1892
    invoke-virtual {v3, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->setCorrectIcon(Landroid/widget/ImageView;)V

    .line 1893
    .line 1894
    .line 1895
    :goto_15
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1896
    .line 1897
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1898
    .line 1899
    .line 1900
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate1:Landroid/widget/TextView;

    .line 1901
    .line 1902
    const/4 v2, -0x1

    .line 1903
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1904
    .line 1905
    .line 1906
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 1907
    .line 1908
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1909
    .line 1910
    .line 1911
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionDate2:Landroid/widget/TextView;

    .line 1912
    .line 1913
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1914
    .line 1915
    .line 1916
    const-string v1, "sound_error"

    .line 1917
    .line 1918
    invoke-virtual {v3, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->playSound(Ljava/lang/String;)V

    .line 1919
    .line 1920
    .line 1921
    invoke-virtual {v3, v0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->enqueueGoNext(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;)V

    .line 1922
    .line 1923
    .line 1924
    goto/16 :goto_17

    .line 1925
    .line 1926
    :cond_2a
    instance-of v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameEnded;

    .line 1927
    .line 1928
    if-eqz v1, :cond_2d

    .line 1929
    .line 1930
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->mainActivity:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 1931
    .line 1932
    if-eqz v0, :cond_2b

    .line 1933
    .line 1934
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v0

    .line 1938
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    .line 1939
    .line 1940
    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    .line 1941
    .line 1942
    .line 1943
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->getViewModel$4()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v0

    .line 1947
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 1948
    .line 1949
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1950
    .line 1951
    .line 1952
    new-instance v4, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 1953
    .line 1954
    invoke-direct {v4}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;-><init>()V

    .line 1955
    .line 1956
    .line 1957
    new-instance v5, Lkotlin/Pair;

    .line 1958
    .line 1959
    const-string v6, "invokeSource"

    .line 1960
    .line 1961
    invoke-direct {v5, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1962
    .line 1963
    .line 1964
    new-array v0, v15, [Lkotlin/Pair;

    .line 1965
    .line 1966
    aput-object v5, v0, v2

    .line 1967
    .line 1968
    invoke-static {v0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 1969
    .line 1970
    .line 1971
    move-result-object v0

    .line 1972
    invoke-virtual {v4, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1973
    .line 1974
    .line 1975
    const v0, 0x7f090269

    .line 1976
    .line 1977
    .line 1978
    move-object/from16 v2, v19

    .line 1979
    .line 1980
    invoke-virtual {v1, v0, v4, v2, v15}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1981
    .line 1982
    .line 1983
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 1984
    .line 1985
    .line 1986
    :cond_2b
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->mainActivity:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 1987
    .line 1988
    if-eqz v0, :cond_2c

    .line 1989
    .line 1990
    new-instance v1, Landroid/content/Intent;

    .line 1991
    .line 1992
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1993
    .line 1994
    .line 1995
    const-string v2, "onThisDayGameCompleted"

    .line 1996
    .line 1997
    invoke-virtual {v1, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1998
    .line 1999
    .line 2000
    move-result-object v1

    .line 2001
    const/4 v2, -0x1

    .line 2002
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 2003
    .line 2004
    .line 2005
    :cond_2c
    const-string v0, "sound_logo"

    .line 2006
    .line 2007
    invoke-virtual {v3, v0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->playSound(Ljava/lang/String;)V

    .line 2008
    .line 2009
    .line 2010
    goto :goto_17

    .line 2011
    :cond_2d
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Error;

    .line 2012
    .line 2013
    if-eqz v1, :cond_30

    .line 2014
    .line 2015
    check-cast v0, Lorg/wikipedia/util/Resource$Error;

    .line 2016
    .line 2017
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 2018
    .line 2019
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 2020
    .line 2021
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2022
    .line 2023
    .line 2024
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 2025
    .line 2026
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2027
    .line 2028
    .line 2029
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 2030
    .line 2031
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2032
    .line 2033
    .line 2034
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->scoreView:Lorg/wikipedia/games/onthisday/ScoreView;

    .line 2035
    .line 2036
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2037
    .line 2038
    .line 2039
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->mainActivity:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 2040
    .line 2041
    if-eqz v1, :cond_2f

    .line 2042
    .line 2043
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->binding:Lokhttp3/Request$Builder;

    .line 2044
    .line 2045
    if-eqz v1, :cond_2e

    .line 2046
    .line 2047
    iget-object v1, v1, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 2048
    .line 2049
    check-cast v1, Landroid/widget/TextView;

    .line 2050
    .line 2051
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2052
    .line 2053
    .line 2054
    goto :goto_16

    .line 2055
    :cond_2e
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 2056
    .line 2057
    .line 2058
    const/16 v19, 0x0

    .line 2059
    .line 2060
    throw v19

    .line 2061
    :cond_2f
    :goto_16
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 2062
    .line 2063
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2064
    .line 2065
    .line 2066
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->currentQuestionContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2067
    .line 2068
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2069
    .line 2070
    .line 2071
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 2072
    .line 2073
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2074
    .line 2075
    .line 2076
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 2077
    .line 2078
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2079
    .line 2080
    .line 2081
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 2082
    .line 2083
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2084
    .line 2085
    .line 2086
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 2087
    .line 2088
    const/4 v2, 0x0

    .line 2089
    invoke-virtual {v1, v0, v2}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 2090
    .line 2091
    .line 2092
    :cond_30
    :goto_17
    return-object v17

    .line 2093
    :pswitch_e
    check-cast v3, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;

    .line 2094
    .line 2095
    move-object/from16 v0, p1

    .line 2096
    .line 2097
    check-cast v0, Lorg/wikipedia/util/Resource;

    .line 2098
    .line 2099
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Loading;

    .line 2100
    .line 2101
    if-eqz v1, :cond_31

    .line 2102
    .line 2103
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2104
    .line 2105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2106
    .line 2107
    .line 2108
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 2109
    .line 2110
    check-cast v0, Landroid/widget/LinearLayout;

    .line 2111
    .line 2112
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2113
    .line 2114
    .line 2115
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2116
    .line 2117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2118
    .line 2119
    .line 2120
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 2121
    .line 2122
    check-cast v0, Landroid/widget/ProgressBar;

    .line 2123
    .line 2124
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2125
    .line 2126
    .line 2127
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2128
    .line 2129
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2130
    .line 2131
    .line 2132
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 2133
    .line 2134
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 2135
    .line 2136
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2137
    .line 2138
    .line 2139
    goto/16 :goto_1c

    .line 2140
    .line 2141
    :cond_31
    instance-of v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStarted;

    .line 2142
    .line 2143
    if-eqz v1, :cond_32

    .line 2144
    .line 2145
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->showGameMenu()V

    .line 2146
    .line 2147
    .line 2148
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2149
    .line 2150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2151
    .line 2152
    .line 2153
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 2154
    .line 2155
    check-cast v0, Landroid/widget/Button;

    .line 2156
    .line 2157
    new-instance v1, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;

    .line 2158
    .line 2159
    invoke-direct {v1, v3, v12}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;I)V

    .line 2160
    .line 2161
    .line 2162
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2163
    .line 2164
    .line 2165
    goto/16 :goto_1c

    .line 2166
    .line 2167
    :cond_32
    instance-of v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$CurrentQuestion;

    .line 2168
    .line 2169
    if-eqz v1, :cond_34

    .line 2170
    .line 2171
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$CurrentQuestion;

    .line 2172
    .line 2173
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$CurrentQuestion;->data:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 2174
    .line 2175
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->showGameMenu()V

    .line 2176
    .line 2177
    .line 2178
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2179
    .line 2180
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2181
    .line 2182
    .line 2183
    iget-object v4, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 2184
    .line 2185
    check-cast v4, Landroid/widget/Button;

    .line 2186
    .line 2187
    iget-object v5, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 2188
    .line 2189
    check-cast v5, Landroid/widget/Button;

    .line 2190
    .line 2191
    iget v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->currentQuestionIndex:I

    .line 2192
    .line 2193
    add-int/2addr v0, v15

    .line 2194
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 2195
    .line 2196
    check-cast v1, Landroid/widget/TextView;

    .line 2197
    .line 2198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2199
    .line 2200
    .line 2201
    move-result-object v0

    .line 2202
    new-array v6, v15, [Ljava/lang/Object;

    .line 2203
    .line 2204
    aput-object v0, v6, v2

    .line 2205
    .line 2206
    const v0, 0x7f1204c3

    .line 2207
    .line 2208
    .line 2209
    invoke-virtual {v3, v0, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 2210
    .line 2211
    .line 2212
    move-result-object v0

    .line 2213
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2214
    .line 2215
    .line 2216
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->getViewModel$2()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 2217
    .line 2218
    .line 2219
    move-result-object v0

    .line 2220
    iget-boolean v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 2221
    .line 2222
    if-eqz v0, :cond_33

    .line 2223
    .line 2224
    const v0, 0x7f1204c1

    .line 2225
    .line 2226
    .line 2227
    :goto_18
    invoke-virtual {v3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 2228
    .line 2229
    .line 2230
    move-result-object v0

    .line 2231
    goto :goto_19

    .line 2232
    :cond_33
    const v0, 0x7f1204c0

    .line 2233
    .line 2234
    .line 2235
    goto :goto_18

    .line 2236
    :goto_19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2237
    .line 2238
    .line 2239
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2240
    .line 2241
    .line 2242
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;

    .line 2243
    .line 2244
    invoke-direct {v0, v3, v14}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;I)V

    .line 2245
    .line 2246
    .line 2247
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2248
    .line 2249
    .line 2250
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->getViewModel$2()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 2251
    .line 2252
    .line 2253
    move-result-object v0

    .line 2254
    iget-boolean v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 2255
    .line 2256
    if-eqz v0, :cond_3a

    .line 2257
    .line 2258
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2259
    .line 2260
    .line 2261
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;

    .line 2262
    .line 2263
    invoke-direct {v0, v3, v9}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;I)V

    .line 2264
    .line 2265
    .line 2266
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2267
    .line 2268
    .line 2269
    goto/16 :goto_1c

    .line 2270
    .line 2271
    :cond_34
    instance-of v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameEnded;

    .line 2272
    .line 2273
    if-eqz v1, :cond_39

    .line 2274
    .line 2275
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameEnded;

    .line 2276
    .line 2277
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameEnded;->data:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;

    .line 2278
    .line 2279
    invoke-virtual {v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->showGameMenu()V

    .line 2280
    .line 2281
    .line 2282
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2283
    .line 2284
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2285
    .line 2286
    .line 2287
    iget-object v4, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 2288
    .line 2289
    check-cast v4, Landroid/widget/Button;

    .line 2290
    .line 2291
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 2292
    .line 2293
    check-cast v1, Landroid/widget/Button;

    .line 2294
    .line 2295
    iget-object v6, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->answerState:Ljava/util/List;

    .line 2296
    .line 2297
    if-eqz v6, :cond_35

    .line 2298
    .line 2299
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 2300
    .line 2301
    .line 2302
    move-result v7

    .line 2303
    if-eqz v7, :cond_35

    .line 2304
    .line 2305
    move v7, v2

    .line 2306
    goto :goto_1b

    .line 2307
    :cond_35
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2308
    .line 2309
    .line 2310
    move-result-object v6

    .line 2311
    move v7, v2

    .line 2312
    :cond_36
    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 2313
    .line 2314
    .line 2315
    move-result v8

    .line 2316
    if-eqz v8, :cond_38

    .line 2317
    .line 2318
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2319
    .line 2320
    .line 2321
    move-result-object v8

    .line 2322
    check-cast v8, Ljava/lang/Boolean;

    .line 2323
    .line 2324
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2325
    .line 2326
    .line 2327
    move-result v8

    .line 2328
    if-eqz v8, :cond_36

    .line 2329
    .line 2330
    add-int/lit8 v7, v7, 0x1

    .line 2331
    .line 2332
    if-ltz v7, :cond_37

    .line 2333
    .line 2334
    goto :goto_1a

    .line 2335
    :cond_37
    invoke-static {}, Landroidx/room/Room;->throwCountOverflow()V

    .line 2336
    .line 2337
    .line 2338
    const/16 v19, 0x0

    .line 2339
    .line 2340
    throw v19

    .line 2341
    :cond_38
    :goto_1b
    iget-object v6, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2342
    .line 2343
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2344
    .line 2345
    .line 2346
    iget-object v6, v6, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 2347
    .line 2348
    check-cast v6, Landroid/widget/TextView;

    .line 2349
    .line 2350
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2351
    .line 2352
    .line 2353
    move-result-object v7

    .line 2354
    iget v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameState;->totalQuestions:I

    .line 2355
    .line 2356
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2357
    .line 2358
    .line 2359
    move-result-object v0

    .line 2360
    new-array v8, v14, [Ljava/lang/Object;

    .line 2361
    .line 2362
    aput-object v7, v8, v2

    .line 2363
    .line 2364
    aput-object v0, v8, v15

    .line 2365
    .line 2366
    const v0, 0x7f1204e2

    .line 2367
    .line 2368
    .line 2369
    invoke-virtual {v3, v0, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 2370
    .line 2371
    .line 2372
    move-result-object v0

    .line 2373
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2374
    .line 2375
    .line 2376
    const v0, 0x7f1204e0

    .line 2377
    .line 2378
    .line 2379
    invoke-virtual {v3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 2380
    .line 2381
    .line 2382
    move-result-object v0

    .line 2383
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2384
    .line 2385
    .line 2386
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;

    .line 2387
    .line 2388
    invoke-direct {v0, v3, v5}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;I)V

    .line 2389
    .line 2390
    .line 2391
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2392
    .line 2393
    .line 2394
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2395
    .line 2396
    .line 2397
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;

    .line 2398
    .line 2399
    const/4 v1, 0x6

    .line 2400
    invoke-direct {v0, v3, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;I)V

    .line 2401
    .line 2402
    .line 2403
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2404
    .line 2405
    .line 2406
    goto :goto_1c

    .line 2407
    :cond_39
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Error;

    .line 2408
    .line 2409
    if-eqz v1, :cond_3a

    .line 2410
    .line 2411
    check-cast v0, Lorg/wikipedia/util/Resource$Error;

    .line 2412
    .line 2413
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 2414
    .line 2415
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2416
    .line 2417
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2418
    .line 2419
    .line 2420
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 2421
    .line 2422
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 2423
    .line 2424
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2425
    .line 2426
    .line 2427
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2428
    .line 2429
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2430
    .line 2431
    .line 2432
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 2433
    .line 2434
    check-cast v1, Landroid/widget/ProgressBar;

    .line 2435
    .line 2436
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2437
    .line 2438
    .line 2439
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2440
    .line 2441
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2442
    .line 2443
    .line 2444
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 2445
    .line 2446
    check-cast v1, Landroid/widget/LinearLayout;

    .line 2447
    .line 2448
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2449
    .line 2450
    .line 2451
    iget-object v1, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2452
    .line 2453
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2454
    .line 2455
    .line 2456
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 2457
    .line 2458
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 2459
    .line 2460
    const/4 v2, 0x0

    .line 2461
    invoke-virtual {v1, v0, v2}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 2462
    .line 2463
    .line 2464
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2465
    .line 2466
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2467
    .line 2468
    .line 2469
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 2470
    .line 2471
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 2472
    .line 2473
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2474
    .line 2475
    .line 2476
    move-result-object v1

    .line 2477
    const v2, 0x7f0404e7

    .line 2478
    .line 2479
    .line 2480
    invoke-static {v1, v2}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 2481
    .line 2482
    .line 2483
    move-result v1

    .line 2484
    invoke-virtual {v0, v1}, Lorg/wikipedia/views/WikiErrorView;->setIconColorFilter(I)V

    .line 2485
    .line 2486
    .line 2487
    iget-object v0, v3, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2488
    .line 2489
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2490
    .line 2491
    .line 2492
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 2493
    .line 2494
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 2495
    .line 2496
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2497
    .line 2498
    .line 2499
    move-result-object v1

    .line 2500
    invoke-static {v1, v2}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 2501
    .line 2502
    .line 2503
    move-result v1

    .line 2504
    invoke-virtual {v0, v1}, Lorg/wikipedia/views/WikiErrorView;->setErrorTextColor(I)V

    .line 2505
    .line 2506
    .line 2507
    :cond_3a
    :goto_1c
    return-object v17

    .line 2508
    :pswitch_f
    check-cast v3, Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;

    .line 2509
    .line 2510
    move-object/from16 v0, p1

    .line 2511
    .line 2512
    check-cast v0, Lj$/time/LocalDate;

    .line 2513
    .line 2514
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2515
    .line 2516
    .line 2517
    invoke-virtual {v3, v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;->onArchiveDateSelected(Lj$/time/LocalDate;)V

    .line 2518
    .line 2519
    .line 2520
    return-object v17

    .line 2521
    :pswitch_10
    check-cast v3, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

    .line 2522
    .line 2523
    move-object/from16 v0, p1

    .line 2524
    .line 2525
    check-cast v0, Ljava/lang/Long;

    .line 2526
    .line 2527
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 2528
    .line 2529
    .line 2530
    move-result-wide v0

    .line 2531
    invoke-virtual {v3, v0, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->handleDateSelection(J)V

    .line 2532
    .line 2533
    .line 2534
    return-object v17

    .line 2535
    :pswitch_11
    check-cast v3, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 2536
    .line 2537
    move-object/from16 v0, p1

    .line 2538
    .line 2539
    check-cast v0, Ljava/lang/Long;

    .line 2540
    .line 2541
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2542
    .line 2543
    .line 2544
    invoke-virtual {v3, v0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2545
    .line 2546
    .line 2547
    return-object v17

    .line 2548
    :pswitch_12
    check-cast v3, Lorg/wikipedia/games/GamesHubFragment;

    .line 2549
    .line 2550
    move-object/from16 v7, p1

    .line 2551
    .line 2552
    check-cast v7, Lj$/time/LocalDate;

    .line 2553
    .line 2554
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2555
    .line 2556
    .line 2557
    iget-object v0, v3, Lorg/wikipedia/games/GamesHubFragment;->launchOnThisDayGameActivity:Landroidx/fragment/app/Fragment$10;

    .line 2558
    .line 2559
    sget v1, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->$r8$clinit:I

    .line 2560
    .line 2561
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2562
    .line 2563
    .line 2564
    move-result-object v4

    .line 2565
    sget-object v5, Lorg/wikipedia/Constants$InvokeSource;->GAMES_HUB:Lorg/wikipedia/Constants$InvokeSource;

    .line 2566
    .line 2567
    sget-object v1, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 2568
    .line 2569
    invoke-virtual {v3}, Lorg/wikipedia/games/GamesHubFragment;->getViewModel()Lorg/wikipedia/games/GamesHubViewModel;

    .line 2570
    .line 2571
    .line 2572
    move-result-object v2

    .line 2573
    iget-object v2, v2, Lorg/wikipedia/games/GamesHubViewModel;->selectedLanguage:Ljava/lang/String;

    .line 2574
    .line 2575
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2576
    .line 2577
    .line 2578
    invoke-static {v2}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 2579
    .line 2580
    .line 2581
    move-result-object v6

    .line 2582
    const/4 v8, 0x0

    .line 2583
    const/16 v9, 0x10

    .line 2584
    .line 2585
    invoke-static/range {v4 .. v9}, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/dataclient/WikiSite;Lj$/time/LocalDate;II)Landroid/content/Intent;

    .line 2586
    .line 2587
    .line 2588
    move-result-object v1

    .line 2589
    const/4 v2, 0x0

    .line 2590
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 2591
    .line 2592
    .line 2593
    return-object v17

    .line 2594
    :pswitch_13
    check-cast v3, Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 2595
    .line 2596
    move-object/from16 v9, p1

    .line 2597
    .line 2598
    check-cast v9, Landroid/graphics/Bitmap;

    .line 2599
    .line 2600
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2601
    .line 2602
    .line 2603
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2604
    .line 2605
    .line 2606
    move-result v0

    .line 2607
    if-nez v0, :cond_3b

    .line 2608
    .line 2609
    goto :goto_1d

    .line 2610
    :cond_3b
    invoke-virtual {v3}, Lorg/wikipedia/gallery/GalleryItemFragment;->callback()Lorg/wikipedia/gallery/GalleryItemFragment$Callback;

    .line 2611
    .line 2612
    .line 2613
    move-result-object v0

    .line 2614
    if-eqz v0, :cond_3c

    .line 2615
    .line 2616
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 2617
    .line 2618
    invoke-virtual {v3}, Lorg/wikipedia/gallery/GalleryItemFragment;->getViewModel()Lorg/wikipedia/gallery/GalleryItemViewModel;

    .line 2619
    .line 2620
    .line 2621
    move-result-object v1

    .line 2622
    iget-object v1, v1, Lorg/wikipedia/gallery/GalleryItemViewModel;->imageTitle:Lorg/wikipedia/page/PageTitle;

    .line 2623
    .line 2624
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 2625
    .line 2626
    .line 2627
    move-result-object v1

    .line 2628
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 2629
    .line 2630
    .line 2631
    move-result-object v6

    .line 2632
    invoke-virtual {v3}, Lorg/wikipedia/gallery/GalleryItemFragment;->getViewModel()Lorg/wikipedia/gallery/GalleryItemViewModel;

    .line 2633
    .line 2634
    .line 2635
    move-result-object v1

    .line 2636
    iget-object v1, v1, Lorg/wikipedia/gallery/GalleryItemViewModel;->imageTitle:Lorg/wikipedia/page/PageTitle;

    .line 2637
    .line 2638
    move-object v5, v0

    .line 2639
    check-cast v5, Lorg/wikipedia/gallery/GalleryActivity;

    .line 2640
    .line 2641
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2642
    .line 2643
    .line 2644
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2645
    .line 2646
    .line 2647
    invoke-virtual {v3}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 2648
    .line 2649
    .line 2650
    move-result-object v0

    .line 2651
    if-eqz v0, :cond_3c

    .line 2652
    .line 2653
    invoke-static {v5}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 2654
    .line 2655
    .line 2656
    move-result-object v2

    .line 2657
    new-instance v3, Ljava/io/File;

    .line 2658
    .line 2659
    sget-object v4, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 2660
    .line 2661
    iget-object v0, v0, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 2662
    .line 2663
    const/16 v4, 0x500

    .line 2664
    .line 2665
    invoke-static {v4, v0}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(ILjava/lang/String;)Ljava/lang/String;

    .line 2666
    .line 2667
    .line 2668
    move-result-object v0

    .line 2669
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2670
    .line 2671
    .line 2672
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2673
    .line 2674
    .line 2675
    move-result-object v10

    .line 2676
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2677
    .line 2678
    .line 2679
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 2680
    .line 2681
    .line 2682
    move-result-object v7

    .line 2683
    new-instance v0, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 2684
    .line 2685
    invoke-direct {v0, v5}, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;-><init>(Landroid/content/Context;)V

    .line 2686
    .line 2687
    .line 2688
    new-instance v4, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 2689
    .line 2690
    const/4 v11, 0x0

    .line 2691
    const/4 v8, 0x0

    .line 2692
    invoke-direct/range {v4 .. v11}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroid/graphics/Bitmap;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 2693
    .line 2694
    .line 2695
    const/4 v1, 0x0

    .line 2696
    invoke-static {v2, v0, v1, v4, v14}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 2697
    .line 2698
    .line 2699
    :cond_3c
    :goto_1d
    return-object v17

    .line 2700
    :pswitch_14
    check-cast v3, Lorg/wikipedia/gallery/GalleryActivity;

    .line 2701
    .line 2702
    move-object/from16 v0, p1

    .line 2703
    .line 2704
    check-cast v0, Landroidx/fragment/app/FragmentManager$1;

    .line 2705
    .line 2706
    sget-object v1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 2707
    .line 2708
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2709
    .line 2710
    .line 2711
    sget-object v1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 2712
    .line 2713
    if-eqz v1, :cond_3e

    .line 2714
    .line 2715
    iget-object v1, v3, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 2716
    .line 2717
    if-eqz v1, :cond_3d

    .line 2718
    .line 2719
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->transitionReceiver:Ljava/lang/Object;

    .line 2720
    .line 2721
    check-cast v1, Landroid/widget/ImageView;

    .line 2722
    .line 2723
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2724
    .line 2725
    .line 2726
    goto :goto_1e

    .line 2727
    :cond_3d
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 2728
    .line 2729
    .line 2730
    const/16 v19, 0x0

    .line 2731
    .line 2732
    throw v19

    .line 2733
    :cond_3e
    :goto_1e
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager$1;->setEnabled(Z)V

    .line 2734
    .line 2735
    .line 2736
    invoke-virtual {v3}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 2737
    .line 2738
    .line 2739
    move-result-object v0

    .line 2740
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 2741
    .line 2742
    .line 2743
    return-object v17

    .line 2744
    :pswitch_15
    check-cast v3, Lorg/wikipedia/WikipediaApp;

    .line 2745
    .line 2746
    move-object/from16 v0, p1

    .line 2747
    .line 2748
    check-cast v0, Ljava/lang/Integer;

    .line 2749
    .line 2750
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2751
    .line 2752
    .line 2753
    move-result v1

    .line 2754
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2755
    .line 2756
    .line 2757
    move-result-object v3

    .line 2758
    new-array v4, v15, [Ljava/lang/Object;

    .line 2759
    .line 2760
    aput-object v0, v4, v2

    .line 2761
    .line 2762
    const v0, 0x7f100008

    .line 2763
    .line 2764
    .line 2765
    invoke-virtual {v3, v0, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 2766
    .line 2767
    .line 2768
    move-result-object v0

    .line 2769
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2770
    .line 2771
    .line 2772
    return-object v0

    .line 2773
    :pswitch_16
    check-cast v3, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;

    .line 2774
    .line 2775
    move-object/from16 v0, p1

    .line 2776
    .line 2777
    check-cast v0, Ljava/lang/String;

    .line 2778
    .line 2779
    sget v1, Lorg/wikipedia/donate/donationreminder/DonationReminderActivity;->$r8$clinit:I

    .line 2780
    .line 2781
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2782
    .line 2783
    .line 2784
    sput-boolean v15, Lorg/wikipedia/donate/donationreminder/DonationReminderHelper;->shouldShowSettingSnackbar:Z

    .line 2785
    .line 2786
    const/16 v0, 0x64

    .line 2787
    .line 2788
    invoke-virtual {v3, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2789
    .line 2790
    .line 2791
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 2792
    .line 2793
    .line 2794
    return-object v17

    .line 2795
    :pswitch_17
    check-cast v3, Lorg/wikipedia/descriptions/DescriptionEditActivity;

    .line 2796
    .line 2797
    move-object/from16 v0, p1

    .line 2798
    .line 2799
    check-cast v0, Landroidx/fragment/app/FragmentManager$1;

    .line 2800
    .line 2801
    sget v1, Lorg/wikipedia/descriptions/DescriptionEditActivity;->$r8$clinit:I

    .line 2802
    .line 2803
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2804
    .line 2805
    .line 2806
    invoke-virtual {v3}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 2807
    .line 2808
    .line 2809
    move-result-object v0

    .line 2810
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 2811
    .line 2812
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 2813
    .line 2814
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2815
    .line 2816
    .line 2817
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 2818
    .line 2819
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 2820
    .line 2821
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->showingReviewContent()Z

    .line 2822
    .line 2823
    .line 2824
    move-result v0

    .line 2825
    if-eqz v0, :cond_3f

    .line 2826
    .line 2827
    invoke-virtual {v3}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 2828
    .line 2829
    .line 2830
    move-result-object v0

    .line 2831
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 2832
    .line 2833
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 2834
    .line 2835
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2836
    .line 2837
    .line 2838
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 2839
    .line 2840
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 2841
    .line 2842
    invoke-virtual {v0, v2}, Lorg/wikipedia/descriptions/DescriptionEditView;->loadReviewContent(Z)V

    .line 2843
    .line 2844
    .line 2845
    goto :goto_20

    .line 2846
    :cond_3f
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2847
    .line 2848
    .line 2849
    move-result-object v0

    .line 2850
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2851
    .line 2852
    .line 2853
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 2854
    .line 2855
    .line 2856
    move-result-object v1

    .line 2857
    new-instance v2, Landroidx/paging/HintHandler;

    .line 2858
    .line 2859
    invoke-direct {v2, v1}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 2860
    .line 2861
    .line 2862
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2863
    .line 2864
    if-lt v1, v4, :cond_40

    .line 2865
    .line 2866
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 2867
    .line 2868
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 2869
    .line 2870
    .line 2871
    goto :goto_1f

    .line 2872
    :cond_40
    const/16 v4, 0x1e

    .line 2873
    .line 2874
    if-lt v1, v4, :cond_41

    .line 2875
    .line 2876
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 2877
    .line 2878
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 2879
    .line 2880
    .line 2881
    goto :goto_1f

    .line 2882
    :cond_41
    const/16 v4, 0x1a

    .line 2883
    .line 2884
    if-lt v1, v4, :cond_42

    .line 2885
    .line 2886
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 2887
    .line 2888
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 2889
    .line 2890
    .line 2891
    goto :goto_1f

    .line 2892
    :cond_42
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 2893
    .line 2894
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 2895
    .line 2896
    .line 2897
    :goto_1f
    invoke-virtual {v1}, Lcoil3/util/UtilsKt;->hide()V

    .line 2898
    .line 2899
    .line 2900
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 2901
    .line 2902
    .line 2903
    :goto_20
    return-object v17

    .line 2904
    :pswitch_18
    check-cast v3, Lorg/wikipedia/createaccount/CreateAccountActivity;

    .line 2905
    .line 2906
    move-object/from16 v0, p1

    .line 2907
    .line 2908
    check-cast v0, Landroidx/fragment/app/FragmentManager$1;

    .line 2909
    .line 2910
    sget-object v1, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 2911
    .line 2912
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2913
    .line 2914
    .line 2915
    invoke-static {v3}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2916
    .line 2917
    .line 2918
    move-result-object v5

    .line 2919
    if-eqz v5, :cond_43

    .line 2920
    .line 2921
    const/4 v11, 0x0

    .line 2922
    const/16 v12, 0xf6

    .line 2923
    .line 2924
    const-string v6, "click"

    .line 2925
    .line 2926
    const/4 v7, 0x0

    .line 2927
    const/4 v8, 0x0

    .line 2928
    const-string v9, "back"

    .line 2929
    .line 2930
    const/4 v10, 0x0

    .line 2931
    invoke-static/range {v5 .. v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 2932
    .line 2933
    .line 2934
    :cond_43
    iget-object v0, v3, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 2935
    .line 2936
    const-string v1, "captchaHandler"

    .line 2937
    .line 2938
    if-eqz v0, :cond_49

    .line 2939
    .line 2940
    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->isActive()Z

    .line 2941
    .line 2942
    .line 2943
    move-result v0

    .line 2944
    if-eqz v0, :cond_45

    .line 2945
    .line 2946
    iget-object v0, v3, Lorg/wikipedia/createaccount/CreateAccountActivity;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 2947
    .line 2948
    if-eqz v0, :cond_44

    .line 2949
    .line 2950
    invoke-virtual {v0}, Lorg/wikipedia/captcha/CaptchaHandler;->cancelCaptcha()V

    .line 2951
    .line 2952
    .line 2953
    invoke-virtual {v3, v2}, Lorg/wikipedia/createaccount/CreateAccountActivity;->showProgressBar(Z)V

    .line 2954
    .line 2955
    .line 2956
    goto :goto_22

    .line 2957
    :cond_44
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 2958
    .line 2959
    .line 2960
    const/16 v19, 0x0

    .line 2961
    .line 2962
    throw v19

    .line 2963
    :cond_45
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2964
    .line 2965
    .line 2966
    move-result-object v0

    .line 2967
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2968
    .line 2969
    .line 2970
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 2971
    .line 2972
    .line 2973
    move-result-object v1

    .line 2974
    new-instance v2, Landroidx/paging/HintHandler;

    .line 2975
    .line 2976
    invoke-direct {v2, v1}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 2977
    .line 2978
    .line 2979
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2980
    .line 2981
    if-lt v1, v4, :cond_46

    .line 2982
    .line 2983
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 2984
    .line 2985
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 2986
    .line 2987
    .line 2988
    goto :goto_21

    .line 2989
    :cond_46
    const/16 v4, 0x1e

    .line 2990
    .line 2991
    if-lt v1, v4, :cond_47

    .line 2992
    .line 2993
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 2994
    .line 2995
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 2996
    .line 2997
    .line 2998
    goto :goto_21

    .line 2999
    :cond_47
    const/16 v4, 0x1a

    .line 3000
    .line 3001
    if-lt v1, v4, :cond_48

    .line 3002
    .line 3003
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 3004
    .line 3005
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 3006
    .line 3007
    .line 3008
    goto :goto_21

    .line 3009
    :cond_48
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 3010
    .line 3011
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 3012
    .line 3013
    .line 3014
    :goto_21
    invoke-virtual {v1}, Lcoil3/util/UtilsKt;->hide()V

    .line 3015
    .line 3016
    .line 3017
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 3018
    .line 3019
    .line 3020
    :goto_22
    return-object v17

    .line 3021
    :cond_49
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 3022
    .line 3023
    .line 3024
    const/16 v19, 0x0

    .line 3025
    .line 3026
    throw v19

    .line 3027
    :pswitch_19
    check-cast v3, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 3028
    .line 3029
    move-object/from16 v0, p1

    .line 3030
    .line 3031
    check-cast v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 3032
    .line 3033
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3034
    .line 3035
    .line 3036
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 3037
    .line 3038
    .line 3039
    move-result v1

    .line 3040
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAlpha(F)V

    .line 3041
    .line 3042
    .line 3043
    return-object v17

    .line 3044
    :pswitch_1a
    check-cast v3, Lorg/wikipedia/categories/CategoryDialog;

    .line 3045
    .line 3046
    move-object/from16 v0, p1

    .line 3047
    .line 3048
    check-cast v0, Lorg/wikipedia/util/Resource;

    .line 3049
    .line 3050
    iget-object v1, v3, Lorg/wikipedia/categories/CategoryDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 3051
    .line 3052
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3053
    .line 3054
    .line 3055
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 3056
    .line 3057
    check-cast v1, Landroid/widget/ProgressBar;

    .line 3058
    .line 3059
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 3060
    .line 3061
    .line 3062
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Success;

    .line 3063
    .line 3064
    if-eqz v1, :cond_4c

    .line 3065
    .line 3066
    check-cast v0, Lorg/wikipedia/util/Resource$Success;

    .line 3067
    .line 3068
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 3069
    .line 3070
    check-cast v0, Ljava/util/List;

    .line 3071
    .line 3072
    iget-object v1, v3, Lorg/wikipedia/categories/CategoryDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 3073
    .line 3074
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3075
    .line 3076
    .line 3077
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 3078
    .line 3079
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 3080
    .line 3081
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 3082
    .line 3083
    .line 3084
    move-result v4

    .line 3085
    if-nez v4, :cond_4a

    .line 3086
    .line 3087
    move v4, v2

    .line 3088
    goto :goto_23

    .line 3089
    :cond_4a
    move v4, v11

    .line 3090
    :goto_23
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3091
    .line 3092
    .line 3093
    iget-object v1, v3, Lorg/wikipedia/categories/CategoryDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 3094
    .line 3095
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3096
    .line 3097
    .line 3098
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 3099
    .line 3100
    check-cast v1, Landroid/widget/TextView;

    .line 3101
    .line 3102
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 3103
    .line 3104
    .line 3105
    move-result v4

    .line 3106
    if-eqz v4, :cond_4b

    .line 3107
    .line 3108
    goto :goto_24

    .line 3109
    :cond_4b
    move v2, v11

    .line 3110
    :goto_24
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3111
    .line 3112
    .line 3113
    iget-object v1, v3, Lorg/wikipedia/categories/CategoryDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 3114
    .line 3115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3116
    .line 3117
    .line 3118
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 3119
    .line 3120
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 3121
    .line 3122
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 3123
    .line 3124
    .line 3125
    iget-object v1, v3, Lorg/wikipedia/categories/CategoryDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 3126
    .line 3127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3128
    .line 3129
    .line 3130
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 3131
    .line 3132
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 3133
    .line 3134
    new-instance v2, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 3135
    .line 3136
    invoke-direct {v2, v15, v3, v0}, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;-><init>(ILjava/lang/Object;Ljava/util/List;)V

    .line 3137
    .line 3138
    .line 3139
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3140
    .line 3141
    .line 3142
    goto :goto_25

    .line 3143
    :cond_4c
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Error;

    .line 3144
    .line 3145
    if-eqz v1, :cond_4d

    .line 3146
    .line 3147
    iget-object v1, v3, Lorg/wikipedia/categories/CategoryDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 3148
    .line 3149
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3150
    .line 3151
    .line 3152
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 3153
    .line 3154
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 3155
    .line 3156
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 3157
    .line 3158
    .line 3159
    iget-object v1, v3, Lorg/wikipedia/categories/CategoryDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 3160
    .line 3161
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3162
    .line 3163
    .line 3164
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 3165
    .line 3166
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 3167
    .line 3168
    check-cast v0, Lorg/wikipedia/util/Resource$Error;

    .line 3169
    .line 3170
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 3171
    .line 3172
    sget v4, Lorg/wikipedia/views/WikiErrorView;->$r8$clinit:I

    .line 3173
    .line 3174
    const/4 v4, 0x0

    .line 3175
    invoke-virtual {v1, v0, v4}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 3176
    .line 3177
    .line 3178
    iget-object v1, v3, Lorg/wikipedia/categories/CategoryDialog;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 3179
    .line 3180
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3181
    .line 3182
    .line 3183
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 3184
    .line 3185
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 3186
    .line 3187
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3188
    .line 3189
    .line 3190
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 3191
    .line 3192
    .line 3193
    :cond_4d
    :goto_25
    return-object v17

    .line 3194
    :pswitch_1b
    check-cast v3, Lorg/wikipedia/activity/SingleWebViewActivity;

    .line 3195
    .line 3196
    move-object/from16 v0, p1

    .line 3197
    .line 3198
    check-cast v0, Landroidx/fragment/app/FragmentManager$1;

    .line 3199
    .line 3200
    sget v1, Lorg/wikipedia/activity/SingleWebViewActivity;->$r8$clinit:I

    .line 3201
    .line 3202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3203
    .line 3204
    .line 3205
    iget-boolean v0, v3, Lorg/wikipedia/activity/SingleWebViewActivity;->isWebForm:Z

    .line 3206
    .line 3207
    if-nez v0, :cond_50

    .line 3208
    .line 3209
    iget-object v0, v3, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 3210
    .line 3211
    if-eqz v0, :cond_4f

    .line 3212
    .line 3213
    iget-object v0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 3214
    .line 3215
    check-cast v0, Lorg/wikipedia/views/ObservableWebView;

    .line 3216
    .line 3217
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 3218
    .line 3219
    .line 3220
    move-result v0

    .line 3221
    if-eqz v0, :cond_50

    .line 3222
    .line 3223
    iget-object v0, v3, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 3224
    .line 3225
    if-eqz v0, :cond_4e

    .line 3226
    .line 3227
    iget-object v0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 3228
    .line 3229
    check-cast v0, Lorg/wikipedia/views/ObservableWebView;

    .line 3230
    .line 3231
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 3232
    .line 3233
    .line 3234
    goto :goto_26

    .line 3235
    :cond_4e
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 3236
    .line 3237
    .line 3238
    const/16 v19, 0x0

    .line 3239
    .line 3240
    throw v19

    .line 3241
    :cond_4f
    const/16 v19, 0x0

    .line 3242
    .line 3243
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 3244
    .line 3245
    .line 3246
    throw v19

    .line 3247
    :cond_50
    invoke-virtual {v3}, Lorg/wikipedia/activity/SingleWebViewActivity;->goBack()V

    .line 3248
    .line 3249
    .line 3250
    :goto_26
    return-object v17

    .line 3251
    :pswitch_1c
    check-cast v3, Lorg/wikipedia/main/MainActivity;

    .line 3252
    .line 3253
    move-object/from16 v0, p1

    .line 3254
    .line 3255
    check-cast v0, Landroidx/fragment/app/FragmentManager$1;

    .line 3256
    .line 3257
    sget v1, Lorg/wikipedia/main/MainActivity;->$r8$clinit:I

    .line 3258
    .line 3259
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3260
    .line 3261
    .line 3262
    invoke-virtual {v3}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 3263
    .line 3264
    .line 3265
    move-result-object v0

    .line 3266
    check-cast v0, Lorg/wikipedia/main/MainFragment;

    .line 3267
    .line 3268
    invoke-virtual {v0}, Lorg/wikipedia/main/MainFragment;->onBackPressed()Z

    .line 3269
    .line 3270
    .line 3271
    move-result v0

    .line 3272
    if-eqz v0, :cond_51

    .line 3273
    .line 3274
    goto :goto_27

    .line 3275
    :cond_51
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 3276
    .line 3277
    .line 3278
    :goto_27
    return-object v17

    .line 3279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 3280
    .line 3281
    .line 3282
    .line 3283
    .line 3284
    .line 3285
    .line 3286
    .line 3287
    .line 3288
    .line 3289
    .line 3290
    .line 3291
    .line 3292
    .line 3293
    .line 3294
    .line 3295
    .line 3296
    .line 3297
    .line 3298
    .line 3299
    .line 3300
    .line 3301
    .line 3302
    .line 3303
    .line 3304
    .line 3305
    .line 3306
    .line 3307
    .line 3308
    .line 3309
    .line 3310
    .line 3311
    .line 3312
    .line 3313
    .line 3314
    .line 3315
    .line 3316
    .line 3317
    .line 3318
    .line 3319
    .line 3320
    .line 3321
    .line 3322
    .line 3323
    .line 3324
    .line 3325
    .line 3326
    .line 3327
    .line 3328
    .line 3329
    .line 3330
    .line 3331
    .line 3332
    .line 3333
    .line 3334
    .line 3335
    .line 3336
    .line 3337
    .line 3338
    .line 3339
    .line 3340
    .line 3341
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 3342
    .line 3343
    .line 3344
    .line 3345
    .line 3346
    .line 3347
    .line 3348
    .line 3349
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

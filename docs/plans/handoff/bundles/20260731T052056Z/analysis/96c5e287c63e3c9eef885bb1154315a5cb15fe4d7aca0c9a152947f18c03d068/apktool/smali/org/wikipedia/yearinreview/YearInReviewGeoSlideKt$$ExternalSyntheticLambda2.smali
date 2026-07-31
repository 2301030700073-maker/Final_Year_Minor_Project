.class public final synthetic Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/Style$OnStyleLoaded;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;

.field public final synthetic f$1:Lorg/maplibre/android/maps/MapLibreMap;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Lorg/maplibre/android/maps/MapView;

.field public final synthetic f$4:Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;

.field public final synthetic f$5:Landroid/graphics/Rect;

.field public final synthetic f$6:Landroid/graphics/Paint;

.field public final synthetic f$7:Landroid/graphics/Paint;

.field public final synthetic f$8:Landroid/graphics/Paint;

.field public final synthetic f$9:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Lorg/maplibre/android/maps/MapLibreMap;Landroid/content/Context;Lorg/maplibre/android/maps/MapView;Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;Landroid/graphics/Rect;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$1:Lorg/maplibre/android/maps/MapLibreMap;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$2:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$3:Lorg/maplibre/android/maps/MapView;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$4:Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$5:Landroid/graphics/Rect;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$6:Landroid/graphics/Paint;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$7:Landroid/graphics/Paint;

    .line 19
    .line 20
    iput-object p9, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$8:Landroid/graphics/Paint;

    .line 21
    .line 22
    iput-object p10, p0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$9:Lkotlin/jvm/functions/Function2;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final onStyleLoaded(Lorg/maplibre/android/maps/Style;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "markerDrawable"

    .line 7
    .line 8
    iget-object v2, v0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    move-object/from16 v6, p1

    .line 11
    .line 12
    invoke-virtual {v6, v1, v2}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 13
    .line 14
    .line 15
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 16
    .line 17
    iget-object v5, v0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$1:Lorg/maplibre/android/maps/MapLibreMap;

    .line 18
    .line 19
    iget-object v4, v5, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 20
    .line 21
    invoke-virtual {v4, v2, v3}, Lorg/maplibre/android/maps/Transform;->setMaxZoom(D)V

    .line 22
    .line 23
    .line 24
    iget-object v2, v5, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 25
    .line 26
    const/4 v15, 0x0

    .line 27
    invoke-virtual {v2, v15}, Lorg/maplibre/android/maps/UiSettings;->setLogoEnabled(Z)V

    .line 28
    .line 29
    .line 30
    const/high16 v16, 0x41800000    # 16.0f

    .line 31
    .line 32
    invoke-static/range {v16 .. v16}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    iget-object v4, v2, Lorg/maplibre/android/maps/UiSettings;->attributionsView:Landroid/widget/ImageView;

    .line 37
    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 45
    .line 46
    const v8, 0x800053

    .line 47
    .line 48
    .line 49
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 50
    .line 51
    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v13, v0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$2:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    const v8, 0x7f0404fb

    .line 65
    .line 66
    .line 67
    const/4 v10, 0x1

    .line 68
    invoke-virtual {v7, v8, v4, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/4 v4, 0x0

    .line 76
    :goto_0
    if-eqz v4, :cond_b

    .line 77
    .line 78
    iget v4, v4, Landroid/util/TypedValue;->data:I

    .line 79
    .line 80
    invoke-virtual {v2, v4}, Lorg/maplibre/android/maps/UiSettings;->setAttributionTintColor(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3, v15, v15, v3}, Lorg/maplibre/android/maps/UiSettings;->setAttributionMargins(IIII)V

    .line 84
    .line 85
    .line 86
    iput-boolean v15, v2, Lorg/maplibre/android/maps/UiSettings;->zoomGesturesEnabled:Z

    .line 87
    .line 88
    iput-boolean v15, v2, Lorg/maplibre/android/maps/UiSettings;->scrollGesturesEnabled:Z

    .line 89
    .line 90
    iput-boolean v15, v2, Lorg/maplibre/android/maps/UiSettings;->rotateGesturesEnabled:Z

    .line 91
    .line 92
    iput-boolean v15, v2, Lorg/maplibre/android/maps/UiSettings;->tiltGesturesEnabled:Z

    .line 93
    .line 94
    iput-boolean v15, v2, Lorg/maplibre/android/maps/UiSettings;->doubleTapGesturesEnabled:Z

    .line 95
    .line 96
    iput-boolean v15, v2, Lorg/maplibre/android/maps/UiSettings;->quickZoomGesturesEnabled:Z

    .line 97
    .line 98
    new-instance v14, Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 99
    .line 100
    new-instance v7, Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;

    .line 101
    .line 102
    invoke-direct {v7}, Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;-><init>()V

    .line 103
    .line 104
    .line 105
    sget-object v2, Lokio/internal/DefaultSocket;->INSTANCE:Lokio/internal/DefaultSocket;

    .line 106
    .line 107
    iget-object v4, v0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$3:Lorg/maplibre/android/maps/MapView;

    .line 108
    .line 109
    if-eqz v2, :cond_3

    .line 110
    .line 111
    iget-object v3, v2, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v3, Lorg/maplibre/android/maps/MapView;

    .line 114
    .line 115
    if-ne v3, v4, :cond_3

    .line 116
    .line 117
    iget-object v3, v2, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v3, Lorg/maplibre/android/maps/MapLibreMap;

    .line 120
    .line 121
    if-eq v3, v5, :cond_2

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    :goto_1
    move-object v8, v2

    .line 125
    goto :goto_3

    .line 126
    :cond_3
    :goto_2
    new-instance v2, Lokio/internal/DefaultSocket;

    .line 127
    .line 128
    new-instance v3, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 129
    .line 130
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-direct {v3, v8, v15}, Lorg/wikipedia/databinding/FragmentNewsBinding;-><init>(Landroid/content/Context;Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 147
    .line 148
    .line 149
    const/4 v8, 0x7

    .line 150
    invoke-direct {v2, v8}, Lokio/internal/DefaultSocket;-><init>(I)V

    .line 151
    .line 152
    .line 153
    new-instance v8, Ljava/util/LinkedList;

    .line 154
    .line 155
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 156
    .line 157
    .line 158
    iput-object v8, v2, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 159
    .line 160
    new-instance v8, Ljava/util/HashMap;

    .line 161
    .line 162
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 163
    .line 164
    .line 165
    iput-object v8, v2, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 166
    .line 167
    iput-object v4, v2, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 168
    .line 169
    iput-object v5, v2, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 170
    .line 171
    new-instance v8, Lorg/maplibre/android/plugins/annotation/DraggableAnnotationController$AnnotationMoveGestureListener;

    .line 172
    .line 173
    invoke-direct {v8, v2}, Lorg/maplibre/android/plugins/annotation/DraggableAnnotationController$AnnotationMoveGestureListener;-><init>(Lokio/internal/DefaultSocket;)V

    .line 174
    .line 175
    .line 176
    iget-object v9, v3, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v9, Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 179
    .line 180
    iput-object v8, v9, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 181
    .line 182
    new-instance v8, Lcom/google/android/material/timepicker/TimePickerView$3;

    .line 183
    .line 184
    invoke-direct {v8, v2, v3}, Lcom/google/android/material/timepicker/TimePickerView$3;-><init>(Lokio/internal/DefaultSocket;Lorg/wikipedia/databinding/FragmentNewsBinding;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    .line 189
    .line 190
    sput-object v2, Lokio/internal/DefaultSocket;->INSTANCE:Lokio/internal/DefaultSocket;

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :goto_3
    const/4 v9, 0x0

    .line 194
    move-object v3, v14

    .line 195
    invoke-direct/range {v3 .. v9}, Lorg/maplibre/android/plugins/annotation/SymbolManager;-><init>(Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Style;Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;Lokio/internal/DefaultSocket;Lorg/maplibre/android/style/sources/GeoJsonOptions;)V

    .line 196
    .line 197
    .line 198
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 199
    .line 200
    new-instance v3, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 201
    .line 202
    const-string v6, "icon-allow-overlap"

    .line 203
    .line 204
    invoke-direct {v3, v6, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    iget-object v7, v14, Lorg/maplibre/android/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/HashMap;

    .line 208
    .line 209
    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    iget-object v6, v14, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 213
    .line 214
    new-array v8, v10, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 215
    .line 216
    aput-object v3, v8, v15

    .line 217
    .line 218
    invoke-virtual {v6, v8}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 219
    .line 220
    .line 221
    new-instance v3, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 222
    .line 223
    const-string v6, "text-allow-overlap"

    .line 224
    .line 225
    invoke-direct {v3, v6, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    iget-object v2, v14, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 232
    .line 233
    new-array v6, v10, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 234
    .line 235
    aput-object v3, v6, v15

    .line 236
    .line 237
    invoke-virtual {v2, v6}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 238
    .line 239
    .line 240
    iget-object v2, v0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$4:Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;

    .line 241
    .line 242
    iget-object v3, v2, Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;->pagesWithCoordinates:Ljava/util/List;

    .line 243
    .line 244
    iget-object v6, v2, Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;->largestClusterBottomRight:Lkotlin/Pair;

    .line 245
    .line 246
    iget-object v2, v2, Lorg/wikipedia/yearinreview/YearInReviewScreenData$GeoScreen;->largestClusterTopLeft:Lkotlin/Pair;

    .line 247
    .line 248
    new-instance v7, Ljava/util/ArrayList;

    .line 249
    .line 250
    const/16 v8, 0xa

    .line 251
    .line 252
    invoke-static {v3, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    if-eqz v8, :cond_6

    .line 268
    .line 269
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    check-cast v8, Lorg/wikipedia/history/db/HistoryEntryWithImage;

    .line 274
    .line 275
    new-instance v17, Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 276
    .line 277
    new-instance v9, Lorg/wikipedia/page/PageTitle;

    .line 278
    .line 279
    iget-object v12, v8, Lorg/wikipedia/history/db/HistoryEntryWithImage;->namespace:Ljava/lang/String;

    .line 280
    .line 281
    iget-object v10, v8, Lorg/wikipedia/history/db/HistoryEntryWithImage;->apiTitle:Ljava/lang/String;

    .line 282
    .line 283
    iget-object v11, v8, Lorg/wikipedia/history/db/HistoryEntryWithImage;->imageName:Ljava/lang/String;

    .line 284
    .line 285
    sget-object v18, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 286
    .line 287
    move/from16 v24, v15

    .line 288
    .line 289
    iget-object v15, v8, Lorg/wikipedia/history/db/HistoryEntryWithImage;->lang:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    invoke-static {v15}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 295
    .line 296
    .line 297
    move-result-object v15

    .line 298
    invoke-direct {v9, v12, v10, v11, v15}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 299
    .line 300
    .line 301
    iget-object v10, v8, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLat:Ljava/lang/Double;

    .line 302
    .line 303
    const-wide/16 v11, 0x0

    .line 304
    .line 305
    if-eqz v10, :cond_4

    .line 306
    .line 307
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 308
    .line 309
    .line 310
    move-result-wide v18

    .line 311
    move-wide/from16 v20, v18

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_4
    move-wide/from16 v20, v11

    .line 315
    .line 316
    :goto_5
    iget-object v8, v8, Lorg/wikipedia/history/db/HistoryEntryWithImage;->geoLon:Ljava/lang/Double;

    .line 317
    .line 318
    if-eqz v8, :cond_5

    .line 319
    .line 320
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 321
    .line 322
    .line 323
    move-result-wide v11

    .line 324
    :cond_5
    move-wide/from16 v22, v11

    .line 325
    .line 326
    const/16 v18, 0x0

    .line 327
    .line 328
    move-object/from16 v19, v9

    .line 329
    .line 330
    invoke-direct/range {v17 .. v23}, Lorg/wikipedia/dataclient/page/NearbyPage;-><init>(ILorg/wikipedia/page/PageTitle;DD)V

    .line 331
    .line 332
    .line 333
    move-object/from16 v8, v17

    .line 334
    .line 335
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move/from16 v15, v24

    .line 339
    .line 340
    const/4 v10, 0x1

    .line 341
    goto :goto_4

    .line 342
    :cond_6
    move/from16 v24, v15

    .line 343
    .line 344
    const/16 v3, 0x20

    .line 345
    .line 346
    invoke-static {v7, v3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    if-eqz v7, :cond_a

    .line 359
    .line 360
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v7

    .line 364
    move-object v10, v7

    .line 365
    check-cast v10, Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 366
    .line 367
    new-instance v7, Lokhttp3/MultipartBody$Builder;

    .line 368
    .line 369
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 370
    .line 371
    .line 372
    new-instance v8, Lorg/maplibre/android/geometry/LatLng;

    .line 373
    .line 374
    iget-wide v11, v10, Lorg/wikipedia/dataclient/page/NearbyPage;->latitude:D

    .line 375
    .line 376
    move-object v15, v3

    .line 377
    move-object/from16 p1, v4

    .line 378
    .line 379
    iget-wide v3, v10, Lorg/wikipedia/dataclient/page/NearbyPage;->longitude:D

    .line 380
    .line 381
    invoke-direct {v8, v11, v12, v3, v4}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v8}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 385
    .line 386
    .line 387
    move-result-wide v3

    .line 388
    invoke-virtual {v8}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 389
    .line 390
    .line 391
    move-result-wide v8

    .line 392
    invoke-static {v3, v4, v8, v9}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    iput-object v3, v7, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 397
    .line 398
    sget-object v3, Lorg/wikipedia/places/PlacesFragment;->MARKER_FONT_STACK:[Ljava/lang/String;

    .line 399
    .line 400
    iput-object v3, v7, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 401
    .line 402
    iput-object v1, v7, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 403
    .line 404
    invoke-virtual {v14, v7}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->create(Lokhttp3/MultipartBody$Builder;)Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    iput-object v3, v10, Lorg/wikipedia/dataclient/page/NearbyPage;->annotation:Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 409
    .line 410
    invoke-virtual {v14, v3}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->update(Lorg/maplibre/android/plugins/annotation/Symbol;)V

    .line 411
    .line 412
    .line 413
    iget-object v3, v10, Lorg/wikipedia/dataclient/page/NearbyPage;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 414
    .line 415
    iget-object v12, v3, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 416
    .line 417
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 418
    .line 419
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isImageDownloadEnabled()Z

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    if-eqz v3, :cond_9

    .line 424
    .line 425
    if-eqz v12, :cond_9

    .line 426
    .line 427
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    if-nez v3, :cond_7

    .line 432
    .line 433
    goto :goto_7

    .line 434
    :cond_7
    new-instance v4, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;

    .line 435
    .line 436
    move-object v3, v6

    .line 437
    iget-object v6, v0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$5:Landroid/graphics/Rect;

    .line 438
    .line 439
    iget-object v7, v0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$6:Landroid/graphics/Paint;

    .line 440
    .line 441
    iget-object v8, v0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$7:Landroid/graphics/Paint;

    .line 442
    .line 443
    iget-object v9, v0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$8:Landroid/graphics/Paint;

    .line 444
    .line 445
    move-object/from16 v17, v1

    .line 446
    .line 447
    move-object v11, v5

    .line 448
    const/4 v1, 0x1

    .line 449
    move-object/from16 v5, p1

    .line 450
    .line 451
    invoke-direct/range {v4 .. v14}, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda3;-><init>(Lorg/maplibre/android/maps/MapView;Landroid/graphics/Rect;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Lorg/wikipedia/dataclient/page/NearbyPage;Lorg/maplibre/android/maps/MapLibreMap;Ljava/lang/String;Landroid/content/Context;Lorg/maplibre/android/plugins/annotation/SymbolManager;)V

    .line 452
    .line 453
    .line 454
    move-object v6, v5

    .line 455
    move-object v5, v11

    .line 456
    sget-object v7, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 457
    .line 458
    if-eqz v7, :cond_8

    .line 459
    .line 460
    new-instance v7, Lcoil3/request/ImageRequest$Builder;

    .line 461
    .line 462
    invoke-direct {v7, v13}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 463
    .line 464
    .line 465
    iput-object v12, v7, Lcoil3/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 466
    .line 467
    new-instance v8, Lorg/wikipedia/views/imageservice/DimImageTransformation;

    .line 468
    .line 469
    const/4 v9, 0x2

    .line 470
    invoke-direct {v8, v9}, Lorg/wikipedia/views/imageservice/DimImageTransformation;-><init>(I)V

    .line 471
    .line 472
    .line 473
    new-array v9, v1, [Lorg/wikipedia/views/imageservice/DimImageTransformation;

    .line 474
    .line 475
    aput-object v8, v9, v24

    .line 476
    .line 477
    invoke-static {v7, v9}, Lcoil3/request/ImageRequestsKt;->transformations(Lcoil3/request/ImageRequest$Builder;[Lorg/wikipedia/views/imageservice/DimImageTransformation;)V

    .line 478
    .line 479
    .line 480
    new-instance v8, Landroidx/compose/ui/draw/DrawResult;

    .line 481
    .line 482
    invoke-direct {v8, v4}, Landroidx/compose/ui/draw/DrawResult;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 483
    .line 484
    .line 485
    iput-object v8, v7, Lcoil3/request/ImageRequest$Builder;->target:Lcoil3/target/Target;

    .line 486
    .line 487
    invoke-virtual {v7}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    invoke-static {v13}, Lcoil3/SingletonImageLoader;->get(Landroid/content/Context;)Lcoil3/RealImageLoader;

    .line 492
    .line 493
    .line 494
    move-result-object v7

    .line 495
    invoke-virtual {v7, v4}, Lcoil3/RealImageLoader;->enqueue(Lcoil3/request/ImageRequest;)V

    .line 496
    .line 497
    .line 498
    goto :goto_8

    .line 499
    :cond_8
    const-string v0, "ImageService has not been set, call ImageService.setImplementation() before using ImageService"

    .line 500
    .line 501
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    return-void

    .line 505
    :cond_9
    :goto_7
    move-object/from16 v17, v1

    .line 506
    .line 507
    move-object v3, v6

    .line 508
    const/4 v1, 0x1

    .line 509
    move-object/from16 v6, p1

    .line 510
    .line 511
    :goto_8
    move-object v4, v6

    .line 512
    move-object/from16 v1, v17

    .line 513
    .line 514
    move-object v6, v3

    .line 515
    move-object v3, v15

    .line 516
    goto/16 :goto_6

    .line 517
    .line 518
    :cond_a
    move-object v3, v6

    .line 519
    move-object v6, v4

    .line 520
    new-instance v1, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda4;

    .line 521
    .line 522
    iget-object v0, v0, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda2;->f$9:Lkotlin/jvm/functions/Function2;

    .line 523
    .line 524
    invoke-direct {v1, v5, v0}, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda4;-><init>(Lorg/maplibre/android/maps/MapLibreMap;Lkotlin/jvm/functions/Function2;)V

    .line 525
    .line 526
    .line 527
    iget-object v0, v6, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 528
    .line 529
    iget-object v0, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingMapListenerList:Ljava/lang/Object;

    .line 530
    .line 531
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 532
    .line 533
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 537
    .line 538
    const/4 v1, 0x6

    .line 539
    move/from16 v4, v24

    .line 540
    .line 541
    invoke-direct {v0, v1, v4}, Lokhttp3/Headers$Builder;-><init>(IB)V

    .line 542
    .line 543
    .line 544
    iget-object v1, v0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 545
    .line 546
    new-instance v4, Lorg/maplibre/android/geometry/LatLng;

    .line 547
    .line 548
    iget-object v6, v2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 549
    .line 550
    check-cast v6, Ljava/lang/Number;

    .line 551
    .line 552
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    .line 553
    .line 554
    .line 555
    move-result-wide v6

    .line 556
    iget-object v2, v2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 557
    .line 558
    check-cast v2, Ljava/lang/Number;

    .line 559
    .line 560
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 561
    .line 562
    .line 563
    move-result-wide v8

    .line 564
    invoke-direct {v4, v6, v7, v8, v9}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    new-instance v2, Lorg/maplibre/android/geometry/LatLng;

    .line 571
    .line 572
    iget-object v4, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 573
    .line 574
    check-cast v4, Ljava/lang/Number;

    .line 575
    .line 576
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 577
    .line 578
    .line 579
    move-result-wide v6

    .line 580
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 581
    .line 582
    check-cast v3, Ljava/lang/Number;

    .line 583
    .line 584
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    .line 585
    .line 586
    .line 587
    move-result-wide v3

    .line 588
    invoke-direct {v2, v6, v7, v3, v4}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lorg/maplibre/android/geometry/LatLngBounds;

    .line 595
    .line 596
    .line 597
    move-result-object v9

    .line 598
    invoke-static/range {v16 .. v16}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 599
    .line 600
    .line 601
    move-result v10

    .line 602
    new-instance v8, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;

    .line 603
    .line 604
    move v11, v10

    .line 605
    move v12, v10

    .line 606
    move v13, v10

    .line 607
    invoke-direct/range {v8 .. v13}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;-><init>(Lorg/maplibre/android/geometry/LatLngBounds;IIII)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v5}, Lorg/maplibre/android/maps/MapLibreMap;->notifyDeveloperAnimationListeners()V

    .line 611
    .line 612
    .line 613
    iget-object v0, v5, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 614
    .line 615
    const/4 v1, 0x0

    .line 616
    invoke-virtual {v0, v5, v8, v1}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    .line 617
    .line 618
    .line 619
    return-void

    .line 620
    :cond_b
    const-string v0, "Attribute not found; ID=2130969851"

    .line 621
    .line 622
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    return-void
.end method

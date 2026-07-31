.class public final Lorg/maplibre/android/plugins/annotation/AnnotationManager$MapClickResolver;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;
.implements Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;


# instance fields
.field public final synthetic this$0:Lorg/maplibre/android/plugins/annotation/SymbolManager;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/plugins/annotation/SymbolManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/plugins/annotation/AnnotationManager$MapClickResolver;->this$0:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMapClick(Lorg/maplibre/android/geometry/LatLng;)Z
    .locals 8

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/plugins/annotation/AnnotationManager$MapClickResolver;->this$0:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->clickListeners:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 14
    .line 15
    iget-object v1, v1, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lorg/maplibre/android/maps/MapView$2;->toScreenLocation(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->queryMapForFeatures(Landroid/graphics/PointF;)Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_6

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_6

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda19;

    .line 42
    .line 43
    iget-object p1, p1, Lorg/wikipedia/places/PlacesFragment$$ExternalSyntheticLambda19;->f$0:Lorg/wikipedia/places/PlacesFragment;

    .line 44
    .line 45
    sget-object v0, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/maplibre/android/plugins/annotation/Symbol;->getLatLng()Lorg/maplibre/android/geometry/LatLng;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    invoke-virtual {p0}, Lorg/maplibre/android/plugins/annotation/Symbol;->getLatLng()Lorg/maplibre/android/geometry/LatLng;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v5, ">>>> clicked: "

    .line 66
    .line 67
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, ", "

    .line 74
    .line 75
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 89
    .line 90
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 91
    .line 92
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 93
    .line 94
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 99
    .line 100
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    const-string v7, "app_places_interaction"

    .line 105
    .line 106
    const-string v2, "marker_click"

    .line 107
    .line 108
    const-string v3, "map_view"

    .line 109
    .line 110
    const-string v4, ""

    .line 111
    .line 112
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p1, Lorg/wikipedia/places/PlacesFragment;->annotationCache:Lkotlin/collections/ArrayDeque;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    const/4 v2, 0x0

    .line 129
    if-eqz v1, :cond_2

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    move-object v3, v1

    .line 136
    check-cast v3, Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 137
    .line 138
    iget-object v3, v3, Lorg/wikipedia/dataclient/page/NearbyPage;->annotation:Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 139
    .line 140
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    move-object v1, v2

    .line 148
    :goto_0
    check-cast v1, Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 149
    .line 150
    if-eqz v1, :cond_5

    .line 151
    .line 152
    iget-object v0, v1, Lorg/wikipedia/dataclient/page/NearbyPage;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 153
    .line 154
    new-instance v3, Landroid/location/Location;

    .line 155
    .line 156
    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lorg/maplibre/android/plugins/annotation/Symbol;->getLatLng()Lorg/maplibre/android/geometry/LatLng;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v4}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 164
    .line 165
    .line 166
    move-result-wide v4

    .line 167
    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lorg/maplibre/android/plugins/annotation/Symbol;->getLatLng()Lorg/maplibre/android/geometry/LatLng;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 175
    .line 176
    .line 177
    move-result-wide v4

    .line 178
    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 179
    .line 180
    .line 181
    iget-object p0, p1, Lorg/wikipedia/places/PlacesFragment;->magnifiedMarker:Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 182
    .line 183
    if-eqz p0, :cond_3

    .line 184
    .line 185
    const/high16 v4, 0x3f800000    # 1.0f

    .line 186
    .line 187
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    iget-object v5, p0, Lorg/maplibre/android/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    .line 192
    .line 193
    const-string v6, "icon-size"

    .line 194
    .line 195
    invoke-virtual {v5, v6, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 196
    .line 197
    .line 198
    iget-object v4, p1, Lorg/wikipedia/places/PlacesFragment;->symbolManager:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 199
    .line 200
    if-eqz v4, :cond_3

    .line 201
    .line 202
    invoke-virtual {v4, p0}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->update(Lorg/maplibre/android/plugins/annotation/Symbol;)V

    .line 203
    .line 204
    .line 205
    :cond_3
    invoke-virtual {p1}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    iput-object v2, p0, Lorg/wikipedia/places/PlacesFragmentViewModel;->highlightedPageTitle:Lorg/wikipedia/page/PageTitle;

    .line 210
    .line 211
    iget-object p0, v1, Lorg/wikipedia/dataclient/page/NearbyPage;->annotation:Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 212
    .line 213
    invoke-virtual {p1, p0}, Lorg/wikipedia/places/PlacesFragment;->setMagnifiedSymbol(Lorg/maplibre/android/plugins/annotation/Symbol;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Lorg/wikipedia/places/PlacesFragment;->getViewModel()Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    iput-object v0, p0, Lorg/wikipedia/places/PlacesFragmentViewModel;->highlightedPageTitle:Lorg/wikipedia/page/PageTitle;

    .line 221
    .line 222
    iget-object p0, p1, Lorg/wikipedia/places/PlacesFragment;->symbolManager:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 223
    .line 224
    if-eqz p0, :cond_4

    .line 225
    .line 226
    iget-object v1, v1, Lorg/wikipedia/dataclient/page/NearbyPage;->annotation:Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 227
    .line 228
    invoke-virtual {p0, v1}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->update(Lorg/maplibre/android/plugins/annotation/Symbol;)V

    .line 229
    .line 230
    .line 231
    :cond_4
    invoke-virtual {p1, v0, v3}, Lorg/wikipedia/places/PlacesFragment;->showLinkPreview(Lorg/wikipedia/page/PageTitle;Landroid/location/Location;)V

    .line 232
    .line 233
    .line 234
    :cond_5
    const/4 p0, 0x1

    .line 235
    return p0

    .line 236
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 237
    return p0
.end method

.method public final onMapLongClick(Lorg/maplibre/android/geometry/LatLng;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/plugins/annotation/AnnotationManager$MapClickResolver;->this$0:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->longClickListeners:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 13
    .line 14
    iget-object v1, v1, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lorg/maplibre/android/maps/MapView$2;->toScreenLocation(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->queryMapForFeatures(Landroid/graphics/PointF;)Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    throw p0

    .line 42
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 43
    return p0
.end method

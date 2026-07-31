.class public final Lorg/maplibre/android/plugins/annotation/SymbolManager;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final annotations:Landroidx/collection/LongSparseArray;

.field public final clickListeners:Ljava/util/ArrayList;

.field public final constantPropertyUsageMap:Ljava/util/HashMap;

.field public final coreElementProvider:Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;

.field public currentId:J

.field public final dataDrivenPropertyUsageMap:Ljava/util/HashMap;

.field public final draggableAnnotationController:Lokio/internal/DefaultSocket;

.field public geoJsonSource:Lorg/maplibre/android/style/sources/GeoJsonSource;

.field public final isSourceUpToDate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public layer:Lorg/maplibre/android/style/layers/SymbolLayer;

.field public final longClickListeners:Ljava/util/ArrayList;

.field public final mapView:Lorg/maplibre/android/maps/MapView;

.field public final maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

.field public style:Lorg/maplibre/android/maps/Style;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Style;Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;Lokio/internal/DefaultSocket;Lorg/maplibre/android/style/sources/GeoJsonOptions;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->annotations:Landroidx/collection/LongSparseArray;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/HashMap;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/HashMap;

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->clickListeners:Ljava/util/ArrayList;

    .line 37
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->longClickListeners:Ljava/util/ArrayList;

    .line 44
    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->isSourceUpToDate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    iput-object p1, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->mapView:Lorg/maplibre/android/maps/MapView;

    .line 54
    .line 55
    iput-object p2, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 56
    .line 57
    iput-object p3, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->style:Lorg/maplibre/android/maps/Style;

    .line 58
    .line 59
    iput-object p4, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->coreElementProvider:Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;

    .line 60
    .line 61
    iput-object p5, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->draggableAnnotationController:Lokio/internal/DefaultSocket;

    .line 62
    .line 63
    iget-boolean p3, p3, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    .line 64
    .line 65
    if-eqz p3, :cond_0

    .line 66
    .line 67
    new-instance p3, Lorg/maplibre/android/plugins/annotation/AnnotationManager$MapClickResolver;

    .line 68
    .line 69
    invoke-direct {p3, p0}, Lorg/maplibre/android/plugins/annotation/AnnotationManager$MapClickResolver;-><init>(Lorg/maplibre/android/plugins/annotation/SymbolManager;)V

    .line 70
    .line 71
    .line 72
    iget-object p4, p2, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/IconManager;

    .line 73
    .line 74
    iget-object p4, p4, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p4, Lorg/maplibre/android/maps/MapView;

    .line 77
    .line 78
    iget-object p4, p4, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 79
    .line 80
    iget-object p4, p4, Lorg/maplibre/android/maps/MapGestureDetector;->onMapClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 81
    .line 82
    invoke-virtual {p4, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-object p4, p2, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/IconManager;

    .line 86
    .line 87
    iget-object p4, p4, Lorg/maplibre/android/maps/IconManager;->iconMap:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p4, Lorg/maplibre/android/maps/MapView;

    .line 90
    .line 91
    iget-object p4, p4, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 92
    .line 93
    iget-object p4, p4, Lorg/maplibre/android/maps/MapGestureDetector;->onMapLongClickListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 94
    .line 95
    invoke-virtual {p4, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p6}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->initializeSourcesAndLayers(Lorg/maplibre/android/style/sources/GeoJsonOptions;)V

    .line 99
    .line 100
    .line 101
    iget-object p3, p5, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p3, Ljava/util/HashMap;

    .line 104
    .line 105
    iget-object p4, p5, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p4, Ljava/util/LinkedList;

    .line 108
    .line 109
    const/4 p5, 0x0

    .line 110
    invoke-virtual {p4, p5, p0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object p4, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 114
    .line 115
    invoke-virtual {p4}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p4

    .line 119
    invoke-virtual {p3, p4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    new-instance p3, Lorg/maplibre/android/plugins/annotation/AnnotationManager$1;

    .line 123
    .line 124
    invoke-direct {p3, p0, p2, p6}, Lorg/maplibre/android/plugins/annotation/AnnotationManager$1;-><init>(Lorg/maplibre/android/plugins/annotation/SymbolManager;Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/style/sources/GeoJsonOptions;)V

    .line 125
    .line 126
    .line 127
    iget-object p0, p1, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 128
    .line 129
    iget-object p0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 132
    .line 133
    invoke-virtual {p0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_0
    const-string p0, "The style has to be non-null and fully loaded."

    .line 138
    .line 139
    invoke-static {p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v1
.end method


# virtual methods
.method public final create(Lokhttp3/MultipartBody$Builder;)Lorg/maplibre/android/plugins/annotation/Symbol;
    .locals 9

    .line 1
    iget-wide v1, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->currentId:J

    .line 2
    .line 3
    iget-object v0, p1, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lorg/maplibre/geojson/Point;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    new-instance v4, Lcom/google/gson/JsonObject;

    .line 11
    .line 12
    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v0, "symbol-sort-key"

    .line 16
    .line 17
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "icon-size"

    .line 21
    .line 22
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p1, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    const-string v3, "icon-image"

    .line 30
    .line 31
    invoke-virtual {v4, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "icon-rotate"

    .line 35
    .line 36
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "icon-offset"

    .line 40
    .line 41
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "icon-anchor"

    .line 45
    .line 46
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v0, "text-field"

    .line 50
    .line 51
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, [Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    new-instance v3, Lcom/google/gson/JsonArray;

    .line 61
    .line 62
    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 63
    .line 64
    .line 65
    array-length v5, v0

    .line 66
    const/4 v7, 0x0

    .line 67
    :goto_0
    if-ge v7, v5, :cond_1

    .line 68
    .line 69
    aget-object v8, v0, v7

    .line 70
    .line 71
    invoke-virtual {v3, v8}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v7, v7, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move-object v3, v6

    .line 78
    :cond_1
    const-string v0, "text-font"

    .line 79
    .line 80
    invoke-virtual {v4, v0, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 81
    .line 82
    .line 83
    const-string v0, "text-size"

    .line 84
    .line 85
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 86
    .line 87
    .line 88
    const-string v0, "text-max-width"

    .line 89
    .line 90
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 91
    .line 92
    .line 93
    const-string v0, "text-letter-spacing"

    .line 94
    .line 95
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 96
    .line 97
    .line 98
    const-string v0, "text-justify"

    .line 99
    .line 100
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v0, "text-radial-offset"

    .line 104
    .line 105
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 106
    .line 107
    .line 108
    const-string v0, "text-anchor"

    .line 109
    .line 110
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "text-rotate"

    .line 114
    .line 115
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 116
    .line 117
    .line 118
    const-string v0, "text-transform"

    .line 119
    .line 120
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v0, "text-offset"

    .line 124
    .line 125
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 126
    .line 127
    .line 128
    const-string v0, "icon-opacity"

    .line 129
    .line 130
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 131
    .line 132
    .line 133
    const-string v0, "icon-color"

    .line 134
    .line 135
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v0, "icon-halo-color"

    .line 139
    .line 140
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v0, "icon-halo-width"

    .line 144
    .line 145
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 146
    .line 147
    .line 148
    const-string v0, "icon-halo-blur"

    .line 149
    .line 150
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 151
    .line 152
    .line 153
    const-string v0, "text-opacity"

    .line 154
    .line 155
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 156
    .line 157
    .line 158
    const-string v0, "text-color"

    .line 159
    .line 160
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string v0, "text-halo-color"

    .line 164
    .line 165
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string v0, "text-halo-width"

    .line 169
    .line 170
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 171
    .line 172
    .line 173
    const-string v0, "text-halo-blur"

    .line 174
    .line 175
    invoke-virtual {v4, v0, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 176
    .line 177
    .line 178
    new-instance v0, Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 179
    .line 180
    iget-object p1, p1, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 181
    .line 182
    move-object v5, p1

    .line 183
    check-cast v5, Lorg/maplibre/geojson/Point;

    .line 184
    .line 185
    move-object v3, p0

    .line 186
    invoke-direct/range {v0 .. v5}, Lorg/maplibre/android/plugins/annotation/Symbol;-><init>(JLorg/maplibre/android/plugins/annotation/SymbolManager;Lcom/google/gson/JsonObject;Lorg/maplibre/geojson/Point;)V

    .line 187
    .line 188
    .line 189
    const-string p0, "custom_data"

    .line 190
    .line 191
    invoke-virtual {v4, p0, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 192
    .line 193
    .line 194
    const-string p0, "id"

    .line 195
    .line 196
    invoke-virtual {v4, p0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 201
    .line 202
    .line 203
    move-result-wide p0

    .line 204
    iget-object v1, v3, Lorg/maplibre/android/plugins/annotation/SymbolManager;->annotations:Landroidx/collection/LongSparseArray;

    .line 205
    .line 206
    invoke-virtual {v1, p0, p1, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    iget-wide p0, v3, Lorg/maplibre/android/plugins/annotation/SymbolManager;->currentId:J

    .line 210
    .line 211
    const-wide/16 v1, 0x1

    .line 212
    .line 213
    add-long/2addr p0, v1

    .line 214
    iput-wide p0, v3, Lorg/maplibre/android/plugins/annotation/SymbolManager;->currentId:J

    .line 215
    .line 216
    invoke-virtual {v3}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->updateSource()V

    .line 217
    .line 218
    .line 219
    return-object v0

    .line 220
    :cond_2
    const-string p0, "geometry field is required"

    .line 221
    .line 222
    invoke-static {p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    return-object v6
.end method

.method public final enableDataDrivenProperty(Ljava/lang/String;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Boolean;

    .line 12
    .line 13
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1b

    .line 20
    .line 21
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const-string v3, "text-justify"

    .line 31
    .line 32
    const-string v4, "text-opacity"

    .line 33
    .line 34
    const-string v5, "text-halo-width"

    .line 35
    .line 36
    const-string v6, "icon-halo-blur"

    .line 37
    .line 38
    const-string v7, "text-halo-color"

    .line 39
    .line 40
    const-string v8, "text-font"

    .line 41
    .line 42
    const-string v9, "text-transform"

    .line 43
    .line 44
    const-string v10, "symbol-sort-key"

    .line 45
    .line 46
    const-string v11, "icon-color"

    .line 47
    .line 48
    const-string v12, "icon-halo-width"

    .line 49
    .line 50
    const-string v13, "icon-halo-color"

    .line 51
    .line 52
    const-string v14, "text-radial-offset"

    .line 53
    .line 54
    const-string v15, "text-rotate"

    .line 55
    .line 56
    move/from16 v16, v2

    .line 57
    .line 58
    const/16 v17, 0x0

    .line 59
    .line 60
    const-string v2, "icon-offset"

    .line 61
    .line 62
    const-string v0, "icon-rotate"

    .line 63
    .line 64
    move-object/from16 v18, v15

    .line 65
    .line 66
    const-string v15, "icon-image"

    .line 67
    .line 68
    move-object/from16 v19, v2

    .line 69
    .line 70
    const-string v2, "icon-size"

    .line 71
    .line 72
    move-object/from16 v20, v0

    .line 73
    .line 74
    const-string v0, "text-size"

    .line 75
    .line 76
    move-object/from16 v21, v14

    .line 77
    .line 78
    const-string v14, "text-color"

    .line 79
    .line 80
    move-object/from16 v22, v13

    .line 81
    .line 82
    const-string v13, "text-field"

    .line 83
    .line 84
    const/16 v23, -0x1

    .line 85
    .line 86
    sparse-switch v16, :sswitch_data_0

    .line 87
    .line 88
    .line 89
    :goto_0
    move-object/from16 v16, v12

    .line 90
    .line 91
    :goto_1
    move-object/from16 v12, v18

    .line 92
    .line 93
    goto/16 :goto_6

    .line 94
    .line 95
    :sswitch_0
    move-object/from16 v16, v12

    .line 96
    .line 97
    const-string v12, "text-offset"

    .line 98
    .line 99
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_0

    .line 104
    .line 105
    goto/16 :goto_2

    .line 106
    .line 107
    :cond_0
    const/16 v23, 0x1a

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :sswitch_1
    move-object/from16 v16, v12

    .line 111
    .line 112
    const-string v12, "icon-anchor"

    .line 113
    .line 114
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_1

    .line 119
    .line 120
    goto/16 :goto_2

    .line 121
    .line 122
    :cond_1
    const/16 v23, 0x19

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :sswitch_2
    move-object/from16 v16, v12

    .line 126
    .line 127
    const-string v12, "text-anchor"

    .line 128
    .line 129
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_2

    .line 134
    .line 135
    goto/16 :goto_2

    .line 136
    .line 137
    :cond_2
    const/16 v23, 0x18

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :sswitch_3
    move-object/from16 v16, v12

    .line 141
    .line 142
    const-string v12, "icon-opacity"

    .line 143
    .line 144
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_3

    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :cond_3
    const/16 v23, 0x17

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :sswitch_4
    move-object/from16 v16, v12

    .line 156
    .line 157
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_4

    .line 162
    .line 163
    goto/16 :goto_2

    .line 164
    .line 165
    :cond_4
    const/16 v23, 0x16

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :sswitch_5
    move-object/from16 v16, v12

    .line 169
    .line 170
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_5

    .line 175
    .line 176
    goto/16 :goto_2

    .line 177
    .line 178
    :cond_5
    const/16 v23, 0x15

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :sswitch_6
    move-object/from16 v16, v12

    .line 182
    .line 183
    const-string v12, "text-halo-blur"

    .line 184
    .line 185
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_6

    .line 190
    .line 191
    goto/16 :goto_2

    .line 192
    .line 193
    :cond_6
    const/16 v23, 0x14

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :sswitch_7
    move-object/from16 v16, v12

    .line 197
    .line 198
    const-string v12, "text-letter-spacing"

    .line 199
    .line 200
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-nez v1, :cond_7

    .line 205
    .line 206
    goto/16 :goto_2

    .line 207
    .line 208
    :cond_7
    const/16 v23, 0x13

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :sswitch_8
    move-object/from16 v16, v12

    .line 212
    .line 213
    const-string v12, "text-max-width"

    .line 214
    .line 215
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_8

    .line 220
    .line 221
    goto/16 :goto_2

    .line 222
    .line 223
    :cond_8
    const/16 v23, 0x12

    .line 224
    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :sswitch_9
    move-object/from16 v16, v12

    .line 228
    .line 229
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-nez v1, :cond_9

    .line 234
    .line 235
    goto/16 :goto_2

    .line 236
    .line 237
    :cond_9
    const/16 v23, 0x11

    .line 238
    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :sswitch_a
    move-object/from16 v16, v12

    .line 242
    .line 243
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-nez v1, :cond_a

    .line 248
    .line 249
    goto/16 :goto_2

    .line 250
    .line 251
    :cond_a
    const/16 v23, 0x10

    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :sswitch_b
    move-object/from16 v16, v12

    .line 256
    .line 257
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-nez v1, :cond_b

    .line 262
    .line 263
    goto/16 :goto_2

    .line 264
    .line 265
    :cond_b
    const/16 v23, 0xf

    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :sswitch_c
    move-object/from16 v16, v12

    .line 270
    .line 271
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-nez v1, :cond_c

    .line 276
    .line 277
    goto/16 :goto_2

    .line 278
    .line 279
    :cond_c
    const/16 v23, 0xe

    .line 280
    .line 281
    goto/16 :goto_1

    .line 282
    .line 283
    :sswitch_d
    move-object/from16 v16, v12

    .line 284
    .line 285
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-nez v1, :cond_d

    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_d
    const/16 v23, 0xd

    .line 293
    .line 294
    goto/16 :goto_1

    .line 295
    .line 296
    :sswitch_e
    move-object/from16 v16, v12

    .line 297
    .line 298
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-nez v1, :cond_e

    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_e
    const/16 v23, 0xc

    .line 306
    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :sswitch_f
    move-object/from16 v16, v12

    .line 310
    .line 311
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-nez v1, :cond_f

    .line 316
    .line 317
    goto :goto_2

    .line 318
    :cond_f
    const/16 v23, 0xb

    .line 319
    .line 320
    goto/16 :goto_1

    .line 321
    .line 322
    :sswitch_10
    move-object/from16 v16, v12

    .line 323
    .line 324
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-nez v1, :cond_10

    .line 329
    .line 330
    goto :goto_2

    .line 331
    :cond_10
    const/16 v23, 0xa

    .line 332
    .line 333
    goto/16 :goto_1

    .line 334
    .line 335
    :sswitch_11
    move-object/from16 v16, v12

    .line 336
    .line 337
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-nez v1, :cond_11

    .line 342
    .line 343
    goto :goto_2

    .line 344
    :cond_11
    const/16 v23, 0x9

    .line 345
    .line 346
    goto/16 :goto_1

    .line 347
    .line 348
    :sswitch_12
    move-object/from16 v16, v12

    .line 349
    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-nez v1, :cond_12

    .line 355
    .line 356
    goto :goto_2

    .line 357
    :cond_12
    const/16 v23, 0x8

    .line 358
    .line 359
    goto/16 :goto_1

    .line 360
    .line 361
    :sswitch_13
    move-object/from16 v16, v12

    .line 362
    .line 363
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-nez v1, :cond_13

    .line 368
    .line 369
    goto :goto_2

    .line 370
    :cond_13
    const/16 v23, 0x7

    .line 371
    .line 372
    goto/16 :goto_1

    .line 373
    .line 374
    :sswitch_14
    move-object/from16 v16, v12

    .line 375
    .line 376
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-nez v1, :cond_14

    .line 381
    .line 382
    :goto_2
    goto/16 :goto_1

    .line 383
    .line 384
    :cond_14
    const/16 v23, 0x6

    .line 385
    .line 386
    goto/16 :goto_1

    .line 387
    .line 388
    :sswitch_15
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-nez v1, :cond_15

    .line 393
    .line 394
    goto/16 :goto_0

    .line 395
    .line 396
    :cond_15
    const/16 v23, 0x5

    .line 397
    .line 398
    goto/16 :goto_0

    .line 399
    .line 400
    :sswitch_16
    move-object/from16 v16, v12

    .line 401
    .line 402
    move-object/from16 v12, v22

    .line 403
    .line 404
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    if-nez v1, :cond_16

    .line 409
    .line 410
    goto :goto_3

    .line 411
    :cond_16
    const/16 v23, 0x4

    .line 412
    .line 413
    :goto_3
    move-object/from16 v22, v12

    .line 414
    .line 415
    goto/16 :goto_1

    .line 416
    .line 417
    :sswitch_17
    move-object/from16 v16, v12

    .line 418
    .line 419
    move-object/from16 v12, v21

    .line 420
    .line 421
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-nez v1, :cond_17

    .line 426
    .line 427
    goto :goto_4

    .line 428
    :cond_17
    const/16 v23, 0x3

    .line 429
    .line 430
    :goto_4
    move-object/from16 v21, v12

    .line 431
    .line 432
    goto/16 :goto_1

    .line 433
    .line 434
    :sswitch_18
    move-object/from16 v16, v12

    .line 435
    .line 436
    move-object/from16 v12, v20

    .line 437
    .line 438
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    if-nez v1, :cond_18

    .line 443
    .line 444
    goto :goto_5

    .line 445
    :cond_18
    const/16 v23, 0x2

    .line 446
    .line 447
    :goto_5
    move-object/from16 v20, v12

    .line 448
    .line 449
    goto/16 :goto_1

    .line 450
    .line 451
    :sswitch_19
    move-object/from16 v16, v12

    .line 452
    .line 453
    move-object/from16 v12, v19

    .line 454
    .line 455
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    move-object/from16 v12, v18

    .line 460
    .line 461
    if-nez v1, :cond_19

    .line 462
    .line 463
    goto :goto_6

    .line 464
    :cond_19
    const/16 v23, 0x1

    .line 465
    .line 466
    goto :goto_6

    .line 467
    :sswitch_1a
    move-object/from16 v16, v12

    .line 468
    .line 469
    move-object/from16 v12, v18

    .line 470
    .line 471
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-nez v1, :cond_1a

    .line 476
    .line 477
    goto :goto_6

    .line 478
    :cond_1a
    move/from16 v23, v17

    .line 479
    .line 480
    :goto_6
    packed-switch v23, :pswitch_data_0

    .line 481
    .line 482
    .line 483
    goto/16 :goto_7

    .line 484
    .line 485
    :pswitch_0
    move-object/from16 v1, p0

    .line 486
    .line 487
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 488
    .line 489
    const-string v1, "text-offset"

    .line 490
    .line 491
    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    new-instance v3, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 496
    .line 497
    invoke-direct {v3, v1, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    const/4 v12, 0x1

    .line 501
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 502
    .line 503
    aput-object v3, v1, v17

    .line 504
    .line 505
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 506
    .line 507
    .line 508
    return-void

    .line 509
    :pswitch_1
    move-object/from16 v1, p0

    .line 510
    .line 511
    const/4 v12, 0x1

    .line 512
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 513
    .line 514
    const-string v1, "icon-anchor"

    .line 515
    .line 516
    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    new-instance v3, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 521
    .line 522
    invoke-direct {v3, v1, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 526
    .line 527
    aput-object v3, v1, v17

    .line 528
    .line 529
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 530
    .line 531
    .line 532
    return-void

    .line 533
    :pswitch_2
    move-object/from16 v1, p0

    .line 534
    .line 535
    const/4 v12, 0x1

    .line 536
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 537
    .line 538
    const-string v1, "text-anchor"

    .line 539
    .line 540
    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    new-instance v3, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 545
    .line 546
    invoke-direct {v3, v1, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 550
    .line 551
    aput-object v3, v1, v17

    .line 552
    .line 553
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 554
    .line 555
    .line 556
    return-void

    .line 557
    :pswitch_3
    move-object/from16 v1, p0

    .line 558
    .line 559
    const/4 v12, 0x1

    .line 560
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 561
    .line 562
    const-string v1, "icon-opacity"

    .line 563
    .line 564
    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    new-instance v3, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 569
    .line 570
    invoke-direct {v3, v1, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 574
    .line 575
    aput-object v3, v1, v17

    .line 576
    .line 577
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 578
    .line 579
    .line 580
    return-void

    .line 581
    :pswitch_4
    move-object/from16 v1, p0

    .line 582
    .line 583
    const/4 v12, 0x1

    .line 584
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 585
    .line 586
    invoke-static {v13}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    new-instance v2, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 591
    .line 592
    invoke-direct {v2, v13, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 596
    .line 597
    aput-object v2, v1, v17

    .line 598
    .line 599
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 600
    .line 601
    .line 602
    return-void

    .line 603
    :pswitch_5
    move-object/from16 v1, p0

    .line 604
    .line 605
    const/4 v12, 0x1

    .line 606
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 607
    .line 608
    invoke-static {v14}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    new-instance v2, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 613
    .line 614
    invoke-direct {v2, v14, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 618
    .line 619
    aput-object v2, v1, v17

    .line 620
    .line 621
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 622
    .line 623
    .line 624
    return-void

    .line 625
    :pswitch_6
    move-object/from16 v1, p0

    .line 626
    .line 627
    const/4 v12, 0x1

    .line 628
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 629
    .line 630
    const-string v1, "text-halo-blur"

    .line 631
    .line 632
    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 633
    .line 634
    .line 635
    move-result-object v2

    .line 636
    new-instance v3, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 637
    .line 638
    invoke-direct {v3, v1, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 642
    .line 643
    aput-object v3, v1, v17

    .line 644
    .line 645
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 646
    .line 647
    .line 648
    return-void

    .line 649
    :pswitch_7
    move-object/from16 v1, p0

    .line 650
    .line 651
    const/4 v12, 0x1

    .line 652
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 653
    .line 654
    const-string v1, "text-letter-spacing"

    .line 655
    .line 656
    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 657
    .line 658
    .line 659
    move-result-object v2

    .line 660
    new-instance v3, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 661
    .line 662
    invoke-direct {v3, v1, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 663
    .line 664
    .line 665
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 666
    .line 667
    aput-object v3, v1, v17

    .line 668
    .line 669
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 670
    .line 671
    .line 672
    return-void

    .line 673
    :pswitch_8
    move-object/from16 v1, p0

    .line 674
    .line 675
    const/4 v12, 0x1

    .line 676
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 677
    .line 678
    const-string v1, "text-max-width"

    .line 679
    .line 680
    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    new-instance v3, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 685
    .line 686
    invoke-direct {v3, v1, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 690
    .line 691
    aput-object v3, v1, v17

    .line 692
    .line 693
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 694
    .line 695
    .line 696
    return-void

    .line 697
    :pswitch_9
    move-object/from16 v1, p0

    .line 698
    .line 699
    const/4 v12, 0x1

    .line 700
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 701
    .line 702
    invoke-static {v3}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    new-instance v2, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 707
    .line 708
    invoke-direct {v2, v3, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 709
    .line 710
    .line 711
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 712
    .line 713
    aput-object v2, v1, v17

    .line 714
    .line 715
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 716
    .line 717
    .line 718
    return-void

    .line 719
    :pswitch_a
    move-object/from16 v1, p0

    .line 720
    .line 721
    const/4 v12, 0x1

    .line 722
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 723
    .line 724
    invoke-static {v4}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    new-instance v2, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 729
    .line 730
    invoke-direct {v2, v4, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 731
    .line 732
    .line 733
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 734
    .line 735
    aput-object v2, v1, v17

    .line 736
    .line 737
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 738
    .line 739
    .line 740
    return-void

    .line 741
    :pswitch_b
    move-object/from16 v1, p0

    .line 742
    .line 743
    const/4 v12, 0x1

    .line 744
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 745
    .line 746
    invoke-static {v5}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    new-instance v2, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 751
    .line 752
    invoke-direct {v2, v5, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 753
    .line 754
    .line 755
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 756
    .line 757
    aput-object v2, v1, v17

    .line 758
    .line 759
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 760
    .line 761
    .line 762
    return-void

    .line 763
    :pswitch_c
    move-object/from16 v1, p0

    .line 764
    .line 765
    const/4 v12, 0x1

    .line 766
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 767
    .line 768
    invoke-static {v6}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    new-instance v2, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 773
    .line 774
    invoke-direct {v2, v6, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 775
    .line 776
    .line 777
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 778
    .line 779
    aput-object v2, v1, v17

    .line 780
    .line 781
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 782
    .line 783
    .line 784
    return-void

    .line 785
    :pswitch_d
    move-object/from16 v1, p0

    .line 786
    .line 787
    const/4 v12, 0x1

    .line 788
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 789
    .line 790
    invoke-static {v7}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    new-instance v2, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 795
    .line 796
    invoke-direct {v2, v7, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 797
    .line 798
    .line 799
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 800
    .line 801
    aput-object v2, v1, v17

    .line 802
    .line 803
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 804
    .line 805
    .line 806
    return-void

    .line 807
    :pswitch_e
    move-object/from16 v1, p0

    .line 808
    .line 809
    const/4 v12, 0x1

    .line 810
    iget-object v1, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 811
    .line 812
    invoke-static {v0}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 813
    .line 814
    .line 815
    move-result-object v2

    .line 816
    new-instance v3, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 817
    .line 818
    invoke-direct {v3, v0, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 819
    .line 820
    .line 821
    new-array v0, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 822
    .line 823
    aput-object v3, v0, v17

    .line 824
    .line 825
    invoke-virtual {v1, v0}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 826
    .line 827
    .line 828
    return-void

    .line 829
    :pswitch_f
    move-object/from16 v1, p0

    .line 830
    .line 831
    const/4 v12, 0x1

    .line 832
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 833
    .line 834
    invoke-static {v8}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    new-instance v2, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 839
    .line 840
    invoke-direct {v2, v8, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 841
    .line 842
    .line 843
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 844
    .line 845
    aput-object v2, v1, v17

    .line 846
    .line 847
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 848
    .line 849
    .line 850
    return-void

    .line 851
    :pswitch_10
    move-object/from16 v1, p0

    .line 852
    .line 853
    const/4 v12, 0x1

    .line 854
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 855
    .line 856
    invoke-static {v9}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    new-instance v2, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 861
    .line 862
    invoke-direct {v2, v9, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 863
    .line 864
    .line 865
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 866
    .line 867
    aput-object v2, v1, v17

    .line 868
    .line 869
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 870
    .line 871
    .line 872
    return-void

    .line 873
    :pswitch_11
    move-object/from16 v1, p0

    .line 874
    .line 875
    const/4 v12, 0x1

    .line 876
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 877
    .line 878
    invoke-static {v10}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    new-instance v2, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 883
    .line 884
    invoke-direct {v2, v10, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 885
    .line 886
    .line 887
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 888
    .line 889
    aput-object v2, v1, v17

    .line 890
    .line 891
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 892
    .line 893
    .line 894
    return-void

    .line 895
    :pswitch_12
    move-object/from16 v1, p0

    .line 896
    .line 897
    const/4 v12, 0x1

    .line 898
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 899
    .line 900
    invoke-static {v2}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    new-instance v3, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 905
    .line 906
    invoke-direct {v3, v2, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 907
    .line 908
    .line 909
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 910
    .line 911
    aput-object v3, v1, v17

    .line 912
    .line 913
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 914
    .line 915
    .line 916
    return-void

    .line 917
    :pswitch_13
    move-object/from16 v1, p0

    .line 918
    .line 919
    const/4 v12, 0x1

    .line 920
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 921
    .line 922
    invoke-static {v15}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 923
    .line 924
    .line 925
    move-result-object v1

    .line 926
    new-instance v2, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 927
    .line 928
    invoke-direct {v2, v15, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 929
    .line 930
    .line 931
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 932
    .line 933
    aput-object v2, v1, v17

    .line 934
    .line 935
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 936
    .line 937
    .line 938
    return-void

    .line 939
    :pswitch_14
    move-object/from16 v1, p0

    .line 940
    .line 941
    const/4 v12, 0x1

    .line 942
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 943
    .line 944
    invoke-static {v11}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 945
    .line 946
    .line 947
    move-result-object v1

    .line 948
    new-instance v2, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 949
    .line 950
    invoke-direct {v2, v11, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 951
    .line 952
    .line 953
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 954
    .line 955
    aput-object v2, v1, v17

    .line 956
    .line 957
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 958
    .line 959
    .line 960
    return-void

    .line 961
    :pswitch_15
    move-object/from16 v1, p0

    .line 962
    .line 963
    const/4 v12, 0x1

    .line 964
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 965
    .line 966
    invoke-static/range {v16 .. v16}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 967
    .line 968
    .line 969
    move-result-object v1

    .line 970
    new-instance v2, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 971
    .line 972
    move-object/from16 v3, v16

    .line 973
    .line 974
    invoke-direct {v2, v3, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 975
    .line 976
    .line 977
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 978
    .line 979
    aput-object v2, v1, v17

    .line 980
    .line 981
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 982
    .line 983
    .line 984
    return-void

    .line 985
    :pswitch_16
    move-object/from16 v1, p0

    .line 986
    .line 987
    const/4 v12, 0x1

    .line 988
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 989
    .line 990
    invoke-static/range {v22 .. v22}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 991
    .line 992
    .line 993
    move-result-object v1

    .line 994
    new-instance v2, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    .line 995
    .line 996
    move-object/from16 v3, v22

    .line 997
    .line 998
    invoke-direct {v2, v3, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 999
    .line 1000
    .line 1001
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 1002
    .line 1003
    aput-object v2, v1, v17

    .line 1004
    .line 1005
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 1006
    .line 1007
    .line 1008
    return-void

    .line 1009
    :pswitch_17
    move-object/from16 v1, p0

    .line 1010
    .line 1011
    const/4 v12, 0x1

    .line 1012
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 1013
    .line 1014
    invoke-static/range {v21 .. v21}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    new-instance v2, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 1019
    .line 1020
    move-object/from16 v3, v21

    .line 1021
    .line 1022
    invoke-direct {v2, v3, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1023
    .line 1024
    .line 1025
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 1026
    .line 1027
    aput-object v2, v1, v17

    .line 1028
    .line 1029
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 1030
    .line 1031
    .line 1032
    return-void

    .line 1033
    :pswitch_18
    move-object/from16 v1, p0

    .line 1034
    .line 1035
    const/4 v12, 0x1

    .line 1036
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 1037
    .line 1038
    invoke-static/range {v20 .. v20}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v1

    .line 1042
    new-instance v2, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 1043
    .line 1044
    move-object/from16 v3, v20

    .line 1045
    .line 1046
    invoke-direct {v2, v3, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1047
    .line 1048
    .line 1049
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 1050
    .line 1051
    aput-object v2, v1, v17

    .line 1052
    .line 1053
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 1054
    .line 1055
    .line 1056
    return-void

    .line 1057
    :pswitch_19
    move-object/from16 v1, p0

    .line 1058
    .line 1059
    const/4 v12, 0x1

    .line 1060
    iget-object v0, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 1061
    .line 1062
    invoke-static/range {v19 .. v19}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v1

    .line 1066
    new-instance v2, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 1067
    .line 1068
    move-object/from16 v3, v19

    .line 1069
    .line 1070
    invoke-direct {v2, v3, v1}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1071
    .line 1072
    .line 1073
    new-array v1, v12, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 1074
    .line 1075
    aput-object v2, v1, v17

    .line 1076
    .line 1077
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 1078
    .line 1079
    .line 1080
    return-void

    .line 1081
    :pswitch_1a
    move-object/from16 v1, p0

    .line 1082
    .line 1083
    const/4 v0, 0x1

    .line 1084
    iget-object v1, v1, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 1085
    .line 1086
    invoke-static {v12}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v2

    .line 1090
    new-instance v3, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    .line 1091
    .line 1092
    invoke-direct {v3, v12, v2}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1093
    .line 1094
    .line 1095
    new-array v0, v0, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 1096
    .line 1097
    aput-object v3, v0, v17

    .line 1098
    .line 1099
    invoke-virtual {v1, v0}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 1100
    .line 1101
    .line 1102
    :cond_1b
    :goto_7
    return-void

    .line 1103
    :sswitch_data_0
    .sparse-switch
        -0x7ff5ba05 -> :sswitch_1a
        -0x79aeb799 -> :sswitch_19
        -0x740b3ed1 -> :sswitch_18
        -0x665dc89f -> :sswitch_17
        -0x65dc3f9a -> :sswitch_16
        -0x64c54137 -> :sswitch_15
        -0x5f687ef1 -> :sswitch_14
        -0x5f1504f9 -> :sswitch_13
        -0x55a1572b -> :sswitch_12
        -0x4fa71dbb -> :sswitch_11
        -0x4b414134 -> :sswitch_10
        -0x409ee311 -> :sswitch_f
        -0x40990f5f -> :sswitch_e
        -0x34ee00ce -> :sswitch_d
        -0x34d60cfc -> :sswitch_c
        -0x33d7026b -> :sswitch_b
        -0x1cca5c95 -> :sswitch_a
        -0x1bbbea10 -> :sswitch_9
        0x12e99f7d -> :sswitch_8
        0x19882e3c -> :sswitch_7
        0x1f52aab8 -> :sswitch_6
        0x2c9832c3 -> :sswitch_5
        0x2cbfa45a -> :sswitch_4
        0x549a8eb7 -> :sswitch_3
        0x62f22b55 -> :sswitch_2
        0x6edca689 -> :sswitch_1
        0x7a66cd33 -> :sswitch_0
    .end sparse-switch

    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    :pswitch_data_0
    .packed-switch 0x0
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
.end method

.method public final initializeSourcesAndLayers(Lorg/maplibre/android/style/sources/GeoJsonOptions;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->coreElementProvider:Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/maplibre/android/style/sources/GeoJsonSource;

    .line 7
    .line 8
    iget-object v2, v0, Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;->sourceId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v1, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->geoJsonSource:Lorg/maplibre/android/style/sources/GeoJsonSource;

    .line 29
    .line 30
    new-instance p1, Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 31
    .line 32
    iget-object v0, v0, Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;->layerId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {p1, v0, v2}, Lorg/maplibre/android/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 38
    .line 39
    iget-object p1, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->style:Lorg/maplibre/android/maps/Style;

    .line 40
    .line 41
    iget-object v0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->geoJsonSource:Lorg/maplibre/android/style/sources/GeoJsonSource;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->style:Lorg/maplibre/android/maps/Style;

    .line 47
    .line 48
    iget-object v0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    .line 55
    iget-object v0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->dataDrivenPropertyUsageMap:Ljava/util/HashMap;

    .line 56
    .line 57
    const-string v1, "symbol-sort-key"

    .line 58
    .line 59
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    const-string v1, "icon-size"

    .line 63
    .line 64
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    const-string v1, "icon-image"

    .line 68
    .line 69
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    const-string v1, "icon-rotate"

    .line 73
    .line 74
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    const-string v1, "icon-offset"

    .line 78
    .line 79
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const-string v1, "icon-anchor"

    .line 83
    .line 84
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-string v1, "text-field"

    .line 88
    .line 89
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const-string v1, "text-font"

    .line 93
    .line 94
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const-string v1, "text-size"

    .line 98
    .line 99
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    const-string v1, "text-max-width"

    .line 103
    .line 104
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    const-string v1, "text-letter-spacing"

    .line 108
    .line 109
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    const-string v1, "text-justify"

    .line 113
    .line 114
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    const-string v1, "text-radial-offset"

    .line 118
    .line 119
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    const-string v1, "text-anchor"

    .line 123
    .line 124
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    const-string v1, "text-rotate"

    .line 128
    .line 129
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const-string v1, "text-transform"

    .line 133
    .line 134
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    const-string v1, "text-offset"

    .line 138
    .line 139
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    const-string v1, "icon-opacity"

    .line 143
    .line 144
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    const-string v1, "icon-color"

    .line 148
    .line 149
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    const-string v1, "icon-halo-color"

    .line 153
    .line 154
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    const-string v1, "icon-halo-width"

    .line 158
    .line 159
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    const-string v1, "icon-halo-blur"

    .line 163
    .line 164
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    const-string v1, "text-opacity"

    .line 168
    .line 169
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    const-string v1, "text-color"

    .line 173
    .line 174
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    const-string v1, "text-halo-color"

    .line 178
    .line 179
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    const-string v1, "text-halo-width"

    .line 183
    .line 184
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    const-string v1, "text-halo-blur"

    .line 188
    .line 189
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->layer:Lorg/maplibre/android/style/layers/SymbolLayer;

    .line 193
    .line 194
    iget-object v0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->constantPropertyUsageMap:Ljava/util/HashMap;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const/4 v1, 0x0

    .line 201
    new-array v1, v1, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 202
    .line 203
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, [Lorg/maplibre/android/style/layers/PropertyValue;

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->updateSource()V

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public final queryMapForFeatures(Landroid/graphics/PointF;)Lorg/maplibre/android/plugins/annotation/Symbol;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->coreElementProvider:Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;->layerId:Ljava/lang/String;

    .line 4
    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 10
    .line 11
    invoke-virtual {v1, p1, v0}, Lorg/maplibre/android/maps/MapLibreMap;->queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lorg/maplibre/geojson/Feature;

    .line 27
    .line 28
    const-string v0, "id"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lorg/maplibre/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    iget-object p0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->annotations:Landroidx/collection/LongSparseArray;

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public final update(Lorg/maplibre/android/plugins/annotation/Symbol;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->annotations:Landroidx/collection/LongSparseArray;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    iget v1, v0, Landroidx/collection/LongSparseArray;->size:I

    .line 9
    .line 10
    iget-object v3, v0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 11
    .line 12
    iget-object v4, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 13
    .line 14
    move v5, v2

    .line 15
    move v6, v5

    .line 16
    :goto_0
    if-ge v5, v1, :cond_2

    .line 17
    .line 18
    aget-object v7, v4, v5

    .line 19
    .line 20
    sget-object v8, Landroidx/collection/ArraySetKt;->DELETED:Ljava/lang/Object;

    .line 21
    .line 22
    if-eq v7, v8, :cond_1

    .line 23
    .line 24
    if-eq v5, v6, :cond_0

    .line 25
    .line 26
    aget-wide v8, v3, v5

    .line 27
    .line 28
    aput-wide v8, v3, v6

    .line 29
    .line 30
    aput-object v7, v4, v6

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    aput-object v7, v4, v5

    .line 34
    .line 35
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 36
    .line 37
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iput-boolean v2, v0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 41
    .line 42
    iput v6, v0, Landroidx/collection/LongSparseArray;->size:I

    .line 43
    .line 44
    :cond_3
    iget v1, v0, Landroidx/collection/LongSparseArray;->size:I

    .line 45
    .line 46
    :goto_1
    if-ge v2, v1, :cond_5

    .line 47
    .line 48
    iget-object v3, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 49
    .line 50
    aget-object v3, v3, v2

    .line 51
    .line 52
    if-ne v3, p1, :cond_4

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_5
    const/4 v2, -0x1

    .line 59
    :goto_2
    if-ltz v2, :cond_6

    .line 60
    .line 61
    iget-object v1, p1, Lorg/maplibre/android/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    .line 62
    .line 63
    const-string v2, "id"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    invoke-virtual {v0, v1, v2, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->updateSource()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v0, "Can\'t update annotation: "

    .line 83
    .line 84
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lorg/maplibre/android/plugins/annotation/Symbol;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, ", the annotation isn\'t active annotation."

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const-string p1, "AnnotationManager"

    .line 104
    .line 105
    invoke-static {p1, p0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final updateSource()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->isSourceUpToDate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/16 v1, 0x1c

    .line 14
    .line 15
    invoke-direct {v0, v1, p0}, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lorg/maplibre/android/plugins/annotation/SymbolManager;->mapView:Lorg/maplibre/android/maps/MapView;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

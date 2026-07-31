.class public final Lorg/maplibre/android/maps/Style;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final builder:Lorg/maplibre/android/maps/Style$Builder;

.field public fullyLoaded:Z

.field public final images:Ljava/util/HashMap;

.field public final layers:Ljava/util/HashMap;

.field public final nativeMap:Lorg/maplibre/android/maps/NativeMap;

.field public final sources:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/maps/NativeMap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/maplibre/android/maps/Style;->sources:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/maplibre/android/maps/Style;->images:Ljava/util/HashMap;

    .line 24
    .line 25
    iput-object p1, p0, Lorg/maplibre/android/maps/Style;->builder:Lorg/maplibre/android/maps/Style$Builder;

    .line 26
    .line 27
    iput-object p2, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 11

    .line 1
    const-string v0, "addImage"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getDensity()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    int-to-float v1, v1

    .line 35
    const/high16 v3, 0x43200000    # 160.0f

    .line 36
    .line 37
    div-float v6, v1, v3

    .line 38
    .line 39
    new-instance v4, Lorg/maplibre/android/maps/Image;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    const/4 v10, 0x0

    .line 54
    move-object v7, p1

    .line 55
    invoke-direct/range {v4 .. v10}, Lorg/maplibre/android/maps/Image;-><init>([BFLjava/lang/String;IIZ)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    new-array p1, p1, [Lorg/maplibre/android/maps/Image;

    .line 60
    .line 61
    aput-object v4, p1, v2

    .line 62
    .line 63
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 64
    .line 65
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/NativeMapView;->addImages([Lorg/maplibre/android/maps/Image;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final addLayer(Lorg/maplibre/android/style/layers/Layer;)V
    .locals 1

    .line 1
    const-string v0, "addLayer"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 7
    .line 8
    check-cast v0, Lorg/maplibre/android/maps/NativeMapView;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/NativeMapView;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final addLayerAbove(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "addLayerAbove"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 7
    .line 8
    check-cast v0, Lorg/maplibre/android/maps/NativeMapView;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lorg/maplibre/android/maps/NativeMapView;->addLayerAbove(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "addLayerBelow"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 7
    .line 8
    check-cast v0, Lorg/maplibre/android/maps/NativeMapView;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lorg/maplibre/android/maps/NativeMapView;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final addSource(Lorg/maplibre/android/style/sources/Source;)V
    .locals 1

    .line 1
    const-string v0, "addSource"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 7
    .line 8
    check-cast v0, Lorg/maplibre/android/maps/NativeMapView;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/NativeMapView;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->sources:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/maplibre/android/style/sources/Source;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final clear()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    .line 3
    .line 4
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/maplibre/android/style/layers/Layer;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    iput-boolean v3, v2, Lorg/maplibre/android/style/layers/Layer;->detached:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, p0, Lorg/maplibre/android/maps/Style;->sources:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lorg/maplibre/android/style/sources/Source;

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-virtual {v3}, Lorg/maplibre/android/style/sources/Source;->setDetached()V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget-object v2, p0, Lorg/maplibre/android/maps/Style;->images:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Ljava/util/Map$Entry;

    .line 81
    .line 82
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Ljava/lang/String;

    .line 87
    .line 88
    iget-object v6, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 89
    .line 90
    check-cast v6, Lorg/maplibre/android/maps/NativeMapView;

    .line 91
    .line 92
    invoke-virtual {v6, v5}, Lorg/maplibre/android/maps/NativeMapView;->removeImage(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Landroid/graphics/Bitmap;

    .line 100
    .line 101
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;
    .locals 1

    .line 1
    const-string v0, "getLayer"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lorg/maplibre/android/style/layers/Layer;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 17
    .line 18
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/NativeMapView;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    return-object v0
.end method

.method public final getSourceAs()Lorg/maplibre/android/style/sources/Source;
    .locals 3

    .line 1
    const-string v0, "getSourceAs"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/maplibre/android/maps/Style;->sources:Ljava/util/HashMap;

    .line 7
    .line 8
    const-string v1, "mapbox-location-source"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lorg/maplibre/android/style/sources/Source;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 24
    .line 25
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/maplibre/android/maps/NativeMapView;->getSource()Lorg/maplibre/android/style/sources/Source;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final removeImage(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "removeImage"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 7
    .line 8
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/NativeMapView;->removeImage(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final removeLayer(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "removeLayer"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/maplibre/android/maps/Style;->layers:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 12
    .line 13
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/NativeMapView;->checkState(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/NativeMapView;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/NativeMapView;->removeLayer(Lorg/maplibre/android/style/layers/Layer;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final validateState(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "Calling "

    .line 7
    .line 8
    const-string v0, " when a newer style is loading/has loaded."

    .line 9
    .line 10
    invoke-static {p0, p1, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

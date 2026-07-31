.class public final Lorg/maplibre/android/maps/MapView$MapCallback;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingStyleListener;
.implements Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameWithStatsListener;
.implements Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;


# instance fields
.field public final onMapReadyCallbackList:Ljava/util/ArrayList;

.field public final synthetic this$0:Lorg/maplibre/android/maps/MapView;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->onMapReadyCallbackList:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object p1, p1, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 14
    .line 15
    iget-object v0, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishRenderingFrameWithStatsList:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingMapListenerList:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraIsChangingListenerList:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v0, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraDidChangeListenerList:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget-object p1, p1, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFailLoadingMapListenerList:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final onCameraDidChange(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->onUpdateRegionChange()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onDidFinishLoadingStyle()V
    .locals 8

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 4
    .line 5
    if-eqz p0, :cond_9

    .line 6
    .line 7
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->awaitingStyleGetters:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    .line 10
    .line 11
    check-cast v1, Lorg/maplibre/android/maps/NativeMapView;

    .line 12
    .line 13
    iget-boolean v1, v1, Lorg/maplibre/android/maps/NativeMapView;->destroyed:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_6

    .line 23
    .line 24
    iget-object v3, v1, Lorg/maplibre/android/maps/Style;->builder:Lorg/maplibre/android/maps/Style$Builder;

    .line 25
    .line 26
    iget-boolean v4, v1, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    .line 27
    .line 28
    if-nez v4, :cond_3

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    iput-boolean v4, v1, Lorg/maplibre/android/maps/Style;->fullyLoaded:Z

    .line 32
    .line 33
    iget-object v4, v3, Lorg/maplibre/android/maps/Style$Builder;->sources:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v4, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const-string v6, "Style"

    .line 46
    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lorg/maplibre/android/style/sources/Source;

    .line 54
    .line 55
    :try_start_0
    invoke-virtual {v1, v5}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V
    :try_end_0
    .catch Lorg/maplibre/android/style/sources/CannotAddSourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v5

    .line 60
    const-string v7, "Failed to add source"

    .line 61
    .line 62
    invoke-static {v6, v7, v5}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    :try_start_1
    iget-object v4, v3, Lorg/maplibre/android/maps/Style$Builder;->layers:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v4, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4
    :try_end_1
    .catch Lorg/maplibre/android/style/layers/CannotAddLayerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    :try_start_2
    new-instance v4, Ljava/lang/ClassCastException;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/lang/ClassCastException;-><init>()V

    .line 91
    .line 92
    .line 93
    throw v4
    :try_end_2
    .catch Lorg/maplibre/android/style/layers/CannotAddLayerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 94
    :catch_1
    move-exception v4

    .line 95
    const-string v5, "Failed to add layer"

    .line 96
    .line 97
    invoke-static {v6, v5, v4}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    iget-object v3, v3, Lorg/maplibre/android/maps/Style$Builder;->images:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v3, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;

    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v2, v2}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    .line 128
    .line 129
    iget-boolean v3, v1, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    .line 130
    .line 131
    if-eqz v3, :cond_4

    .line 132
    .line 133
    iget-object v3, v1, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 134
    .line 135
    invoke-virtual {v3}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-object v4, v1, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 140
    .line 141
    iget-object v5, v1, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 142
    .line 143
    invoke-virtual {v4, v3, v5}, Lorg/maplibre/android/location/LocationLayerController;->initializeComponents(Lorg/maplibre/android/maps/Style;Lorg/maplibre/android/location/LocationComponentOptions;)V

    .line 144
    .line 145
    .line 146
    iget-object v3, v1, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    .line 147
    .line 148
    iget-object v4, v1, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 149
    .line 150
    invoke-virtual {v3, v4}, Lorg/maplibre/android/location/LocationCameraController;->initializeOptions(Lorg/maplibre/android/location/LocationComponentOptions;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Lorg/maplibre/android/location/LocationComponent;->onLocationLayerStart()V

    .line 154
    .line 155
    .line 156
    :cond_4
    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMap;->styleLoadedCallback:Lorg/maplibre/android/maps/Style$OnStyleLoaded;

    .line 157
    .line 158
    if-eqz v1, :cond_5

    .line 159
    .line 160
    iget-object v3, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    .line 161
    .line 162
    invoke-interface {v1, v3}, Lorg/maplibre/android/maps/Style$OnStyleLoaded;->onStyleLoaded(Lorg/maplibre/android/maps/Style;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-eqz v3, :cond_7

    .line 174
    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    check-cast v3, Lorg/maplibre/android/maps/Style$OnStyleLoaded;

    .line 180
    .line 181
    iget-object v4, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    .line 182
    .line 183
    invoke-interface {v3, v4}, Lorg/maplibre/android/maps/Style$OnStyleLoaded;->onStyleLoaded(Lorg/maplibre/android/maps/Style;)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_6
    sget-boolean v1, Lkotlin/text/UStringsKt;->strictModeEnabled:Z

    .line 188
    .line 189
    if-nez v1, :cond_8

    .line 190
    .line 191
    :cond_7
    iput-object v2, p0, Lorg/maplibre/android/maps/MapLibreMap;->styleLoadedCallback:Lorg/maplibre/android/maps/Style$OnStyleLoaded;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_8
    new-instance p0, Lcoil3/network/HttpException;

    .line 198
    .line 199
    const-string v0, "No style to provide."

    .line 200
    .line 201
    invoke-direct {p0, v0}, Lcoil3/network/HttpException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p0

    .line 205
    :cond_9
    :goto_4
    return-void
.end method

.method public final onDidFinishRenderingFrame()V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    .line 16
    .line 17
    iget-wide v0, v0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 18
    .line 19
    neg-double v0, v0

    .line 20
    iput-wide v0, p0, Lorg/maplibre/android/maps/UiSettings;->clockwiseBearing:D

    .line 21
    .line 22
    iget-object p0, p0, Lorg/maplibre/android/maps/UiSettings;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lorg/maplibre/android/maps/widgets/CompassView;->update(D)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

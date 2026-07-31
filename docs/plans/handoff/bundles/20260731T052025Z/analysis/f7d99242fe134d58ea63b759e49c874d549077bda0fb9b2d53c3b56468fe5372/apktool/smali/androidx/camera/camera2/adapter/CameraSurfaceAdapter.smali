.class public final Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/impl/InternalCameraPresenceListener;


# instance fields
.field public final component:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

.field public final context:Landroid/content/Context;

.field public final lock:Ljava/lang/Object;

.field public supportedSurfaceCombinationMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;->component:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 13
    .line 14
    new-instance p1, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;->lock:Ljava/lang/Object;

    .line 20
    .line 21
    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;->supportedSurfaceCombinationMap:Ljava/util/Map;

    .line 24
    .line 25
    :try_start_0
    check-cast p3, Ljava/lang/Iterable;

    .line 26
    .line 27
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;->onCamerasUpdated(Ljava/util/List;)V
    :try_end_0
    .catch Landroidx/camera/core/impl/CameraUpdateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance p1, Landroidx/camera/core/InitializationException;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method


# virtual methods
.method public final onCamerasUpdated(Ljava/util/List;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;->supportedSurfaceCombinationMap:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    monitor-exit v0

    .line 17
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-string v0, "CXCP"

    .line 24
    .line 25
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v0, "CXCP"

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "Creating new surface combinations for: "

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;->component:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 51
    .line 52
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->getCameraDevices()Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v3}, Landroidx/camera/camera2/pipe/CameraId;->constructor-impl(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v4, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->awaitCameraMetadata-FpsL5FU$default(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-object v6, v4

    .line 97
    check-cast v6, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 98
    .line 99
    invoke-virtual {v6, v5}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    check-cast v5, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 104
    .line 105
    new-instance v6, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 106
    .line 107
    new-instance v7, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 108
    .line 109
    new-instance v8, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;

    .line 110
    .line 111
    invoke-direct {v8, v4}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v7, v5, v8}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v6, v4, v7}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;)V

    .line 118
    .line 119
    .line 120
    new-instance v5, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;

    .line 121
    .line 122
    iget-object v7, p0, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;->context:Landroid/content/Context;

    .line 123
    .line 124
    new-instance v8, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;

    .line 125
    .line 126
    invoke-virtual {v6}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    invoke-direct {v8, v3, v9}, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;-><init>(Ljava/lang/String;Landroidx/camera/core/impl/Quirks;)V

    .line 131
    .line 132
    .line 133
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 134
    .line 135
    const/16 v10, 0x23

    .line 136
    .line 137
    if-lt v9, v10, :cond_2

    .line 138
    .line 139
    new-instance v9, Landroidx/core/view/MenuHostHelper;

    .line 140
    .line 141
    iget-object v10, v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->cameraAppConfig:Lcom/eygraber/uri/Uri$Builder;

    .line 142
    .line 143
    iget-object v10, v10, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v10, Landroidx/camera/camera2/pipe/CameraPipeImpl;

    .line 146
    .line 147
    invoke-static {v10}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    const/4 v11, 0x3

    .line 151
    invoke-direct {v9, v4, v10, v6, v11}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    sget-object v9, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;->NO_OP_FEATURE_COMBINATION_QUERY:Landroidx/collection/internal/Lock;

    .line 156
    .line 157
    :goto_1
    invoke-direct {v5, v7, v4, v8, v9}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;-><init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;)V

    .line 158
    .line 159
    .line 160
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroidx/camera/camera2/pipe/DoNotDisturbException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;->lock:Ljava/lang/Object;

    .line 165
    .line 166
    monitor-enter v0

    .line 167
    :try_start_2
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 168
    .line 169
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_5

    .line 181
    .line 182
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    check-cast v3, Ljava/lang/String;

    .line 187
    .line 188
    iget-object v4, p0, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;->supportedSurfaceCombinationMap:Ljava/util/Map;

    .line 189
    .line 190
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_4

    .line 195
    .line 196
    iget-object v4, p0, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;->supportedSurfaceCombinationMap:Ljava/util/Map;

    .line 197
    .line 198
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :catchall_0
    move-exception p0

    .line 210
    goto :goto_4

    .line 211
    :cond_5
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 212
    .line 213
    .line 214
    iput-object v1, p0, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;->supportedSurfaceCombinationMap:Ljava/util/Map;

    .line 215
    .line 216
    const-string p0, "CXCP"

    .line 217
    .line 218
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result p0

    .line 222
    if-eqz p0, :cond_6

    .line 223
    .line 224
    const-string p0, "CXCP"

    .line 225
    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string v2, "Committed new surface combination map. Total cameras: "

    .line 232
    .line 233
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    .line 249
    .line 250
    :cond_6
    monitor-exit v0

    .line 251
    return-void

    .line 252
    :goto_4
    monitor-exit v0

    .line 253
    throw p0

    .line 254
    :catch_0
    move-exception p0

    .line 255
    new-instance p1, Landroidx/camera/core/impl/CameraUpdateException;

    .line 256
    .line 257
    const-string v0, "Failed to build surface combinations"

    .line 258
    .line 259
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    .line 261
    .line 262
    throw p1

    .line 263
    :catch_1
    move-exception p0

    .line 264
    new-instance p1, Landroidx/camera/core/impl/CameraUpdateException;

    .line 265
    .line 266
    const-string v0, "Failed to query camera metadata"

    .line 267
    .line 268
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    .line 270
    .line 271
    throw p1

    .line 272
    :catchall_1
    move-exception p0

    .line 273
    monitor-exit v0

    .line 274
    throw p0
.end method

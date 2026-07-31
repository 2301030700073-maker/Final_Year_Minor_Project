.class public final Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;


# instance fields
.field public final camera2MetadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

.field public final graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

.field public final streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

.field public final strictMode:Landroidx/camera/camera2/pipe/StrictMode;

.field public final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/StrictMode;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 17
    .line 18
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 19
    .line 20
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 21
    .line 22
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->camera2MetadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    .line 23
    .line 24
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final create(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Ljava/util/Map;Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result;
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 11
    .line 12
    iget v3, v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v6, 0x0

    .line 16
    if-ne v3, v4, :cond_b

    .line 17
    .line 18
    iget-object v2, v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    .line 19
    .line 20
    sget-object v3, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->camera2ExtensionMode:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 21
    .line 22
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    instance-of v3, v2, Ljava/lang/Integer;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    check-cast v2, Ljava/lang/Integer;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v2, v6

    .line 34
    :goto_0
    if-eqz v2, :cond_a

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 41
    .line 42
    iget-object v3, v3, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/ArrayList;

    .line 43
    .line 44
    if-nez v3, :cond_9

    .line 45
    .line 46
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->camera2MetadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    .line 47
    .line 48
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v3, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 59
    .line 60
    iget-object v4, v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->_supportedExtensions:Lkotlin/Lazy;

    .line 61
    .line 62
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/util/Set;

    .line 67
    .line 68
    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    .line 69
    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-nez v8, :cond_1

    .line 79
    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v9, " does not support extension mode "

    .line 89
    .line 90
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v9, ". Supported extensions are "

    .line 97
    .line 98
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    const-string v7, "CXCP"

    .line 112
    .line 113
    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_1
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 117
    .line 118
    iget-object v4, v4, Landroidx/camera/camera2/pipe/CameraGraph$Config;->postviewStream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 119
    .line 120
    if-eqz v4, :cond_5

    .line 121
    .line 122
    iget-object v4, v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->extensionCache:Landroid/util/ArrayMap;

    .line 123
    .line 124
    monitor-enter v4

    .line 125
    :try_start_0
    iget-object v7, v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->extensionCache:Landroid/util/ArrayMap;

    .line 126
    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Landroidx/camera/camera2/pipe/CameraExtensionMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    .line 137
    monitor-exit v4

    .line 138
    if-eqz v7, :cond_2

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    iget-object v4, v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->metadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    .line 142
    .line 143
    iget-object v7, v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->camera:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v4, v7, v2}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->awaitCameraExtensionMetadata-0r8Bogc(Ljava/lang/String;I)Landroidx/camera/camera2/pipe/CameraExtensionMetadata;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    iget-object v4, v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->extensionCache:Landroid/util/ArrayMap;

    .line 150
    .line 151
    monitor-enter v4

    .line 152
    :try_start_1
    iget-object v3, v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->extensionCache:Landroid/util/ArrayMap;

    .line 153
    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-virtual {v3, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .line 160
    .line 161
    monitor-exit v4

    .line 162
    :goto_1
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    .line 163
    .line 164
    check-cast v7, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;

    .line 165
    .line 166
    iget-object v4, v7, Landroidx/camera/camera2/pipe/compat/Camera2CameraExtensionMetadata;->_isPostviewSupported:Lkotlin/Lazy;

    .line 167
    .line 168
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-nez v4, :cond_3

    .line 179
    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v7, " does not support Postview streams"

    .line 189
    .line 190
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    const-string v3, "CXCP"

    .line 201
    .line 202
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    :cond_3
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 206
    .line 207
    iget-object v3, v3, Landroidx/camera/camera2/pipe/CameraGraph$Config;->postviewStream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 208
    .line 209
    iget-object v3, v3, Landroidx/camera/camera2/pipe/CameraStream$Config;->outputs:Ljava/util/List;

    .line 210
    .line 211
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    const/4 v4, 0x1

    .line 216
    if-ne v3, v4, :cond_4

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_4
    const-string v0, "Postview streams can only have one OutputStream.config object"

    .line 220
    .line 221
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    return-object v6

    .line 225
    :catchall_0
    move-exception v0

    .line 226
    monitor-exit v4

    .line 227
    throw v0

    .line 228
    :catchall_1
    move-exception v0

    .line 229
    monitor-exit v4

    .line 230
    throw v0

    .line 231
    :cond_5
    :goto_2
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 232
    .line 233
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 234
    .line 235
    invoke-static {v3, v4, p2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactoryKt;->buildOutputConfigurations(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Ljava/util/Map;)Landroidx/camera/camera2/pipe/compat/OutputConfigurations;

    .line 236
    .line 237
    .line 238
    move-result-object v11

    .line 239
    iget-object v3, v11, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-eqz v3, :cond_6

    .line 246
    .line 247
    const-string v1, "CXCP"

    .line 248
    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v3, "Failed to create OutputConfigurations for "

    .line 252
    .line 253
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 257
    .line 258
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 269
    .line 270
    .line 271
    sget-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;

    .line 272
    .line 273
    return-object v0

    .line 274
    :cond_6
    iget-object v3, v11, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/LinkedHashMap;

    .line 275
    .line 276
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    if-eqz v3, :cond_8

    .line 281
    .line 282
    new-instance v9, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;

    .line 283
    .line 284
    invoke-direct {v9, p3}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)V

    .line 285
    .line 286
    .line 287
    move v3, v2

    .line 288
    new-instance v2, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;

    .line 289
    .line 290
    move v4, v3

    .line 291
    iget-object v3, v11, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/ArrayList;

    .line 292
    .line 293
    move v6, v4

    .line 294
    new-instance v4, Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 295
    .line 296
    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 297
    .line 298
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    const/4 v8, 0x0

    .line 303
    invoke-direct {v4, v7, v8}, Landroidx/camera/camera2/pipe/core/HandlerExecutor;-><init>(Landroid/os/Handler;I)V

    .line 304
    .line 305
    .line 306
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 307
    .line 308
    move v7, v6

    .line 309
    iget v6, v0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionTemplate:I

    .line 310
    .line 311
    iget-object v0, v0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    .line 312
    .line 313
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v8

    .line 317
    iget-object v10, v11, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 318
    .line 319
    move-object v5, p3

    .line 320
    move-object v7, v0

    .line 321
    invoke-direct/range {v2 .. v10}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;-><init>(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/core/HandlerExecutor;Landroidx/camera/camera2/pipe/compat/CaptureSessionState;ILjava/util/Map;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;)V

    .line 322
    .line 323
    .line 324
    invoke-interface {p1, v2}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createExtensionSession(Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-nez v0, :cond_7

    .line 329
    .line 330
    const-string v0, "CXCP"

    .line 331
    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v3, "Failed to create ExtensionCaptureSession from "

    .line 335
    .line 336
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v1, " for "

    .line 343
    .line 344
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const/16 v1, 0x21

    .line 351
    .line 352
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 363
    .line 364
    .line 365
    sget-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;

    .line 366
    .line 367
    return-object v0

    .line 368
    :cond_7
    new-instance v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;

    .line 369
    .line 370
    iget-object v1, v11, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/LinkedHashMap;

    .line 371
    .line 372
    iget-object v2, v11, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/LinkedHashMap;

    .line 373
    .line 374
    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 375
    .line 376
    .line 377
    return-object v0

    .line 378
    :cond_8
    const-string v0, "Deferred output is not supported for Extensions"

    .line 379
    .line 380
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    return-object v6

    .line 384
    :cond_9
    const-string v0, "Reprocessing is not supported for Extensions"

    .line 385
    .line 386
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    return-object v6

    .line 390
    :cond_a
    const-string v0, "The CameraPipeKeys.camera2ExtensionMode must be set in the sessionParameters of the CameraGraph.Config when creating an Extension CameraGraph."

    .line 391
    .line 392
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    return-object v6

    .line 396
    :cond_b
    const-string v1, "Unsupported session mode: "

    .line 397
    .line 398
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 399
    .line 400
    iget v0, v0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    .line 401
    .line 402
    invoke-static {v0}, Landroidx/sqlite/SQLite;->toString-impl(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    const-string v2, " for Extension CameraGraph"

    .line 407
    .line 408
    invoke-static {v0, v2, v1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    return-object v6
.end method

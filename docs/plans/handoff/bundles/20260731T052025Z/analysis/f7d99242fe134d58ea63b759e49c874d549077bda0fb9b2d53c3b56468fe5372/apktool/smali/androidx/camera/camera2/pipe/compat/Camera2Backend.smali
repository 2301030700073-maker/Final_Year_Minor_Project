.class public final Landroidx/camera/camera2/pipe/compat/Camera2Backend;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraBackend;


# instance fields
.field public final activeCameraControllers:Ljava/util/LinkedHashSet;

.field public final camera2CameraControllerComponent:Landroidx/biometric/BiometricPrompt;

.field public final camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

.field public final camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;

.field public final camera2MetadataCache:Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

.field public final lock:Ljava/lang/Object;

.field public final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/biometric/BiometricPrompt;Landroid/content/Context;)V
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
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 17
    .line 18
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 19
    .line 20
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2MetadataCache:Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    .line 21
    .line 22
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;

    .line 23
    .line 24
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2CameraControllerComponent:Landroidx/biometric/BiometricPrompt;

    .line 25
    .line 26
    new-instance p1, Ljava/lang/Object;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->lock:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->activeCameraControllers:Ljava/util/LinkedHashSet;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final isConfigSupported-NpXggIU(Landroidx/camera/camera2/pipe/CameraGraph$Config;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;

    .line 13
    .line 14
    iget v4, v3, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2Backend;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->label:I

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x1

    .line 40
    const/4 v8, 0x0

    .line 41
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 42
    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    if-eq v4, v7, :cond_2

    .line 46
    .line 47
    if-ne v4, v5, :cond_1

    .line 48
    .line 49
    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$2:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 52
    .line 53
    iget-object v1, v3, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$1:Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;

    .line 54
    .line 55
    iget-object v3, v3, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$0:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 56
    .line 57
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_7

    .line 61
    .line 62
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v6

    .line 68
    :cond_2
    iget-object v1, v3, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$0:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 69
    .line 70
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    .line 79
    const/16 v4, 0x23

    .line 80
    .line 81
    if-ge v2, v4, :cond_4

    .line 82
    .line 83
    new-instance v0, Landroidx/camera/camera2/pipe/ConfigQueryResult;

    .line 84
    .line 85
    invoke-direct {v0, v8}, Landroidx/camera/camera2/pipe/ConfigQueryResult;-><init>(I)V

    .line 86
    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_4
    iget-object v2, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 90
    .line 91
    iput-object v1, v3, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$0:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 92
    .line 93
    iput v7, v3, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->label:I

    .line 94
    .line 95
    invoke-virtual {v0, v2, v3}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->getOrInitializeDeviceSetupCompat-0r8Bogc(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-ne v2, v9, :cond_5

    .line 100
    .line 101
    goto/16 :goto_6

    .line 102
    .line 103
    :cond_5
    :goto_1
    check-cast v2, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;

    .line 104
    .line 105
    iget v4, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    .line 106
    .line 107
    iget-object v10, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 108
    .line 109
    if-nez v4, :cond_6

    .line 110
    .line 111
    move v7, v8

    .line 112
    goto :goto_2

    .line 113
    :cond_6
    if-ne v4, v7, :cond_7

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_7
    if-ne v4, v5, :cond_8

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v2, "Unsupported session mode: "

    .line 121
    .line 122
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget v1, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    .line 126
    .line 127
    invoke-static {v1}, Landroidx/sqlite/SQLite;->toString-impl(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v1, "CXCP"

    .line 139
    .line 140
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    new-instance v0, Landroidx/camera/camera2/pipe/ConfigQueryResult;

    .line 144
    .line 145
    invoke-direct {v0, v8}, Landroidx/camera/camera2/pipe/ConfigQueryResult;-><init>(I)V

    .line 146
    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_8
    move v7, v4

    .line 150
    :goto_2
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 151
    .line 152
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object v11, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    if-eqz v12, :cond_d

    .line 166
    .line 167
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    check-cast v12, Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 172
    .line 173
    iget-object v12, v12, Landroidx/camera/camera2/pipe/CameraStream$Config;->outputs:Ljava/util/List;

    .line 174
    .line 175
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v13

    .line 183
    if-eqz v13, :cond_9

    .line 184
    .line 185
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    check-cast v13, Landroidx/camera/camera2/pipe/OutputStream$Config;

    .line 190
    .line 191
    iget v14, v13, Landroidx/camera/camera2/pipe/OutputStream$Config;->format:I

    .line 192
    .line 193
    iget-object v15, v13, Landroidx/camera/camera2/pipe/OutputStream$Config;->camera:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v17

    .line 199
    iget-object v14, v13, Landroidx/camera/camera2/pipe/OutputStream$Config;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    .line 200
    .line 201
    iget-object v6, v13, Landroidx/camera/camera2/pipe/OutputStream$Config;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    .line 202
    .line 203
    iget-object v8, v13, Landroidx/camera/camera2/pipe/OutputStream$Config;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    .line 204
    .line 205
    iget-object v5, v13, Landroidx/camera/camera2/pipe/OutputStream$Config;->sensorPixelModes:Ljava/util/List;

    .line 206
    .line 207
    iget-object v13, v13, Landroidx/camera/camera2/pipe/OutputStream$Config;->size:Landroid/util/Size;

    .line 208
    .line 209
    if-nez v15, :cond_a

    .line 210
    .line 211
    const/16 v16, 0x0

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_a
    invoke-virtual {v15, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v16

    .line 218
    :goto_4
    if-nez v16, :cond_b

    .line 219
    .line 220
    move-object/from16 v26, v15

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_b
    const/16 v26, 0x0

    .line 224
    .line 225
    :goto_5
    const/16 v27, 0x600

    .line 226
    .line 227
    const/16 v16, 0x0

    .line 228
    .line 229
    sget-object v18, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE_DEFERRED_FOR_QUERY_ONLY:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 230
    .line 231
    const/16 v24, 0x0

    .line 232
    .line 233
    const/16 v25, 0x0

    .line 234
    .line 235
    move-object/from16 v22, v5

    .line 236
    .line 237
    move-object/from16 v20, v6

    .line 238
    .line 239
    move-object/from16 v21, v8

    .line 240
    .line 241
    move-object/from16 v23, v13

    .line 242
    .line 243
    move-object/from16 v19, v14

    .line 244
    .line 245
    invoke-static/range {v16 .. v27}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->create-gWWoySg$default(Landroid/view/Surface;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/MetadataTransform$1;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Ljava/util/List;Landroid/util/Size;ZILjava/lang/String;I)Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    if-eqz v5, :cond_c

    .line 250
    .line 251
    const-class v6, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 252
    .line 253
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-virtual {v5, v6}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    check-cast v5, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 262
    .line 263
    if-eqz v5, :cond_c

    .line 264
    .line 265
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    :cond_c
    const/4 v5, 0x2

    .line 269
    const/4 v6, 0x0

    .line 270
    const/4 v8, 0x0

    .line 271
    goto :goto_3

    .line 272
    :cond_d
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-static {v7, v4}, Landroidx/camera/camera2/pipe/compat/Api35Compat$$ExternalSyntheticApiModelOutline0;->m(ILjava/util/List;)Landroid/hardware/camera2/params/SessionConfiguration;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    iput-object v1, v3, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$0:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 281
    .line 282
    iput-object v2, v3, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$1:Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;

    .line 283
    .line 284
    iput-object v4, v3, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->L$2:Ljava/lang/Object;

    .line 285
    .line 286
    const/4 v5, 0x2

    .line 287
    iput v5, v3, Landroidx/camera/camera2/pipe/compat/Camera2Backend$isConfigSupported$1;->label:I

    .line 288
    .line 289
    invoke-virtual {v0, v10, v3}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->getOrInitializeDeviceSetupWrapper-0r8Bogc(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    if-ne v0, v9, :cond_e

    .line 294
    .line 295
    :goto_6
    return-object v9

    .line 296
    :cond_e
    move-object v3, v1

    .line 297
    move-object v1, v2

    .line 298
    move-object v2, v0

    .line 299
    move-object v0, v4

    .line 300
    :goto_7
    check-cast v2, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetupWrapper;

    .line 301
    .line 302
    if-eqz v2, :cond_f

    .line 303
    .line 304
    iget v4, v3, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionTemplate:I

    .line 305
    .line 306
    check-cast v2, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;

    .line 307
    .line 308
    invoke-virtual {v2, v4}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    goto :goto_8

    .line 313
    :cond_f
    const/4 v2, 0x0

    .line 314
    :goto_8
    if-eqz v2, :cond_13

    .line 315
    .line 316
    iget-object v3, v3, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    .line 317
    .line 318
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    :cond_10
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    if-eqz v4, :cond_12

    .line 331
    .line 332
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    check-cast v4, Ljava/util/Map$Entry;

    .line 337
    .line 338
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    instance-of v6, v5, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 347
    .line 348
    if-eqz v6, :cond_11

    .line 349
    .line 350
    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 351
    .line 352
    goto :goto_a

    .line 353
    :cond_11
    const/4 v5, 0x0

    .line 354
    :goto_a
    if-eqz v5, :cond_10

    .line 355
    .line 356
    invoke-virtual {v2, v5, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    goto :goto_9

    .line 360
    :cond_12
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->setSessionParameters(Landroid/hardware/camera2/params/SessionConfiguration;Landroid/hardware/camera2/CaptureRequest;)V

    .line 368
    .line 369
    .line 370
    :cond_13
    if-eqz v1, :cond_14

    .line 371
    .line 372
    invoke-interface {v1, v0}, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;->isSessionConfigurationSupported(Landroid/hardware/camera2/params/SessionConfiguration;)Lnet/openid/appauth/internal/Logger;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    iget v0, v0, Lnet/openid/appauth/internal/Logger;->mLogLevel:I

    .line 377
    .line 378
    new-instance v6, Ljava/lang/Integer;

    .line 379
    .line 380
    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 381
    .line 382
    .line 383
    goto :goto_b

    .line 384
    :cond_14
    const/4 v6, 0x0

    .line 385
    :goto_b
    if-eqz v6, :cond_15

    .line 386
    .line 387
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    new-instance v1, Landroidx/camera/camera2/pipe/ConfigQueryResult;

    .line 392
    .line 393
    invoke-direct {v1, v0}, Landroidx/camera/camera2/pipe/ConfigQueryResult;-><init>(I)V

    .line 394
    .line 395
    .line 396
    return-object v1

    .line 397
    :cond_15
    new-instance v0, Landroidx/camera/camera2/pipe/ConfigQueryResult;

    .line 398
    .line 399
    const/4 v1, 0x0

    .line 400
    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/ConfigQueryResult;-><init>(I)V

    .line 401
    .line 402
    .line 403
    return-object v0
.end method

.method public final onControllerClosed(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V
    .locals 3

    .line 1
    const-string v0, "CXCP"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, " finalized"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->lock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->activeCameraControllers:Ljava/util/LinkedHashSet;

    .line 27
    .line 28
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0

    .line 35
    throw p0
.end method

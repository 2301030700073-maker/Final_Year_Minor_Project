.class public final Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final cameraId:Ljava/lang/String;

.field public final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field public final concurrentSurfaceCombinations:Ljava/util/ArrayList;

.field public final displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

.field public final dynamicRangeResolver:Lcom/fsck/k9/mailstore/LocalFolder$12;

.field public final encoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

.field public final featureCombinationQuery:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;

.field public final featureSettingsToSupportedCombinationsMap:Ljava/util/LinkedHashMap;

.field public final hardwareLevel:I

.field public final highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

.field public final highSpeedSurfaceCombinations:Ljava/util/ArrayList;

.field public final isBurstCaptureSupported:Z

.field public final isConcurrentCameraModeSupported:Z

.field public final isManualSensorSupported:Z

.field public final isPreviewStabilizationSupported:Z

.field public final isRawSupported:Z

.field public final isStreamUseCaseSupported:Z

.field public final isUltraHighResolutionSensorSupported:Z

.field public final previewStabilizationSurfaceCombinations:Ljava/util/ArrayList;

.field public final resolutionCorrector:Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;

.field public final streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

.field public final surfaceCombinations:Ljava/util/ArrayList;

.field public final surfaceCombinations10Bit:Ljava/util/ArrayList;

.field public final surfaceCombinationsStreamUseCase:Ljava/util/ArrayList;

.field public final surfaceCombinationsUltraHdr:Ljava/util/ArrayList;

.field public surfaceSizeDefinition:Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

.field public final surfaceSizeDefinitionFormats:Ljava/util/ArrayList;

.field public final targetAspectRatio:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

.field public final ultraHighSurfaceCombinations:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 20
    .line 21
    move-object/from16 v3, p3

    .line 22
    .line 23
    iput-object v3, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->encoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 24
    .line 25
    move-object/from16 v3, p4

    .line 26
    .line 27
    iput-object v3, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->featureCombinationQuery:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;

    .line 28
    .line 29
    move-object v3, v1

    .line 30
    check-cast v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 31
    .line 32
    iget-object v4, v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->camera:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v4, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    .line 35
    .line 36
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v5}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Ljava/lang/Integer;

    .line 46
    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v5, 0x2

    .line 55
    :goto_0
    iput v5, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->hardwareLevel:I

    .line 56
    .line 57
    new-instance v7, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v7, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->concurrentSurfaceCombinations:Ljava/util/ArrayList;

    .line 63
    .line 64
    new-instance v8, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v8, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations:Ljava/util/ArrayList;

    .line 70
    .line 71
    new-instance v9, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v9, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsStreamUseCase:Ljava/util/ArrayList;

    .line 77
    .line 78
    new-instance v10, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v10, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->ultraHighSurfaceCombinations:Ljava/util/ArrayList;

    .line 84
    .line 85
    new-instance v11, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v11, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->previewStabilizationSurfaceCombinations:Ljava/util/ArrayList;

    .line 91
    .line 92
    new-instance v12, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v12, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedSurfaceCombinations:Ljava/util/ArrayList;

    .line 98
    .line 99
    new-instance v12, Ljava/util/LinkedHashMap;

    .line 100
    .line 101
    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v12, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->featureSettingsToSupportedCombinationsMap:Ljava/util/LinkedHashMap;

    .line 105
    .line 106
    new-instance v12, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v12, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations10Bit:Ljava/util/ArrayList;

    .line 112
    .line 113
    new-instance v13, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v13, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsUltraHdr:Ljava/util/ArrayList;

    .line 119
    .line 120
    sget-object v13, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    .line 121
    .line 122
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsPreviewStabilization(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    iput-boolean v13, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isPreviewStabilizationSupported:Z

    .line 130
    .line 131
    new-instance v14, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object v14, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinitionFormats:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getStreamConfigurationMapCompat()Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 139
    .line 140
    .line 141
    move-result-object v14

    .line 142
    iput-object v14, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 143
    .line 144
    sget-object v14, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->all:Landroidx/camera/core/impl/Quirks;

    .line 145
    .line 146
    const-class v14, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

    .line 147
    .line 148
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    .line 149
    .line 150
    .line 151
    move-result-object v15

    .line 152
    invoke-virtual {v15, v14}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 153
    .line 154
    .line 155
    move-result-object v14

    .line 156
    check-cast v14, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

    .line 157
    .line 158
    sget-object v15, Landroidx/camera/camera2/impl/DisplayInfoManager;->Companion:Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    .line 159
    .line 160
    move-object/from16 v6, p1

    .line 161
    .line 162
    const/16 p3, 0x2

    .line 163
    .line 164
    invoke-virtual {v15, v6}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->getInstance(Landroid/content/Context;)Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 165
    .line 166
    .line 167
    move-result-object v15

    .line 168
    iput-object v15, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 169
    .line 170
    new-instance v15, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;

    .line 171
    .line 172
    const/4 v6, 0x1

    .line 173
    invoke-direct {v15, v6}, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;-><init>(I)V

    .line 174
    .line 175
    .line 176
    iput-object v15, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolutionCorrector:Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;

    .line 177
    .line 178
    new-instance v15, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    .line 179
    .line 180
    const/4 v6, 0x0

    .line 181
    invoke-direct {v15, v6}, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;-><init>(I)V

    .line 182
    .line 183
    .line 184
    iput-object v15, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->targetAspectRatio:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    .line 185
    .line 186
    new-instance v15, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 187
    .line 188
    invoke-direct {v15, v1}, Lcom/fsck/k9/mailstore/LocalFolder$12;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V

    .line 189
    .line 190
    .line 191
    iput-object v15, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->dynamicRangeResolver:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 192
    .line 193
    move/from16 v16, v6

    .line 194
    .line 195
    new-instance v6, Landroidx/camera/camera2/internal/HighSpeedResolver;

    .line 196
    .line 197
    invoke-direct {v6, v1}, Landroidx/camera/camera2/internal/HighSpeedResolver;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V

    .line 198
    .line 199
    .line 200
    iput-object v6, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    .line 201
    .line 202
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 203
    .line 204
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v6}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    check-cast v3, [I

    .line 212
    .line 213
    const/4 v6, 0x3

    .line 214
    if-eqz v3, :cond_1

    .line 215
    .line 216
    invoke-static {v3, v6}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([II)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    iput-boolean v1, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isRawSupported:Z

    .line 221
    .line 222
    const/4 v1, 0x6

    .line 223
    invoke-static {v3, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([II)Z

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    iput-boolean v6, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isBurstCaptureSupported:Z

    .line 228
    .line 229
    const/16 v1, 0x10

    .line 230
    .line 231
    invoke-static {v3, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([II)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    iput-boolean v1, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isUltraHighResolutionSensorSupported:Z

    .line 236
    .line 237
    const/4 v1, 0x1

    .line 238
    invoke-static {v3, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([II)Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    iput-boolean v3, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isManualSensorSupported:Z

    .line 243
    .line 244
    :cond_1
    iget-boolean v1, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isRawSupported:Z

    .line 245
    .line 246
    iget-boolean v3, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isBurstCaptureSupported:Z

    .line 247
    .line 248
    sget-object v6, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->QUERYABLE_VIC_FCQ_COMBINATIONS$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 249
    .line 250
    new-instance v6, Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .line 254
    .line 255
    move/from16 v19, v1

    .line 256
    .line 257
    new-instance v1, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .line 261
    .line 262
    move/from16 v20, v3

    .line 263
    .line 264
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 265
    .line 266
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 267
    .line 268
    .line 269
    sget-object v21, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 270
    .line 271
    move/from16 v21, v13

    .line 272
    .line 273
    sget-object v13, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 274
    .line 275
    move-object/from16 v22, v14

    .line 276
    .line 277
    sget-object v14, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 278
    .line 279
    move-object/from16 v23, v9

    .line 280
    .line 281
    sget-object v9, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 282
    .line 283
    move-object/from16 v24, v11

    .line 284
    .line 285
    invoke-static {v13, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    invoke-virtual {v3, v11}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 296
    .line 297
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 298
    .line 299
    .line 300
    sget-object v11, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 301
    .line 302
    move-object/from16 v25, v12

    .line 303
    .line 304
    invoke-static {v11, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 305
    .line 306
    .line 307
    move-result-object v12

    .line 308
    invoke-virtual {v3, v12}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 315
    .line 316
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 317
    .line 318
    .line 319
    sget-object v12, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 320
    .line 321
    move-object/from16 v26, v15

    .line 322
    .line 323
    invoke-static {v12, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 324
    .line 325
    .line 326
    move-result-object v15

    .line 327
    invoke-virtual {v3, v15}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 334
    .line 335
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 336
    .line 337
    .line 338
    sget-object v15, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 339
    .line 340
    move-object/from16 v27, v7

    .line 341
    .line 342
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    invoke-static {v3, v7, v11, v14, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 347
    .line 348
    .line 349
    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    invoke-static {v12, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    invoke-static {v3, v7, v11, v14, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 358
    .line 359
    .line 360
    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 365
    .line 366
    .line 367
    move-result-object v7

    .line 368
    invoke-static {v3, v7, v13, v15, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 369
    .line 370
    .line 371
    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    invoke-static {v3, v7, v12, v15, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 380
    .line 381
    .line 382
    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 387
    .line 388
    .line 389
    move-result-object v7

    .line 390
    invoke-static {v3, v7, v12, v15, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 391
    .line 392
    .line 393
    invoke-static {v11, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    invoke-virtual {v3, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 404
    .line 405
    .line 406
    const/4 v1, 0x4

    .line 407
    if-eqz v5, :cond_2

    .line 408
    .line 409
    const/4 v3, 0x1

    .line 410
    if-eq v5, v3, :cond_2

    .line 411
    .line 412
    const/4 v3, 0x3

    .line 413
    if-eq v5, v3, :cond_2

    .line 414
    .line 415
    if-eq v5, v1, :cond_2

    .line 416
    .line 417
    move/from16 v28, v1

    .line 418
    .line 419
    move-object/from16 v29, v10

    .line 420
    .line 421
    :goto_1
    const/4 v1, 0x1

    .line 422
    goto/16 :goto_2

    .line 423
    .line 424
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .line 428
    .line 429
    new-instance v7, Landroidx/camera/core/impl/SurfaceCombination;

    .line 430
    .line 431
    invoke-direct {v7}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 432
    .line 433
    .line 434
    move/from16 v28, v1

    .line 435
    .line 436
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    invoke-virtual {v7, v1}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 441
    .line 442
    .line 443
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 444
    .line 445
    move-object/from16 v29, v10

    .line 446
    .line 447
    invoke-static {v13, v1, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 448
    .line 449
    .line 450
    move-result-object v10

    .line 451
    invoke-virtual {v7, v10}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    new-instance v7, Landroidx/camera/core/impl/SurfaceCombination;

    .line 458
    .line 459
    invoke-direct {v7}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 460
    .line 461
    .line 462
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 463
    .line 464
    .line 465
    move-result-object v10

    .line 466
    invoke-static {v7, v10, v12, v1, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 467
    .line 468
    .line 469
    invoke-static {v3, v7}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 470
    .line 471
    .line 472
    move-result-object v7

    .line 473
    invoke-static {v12, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 474
    .line 475
    .line 476
    move-result-object v10

    .line 477
    invoke-static {v7, v10, v12, v1, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 478
    .line 479
    .line 480
    invoke-static {v3, v7}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 481
    .line 482
    .line 483
    move-result-object v7

    .line 484
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 485
    .line 486
    .line 487
    move-result-object v10

    .line 488
    invoke-static {v7, v10, v13, v1, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 489
    .line 490
    .line 491
    invoke-static {v11, v1, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 492
    .line 493
    .line 494
    move-result-object v10

    .line 495
    invoke-virtual {v7, v10}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    new-instance v7, Landroidx/camera/core/impl/SurfaceCombination;

    .line 502
    .line 503
    invoke-direct {v7}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 504
    .line 505
    .line 506
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 507
    .line 508
    .line 509
    move-result-object v10

    .line 510
    invoke-static {v7, v10, v12, v1, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 511
    .line 512
    .line 513
    invoke-static {v11, v1, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-virtual {v7, v1}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    .line 524
    .line 525
    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 526
    .line 527
    .line 528
    invoke-static {v12, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 529
    .line 530
    .line 531
    move-result-object v7

    .line 532
    invoke-static {v1, v7, v12, v15, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 533
    .line 534
    .line 535
    invoke-static {v11, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 536
    .line 537
    .line 538
    move-result-object v7

    .line 539
    invoke-virtual {v1, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 546
    .line 547
    .line 548
    goto :goto_1

    .line 549
    :goto_2
    if-eq v5, v1, :cond_3

    .line 550
    .line 551
    const/4 v3, 0x3

    .line 552
    if-eq v5, v3, :cond_3

    .line 553
    .line 554
    goto :goto_3

    .line 555
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 556
    .line 557
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .line 559
    .line 560
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 561
    .line 562
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 563
    .line 564
    .line 565
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 566
    .line 567
    .line 568
    move-result-object v7

    .line 569
    invoke-static {v3, v7, v13, v14, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 570
    .line 571
    .line 572
    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 577
    .line 578
    .line 579
    move-result-object v7

    .line 580
    invoke-static {v3, v7, v12, v14, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 581
    .line 582
    .line 583
    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    invoke-static {v12, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 588
    .line 589
    .line 590
    move-result-object v7

    .line 591
    invoke-static {v3, v7, v12, v14, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 592
    .line 593
    .line 594
    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 595
    .line 596
    .line 597
    move-result-object v3

    .line 598
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 599
    .line 600
    .line 601
    move-result-object v7

    .line 602
    invoke-static {v3, v7, v13, v15, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 603
    .line 604
    .line 605
    invoke-static {v11, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 606
    .line 607
    .line 608
    move-result-object v7

    .line 609
    invoke-virtual {v3, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 616
    .line 617
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 618
    .line 619
    .line 620
    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 621
    .line 622
    invoke-static {v12, v7, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 623
    .line 624
    .line 625
    move-result-object v10

    .line 626
    invoke-static {v3, v10, v13, v15, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 627
    .line 628
    .line 629
    invoke-static {v12, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 630
    .line 631
    .line 632
    move-result-object v10

    .line 633
    invoke-virtual {v3, v10}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 640
    .line 641
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 642
    .line 643
    .line 644
    invoke-static {v12, v7, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 645
    .line 646
    .line 647
    move-result-object v7

    .line 648
    invoke-static {v3, v7, v12, v15, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 649
    .line 650
    .line 651
    invoke-static {v12, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 652
    .line 653
    .line 654
    move-result-object v7

    .line 655
    invoke-virtual {v3, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 662
    .line 663
    .line 664
    :goto_3
    if-eqz v19, :cond_4

    .line 665
    .line 666
    new-instance v1, Ljava/util/ArrayList;

    .line 667
    .line 668
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .line 670
    .line 671
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 672
    .line 673
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 674
    .line 675
    .line 676
    invoke-static {v2, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 677
    .line 678
    .line 679
    move-result-object v7

    .line 680
    invoke-virtual {v3, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 687
    .line 688
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 689
    .line 690
    .line 691
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 692
    .line 693
    .line 694
    move-result-object v7

    .line 695
    invoke-static {v3, v7, v2, v14, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 696
    .line 697
    .line 698
    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    invoke-static {v12, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 703
    .line 704
    .line 705
    move-result-object v7

    .line 706
    invoke-static {v3, v7, v2, v14, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 707
    .line 708
    .line 709
    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 710
    .line 711
    .line 712
    move-result-object v3

    .line 713
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 714
    .line 715
    .line 716
    move-result-object v7

    .line 717
    invoke-static {v3, v7, v13, v15, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 718
    .line 719
    .line 720
    invoke-static {v2, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 721
    .line 722
    .line 723
    move-result-object v7

    .line 724
    invoke-virtual {v3, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    .line 729
    .line 730
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 731
    .line 732
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 733
    .line 734
    .line 735
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 736
    .line 737
    .line 738
    move-result-object v7

    .line 739
    invoke-static {v3, v7, v12, v15, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 740
    .line 741
    .line 742
    invoke-static {v2, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 743
    .line 744
    .line 745
    move-result-object v7

    .line 746
    invoke-virtual {v3, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 753
    .line 754
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 755
    .line 756
    .line 757
    invoke-static {v12, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 758
    .line 759
    .line 760
    move-result-object v7

    .line 761
    invoke-static {v3, v7, v12, v15, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 762
    .line 763
    .line 764
    invoke-static {v2, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 765
    .line 766
    .line 767
    move-result-object v7

    .line 768
    invoke-virtual {v3, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 775
    .line 776
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 777
    .line 778
    .line 779
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 780
    .line 781
    .line 782
    move-result-object v7

    .line 783
    invoke-static {v3, v7, v11, v14, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 784
    .line 785
    .line 786
    invoke-static {v2, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 787
    .line 788
    .line 789
    move-result-object v7

    .line 790
    invoke-virtual {v3, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 797
    .line 798
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 799
    .line 800
    .line 801
    invoke-static {v12, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 802
    .line 803
    .line 804
    move-result-object v7

    .line 805
    invoke-static {v3, v7, v11, v14, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 806
    .line 807
    .line 808
    invoke-static {v2, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 809
    .line 810
    .line 811
    move-result-object v7

    .line 812
    invoke-virtual {v3, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    .line 817
    .line 818
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 819
    .line 820
    .line 821
    :cond_4
    if-eqz v20, :cond_5

    .line 822
    .line 823
    if-nez v5, :cond_5

    .line 824
    .line 825
    new-instance v1, Ljava/util/ArrayList;

    .line 826
    .line 827
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .line 829
    .line 830
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 831
    .line 832
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 833
    .line 834
    .line 835
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 836
    .line 837
    .line 838
    move-result-object v7

    .line 839
    invoke-static {v3, v7, v13, v14, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 840
    .line 841
    .line 842
    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 847
    .line 848
    .line 849
    move-result-object v7

    .line 850
    invoke-static {v3, v7, v12, v14, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 851
    .line 852
    .line 853
    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 854
    .line 855
    .line 856
    move-result-object v3

    .line 857
    invoke-static {v12, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 858
    .line 859
    .line 860
    move-result-object v7

    .line 861
    invoke-static {v3, v7, v12, v14, v9}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 868
    .line 869
    .line 870
    :cond_5
    const/4 v3, 0x3

    .line 871
    if-ne v5, v3, :cond_6

    .line 872
    .line 873
    new-instance v1, Ljava/util/ArrayList;

    .line 874
    .line 875
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 876
    .line 877
    .line 878
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 879
    .line 880
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 881
    .line 882
    .line 883
    invoke-static {v13, v15, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 884
    .line 885
    .line 886
    move-result-object v5

    .line 887
    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 888
    .line 889
    .line 890
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 891
    .line 892
    invoke-static {v13, v5, v3, v12, v14}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 893
    .line 894
    .line 895
    invoke-static {v2, v14}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 896
    .line 897
    .line 898
    move-result-object v7

    .line 899
    invoke-virtual {v3, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    .line 904
    .line 905
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 906
    .line 907
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 908
    .line 909
    .line 910
    invoke-static {v13, v15, v3, v13, v5}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 911
    .line 912
    .line 913
    invoke-static {v11, v14, v3, v2, v14}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 920
    .line 921
    .line 922
    :cond_6
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 923
    .line 924
    .line 925
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 926
    .line 927
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 928
    .line 929
    .line 930
    if-eqz v22, :cond_a

    .line 931
    .line 932
    sget-object v3, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION:Landroidx/camera/core/impl/SurfaceCombination;

    .line 933
    .line 934
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 935
    .line 936
    const-string v5, "heroqltevzw"

    .line 937
    .line 938
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 939
    .line 940
    .line 941
    move-result v5

    .line 942
    if-nez v5, :cond_9

    .line 943
    .line 944
    const-string v5, "heroqltetmo"

    .line 945
    .line 946
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 947
    .line 948
    .line 949
    move-result v3

    .line 950
    if-eqz v3, :cond_7

    .line 951
    .line 952
    goto :goto_4

    .line 953
    :cond_7
    invoke-static {}, Lcom/fsck/k9/sasl/OAuthBearer;->supportExtraLevel3ConfigurationsGoogleDevice$camera_camera2()Z

    .line 954
    .line 955
    .line 956
    move-result v3

    .line 957
    if-nez v3, :cond_8

    .line 958
    .line 959
    invoke-static {}, Lcom/fsck/k9/sasl/OAuthBearer;->supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2()Z

    .line 960
    .line 961
    .line 962
    move-result v3

    .line 963
    if-eqz v3, :cond_a

    .line 964
    .line 965
    :cond_8
    sget-object v1, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->LEVEL_3_LEVEL_PRIV_PRIV_YUV_SUBSET_CONFIGURATION:Landroidx/camera/core/impl/SurfaceCombination;

    .line 966
    .line 967
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    goto :goto_5

    .line 972
    :cond_9
    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    .line 973
    .line 974
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 975
    .line 976
    .line 977
    const-string v3, "1"

    .line 978
    .line 979
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 980
    .line 981
    .line 982
    move-result v3

    .line 983
    if-eqz v3, :cond_a

    .line 984
    .line 985
    sget-object v3, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION:Landroidx/camera/core/impl/SurfaceCombination;

    .line 986
    .line 987
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    .line 989
    .line 990
    :cond_a
    :goto_5
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 991
    .line 992
    .line 993
    iget-boolean v1, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isUltraHighResolutionSensorSupported:Z

    .line 994
    .line 995
    if-eqz v1, :cond_b

    .line 996
    .line 997
    new-instance v1, Ljava/util/ArrayList;

    .line 998
    .line 999
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    .line 1001
    .line 1002
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1003
    .line 1004
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1005
    .line 1006
    .line 1007
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->ULTRA_MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1008
    .line 1009
    invoke-static {v12, v4, v3, v13, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1010
    .line 1011
    .line 1012
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1013
    .line 1014
    invoke-static {v13, v5}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v6

    .line 1018
    invoke-virtual {v3, v6}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    .line 1023
    .line 1024
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1025
    .line 1026
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1027
    .line 1028
    .line 1029
    invoke-static {v11, v4, v3, v13, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1030
    .line 1031
    .line 1032
    invoke-static {v13, v5}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v6

    .line 1036
    invoke-virtual {v3, v6}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    .line 1041
    .line 1042
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1043
    .line 1044
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1045
    .line 1046
    .line 1047
    invoke-static {v2, v4, v3, v13, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1048
    .line 1049
    .line 1050
    invoke-static {v13, v5}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v5

    .line 1054
    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    .line 1059
    .line 1060
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1061
    .line 1062
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1063
    .line 1064
    .line 1065
    invoke-static {v12, v4, v3, v13, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1066
    .line 1067
    .line 1068
    invoke-static {v11, v14}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v5

    .line 1072
    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    .line 1077
    .line 1078
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1079
    .line 1080
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1081
    .line 1082
    .line 1083
    invoke-static {v11, v4, v3, v13, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1084
    .line 1085
    .line 1086
    invoke-static {v11, v14}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v5

    .line 1090
    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    .line 1095
    .line 1096
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1097
    .line 1098
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1099
    .line 1100
    .line 1101
    invoke-static {v2, v4, v3, v13, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1102
    .line 1103
    .line 1104
    invoke-static {v11, v14}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v5

    .line 1108
    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    .line 1113
    .line 1114
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1115
    .line 1116
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1117
    .line 1118
    .line 1119
    invoke-static {v12, v4, v3, v13, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1120
    .line 1121
    .line 1122
    invoke-static {v12, v14}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v5

    .line 1126
    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    .line 1131
    .line 1132
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1133
    .line 1134
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1135
    .line 1136
    .line 1137
    invoke-static {v11, v4, v3, v13, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1138
    .line 1139
    .line 1140
    invoke-static {v12, v14}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v5

    .line 1144
    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    .line 1149
    .line 1150
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1151
    .line 1152
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1153
    .line 1154
    .line 1155
    invoke-static {v2, v4, v3, v13, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1156
    .line 1157
    .line 1158
    invoke-static {v12, v14}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v5

    .line 1162
    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    .line 1167
    .line 1168
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1169
    .line 1170
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1171
    .line 1172
    .line 1173
    invoke-static {v12, v4, v3, v13, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1174
    .line 1175
    .line 1176
    invoke-static {v2, v14}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v5

    .line 1180
    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    .line 1185
    .line 1186
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1187
    .line 1188
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1189
    .line 1190
    .line 1191
    invoke-static {v11, v4, v3, v13, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1192
    .line 1193
    .line 1194
    invoke-static {v2, v14}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v5

    .line 1198
    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    .line 1203
    .line 1204
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1205
    .line 1206
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1207
    .line 1208
    .line 1209
    invoke-static {v2, v4, v3, v13, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-static {v2, v14}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v2

    .line 1216
    invoke-virtual {v3, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1220
    .line 1221
    .line 1222
    move-object/from16 v2, v29

    .line 1223
    .line 1224
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1225
    .line 1226
    .line 1227
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v1

    .line 1231
    const-string v2, "android.hardware.camera.concurrent"

    .line 1232
    .line 1233
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1234
    .line 1235
    .line 1236
    move-result v1

    .line 1237
    iput-boolean v1, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isConcurrentCameraModeSupported:Z

    .line 1238
    .line 1239
    if-eqz v1, :cond_c

    .line 1240
    .line 1241
    new-instance v1, Ljava/util/ArrayList;

    .line 1242
    .line 1243
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    .line 1245
    .line 1246
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1247
    .line 1248
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1249
    .line 1250
    .line 1251
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1440P_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1252
    .line 1253
    invoke-static {v12, v3}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v4

    .line 1257
    invoke-virtual {v2, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    .line 1262
    .line 1263
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1264
    .line 1265
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1266
    .line 1267
    .line 1268
    invoke-static {v13, v3}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v4

    .line 1272
    invoke-virtual {v2, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    .line 1277
    .line 1278
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1279
    .line 1280
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1281
    .line 1282
    .line 1283
    invoke-static {v11, v3}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v4

    .line 1287
    invoke-virtual {v2, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    .line 1292
    .line 1293
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1294
    .line 1295
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1296
    .line 1297
    .line 1298
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S720P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1299
    .line 1300
    invoke-static {v12, v4, v2, v11, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1301
    .line 1302
    .line 1303
    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v2

    .line 1307
    invoke-static {v13, v4, v2, v11, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1308
    .line 1309
    .line 1310
    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v2

    .line 1314
    invoke-static {v12, v4, v2, v12, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1315
    .line 1316
    .line 1317
    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v2

    .line 1321
    invoke-static {v12, v4, v2, v13, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1322
    .line 1323
    .line 1324
    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v2

    .line 1328
    invoke-static {v13, v4, v2, v12, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1329
    .line 1330
    .line 1331
    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v2

    .line 1335
    invoke-static {v13, v4, v2, v13, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1339
    .line 1340
    .line 1341
    move-object/from16 v2, v27

    .line 1342
    .line 1343
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1344
    .line 1345
    .line 1346
    :cond_c
    move-object/from16 v1, v26

    .line 1347
    .line 1348
    iget-boolean v1, v1, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$value:Z

    .line 1349
    .line 1350
    const/16 v4, 0x8

    .line 1351
    .line 1352
    if-eqz v1, :cond_d

    .line 1353
    .line 1354
    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1355
    .line 1356
    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1357
    .line 1358
    .line 1359
    invoke-static {v13, v14}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v5

    .line 1363
    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1364
    .line 1365
    .line 1366
    new-instance v5, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1367
    .line 1368
    invoke-direct {v5}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1369
    .line 1370
    .line 1371
    invoke-static {v12, v14}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v6

    .line 1375
    invoke-virtual {v5, v6}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1376
    .line 1377
    .line 1378
    new-instance v6, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1379
    .line 1380
    invoke-direct {v6}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1381
    .line 1382
    .line 1383
    invoke-static {v13, v15}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v7

    .line 1387
    invoke-virtual {v6, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1388
    .line 1389
    .line 1390
    invoke-static {v11, v14}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v7

    .line 1394
    invoke-virtual {v6, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1395
    .line 1396
    .line 1397
    new-instance v7, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1398
    .line 1399
    invoke-direct {v7}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1400
    .line 1401
    .line 1402
    invoke-static {v13, v15}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v8

    .line 1406
    invoke-virtual {v7, v8}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1407
    .line 1408
    .line 1409
    invoke-static {v12, v14}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v8

    .line 1413
    invoke-virtual {v7, v8}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1414
    .line 1415
    .line 1416
    new-instance v8, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1417
    .line 1418
    invoke-direct {v8}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1419
    .line 1420
    .line 1421
    invoke-static {v12, v15}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v9

    .line 1425
    invoke-virtual {v8, v9}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1426
    .line 1427
    .line 1428
    invoke-static {v12, v14}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v9

    .line 1432
    invoke-virtual {v8, v9}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1433
    .line 1434
    .line 1435
    new-instance v9, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1436
    .line 1437
    invoke-direct {v9}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1438
    .line 1439
    .line 1440
    invoke-static {v13, v15}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v10

    .line 1444
    invoke-virtual {v9, v10}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1445
    .line 1446
    .line 1447
    sget-object v10, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1448
    .line 1449
    const/16 p1, 0x7

    .line 1450
    .line 1451
    invoke-static {v13, v10}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v2

    .line 1455
    invoke-virtual {v9, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1456
    .line 1457
    .line 1458
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1459
    .line 1460
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1461
    .line 1462
    .line 1463
    invoke-static {v13, v15, v2, v13, v10}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1464
    .line 1465
    .line 1466
    const/16 v19, 0x5

    .line 1467
    .line 1468
    invoke-static {v12, v10}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v3

    .line 1472
    invoke-virtual {v2, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1473
    .line 1474
    .line 1475
    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1476
    .line 1477
    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1478
    .line 1479
    .line 1480
    invoke-static {v13, v15, v3, v13, v10}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1481
    .line 1482
    .line 1483
    invoke-static {v11, v10}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v10

    .line 1487
    invoke-virtual {v3, v10}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1488
    .line 1489
    .line 1490
    new-array v10, v4, [Landroidx/camera/core/impl/SurfaceCombination;

    .line 1491
    .line 1492
    aput-object v1, v10, v16

    .line 1493
    .line 1494
    const/4 v1, 0x1

    .line 1495
    aput-object v5, v10, v1

    .line 1496
    .line 1497
    aput-object v6, v10, p3

    .line 1498
    .line 1499
    const/16 v18, 0x3

    .line 1500
    .line 1501
    aput-object v7, v10, v18

    .line 1502
    .line 1503
    aput-object v8, v10, v28

    .line 1504
    .line 1505
    aput-object v9, v10, v19

    .line 1506
    .line 1507
    const/16 v17, 0x6

    .line 1508
    .line 1509
    aput-object v2, v10, v17

    .line 1510
    .line 1511
    aput-object v3, v10, p1

    .line 1512
    .line 1513
    invoke-static {v10}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v1

    .line 1517
    move-object/from16 v2, v25

    .line 1518
    .line 1519
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1520
    .line 1521
    .line 1522
    goto :goto_6

    .line 1523
    :cond_d
    const/16 p1, 0x7

    .line 1524
    .line 1525
    const/16 v19, 0x5

    .line 1526
    .line 1527
    :goto_6
    if-eqz v21, :cond_e

    .line 1528
    .line 1529
    new-instance v1, Ljava/util/ArrayList;

    .line 1530
    .line 1531
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1532
    .line 1533
    .line 1534
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1535
    .line 1536
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1537
    .line 1538
    .line 1539
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1440P_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1540
    .line 1541
    invoke-static {v13, v3}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v5

    .line 1545
    invoke-virtual {v2, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1546
    .line 1547
    .line 1548
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1549
    .line 1550
    .line 1551
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1552
    .line 1553
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1554
    .line 1555
    .line 1556
    invoke-static {v12, v3}, Lcom/mikepenz/fastadapter/VerboseLogger;->create$default(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v5

    .line 1560
    invoke-virtual {v2, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1561
    .line 1562
    .line 1563
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1564
    .line 1565
    .line 1566
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1567
    .line 1568
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1569
    .line 1570
    .line 1571
    invoke-static {v13, v3, v2, v11, v14}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1572
    .line 1573
    .line 1574
    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v2

    .line 1578
    invoke-static {v12, v3, v2, v11, v14}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1579
    .line 1580
    .line 1581
    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v2

    .line 1585
    invoke-static {v13, v3, v2, v12, v14}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1586
    .line 1587
    .line 1588
    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v2

    .line 1592
    invoke-static {v12, v3, v2, v12, v14}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1593
    .line 1594
    .line 1595
    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v2

    .line 1599
    invoke-static {v13, v15, v2, v13, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1600
    .line 1601
    .line 1602
    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v2

    .line 1606
    invoke-static {v12, v15, v2, v13, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1607
    .line 1608
    .line 1609
    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v2

    .line 1613
    invoke-static {v13, v15, v2, v12, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1614
    .line 1615
    .line 1616
    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v2

    .line 1620
    invoke-static {v12, v15, v2, v12, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)V

    .line 1621
    .line 1622
    .line 1623
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1624
    .line 1625
    .line 1626
    move-object/from16 v2, v24

    .line 1627
    .line 1628
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1629
    .line 1630
    .line 1631
    :cond_e
    invoke-static/range {p2 .. p2}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->isStreamUseCaseSupported(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    .line 1632
    .line 1633
    .line 1634
    move-result v1

    .line 1635
    iput-boolean v1, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isStreamUseCaseSupported:Z

    .line 1636
    .line 1637
    if-eqz v1, :cond_f

    .line 1638
    .line 1639
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1640
    .line 1641
    const/16 v2, 0x21

    .line 1642
    .line 1643
    if-lt v1, v2, :cond_f

    .line 1644
    .line 1645
    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1646
    .line 1647
    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1648
    .line 1649
    .line 1650
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1440P_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1651
    .line 1652
    sget-object v3, Landroidx/camera/core/impl/StreamUseCase;->PREVIEW_VIDEO_STILL:Landroidx/camera/core/impl/StreamUseCase;

    .line 1653
    .line 1654
    invoke-static {v13, v2, v3}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v5

    .line 1658
    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1659
    .line 1660
    .line 1661
    new-instance v5, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1662
    .line 1663
    invoke-direct {v5}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1664
    .line 1665
    .line 1666
    invoke-static {v12, v2, v3}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v2

    .line 1670
    invoke-virtual {v5, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1671
    .line 1672
    .line 1673
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1674
    .line 1675
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1676
    .line 1677
    .line 1678
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 1679
    .line 1680
    sget-object v6, Landroidx/camera/core/impl/StreamUseCase;->VIDEO_RECORD:Landroidx/camera/core/impl/StreamUseCase;

    .line 1681
    .line 1682
    invoke-static {v13, v3, v6}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v7

    .line 1686
    invoke-virtual {v2, v7}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1687
    .line 1688
    .line 1689
    new-instance v7, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1690
    .line 1691
    invoke-direct {v7}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1692
    .line 1693
    .line 1694
    invoke-static {v12, v3, v6}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v8

    .line 1698
    invoke-virtual {v7, v8}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1699
    .line 1700
    .line 1701
    new-instance v8, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1702
    .line 1703
    invoke-direct {v8}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1704
    .line 1705
    .line 1706
    sget-object v9, Landroidx/camera/core/impl/StreamUseCase;->STILL_CAPTURE:Landroidx/camera/core/impl/StreamUseCase;

    .line 1707
    .line 1708
    invoke-static {v11, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v10

    .line 1712
    invoke-virtual {v8, v10}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1713
    .line 1714
    .line 1715
    new-instance v10, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1716
    .line 1717
    invoke-direct {v10}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1718
    .line 1719
    .line 1720
    move/from16 v20, v4

    .line 1721
    .line 1722
    invoke-static {v12, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v4

    .line 1726
    invoke-virtual {v10, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1727
    .line 1728
    .line 1729
    new-instance v4, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1730
    .line 1731
    invoke-direct {v4}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1732
    .line 1733
    .line 1734
    sget-object v0, Landroidx/camera/core/impl/StreamUseCase;->PREVIEW:Landroidx/camera/core/impl/StreamUseCase;

    .line 1735
    .line 1736
    move-object/from16 p2, v1

    .line 1737
    .line 1738
    invoke-static {v13, v15, v0}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1739
    .line 1740
    .line 1741
    move-result-object v1

    .line 1742
    invoke-virtual {v4, v1}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1743
    .line 1744
    .line 1745
    invoke-static {v11, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v1

    .line 1749
    invoke-virtual {v4, v1}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1750
    .line 1751
    .line 1752
    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1753
    .line 1754
    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1755
    .line 1756
    .line 1757
    move-object/from16 v21, v2

    .line 1758
    .line 1759
    invoke-static {v13, v15, v0}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1760
    .line 1761
    .line 1762
    move-result-object v2

    .line 1763
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1764
    .line 1765
    .line 1766
    invoke-static {v12, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v2

    .line 1770
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1771
    .line 1772
    .line 1773
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1774
    .line 1775
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1776
    .line 1777
    .line 1778
    move-object/from16 v22, v1

    .line 1779
    .line 1780
    invoke-static {v13, v15, v0}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1781
    .line 1782
    .line 1783
    move-result-object v1

    .line 1784
    invoke-virtual {v2, v1}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1785
    .line 1786
    .line 1787
    invoke-static {v13, v3, v6}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v1

    .line 1791
    invoke-virtual {v2, v1}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1792
    .line 1793
    .line 1794
    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1795
    .line 1796
    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1797
    .line 1798
    .line 1799
    move-object/from16 v24, v2

    .line 1800
    .line 1801
    invoke-static {v13, v15, v0}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v2

    .line 1805
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1806
    .line 1807
    .line 1808
    invoke-static {v12, v3, v6}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v2

    .line 1812
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1813
    .line 1814
    .line 1815
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1816
    .line 1817
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1818
    .line 1819
    .line 1820
    move-object/from16 v25, v1

    .line 1821
    .line 1822
    invoke-static {v13, v15, v0}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1823
    .line 1824
    .line 1825
    move-result-object v1

    .line 1826
    invoke-virtual {v2, v1}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1827
    .line 1828
    .line 1829
    invoke-static {v12, v15, v0}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v1

    .line 1833
    invoke-virtual {v2, v1}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1834
    .line 1835
    .line 1836
    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1837
    .line 1838
    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1839
    .line 1840
    .line 1841
    move-object/from16 v26, v2

    .line 1842
    .line 1843
    invoke-static {v13, v15, v0}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1844
    .line 1845
    .line 1846
    move-result-object v2

    .line 1847
    invoke-static {v1, v2, v13, v3, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 1848
    .line 1849
    .line 1850
    invoke-static {v11, v3, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v2

    .line 1854
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1855
    .line 1856
    .line 1857
    new-instance v2, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1858
    .line 1859
    invoke-direct {v2}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1860
    .line 1861
    .line 1862
    move-object/from16 v27, v1

    .line 1863
    .line 1864
    invoke-static {v13, v15, v0}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v1

    .line 1868
    invoke-static {v2, v1, v12, v3, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 1869
    .line 1870
    .line 1871
    invoke-static {v11, v3, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1872
    .line 1873
    .line 1874
    move-result-object v1

    .line 1875
    invoke-virtual {v2, v1}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1876
    .line 1877
    .line 1878
    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    .line 1879
    .line 1880
    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 1881
    .line 1882
    .line 1883
    invoke-static {v13, v15, v0}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v3

    .line 1887
    invoke-static {v1, v3, v12, v15, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 1888
    .line 1889
    .line 1890
    invoke-static {v11, v14, v9}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 1891
    .line 1892
    .line 1893
    move-result-object v0

    .line 1894
    invoke-virtual {v1, v0}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 1895
    .line 1896
    .line 1897
    const/16 v0, 0xe

    .line 1898
    .line 1899
    new-array v0, v0, [Landroidx/camera/core/impl/SurfaceCombination;

    .line 1900
    .line 1901
    aput-object p2, v0, v16

    .line 1902
    .line 1903
    const/4 v3, 0x1

    .line 1904
    aput-object v5, v0, v3

    .line 1905
    .line 1906
    aput-object v21, v0, p3

    .line 1907
    .line 1908
    const/16 v18, 0x3

    .line 1909
    .line 1910
    aput-object v7, v0, v18

    .line 1911
    .line 1912
    aput-object v8, v0, v28

    .line 1913
    .line 1914
    aput-object v10, v0, v19

    .line 1915
    .line 1916
    const/16 v17, 0x6

    .line 1917
    .line 1918
    aput-object v4, v0, v17

    .line 1919
    .line 1920
    aput-object v22, v0, p1

    .line 1921
    .line 1922
    aput-object v24, v0, v20

    .line 1923
    .line 1924
    const/16 v3, 0x9

    .line 1925
    .line 1926
    aput-object v25, v0, v3

    .line 1927
    .line 1928
    const/16 v3, 0xa

    .line 1929
    .line 1930
    aput-object v26, v0, v3

    .line 1931
    .line 1932
    const/16 v3, 0xb

    .line 1933
    .line 1934
    aput-object v27, v0, v3

    .line 1935
    .line 1936
    const/16 v3, 0xc

    .line 1937
    .line 1938
    aput-object v2, v0, v3

    .line 1939
    .line 1940
    const/16 v2, 0xd

    .line 1941
    .line 1942
    aput-object v1, v0, v2

    .line 1943
    .line 1944
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v0

    .line 1948
    move-object/from16 v1, v23

    .line 1949
    .line 1950
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1951
    .line 1952
    .line 1953
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateSurfaceSizeDefinition()V

    .line 1954
    .line 1955
    .line 1956
    return-void
.end method

.method public static getClosestSupportedDeviceFrameRate(Landroid/util/Range;I[Landroid/util/Range;)Landroid/util/Range;
    .locals 19

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    sget-object v2, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_1
    new-instance v4, Landroid/util/Range;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    check-cast v5, Ljava/lang/Number;

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    check-cast v3, Ljava/lang/Number;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-direct {v4, v5, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 70
    .line 71
    .line 72
    array-length v3, v1

    .line 73
    const/4 v5, 0x0

    .line 74
    move v6, v5

    .line 75
    :goto_0
    if-ge v5, v3, :cond_f

    .line 76
    .line 77
    aget-object v7, v1, v5

    .line 78
    .line 79
    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Ljava/lang/Number;

    .line 84
    .line 85
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-ge v0, v8, :cond_2

    .line 90
    .line 91
    goto/16 :goto_3

    .line 92
    .line 93
    :cond_2
    sget-object v8, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 94
    .line 95
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_3

    .line 100
    .line 101
    move-object v2, v7

    .line 102
    :cond_3
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_4

    .line 107
    .line 108
    move-object v2, v7

    .line 109
    goto/16 :goto_4

    .line 110
    .line 111
    :cond_4
    :try_start_0
    invoke-virtual {v7, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-static {v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-nez v6, :cond_5

    .line 123
    .line 124
    move-object v2, v7

    .line 125
    move v6, v8

    .line 126
    goto/16 :goto_3

    .line 127
    .line 128
    :cond_5
    if-lt v8, v6, :cond_e

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-static {v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    int-to-double v8, v8

    .line 145
    invoke-virtual {v7, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {v10}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    int-to-double v10, v10

    .line 157
    invoke-static {v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    int-to-double v12, v12

    .line 162
    div-double v12, v10, v12

    .line 163
    .line 164
    invoke-static {v2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    .line 165
    .line 166
    .line 167
    move-result v14

    .line 168
    int-to-double v14, v14

    .line 169
    div-double v14, v8, v14

    .line 170
    .line 171
    cmpl-double v16, v10, v8

    .line 172
    .line 173
    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    .line 174
    .line 175
    if-lez v16, :cond_6

    .line 176
    .line 177
    cmpl-double v8, v12, v17

    .line 178
    .line 179
    if-gez v8, :cond_9

    .line 180
    .line 181
    cmpl-double v8, v12, v14

    .line 182
    .line 183
    if-ltz v8, :cond_a

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_6
    cmpg-double v8, v10, v8

    .line 187
    .line 188
    if-nez v8, :cond_8

    .line 189
    .line 190
    cmpl-double v8, v12, v14

    .line 191
    .line 192
    if-lez v8, :cond_7

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_7
    cmpg-double v8, v12, v14

    .line 196
    .line 197
    if-nez v8, :cond_a

    .line 198
    .line 199
    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    check-cast v8, Ljava/lang/Number;

    .line 204
    .line 205
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 206
    .line 207
    .line 208
    move-result v8

    .line 209
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    check-cast v9, Ljava/lang/Number;

    .line 214
    .line 215
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    if-le v8, v9, :cond_a

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_8
    cmpg-double v8, v14, v17

    .line 223
    .line 224
    if-gez v8, :cond_a

    .line 225
    .line 226
    cmpl-double v8, v12, v14

    .line 227
    .line 228
    if-lez v8, :cond_a

    .line 229
    .line 230
    :cond_9
    :goto_1
    move-object v2, v7

    .line 231
    :cond_a
    invoke-virtual {v4, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    invoke-static {v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    .line 239
    .line 240
    .line 241
    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_3

    .line 243
    :catch_0
    if-eqz v6, :cond_b

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_b
    invoke-static {v7, v4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    invoke-static {v2, v4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-ge v8, v9, :cond_c

    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_c
    invoke-static {v7, v4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    invoke-static {v2, v4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    if-ne v8, v9, :cond_e

    .line 269
    .line 270
    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    check-cast v8, Ljava/lang/Number;

    .line 275
    .line 276
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    check-cast v9, Ljava/lang/Number;

    .line 285
    .line 286
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    if-le v8, v9, :cond_d

    .line 291
    .line 292
    goto :goto_2

    .line 293
    :cond_d
    invoke-static {v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    invoke-static {v2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    if-ge v8, v9, :cond_e

    .line 302
    .line 303
    :goto_2
    move-object v2, v7

    .line 304
    :cond_e
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 305
    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :cond_f
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    return-object v2
.end method

.method public static getMaxOutputSizeByFormat$camera_camera2(Landroid/hardware/camera2/params/StreamConfigurationMap;IZLandroid/util/Rational;)Landroid/util/Size;
    .locals 8

    .line 1
    const/16 v0, 0x22

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    :try_start_0
    const-class v0, Landroid/graphics/SurfaceTexture;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_1

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    .line 22
    .line 23
    .line 24
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_1

    .line 26
    :goto_0
    new-instance v2, Lkotlin/Result$Failure;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_1
    move-object v2, v0

    .line 33
    :goto_2
    nop

    .line 34
    instance-of v0, v2, Lkotlin/Result$Failure;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    move-object v2, v1

    .line 39
    :cond_2
    check-cast v2, [Landroid/util/Size;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    if-eqz v2, :cond_5

    .line 43
    .line 44
    if-eqz p3, :cond_6

    .line 45
    .line 46
    new-instance v3, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    array-length v4, v2

    .line 52
    move v5, v0

    .line 53
    :goto_3
    if-ge v5, v4, :cond_4

    .line 54
    .line 55
    aget-object v6, v2, v5

    .line 56
    .line 57
    invoke-static {p3, v6}, Landroidx/camera/core/impl/utils/AspectRatioUtil;->hasMatchingAspectRatio(Landroid/util/Rational;Landroid/util/Size;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_3

    .line 62
    .line 63
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    new-array p3, v0, [Landroid/util/Size;

    .line 70
    .line 71
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    move-object v2, p3

    .line 76
    check-cast v2, [Landroid/util/Size;

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    move-object v2, v1

    .line 80
    :cond_6
    :goto_4
    if-eqz v2, :cond_b

    .line 81
    .line 82
    array-length p3, v2

    .line 83
    if-nez p3, :cond_7

    .line 84
    .line 85
    goto :goto_6

    .line 86
    :cond_7
    new-instance p3, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    .line 87
    .line 88
    invoke-direct {p3, v0}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>(Z)V

    .line 89
    .line 90
    .line 91
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-static {v2, p3}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Landroid/util/Size;

    .line 103
    .line 104
    sget-object v3, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_ZERO:Landroid/util/Size;

    .line 105
    .line 106
    if-eqz p2, :cond_a

    .line 107
    .line 108
    if-eqz p0, :cond_8

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    :cond_8
    if-eqz v1, :cond_a

    .line 115
    .line 116
    array-length p0, v1

    .line 117
    if-nez p0, :cond_9

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_9
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-static {p0, p3}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    move-object v3, p0

    .line 132
    check-cast v3, Landroid/util/Size;

    .line 133
    .line 134
    :cond_a
    :goto_5
    const/4 p0, 0x2

    .line 135
    new-array p0, p0, [Landroid/util/Size;

    .line 136
    .line 137
    aput-object v2, p0, v0

    .line 138
    .line 139
    const/4 p1, 0x1

    .line 140
    aput-object v3, p0, p1

    .line 141
    .line 142
    invoke-static {p0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {p0, p3}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    check-cast p0, Landroid/util/Size;

    .line 151
    .line 152
    return-object p0

    .line 153
    :cond_b
    :goto_6
    return-object v1
.end method

.method public static getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Number;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-le v0, v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Ljava/lang/Number;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    check-cast p1, Ljava/lang/Number;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    sub-int/2addr p0, p1

    .line 67
    return p0

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Ljava/lang/Number;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    check-cast p0, Ljava/lang/Number;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    sub-int/2addr p1, p0

    .line 92
    return p1

    .line 93
    :cond_1
    const-string p0, "Ranges must not intersect"

    .line 94
    .line 95
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/4 p0, 0x0

    .line 99
    return p0
.end method

.method public static getRangeLength(Landroid/util/Range;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    check-cast p0, Ljava/lang/Number;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    sub-int/2addr v0, p0

    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    return v0
.end method

.method public static getUpdatedTargetFrameRate(Landroid/util/Range;Landroid/util/Range;Z)Landroid/util/Range;
    .locals 2

    .line 1
    sget-object v0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    if-eqz p2, :cond_3

    .line 34
    .line 35
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const-string p2, "All targetFrameRate should be the same if strict fps is required"

    .line 40
    .line 41
    invoke-static {p2, p1}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_3
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :catch_0
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final checkSupported(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Z
    .locals 25

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
    const/4 v4, 0x2

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    iget-object v6, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->videoStabilization:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    .line 13
    .line 14
    iget-boolean v7, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    .line 15
    .line 16
    iget-object v8, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->featureSettingsToSupportedCombinationsMap:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v9

    .line 22
    sget-object v10, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    .line 23
    .line 24
    if-eqz v9, :cond_0

    .line 25
    .line 26
    invoke-virtual {v8, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    check-cast v8, Ljava/util/List;

    .line 34
    .line 35
    move-object/from16 v18, v5

    .line 36
    .line 37
    move/from16 v17, v7

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iget v12, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    .line 47
    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    sget-object v12, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->QUERYABLE_VIC_FCQ_COMBINATIONS$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 51
    .line 52
    iget-object v12, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 53
    .line 54
    invoke-static {v12, v6}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getQueryableFcqCombinations$camera_camera2(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/impl/stabilization/VideoStabilization;)Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object v12

    .line 58
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    .line 60
    .line 61
    move-object/from16 v18, v5

    .line 62
    .line 63
    move/from16 v17, v7

    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_1
    iget-boolean v13, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    .line 68
    .line 69
    if-eqz v13, :cond_3

    .line 70
    .line 71
    iget-object v13, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsUltraHdr:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    if-eqz v14, :cond_2

    .line 78
    .line 79
    sget-object v14, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->QUERYABLE_VIC_FCQ_COMBINATIONS$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 80
    .line 81
    new-instance v14, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v15, Landroidx/camera/core/impl/SurfaceCombination;

    .line 87
    .line 88
    invoke-direct {v15}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 89
    .line 90
    .line 91
    sget-object v16, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 92
    .line 93
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 94
    .line 95
    sget-object v11, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 96
    .line 97
    move/from16 v17, v7

    .line 98
    .line 99
    sget-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG_R:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 100
    .line 101
    move-object/from16 v18, v5

    .line 102
    .line 103
    invoke-static {v7, v4, v11}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v15, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    new-instance v5, Landroidx/camera/core/impl/SurfaceCombination;

    .line 114
    .line 115
    invoke-direct {v5}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 116
    .line 117
    .line 118
    sget-object v15, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 119
    .line 120
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 121
    .line 122
    invoke-static {v15, v3, v11}, Lcom/mikepenz/fastadapter/VerboseLogger;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-static {v5, v3, v7, v4, v11}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    move-object/from16 v18, v5

    .line 137
    .line 138
    move/from16 v17, v7

    .line 139
    .line 140
    :goto_0
    if-nez v12, :cond_b

    .line 141
    .line 142
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 143
    .line 144
    .line 145
    goto/16 :goto_2

    .line 146
    .line 147
    :cond_3
    move-object/from16 v18, v5

    .line 148
    .line 149
    move/from16 v17, v7

    .line 150
    .line 151
    iget-boolean v3, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    .line 152
    .line 153
    if-eqz v3, :cond_6

    .line 154
    .line 155
    iget-object v3, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedSurfaceCombinations:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_5

    .line 162
    .line 163
    iget-object v4, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    .line 164
    .line 165
    iget-object v5, v4, Landroidx/camera/camera2/internal/HighSpeedResolver;->isHighSpeedSupported$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 166
    .line 167
    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    check-cast v5, Ljava/lang/Boolean;

    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-nez v5, :cond_4

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 181
    .line 182
    .line 183
    iget-object v4, v4, Landroidx/camera/camera2/internal/HighSpeedResolver;->maxSize$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 184
    .line 185
    invoke-virtual {v4}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    move-object/from16 v20, v4

    .line 190
    .line 191
    check-cast v20, Landroid/util/Size;

    .line 192
    .line 193
    if-eqz v20, :cond_5

    .line 194
    .line 195
    const/16 v4, 0x22

    .line 196
    .line 197
    invoke-virtual {v0, v4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 198
    .line 199
    .line 200
    move-result-object v21

    .line 201
    sget-object v4, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->QUERYABLE_VIC_FCQ_COMBINATIONS$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 202
    .line 203
    new-instance v4, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .line 207
    .line 208
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 209
    .line 210
    sget-object v23, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->CAPTURE_SESSION_TABLES:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    .line 211
    .line 212
    sget-object v24, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 213
    .line 214
    const/16 v19, 0x22

    .line 215
    .line 216
    const/16 v22, 0x0

    .line 217
    .line 218
    invoke-static/range {v19 .. v24}, Lcom/mikepenz/fastadapter/VerboseLogger;->transformSurfaceConfig(ILandroid/util/Size;Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    new-instance v7, Landroidx/camera/core/impl/SurfaceCombination;

    .line 223
    .line 224
    invoke-direct {v7}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    new-instance v7, Landroidx/camera/core/impl/SurfaceCombination;

    .line 234
    .line 235
    invoke-direct {v7}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v7, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 248
    .line 249
    .line 250
    :cond_5
    :goto_1
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_6
    iget v3, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    .line 255
    .line 256
    const/16 v4, 0x8

    .line 257
    .line 258
    if-ne v3, v4, :cond_a

    .line 259
    .line 260
    const/4 v4, 0x1

    .line 261
    if-eq v12, v4, :cond_9

    .line 262
    .line 263
    iget-object v3, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations:Ljava/util/ArrayList;

    .line 264
    .line 265
    const/4 v4, 0x2

    .line 266
    if-eq v12, v4, :cond_8

    .line 267
    .line 268
    if-ne v6, v10, :cond_7

    .line 269
    .line 270
    iget-object v3, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->previewStabilizationSurfaceCombinations:Ljava/util/ArrayList;

    .line 271
    .line 272
    :cond_7
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_8
    iget-object v4, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->ultraHighSurfaceCombinations:Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 279
    .line 280
    .line 281
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_9
    iget-object v3, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->concurrentSurfaceCombinations:Ljava/util/ArrayList;

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_a
    const/16 v4, 0xa

    .line 289
    .line 290
    if-ne v3, v4, :cond_b

    .line 291
    .line 292
    if-nez v12, :cond_b

    .line 293
    .line 294
    iget-object v3, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinations10Bit:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 297
    .line 298
    .line 299
    :cond_b
    :goto_2
    move-object v3, v9

    .line 300
    :goto_3
    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-object v8, v3

    .line 304
    :goto_4
    if-eqz v8, :cond_d

    .line 305
    .line 306
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-eqz v3, :cond_d

    .line 311
    .line 312
    :cond_c
    const/4 v3, 0x0

    .line 313
    goto :goto_5

    .line 314
    :cond_d
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-eqz v5, :cond_c

    .line 323
    .line 324
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    check-cast v5, Landroidx/camera/core/impl/SurfaceCombination;

    .line 329
    .line 330
    invoke-virtual {v5, v2}, Landroidx/camera/core/impl/SurfaceCombination;->getOrderedSupportedSurfaceConfigList(Ljava/util/ArrayList;)Ljava/util/List;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    if-eqz v5, :cond_e

    .line 335
    .line 336
    const/4 v3, 0x1

    .line 337
    :goto_5
    if-eqz v3, :cond_1f

    .line 338
    .line 339
    if-eqz v17, :cond_1f

    .line 340
    .line 341
    new-instance v3, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    .line 342
    .line 343
    invoke-direct {v3}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    const/4 v7, 0x0

    .line 351
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    .line 353
    .line 354
    move-result v8

    .line 355
    if-eqz v8, :cond_1d

    .line 356
    .line 357
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v8

    .line 361
    add-int/lit8 v9, v7, 0x1

    .line 362
    .line 363
    if-ltz v7, :cond_1c

    .line 364
    .line 365
    check-cast v8, Landroidx/camera/core/impl/SurfaceConfig;

    .line 366
    .line 367
    iget v12, v8, Landroidx/camera/core/impl/SurfaceConfig;->imageFormat:I

    .line 368
    .line 369
    invoke-virtual {v0, v12}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 370
    .line 371
    .line 372
    move-result-object v12

    .line 373
    iget-object v13, v12, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->maximumSizeMap:Ljava/util/LinkedHashMap;

    .line 374
    .line 375
    iget v14, v8, Landroidx/camera/core/impl/SurfaceConfig;->imageFormat:I

    .line 376
    .line 377
    iget-object v15, v8, Landroidx/camera/core/impl/SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 378
    .line 379
    const/16 v17, 0x0

    .line 380
    .line 381
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    const/16 v19, 0x0

    .line 386
    .line 387
    const/4 v11, 0x3

    .line 388
    if-eq v4, v11, :cond_f

    .line 389
    .line 390
    packed-switch v4, :pswitch_data_0

    .line 391
    .line 392
    .line 393
    iget-object v4, v15, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->relatedFixedSize:Landroid/util/Size;

    .line 394
    .line 395
    goto :goto_7

    .line 396
    :pswitch_0
    const-string v0, "Not supported config size"

    .line 397
    .line 398
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    return v17

    .line 402
    :pswitch_1
    iget-object v4, v12, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->ultraMaximumSizeMap:Ljava/util/LinkedHashMap;

    .line 403
    .line 404
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 405
    .line 406
    .line 407
    move-result-object v12

    .line 408
    invoke-virtual {v4, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    check-cast v4, Landroid/util/Size;

    .line 413
    .line 414
    goto :goto_7

    .line 415
    :pswitch_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    invoke-virtual {v13, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    check-cast v4, Landroid/util/Size;

    .line 424
    .line 425
    goto :goto_7

    .line 426
    :pswitch_3
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    invoke-virtual {v13, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    check-cast v4, Landroid/util/Size;

    .line 435
    .line 436
    goto :goto_7

    .line 437
    :pswitch_4
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 438
    .line 439
    .line 440
    move-result-object v4

    .line 441
    invoke-virtual {v13, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    check-cast v4, Landroid/util/Size;

    .line 446
    .line 447
    goto :goto_7

    .line 448
    :pswitch_5
    iget-object v4, v12, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->recordSize:Landroid/util/Size;

    .line 449
    .line 450
    goto :goto_7

    .line 451
    :cond_f
    iget-object v4, v12, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->previewSize:Landroid/util/Size;

    .line 452
    .line 453
    :goto_7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    move-object/from16 v12, p5

    .line 457
    .line 458
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v7

    .line 462
    check-cast v7, Ljava/lang/Number;

    .line 463
    .line 464
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 465
    .line 466
    .line 467
    move-result v7

    .line 468
    move-object/from16 v13, p4

    .line 469
    .line 470
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v7

    .line 474
    check-cast v7, Landroidx/camera/core/impl/UseCaseConfig;

    .line 475
    .line 476
    move-object/from16 v14, p3

    .line 477
    .line 478
    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v15

    .line 482
    if-eqz v15, :cond_1b

    .line 483
    .line 484
    check-cast v15, Landroidx/camera/core/DynamicRange;

    .line 485
    .line 486
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    invoke-interface {v7}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 490
    .line 491
    .line 492
    move-result v11

    .line 493
    move-object/from16 v21, v5

    .line 494
    .line 495
    new-instance v5, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion$createSessionConfigBuilder$deferrableSurface$1;

    .line 496
    .line 497
    invoke-direct {v5, v11, v4}, Landroidx/camera/core/impl/DeferrableSurface;-><init>(ILandroid/util/Size;)V

    .line 498
    .line 499
    .line 500
    sget-object v11, Landroidx/camera/core/featuregroup/impl/UseCaseType;->Companion:Lcom/jcraft/jzlib/Adler32;

    .line 501
    .line 502
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    invoke-interface {v7}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 506
    .line 507
    .line 508
    move-result-object v11

    .line 509
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 510
    .line 511
    .line 512
    move-result v11

    .line 513
    move/from16 v22, v9

    .line 514
    .line 515
    if-eqz v11, :cond_14

    .line 516
    .line 517
    const/4 v9, 0x1

    .line 518
    if-eq v11, v9, :cond_13

    .line 519
    .line 520
    const/4 v9, 0x2

    .line 521
    if-eq v11, v9, :cond_12

    .line 522
    .line 523
    const/4 v9, 0x3

    .line 524
    if-eq v11, v9, :cond_11

    .line 525
    .line 526
    const/4 v9, 0x4

    .line 527
    if-eq v11, v9, :cond_10

    .line 528
    .line 529
    sget-object v9, Landroidx/camera/core/featuregroup/impl/UseCaseType;->UNDEFINED:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 530
    .line 531
    goto :goto_8

    .line 532
    :cond_10
    sget-object v9, Landroidx/camera/core/featuregroup/impl/UseCaseType;->STREAM_SHARING:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 533
    .line 534
    goto :goto_8

    .line 535
    :cond_11
    sget-object v9, Landroidx/camera/core/featuregroup/impl/UseCaseType;->VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 536
    .line 537
    goto :goto_8

    .line 538
    :cond_12
    sget-object v9, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_ANALYSIS:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 539
    .line 540
    goto :goto_8

    .line 541
    :cond_13
    sget-object v9, Landroidx/camera/core/featuregroup/impl/UseCaseType;->PREVIEW:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 542
    .line 543
    goto :goto_8

    .line 544
    :cond_14
    sget-object v9, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    .line 545
    .line 546
    :goto_8
    iget-object v9, v9, Landroidx/camera/core/featuregroup/impl/UseCaseType;->surfaceClass:Ljava/lang/Class;

    .line 547
    .line 548
    if-eqz v9, :cond_15

    .line 549
    .line 550
    iput-object v9, v5, Landroidx/camera/core/impl/DeferrableSurface;->mContainerClass:Ljava/lang/Class;

    .line 551
    .line 552
    :cond_15
    invoke-static {v7, v4}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 553
    .line 554
    .line 555
    move-result-object v4

    .line 556
    iget-object v9, v4, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Lorg/apache/james/mime4j/stream/RawField;

    .line 557
    .line 558
    const/4 v11, -0x1

    .line 559
    invoke-virtual {v4, v5, v15, v11}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;I)V

    .line 560
    .line 561
    .line 562
    iget-object v5, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    .line 563
    .line 564
    sget-object v11, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 565
    .line 566
    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v11

    .line 570
    if-nez v11, :cond_16

    .line 571
    .line 572
    move-object v11, v5

    .line 573
    goto :goto_9

    .line 574
    :cond_16
    move-object/from16 v11, v19

    .line 575
    .line 576
    :goto_9
    if-nez v11, :cond_17

    .line 577
    .line 578
    sget-object v11, Landroidx/camera/core/featuregroup/impl/feature/FpsRangeFeature;->DEFAULT_FPS_RANGE:Landroid/util/Range;

    .line 579
    .line 580
    :cond_17
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    sget-object v5, Landroidx/camera/core/impl/CaptureConfig;->OPTION_RESOLVED_FRAME_RATE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 584
    .line 585
    iget-object v15, v9, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 586
    .line 587
    check-cast v15, Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 588
    .line 589
    invoke-virtual {v15, v5, v11}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 590
    .line 591
    .line 592
    if-ne v6, v10, :cond_18

    .line 593
    .line 594
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 595
    .line 596
    .line 597
    sget-object v5, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_PREVIEW_STABILIZATION_MODE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 598
    .line 599
    iget-object v9, v9, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 600
    .line 601
    check-cast v9, Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 602
    .line 603
    move-object/from16 v11, v18

    .line 604
    .line 605
    invoke-virtual {v9, v5, v11}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    goto :goto_a

    .line 609
    :cond_18
    move-object/from16 v11, v18

    .line 610
    .line 611
    sget-object v5, Landroidx/camera/core/impl/stabilization/VideoStabilization;->ON:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    .line 612
    .line 613
    if-ne v6, v5, :cond_19

    .line 614
    .line 615
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 616
    .line 617
    .line 618
    sget-object v5, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_VIDEO_STABILIZATION_MODE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 619
    .line 620
    iget-object v9, v9, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 621
    .line 622
    check-cast v9, Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 623
    .line 624
    invoke-virtual {v9, v5, v11}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 625
    .line 626
    .line 627
    :cond_19
    :goto_a
    invoke-virtual {v4}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 628
    .line 629
    .line 630
    move-result-object v4

    .line 631
    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->add(Landroidx/camera/core/impl/SessionConfig;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v3}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->isValid()Z

    .line 635
    .line 636
    .line 637
    move-result v4

    .line 638
    new-instance v5, Ljava/lang/StringBuilder;

    .line 639
    .line 640
    const-string v9, "Cannot create a combined SessionConfig for feature combo after adding "

    .line 641
    .line 642
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    const-string v7, " with "

    .line 649
    .line 650
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    const-string v7, " due to ["

    .line 657
    .line 658
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    iget-boolean v7, v3, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mTemplateSet:Z

    .line 662
    .line 663
    if-nez v7, :cond_1a

    .line 664
    .line 665
    const-string v7, "Template is not set"

    .line 666
    .line 667
    goto :goto_b

    .line 668
    :cond_1a
    iget-object v7, v3, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->mInvalidReason:Ljava/lang/StringBuilder;

    .line 669
    .line 670
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v7

    .line 674
    :goto_b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    const-string v7, "]; surfaceConfigList = "

    .line 678
    .line 679
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    const-string v7, ", featureSettings = "

    .line 686
    .line 687
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    const-string v7, ", newUseCaseConfigs = "

    .line 694
    .line 695
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v5

    .line 705
    invoke-static {v5, v4}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 706
    .line 707
    .line 708
    move-object/from16 v18, v11

    .line 709
    .line 710
    move-object/from16 v5, v21

    .line 711
    .line 712
    move/from16 v7, v22

    .line 713
    .line 714
    goto/16 :goto_6

    .line 715
    .line 716
    :cond_1b
    const-string v0, "Required value was null."

    .line 717
    .line 718
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    return v17

    .line 722
    :cond_1c
    const/16 v19, 0x0

    .line 723
    .line 724
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 725
    .line 726
    .line 727
    throw v19

    .line 728
    :cond_1d
    invoke-virtual {v3}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    iget-object v0, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->featureCombinationQuery:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;

    .line 733
    .line 734
    invoke-interface {v0, v1}, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;->isSupported(Landroidx/camera/core/impl/SessionConfig;)Z

    .line 735
    .line 736
    .line 737
    move-result v0

    .line 738
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    .line 744
    .line 745
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 750
    .line 751
    .line 752
    move-result v2

    .line 753
    if-eqz v2, :cond_1e

    .line 754
    .line 755
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    check-cast v2, Landroidx/camera/core/impl/DeferrableSurface;

    .line 760
    .line 761
    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 762
    .line 763
    .line 764
    goto :goto_c

    .line 765
    :cond_1e
    return v0

    .line 766
    :cond_1f
    return v3

    .line 767
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final generateSurfaceSizeDefinition()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getPreviewSize()Landroid/util/Size;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getRecordSizeFromCamcorderProfile()Landroid/util/Size;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    :goto_0
    move-object v6, v0

    .line 19
    goto :goto_5

    .line 20
    :catch_0
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->impl:Landroidx/biometric/BiometricPrompt;

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    :try_start_1
    const-class v2, Landroid/media/MediaRecorder;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    .line 34
    .line 35
    .line 36
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    new-instance v2, Lkotlin/Result$Failure;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    move-object v0, v1

    .line 46
    :goto_1
    move-object v2, v0

    .line 47
    :goto_2
    nop

    .line 48
    instance-of v0, v2, Lkotlin/Result$Failure;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    move-object v2, v1

    .line 53
    :cond_2
    check-cast v2, [Landroid/util/Size;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    :cond_3
    move-object v0, v1

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    new-instance v0, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    invoke-direct {v0, v3}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>(Z)V

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 66
    .line 67
    .line 68
    array-length v0, v2

    .line 69
    const/4 v3, 0x0

    .line 70
    :goto_3
    if-ge v3, v0, :cond_3

    .line 71
    .line 72
    aget-object v5, v2, v3

    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    sget-object v7, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_1080P:Landroid/util/Size;

    .line 79
    .line 80
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-gt v6, v8, :cond_5

    .line 85
    .line 86
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-gt v6, v7, :cond_5

    .line 95
    .line 96
    move-object v0, v5

    .line 97
    goto :goto_4

    .line 98
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :goto_4
    if-eqz v0, :cond_6

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    sget-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_480P:Landroid/util/Size;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :goto_5
    sget-object v2, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_VGA:Landroid/util/Size;

    .line 111
    .line 112
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 113
    .line 114
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 115
    .line 116
    .line 117
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 118
    .line 119
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 120
    .line 121
    .line 122
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 123
    .line 124
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 125
    .line 126
    .line 127
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 128
    .line 129
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 130
    .line 131
    .line 132
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 133
    .line 134
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 135
    .line 136
    .line 137
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 138
    .line 139
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 140
    .line 141
    .line 142
    new-instance v1, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 143
    .line 144
    invoke-direct/range {v1 .. v10}, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;-><init>(Landroid/util/Size;Ljava/util/LinkedHashMap;Landroid/util/Size;Ljava/util/LinkedHashMap;Landroid/util/Size;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    .line 145
    .line 146
    .line 147
    iput-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinition:Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 148
    .line 149
    return-void
.end method

.method public final getMaxFrameRate(ILandroid/util/Size;ZI)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_6

    .line 3
    .line 4
    const/16 p3, 0x22

    .line 5
    .line 6
    if-ne p1, p3, :cond_5

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    if-nez p0, :cond_1

    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p1, "No supported high speed  fps for "

    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p1, "HighSpeedResolver"

    .line 45
    .line 46
    invoke-static {p1, p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/util/Range;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Ljava/lang/Integer;

    .line 72
    .line 73
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Landroid/util/Range;

    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    if-gez p3, :cond_2

    .line 96
    .line 97
    move-object p1, p2

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    goto/16 :goto_3

    .line 107
    .line 108
    :cond_4
    invoke-static {}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m()V

    .line 109
    .line 110
    .line 111
    return v0

    .line 112
    :cond_5
    const-string p0, "Check failed."

    .line 113
    .line 114
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return v0

    .line 118
    :cond_6
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getStreamConfigurationMapCompat()Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    const-string v1, "CXCP"

    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    const-wide/16 v2, 0x0

    .line 128
    .line 129
    :try_start_0
    iget-object p3, p3, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->impl:Landroidx/biometric/BiometricPrompt;

    .line 130
    .line 131
    invoke-virtual {p3, p1, p2}, Landroidx/biometric/BiometricPrompt;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    .line 132
    .line 133
    .line 134
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_2

    .line 136
    :catch_0
    move-exception p3

    .line 137
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isWarnEnabled()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_7

    .line 142
    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v5, "Unable to get min frame duration for format = "

    .line 146
    .line 147
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v5, " and size = "

    .line 154
    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-static {v1, v4, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .line 167
    .line 168
    :cond_7
    move-wide v4, v2

    .line 169
    :goto_2
    cmp-long p3, v4, v2

    .line 170
    .line 171
    if-gtz p3, :cond_9

    .line 172
    .line 173
    iget-boolean p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isManualSensorSupported:Z

    .line 174
    .line 175
    if-eqz p0, :cond_8

    .line 176
    .line 177
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isWarnEnabled()Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eqz p0, :cond_a

    .line 182
    .line 183
    new-instance p0, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string p3, "minFrameDuration: "

    .line 186
    .line 187
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string p3, " is invalid for imageFormat = "

    .line 194
    .line 195
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string p1, ", size = "

    .line 202
    .line 203
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_8
    const v0, 0x7fffffff

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_9
    const-wide p0, 0x41cdcd6500000000L    # 1.0E9

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    long-to-double p2, v4

    .line 227
    div-double/2addr p0, p2

    .line 228
    double-to-int v0, p0

    .line 229
    :cond_a
    :goto_3
    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    .line 230
    .line 231
    .line 232
    move-result p0

    .line 233
    return p0
.end method

.method public final getOrderedSupportedStreamUseCaseSurfaceConfigList(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/List;
    .locals 11

    .line 1
    sget-object v0, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->STREAM_USE_CASE_STREAM_SPEC_OPTION:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 2
    .line 3
    iget v0, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    iget v0, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    if-ne v0, v2, :cond_7

    .line 13
    .line 14
    iget-boolean p1, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    .line 15
    .line 16
    if-nez p1, :cond_7

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceCombinationsStreamUseCase:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_7

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroidx/camera/core/impl/SurfaceCombination;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Landroidx/camera/core/impl/SurfaceCombination;->getOrderedSupportedSurfaceConfigList(Ljava/util/ArrayList;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    sget-object v2, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->STREAM_USE_CASE_STREAM_SPEC_OPTION:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/4 v3, 0x0

    .line 49
    move v4, v3

    .line 50
    :goto_0
    const/4 v5, 0x1

    .line 51
    if-ge v4, v2, :cond_6

    .line 52
    .line 53
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Landroidx/camera/core/impl/SurfaceConfig;

    .line 58
    .line 59
    iget-object v6, v6, Landroidx/camera/core/impl/SurfaceConfig;->streamUseCase:Landroidx/camera/core/impl/StreamUseCase;

    .line 60
    .line 61
    iget-wide v6, v6, Landroidx/camera/core/impl/StreamUseCase;->value:J

    .line 62
    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-interface {p3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    sget-object v9, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->STREAM_SHARING:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 72
    .line 73
    if-eqz v8, :cond_2

    .line 74
    .line 75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {p3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;

    .line 84
    .line 85
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    iget-object v8, v8, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->captureTypes:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    if-ne v10, v5, :cond_1

    .line 95
    .line 96
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    move-object v9, v5

    .line 101
    check-cast v9, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 102
    .line 103
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {v9, v6, v7, v8}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->isEligibleCaptureType(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;JLjava/util/List;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_4

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-interface {p4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_5

    .line 122
    .line 123
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {p4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    check-cast v5, Landroidx/camera/core/impl/UseCaseConfig;

    .line 135
    .line 136
    invoke-interface {v5}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-interface {v5}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    if-ne v10, v9, :cond_3

    .line 148
    .line 149
    check-cast v5, Landroidx/camera/core/streamsharing/StreamSharingConfig;

    .line 150
    .line 151
    sget-object v9, Landroidx/camera/core/streamsharing/StreamSharingConfig;->OPTION_CAPTURE_TYPES:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 152
    .line 153
    invoke-static {v5, v9}, Landroidx/camera/core/impl/Config$-CC;->$default$retrieveOption(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/AutoValue_Config_Option;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    check-cast v5, Ljava/util/List;

    .line 158
    .line 159
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 164
    .line 165
    :goto_1
    invoke-static {v8, v6, v7, v5}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->isEligibleCaptureType(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;JLjava/util/List;)Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-nez v5, :cond_4

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_5
    const-string p0, "SurfaceConfig does not map to any use case"

    .line 176
    .line 177
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    return-object v1

    .line 181
    :cond_6
    move v3, v5

    .line 182
    :goto_2
    new-instance v2, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 183
    .line 184
    const/4 v4, 0x3

    .line 185
    invoke-direct {v2, v4, p0, v0}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    new-instance v4, Lkotlin/SynchronizedLazyImpl;

    .line 189
    .line 190
    invoke-direct {v4, v2}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 191
    .line 192
    .line 193
    if-eqz v3, :cond_0

    .line 194
    .line 195
    invoke-virtual {v4}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Ljava/lang/Boolean;

    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_0

    .line 206
    .line 207
    return-object v0

    .line 208
    :cond_7
    return-object v1
.end method

.method public final getRecordSizeFromCamcorderProfile()Landroid/util/Size;
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/16 v2, 0xd

    .line 7
    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/16 v4, 0x8

    .line 19
    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const/16 v6, 0xc

    .line 25
    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const/4 v7, 0x6

    .line 31
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    const/4 v9, 0x5

    .line 36
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    const/4 v11, 0x4

    .line 41
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v12

    .line 45
    new-array v4, v4, [Ljava/lang/Integer;

    .line 46
    .line 47
    const/4 v13, 0x0

    .line 48
    aput-object v1, v4, v13

    .line 49
    .line 50
    aput-object v2, v4, v0

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    aput-object v3, v4, v0

    .line 54
    .line 55
    const/4 v0, 0x3

    .line 56
    aput-object v5, v4, v0

    .line 57
    .line 58
    aput-object v6, v4, v11

    .line 59
    .line 60
    aput-object v8, v4, v9

    .line 61
    .line 62
    aput-object v10, v4, v7

    .line 63
    .line 64
    const/4 v0, 0x7

    .line 65
    aput-object v12, v4, v0

    .line 66
    .line 67
    invoke-static {v4}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/Number;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    iget-object v2, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->encoderProfilesProvider:Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 92
    .line 93
    invoke-interface {v2, v1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->hasProfile(I)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_0

    .line 98
    .line 99
    invoke-interface {v2, v1}, Landroidx/camera/core/impl/EncoderProfilesProvider;->getAll(I)Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_0

    .line 104
    .line 105
    iget-object v1, v1, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy;->videoProfiles:Ljava/util/List;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_0

    .line 115
    .line 116
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    check-cast p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;

    .line 124
    .line 125
    new-instance v0, Landroid/util/Size;

    .line 126
    .line 127
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->width:I

    .line 128
    .line 129
    iget p0, p0, Landroidx/camera/core/impl/AutoValue_EncoderProfilesProxy_VideoProfileProxy;->height:I

    .line 130
    .line 131
    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    .line 132
    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_1
    const/4 p0, 0x0

    .line 136
    return-object p0
.end method

.method public final getStreamConfigurationMapCompat()Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;
    .locals 3

    .line 1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    check-cast v1, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v1, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 20
    .line 21
    new-instance v2, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v0, v2}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    const-string p0, "Cannot retrieve SCALER_STREAM_CONFIGURATION_MAP"

    .line 31
    .line 32
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public final getSuggestedStreamSpecifications(ILjava/util/ArrayList;Ljava/util/LinkedHashMap;Landroidx/camera/core/impl/stabilization/VideoStabilization;ZZ)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v8, p4

    .line 6
    .line 7
    move/from16 v11, p6

    .line 8
    .line 9
    iget-object v0, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 10
    .line 11
    iget-object v2, v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->calculatePreviewSize()Landroid/util/Size;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    iput-object v4, v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v2

    .line 21
    iget-object v0, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinition:Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->generateSurfaceSizeDefinition()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getPreviewSize()Landroid/util/Size;

    .line 32
    .line 33
    .line 34
    move-result-object v15

    .line 35
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v13, v0, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->analysisSize:Landroid/util/Size;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v14, v0, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->s720pSizeMap:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v0, v0, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->s1440pSizeMap:Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v2, v2, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->recordSize:Landroid/util/Size;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    iget-object v4, v4, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->maximumSizeMap:Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    iget-object v5, v5, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->maximum4x3SizeMap:Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    iget-object v6, v6, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->maximum16x9SizeMap:Ljava/util/LinkedHashMap;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    iget-object v7, v7, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->ultraMaximumSizeMap:Ljava/util/LinkedHashMap;

    .line 82
    .line 83
    new-instance v12, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 84
    .line 85
    move-object/from16 v16, v0

    .line 86
    .line 87
    move-object/from16 v17, v2

    .line 88
    .line 89
    move-object/from16 v18, v4

    .line 90
    .line 91
    move-object/from16 v19, v5

    .line 92
    .line 93
    move-object/from16 v20, v6

    .line 94
    .line 95
    move-object/from16 v21, v7

    .line 96
    .line 97
    invoke-direct/range {v12 .. v21}, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;-><init>(Landroid/util/Size;Ljava/util/LinkedHashMap;Landroid/util/Size;Ljava/util/LinkedHashMap;Landroid/util/Size;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    .line 98
    .line 99
    .line 100
    iput-object v12, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinition:Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 101
    .line 102
    :goto_0
    sget-object v0, Landroidx/camera/camera2/internal/HighSpeedResolver;->DEFAULT_FPS:Landroid/util/Range;

    .line 103
    .line 104
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Ljava/util/Collection;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    new-instance v2, Ljava/util/ArrayList;

    .line 114
    .line 115
    const/16 v4, 0xa

    .line 116
    .line 117
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_1

    .line 133
    .line 134
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;

    .line 139
    .line 140
    iget v6, v6, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->sessionType:I

    .line 141
    .line 142
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    .line 151
    .line 152
    new-instance v5, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .line 160
    .line 161
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-eqz v6, :cond_2

    .line 170
    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    check-cast v6, Landroidx/camera/core/impl/UseCaseConfig;

    .line 176
    .line 177
    invoke-interface {v6}, Landroidx/camera/core/impl/UseCaseConfig;->getSessionType()I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_2
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    const/4 v5, 0x1

    .line 198
    if-eqz v2, :cond_4

    .line 199
    .line 200
    :cond_3
    const/4 v10, 0x0

    .line 201
    goto :goto_3

    .line 202
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eqz v6, :cond_3

    .line 211
    .line 212
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    check-cast v6, Ljava/lang/Number;

    .line 217
    .line 218
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    if-ne v6, v5, :cond_5

    .line 223
    .line 224
    move v10, v5

    .line 225
    :goto_3
    const/4 v2, 0x0

    .line 226
    if-eqz v10, :cond_8

    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    if-eqz v6, :cond_6

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    if-eqz v6, :cond_8

    .line 244
    .line 245
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    check-cast v6, Ljava/lang/Number;

    .line 250
    .line 251
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    if-ne v6, v5, :cond_7

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_7
    const-string v0, "All sessionTypes should be high-speed when any of them is high-speed"

    .line 259
    .line 260
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    return-object v2

    .line 264
    :cond_8
    :goto_5
    if-eqz v10, :cond_e

    .line 265
    .line 266
    iget-object v0, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    check-cast v6, Ljava/lang/Iterable;

    .line 276
    .line 277
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-static {v6}, Landroidx/camera/camera2/internal/HighSpeedResolver;->findCommonElements(Ljava/util/List;)Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    new-instance v7, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    :cond_9
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    if-eqz v9, :cond_a

    .line 299
    .line 300
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    move-object v12, v9

    .line 305
    check-cast v12, Landroid/util/Size;

    .line 306
    .line 307
    iget-object v13, v0, Landroidx/camera/camera2/internal/HighSpeedResolver;->supportedSizes$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 308
    .line 309
    invoke-virtual {v13}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v13

    .line 313
    check-cast v13, Ljava/util/List;

    .line 314
    .line 315
    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v12

    .line 319
    if-eqz v12, :cond_9

    .line 320
    .line 321
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_a
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 326
    .line 327
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    invoke-static {v6}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    invoke-direct {v0, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual/range {p3 .. p3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    check-cast v6, Ljava/lang/Iterable;

    .line 343
    .line 344
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 349
    .line 350
    .line 351
    move-result v9

    .line 352
    if-eqz v9, :cond_d

    .line 353
    .line 354
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v9

    .line 358
    check-cast v9, Ljava/util/Map$Entry;

    .line 359
    .line 360
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v12

    .line 364
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v9

    .line 368
    check-cast v9, Ljava/util/List;

    .line 369
    .line 370
    new-instance v13, Ljava/util/ArrayList;

    .line 371
    .line 372
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v14

    .line 383
    if-eqz v14, :cond_c

    .line 384
    .line 385
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v14

    .line 389
    move-object v5, v14

    .line 390
    check-cast v5, Landroid/util/Size;

    .line 391
    .line 392
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    if-eqz v5, :cond_b

    .line 397
    .line 398
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    :cond_b
    const/4 v5, 0x1

    .line 402
    goto :goto_8

    .line 403
    :cond_c
    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    const/4 v5, 0x1

    .line 407
    goto :goto_7

    .line 408
    :cond_d
    move-object/from16 v17, v0

    .line 409
    .line 410
    goto :goto_9

    .line 411
    :cond_e
    move-object/from16 v17, p3

    .line 412
    .line 413
    :goto_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    check-cast v0, Ljava/lang/Iterable;

    .line 418
    .line 419
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 420
    .line 421
    .line 422
    move-result-object v5

    .line 423
    new-instance v6, Ljava/util/ArrayList;

    .line 424
    .line 425
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .line 427
    .line 428
    new-instance v0, Ljava/util/ArrayList;

    .line 429
    .line 430
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .line 432
    .line 433
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    :cond_f
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 438
    .line 439
    .line 440
    move-result v9

    .line 441
    if-eqz v9, :cond_10

    .line 442
    .line 443
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v9

    .line 447
    check-cast v9, Landroidx/camera/core/impl/UseCaseConfig;

    .line 448
    .line 449
    invoke-interface {v9}, Landroidx/camera/core/impl/UseCaseConfig;->getSurfaceOccupancyPriority()I

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 454
    .line 455
    .line 456
    move-result-object v12

    .line 457
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v12

    .line 461
    if-nez v12, :cond_f

    .line 462
    .line 463
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 464
    .line 465
    .line 466
    move-result-object v9

    .line 467
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    goto :goto_a

    .line 471
    :cond_10
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sort(Ljava/util/List;)V

    .line 472
    .line 473
    .line 474
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 482
    .line 483
    .line 484
    move-result v7

    .line 485
    if-eqz v7, :cond_13

    .line 486
    .line 487
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v7

    .line 491
    check-cast v7, Ljava/lang/Number;

    .line 492
    .line 493
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 494
    .line 495
    .line 496
    move-result v7

    .line 497
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 498
    .line 499
    .line 500
    move-result-object v9

    .line 501
    :cond_12
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 502
    .line 503
    .line 504
    move-result v12

    .line 505
    if-eqz v12, :cond_11

    .line 506
    .line 507
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v12

    .line 511
    check-cast v12, Landroidx/camera/core/impl/UseCaseConfig;

    .line 512
    .line 513
    invoke-interface {v12}, Landroidx/camera/core/impl/UseCaseConfig;->getSurfaceOccupancyPriority()I

    .line 514
    .line 515
    .line 516
    move-result v13

    .line 517
    if-ne v7, v13, :cond_12

    .line 518
    .line 519
    invoke-interface {v5, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 520
    .line 521
    .line 522
    move-result v12

    .line 523
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 524
    .line 525
    .line 526
    move-result-object v12

    .line 527
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    goto :goto_b

    .line 531
    :cond_13
    iget-object v0, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->dynamicRangeResolver:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 532
    .line 533
    invoke-virtual {v0, v3, v5, v6}, Lcom/fsck/k9/mailstore/LocalFolder$12;->resolveAndValidateDynamicRanges(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)Ljava/util/LinkedHashMap;

    .line 534
    .line 535
    .line 536
    move-result-object v7

    .line 537
    const-string v0, "CXCP"

    .line 538
    .line 539
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-eqz v0, :cond_14

    .line 544
    .line 545
    const-string v0, "CXCP"

    .line 546
    .line 547
    new-instance v9, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    const-string v12, "resolvedDynamicRanges = "

    .line 550
    .line 551
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v9

    .line 561
    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .line 563
    .line 564
    :cond_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 569
    .line 570
    .line 571
    move-result v9

    .line 572
    const/16 v12, 0x1005

    .line 573
    .line 574
    if-eqz v9, :cond_16

    .line 575
    .line 576
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v9

    .line 580
    check-cast v9, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;

    .line 581
    .line 582
    iget v9, v9, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->imageFormat:I

    .line 583
    .line 584
    if-ne v9, v12, :cond_15

    .line 585
    .line 586
    goto :goto_c

    .line 587
    :cond_16
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 596
    .line 597
    .line 598
    move-result v9

    .line 599
    if-eqz v9, :cond_18

    .line 600
    .line 601
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v9

    .line 605
    check-cast v9, Landroidx/camera/core/impl/UseCaseConfig;

    .line 606
    .line 607
    invoke-interface {v9}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 608
    .line 609
    .line 610
    move-result v9

    .line 611
    if-ne v9, v12, :cond_17

    .line 612
    .line 613
    :goto_c
    const/4 v9, 0x1

    .line 614
    goto :goto_d

    .line 615
    :cond_18
    const/4 v9, 0x0

    .line 616
    :goto_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    move-object v12, v2

    .line 621
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 622
    .line 623
    .line 624
    move-result v13

    .line 625
    if-eqz v13, :cond_1b

    .line 626
    .line 627
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v13

    .line 631
    check-cast v13, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;

    .line 632
    .line 633
    iget-boolean v13, v13, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->strictFrameRateRequired:Z

    .line 634
    .line 635
    if-eqz v12, :cond_1a

    .line 636
    .line 637
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 638
    .line 639
    .line 640
    move-result-object v14

    .line 641
    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    move-result v12

    .line 645
    if-eqz v12, :cond_19

    .line 646
    .line 647
    goto :goto_f

    .line 648
    :cond_19
    const-string v0, "All isStrictFpsRequired should be the same"

    .line 649
    .line 650
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    return-object v2

    .line 654
    :cond_1a
    :goto_f
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 655
    .line 656
    .line 657
    move-result-object v12

    .line 658
    goto :goto_e

    .line 659
    :cond_1b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 664
    .line 665
    .line 666
    move-result v13

    .line 667
    if-eqz v13, :cond_1e

    .line 668
    .line 669
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v13

    .line 673
    check-cast v13, Landroidx/camera/core/impl/UseCaseConfig;

    .line 674
    .line 675
    invoke-interface {v13}, Landroidx/camera/core/impl/UseCaseConfig;->isStrictFrameRateRequired()Z

    .line 676
    .line 677
    .line 678
    move-result v13

    .line 679
    if-eqz v12, :cond_1d

    .line 680
    .line 681
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 682
    .line 683
    .line 684
    move-result-object v14

    .line 685
    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    move-result v12

    .line 689
    if-eqz v12, :cond_1c

    .line 690
    .line 691
    goto :goto_11

    .line 692
    :cond_1c
    const-string v0, "All isStrictFpsRequired should be the same"

    .line 693
    .line 694
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    return-object v2

    .line 698
    :cond_1d
    :goto_11
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 699
    .line 700
    .line 701
    move-result-object v12

    .line 702
    goto :goto_10

    .line 703
    :cond_1e
    if-eqz v12, :cond_1f

    .line 704
    .line 705
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 706
    .line 707
    .line 708
    move-result v0

    .line 709
    goto :goto_12

    .line 710
    :cond_1f
    const/4 v0, 0x0

    .line 711
    :goto_12
    sget-object v12, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 712
    .line 713
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 717
    .line 718
    .line 719
    move-result-object v13

    .line 720
    :goto_13
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 721
    .line 722
    .line 723
    move-result v14

    .line 724
    if-eqz v14, :cond_20

    .line 725
    .line 726
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v14

    .line 730
    check-cast v14, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;

    .line 731
    .line 732
    iget-object v14, v14, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->targetFrameRate:Landroid/util/Range;

    .line 733
    .line 734
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 735
    .line 736
    .line 737
    invoke-static {v14, v12, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedTargetFrameRate(Landroid/util/Range;Landroid/util/Range;Z)Landroid/util/Range;

    .line 738
    .line 739
    .line 740
    move-result-object v12

    .line 741
    goto :goto_13

    .line 742
    :cond_20
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 743
    .line 744
    .line 745
    move-result-object v13

    .line 746
    :goto_14
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 747
    .line 748
    .line 749
    move-result v14

    .line 750
    if-eqz v14, :cond_21

    .line 751
    .line 752
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v14

    .line 756
    check-cast v14, Ljava/lang/Number;

    .line 757
    .line 758
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    .line 759
    .line 760
    .line 761
    move-result v14

    .line 762
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v14

    .line 766
    check-cast v14, Landroidx/camera/core/impl/UseCaseConfig;

    .line 767
    .line 768
    move-object/from16 v18, v2

    .line 769
    .line 770
    sget-object v2, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 771
    .line 772
    invoke-interface {v14, v2}, Landroidx/camera/core/impl/UseCaseConfig;->getTargetFrameRate(Landroid/util/Range;)Landroid/util/Range;

    .line 773
    .line 774
    .line 775
    move-result-object v2

    .line 776
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    .line 778
    .line 779
    invoke-static {v2, v12, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedTargetFrameRate(Landroid/util/Range;Landroid/util/Range;Z)Landroid/util/Range;

    .line 780
    .line 781
    .line 782
    move-result-object v12

    .line 783
    move-object/from16 v2, v18

    .line 784
    .line 785
    goto :goto_14

    .line 786
    :cond_21
    move-object/from16 v18, v2

    .line 787
    .line 788
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 793
    .line 794
    .line 795
    move-result v14

    .line 796
    sget-object v0, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    .line 797
    .line 798
    if-ne v8, v0, :cond_22

    .line 799
    .line 800
    const/4 v0, 0x1

    .line 801
    goto :goto_15

    .line 802
    :cond_22
    const/4 v0, 0x0

    .line 803
    :goto_15
    const-string v2, "CXCP"

    .line 804
    .line 805
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 806
    .line 807
    .line 808
    move-result v2

    .line 809
    if-eqz v2, :cond_23

    .line 810
    .line 811
    const-string v2, "CXCP"

    .line 812
    .line 813
    new-instance v13, Ljava/lang/StringBuilder;

    .line 814
    .line 815
    const-string v15, "getSuggestedStreamSpecifications: isPreviewStabilizationSupported = "

    .line 816
    .line 817
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    iget-boolean v15, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isPreviewStabilizationSupported:Z

    .line 821
    .line 822
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    const-string v15, ", isFeatureComboInvocation = "

    .line 826
    .line 827
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v13

    .line 837
    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    .line 839
    .line 840
    :cond_23
    if-eqz v0, :cond_25

    .line 841
    .line 842
    iget-boolean v0, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isPreviewStabilizationSupported:Z

    .line 843
    .line 844
    if-nez v0, :cond_25

    .line 845
    .line 846
    if-nez v11, :cond_24

    .line 847
    .line 848
    goto :goto_16

    .line 849
    :cond_24
    const-string v0, "Preview stabilization is not supported by the camera."

    .line 850
    .line 851
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    return-object v18

    .line 855
    :cond_25
    :goto_16
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 856
    .line 857
    .line 858
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 867
    .line 868
    .line 869
    move-result v2

    .line 870
    if-eqz v2, :cond_27

    .line 871
    .line 872
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v2

    .line 876
    check-cast v2, Landroidx/camera/core/DynamicRange;

    .line 877
    .line 878
    iget v2, v2, Landroidx/camera/core/DynamicRange;->mBitDepth:I

    .line 879
    .line 880
    if-ne v2, v4, :cond_26

    .line 881
    .line 882
    goto :goto_17

    .line 883
    :cond_27
    const/16 v4, 0x8

    .line 884
    .line 885
    :goto_17
    new-instance v2, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    .line 886
    .line 887
    move-object v13, v12

    .line 888
    const/4 v12, 0x0

    .line 889
    move-object/from16 p3, v6

    .line 890
    .line 891
    move-object/from16 v16, v7

    .line 892
    .line 893
    const/4 v15, 0x1

    .line 894
    move/from16 v7, p5

    .line 895
    .line 896
    move v6, v4

    .line 897
    move-object v4, v2

    .line 898
    move-object v2, v5

    .line 899
    move/from16 v5, p1

    .line 900
    .line 901
    invoke-direct/range {v4 .. v14}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;-><init>(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)V

    .line 902
    .line 903
    .line 904
    move-object v10, v4

    .line 905
    invoke-virtual {v1, v10}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 909
    .line 910
    .line 911
    move-result-object v0

    .line 912
    if-nez p6, :cond_28

    .line 913
    .line 914
    sget-object v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITHOUT_FEATURE_COMBO:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    .line 915
    .line 916
    goto :goto_19

    .line 917
    :cond_28
    sget-object v4, Landroidx/camera/core/DynamicRange;->HLG_10_BIT:Landroidx/camera/core/DynamicRange;

    .line 918
    .line 919
    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 920
    .line 921
    .line 922
    move-result v0

    .line 923
    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 924
    .line 925
    .line 926
    move-result-object v4

    .line 927
    check-cast v4, Ljava/lang/Integer;

    .line 928
    .line 929
    if-nez v4, :cond_29

    .line 930
    .line 931
    goto :goto_18

    .line 932
    :cond_29
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 933
    .line 934
    .line 935
    move-result v4

    .line 936
    const/16 v5, 0x3c

    .line 937
    .line 938
    if-ne v4, v5, :cond_2a

    .line 939
    .line 940
    add-int/lit8 v0, v0, 0x1

    .line 941
    .line 942
    :cond_2a
    :goto_18
    sget-object v4, Landroidx/camera/core/impl/stabilization/VideoStabilization;->ON:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    .line 943
    .line 944
    if-eq v8, v4, :cond_2b

    .line 945
    .line 946
    sget-object v4, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    .line 947
    .line 948
    if-ne v8, v4, :cond_2c

    .line 949
    .line 950
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    .line 951
    .line 952
    :cond_2c
    if-eqz v9, :cond_2d

    .line 953
    .line 954
    add-int/lit8 v0, v0, 0x1

    .line 955
    .line 956
    :cond_2d
    if-le v0, v15, :cond_2e

    .line 957
    .line 958
    sget-object v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITH_FEATURE_COMBO:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    .line 959
    .line 960
    goto :goto_19

    .line 961
    :cond_2e
    if-ne v0, v15, :cond_2f

    .line 962
    .line 963
    sget-object v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    .line 964
    .line 965
    goto :goto_19

    .line 966
    :cond_2f
    sget-object v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITHOUT_FEATURE_COMBO:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    .line 967
    .line 968
    :goto_19
    const-string v8, "CXCP"

    .line 969
    .line 970
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 971
    .line 972
    .line 973
    move-result v4

    .line 974
    if-eqz v4, :cond_30

    .line 975
    .line 976
    new-instance v4, Ljava/lang/StringBuilder;

    .line 977
    .line 978
    const-string v5, "resolveSpecsByCheckingMethod: checkingMethod = "

    .line 979
    .line 980
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 984
    .line 985
    .line 986
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v4

    .line 990
    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    .line 992
    .line 993
    :cond_30
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 994
    .line 995
    .line 996
    move-result v0

    .line 997
    const/16 v9, 0x37f

    .line 998
    .line 999
    if-eqz v0, :cond_35

    .line 1000
    .line 1001
    if-eq v0, v15, :cond_33

    .line 1002
    .line 1003
    const/4 v4, 0x2

    .line 1004
    if-ne v0, v4, :cond_32

    .line 1005
    .line 1006
    move-object/from16 v4, v18

    .line 1007
    .line 1008
    const/4 v0, 0x0

    .line 1009
    :try_start_1
    invoke-static {v10, v0, v4, v9}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->copy$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;ZLandroid/util/Range;I)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    invoke-virtual {v1, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1014
    .line 1015
    .line 1016
    move-object/from16 v6, p3

    .line 1017
    .line 1018
    move-object v5, v2

    .line 1019
    move-object v11, v4

    .line 1020
    move-object/from16 v7, v16

    .line 1021
    .line 1022
    move-object/from16 v4, v17

    .line 1023
    .line 1024
    move-object v2, v0

    .line 1025
    :try_start_2
    invoke-virtual/range {v1 .. v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolveSpecsBySettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1029
    return-object v0

    .line 1030
    :catch_0
    move-exception v0

    .line 1031
    goto :goto_1a

    .line 1032
    :catch_1
    move-exception v0

    .line 1033
    move-object/from16 v6, p3

    .line 1034
    .line 1035
    move-object v5, v2

    .line 1036
    move-object v11, v4

    .line 1037
    move-object/from16 v7, v16

    .line 1038
    .line 1039
    move-object/from16 v4, v17

    .line 1040
    .line 1041
    :goto_1a
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v2

    .line 1045
    if-eqz v2, :cond_31

    .line 1046
    .line 1047
    const-string v2, "Failed to find a supported combination without feature combo, trying again with feature combo"

    .line 1048
    .line 1049
    invoke-static {v8, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1050
    .line 1051
    .line 1052
    :cond_31
    invoke-static {v10, v15, v11, v9}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->copy$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;ZLandroid/util/Range;I)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v2

    .line 1056
    invoke-virtual {v1, v2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)V

    .line 1057
    .line 1058
    .line 1059
    move-object/from16 v3, p2

    .line 1060
    .line 1061
    invoke-virtual/range {v1 .. v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolveSpecsBySettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    return-object v0

    .line 1066
    :cond_32
    move-object/from16 v11, v18

    .line 1067
    .line 1068
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1069
    .line 1070
    .line 1071
    return-object v11

    .line 1072
    :cond_33
    move-object/from16 v6, p3

    .line 1073
    .line 1074
    move-object v5, v2

    .line 1075
    move-object/from16 v7, v16

    .line 1076
    .line 1077
    move-object/from16 v4, v17

    .line 1078
    .line 1079
    if-eqz p6, :cond_34

    .line 1080
    .line 1081
    sget-object v0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 1082
    .line 1083
    :cond_34
    const/16 v0, 0x27f

    .line 1084
    .line 1085
    invoke-static {v10, v15, v13, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->copy$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;ZLandroid/util/Range;I)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v2

    .line 1089
    invoke-virtual {v1, v2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)V

    .line 1090
    .line 1091
    .line 1092
    move-object/from16 v3, p2

    .line 1093
    .line 1094
    invoke-virtual/range {v1 .. v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolveSpecsBySettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    return-object v0

    .line 1099
    :cond_35
    move-object/from16 v6, p3

    .line 1100
    .line 1101
    move-object v5, v2

    .line 1102
    move-object/from16 v7, v16

    .line 1103
    .line 1104
    move-object/from16 v4, v17

    .line 1105
    .line 1106
    move-object/from16 v11, v18

    .line 1107
    .line 1108
    const/4 v0, 0x0

    .line 1109
    invoke-static {v10, v0, v11, v9}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->copy$default(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;ZLandroid/util/Range;I)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v2

    .line 1113
    invoke-virtual {v1, v2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)V

    .line 1114
    .line 1115
    .line 1116
    move-object/from16 v3, p2

    .line 1117
    .line 1118
    invoke-virtual/range {v1 .. v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolveSpecsBySettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    return-object v0

    .line 1123
    :catchall_0
    move-exception v0

    .line 1124
    monitor-exit v2

    .line 1125
    throw v0
.end method

.method public final getSurfaceConfigList(ILjava/util/ArrayList;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Z)Ljava/util/ArrayList;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;

    .line 21
    .line 22
    iget-object v2, v1, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->surfaceConfig:Landroidx/camera/core/impl/SurfaceConfig;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    add-int/lit8 v2, v2, -0x1

    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v3, p6

    .line 38
    invoke-interface {p6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const/4 p3, 0x0

    .line 47
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    add-int/lit8 v1, p3, 0x1

    .line 54
    .line 55
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    move-object v4, v2

    .line 60
    check-cast v4, Landroid/util/Size;

    .line 61
    .line 62
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Ljava/lang/Number;

    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    check-cast p3, Landroidx/camera/core/impl/UseCaseConfig;

    .line 77
    .line 78
    invoke-interface {p3}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-interface {p3}, Landroidx/camera/core/impl/UseCaseConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 87
    .line 88
    invoke-virtual {p0, v3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    if-eqz p8, :cond_1

    .line 93
    .line 94
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->FEATURE_COMBINATION_TABLE:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    .line 95
    .line 96
    :goto_2
    move-object v7, v6

    .line 97
    move v6, p1

    .line 98
    goto :goto_3

    .line 99
    :cond_1
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->CAPTURE_SESSION_TABLES:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :goto_3
    invoke-static/range {v3 .. v8}, Lcom/mikepenz/fastadapter/VerboseLogger;->transformSurfaceConfig(ILandroid/util/Size;Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    add-int/lit8 v3, v3, -0x1

    .line 114
    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    move-object/from16 v4, p7

    .line 120
    .line 121
    invoke-interface {v4, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move p3, v1

    .line 125
    goto :goto_1

    .line 126
    :cond_2
    return-object v0
.end method

.method public final getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinition:Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "surfaceSizeDefinition"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->surfaceSizeDefinitionFormats:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->s720pSizeMap:Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    sget-object v2, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_720P:Landroid/util/Size;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, v2, p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateS720pOrS1440pSizeByFormat(Ljava/util/LinkedHashMap;Landroid/util/Size;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->s1440pSizeMap:Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    sget-object v2, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_1440P:Landroid/util/Size;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, v2, p1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateS720pOrS1440pSizeByFormat(Ljava/util/LinkedHashMap;Landroid/util/Size;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v0, v0, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->maximumSizeMap:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0, v0, p1, v2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateMaximumSizeByFormat(Ljava/util/LinkedHashMap;ILandroid/util/Rational;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v0, v0, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->maximum4x3SizeMap:Ljava/util/LinkedHashMap;

    .line 56
    .line 57
    sget-object v3, Landroidx/camera/core/impl/utils/AspectRatioUtil;->ASPECT_RATIO_4_3:Landroid/util/Rational;

    .line 58
    .line 59
    invoke-virtual {p0, v0, p1, v3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateMaximumSizeByFormat(Ljava/util/LinkedHashMap;ILandroid/util/Rational;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->maximum16x9SizeMap:Ljava/util/LinkedHashMap;

    .line 67
    .line 68
    sget-object v3, Landroidx/camera/core/impl/utils/AspectRatioUtil;->ASPECT_RATIO_16_9:Landroid/util/Rational;

    .line 69
    .line 70
    invoke-virtual {p0, v0, p1, v3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->updateMaximumSizeByFormat(Ljava/util/LinkedHashMap;ILandroid/util/Rational;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v0, v0, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->ultraMaximumSizeMap:Ljava/util/LinkedHashMap;

    .line 78
    .line 79
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 80
    .line 81
    const/16 v4, 0x1f

    .line 82
    .line 83
    if-lt v3, v4, :cond_2

    .line 84
    .line 85
    iget-boolean v3, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isUltraHighResolutionSensorSupported:Z

    .line 86
    .line 87
    if-nez v3, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iget-object v4, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 96
    .line 97
    check-cast v4, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 98
    .line 99
    invoke-virtual {v4, v3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 104
    .line 105
    if-nez v3, :cond_1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const/4 v4, 0x1

    .line 109
    invoke-static {v3, p1, v4, v2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxOutputSizeByFormat$camera_camera2(Landroid/hardware/camera2/params/StreamConfigurationMap;IZLandroid/util/Rational;)Landroid/util/Size;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-eqz v2, :cond_2

    .line 114
    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_3
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceSizeDefinition$camera_camera2()Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0
.end method

.method public final resolveSpecsBySettings(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    move-object/from16 v7, p3

    .line 8
    .line 9
    move-object/from16 v8, p4

    .line 10
    .line 11
    iget-boolean v10, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    .line 12
    .line 13
    const-string v11, "CXCP"

    .line 14
    .line 15
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v3, "resolveSpecsBySettings: featureSettings = "

    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-boolean v12, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    .line 39
    .line 40
    iget-object v13, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->targetFpsRange:Landroid/util/Range;

    .line 41
    .line 42
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 43
    .line 44
    sget-object v18, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->CAPTURE_SESSION_TABLES:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    .line 45
    .line 46
    const-string v2, ". New configs: "

    .line 47
    .line 48
    iget-object v3, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    .line 49
    .line 50
    const-string v5, "No supported surface combination is found for camera device - Id : "

    .line 51
    .line 52
    const/16 v20, 0x0

    .line 53
    .line 54
    const/4 v15, 0x0

    .line 55
    if-nez v12, :cond_5

    .line 56
    .line 57
    move-object/from16 v21, v2

    .line 58
    .line 59
    new-instance v2, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v16

    .line 68
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v17

    .line 72
    if-eqz v17, :cond_1

    .line 73
    .line 74
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v17

    .line 78
    move-object/from16 v14, v17

    .line 79
    .line 80
    check-cast v14, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;

    .line 81
    .line 82
    iget-object v14, v14, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->surfaceConfig:Landroidx/camera/core/impl/SurfaceConfig;

    .line 83
    .line 84
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-instance v14, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    .line 89
    .line 90
    invoke-direct {v14, v15}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>(Z)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object v16

    .line 97
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v22

    .line 101
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v16

    .line 105
    if-eqz v16, :cond_3

    .line 106
    .line 107
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v16

    .line 111
    move-object/from16 v15, v16

    .line 112
    .line 113
    check-cast v15, Landroidx/camera/core/impl/UseCaseConfig;

    .line 114
    .line 115
    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v16

    .line 119
    move-object/from16 v23, v3

    .line 120
    .line 121
    move-object/from16 v3, v16

    .line 122
    .line 123
    check-cast v3, Ljava/util/List;

    .line 124
    .line 125
    if-eqz v3, :cond_2

    .line 126
    .line 127
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v16

    .line 131
    if-nez v16, :cond_2

    .line 132
    .line 133
    invoke-static {v3, v14}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Landroid/util/Size;

    .line 138
    .line 139
    move-object/from16 v16, v14

    .line 140
    .line 141
    invoke-interface {v15}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 142
    .line 143
    .line 144
    move-result v14

    .line 145
    const/16 v24, 0x2e

    .line 146
    .line 147
    invoke-interface {v15}, Landroidx/camera/core/impl/UseCaseConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    .line 148
    .line 149
    .line 150
    move-result-object v19

    .line 151
    sget-object v15, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    move-object/from16 v15, v16

    .line 157
    .line 158
    invoke-virtual {v0, v14}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 159
    .line 160
    .line 161
    move-result-object v16

    .line 162
    iget v0, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    .line 163
    .line 164
    move-object/from16 v17, v15

    .line 165
    .line 166
    move-object v15, v3

    .line 167
    move-object/from16 v3, v17

    .line 168
    .line 169
    move/from16 v17, v24

    .line 170
    .line 171
    move/from16 v24, v12

    .line 172
    .line 173
    move/from16 v12, v17

    .line 174
    .line 175
    move/from16 v17, v0

    .line 176
    .line 177
    const/4 v0, 0x0

    .line 178
    invoke-static/range {v14 .. v19}, Lcom/mikepenz/fastadapter/VerboseLogger;->transformSurfaceConfig(ILandroid/util/Size;Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move v15, v0

    .line 186
    move-object v14, v3

    .line 187
    move-object/from16 v3, v23

    .line 188
    .line 189
    move/from16 v12, v24

    .line 190
    .line 191
    move-object/from16 v0, p0

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_2
    const/16 v12, 0x2e

    .line 195
    .line 196
    const-string v0, "No available output size is found for "

    .line 197
    .line 198
    invoke-static {v12, v15, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(ILjava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-object v20

    .line 202
    :cond_3
    move-object/from16 v23, v3

    .line 203
    .line 204
    move/from16 v24, v12

    .line 205
    .line 206
    move v0, v15

    .line 207
    const/16 v12, 0x2e

    .line 208
    .line 209
    sget-object v3, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 210
    .line 211
    move-object v14, v5

    .line 212
    move-object v5, v4

    .line 213
    move v9, v0

    .line 214
    move-object v12, v14

    .line 215
    move-object/from16 v14, v21

    .line 216
    .line 217
    move-object/from16 v15, v23

    .line 218
    .line 219
    move-object/from16 v0, p0

    .line 220
    .line 221
    invoke-virtual/range {v0 .. v5}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->checkSupported(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_4

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v2, ". May be attempting to bind too many use cases. Existing surfaces: "

    .line 237
    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v2, ". GroupableFeature settings: "

    .line 251
    .line 252
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const/16 v12, 0x2e

    .line 259
    .line 260
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v1

    .line 277
    :cond_5
    move-object v14, v2

    .line 278
    move/from16 v24, v12

    .line 279
    .line 280
    move v9, v15

    .line 281
    move-object v15, v3

    .line 282
    move-object v12, v5

    .line 283
    :goto_2
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 284
    .line 285
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    if-eqz v5, :cond_c

    .line 301
    .line 302
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    check-cast v5, Landroidx/camera/core/impl/UseCaseConfig;

    .line 307
    .line 308
    new-instance v9, Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .line 312
    .line 313
    move-object/from16 v21, v3

    .line 314
    .line 315
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 316
    .line 317
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v22

    .line 324
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    check-cast v22, Ljava/util/List;

    .line 328
    .line 329
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 330
    .line 331
    .line 332
    move-result-object v22

    .line 333
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    .line 334
    .line 335
    .line 336
    move-result v23

    .line 337
    if-eqz v23, :cond_b

    .line 338
    .line 339
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v23

    .line 343
    move-object/from16 v31, v4

    .line 344
    .line 345
    move-object/from16 v4, v23

    .line 346
    .line 347
    check-cast v4, Landroid/util/Size;

    .line 348
    .line 349
    invoke-interface {v5}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    invoke-interface {v5, v4}, Landroidx/camera/core/impl/UseCaseConfig;->getCustomMaxFrameRate(Landroid/util/Size;)I

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    invoke-interface {v5}, Landroidx/camera/core/impl/UseCaseConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    .line 358
    .line 359
    .line 360
    move-result-object v30

    .line 361
    sget-object v23, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 362
    .line 363
    invoke-virtual {v0, v6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 364
    .line 365
    .line 366
    move-result-object v27

    .line 367
    move-object/from16 v26, v4

    .line 368
    .line 369
    iget v4, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    .line 370
    .line 371
    move/from16 v28, v4

    .line 372
    .line 373
    iget-boolean v4, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    .line 374
    .line 375
    if-eqz v4, :cond_6

    .line 376
    .line 377
    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->FEATURE_COMBINATION_TABLE:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    .line 378
    .line 379
    move-object/from16 v29, v4

    .line 380
    .line 381
    :goto_5
    move/from16 v25, v6

    .line 382
    .line 383
    goto :goto_6

    .line 384
    :cond_6
    move-object/from16 v29, v18

    .line 385
    .line 386
    goto :goto_5

    .line 387
    :goto_6
    invoke-static/range {v25 .. v30}, Lcom/mikepenz/fastadapter/VerboseLogger;->transformSurfaceConfig(ILandroid/util/Size;Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    move-object/from16 v23, v14

    .line 392
    .line 393
    move/from16 v14, v25

    .line 394
    .line 395
    move-object/from16 v6, v26

    .line 396
    .line 397
    iget-object v4, v4, Landroidx/camera/core/impl/SurfaceConfig;->configSize:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 398
    .line 399
    move-object/from16 v25, v12

    .line 400
    .line 401
    sget-object v12, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 402
    .line 403
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v26

    .line 407
    if-eqz v26, :cond_7

    .line 408
    .line 409
    const v7, 0x7fffffff

    .line 410
    .line 411
    .line 412
    goto :goto_7

    .line 413
    :cond_7
    invoke-virtual {v0, v14, v6, v10, v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxFrameRate(ILandroid/util/Size;ZI)I

    .line 414
    .line 415
    .line 416
    move-result v7

    .line 417
    :goto_7
    if-eqz v24, :cond_8

    .line 418
    .line 419
    sget-object v14, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->NOT_SUPPORT:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 420
    .line 421
    if-eq v4, v14, :cond_a

    .line 422
    .line 423
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v12

    .line 427
    if-nez v12, :cond_8

    .line 428
    .line 429
    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 430
    .line 431
    .line 432
    move-result-object v12

    .line 433
    check-cast v12, Ljava/lang/Number;

    .line 434
    .line 435
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 436
    .line 437
    .line 438
    move-result v12

    .line 439
    if-ge v7, v12, :cond_8

    .line 440
    .line 441
    goto :goto_8

    .line 442
    :cond_8
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v12

    .line 446
    check-cast v12, Ljava/util/Set;

    .line 447
    .line 448
    if-nez v12, :cond_9

    .line 449
    .line 450
    new-instance v12, Ljava/util/LinkedHashSet;

    .line 451
    .line 452
    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    .line 453
    .line 454
    .line 455
    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    if-nez v4, :cond_a

    .line 467
    .line 468
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    :cond_a
    :goto_8
    move-object/from16 v6, p2

    .line 479
    .line 480
    move-object/from16 v7, p3

    .line 481
    .line 482
    move-object/from16 v14, v23

    .line 483
    .line 484
    move-object/from16 v12, v25

    .line 485
    .line 486
    move-object/from16 v4, v31

    .line 487
    .line 488
    goto/16 :goto_4

    .line 489
    .line 490
    :cond_b
    move-object/from16 v31, v4

    .line 491
    .line 492
    move-object/from16 v25, v12

    .line 493
    .line 494
    move-object/from16 v23, v14

    .line 495
    .line 496
    invoke-interface {v2, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-object/from16 v6, p2

    .line 500
    .line 501
    move-object/from16 v7, p3

    .line 502
    .line 503
    move-object/from16 v3, v21

    .line 504
    .line 505
    const/4 v9, 0x0

    .line 506
    goto/16 :goto_3

    .line 507
    .line 508
    :cond_c
    move-object/from16 v31, v4

    .line 509
    .line 510
    move-object/from16 v25, v12

    .line 511
    .line 512
    move-object/from16 v23, v14

    .line 513
    .line 514
    new-instance v3, Ljava/util/ArrayList;

    .line 515
    .line 516
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .line 518
    .line 519
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 524
    .line 525
    .line 526
    move-result v5

    .line 527
    iget-object v9, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 528
    .line 529
    if-eqz v5, :cond_17

    .line 530
    .line 531
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    check-cast v5, Ljava/lang/Number;

    .line 536
    .line 537
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 538
    .line 539
    .line 540
    move-result v5

    .line 541
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v6

    .line 545
    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v6

    .line 549
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    check-cast v6, Ljava/util/List;

    .line 553
    .line 554
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v5

    .line 558
    check-cast v5, Landroidx/camera/core/impl/UseCaseConfig;

    .line 559
    .line 560
    invoke-interface {v5}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 561
    .line 562
    .line 563
    move-result v5

    .line 564
    iget-object v7, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->targetAspectRatio:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    .line 565
    .line 566
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 570
    .line 571
    .line 572
    iget-object v7, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 573
    .line 574
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    new-instance v12, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 578
    .line 579
    invoke-direct {v12, v9, v7}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;)V

    .line 580
    .line 581
    .line 582
    const-class v7, Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk;

    .line 583
    .line 584
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    .line 585
    .line 586
    .line 587
    move-result-object v9

    .line 588
    invoke-virtual {v9, v7}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 589
    .line 590
    .line 591
    move-result-object v7

    .line 592
    check-cast v7, Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk;

    .line 593
    .line 594
    if-eqz v7, :cond_d

    .line 595
    .line 596
    goto :goto_a

    .line 597
    :cond_d
    invoke-virtual {v12}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    .line 598
    .line 599
    .line 600
    move-result-object v7

    .line 601
    const-class v9, Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk;

    .line 602
    .line 603
    invoke-virtual {v7, v9}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 604
    .line 605
    .line 606
    move-result-object v7

    .line 607
    check-cast v7, Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk;

    .line 608
    .line 609
    if-eqz v7, :cond_e

    .line 610
    .line 611
    :goto_a
    const/16 v7, 0x100

    .line 612
    .line 613
    invoke-virtual {v0, v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 614
    .line 615
    .line 616
    move-result-object v9

    .line 617
    iget-object v9, v9, Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;->maximumSizeMap:Ljava/util/LinkedHashMap;

    .line 618
    .line 619
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 620
    .line 621
    .line 622
    move-result-object v7

    .line 623
    invoke-virtual {v9, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v7

    .line 627
    check-cast v7, Landroid/util/Size;

    .line 628
    .line 629
    if-eqz v7, :cond_e

    .line 630
    .line 631
    new-instance v9, Landroid/util/Rational;

    .line 632
    .line 633
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    .line 634
    .line 635
    .line 636
    move-result v12

    .line 637
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    .line 638
    .line 639
    .line 640
    move-result v7

    .line 641
    invoke-direct {v9, v12, v7}, Landroid/util/Rational;-><init>(II)V

    .line 642
    .line 643
    .line 644
    goto :goto_b

    .line 645
    :cond_e
    move-object/from16 v9, v20

    .line 646
    .line 647
    :goto_b
    if-nez v9, :cond_f

    .line 648
    .line 649
    new-instance v7, Ljava/util/ArrayList;

    .line 650
    .line 651
    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 652
    .line 653
    .line 654
    goto :goto_d

    .line 655
    :cond_f
    new-instance v7, Ljava/util/ArrayList;

    .line 656
    .line 657
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .line 659
    .line 660
    new-instance v12, Ljava/util/ArrayList;

    .line 661
    .line 662
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .line 664
    .line 665
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 666
    .line 667
    .line 668
    move-result-object v6

    .line 669
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 670
    .line 671
    .line 672
    move-result v14

    .line 673
    if-eqz v14, :cond_11

    .line 674
    .line 675
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v14

    .line 679
    check-cast v14, Landroid/util/Size;

    .line 680
    .line 681
    invoke-static {v9, v14}, Landroidx/camera/core/impl/utils/AspectRatioUtil;->hasMatchingAspectRatio(Landroid/util/Rational;Landroid/util/Size;)Z

    .line 682
    .line 683
    .line 684
    move-result v18

    .line 685
    if-eqz v18, :cond_10

    .line 686
    .line 687
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    goto :goto_c

    .line 691
    :cond_10
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    goto :goto_c

    .line 695
    :cond_11
    const/4 v14, 0x0

    .line 696
    invoke-virtual {v12, v14, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 697
    .line 698
    .line 699
    move-object v7, v12

    .line 700
    :goto_d
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 701
    .line 702
    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig;->CONFIG_TYPES_BY_IMAGE_FORMAT:Ljava/util/LinkedHashMap;

    .line 703
    .line 704
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 705
    .line 706
    .line 707
    move-result-object v5

    .line 708
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v5

    .line 712
    check-cast v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 713
    .line 714
    if-nez v5, :cond_12

    .line 715
    .line 716
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 717
    .line 718
    :cond_12
    iget-object v6, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->resolutionCorrector:Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;

    .line 719
    .line 720
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 721
    .line 722
    .line 723
    iget-object v6, v6, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;->extraCroppingQuirk:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;

    .line 724
    .line 725
    if-nez v6, :cond_13

    .line 726
    .line 727
    goto :goto_f

    .line 728
    :cond_13
    invoke-static {v5}, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;->getVerifiedResolution(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;)Landroid/util/Size;

    .line 729
    .line 730
    .line 731
    move-result-object v5

    .line 732
    if-nez v5, :cond_14

    .line 733
    .line 734
    goto :goto_f

    .line 735
    :cond_14
    new-instance v6, Ljava/util/ArrayList;

    .line 736
    .line 737
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 744
    .line 745
    .line 746
    move-result-object v7

    .line 747
    :cond_15
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 748
    .line 749
    .line 750
    move-result v9

    .line 751
    if-eqz v9, :cond_16

    .line 752
    .line 753
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v9

    .line 757
    check-cast v9, Landroid/util/Size;

    .line 758
    .line 759
    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    move-result v12

    .line 763
    if-nez v12, :cond_15

    .line 764
    .line 765
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    .line 767
    .line 768
    goto :goto_e

    .line 769
    :cond_16
    move-object v7, v6

    .line 770
    :goto_f
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    goto/16 :goto_9

    .line 774
    .line 775
    :cond_17
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 776
    .line 777
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 778
    .line 779
    .line 780
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 781
    .line 782
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 783
    .line 784
    .line 785
    iget-object v12, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    .line 786
    .line 787
    if-eqz v10, :cond_1b

    .line 788
    .line 789
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 793
    .line 794
    .line 795
    move-result v2

    .line 796
    if-eqz v2, :cond_19

    .line 797
    .line 798
    move-object/from16 v4, v31

    .line 799
    .line 800
    :cond_18
    move-object/from16 v21, v6

    .line 801
    .line 802
    const/16 p3, 0x1

    .line 803
    .line 804
    goto :goto_12

    .line 805
    :cond_19
    invoke-static {v3}, Landroidx/camera/camera2/internal/HighSpeedResolver;->findCommonElements(Ljava/util/List;)Ljava/util/List;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    new-instance v4, Ljava/util/ArrayList;

    .line 810
    .line 811
    const/16 v5, 0xa

    .line 812
    .line 813
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 814
    .line 815
    .line 816
    move-result v5

    .line 817
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 818
    .line 819
    .line 820
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 825
    .line 826
    .line 827
    move-result v5

    .line 828
    if-eqz v5, :cond_18

    .line 829
    .line 830
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v5

    .line 834
    check-cast v5, Landroid/util/Size;

    .line 835
    .line 836
    const/16 p3, 0x1

    .line 837
    .line 838
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 839
    .line 840
    .line 841
    move-result v14

    .line 842
    move-object/from16 v18, v2

    .line 843
    .line 844
    new-instance v2, Ljava/util/ArrayList;

    .line 845
    .line 846
    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 847
    .line 848
    .line 849
    move-object/from16 v21, v6

    .line 850
    .line 851
    const/4 v6, 0x0

    .line 852
    :goto_11
    if-ge v6, v14, :cond_1a

    .line 853
    .line 854
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    .line 856
    .line 857
    add-int/lit8 v6, v6, 0x1

    .line 858
    .line 859
    goto :goto_11

    .line 860
    :cond_1a
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    .line 862
    .line 863
    move-object/from16 v2, v18

    .line 864
    .line 865
    move-object/from16 v6, v21

    .line 866
    .line 867
    goto :goto_10

    .line 868
    :goto_12
    move-object/from16 v28, v4

    .line 869
    .line 870
    goto/16 :goto_18

    .line 871
    .line 872
    :cond_1b
    move-object/from16 v21, v6

    .line 873
    .line 874
    const/16 p3, 0x1

    .line 875
    .line 876
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 877
    .line 878
    .line 879
    move-result-object v2

    .line 880
    move/from16 v4, p3

    .line 881
    .line 882
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 883
    .line 884
    .line 885
    move-result v5

    .line 886
    if-eqz v5, :cond_1c

    .line 887
    .line 888
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v5

    .line 892
    check-cast v5, Ljava/util/List;

    .line 893
    .line 894
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 895
    .line 896
    .line 897
    move-result v5

    .line 898
    mul-int/2addr v4, v5

    .line 899
    goto :goto_13

    .line 900
    :cond_1c
    if-eqz v4, :cond_58

    .line 901
    .line 902
    new-instance v2, Ljava/util/ArrayList;

    .line 903
    .line 904
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .line 906
    .line 907
    const/4 v5, 0x0

    .line 908
    :goto_14
    if-ge v5, v4, :cond_1d

    .line 909
    .line 910
    new-instance v6, Ljava/util/ArrayList;

    .line 911
    .line 912
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .line 914
    .line 915
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    .line 917
    .line 918
    add-int/lit8 v5, v5, 0x1

    .line 919
    .line 920
    goto :goto_14

    .line 921
    :cond_1d
    const/4 v14, 0x0

    .line 922
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v5

    .line 926
    check-cast v5, Ljava/util/List;

    .line 927
    .line 928
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 929
    .line 930
    .line 931
    move-result v5

    .line 932
    div-int v5, v4, v5

    .line 933
    .line 934
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 935
    .line 936
    .line 937
    move-result v6

    .line 938
    move/from16 v18, v4

    .line 939
    .line 940
    const/4 v14, 0x0

    .line 941
    :goto_15
    if-ge v14, v6, :cond_20

    .line 942
    .line 943
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    move-result-object v22

    .line 947
    move/from16 v26, v5

    .line 948
    .line 949
    move-object/from16 v5, v22

    .line 950
    .line 951
    check-cast v5, Ljava/util/List;

    .line 952
    .line 953
    move/from16 v22, v6

    .line 954
    .line 955
    const/4 v6, 0x0

    .line 956
    :goto_16
    if-ge v6, v4, :cond_1e

    .line 957
    .line 958
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object v27

    .line 962
    move-object/from16 v28, v2

    .line 963
    .line 964
    move-object/from16 v2, v27

    .line 965
    .line 966
    check-cast v2, Ljava/util/List;

    .line 967
    .line 968
    rem-int v27, v6, v18

    .line 969
    .line 970
    move/from16 v29, v4

    .line 971
    .line 972
    div-int v4, v27, v26

    .line 973
    .line 974
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v4

    .line 978
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    .line 980
    .line 981
    add-int/lit8 v6, v6, 0x1

    .line 982
    .line 983
    move-object/from16 v2, v28

    .line 984
    .line 985
    move/from16 v4, v29

    .line 986
    .line 987
    goto :goto_16

    .line 988
    :cond_1e
    move-object/from16 v28, v2

    .line 989
    .line 990
    move/from16 v29, v4

    .line 991
    .line 992
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 993
    .line 994
    .line 995
    move-result v2

    .line 996
    add-int/lit8 v2, v2, -0x1

    .line 997
    .line 998
    if-ge v14, v2, :cond_1f

    .line 999
    .line 1000
    add-int/lit8 v2, v14, 0x1

    .line 1001
    .line 1002
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v2

    .line 1006
    check-cast v2, Ljava/util/List;

    .line 1007
    .line 1008
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1009
    .line 1010
    .line 1011
    move-result v2

    .line 1012
    div-int v5, v26, v2

    .line 1013
    .line 1014
    move/from16 v18, v26

    .line 1015
    .line 1016
    goto :goto_17

    .line 1017
    :cond_1f
    move/from16 v5, v26

    .line 1018
    .line 1019
    :goto_17
    add-int/lit8 v14, v14, 0x1

    .line 1020
    .line 1021
    move/from16 v6, v22

    .line 1022
    .line 1023
    move-object/from16 v2, v28

    .line 1024
    .line 1025
    move/from16 v4, v29

    .line 1026
    .line 1027
    goto :goto_15

    .line 1028
    :cond_20
    move-object/from16 v28, v2

    .line 1029
    .line 1030
    :goto_18
    sget-object v2, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->STREAM_USE_CASE_STREAM_SPEC_OPTION:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 1031
    .line 1032
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v2

    .line 1036
    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1037
    .line 1038
    .line 1039
    move-result v3

    .line 1040
    if-eqz v3, :cond_22

    .line 1041
    .line 1042
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v3

    .line 1046
    check-cast v3, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;

    .line 1047
    .line 1048
    iget-object v4, v3, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->captureTypes:Ljava/util/List;

    .line 1049
    .line 1050
    const/4 v14, 0x0

    .line 1051
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v4

    .line 1055
    check-cast v4, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 1056
    .line 1057
    iget-object v3, v3, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->implementationOptions:Landroidx/camera/core/impl/Config;

    .line 1058
    .line 1059
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1063
    .line 1064
    .line 1065
    invoke-static {v3, v4}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->isZslUseCase(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v3

    .line 1069
    if-eqz v3, :cond_21

    .line 1070
    .line 1071
    :goto_19
    move/from16 v2, p3

    .line 1072
    .line 1073
    goto :goto_1a

    .line 1074
    :cond_22
    const/4 v14, 0x0

    .line 1075
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v2

    .line 1079
    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1080
    .line 1081
    .line 1082
    move-result v3

    .line 1083
    if-eqz v3, :cond_24

    .line 1084
    .line 1085
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v3

    .line 1089
    check-cast v3, Landroidx/camera/core/impl/UseCaseConfig;

    .line 1090
    .line 1091
    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v4

    .line 1095
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1096
    .line 1097
    .line 1098
    invoke-static {v3, v4}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->isZslUseCase(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;)Z

    .line 1099
    .line 1100
    .line 1101
    move-result v3

    .line 1102
    if-eqz v3, :cond_23

    .line 1103
    .line 1104
    goto :goto_19

    .line 1105
    :cond_24
    move v2, v14

    .line 1106
    :goto_1a
    iget-boolean v3, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isStreamUseCaseSupported:Z

    .line 1107
    .line 1108
    if-eqz v3, :cond_27

    .line 1109
    .line 1110
    if-nez v2, :cond_27

    .line 1111
    .line 1112
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v17

    .line 1116
    move-object/from16 v2, v20

    .line 1117
    .line 1118
    :goto_1b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 1119
    .line 1120
    .line 1121
    move-result v3

    .line 1122
    if-eqz v3, :cond_26

    .line 1123
    .line 1124
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v2

    .line 1128
    move-object v3, v2

    .line 1129
    check-cast v3, Ljava/util/List;

    .line 1130
    .line 1131
    move-object v2, v1

    .line 1132
    iget v1, v2, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    .line 1133
    .line 1134
    const/4 v8, 0x0

    .line 1135
    move-object/from16 v4, p4

    .line 1136
    .line 1137
    move-object/from16 v5, p5

    .line 1138
    .line 1139
    move-object v14, v2

    .line 1140
    move-object/from16 v6, v21

    .line 1141
    .line 1142
    move-object/from16 v2, p2

    .line 1143
    .line 1144
    invoke-virtual/range {v0 .. v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceConfigList(ILjava/util/ArrayList;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Z)Ljava/util/ArrayList;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v1

    .line 1148
    move-object v3, v6

    .line 1149
    move-object v4, v7

    .line 1150
    invoke-virtual {v0, v14, v1, v3, v4}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getOrderedSupportedStreamUseCaseSurfaceConfigList(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/List;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v2

    .line 1154
    if-eqz v2, :cond_25

    .line 1155
    .line 1156
    goto :goto_1c

    .line 1157
    :cond_25
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    .line 1161
    .line 1162
    .line 1163
    move-object/from16 v8, p4

    .line 1164
    .line 1165
    move-object/from16 v21, v3

    .line 1166
    .line 1167
    move-object v7, v4

    .line 1168
    move-object v1, v14

    .line 1169
    const/4 v14, 0x0

    .line 1170
    goto :goto_1b

    .line 1171
    :cond_26
    move-object v14, v1

    .line 1172
    move-object v4, v7

    .line 1173
    move-object/from16 v3, v21

    .line 1174
    .line 1175
    :goto_1c
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 1176
    .line 1177
    .line 1178
    move-result v1

    .line 1179
    if-eqz v1, :cond_28

    .line 1180
    .line 1181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1182
    .line 1183
    const-string v5, "orderedSurfaceConfigListForStreamUseCase = "

    .line 1184
    .line 1185
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v1

    .line 1195
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    .line 1197
    .line 1198
    goto :goto_1d

    .line 1199
    :cond_27
    move-object v14, v1

    .line 1200
    move-object v4, v7

    .line 1201
    move-object/from16 v3, v21

    .line 1202
    .line 1203
    move-object/from16 v2, v20

    .line 1204
    .line 1205
    :cond_28
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v1

    .line 1209
    const v5, 0x7fffffff

    .line 1210
    .line 1211
    .line 1212
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1213
    .line 1214
    .line 1215
    move-result v6

    .line 1216
    if-eqz v6, :cond_29

    .line 1217
    .line 1218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v6

    .line 1222
    check-cast v6, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;

    .line 1223
    .line 1224
    iget v7, v6, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->imageFormat:I

    .line 1225
    .line 1226
    iget-object v8, v6, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->size:Landroid/util/Size;

    .line 1227
    .line 1228
    iget v6, v6, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->customMaxFrameRate:I

    .line 1229
    .line 1230
    invoke-virtual {v0, v7, v8, v10, v6}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxFrameRate(ILandroid/util/Size;ZI)I

    .line 1231
    .line 1232
    .line 1233
    move-result v6

    .line 1234
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 1235
    .line 1236
    .line 1237
    move-result v5

    .line 1238
    goto :goto_1e

    .line 1239
    :cond_29
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v17

    .line 1243
    move-object/from16 v26, v20

    .line 1244
    .line 1245
    move-object/from16 v27, v26

    .line 1246
    .line 1247
    const v1, 0x7fffffff

    .line 1248
    .line 1249
    .line 1250
    const v6, 0x7fffffff

    .line 1251
    .line 1252
    .line 1253
    const/16 v21, 0x0

    .line 1254
    .line 1255
    const/16 v22, 0x0

    .line 1256
    .line 1257
    :goto_1f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 1258
    .line 1259
    .line 1260
    move-result v7

    .line 1261
    const-string v28, "Required value was null."

    .line 1262
    .line 1263
    if-eqz v7, :cond_3a

    .line 1264
    .line 1265
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v7

    .line 1269
    check-cast v7, Ljava/util/List;

    .line 1270
    .line 1271
    move v8, v6

    .line 1272
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 1273
    .line 1274
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1275
    .line 1276
    .line 1277
    move-object/from16 v29, v3

    .line 1278
    .line 1279
    move-object v3, v7

    .line 1280
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 1281
    .line 1282
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1283
    .line 1284
    .line 1285
    move/from16 v30, v1

    .line 1286
    .line 1287
    iget v1, v14, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    .line 1288
    .line 1289
    move/from16 v31, v8

    .line 1290
    .line 1291
    iget-boolean v8, v14, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiresFeatureComboQuery:Z

    .line 1292
    .line 1293
    move-object/from16 v33, v4

    .line 1294
    .line 1295
    move-object/from16 v32, v29

    .line 1296
    .line 1297
    move/from16 v14, v30

    .line 1298
    .line 1299
    move-object/from16 v4, p4

    .line 1300
    .line 1301
    move-object/from16 v30, v9

    .line 1302
    .line 1303
    move-object/from16 v29, v15

    .line 1304
    .line 1305
    move/from16 v9, v31

    .line 1306
    .line 1307
    move v15, v5

    .line 1308
    move-object/from16 v31, v12

    .line 1309
    .line 1310
    move-object/from16 v5, p5

    .line 1311
    .line 1312
    move-object v12, v2

    .line 1313
    move-object/from16 v2, p2

    .line 1314
    .line 1315
    invoke-virtual/range {v0 .. v8}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getSurfaceConfigList(ILjava/util/ArrayList;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Z)Ljava/util/ArrayList;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v1

    .line 1319
    move-object v8, v3

    .line 1320
    move-object v2, v6

    .line 1321
    move-object v3, v7

    .line 1322
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v6

    .line 1326
    move-object/from16 v34, v1

    .line 1327
    .line 1328
    move v7, v15

    .line 1329
    const/4 v1, 0x0

    .line 1330
    :goto_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1331
    .line 1332
    .line 1333
    move-result v35

    .line 1334
    if-eqz v35, :cond_2a

    .line 1335
    .line 1336
    add-int/lit8 v35, v1, 0x1

    .line 1337
    .line 1338
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v36

    .line 1342
    move-object/from16 v37, v6

    .line 1343
    .line 1344
    move-object/from16 v6, v36

    .line 1345
    .line 1346
    check-cast v6, Landroid/util/Size;

    .line 1347
    .line 1348
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v1

    .line 1352
    check-cast v1, Ljava/lang/Number;

    .line 1353
    .line 1354
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1355
    .line 1356
    .line 1357
    move-result v1

    .line 1358
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v1

    .line 1362
    check-cast v1, Landroidx/camera/core/impl/UseCaseConfig;

    .line 1363
    .line 1364
    invoke-interface {v1}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 1365
    .line 1366
    .line 1367
    move-result v4

    .line 1368
    invoke-interface {v1, v6}, Landroidx/camera/core/impl/UseCaseConfig;->getCustomMaxFrameRate(Landroid/util/Size;)I

    .line 1369
    .line 1370
    .line 1371
    move-result v1

    .line 1372
    invoke-virtual {v0, v4, v6, v10, v1}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxFrameRate(ILandroid/util/Size;ZI)I

    .line 1373
    .line 1374
    .line 1375
    move-result v1

    .line 1376
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    .line 1377
    .line 1378
    .line 1379
    move-result v7

    .line 1380
    move-object/from16 v4, p4

    .line 1381
    .line 1382
    move/from16 v1, v35

    .line 1383
    .line 1384
    move-object/from16 v6, v37

    .line 1385
    .line 1386
    goto :goto_20

    .line 1387
    :cond_2a
    sget-object v1, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 1388
    .line 1389
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1390
    .line 1391
    .line 1392
    move-result v1

    .line 1393
    if-nez v1, :cond_2b

    .line 1394
    .line 1395
    if-ge v7, v15, :cond_2b

    .line 1396
    .line 1397
    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v1

    .line 1401
    check-cast v1, Ljava/lang/Number;

    .line 1402
    .line 1403
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1404
    .line 1405
    .line 1406
    move-result v1

    .line 1407
    if-ge v7, v1, :cond_2b

    .line 1408
    .line 1409
    const/16 v35, 0x0

    .line 1410
    .line 1411
    goto :goto_21

    .line 1412
    :cond_2b
    move/from16 v35, p3

    .line 1413
    .line 1414
    :goto_21
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 1415
    .line 1416
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v1

    .line 1423
    const/4 v6, 0x0

    .line 1424
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1425
    .line 1426
    .line 1427
    move-result v36

    .line 1428
    if-eqz v36, :cond_30

    .line 1429
    .line 1430
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v36

    .line 1434
    add-int/lit8 v37, v6, 0x1

    .line 1435
    .line 1436
    if-ltz v6, :cond_2f

    .line 1437
    .line 1438
    move-object/from16 v0, v36

    .line 1439
    .line 1440
    check-cast v0, Landroidx/camera/core/impl/SurfaceConfig;

    .line 1441
    .line 1442
    move-object/from16 v36, v1

    .line 1443
    .line 1444
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v1

    .line 1448
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v1

    .line 1452
    check-cast v1, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;

    .line 1453
    .line 1454
    if-eqz v1, :cond_2d

    .line 1455
    .line 1456
    iget-object v1, v1, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->dynamicRange:Landroidx/camera/core/DynamicRange;

    .line 1457
    .line 1458
    if-nez v1, :cond_2c

    .line 1459
    .line 1460
    goto :goto_23

    .line 1461
    :cond_2c
    move-object/from16 v6, p6

    .line 1462
    .line 1463
    goto :goto_24

    .line 1464
    :cond_2d
    :goto_23
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v1

    .line 1468
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v1

    .line 1472
    move-object/from16 v6, p6

    .line 1473
    .line 1474
    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v1

    .line 1478
    if-eqz v1, :cond_2e

    .line 1479
    .line 1480
    check-cast v1, Landroidx/camera/core/DynamicRange;

    .line 1481
    .line 1482
    :goto_24
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    .line 1484
    .line 1485
    move-object/from16 v0, p0

    .line 1486
    .line 1487
    move-object/from16 v1, v36

    .line 1488
    .line 1489
    move/from16 v6, v37

    .line 1490
    .line 1491
    goto :goto_22

    .line 1492
    :cond_2e
    invoke-static/range {v28 .. v28}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1493
    .line 1494
    .line 1495
    return-object v20

    .line 1496
    :cond_2f
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 1497
    .line 1498
    .line 1499
    throw v20

    .line 1500
    :cond_30
    move-object/from16 v6, p6

    .line 1501
    .line 1502
    new-instance v0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;

    .line 1503
    .line 1504
    move v1, v7

    .line 1505
    const/4 v7, 0x1

    .line 1506
    move-object/from16 v36, v8

    .line 1507
    .line 1508
    move-object/from16 v38, v12

    .line 1509
    .line 1510
    move/from16 v37, v15

    .line 1511
    .line 1512
    move v8, v1

    .line 1513
    move-object v15, v2

    .line 1514
    move-object v12, v3

    .line 1515
    move-object/from16 v3, v34

    .line 1516
    .line 1517
    move-object/from16 v1, p0

    .line 1518
    .line 1519
    move-object/from16 v2, p1

    .line 1520
    .line 1521
    move/from16 v34, v10

    .line 1522
    .line 1523
    move-object v10, v6

    .line 1524
    move-object v6, v5

    .line 1525
    move-object/from16 v5, p4

    .line 1526
    .line 1527
    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1528
    .line 1529
    .line 1530
    move-object v4, v2

    .line 1531
    move-object v2, v0

    .line 1532
    move-object v0, v1

    .line 1533
    move-object v1, v4

    .line 1534
    move-object v4, v5

    .line 1535
    move-object v5, v6

    .line 1536
    sget-object v6, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 1537
    .line 1538
    invoke-static {v6, v2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v2

    .line 1542
    if-nez v21, :cond_34

    .line 1543
    .line 1544
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v2

    .line 1548
    check-cast v2, Ljava/lang/Boolean;

    .line 1549
    .line 1550
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1551
    .line 1552
    .line 1553
    move-result v2

    .line 1554
    if-eqz v2, :cond_34

    .line 1555
    .line 1556
    const v2, 0x7fffffff

    .line 1557
    .line 1558
    .line 1559
    if-ne v14, v2, :cond_31

    .line 1560
    .line 1561
    goto :goto_25

    .line 1562
    :cond_31
    if-ge v14, v8, :cond_32

    .line 1563
    .line 1564
    :goto_25
    move v14, v8

    .line 1565
    move-object/from16 v26, v36

    .line 1566
    .line 1567
    :cond_32
    if-eqz v35, :cond_34

    .line 1568
    .line 1569
    if-eqz v22, :cond_33

    .line 1570
    .line 1571
    move v14, v8

    .line 1572
    move/from16 v43, v9

    .line 1573
    .line 1574
    move-object/from16 v41, v27

    .line 1575
    .line 1576
    move-object/from16 v40, v36

    .line 1577
    .line 1578
    goto/16 :goto_2a

    .line 1579
    .line 1580
    :cond_33
    move/from16 v21, p3

    .line 1581
    .line 1582
    move v14, v8

    .line 1583
    move-object/from16 v26, v36

    .line 1584
    .line 1585
    :cond_34
    if-eqz v38, :cond_39

    .line 1586
    .line 1587
    if-nez v22, :cond_39

    .line 1588
    .line 1589
    invoke-virtual {v0, v1, v3, v15, v12}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getOrderedSupportedStreamUseCaseSurfaceConfigList(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Ljava/util/List;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v2

    .line 1593
    if-eqz v2, :cond_39

    .line 1594
    .line 1595
    const v2, 0x7fffffff

    .line 1596
    .line 1597
    .line 1598
    if-ne v9, v2, :cond_35

    .line 1599
    .line 1600
    goto :goto_26

    .line 1601
    :cond_35
    if-ge v9, v8, :cond_36

    .line 1602
    .line 1603
    :goto_26
    move v6, v8

    .line 1604
    move-object/from16 v27, v36

    .line 1605
    .line 1606
    goto :goto_27

    .line 1607
    :cond_36
    move v6, v9

    .line 1608
    :goto_27
    if-eqz v35, :cond_38

    .line 1609
    .line 1610
    if-eqz v21, :cond_37

    .line 1611
    .line 1612
    move/from16 v43, v8

    .line 1613
    .line 1614
    move-object/from16 v40, v26

    .line 1615
    .line 1616
    move-object/from16 v41, v36

    .line 1617
    .line 1618
    goto/16 :goto_2a

    .line 1619
    .line 1620
    :cond_37
    move v2, v14

    .line 1621
    move-object v14, v1

    .line 1622
    move v1, v2

    .line 1623
    move/from16 v22, p3

    .line 1624
    .line 1625
    move v6, v8

    .line 1626
    move-object/from16 v15, v29

    .line 1627
    .line 1628
    move-object/from16 v9, v30

    .line 1629
    .line 1630
    move-object/from16 v12, v31

    .line 1631
    .line 1632
    move-object/from16 v3, v32

    .line 1633
    .line 1634
    move-object/from16 v4, v33

    .line 1635
    .line 1636
    move/from16 v10, v34

    .line 1637
    .line 1638
    move-object/from16 v27, v36

    .line 1639
    .line 1640
    :goto_28
    move/from16 v5, v37

    .line 1641
    .line 1642
    move-object/from16 v2, v38

    .line 1643
    .line 1644
    goto/16 :goto_1f

    .line 1645
    .line 1646
    :cond_38
    move v2, v14

    .line 1647
    move-object v14, v1

    .line 1648
    move v1, v2

    .line 1649
    :goto_29
    move-object/from16 v15, v29

    .line 1650
    .line 1651
    move-object/from16 v9, v30

    .line 1652
    .line 1653
    move-object/from16 v12, v31

    .line 1654
    .line 1655
    move-object/from16 v3, v32

    .line 1656
    .line 1657
    move-object/from16 v4, v33

    .line 1658
    .line 1659
    move/from16 v10, v34

    .line 1660
    .line 1661
    goto :goto_28

    .line 1662
    :cond_39
    move v2, v14

    .line 1663
    move-object v14, v1

    .line 1664
    move v1, v2

    .line 1665
    move v6, v9

    .line 1666
    goto :goto_29

    .line 1667
    :cond_3a
    move-object v5, v14

    .line 1668
    move v14, v1

    .line 1669
    move-object v1, v5

    .line 1670
    move-object/from16 v5, p5

    .line 1671
    .line 1672
    move-object/from16 v38, v2

    .line 1673
    .line 1674
    move-object/from16 v32, v3

    .line 1675
    .line 1676
    move-object/from16 v33, v4

    .line 1677
    .line 1678
    move-object/from16 v30, v9

    .line 1679
    .line 1680
    move/from16 v34, v10

    .line 1681
    .line 1682
    move-object/from16 v31, v12

    .line 1683
    .line 1684
    move-object/from16 v29, v15

    .line 1685
    .line 1686
    move-object/from16 v4, p4

    .line 1687
    .line 1688
    move-object/from16 v10, p6

    .line 1689
    .line 1690
    move v9, v6

    .line 1691
    move/from16 v43, v9

    .line 1692
    .line 1693
    move-object/from16 v40, v26

    .line 1694
    .line 1695
    move-object/from16 v41, v27

    .line 1696
    .line 1697
    :goto_2a
    if-nez v40, :cond_3c

    .line 1698
    .line 1699
    :cond_3b
    :goto_2b
    move-object/from16 v2, v20

    .line 1700
    .line 1701
    goto :goto_2c

    .line 1702
    :cond_3c
    if-eqz v24, :cond_3d

    .line 1703
    .line 1704
    sget-object v2, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 1705
    .line 1706
    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1707
    .line 1708
    .line 1709
    move-result v2

    .line 1710
    if-nez v2, :cond_3d

    .line 1711
    .line 1712
    const v2, 0x7fffffff

    .line 1713
    .line 1714
    .line 1715
    if-eq v14, v2, :cond_3b

    .line 1716
    .line 1717
    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v2

    .line 1721
    check-cast v2, Ljava/lang/Number;

    .line 1722
    .line 1723
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1724
    .line 1725
    .line 1726
    move-result v2

    .line 1727
    if-ge v14, v2, :cond_3d

    .line 1728
    .line 1729
    goto :goto_2b

    .line 1730
    :cond_3d
    new-instance v39, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;

    .line 1731
    .line 1732
    const v44, 0x7fffffff

    .line 1733
    .line 1734
    .line 1735
    move/from16 v42, v14

    .line 1736
    .line 1737
    invoke-direct/range {v39 .. v44}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;-><init>(Ljava/util/List;Ljava/util/List;III)V

    .line 1738
    .line 1739
    .line 1740
    move-object/from16 v2, v39

    .line 1741
    .line 1742
    :goto_2c
    if-eqz v2, :cond_57

    .line 1743
    .line 1744
    iget v0, v2, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForBestSizes:I

    .line 1745
    .line 1746
    iget-object v3, v2, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->bestSizes:Ljava/util/List;

    .line 1747
    .line 1748
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 1749
    .line 1750
    .line 1751
    move-result v6

    .line 1752
    if-eqz v6, :cond_3e

    .line 1753
    .line 1754
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1755
    .line 1756
    const-string v7, "resolveSpecsBySettings: bestSizesAndFps = "

    .line 1757
    .line 1758
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1759
    .line 1760
    .line 1761
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1762
    .line 1763
    .line 1764
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v6

    .line 1768
    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    .line 1770
    .line 1771
    :cond_3e
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 1772
    .line 1773
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1774
    .line 1775
    .line 1776
    sget-object v7, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 1777
    .line 1778
    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1779
    .line 1780
    .line 1781
    move-result v8

    .line 1782
    if-nez v8, :cond_43

    .line 1783
    .line 1784
    if-eqz v34, :cond_3f

    .line 1785
    .line 1786
    move-object/from16 v8, v31

    .line 1787
    .line 1788
    invoke-virtual {v8, v3}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getFrameRateRangesFor(Ljava/util/List;)[Landroid/util/Range;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v7

    .line 1792
    goto :goto_2d

    .line 1793
    :cond_3f
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1794
    .line 1795
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1796
    .line 1797
    .line 1798
    move-object/from16 v9, v30

    .line 1799
    .line 1800
    check-cast v9, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 1801
    .line 1802
    invoke-virtual {v9, v7}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v7

    .line 1806
    check-cast v7, [Landroid/util/Range;

    .line 1807
    .line 1808
    :goto_2d
    invoke-static {v13, v0, v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getClosestSupportedDeviceFrameRate(Landroid/util/Range;I[Landroid/util/Range;)Landroid/util/Range;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v8

    .line 1812
    if-nez v24, :cond_40

    .line 1813
    .line 1814
    iget-boolean v9, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isStrictFpsRequired:Z

    .line 1815
    .line 1816
    if-eqz v9, :cond_41

    .line 1817
    .line 1818
    :cond_40
    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1819
    .line 1820
    .line 1821
    move-result v9

    .line 1822
    if-eqz v9, :cond_42

    .line 1823
    .line 1824
    :cond_41
    move-object v7, v8

    .line 1825
    goto :goto_2e

    .line 1826
    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1827
    .line 1828
    const-string v2, "Target FPS range "

    .line 1829
    .line 1830
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1831
    .line 1832
    .line 1833
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1834
    .line 1835
    .line 1836
    const-string v2, " is not supported. Max FPS supported by the calculated best combination: "

    .line 1837
    .line 1838
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    .line 1840
    .line 1841
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1842
    .line 1843
    .line 1844
    const-string v0, ". Calculated best FPS range for device: "

    .line 1845
    .line 1846
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    .line 1848
    .line 1849
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1850
    .line 1851
    .line 1852
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v0

    .line 1856
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1857
    .line 1858
    .line 1859
    const-string v2, ". Device supported FPS ranges: "

    .line 1860
    .line 1861
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    .line 1863
    .line 1864
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1865
    .line 1866
    .line 1867
    const/16 v12, 0x2e

    .line 1868
    .line 1869
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1870
    .line 1871
    .line 1872
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v0

    .line 1876
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1877
    .line 1878
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1879
    .line 1880
    .line 1881
    move-result-object v0

    .line 1882
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1883
    .line 1884
    .line 1885
    throw v1

    .line 1886
    :cond_43
    move-object/from16 v8, v31

    .line 1887
    .line 1888
    if-eqz v34, :cond_44

    .line 1889
    .line 1890
    invoke-virtual {v8, v3}, Landroidx/camera/camera2/internal/HighSpeedResolver;->getFrameRateRangesFor(Ljava/util/List;)[Landroid/util/Range;

    .line 1891
    .line 1892
    .line 1893
    move-result-object v7

    .line 1894
    sget-object v8, Landroidx/camera/camera2/internal/HighSpeedResolver;->DEFAULT_FPS:Landroid/util/Range;

    .line 1895
    .line 1896
    invoke-static {v8, v0, v7}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getClosestSupportedDeviceFrameRate(Landroid/util/Range;I[Landroid/util/Range;)Landroid/util/Range;

    .line 1897
    .line 1898
    .line 1899
    move-result-object v7

    .line 1900
    :cond_44
    :goto_2e
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v4

    .line 1904
    const/4 v15, 0x0

    .line 1905
    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1906
    .line 1907
    .line 1908
    move-result v8

    .line 1909
    const-string v9, "Null expectedFrameRateRange"

    .line 1910
    .line 1911
    if-eqz v8, :cond_4c

    .line 1912
    .line 1913
    add-int/lit8 v8, v15, 0x1

    .line 1914
    .line 1915
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v11

    .line 1919
    check-cast v11, Landroidx/camera/core/impl/UseCaseConfig;

    .line 1920
    .line 1921
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v12

    .line 1925
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 1926
    .line 1927
    .line 1928
    move-result v12

    .line 1929
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1930
    .line 1931
    .line 1932
    move-result-object v12

    .line 1933
    check-cast v12, Landroid/util/Size;

    .line 1934
    .line 1935
    invoke-static {v12}, Landroidx/camera/core/impl/AutoValue_StreamSpec;->builder(Landroid/util/Size;)Landroidx/appcompat/widget/TooltipPopup;

    .line 1936
    .line 1937
    .line 1938
    move-result-object v12

    .line 1939
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1940
    .line 1941
    .line 1942
    move-result-object v13

    .line 1943
    iput-object v13, v12, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Ljava/lang/Object;

    .line 1944
    .line 1945
    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v13

    .line 1949
    if-eqz v13, :cond_4b

    .line 1950
    .line 1951
    check-cast v13, Landroidx/camera/core/DynamicRange;

    .line 1952
    .line 1953
    iput-object v13, v12, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Ljava/lang/Object;

    .line 1954
    .line 1955
    sget-object v13, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->STREAM_USE_CASE_STREAM_SPEC_OPTION:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 1956
    .line 1957
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1958
    .line 1959
    .line 1960
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v13

    .line 1964
    sget-object v14, Landroidx/camera/camera2/impl/Camera2ImplConfig;->STREAM_USE_CASE_OPTION:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 1965
    .line 1966
    invoke-interface {v11, v14}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Z

    .line 1967
    .line 1968
    .line 1969
    move-result v15

    .line 1970
    if-eqz v15, :cond_45

    .line 1971
    .line 1972
    invoke-interface {v11, v14}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Ljava/lang/Object;

    .line 1973
    .line 1974
    .line 1975
    move-result-object v15

    .line 1976
    invoke-virtual {v13, v14, v15}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 1977
    .line 1978
    .line 1979
    :cond_45
    sget-object v14, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_ZSL_DISABLED:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 1980
    .line 1981
    invoke-interface {v11, v14}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Z

    .line 1982
    .line 1983
    .line 1984
    move-result v15

    .line 1985
    if-eqz v15, :cond_46

    .line 1986
    .line 1987
    invoke-interface {v11, v14}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Ljava/lang/Object;

    .line 1988
    .line 1989
    .line 1990
    move-result-object v15

    .line 1991
    invoke-virtual {v13, v14, v15}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 1992
    .line 1993
    .line 1994
    :cond_46
    sget-object v14, Landroidx/camera/core/impl/ImageCaptureConfig;->OPTION_IMAGE_CAPTURE_MODE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 1995
    .line 1996
    invoke-interface {v11, v14}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Z

    .line 1997
    .line 1998
    .line 1999
    move-result v15

    .line 2000
    if-eqz v15, :cond_47

    .line 2001
    .line 2002
    invoke-interface {v11, v14}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Ljava/lang/Object;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v15

    .line 2006
    invoke-virtual {v13, v14, v15}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 2007
    .line 2008
    .line 2009
    :cond_47
    sget-object v14, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 2010
    .line 2011
    invoke-interface {v11, v14}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Z

    .line 2012
    .line 2013
    .line 2014
    move-result v15

    .line 2015
    if-eqz v15, :cond_48

    .line 2016
    .line 2017
    invoke-interface {v11, v14}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Ljava/lang/Object;

    .line 2018
    .line 2019
    .line 2020
    move-result-object v15

    .line 2021
    invoke-virtual {v13, v14, v15}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 2022
    .line 2023
    .line 2024
    :cond_48
    new-instance v14, Landroidx/camera/camera2/impl/Camera2ImplConfig;

    .line 2025
    .line 2026
    invoke-direct {v14, v13}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/camera/core/impl/Config;)V

    .line 2027
    .line 2028
    .line 2029
    iput-object v14, v12, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:Ljava/lang/Object;

    .line 2030
    .line 2031
    iget-boolean v13, v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->hasVideoCapture:Z

    .line 2032
    .line 2033
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v13

    .line 2037
    iput-object v13, v12, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:Ljava/lang/Object;

    .line 2038
    .line 2039
    sget-object v13, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 2040
    .line 2041
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2042
    .line 2043
    .line 2044
    move-result v13

    .line 2045
    if-nez v13, :cond_4a

    .line 2046
    .line 2047
    if-eqz v7, :cond_49

    .line 2048
    .line 2049
    iput-object v7, v12, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Ljava/lang/Object;

    .line 2050
    .line 2051
    goto :goto_30

    .line 2052
    :cond_49
    invoke-static {v9}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 2053
    .line 2054
    .line 2055
    return-object v20

    .line 2056
    :cond_4a
    :goto_30
    invoke-virtual {v12}, Landroidx/appcompat/widget/TooltipPopup;->build()Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 2057
    .line 2058
    .line 2059
    move-result-object v9

    .line 2060
    invoke-interface {v6, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    .line 2062
    .line 2063
    move v15, v8

    .line 2064
    goto/16 :goto_2f

    .line 2065
    .line 2066
    :cond_4b
    invoke-static/range {v28 .. v28}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2067
    .line 2068
    .line 2069
    return-object v20

    .line 2070
    :cond_4c
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 2071
    .line 2072
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2073
    .line 2074
    .line 2075
    if-eqz v38, :cond_56

    .line 2076
    .line 2077
    iget-object v4, v2, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->bestSizesForStreamUseCase:Ljava/util/List;

    .line 2078
    .line 2079
    iget v5, v2, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForStreamUseCase:I

    .line 2080
    .line 2081
    if-ne v0, v5, :cond_56

    .line 2082
    .line 2083
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 2084
    .line 2085
    .line 2086
    move-result v0

    .line 2087
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2088
    .line 2089
    .line 2090
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 2091
    .line 2092
    .line 2093
    move-result v5

    .line 2094
    if-ne v0, v5, :cond_56

    .line 2095
    .line 2096
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->zip(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 2097
    .line 2098
    .line 2099
    move-result-object v0

    .line 2100
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2101
    .line 2102
    .line 2103
    move-result v3

    .line 2104
    if-eqz v3, :cond_4e

    .line 2105
    .line 2106
    :cond_4d
    move-object/from16 v3, p2

    .line 2107
    .line 2108
    move-object/from16 v0, v30

    .line 2109
    .line 2110
    goto :goto_31

    .line 2111
    :cond_4e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2112
    .line 2113
    .line 2114
    move-result-object v0

    .line 2115
    :cond_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2116
    .line 2117
    .line 2118
    move-result v3

    .line 2119
    if-eqz v3, :cond_4d

    .line 2120
    .line 2121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2122
    .line 2123
    .line 2124
    move-result-object v3

    .line 2125
    check-cast v3, Lkotlin/Pair;

    .line 2126
    .line 2127
    iget-object v4, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 2128
    .line 2129
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 2130
    .line 2131
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2132
    .line 2133
    .line 2134
    move-result v3

    .line 2135
    if-nez v3, :cond_4f

    .line 2136
    .line 2137
    goto/16 :goto_34

    .line 2138
    .line 2139
    :goto_31
    invoke-static {v0, v3, v6, v1}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->populateStreamUseCaseStreamSpecOptionWithInteropOverride(Landroidx/camera/camera2/pipe/CameraMetadata;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)Z

    .line 2140
    .line 2141
    .line 2142
    move-result v0

    .line 2143
    if-nez v0, :cond_56

    .line 2144
    .line 2145
    invoke-interface/range {v38 .. v38}, Ljava/util/Collection;->size()I

    .line 2146
    .line 2147
    .line 2148
    move-result v0

    .line 2149
    const/4 v15, 0x0

    .line 2150
    :goto_32
    if-ge v15, v0, :cond_56

    .line 2151
    .line 2152
    move-object/from16 v12, v38

    .line 2153
    .line 2154
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2155
    .line 2156
    .line 2157
    move-result-object v3

    .line 2158
    check-cast v3, Landroidx/camera/core/impl/SurfaceConfig;

    .line 2159
    .line 2160
    iget-object v3, v3, Landroidx/camera/core/impl/SurfaceConfig;->streamUseCase:Landroidx/camera/core/impl/StreamUseCase;

    .line 2161
    .line 2162
    iget-wide v3, v3, Landroidx/camera/core/impl/StreamUseCase;->value:J

    .line 2163
    .line 2164
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2165
    .line 2166
    .line 2167
    move-result-object v5

    .line 2168
    move-object/from16 v7, v32

    .line 2169
    .line 2170
    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2171
    .line 2172
    .line 2173
    move-result v5

    .line 2174
    if-eqz v5, :cond_53

    .line 2175
    .line 2176
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2177
    .line 2178
    .line 2179
    move-result-object v5

    .line 2180
    invoke-virtual {v7, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2181
    .line 2182
    .line 2183
    move-result-object v5

    .line 2184
    check-cast v5, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;

    .line 2185
    .line 2186
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2187
    .line 2188
    .line 2189
    iget-object v8, v5, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->implementationOptions:Landroidx/camera/core/impl/Config;

    .line 2190
    .line 2191
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2192
    .line 2193
    .line 2194
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2195
    .line 2196
    .line 2197
    move-result-object v3

    .line 2198
    invoke-static {v8, v3}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(Landroidx/camera/core/impl/Config;Ljava/lang/Long;)Landroidx/camera/camera2/impl/Camera2ImplConfig;

    .line 2199
    .line 2200
    .line 2201
    move-result-object v3

    .line 2202
    if-eqz v3, :cond_50

    .line 2203
    .line 2204
    iget-object v4, v5, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->size:Landroid/util/Size;

    .line 2205
    .line 2206
    invoke-static {v4}, Landroidx/camera/core/impl/AutoValue_StreamSpec;->builder(Landroid/util/Size;)Landroidx/appcompat/widget/TooltipPopup;

    .line 2207
    .line 2208
    .line 2209
    move-result-object v4

    .line 2210
    iget v8, v5, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->sessionType:I

    .line 2211
    .line 2212
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2213
    .line 2214
    .line 2215
    move-result-object v8

    .line 2216
    iput-object v8, v4, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Ljava/lang/Object;

    .line 2217
    .line 2218
    iget-object v8, v5, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->targetFrameRate:Landroid/util/Range;

    .line 2219
    .line 2220
    if-eqz v8, :cond_52

    .line 2221
    .line 2222
    iput-object v8, v4, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Ljava/lang/Object;

    .line 2223
    .line 2224
    iget-object v8, v5, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;->dynamicRange:Landroidx/camera/core/DynamicRange;

    .line 2225
    .line 2226
    if-eqz v8, :cond_51

    .line 2227
    .line 2228
    iput-object v8, v4, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Ljava/lang/Object;

    .line 2229
    .line 2230
    iput-object v3, v4, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:Ljava/lang/Object;

    .line 2231
    .line 2232
    invoke-virtual {v4}, Landroidx/appcompat/widget/TooltipPopup;->build()Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 2233
    .line 2234
    .line 2235
    move-result-object v3

    .line 2236
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2237
    .line 2238
    .line 2239
    :cond_50
    move-object/from16 v8, v33

    .line 2240
    .line 2241
    goto :goto_33

    .line 2242
    :cond_51
    const-string v0, "Null dynamicRange"

    .line 2243
    .line 2244
    invoke-static {v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 2245
    .line 2246
    .line 2247
    return-object v20

    .line 2248
    :cond_52
    invoke-static {v9}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 2249
    .line 2250
    .line 2251
    return-object v20

    .line 2252
    :cond_53
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2253
    .line 2254
    .line 2255
    move-result-object v5

    .line 2256
    move-object/from16 v8, v33

    .line 2257
    .line 2258
    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2259
    .line 2260
    .line 2261
    move-result v5

    .line 2262
    if-eqz v5, :cond_55

    .line 2263
    .line 2264
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2265
    .line 2266
    .line 2267
    move-result-object v5

    .line 2268
    invoke-virtual {v8, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2269
    .line 2270
    .line 2271
    move-result-object v5

    .line 2272
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2273
    .line 2274
    .line 2275
    check-cast v5, Landroidx/camera/core/impl/UseCaseConfig;

    .line 2276
    .line 2277
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2278
    .line 2279
    .line 2280
    move-result-object v10

    .line 2281
    check-cast v10, Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 2282
    .line 2283
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2284
    .line 2285
    .line 2286
    iget-object v11, v10, Landroidx/camera/core/impl/AutoValue_StreamSpec;->implementationOptions:Landroidx/camera/core/impl/Config;

    .line 2287
    .line 2288
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2289
    .line 2290
    .line 2291
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v3

    .line 2295
    invoke-static {v11, v3}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->getUpdatedImplementationOptionsWithUseCaseStreamSpecOption(Landroidx/camera/core/impl/Config;Ljava/lang/Long;)Landroidx/camera/camera2/impl/Camera2ImplConfig;

    .line 2296
    .line 2297
    .line 2298
    move-result-object v3

    .line 2299
    if-eqz v3, :cond_54

    .line 2300
    .line 2301
    invoke-virtual {v10}, Landroidx/camera/core/impl/AutoValue_StreamSpec;->toBuilder()Landroidx/appcompat/widget/TooltipPopup;

    .line 2302
    .line 2303
    .line 2304
    move-result-object v4

    .line 2305
    iput-object v3, v4, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:Ljava/lang/Object;

    .line 2306
    .line 2307
    invoke-virtual {v4}, Landroidx/appcompat/widget/TooltipPopup;->build()Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 2308
    .line 2309
    .line 2310
    move-result-object v3

    .line 2311
    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    .line 2313
    .line 2314
    :cond_54
    :goto_33
    add-int/lit8 v15, v15, 0x1

    .line 2315
    .line 2316
    move-object/from16 v32, v7

    .line 2317
    .line 2318
    move-object/from16 v33, v8

    .line 2319
    .line 2320
    move-object/from16 v38, v12

    .line 2321
    .line 2322
    goto/16 :goto_32

    .line 2323
    .line 2324
    :cond_55
    const-string v0, "SurfaceConfig does not map to any use case"

    .line 2325
    .line 2326
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 2327
    .line 2328
    .line 2329
    return-object v20

    .line 2330
    :cond_56
    :goto_34
    new-instance v0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    .line 2331
    .line 2332
    iget v2, v2, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;->maxFpsForAllSizes:I

    .line 2333
    .line 2334
    invoke-direct {v0, v6, v1, v2}, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;I)V

    .line 2335
    .line 2336
    .line 2337
    return-object v0

    .line 2338
    :cond_57
    move-object/from16 v3, p2

    .line 2339
    .line 2340
    const-string v1, " and Hardware level: "

    .line 2341
    .line 2342
    move-object/from16 v12, v25

    .line 2343
    .line 2344
    move-object/from16 v15, v29

    .line 2345
    .line 2346
    invoke-static {v12, v15, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2347
    .line 2348
    .line 2349
    move-result-object v1

    .line 2350
    iget v0, v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->hardwareLevel:I

    .line 2351
    .line 2352
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2353
    .line 2354
    .line 2355
    const-string v0, ". May be the specified resolution is too large and not supported. Existing surfaces: "

    .line 2356
    .line 2357
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2358
    .line 2359
    .line 2360
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2361
    .line 2362
    .line 2363
    move-object/from16 v14, v23

    .line 2364
    .line 2365
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2366
    .line 2367
    .line 2368
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2369
    .line 2370
    .line 2371
    const/16 v12, 0x2e

    .line 2372
    .line 2373
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2374
    .line 2375
    .line 2376
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2377
    .line 2378
    .line 2379
    move-result-object v0

    .line 2380
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 2381
    .line 2382
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2383
    .line 2384
    .line 2385
    move-result-object v0

    .line 2386
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2387
    .line 2388
    .line 2389
    throw v1

    .line 2390
    :cond_58
    const-string v0, "Failed to find supported resolutions."

    .line 2391
    .line 2392
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 2393
    .line 2394
    .line 2395
    return-object v20
.end method

.method public final transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;
    .locals 7

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig;->DEFAULT_STREAM_USE_CASE:Landroidx/camera/core/impl/StreamUseCase;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->CAPTURE_SESSION_TABLES:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    .line 11
    .line 12
    move v4, p1

    .line 13
    move v1, p2

    .line 14
    move-object v2, p3

    .line 15
    move-object v6, p4

    .line 16
    invoke-static/range {v1 .. v6}, Lcom/mikepenz/fastadapter/VerboseLogger;->transformSurfaceConfig(ILandroid/util/Size;Landroidx/camera/core/impl/AutoValue_SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final updateMaximumSizeByFormat(Ljava/util/LinkedHashMap;ILandroid/util/Rational;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->impl:Landroidx/biometric/BiometricPrompt;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {p0, p2, v0, p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxOutputSizeByFormat$camera_camera2(Landroid/hardware/camera2/params/StreamConfigurationMap;IZLandroid/util/Rational;)Landroid/util/Size;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final updateS720pOrS1440pSizeByFormat(Ljava/util/LinkedHashMap;Landroid/util/Size;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->isConcurrentCameraModeSupported:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->impl:Landroidx/biometric/BiometricPrompt;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {p0, p3, v1, v0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->getMaxOutputSizeByFormat$camera_camera2(Landroid/hardware/camera2/params/StreamConfigurationMap;IZLandroid/util/Rational;)Landroid/util/Size;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x2

    .line 28
    new-array v0, v0, [Landroid/util/Size;

    .line 29
    .line 30
    aput-object p2, v0, v1

    .line 31
    .line 32
    const/4 p2, 0x1

    .line 33
    aput-object p0, v0, p2

    .line 34
    .line 35
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance p2, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    .line 40
    .line 41
    invoke-direct {p2, v1}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>(Z)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, p2}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    move-object p2, p0

    .line 49
    check-cast p2, Landroid/util/Size;

    .line 50
    .line 51
    :goto_0
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final validateSelf(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;)V
    .locals 12

    .line 1
    iget v0, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->cameraMode:I

    .line 2
    .line 3
    iget-boolean v1, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isFeatureComboInvocation:Z

    .line 4
    .line 5
    const-string v2, "CONCURRENT_CAMERA"

    .line 6
    .line 7
    const-string v3, "ULTRA_HIGH_RESOLUTION_CAMERA"

    .line 8
    .line 9
    const-string v4, "DEFAULT"

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    const-string v7, " camera mode."

    .line 14
    .line 15
    iget-object v8, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->cameraId:Ljava/lang/String;

    .line 16
    .line 17
    const-string v9, "Camera device Id is "

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-boolean v10, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isUltraHdrOn:Z

    .line 22
    .line 23
    if-nez v10, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const-string p0, ". Ultra HDR is not currently supported in "

    .line 27
    .line 28
    invoke-static {v9, v8, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eq v0, v6, :cond_2

    .line 33
    .line 34
    if-eq v0, v5, :cond_1

    .line 35
    .line 36
    move-object v2, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v2, v3

    .line 39
    :cond_2
    :goto_0
    invoke-static {p0, v2, v7}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    .line 48
    .line 49
    iget v10, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->requiredMaxBitDepth:I

    .line 50
    .line 51
    const/16 v11, 0xa

    .line 52
    .line 53
    if-eq v10, v11, :cond_4

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const-string p0, ". 10 bit dynamic range is not currently supported in "

    .line 57
    .line 58
    invoke-static {v9, v8, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-eq v0, v6, :cond_6

    .line 63
    .line 64
    if-eq v0, v5, :cond_5

    .line 65
    .line 66
    move-object v2, v4

    .line 67
    goto :goto_2

    .line 68
    :cond_5
    move-object v2, v3

    .line 69
    :cond_6
    :goto_2
    invoke-static {p0, v2, v7}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_7
    :goto_3
    if-eqz v0, :cond_b

    .line 78
    .line 79
    if-nez v1, :cond_8

    .line 80
    .line 81
    goto :goto_5

    .line 82
    :cond_8
    const-string p0, ". feature combination is not currently supported in "

    .line 83
    .line 84
    invoke-static {v9, v8, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-eq v0, v6, :cond_a

    .line 89
    .line 90
    if-eq v0, v5, :cond_9

    .line 91
    .line 92
    move-object v2, v4

    .line 93
    goto :goto_4

    .line 94
    :cond_9
    move-object v2, v3

    .line 95
    :cond_a
    :goto_4
    invoke-static {p0, v2, v7}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_b
    :goto_5
    iget-boolean p1, p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;->isHighSpeedOn:Z

    .line 104
    .line 105
    if-eqz p1, :cond_d

    .line 106
    .line 107
    if-nez v1, :cond_c

    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_c
    const-string p0, "High-speed session is not supported with feature combination"

    .line 111
    .line 112
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_d
    :goto_6
    if-eqz p1, :cond_f

    .line 117
    .line 118
    iget-object p0, p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->highSpeedResolver:Landroidx/camera/camera2/internal/HighSpeedResolver;

    .line 119
    .line 120
    iget-object p0, p0, Landroidx/camera/camera2/internal/HighSpeedResolver;->isHighSpeedSupported$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 121
    .line 122
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-eqz p0, :cond_e

    .line 133
    .line 134
    goto :goto_7

    .line 135
    :cond_e
    const-string p0, "High-speed session is not supported on this device."

    .line 136
    .line 137
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_f
    :goto_7
    return-void
.end method

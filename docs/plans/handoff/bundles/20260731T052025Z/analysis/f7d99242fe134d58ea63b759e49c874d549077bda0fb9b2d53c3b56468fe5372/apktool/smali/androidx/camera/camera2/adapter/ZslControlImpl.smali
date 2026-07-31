.class public final Landroidx/camera/camera2/adapter/ZslControlImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/adapter/ZslControl;


# instance fields
.field public final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field public final isZslDisabledByQuirks:Z

.field public isZslDisabledByUseCaseConfig:Z

.field public reprocessingImageDeferrableSurface:Landroidx/camera/core/SurfaceRequest$2;

.field public reprocessingImageReader:Lokhttp3/internal/connection/RouteSelector;

.field public final streamConfigurationMap$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final zslRingBuffer:Landroidx/core/view/MenuHostHelper;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 7
    .line 8
    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-direct {p1, v0, p0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->streamConfigurationMap$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 20
    .line 21
    new-instance p1, Landroidx/core/view/MenuHostHelper;

    .line 22
    .line 23
    new-instance v0, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->zslRingBuffer:Landroidx/core/view/MenuHostHelper;

    .line 32
    .line 33
    const-class p1, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk;

    .line 34
    .line 35
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    iput-boolean p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByQuirks:Z

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 10

    .line 1
    iget-object v0, p1, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Lorg/apache/james/mime4j/stream/RawField;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->reset()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByUseCaseConfig:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iput v2, v0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByQuirks:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iput v2, v0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    sget-object v1, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    check-cast v1, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, [I

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    sget-object v1, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->EMPTY_INT_ARRAY:[I

    .line 47
    .line 48
    :cond_2
    const/4 v3, 0x4

    .line 49
    invoke-static {v1, v3}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([II)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const-string v3, "CXCP"

    .line 54
    .line 55
    if-nez v1, :cond_4

    .line 56
    .line 57
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isInfoEnabled()Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    const-string p0, "ZslControlImpl: Private reprocessing isn\'t supported"

    .line 64
    .line 65
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_3
    iput v2, v0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->streamConfigurationMap$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 72
    .line 73
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 78
    .line 79
    const/16 v4, 0x22

    .line 80
    .line 81
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_e

    .line 101
    .line 102
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-nez v6, :cond_5

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    move-object v6, v5

    .line 114
    check-cast v6, Landroid/util/Size;

    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    mul-int/2addr v6, v7

    .line 128
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    move-object v8, v7

    .line 133
    check-cast v8, Landroid/util/Size;

    .line 134
    .line 135
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    mul-int/2addr v8, v9

    .line 147
    if-ge v6, v8, :cond_7

    .line 148
    .line 149
    move-object v5, v7

    .line 150
    move v6, v8

    .line 151
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-nez v7, :cond_6

    .line 156
    .line 157
    :goto_0
    check-cast v5, Landroid/util/Size;

    .line 158
    .line 159
    if-nez v5, :cond_8

    .line 160
    .line 161
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isWarnEnabled()Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    if-eqz p0, :cond_a

    .line 166
    .line 167
    const-string p0, "ZslControlImpl: Unable to find a supported size for ZSL"

    .line 168
    .line 169
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_8
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_9

    .line 178
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v6, "ZslControlImpl: Selected ZSL size: "

    .line 182
    .line 183
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    :cond_9
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 201
    .line 202
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getValidOutputFormatsForInput(I)[I

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    const/16 v2, 0x100

    .line 210
    .line 211
    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([II)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-nez v1, :cond_b

    .line 216
    .line 217
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isWarnEnabled()Z

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    if-eqz p0, :cond_a

    .line 222
    .line 223
    const-string p0, "ZslControlImpl: JPEG isn\'t valid output for ZSL format"

    .line 224
    .line 225
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    :cond_a
    return-void

    .line 229
    :cond_b
    new-instance v1, Landroidx/camera/core/MetadataImageReader;

    .line 230
    .line 231
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    const/16 v5, 0x9

    .line 240
    .line 241
    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/camera/core/MetadataImageReader;-><init>(IIII)V

    .line 242
    .line 243
    .line 244
    iget-object v2, v1, Landroidx/camera/core/MetadataImageReader;->mCameraCaptureCallback:Landroidx/camera/core/MetadataImageReader$1;

    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    new-instance v3, Lokhttp3/internal/connection/RouteSelector;

    .line 250
    .line 251
    invoke-direct {v3, v1}, Lokhttp3/internal/connection/RouteSelector;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 252
    .line 253
    .line 254
    new-instance v5, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 255
    .line 256
    const/4 v6, 0x2

    .line 257
    invoke-direct {v5, v6, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    invoke-static {}, Lorg/slf4j/helpers/Util;->ioExecutor()Landroidx/camera/core/impl/utils/executor/IoExecutor;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    invoke-virtual {v1, v5, v7}, Landroidx/camera/core/MetadataImageReader;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 265
    .line 266
    .line 267
    new-instance v1, Landroidx/camera/core/SurfaceRequest$2;

    .line 268
    .line 269
    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteSelector;->getSurface()Landroid/view/Surface;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    if-eqz v5, :cond_d

    .line 274
    .line 275
    new-instance v7, Landroid/util/Size;

    .line 276
    .line 277
    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteSelector;->getWidth()I

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteSelector;->getHeight()I

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 286
    .line 287
    .line 288
    invoke-direct {v1, v5, v7, v4}, Landroidx/camera/core/SurfaceRequest$2;-><init>(Landroid/view/Surface;Landroid/util/Size;I)V

    .line 289
    .line 290
    .line 291
    iget-object v4, v1, Landroidx/camera/core/impl/DeferrableSurface;->mTerminationFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 292
    .line 293
    invoke-static {v4}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    new-instance v5, Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda3;

    .line 298
    .line 299
    invoke-direct {v5, v3, v6}, Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda3;-><init>(Lokhttp3/internal/connection/RouteSelector;I)V

    .line 300
    .line 301
    .line 302
    invoke-static {}, Lorg/slf4j/helpers/Util;->mainThreadExecutor()Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-interface {v4, v5, v6}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 307
    .line 308
    .line 309
    sget-object v4, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    .line 310
    .line 311
    const/4 v5, -0x1

    .line 312
    invoke-virtual {p1, v1, v4, v5}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/stream/RawField;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 316
    .line 317
    .line 318
    iget-object v0, p1, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSingleCameraCaptureCallbacks:Ljava/util/ArrayList;

    .line 319
    .line 320
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    if-nez v4, :cond_c

    .line 325
    .line 326
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    :cond_c
    new-instance v0, Landroid/hardware/camera2/params/InputConfiguration;

    .line 330
    .line 331
    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteSelector;->getWidth()I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteSelector;->getHeight()I

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    invoke-virtual {v3}, Lokhttp3/internal/connection/RouteSelector;->getImageFormat()I

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    invoke-direct {v0, v2, v4, v5}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 344
    .line 345
    .line 346
    iput-object v0, p1, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    .line 347
    .line 348
    iput-object v3, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageReader:Lokhttp3/internal/connection/RouteSelector;

    .line 349
    .line 350
    iput-object v1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageDeferrableSurface:Landroidx/camera/core/SurfaceRequest$2;

    .line 351
    .line 352
    return-void

    .line 353
    :cond_d
    const-string p0, "Required value was null."

    .line 354
    .line 355
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :cond_e
    invoke-static {}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m()V

    .line 360
    .line 361
    .line 362
    return-void
.end method

.method public final clearRingBuffer()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->zslRingBuffer:Landroidx/core/view/MenuHostHelper;

    .line 2
    .line 3
    :goto_0
    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->dequeue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/camera/core/ImageProxy;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p0
.end method

.method public final clearZslConfig()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->reset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final isZslSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/impl/SessionConfig;)Z
    .locals 1

    .line 1
    iget-object p0, p1, Landroidx/camera/core/impl/DeferrableSurface;->mPrescribedSize:Landroid/util/Size;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p2, p2, Landroidx/camera/core/impl/SessionConfig;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget p1, p1, Landroidx/camera/core/impl/DeferrableSurface;->mPrescribedStreamFormat:I

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p2}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {p2}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-ne p0, p1, :cond_0

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public final reset()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageDeferrableSurface:Landroidx/camera/core/SurfaceRequest$2;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageReader:Lokhttp3/internal/connection/RouteSelector;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v3, v0, Landroidx/camera/core/impl/DeferrableSurface;->mTerminationFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 11
    .line 12
    invoke-static {v3}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda3;

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    invoke-direct {v4, v1, v5}, Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda3;-><init>(Lokhttp3/internal/connection/RouteSelector;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lorg/slf4j/helpers/Util;->mainThreadExecutor()Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-interface {v3, v4, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lokhttp3/internal/connection/RouteSelector;->clearOnImageAvailableListener()V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageReader:Lokhttp3/internal/connection/RouteSelector;

    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->reprocessingImageDeferrableSurface:Landroidx/camera/core/SurfaceRequest$2;

    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->clearRingBuffer()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final setZslDisabledByFlashMode(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setZslDisabledByUserCaseConfig(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByUseCaseConfig:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->clearRingBuffer()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-boolean p1, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->isZslDisabledByUseCaseConfig:Z

    .line 11
    .line 12
    return-void
.end method

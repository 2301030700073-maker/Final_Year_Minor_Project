.class public final Landroidx/camera/camera2/impl/MeteringRepeating;
.super Landroidx/camera/core/UseCase;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

.field public closeableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

.field public deferrableSurface:Landroidx/camera/core/SurfaceRequest$2;

.field public final deferrableSurfaceLock:Ljava/lang/Object;

.field public final displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

.field public final meteringSurfaceSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;Landroidx/camera/camera2/impl/DisplayInfoManager;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 11
    .line 12
    iput-object p3, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 13
    .line 14
    sget-object p2, Landroidx/camera/camera2/impl/MeteringRepeatingKt;->DEFAULT_PREVIEW_SIZE:Landroid/util/Size;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 17
    .line 18
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    const-string v1, "CXCP"

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isErrorEnabled()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    const-string p1, "Can not retrieve SCALER_STREAM_CONFIGURATION_MAP."

    .line 43
    .line 44
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    move-object p1, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/16 v2, 0x22

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :goto_0
    if-nez p1, :cond_2

    .line 56
    .line 57
    goto/16 :goto_6

    .line 58
    .line 59
    :cond_2
    array-length v2, p1

    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :cond_3
    sget-object p2, Landroidx/camera/camera2/compat/workaround/SupportedRepeatingSurfaceSizeKt;->MINI_PREVIEW_SIZE_HUAWEI_MATE_9:Landroid/util/Size;

    .line 65
    .line 66
    const-class p2, Landroidx/camera/camera2/compat/quirk/RepeatingStreamConstraintForVideoRecordingQuirk;

    .line 67
    .line 68
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2, p2}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Landroidx/camera/camera2/compat/quirk/RepeatingStreamConstraintForVideoRecordingQuirk;

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    if-nez p2, :cond_4

    .line 80
    .line 81
    move-object p2, p1

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    array-length v3, p1

    .line 89
    move v4, v2

    .line 90
    :goto_1
    if-ge v4, v3, :cond_6

    .line 91
    .line 92
    aget-object v5, p1, v4

    .line 93
    .line 94
    sget-object v6, Landroidx/camera/camera2/compat/workaround/SupportedRepeatingSurfaceSizeKt;->SIZE_COMPARATOR:Landroidx/camera/core/impl/utils/CompareSizesByArea;

    .line 95
    .line 96
    sget-object v7, Landroidx/camera/camera2/compat/workaround/SupportedRepeatingSurfaceSizeKt;->MINI_PREVIEW_SIZE_HUAWEI_MATE_9:Landroid/util/Size;

    .line 97
    .line 98
    invoke-virtual {v6, v5, v7}, Landroidx/camera/core/impl/utils/CompareSizesByArea;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-ltz v6, :cond_5

    .line 103
    .line 104
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    new-array v3, v2, [Landroid/util/Size;

    .line 111
    .line 112
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, [Landroid/util/Size;

    .line 117
    .line 118
    :goto_2
    array-length v3, p2

    .line 119
    if-nez v3, :cond_7

    .line 120
    .line 121
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isWarnEnabled()Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_8

    .line 126
    .line 127
    const-string p2, "No supported output size list, fallback to current list"

    .line 128
    .line 129
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_7
    move-object p1, p2

    .line 134
    :cond_8
    :goto_3
    array-length p2, p1

    .line 135
    const/4 v1, 0x1

    .line 136
    if-le p2, v1, :cond_9

    .line 137
    .line 138
    new-instance p2, Landroidx/camera/camera2/impl/MeteringRepeatingKt$getProperPreviewSize$$inlined$sortBy$1;

    .line 139
    .line 140
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 141
    .line 142
    .line 143
    array-length v3, p1

    .line 144
    if-le v3, v1, :cond_9

    .line 145
    .line 146
    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 147
    .line 148
    .line 149
    :cond_9
    invoke-virtual {p3}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getPreviewSize()Landroid/util/Size;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 154
    .line 155
    .line 156
    move-result p3

    .line 157
    int-to-long v3, p3

    .line 158
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    int-to-long p2, p2

    .line 163
    mul-long/2addr v3, p2

    .line 164
    const-wide/32 p2, 0x4b000

    .line 165
    .line 166
    .line 167
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 168
    .line 169
    .line 170
    move-result-wide p2

    .line 171
    array-length v1, p1

    .line 172
    move v3, v2

    .line 173
    :goto_4
    if-ge v3, v1, :cond_d

    .line 174
    .line 175
    aget-object v4, p1, v3

    .line 176
    .line 177
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    int-to-long v5, v5

    .line 182
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    int-to-long v7, v7

    .line 187
    mul-long/2addr v5, v7

    .line 188
    cmp-long v5, v5, p2

    .line 189
    .line 190
    if-nez v5, :cond_a

    .line 191
    .line 192
    move-object p2, v4

    .line 193
    goto :goto_6

    .line 194
    :cond_a
    if-lez v5, :cond_c

    .line 195
    .line 196
    if-nez v0, :cond_b

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_b
    move-object p2, v0

    .line 200
    goto :goto_6

    .line 201
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 202
    .line 203
    move-object v0, v4

    .line 204
    goto :goto_4

    .line 205
    :cond_d
    :goto_5
    if-nez v0, :cond_b

    .line 206
    .line 207
    aget-object p2, p1, v2

    .line 208
    .line 209
    :goto_6
    iput-object p2, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->meteringSurfaceSize:Landroid/util/Size;

    .line 210
    .line 211
    new-instance p1, Ljava/lang/Object;

    .line 212
    .line 213
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 214
    .line 215
    .line 216
    iput-object p1, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->deferrableSurfaceLock:Ljava/lang/Object;

    .line 217
    .line 218
    return-void
.end method


# virtual methods
.method public final createAndManageDeferrableSurface(Landroid/util/Size;)Landroidx/camera/core/SurfaceRequest$2;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/view/Surface;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->deferrableSurface:Landroidx/camera/core/SurfaceRequest$2;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v2, Landroidx/camera/core/SurfaceRequest$2;

    .line 31
    .line 32
    iget-object v3, p0, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 33
    .line 34
    invoke-interface {v3}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-direct {v2, v1, p1, v3}, Landroidx/camera/core/SurfaceRequest$2;-><init>(Landroid/view/Surface;Landroid/util/Size;I)V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->deferrableSurface:Landroidx/camera/core/SurfaceRequest$2;

    .line 42
    .line 43
    iget-object p0, v2, Landroidx/camera/core/impl/DeferrableSurface;->mTerminationFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 44
    .line 45
    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    new-instance p1, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;

    .line 50
    .line 51
    const/4 v3, 0x6

    .line 52
    invoke-direct {p1, v3, v1, v0}, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lorg/slf4j/helpers/Util;->directExecutor()Lcom/bumptech/glide/util/Executors$1;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {p0, p1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 60
    .line 61
    .line 62
    return-object v2
.end method

.method public final createPipeline(Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->deferrableSurfaceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/MeteringRepeating;->createAndManageDeferrableSurface(Landroid/util/Size;)Landroidx/camera/core/SurfaceRequest$2;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    iget-object v0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->closeableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->close()V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v0, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 17
    .line 18
    new-instance v2, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda2;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v2, p0, p1, v3}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/UseCase;Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v2}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;-><init>(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->closeableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 28
    .line 29
    new-instance p0, Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;

    .line 30
    .line 31
    invoke-direct {p0}, Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iget-object p1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Lorg/apache/james/mime4j/stream/RawField;

    .line 39
    .line 40
    iput v3, p1, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 41
    .line 42
    sget-object p1, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    .line 43
    .line 44
    const/4 v2, -0x1

    .line 45
    invoke-virtual {p0, v1, p1, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;I)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 49
    .line 50
    return-object p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0

    .line 53
    throw p0
.end method

.method public final getDefaultConfig(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p0, Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;

    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public final getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->displayInfoManager:Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public final onSuggestedStreamSpecUpdated(Landroidx/camera/core/impl/AutoValue_StreamSpec;Landroidx/camera/core/impl/AutoValue_StreamSpec;)Landroidx/camera/core/impl/AutoValue_StreamSpec;
    .locals 1

    .line 1
    iget-object p2, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->meteringSurfaceSize:Landroid/util/Size;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroidx/camera/camera2/impl/MeteringRepeating;->createPipeline(Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/camera/core/impl/AutoValue_StreamSpec;->toBuilder()Landroidx/appcompat/widget/TooltipPopup;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iput-object p2, p0, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipPopup;->build()Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final onUnbind()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->closeableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->closeableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->deferrableSurfaceLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->deferrableSurface:Landroidx/camera/core/SurfaceRequest$2;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/camera/camera2/impl/MeteringRepeating;->deferrableSurface:Landroidx/camera/core/SurfaceRequest$2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit v1

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v1

    .line 29
    throw p0
.end method

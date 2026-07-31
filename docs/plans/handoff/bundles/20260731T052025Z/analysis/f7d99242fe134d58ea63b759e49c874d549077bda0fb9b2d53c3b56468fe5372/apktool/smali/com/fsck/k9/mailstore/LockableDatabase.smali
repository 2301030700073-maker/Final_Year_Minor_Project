.class public final Lcom/fsck/k9/mailstore/LockableDatabase;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/common/state/StateMachine;


# instance fields
.field public context:Ljava/lang/Object;

.field public generalSettingsManager:Ljava/lang/Object;

.field public inTransaction:Ljava/lang/Object;

.field public mDb:Ljava/lang/Object;

.field public mReadLock:Ljava/lang/Object;

.field public mSchemaDefinition:Ljava/lang/Object;

.field public mWriteLock:Ljava/lang/Object;

.field public storageFilesProvider:Ljava/lang/Object;


# direct methods
.method public static final access$getCameraConfig(Lcom/fsck/k9/mailstore/LockableDatabase;Landroidx/camera/core/CameraSelector;)Landroidx/biometric/BiometricPrompt;
    .locals 3

    .line 1
    iget-object p1, p1, Landroidx/camera/core/CameraSelector;->mCameraFilterSet:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast v0, Landroidx/camera/core/CameraFilter;

    .line 24
    .line 25
    sget-object v0, Landroidx/camera/core/CameraFilter;->DEFAULT_ID:Landroidx/camera/core/impl/AutoValue_Identifier;

    .line 26
    .line 27
    invoke-static {v0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    sget-object v1, Landroidx/camera/core/impl/ExtendedCameraConfigProviderStore;->LOCK:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v2, Landroidx/camera/core/impl/ExtendedCameraConfigProviderStore;->CAMERA_CONFIG_PROVIDERS:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroidx/camera/core/impl/CameraConfigProvider;

    .line 43
    .line 44
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p0

    .line 56
    :cond_1
    sget-object p0, Landroidx/camera/core/impl/CameraConfigs;->DEFAULT_CAMERA_CONFIG:Landroidx/biometric/BiometricPrompt;

    .line 57
    .line 58
    return-object p0
.end method

.method public static final access$setCameraOperatingMode(Lcom/fsck/k9/mailstore/LockableDatabase;I)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/camera/core/CameraX;

    .line 4
    .line 5
    if-eqz p0, :cond_8

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/compose/ui/node/NodeChain;

    .line 11
    .line 12
    if-eqz p0, :cond_7

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iput p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentMode:I

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    const/4 v2, 0x2

    .line 31
    const/4 v3, 0x1

    .line 32
    if-ne p1, v2, :cond_1

    .line 33
    .line 34
    move v4, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v4, v0

    .line 37
    :goto_0
    iput-boolean v4, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentModeOn:Z

    .line 38
    .line 39
    invoke-virtual {v1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_6

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroidx/camera/core/impl/CameraInternal;

    .line 61
    .line 62
    instance-of v4, v1, Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    .line 63
    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    check-cast v1, Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    const/4 v1, 0x0

    .line 70
    :goto_2
    if-eqz v1, :cond_2

    .line 71
    .line 72
    if-eq p1, v3, :cond_5

    .line 73
    .line 74
    if-eq p1, v2, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {v1, v0}, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->setCameraGraphCreationMode$camera_camera2(Z)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    invoke-virtual {v1, v3}, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->setCameraGraphCreationMode$camera_camera2(Z)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_6
    :goto_3
    return-void

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    monitor-exit v0

    .line 88
    throw p0

    .line 89
    :cond_7
    const-string p0, "CameraX not initialized yet."

    .line 90
    .line 91
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_8
    return-void
.end method

.method public static bindToLifecycleInternal$default(Lcom/fsck/k9/mailstore/LockableDatabase;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/LegacySessionConfig;)Landroidx/camera/lifecycle/LifecycleCamera;
    .locals 17

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    sget-object v9, Landroidx/camera/core/SurfaceRequest$1;->DEFAULT:Landroidx/camera/core/SurfaceRequest$1;

    .line 10
    .line 11
    const-string v4, "CX:bindToLifecycle-internal"

    .line 12
    .line 13
    invoke-static {v4}, Lorg/slf4j/helpers/Util;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-static {}, Lorg/jsoup/helper/Validate;->checkMainThread()V

    .line 21
    .line 22
    .line 23
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v4, Landroidx/camera/core/CameraX;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v4, v4, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v2, v4}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    invoke-interface {v5, v4}, Landroidx/camera/core/impl/CameraInternal;->setPrimary(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/impl/AdapterCameraInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const/4 v6, 0x0

    .line 52
    invoke-static {v7, v6}, Landroidx/appcompat/app/ActionBar;->fromAdapterInfos(Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/impl/AdapterCameraInfo;)Landroidx/camera/core/CameraIdentifier;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v8, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v8, Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 59
    .line 60
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object v10, v8, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mLock:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :try_start_1
    new-instance v11, Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    invoke-direct {v11, v12, v2}, Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;-><init>(ILandroidx/camera/core/CameraIdentifier;)V

    .line 73
    .line 74
    .line 75
    iget-object v12, v8, Landroidx/camera/lifecycle/LifecycleCameraRepository;->mCameraMap:Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    check-cast v11, Landroidx/camera/lifecycle/LifecycleCamera;

    .line 82
    .line 83
    const/4 v12, 0x0

    .line 84
    if-eqz v11, :cond_2

    .line 85
    .line 86
    iget-object v13, v11, Landroidx/camera/lifecycle/LifecycleCamera;->mCameraUseCaseAdapter:Landroidx/camera/core/internal/CameraUseCaseAdapter;

    .line 87
    .line 88
    iget-object v14, v13, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mCameraInternal:Landroidx/camera/core/impl/AdapterCameraInternal;

    .line 89
    .line 90
    iget-object v14, v14, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 91
    .line 92
    invoke-interface {v14}, Landroidx/camera/core/impl/CameraInternal;->isRemoved()Z

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    if-nez v14, :cond_1

    .line 97
    .line 98
    iget-object v13, v13, Landroidx/camera/core/internal/CameraUseCaseAdapter;->mSecondaryCameraInternal:Landroidx/camera/core/impl/AdapterCameraInternal;

    .line 99
    .line 100
    if-eqz v13, :cond_0

    .line 101
    .line 102
    iget-object v13, v13, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 103
    .line 104
    invoke-interface {v13}, Landroidx/camera/core/impl/CameraInternal;->isRemoved()Z

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    if-eqz v13, :cond_0

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    move v13, v12

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    :goto_0
    move v13, v4

    .line 114
    :goto_1
    if-eqz v13, :cond_2

    .line 115
    .line 116
    invoke-virtual {v8, v11}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->unregisterCamera(Landroidx/camera/lifecycle/LifecycleCamera;)V

    .line 117
    .line 118
    .line 119
    monitor-exit v10

    .line 120
    move-object v11, v6

    .line 121
    goto :goto_2

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    goto/16 :goto_6

    .line 124
    .line 125
    :cond_2
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :goto_2
    :try_start_2
    iget-object v8, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v8, Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 129
    .line 130
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v8}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCameras()Ljava/util/Collection;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    iget-object v10, v3, Landroidx/camera/core/LegacySessionConfig;->useCases:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v10, Ljava/util/List;

    .line 140
    .line 141
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    if-eqz v13, :cond_6

    .line 150
    .line 151
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    check-cast v13, Landroidx/camera/core/UseCase;

    .line 156
    .line 157
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    :cond_4
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v15

    .line 165
    if-eqz v15, :cond_3

    .line 166
    .line 167
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v15

    .line 171
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    check-cast v15, Landroidx/camera/lifecycle/LifecycleCamera;

    .line 175
    .line 176
    invoke-virtual {v15, v13}, Landroidx/camera/lifecycle/LifecycleCamera;->isBound(Landroidx/camera/core/UseCase;)Z

    .line 177
    .line 178
    .line 179
    move-result v16

    .line 180
    if-eqz v16, :cond_4

    .line 181
    .line 182
    invoke-virtual {v15}, Landroidx/camera/lifecycle/LifecycleCamera;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 183
    .line 184
    .line 185
    move-result-object v15

    .line 186
    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v15

    .line 190
    if-eqz v15, :cond_5

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 194
    .line 195
    const-string v1, "Use case %s already bound to a different lifecycle."

    .line 196
    .line 197
    new-array v2, v4, [Ljava/lang/Object;

    .line 198
    .line 199
    aput-object v13, v2, v12

    .line 200
    .line 201
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v0

    .line 213
    :cond_6
    if-nez v11, :cond_8

    .line 214
    .line 215
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 216
    .line 217
    move-object v14, v4

    .line 218
    check-cast v14, Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 219
    .line 220
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v4, Landroidx/camera/core/CameraX;

    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    iget-object v4, v4, Landroidx/camera/core/CameraX;->mCameraUseCaseAdapterProvider:Lokhttp3/Dispatcher;

    .line 231
    .line 232
    if-eqz v4, :cond_7

    .line 233
    .line 234
    new-instance v8, Landroidx/camera/core/internal/CameraUseCaseAdapter;

    .line 235
    .line 236
    iget-object v10, v4, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 237
    .line 238
    move-object v11, v10

    .line 239
    check-cast v11, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    .line 240
    .line 241
    iget-object v10, v4, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 242
    .line 243
    move-object v12, v10

    .line 244
    check-cast v12, Landroidx/cardview/widget/CardView$1;

    .line 245
    .line 246
    iget-object v4, v4, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 247
    .line 248
    move-object v13, v4

    .line 249
    check-cast v13, Landroidx/camera/core/impl/UseCaseConfigFactory;

    .line 250
    .line 251
    move-object v4, v8

    .line 252
    move-object v8, v6

    .line 253
    move-object v10, v9

    .line 254
    invoke-direct/range {v4 .. v13}, Landroidx/camera/core/internal/CameraUseCaseAdapter;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/impl/AdapterCameraInfo;Landroidx/camera/core/SurfaceRequest$1;Landroidx/camera/core/SurfaceRequest$1;Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;Landroidx/cardview/widget/CardView$1;Landroidx/camera/core/impl/UseCaseConfigFactory;)V

    .line 255
    .line 256
    .line 257
    iget-object v5, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v5, Landroidx/camera/core/CameraX;

    .line 260
    .line 261
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    iget-object v5, v5, Landroidx/camera/core/CameraX;->mRotationProvider:Lkotlin/SynchronizedLazyImpl;

    .line 265
    .line 266
    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    check-cast v5, Landroidx/camera/core/RotationProvider;

    .line 271
    .line 272
    invoke-virtual {v14, v1, v4, v5}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->createLifecycleCamera(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/internal/CameraUseCaseAdapter;Landroidx/camera/core/RotationProvider;)Landroidx/camera/lifecycle/LifecycleCamera;

    .line 273
    .line 274
    .line 275
    move-result-object v11

    .line 276
    goto :goto_4

    .line 277
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 278
    .line 279
    const-string v1, "CameraX not initialized yet."

    .line 280
    .line 281
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw v0

    .line 285
    :cond_8
    :goto_4
    iget-object v4, v3, Landroidx/camera/core/LegacySessionConfig;->useCases:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v4, Ljava/util/List;

    .line 288
    .line 289
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    if-eqz v4, :cond_9

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_9
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v4, Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 299
    .line 300
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    iget-object v5, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v5, Landroidx/camera/core/CameraX;

    .line 306
    .line 307
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    iget-object v5, v5, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/compose/ui/node/NodeChain;

    .line 311
    .line 312
    if-eqz v5, :cond_a

    .line 313
    .line 314
    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v5, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    .line 317
    .line 318
    invoke-virtual {v4, v11, v3, v5}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->bindToLifecycleCamera(Landroidx/camera/lifecycle/LifecycleCamera;Landroidx/camera/core/LegacySessionConfig;Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;)V

    .line 319
    .line 320
    .line 321
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->generalSettingsManager:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v0, Ljava/util/HashSet;

    .line 324
    .line 325
    new-instance v3, Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;

    .line 326
    .line 327
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    invoke-direct {v3, v1, v2}, Landroidx/camera/lifecycle/AutoValue_LifecycleCameraRepository_Key;-><init>(ILandroidx/camera/core/CameraIdentifier;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 335
    .line 336
    .line 337
    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 338
    .line 339
    .line 340
    return-object v11

    .line 341
    :cond_a
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 342
    .line 343
    const-string v1, "CameraX not initialized yet."

    .line 344
    .line 345
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 349
    :goto_6
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 350
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 351
    :catchall_1
    move-exception v0

    .line 352
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 353
    .line 354
    .line 355
    throw v0
.end method


# virtual methods
.method public debug(Lkotlin/jvm/functions/Function0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/slf4j/event/EventRecodingLogger;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-static {v0, p0, v1, p1, v2}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    .locals 12

    .line 1
    const-string v0, "LockableDatabase: Transaction ended, took %d ms / %s"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/ThreadLocal;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/concurrent/locks/Lock;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    move p1, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p1, v3

    .line 27
    :goto_0
    const/4 v5, 0x0

    .line 28
    :try_start_0
    iget-object v6, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->generalSettingsManager:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v6, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 31
    .line 32
    check-cast v6, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 33
    .line 34
    invoke-virtual {v6}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    iget-object v6, v6, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 39
    .line 40
    iget-boolean v6, v6, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v1, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v7, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v7, Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    .line 53
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_1
    :goto_1
    const/4 v7, 0x2

    .line 61
    const-wide/16 v8, 0x0

    .line 62
    .line 63
    :try_start_1
    iget-object v10, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v10, Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    .line 67
    invoke-interface {p2, v10}, Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;->doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    iget-object v10, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v10, Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    .line 77
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catchall_1
    move-exception p2

    .line 82
    goto :goto_3

    .line 83
    :cond_2
    :goto_2
    if-eqz p1, :cond_4

    .line 84
    .line 85
    if-eqz v6, :cond_3

    .line 86
    .line 87
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v8

    .line 91
    :cond_3
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p0, Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 96
    .line 97
    .line 98
    if-eqz v6, :cond_4

    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v10

    .line 104
    sub-long/2addr v10, v8

    .line 105
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    new-instance v6, Ljava/lang/Exception;

    .line 110
    .line 111
    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    aget-object v6, v6, v4

    .line 119
    .line 120
    new-array v7, v7, [Ljava/lang/Object;

    .line 121
    .line 122
    aput-object p0, v7, v3

    .line 123
    .line 124
    aput-object v6, v7, v4

    .line 125
    .line 126
    invoke-static {v0, v7}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .line 128
    .line 129
    :cond_4
    if-eqz p1, :cond_5

    .line 130
    .line 131
    invoke-virtual {v1, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 135
    .line 136
    .line 137
    return-object p2

    .line 138
    :goto_3
    if-eqz p1, :cond_7

    .line 139
    .line 140
    if-eqz v6, :cond_6

    .line 141
    .line 142
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v8

    .line 146
    :cond_6
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p0, Landroid/database/sqlite/SQLiteDatabase;

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 151
    .line 152
    .line 153
    if-eqz v6, :cond_7

    .line 154
    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 156
    .line 157
    .line 158
    move-result-wide v10

    .line 159
    sub-long/2addr v10, v8

    .line 160
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    new-instance v6, Ljava/lang/Exception;

    .line 165
    .line 166
    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    aget-object v6, v6, v4

    .line 174
    .line 175
    new-array v7, v7, [Ljava/lang/Object;

    .line 176
    .line 177
    aput-object p0, v7, v3

    .line 178
    .line 179
    aput-object v6, v7, v4

    .line 180
    .line 181
    invoke-static {v0, v7}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_7
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    :goto_4
    if-eqz p1, :cond_8

    .line 186
    .line 187
    invoke-virtual {v1, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_8
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 191
    .line 192
    .line 193
    throw p0
.end method

.method public fromResponseJson(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "token_type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlinx/atomicfu/AtomicFU;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "token type must not be empty if defined"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/lang/Object;

    .line 13
    .line 14
    const-string v0, "access_token"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string v1, "access token cannot be empty if specified"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/lang/Object;

    .line 28
    .line 29
    const-string v0, "expires_at"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lkotlinx/atomicfu/AtomicFU;->getLongIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Ljava/lang/Object;

    .line 36
    .line 37
    const-string v0, "expires_in"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    add-long/2addr v0, v2

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Ljava/lang/Object;

    .line 65
    .line 66
    :cond_1
    const-string v0, "refresh_token"

    .line 67
    .line 68
    invoke-static {p1, v0}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    const-string v1, "refresh token must not be empty if defined"

    .line 75
    .line 76
    invoke-static {v0, v1}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 80
    .line 81
    const-string v0, "id_token"

    .line 82
    .line 83
    invoke-static {p1, v0}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    const-string v1, "id token must not be empty if defined"

    .line 90
    .line 91
    invoke-static {v0, v1}, Lokio/Okio;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 95
    .line 96
    const-string v0, "scope"

    .line 97
    .line 98
    invoke-static {p1, v0}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    const-string v1, " +"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-nez v0, :cond_5

    .line 119
    .line 120
    const/4 v0, 0x0

    .line 121
    new-array v0, v0, [Ljava/lang/String;

    .line 122
    .line 123
    :cond_5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, Lorg/jsoup/Jsoup;->iterableToString(Ljava/util/List;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 132
    .line 133
    :goto_0
    sget-object v0, Lnet/openid/appauth/TokenResponse;->BUILT_IN_PARAMS:Ljava/util/HashSet;

    .line 134
    .line 135
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 136
    .line 137
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_7

    .line 149
    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-nez v4, :cond_6

    .line 161
    .line 162
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_7
    sget-object p1, Lnet/openid/appauth/TokenResponse;->BUILT_IN_PARAMS:Ljava/util/HashSet;

    .line 175
    .line 176
    invoke-static {v1, p1}, Lkotlin/text/StringsKt__IndentKt;->checkAdditionalParams(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->generalSettingsManager:Ljava/lang/Object;

    .line 181
    .line 182
    return-void
.end method

.method public getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/impl/AdapterCameraInfo;
    .locals 4

    .line 1
    const-string v0, "CX:getCameraInfo"

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroidx/camera/core/CameraX;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1}, Lcom/fsck/k9/mailstore/LockableDatabase;->access$getCameraConfig(Lcom/fsck/k9/mailstore/LockableDatabase;Landroidx/camera/core/CameraSelector;)Landroidx/biometric/BiometricPrompt;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object v2, p1, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, Landroidx/camera/core/impl/AutoValue_Identifier;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-static {v1, v3, v2}, Landroidx/appcompat/app/ActionBar;->create(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/AutoValue_Identifier;)Landroidx/camera/core/CameraIdentifier;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    :try_start_1
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v3, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-nez v3, :cond_0

    .line 66
    .line 67
    new-instance v3, Landroidx/camera/core/impl/AdapterCameraInfo;

    .line 68
    .line 69
    invoke-direct {v3, v0, p1}, Landroidx/camera/core/impl/AdapterCameraInfo;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraConfig;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 83
    check-cast v3, Landroidx/camera/core/impl/AdapterCameraInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    .line 85
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 86
    .line 87
    .line 88
    return-object v3

    .line 89
    :goto_1
    :try_start_3
    monitor-exit v2

    .line 90
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    :catchall_1
    move-exception p0

    .line 92
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public getCurrentState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->generalSettingsManager:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 4
    .line 5
    return-object p0
.end method

.method public getCurrentStateSnapshot()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->generalSettingsManager:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 4
    .line 5
    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 6
    .line 7
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public initInternal(Landroidx/camera/core/CameraX;Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Ljava/lang/Object;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/camera/core/CameraX;->mCameraPresenceProvider:Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lorg/slf4j/helpers/Util;->mainThreadExecutor()Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v1, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

    .line 22
    .line 23
    invoke-direct {v1, p0, p2}, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p1, Landroidx/camera/core/impl/CameraPresenceProvider;->publicApiListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-direct {v1, p1, p0}, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/impl/CameraPresenceProvider;Lcom/fsck/k9/mailstore/LockableDatabase;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v1}, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0

    .line 45
    throw p0
.end method

.method public openOrCreateDataspace()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lokhttp3/ConnectionPool;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/util/concurrent/locks/Lock;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->prepareStorage()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v0, v5, v4, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iput-object v5, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception v5

    .line 34
    :try_start_2
    const-string v6, "Unable to open DB %s - removing file and retrying"

    .line 35
    .line 36
    const/4 v7, 0x1

    .line 37
    new-array v8, v7, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object v2, v8, v4

    .line 40
    .line 41
    invoke-static {v5, v6, v8}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_0

    .line 55
    .line 56
    const-string v5, "Failed to remove %s that couldn\'t be opened"

    .line 57
    .line 58
    new-array v6, v7, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v2, v6, v4

    .line 61
    .line 62
    invoke-static {v5, v6}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto :goto_3

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 77
    .line 78
    :goto_1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    .line 82
    const-string v2, "PRAGMA foreign_keys = ON;"

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    const/16 v2, 0x5b

    .line 99
    .line 100
    if-eq v0, v2, :cond_1

    .line 101
    .line 102
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .line 106
    :try_start_3
    invoke-virtual {v1, v0}, Lokhttp3/ConnectionPool;->upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catch_1
    move-exception v2

    .line 111
    :try_start_4
    const-string v3, "Exception while upgrading database. Resetting the DB to v0"

    .line 112
    .line 113
    new-array v5, v4, [Ljava/lang/Object;

    .line 114
    .line 115
    invoke-static {v2, v3, v5}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0}, Lokhttp3/ConnectionPool;->upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    .line 123
    .line 124
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :goto_3
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LockableDatabase;->unlockWrite()V

    .line 129
    .line 130
    .line 131
    throw v0
.end method

.method public prepareStorage()Ljava/io/File;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore$1;->getDatabaseFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-static {v1}, Lcom/fsck/k9/helper/FileHelper;->touchFile(Ljava/io/File;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string p0, "Unable to access: "

    .line 39
    .line 40
    invoke-static {v1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0

    .line 45
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore$1;->getAttachmentDirectory()Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lcom/fsck/k9/helper/FileHelper;->touchFile(Ljava/io/File;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 72
    .line 73
    .line 74
    :cond_4
    return-object v0
.end method

.method public process(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

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
    iget-object v3, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v4, Lnet/thunderbird/core/logging/Logger;

    .line 14
    .line 15
    iget-object v5, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v5, Lorg/slf4j/event/EventRecodingLogger;

    .line 18
    .line 19
    iget-object v6, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v6, Ljava/util/Map;

    .line 22
    .line 23
    iget-object v7, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v7, Ljava/util/Map;

    .line 26
    .line 27
    iget-object v8, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v8, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 30
    .line 31
    instance-of v9, v2, Lnet/thunderbird/core/common/state/DefaultStateMachine$process$1;

    .line 32
    .line 33
    if-eqz v9, :cond_0

    .line 34
    .line 35
    move-object v9, v2

    .line 36
    check-cast v9, Lnet/thunderbird/core/common/state/DefaultStateMachine$process$1;

    .line 37
    .line 38
    iget v10, v9, Lnet/thunderbird/core/common/state/DefaultStateMachine$process$1;->label:I

    .line 39
    .line 40
    const/high16 v11, -0x80000000

    .line 41
    .line 42
    and-int v12, v10, v11

    .line 43
    .line 44
    if-eqz v12, :cond_0

    .line 45
    .line 46
    sub-int/2addr v10, v11

    .line 47
    iput v10, v9, Lnet/thunderbird/core/common/state/DefaultStateMachine$process$1;->label:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance v9, Lnet/thunderbird/core/common/state/DefaultStateMachine$process$1;

    .line 51
    .line 52
    check-cast v2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 53
    .line 54
    invoke-direct {v9, v0, v2}, Lnet/thunderbird/core/common/state/DefaultStateMachine$process$1;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object v2, v9, Lnet/thunderbird/core/common/state/DefaultStateMachine$process$1;->result:Ljava/lang/Object;

    .line 58
    .line 59
    iget v10, v9, Lnet/thunderbird/core/common/state/DefaultStateMachine$process$1;->label:I

    .line 60
    .line 61
    const/4 v11, 0x1

    .line 62
    const/4 v12, 0x0

    .line 63
    if-eqz v10, :cond_2

    .line 64
    .line 65
    if-ne v10, v11, :cond_1

    .line 66
    .line 67
    iget-object v1, v9, Lnet/thunderbird/core/common/state/DefaultStateMachine$process$1;->L$1:Lkotlinx/coroutines/sync/MutexImpl;

    .line 68
    .line 69
    iget-object v9, v9, Lnet/thunderbird/core/common/state/DefaultStateMachine$process$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    move-object v15, v9

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 77
    .line 78
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v12

    .line 82
    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    invoke-direct {v2, v11, v1}, Lkotlin/sequences/SequencesKt__SequencesKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->debug(Lkotlin/jvm/functions/Function0;)V

    .line 91
    .line 92
    .line 93
    iget-object v2, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v2, Lkotlinx/coroutines/sync/MutexImpl;

    .line 96
    .line 97
    iput-object v1, v9, Lnet/thunderbird/core/common/state/DefaultStateMachine$process$1;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    iput-object v2, v9, Lnet/thunderbird/core/common/state/DefaultStateMachine$process$1;->L$1:Lkotlinx/coroutines/sync/MutexImpl;

    .line 100
    .line 101
    iput v11, v9, Lnet/thunderbird/core/common/state/DefaultStateMachine$process$1;->label:I

    .line 102
    .line 103
    invoke-virtual {v2, v9}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 108
    .line 109
    if-ne v9, v10, :cond_3

    .line 110
    .line 111
    return-object v10

    .line 112
    :cond_3
    move-object v15, v1

    .line 113
    move-object v1, v2

    .line 114
    :goto_1
    :try_start_0
    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    check-cast v9, Lnet/thunderbird/core/common/state/DefaultStateMachine$StateRegistry;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    new-instance v13, Lkotlin/Pair;

    .line 149
    .line 150
    invoke-direct {v13, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    check-cast v9, Lnet/thunderbird/core/common/state/StateMachine$Transition;

    .line 158
    .line 159
    if-nez v9, :cond_7

    .line 160
    .line 161
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 162
    .line 163
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    if-eqz v10, :cond_5

    .line 179
    .line 180
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    check-cast v10, Ljava/util/Map$Entry;

    .line 185
    .line 186
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    check-cast v13, Lkotlin/Pair;

    .line 191
    .line 192
    iget-object v14, v13, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v14, Lkotlin/reflect/KClass;

    .line 195
    .line 196
    iget-object v13, v13, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v13, Lkotlin/reflect/KClass;

    .line 199
    .line 200
    check-cast v14, Lkotlin/jvm/internal/ClassReference;

    .line 201
    .line 202
    invoke-virtual {v14, v2}, Lkotlin/jvm/internal/ClassReference;->isInstance(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v14

    .line 206
    if-eqz v14, :cond_4

    .line 207
    .line 208
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    move-result-object v14

    .line 212
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 213
    .line 214
    .line 215
    move-result-object v14

    .line 216
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v13

    .line 220
    if-eqz v13, :cond_4

    .line 221
    .line 222
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v13

    .line 226
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    invoke-virtual {v9, v13, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :catchall_0
    move-exception v0

    .line 235
    goto/16 :goto_5

    .line 236
    .line 237
    :cond_5
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    if-eqz v9, :cond_8

    .line 250
    .line 251
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v9

    .line 255
    check-cast v9, Ljava/util/Map$Entry;

    .line 256
    .line 257
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    check-cast v9, Lnet/thunderbird/core/common/state/StateMachine$Transition;

    .line 262
    .line 263
    if-eqz v9, :cond_6

    .line 264
    .line 265
    :cond_7
    move-object v14, v9

    .line 266
    goto :goto_3

    .line 267
    :cond_8
    move-object v14, v12

    .line 268
    :goto_3
    const/4 v6, 0x2

    .line 269
    if-nez v14, :cond_9

    .line 270
    .line 271
    new-instance v9, Lnet/thunderbird/core/common/state/DefaultStateMachine$$ExternalSyntheticLambda1;

    .line 272
    .line 273
    const/4 v10, 0x0

    .line 274
    invoke-direct {v9, v10, v15, v2}, Lnet/thunderbird/core/common/state/DefaultStateMachine$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    if-eqz v5, :cond_9

    .line 278
    .line 279
    if-eqz v4, :cond_9

    .line 280
    .line 281
    invoke-static {v4, v3, v12, v9, v6}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 282
    .line 283
    .line 284
    :cond_9
    if-eqz v14, :cond_c

    .line 285
    .line 286
    iget-object v9, v14, Lnet/thunderbird/core/common/state/StateMachine$Transition;->guard:Landroidx/compose/runtime/saveable/ListSaverKt$$ExternalSyntheticLambda0;

    .line 287
    .line 288
    invoke-virtual {v9, v2, v15}, Landroidx/compose/runtime/saveable/ListSaverKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    check-cast v9, Ljava/lang/Boolean;

    .line 293
    .line 294
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    if-eqz v9, :cond_c

    .line 299
    .line 300
    iget-object v3, v14, Lnet/thunderbird/core/common/state/StateMachine$Transition;->createNewState:Landroidx/compose/runtime/saveable/ListSaverKt$$ExternalSyntheticLambda0;

    .line 301
    .line 302
    invoke-virtual {v3, v2, v15}, Landroidx/compose/runtime/saveable/ListSaverKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    check-cast v4, Lnet/thunderbird/core/common/state/DefaultStateMachine$StateRegistry;

    .line 319
    .line 320
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    move-result-object v7

    .line 324
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    move-result-object v9

    .line 328
    if-eq v7, v9, :cond_a

    .line 329
    .line 330
    new-instance v7, Lnet/thunderbird/core/common/state/DefaultStateMachine$$ExternalSyntheticLambda1;

    .line 331
    .line 332
    invoke-direct {v7, v11, v2, v3}, Lnet/thunderbird/core/common/state/DefaultStateMachine$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v7}, Lcom/fsck/k9/mailstore/LockableDatabase;->debug(Lkotlin/jvm/functions/Function0;)V

    .line 336
    .line 337
    .line 338
    if-eqz v4, :cond_a

    .line 339
    .line 340
    iget-object v4, v4, Lnet/thunderbird/core/common/state/DefaultStateMachine$StateRegistry;->listeners:Lnet/thunderbird/core/common/state/DefaultStateMachine$StateListeners;

    .line 341
    .line 342
    iget-object v4, v4, Lnet/thunderbird/core/common/state/DefaultStateMachine$StateListeners;->onEnter:Lkotlin/jvm/functions/Function3;

    .line 343
    .line 344
    if-eqz v4, :cond_a

    .line 345
    .line 346
    invoke-interface {v4, v2, v15, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    :cond_a
    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    invoke-virtual {v8, v4, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    if-eqz v4, :cond_a

    .line 358
    .line 359
    if-eqz v5, :cond_b

    .line 360
    .line 361
    new-instance v13, Lnet/thunderbird/core/common/state/StateMachine$StateTransitionRecord;

    .line 362
    .line 363
    iget-object v4, v5, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v4, Lkotlin/time/Clock;

    .line 366
    .line 367
    invoke-interface {v4}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 368
    .line 369
    .line 370
    move-result-object v18

    .line 371
    move-object/from16 v16, v2

    .line 372
    .line 373
    move-object/from16 v17, v3

    .line 374
    .line 375
    invoke-direct/range {v13 .. v18}, Lnet/thunderbird/core/common/state/StateMachine$StateTransitionRecord;-><init>(Lnet/thunderbird/core/common/state/StateMachine$Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/time/Instant;)V

    .line 376
    .line 377
    .line 378
    move-object/from16 v2, v16

    .line 379
    .line 380
    move-object/from16 v3, v17

    .line 381
    .line 382
    iget-object v4, v5, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast v4, Lkotlin/collections/ArrayDeque;

    .line 385
    .line 386
    invoke-virtual {v4, v13}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    :cond_b
    new-instance v4, Lnet/thunderbird/core/common/state/DefaultStateMachine$$ExternalSyntheticLambda1;

    .line 390
    .line 391
    invoke-direct {v4, v6, v2, v3}, Lnet/thunderbird/core/common/state/DefaultStateMachine$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v4}, Lcom/fsck/k9/mailstore/LockableDatabase;->debug(Lkotlin/jvm/functions/Function0;)V

    .line 395
    .line 396
    .line 397
    move-object v2, v3

    .line 398
    goto :goto_4

    .line 399
    :cond_c
    new-instance v0, Lnet/thunderbird/core/common/state/DefaultStateMachine$$ExternalSyntheticLambda1;

    .line 400
    .line 401
    const/4 v7, 0x3

    .line 402
    invoke-direct {v0, v7, v2, v15}, Lnet/thunderbird/core/common/state/DefaultStateMachine$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    if-eqz v4, :cond_d

    .line 406
    .line 407
    invoke-static {v4, v3, v12, v0, v6}, Lkotlinx/io/Sink$-CC;->info$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 408
    .line 409
    .line 410
    :cond_d
    :goto_4
    if-eqz v5, :cond_e

    .line 411
    .line 412
    invoke-virtual {v5}, Lorg/slf4j/event/EventRecodingLogger;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    .line 414
    .line 415
    :cond_e
    invoke-interface {v1, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    return-object v2

    .line 419
    :goto_5
    invoke-interface {v1, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    throw v0
.end method

.method public tryOpenCamera-7pD7j80$camera_camera2_pipe(Ljava/lang/String;IJLandroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p7

    .line 6
    .line 7
    instance-of v3, v2, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;

    .line 13
    .line 14
    iget v4, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->label:I

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
    iput v4, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v5, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->label:I

    .line 36
    .line 37
    const/4 v6, 0x2

    .line 38
    const/4 v7, 0x1

    .line 39
    const/4 v8, 0x0

    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    if-eq v5, v7, :cond_2

    .line 43
    .line 44
    if-ne v5, v6, :cond_1

    .line 45
    .line 46
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v8

    .line 56
    :cond_2
    iget-wide v9, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->J$0:J

    .line 57
    .line 58
    iget v1, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->I$0:I

    .line 59
    .line 60
    iget-object v5, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$2:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 61
    .line 62
    iget-object v11, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$1:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 63
    .line 64
    iget-object v12, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$0:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move-object/from16 v20, v5

    .line 70
    .line 71
    move-wide v13, v9

    .line 72
    move-object/from16 v17, v11

    .line 73
    .line 74
    move-object v10, v12

    .line 75
    move v12, v1

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    .line 83
    .line 84
    iput-object v1, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$0:Ljava/lang/String;

    .line 85
    .line 86
    move-object/from16 v5, p5

    .line 87
    .line 88
    iput-object v5, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$1:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 89
    .line 90
    move-object/from16 v9, p6

    .line 91
    .line 92
    iput-object v9, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$2:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 93
    .line 94
    move/from16 v10, p2

    .line 95
    .line 96
    iput v10, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->I$0:I

    .line 97
    .line 98
    move-wide/from16 v11, p3

    .line 99
    .line 100
    iput-wide v11, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->J$0:J

    .line 101
    .line 102
    iput v7, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->label:I

    .line 103
    .line 104
    check-cast v2, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    .line 105
    .line 106
    iget-object v13, v2, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cache:Landroid/util/ArrayMap;

    .line 107
    .line 108
    monitor-enter v13

    .line 109
    :try_start_0
    iget-object v14, v2, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->cache:Landroid/util/ArrayMap;

    .line 110
    .line 111
    invoke-virtual {v14, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v14

    .line 115
    check-cast v14, Landroidx/camera/camera2/pipe/CameraMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    if-eqz v14, :cond_4

    .line 118
    .line 119
    monitor-exit v13

    .line 120
    move-object v2, v14

    .line 121
    goto :goto_1

    .line 122
    :cond_4
    monitor-exit v13

    .line 123
    iget-object v13, v2, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 124
    .line 125
    iget-object v13, v13, Landroidx/camera/camera2/pipe/core/Threads;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 126
    .line 127
    new-instance v14, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 128
    .line 129
    const/16 v15, 0xa

    .line 130
    .line 131
    invoke-direct {v14, v2, v1, v8, v15}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 132
    .line 133
    .line 134
    invoke-static {v13, v14, v3}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    :goto_1
    if-ne v2, v4, :cond_5

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_5
    move-object/from16 v17, v5

    .line 142
    .line 143
    move-object/from16 v20, v9

    .line 144
    .line 145
    move-wide v13, v11

    .line 146
    move v12, v10

    .line 147
    move-object v10, v1

    .line 148
    :goto_2
    move-object v11, v2

    .line 149
    check-cast v11, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 150
    .line 151
    new-instance v9, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 152
    .line 153
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 154
    .line 155
    move-object v15, v1

    .line 156
    check-cast v15, Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 157
    .line 158
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/lang/Object;

    .line 159
    .line 160
    move-object/from16 v16, v1

    .line 161
    .line 162
    check-cast v16, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 163
    .line 164
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Ljava/lang/Object;

    .line 165
    .line 166
    move-object/from16 v18, v1

    .line 167
    .line 168
    check-cast v18, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 169
    .line 170
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 171
    .line 172
    move-object/from16 v19, v1

    .line 173
    .line 174
    check-cast v19, Landroidx/camera/camera2/pipe/core/Threads;

    .line 175
    .line 176
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v1, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    .line 179
    .line 180
    iget-object v2, v1, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;->cameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 181
    .line 182
    iget-object v1, v1, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;->cameraCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

    .line 183
    .line 184
    move-object/from16 v22, v1

    .line 185
    .line 186
    move-object/from16 v21, v2

    .line 187
    .line 188
    invoke-direct/range {v9 .. v22}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraMetadata;IJLandroidx/camera/camera2/pipe/core/SystemTimeSource;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroidx/cardview/widget/CardView$1;)V

    .line 189
    .line 190
    .line 191
    new-instance v1, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;

    .line 192
    .line 193
    invoke-direct {v1, v0, v10, v9, v8}, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Lkotlin/coroutines/Continuation;)V

    .line 194
    .line 195
    .line 196
    iput-object v8, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$0:Ljava/lang/String;

    .line 197
    .line 198
    iput-object v8, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$1:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 199
    .line 200
    iput-object v8, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->L$2:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 201
    .line 202
    iput v6, v3, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$1;->label:I

    .line 203
    .line 204
    new-instance v0, Lkotlinx/coroutines/SupervisorCoroutine;

    .line 205
    .line 206
    invoke-interface {v3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-direct {v0, v3, v2}, Lkotlinx/coroutines/internal/ScopeCoroutine;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v0, v7, v0, v1}, Lorg/minidns/util/Base64;->startUndispatched(Lkotlinx/coroutines/internal/ScopeCoroutine;ZLkotlinx/coroutines/internal/ScopeCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    if-ne v0, v4, :cond_6

    .line 218
    .line 219
    :goto_3
    return-object v4

    .line 220
    :cond_6
    return-object v0

    .line 221
    :catchall_0
    move-exception v0

    .line 222
    monitor-exit v13

    .line 223
    throw v0
.end method

.method public unbindAll()V
    .locals 1

    .line 1
    const-string v0, "CX:unbindAll"

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-static {}, Lorg/jsoup/helper/Validate;->checkMainThread()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {p0, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->access$setCameraOperatingMode(Lcom/fsck/k9/mailstore/LockableDatabase;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->generalSettingsManager:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->unbindAll(Ljava/util/HashSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public unlockWrite()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

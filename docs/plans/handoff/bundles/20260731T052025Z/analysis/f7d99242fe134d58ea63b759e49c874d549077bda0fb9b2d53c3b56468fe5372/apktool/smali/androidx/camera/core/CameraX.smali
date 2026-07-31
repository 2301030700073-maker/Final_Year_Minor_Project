.class public final Landroidx/camera/core/CameraX;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final MIN_LOG_LEVEL_LOCK:Ljava/lang/Object;

.field public static final sMinLogLevelReferenceCountMap:Landroid/util/SparseArray;


# instance fields
.field public final mCameraExecutor:Ljava/util/concurrent/Executor;

.field public mCameraFactory:Landroidx/compose/ui/node/NodeChain;

.field public final mCameraPresenceProvider:Landroidx/camera/core/impl/CameraPresenceProvider;

.field public final mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

.field public mCameraUseCaseAdapterProvider:Lokhttp3/Dispatcher;

.field public final mCameraXConfig:Landroidx/camera/core/CameraXConfig;

.field public mDefaultConfigFactory:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;

.field public final mInitInternalFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

.field public mInitState:I

.field public final mInitializeLock:Ljava/lang/Object;

.field public final mMinLogLevel:Ljava/lang/Integer;

.field public final mRetryPolicy:Landroidx/camera/core/RetryPolicy;

.field public final mRotationProvider:Lkotlin/SynchronizedLazyImpl;

.field public final mSchedulerHandler:Landroid/os/Handler;

.field public final mSchedulerThread:Landroid/os/HandlerThread;

.field public mShutdownInternalFuture:Lcom/google/common/util/concurrent/ListenableFuture;

.field public mStreamSpecsCalculator:Landroidx/cardview/widget/CardView$1;

.field public mSurfaceManager:Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/core/CameraX;->MIN_LOG_LEVEL_LOCK:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/camera/core/CameraX;->sMinLogLevelReferenceCountMap:Landroid/util/SparseArray;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/camera/lifecycle/LifecycleCameraProviderImpl$configure$1$1$1;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Landroidx/camera/core/impl/CameraRepository;

    .line 5
    .line 6
    invoke-direct {p2}, Landroidx/camera/core/impl/CameraRepository;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 10
    .line 11
    new-instance p2, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    iput p2, p0, Landroidx/camera/core/CameraX;->mInitState:I

    .line 20
    .line 21
    sget-object v0, Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedFuture;->NULL_FUTURE:Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedFuture;

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/camera/core/CameraX;->mShutdownInternalFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 24
    .line 25
    invoke-static {p1}, Landroidx/camera/core/impl/utils/ContextUtil;->getPersistentApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "CameraX"

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :goto_0
    instance-of v3, v2, Landroid/content/ContextWrapper;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    instance-of v3, v2, Landroid/app/Application;

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    check-cast v2, Landroid/app/Application;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    check-cast v2, Landroid/content/ContextWrapper;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v2, v4

    .line 55
    :goto_1
    instance-of v3, v2, Landroidx/camera/core/CameraXConfig$Provider;

    .line 56
    .line 57
    const/16 v5, 0x280

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    check-cast v2, Landroidx/camera/core/CameraXConfig$Provider;

    .line 62
    .line 63
    goto :goto_5

    .line 64
    :cond_2
    :try_start_0
    invoke-static {p1}, Landroidx/camera/core/impl/utils/ContextUtil;->getPersistentApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    new-instance v3, Landroid/content/ComponentName;

    .line 73
    .line 74
    const-class v6, Landroidx/camera/core/impl/MetadataHolderService;

    .line 75
    .line 76
    invoke-direct {v3, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    const-string v2, "androidx.camera.core.impl.MetadataHolderService.DEFAULT_CONFIG_PROVIDER"

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_2

    .line 94
    :catch_0
    move-exception p1

    .line 95
    goto :goto_4

    .line 96
    :catch_1
    move-exception p1

    .line 97
    goto :goto_4

    .line 98
    :catch_2
    move-exception p1

    .line 99
    goto :goto_4

    .line 100
    :catch_3
    move-exception p1

    .line 101
    goto :goto_4

    .line 102
    :catch_4
    move-exception p1

    .line 103
    goto :goto_4

    .line 104
    :catch_5
    move-exception p1

    .line 105
    goto :goto_4

    .line 106
    :catch_6
    move-exception p1

    .line 107
    goto :goto_4

    .line 108
    :cond_3
    move-object p1, v4

    .line 109
    :goto_2
    if-nez p1, :cond_4

    .line 110
    .line 111
    const-string p1, "No default CameraXConfig.Provider specified in meta-data. The most likely cause is you did not include a default implementation in your build such as \'camera-camera2\'."

    .line 112
    .line 113
    invoke-static {v1, p1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :goto_3
    move-object v2, v4

    .line 117
    goto :goto_5

    .line 118
    :cond_4
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    move-object v2, p1

    .line 131
    check-cast v2, Landroidx/camera/core/CameraXConfig$Provider;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :goto_4
    const-string v2, "Failed to retrieve default CameraXConfig.Provider from meta-data"

    .line 135
    .line 136
    invoke-static {v1, v2, p1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :goto_5
    if-eqz v2, :cond_f

    .line 141
    .line 142
    invoke-interface {v2}, Landroidx/camera/core/CameraXConfig$Provider;->getCameraXConfig()Landroidx/camera/core/CameraXConfig;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iput-object p1, p0, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 147
    .line 148
    iget-object p1, p1, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 149
    .line 150
    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_QUIRK_SETTINGS:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 151
    .line 152
    invoke-virtual {p1, v1, v4}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Landroidx/camera/core/impl/QuirkSettings;

    .line 157
    .line 158
    if-eqz p1, :cond_5

    .line 159
    .line 160
    const-string v1, "CameraX"

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v3, "QuirkSettings from CameraXConfig: "

    .line 165
    .line 166
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_5
    const-string p1, "QuirkSettingsLoader"

    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    :try_start_1
    new-instance v2, Landroid/content/ComponentName;

    .line 187
    .line 188
    const-class v3, Landroidx/camera/core/impl/QuirkSettingsLoader$MetadataHolderService;

    .line 189
    .line 190
    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 198
    .line 199
    if-nez v1, :cond_6

    .line 200
    .line 201
    const-string v1, "No metadata in MetadataHolderService."

    .line 202
    .line 203
    invoke-static {p1, v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :goto_6
    move-object p1, v4

    .line 207
    goto :goto_7

    .line 208
    :cond_6
    invoke-static {v0, v1}, Landroidx/work/Operation$State;->buildQuirkSettings(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/camera/core/impl/QuirkSettings;

    .line 209
    .line 210
    .line 211
    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_7

    .line 212
    goto :goto_7

    .line 213
    :catch_7
    const-string v1, "QuirkSettings$MetadataHolderService is not found."

    .line 214
    .line 215
    invoke-static {p1, v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_6

    .line 219
    :goto_7
    const-string v1, "CameraX"

    .line 220
    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v3, "QuirkSettings from app metadata: "

    .line 224
    .line 225
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :goto_8
    if-nez p1, :cond_7

    .line 239
    .line 240
    sget-object p1, Landroidx/camera/core/impl/QuirkSettingsHolder;->DEFAULT:Landroidx/camera/core/impl/QuirkSettings;

    .line 241
    .line 242
    const-string v1, "CameraX"

    .line 243
    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v3, "QuirkSettings by default: "

    .line 247
    .line 248
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :cond_7
    sget-object v1, Landroidx/camera/core/impl/QuirkSettingsHolder;->sInstance:Landroidx/camera/core/impl/QuirkSettingsHolder;

    .line 262
    .line 263
    iget-object v1, v1, Landroidx/camera/core/impl/QuirkSettingsHolder;->mObservable:Landroidx/compose/ui/node/NodeChain$Differ;

    .line 264
    .line 265
    iget-object v2, v1, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 266
    .line 267
    monitor-enter v2

    .line 268
    :try_start_2
    iget-object v3, v1, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 271
    .line 272
    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-static {v3, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    const/4 v3, 0x0

    .line 281
    if-eqz p1, :cond_8

    .line 282
    .line 283
    monitor-exit v2

    .line 284
    goto :goto_a

    .line 285
    :catchall_0
    move-exception p0

    .line 286
    goto/16 :goto_e

    .line 287
    .line 288
    :cond_8
    iget p1, v1, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    .line 289
    .line 290
    add-int/2addr p1, p2

    .line 291
    iput p1, v1, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    .line 292
    .line 293
    iget-boolean v5, v1, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    .line 294
    .line 295
    if-eqz v5, :cond_9

    .line 296
    .line 297
    monitor-exit v2

    .line 298
    goto :goto_a

    .line 299
    :cond_9
    iput-boolean p2, v1, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    .line 300
    .line 301
    iget-object v5, v1, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v5, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 304
    .line 305
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-eqz v2, :cond_a

    .line 315
    .line 316
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    check-cast v2, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;

    .line 321
    .line 322
    invoke-virtual {v2, p1}, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->update(I)V

    .line 323
    .line 324
    .line 325
    goto :goto_9

    .line 326
    :cond_a
    iget-object v5, v1, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 327
    .line 328
    monitor-enter v5

    .line 329
    :try_start_3
    iget v2, v1, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    .line 330
    .line 331
    if-ne v2, p1, :cond_e

    .line 332
    .line 333
    iput-boolean v3, v1, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    .line 334
    .line 335
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 336
    :goto_a
    iget-object p1, p0, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 337
    .line 338
    iget-object p1, p1, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 339
    .line 340
    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_EXECUTOR:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 341
    .line 342
    invoke-virtual {p1, v1, v4}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 347
    .line 348
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 349
    .line 350
    iget-object v1, v1, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 351
    .line 352
    sget-object v2, Landroidx/camera/core/CameraXConfig;->OPTION_SCHEDULER_HANDLER:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 353
    .line 354
    invoke-virtual {v1, v2, v4}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    check-cast v1, Landroid/os/Handler;

    .line 359
    .line 360
    if-nez p1, :cond_b

    .line 361
    .line 362
    new-instance p1, Landroidx/camera/core/CameraExecutor;

    .line 363
    .line 364
    invoke-direct {p1}, Landroidx/camera/core/CameraExecutor;-><init>()V

    .line 365
    .line 366
    .line 367
    :cond_b
    iput-object p1, p0, Landroidx/camera/core/CameraX;->mCameraExecutor:Ljava/util/concurrent/Executor;

    .line 368
    .line 369
    if-nez v1, :cond_c

    .line 370
    .line 371
    new-instance v1, Landroid/os/HandlerThread;

    .line 372
    .line 373
    const-string v2, "CameraX-scheduler"

    .line 374
    .line 375
    const/16 v5, 0xa

    .line 376
    .line 377
    invoke-direct {v1, v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 378
    .line 379
    .line 380
    iput-object v1, p0, Landroidx/camera/core/CameraX;->mSchedulerThread:Landroid/os/HandlerThread;

    .line 381
    .line 382
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-static {v1}, Landroidx/room/util/DBUtil;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    iput-object v1, p0, Landroidx/camera/core/CameraX;->mSchedulerHandler:Landroid/os/Handler;

    .line 394
    .line 395
    goto :goto_b

    .line 396
    :cond_c
    iput-object v4, p0, Landroidx/camera/core/CameraX;->mSchedulerThread:Landroid/os/HandlerThread;

    .line 397
    .line 398
    iput-object v1, p0, Landroidx/camera/core/CameraX;->mSchedulerHandler:Landroid/os/Handler;

    .line 399
    .line 400
    :goto_b
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 401
    .line 402
    sget-object v2, Landroidx/camera/core/CameraXConfig;->OPTION_MIN_LOGGING_LEVEL:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 403
    .line 404
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1}, Landroidx/camera/core/CameraXConfig;->getConfig()Landroidx/camera/core/impl/Config;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    check-cast v1, Landroidx/camera/core/impl/OptionsBundle;

    .line 412
    .line 413
    invoke-virtual {v1, v2, v4}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    check-cast v1, Ljava/lang/Integer;

    .line 418
    .line 419
    iput-object v1, p0, Landroidx/camera/core/CameraX;->mMinLogLevel:Ljava/lang/Integer;

    .line 420
    .line 421
    invoke-static {v1}, Landroidx/camera/core/CameraX;->increaseMinLogLevelReference(Ljava/lang/Integer;)V

    .line 422
    .line 423
    .line 424
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 425
    .line 426
    iget-object v1, v1, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 427
    .line 428
    sget-object v2, Landroidx/camera/core/CameraXConfig;->OPTION_CAMERA_PROVIDER_INIT_RETRY_POLICY:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 429
    .line 430
    sget-object v4, Landroidx/camera/core/RetryPolicy;->DEFAULT:Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;

    .line 431
    .line 432
    invoke-virtual {v1, v2, v4}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    check-cast v1, Landroidx/camera/core/RetryPolicy;

    .line 437
    .line 438
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    invoke-interface {v1}, Landroidx/camera/core/RetryPolicy;->getTimeoutInMillis()J

    .line 442
    .line 443
    .line 444
    move-result-wide v4

    .line 445
    instance-of v2, v1, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;

    .line 446
    .line 447
    if-eqz v2, :cond_d

    .line 448
    .line 449
    check-cast v1, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;

    .line 450
    .line 451
    iget v1, v1, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;->$r8$classId:I

    .line 452
    .line 453
    packed-switch v1, :pswitch_data_0

    .line 454
    .line 455
    .line 456
    new-instance v1, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;

    .line 457
    .line 458
    invoke-direct {v1, p2, v4, v5}, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;-><init>(IJ)V

    .line 459
    .line 460
    .line 461
    goto :goto_c

    .line 462
    :pswitch_0
    new-instance v1, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;

    .line 463
    .line 464
    invoke-direct {v1, v3, v4, v5}, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;-><init>(IJ)V

    .line 465
    .line 466
    .line 467
    goto :goto_c

    .line 468
    :cond_d
    new-instance p2, Landroidx/camera/core/impl/TimeoutRetryPolicy;

    .line 469
    .line 470
    invoke-direct {p2, v4, v5, v1}, Landroidx/camera/core/impl/TimeoutRetryPolicy;-><init>(JLandroidx/camera/core/RetryPolicy;)V

    .line 471
    .line 472
    .line 473
    move-object v1, p2

    .line 474
    :goto_c
    iput-object v1, p0, Landroidx/camera/core/CameraX;->mRetryPolicy:Landroidx/camera/core/RetryPolicy;

    .line 475
    .line 476
    new-instance p2, Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 477
    .line 478
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mSchedulerHandler:Landroid/os/Handler;

    .line 479
    .line 480
    new-instance v2, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 481
    .line 482
    invoke-direct {v2, v1}, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;-><init>(Landroid/os/Handler;)V

    .line 483
    .line 484
    .line 485
    invoke-direct {p2, p1, v2}, Landroidx/camera/core/impl/CameraPresenceProvider;-><init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;)V

    .line 486
    .line 487
    .line 488
    iput-object p2, p0, Landroidx/camera/core/CameraX;->mCameraPresenceProvider:Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 489
    .line 490
    new-instance p1, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda0;

    .line 491
    .line 492
    invoke-direct {p1, v0, v3}, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    .line 493
    .line 494
    .line 495
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 496
    .line 497
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 498
    .line 499
    .line 500
    iput-object p2, p0, Landroidx/camera/core/CameraX;->mRotationProvider:Lkotlin/SynchronizedLazyImpl;

    .line 501
    .line 502
    invoke-virtual {p0, v0}, Landroidx/camera/core/CameraX;->initInternal(Landroid/content/Context;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    iput-object p1, p0, Landroidx/camera/core/CameraX;->mInitInternalFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 507
    .line 508
    return-void

    .line 509
    :catchall_1
    move-exception p0

    .line 510
    goto :goto_d

    .line 511
    :cond_e
    :try_start_4
    iget-object p1, v1, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 514
    .line 515
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 516
    .line 517
    .line 518
    move-result-object p1

    .line 519
    iget v2, v1, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    .line 520
    .line 521
    monitor-exit v5

    .line 522
    move-object v5, p1

    .line 523
    move p1, v2

    .line 524
    goto/16 :goto_9

    .line 525
    .line 526
    :goto_d
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 527
    throw p0

    .line 528
    :goto_e
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 529
    throw p0

    .line 530
    :cond_f
    const-string p0, "CameraX is not configured properly. The most likely cause is you did not include a default implementation in your build such as \'camera-camera2\'."

    .line 531
    .line 532
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    throw v4

    .line 536
    nop

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static decreaseMinLogLevelReference(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/camera/core/CameraX;->MIN_LOG_LEVEL_LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    :try_start_0
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    sget-object v1, Landroidx/camera/core/CameraX;->sMinLogLevelReferenceCountMap:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-int/lit8 v2, v2, -0x1

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {}, Landroidx/camera/core/CameraX;->updateOrResetMinLogLevel()V

    .line 50
    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public static increaseMinLogLevelReference(Ljava/lang/Integer;)V
    .locals 5

    .line 1
    sget-object v0, Landroidx/camera/core/CameraX;->MIN_LOG_LEVEL_LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    :try_start_0
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v2, "minLogLevel"

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    const/4 v4, 0x6

    .line 18
    invoke-static {v1, v3, v4, v2}, Landroidx/room/util/RelationUtil;->checkArgumentInRange(IIILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Landroidx/camera/core/CameraX;->sMinLogLevelReferenceCountMap:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    add-int/2addr v3, v2

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Landroidx/camera/core/CameraX;->updateOrResetMinLogLevel()V

    .line 61
    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public static traceExecutionState(Landroidx/camera/core/impl/CameraProviderExecutionState;)V
    .locals 9

    .line 1
    invoke-static {}, Lorg/slf4j/helpers/Util;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget p0, p0, Landroidx/camera/core/impl/CameraProviderExecutionState;->mStatus:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v1, 0x1d

    .line 16
    .line 17
    const-string v2, "CX:CameraProvider-RetryStatus"

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    invoke-static {v2}, Lorg/slf4j/helpers/Util;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0, p0}, Landroidx/tracing/TraceApi29Impl;->setCounter(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-static {v2}, Lorg/slf4j/helpers/Util;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "traceCounter"

    .line 34
    .line 35
    :try_start_0
    sget-object v2, Lorg/slf4j/helpers/Util;->traceCounterMethod:Ljava/lang/reflect/Method;

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    const/4 v4, 0x1

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x3

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    const-class v2, Landroid/os/Trace;

    .line 44
    .line 45
    new-array v7, v6, [Ljava/lang/Class;

    .line 46
    .line 47
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 48
    .line 49
    aput-object v8, v7, v5

    .line 50
    .line 51
    const-class v8, Ljava/lang/String;

    .line 52
    .line 53
    aput-object v8, v7, v4

    .line 54
    .line 55
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 56
    .line 57
    aput-object v8, v7, v3

    .line 58
    .line 59
    invoke-virtual {v2, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sput-object v2, Lorg/slf4j/helpers/Util;->traceCounterMethod:Ljava/lang/reflect/Method;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    :goto_1
    sget-object v2, Lorg/slf4j/helpers/Util;->traceCounterMethod:Ljava/lang/reflect/Method;

    .line 69
    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    sget-wide v7, Lorg/slf4j/helpers/Util;->traceTagApp:J

    .line 73
    .line 74
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-array v6, v6, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object v7, v6, v5

    .line 85
    .line 86
    aput-object v0, v6, v4

    .line 87
    .line 88
    aput-object p0, v6, v3

    .line 89
    .line 90
    const/4 p0, 0x0

    .line 91
    invoke-virtual {v2, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    const-string p0, "Required value was null."

    .line 96
    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_2
    invoke-static {p0, v1}, Lorg/slf4j/helpers/Util;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_3
    return-void
.end method

.method public static updateOrResetMinLogLevel()V
    .locals 3

    .line 1
    sget-object v0, Landroidx/camera/core/CameraX;->sMinLogLevelReferenceCountMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x3

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sput v2, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->sMinLogLevel:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    sput v2, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->sMinLogLevel:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const/4 v1, 0x4

    .line 23
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    sput v1, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->sMinLogLevel:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    const/4 v1, 0x5

    .line 33
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    sput v1, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->sMinLogLevel:I

    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    const/4 v1, 0x6

    .line 43
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    sput v1, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->sMinLogLevel:I

    .line 50
    .line 51
    :cond_4
    return-void
.end method


# virtual methods
.method public final initInternal(Landroid/content/Context;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;
    .locals 11

    .line 1
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget v0, p0, Landroidx/camera/core/CameraX;->mInitState:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_0
    const-string v0, "CameraX.initInternal() should only be called once per instance"

    .line 12
    .line 13
    invoke-static {v0, v2}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    iput v0, p0, Landroidx/camera/core/CameraX;->mInitState:I

    .line 18
    .line 19
    new-instance v7, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 20
    .line 21
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroidx/concurrent/futures/ResolvableFuture;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, v7, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 30
    .line 31
    new-instance v10, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 32
    .line 33
    invoke-direct {v10, v7}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 34
    .line 35
    .line 36
    iput-object v10, v7, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 37
    .line 38
    const-class v0, Landroidx/camera/camera2/pipe/CameraDevices$-CC;

    .line 39
    .line 40
    iput-object v0, v7, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    :try_start_1
    iget-object v5, p0, Landroidx/camera/core/CameraX;->mCameraExecutor:Ljava/util/concurrent/Executor;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v8

    .line 48
    new-instance v2, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;

    .line 49
    .line 50
    const/4 v6, 0x1

    .line 51
    move-object v3, p0

    .line 52
    move-object v4, p1

    .line 53
    invoke-direct/range {v2 .. v9}, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/core/CameraX;Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;J)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v5, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    const-string p0, "CameraX initInternal"

    .line 60
    .line 61
    iput-object p0, v7, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    move-object p0, v0

    .line 66
    :try_start_2
    invoke-virtual {v10, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->setException(Ljava/lang/Throwable;)Z

    .line 67
    .line 68
    .line 69
    :goto_1
    monitor-exit v1

    .line 70
    return-object v10

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    move-object p0, v0

    .line 73
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    throw p0
.end method

.method public final setStateToInitialized()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x4

    .line 5
    :try_start_0
    iput v1, p0, Landroidx/camera/core/CameraX;->mInitState:I

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public final shutdown()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mSchedulerHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const-string v2, "retry_token"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroidx/camera/core/CameraX;->mInitState:I

    .line 12
    .line 13
    invoke-static {v1}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x5

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-eq v1, v3, :cond_1

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    const/4 v4, 0x3

    .line 25
    if-eq v1, v3, :cond_0

    .line 26
    .line 27
    if-eq v1, v4, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput v2, p0, Landroidx/camera/core/CameraX;->mInitState:I

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/camera/core/CameraX;->mMinLogLevel:Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-static {v1}, Landroidx/camera/core/CameraX;->decreaseMinLogLevelReference(Ljava/lang/Integer;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    invoke-direct {v1, v4, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lcom/fsck/k9/sasl/OAuthBearer;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Landroidx/camera/core/CameraX;->mShutdownInternalFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 47
    .line 48
    :goto_0
    iget-object p0, p0, Landroidx/camera/core/CameraX;->mShutdownInternalFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 49
    .line 50
    monitor-exit v0

    .line 51
    return-object p0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v1, "CameraX could not be shutdown when it is initializing."

    .line 57
    .line 58
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_2
    iput v2, p0, Landroidx/camera/core/CameraX;->mInitState:I

    .line 63
    .line 64
    sget-object p0, Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedFuture;->NULL_FUTURE:Landroidx/camera/core/impl/utils/futures/ImmediateFuture$ImmediateFailedFuture;

    .line 65
    .line 66
    monitor-exit v0

    .line 67
    return-object p0

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.class public final synthetic Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/camera/core/CameraX;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/util/concurrent/Executor;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/CameraX;Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/core/CameraX;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    iput p4, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$3:I

    .line 14
    .line 15
    iput-object p5, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$4:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 16
    .line 17
    iput-wide p6, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$5:J

    .line 18
    .line 19
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/core/CameraX;Ljava/util/concurrent/Executor;JILandroid/content/Context;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 1

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/core/CameraX;

    iput-object p2, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/Executor;

    iput-wide p3, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$5:J

    iput p5, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$3:I

    iput-object p6, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iput-object p7, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$4:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v4, v0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/core/CameraX;

    .line 10
    .line 11
    iget-object v6, v0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    iget-wide v9, v0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$5:J

    .line 14
    .line 15
    iget v1, v0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$3:I

    .line 16
    .line 17
    iget-object v5, v0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v8, v0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$4:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 20
    .line 21
    add-int/lit8 v7, v1, 0x1

    .line 22
    .line 23
    new-instance v3, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;

    .line 24
    .line 25
    invoke-direct/range {v3 .. v10}, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/core/CameraX;Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;J)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v6, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object v8, v0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/core/CameraX;

    .line 33
    .line 34
    iget-object v10, v0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v1, v0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    iget v3, v0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$3:I

    .line 39
    .line 40
    iget-object v4, v0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$4:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 41
    .line 42
    iget-wide v5, v0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;->f$5:J

    .line 43
    .line 44
    const-string v0, "CX:initAndRetryRecursively"

    .line 45
    .line 46
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :try_start_0
    iget-object v0, v8, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/camera/core/CameraXConfig;->getCameraFactoryProvider()Landroidx/camera/camera2/adapter/CameraFactoryProvider;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    if-eqz v9, :cond_5

    .line 60
    .line 61
    iget-object v0, v8, Landroidx/camera/core/CameraX;->mCameraExecutor:Ljava/util/concurrent/Executor;

    .line 62
    .line 63
    iget-object v11, v8, Landroidx/camera/core/CameraX;->mSchedulerHandler:Landroid/os/Handler;

    .line 64
    .line 65
    new-instance v12, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;

    .line 66
    .line 67
    invoke-direct {v12, v0, v11}, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;-><init>(Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, v8, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/camera/core/CameraXConfig;->getAvailableCamerasLimiter()Landroidx/camera/core/CameraSelector;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance v11, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 80
    .line 81
    invoke-direct {v11, v10, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Landroid/content/Context;Landroidx/camera/core/CameraSelector;)V

    .line 82
    .line 83
    .line 84
    iget-object v13, v8, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 85
    .line 86
    invoke-virtual {v13}, Landroidx/camera/core/CameraXConfig;->getCameraOpenRetryMaxTimeoutInMillisWhileResuming()J

    .line 87
    .line 88
    .line 89
    move-result-wide v13

    .line 90
    iget-object v15, v8, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 91
    .line 92
    invoke-virtual {v15}, Landroidx/camera/core/CameraXConfig;->getUseCaseConfigFactoryProvider()Landroidx/camera/camera2/Camera2Config$Companion$$ExternalSyntheticLambda1;

    .line 93
    .line 94
    .line 95
    move-result-object v15

    .line 96
    if-eqz v15, :cond_4

    .line 97
    .line 98
    new-instance v15, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;

    .line 99
    .line 100
    invoke-direct {v15, v10}, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    iput-object v15, v8, Landroidx/camera/core/CameraX;->mDefaultConfigFactory:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;

    .line 104
    .line 105
    const/16 p0, 0x0

    .line 106
    .line 107
    new-instance v7, Landroidx/cardview/widget/CardView$1;

    .line 108
    .line 109
    invoke-direct {v7, v15}, Landroidx/cardview/widget/CardView$1;-><init>(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;)V

    .line 110
    .line 111
    .line 112
    iput-object v7, v8, Landroidx/camera/core/CameraX;->mStreamSpecsCalculator:Landroidx/cardview/widget/CardView$1;

    .line 113
    .line 114
    iget-object v15, v8, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 115
    .line 116
    move-object/from16 v16, v12

    .line 117
    .line 118
    move-object v12, v0

    .line 119
    move-object v0, v11

    .line 120
    move-object/from16 v11, v16

    .line 121
    .line 122
    move-object/from16 v16, v7

    .line 123
    .line 124
    invoke-virtual/range {v9 .. v16}, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->newInstance(Landroid/content/Context;Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;Landroidx/camera/core/CameraSelector;JLandroidx/camera/core/CameraXConfig;Landroidx/cardview/widget/CardView$1;)Landroidx/compose/ui/node/NodeChain;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    iput-object v7, v8, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/compose/ui/node/NodeChain;

    .line 129
    .line 130
    iget-object v7, v8, Landroidx/camera/core/CameraX;->mCameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 131
    .line 132
    invoke-virtual {v7}, Landroidx/camera/core/CameraXConfig;->getDeviceSurfaceManagerProvider()Landroidx/camera/camera2/Camera2Config$Companion$$ExternalSyntheticLambda0;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    if-eqz v7, :cond_3

    .line 137
    .line 138
    iget-object v7, v8, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/compose/ui/node/NodeChain;

    .line 139
    .line 140
    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v7, Lkotlin/SynchronizedLazyImpl;

    .line 143
    .line 144
    invoke-virtual {v7}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    check-cast v7, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 149
    .line 150
    iget-object v9, v8, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/compose/ui/node/NodeChain;

    .line 151
    .line 152
    invoke-virtual {v9}, Landroidx/compose/ui/node/NodeChain;->getAvailableCameraIds()Ljava/util/Set;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    new-instance v11, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;

    .line 157
    .line 158
    invoke-direct {v11, v10, v7, v9}, Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;-><init>(Landroid/content/Context;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Ljava/util/Set;)V

    .line 159
    .line 160
    .line 161
    iput-object v11, v8, Landroidx/camera/core/CameraX;->mSurfaceManager:Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;

    .line 162
    .line 163
    iget-object v7, v8, Landroidx/camera/core/CameraX;->mStreamSpecsCalculator:Landroidx/cardview/widget/CardView$1;

    .line 164
    .line 165
    iput-object v11, v7, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 166
    .line 167
    instance-of v7, v1, Landroidx/camera/core/CameraExecutor;

    .line 168
    .line 169
    if-eqz v7, :cond_0

    .line 170
    .line 171
    move-object v7, v1

    .line 172
    check-cast v7, Landroidx/camera/core/CameraExecutor;

    .line 173
    .line 174
    iget-object v9, v8, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/compose/ui/node/NodeChain;

    .line 175
    .line 176
    invoke-virtual {v7, v9}, Landroidx/camera/core/CameraExecutor;->init(Landroidx/compose/ui/node/NodeChain;)V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    goto/16 :goto_3

    .line 182
    .line 183
    :catch_1
    move-exception v0

    .line 184
    goto/16 :goto_3

    .line 185
    .line 186
    :catch_2
    move-exception v0

    .line 187
    goto/16 :goto_3

    .line 188
    .line 189
    :cond_0
    :goto_0
    iget-object v7, v8, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 190
    .line 191
    iget-object v9, v8, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/compose/ui/node/NodeChain;

    .line 192
    .line 193
    invoke-virtual {v7, v9}, Landroidx/camera/core/impl/CameraRepository;->init(Landroidx/compose/ui/node/NodeChain;)V

    .line 194
    .line 195
    .line 196
    iget-object v7, v8, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/compose/ui/node/NodeChain;

    .line 197
    .line 198
    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v7, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    .line 201
    .line 202
    iget-object v9, v8, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 203
    .line 204
    invoke-virtual {v7, v9}, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->init(Landroidx/camera/core/impl/CameraRepository;)V

    .line 205
    .line 206
    .line 207
    new-instance v9, Lokhttp3/Dispatcher;

    .line 208
    .line 209
    iget-object v11, v8, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 210
    .line 211
    iget-object v12, v8, Landroidx/camera/core/CameraX;->mDefaultConfigFactory:Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;

    .line 212
    .line 213
    iget-object v13, v8, Landroidx/camera/core/CameraX;->mStreamSpecsCalculator:Landroidx/cardview/widget/CardView$1;

    .line 214
    .line 215
    invoke-direct {v9, v11, v7, v12, v13}, Lokhttp3/Dispatcher;-><init>(Landroidx/camera/core/impl/CameraRepository;Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;Landroidx/cardview/widget/CardView$1;)V

    .line 216
    .line 217
    .line 218
    iput-object v9, v8, Landroidx/camera/core/CameraX;->mCameraUseCaseAdapterProvider:Lokhttp3/Dispatcher;

    .line 219
    .line 220
    iget-object v7, v8, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 221
    .line 222
    invoke-virtual {v7}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    if-eqz v9, :cond_1

    .line 235
    .line 236
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    check-cast v9, Landroidx/camera/core/impl/CameraInternal;

    .line 241
    .line 242
    invoke-interface {v9}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    iget-object v11, v8, Landroidx/camera/core/CameraX;->mCameraUseCaseAdapterProvider:Lokhttp3/Dispatcher;

    .line 247
    .line 248
    invoke-interface {v9, v11}, Landroidx/camera/core/impl/CameraInfoInternal;->setCameraUseCaseAdapterProvider(Lokhttp3/Dispatcher;)V

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_1
    iget-object v7, v8, Landroidx/camera/core/CameraX;->mCameraPresenceProvider:Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 253
    .line 254
    iget-object v9, v8, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/compose/ui/node/NodeChain;

    .line 255
    .line 256
    iget-object v11, v8, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 257
    .line 258
    invoke-virtual {v7, v0, v9, v11}, Landroidx/camera/core/impl/CameraPresenceProvider;->startup(Lcom/fsck/k9/mailstore/LocalFolder$8;Landroidx/compose/ui/node/NodeChain;Landroidx/camera/core/impl/CameraRepository;)V

    .line 259
    .line 260
    .line 261
    iget-object v7, v8, Landroidx/camera/core/CameraX;->mCameraPresenceProvider:Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 262
    .line 263
    iget-object v9, v8, Landroidx/camera/core/CameraX;->mSurfaceManager:Landroidx/camera/camera2/adapter/CameraSurfaceAdapter;

    .line 264
    .line 265
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    iget-object v7, v7, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 272
    .line 273
    invoke-virtual {v7, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    iget-object v7, v8, Landroidx/camera/core/CameraX;->mCameraPresenceProvider:Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 277
    .line 278
    iget-object v9, v8, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/compose/ui/node/NodeChain;

    .line 279
    .line 280
    iget-object v9, v9, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v9, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    .line 283
    .line 284
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    iget-object v7, v7, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 291
    .line 292
    invoke-virtual {v7, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    iget-object v7, v8, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 296
    .line 297
    invoke-virtual {v0, v7}, Lcom/fsck/k9/mailstore/LocalFolder$8;->validateOnFirstInit(Landroidx/camera/core/impl/CameraRepository;)V

    .line 298
    .line 299
    .line 300
    if-le v3, v2, :cond_2

    .line 301
    .line 302
    invoke-static/range {p0 .. p0}, Landroidx/camera/core/CameraX;->traceExecutionState(Landroidx/camera/core/impl/CameraProviderExecutionState;)V

    .line 303
    .line 304
    .line 305
    :cond_2
    invoke-virtual {v8}, Landroidx/camera/core/CameraX;->setStateToInitialized()V

    .line 306
    .line 307
    .line 308
    move-object/from16 v2, p0

    .line 309
    .line 310
    invoke-virtual {v4, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroidx/camera/core/InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 311
    .line 312
    .line 313
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_5

    .line 317
    .line 318
    :cond_3
    :try_start_1
    new-instance v0, Landroidx/camera/core/InitializationException;

    .line 319
    .line 320
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 321
    .line 322
    const-string v7, "Invalid app configuration provided. Missing CameraDeviceSurfaceManager."

    .line 323
    .line 324
    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 328
    .line 329
    .line 330
    throw v0

    .line 331
    :cond_4
    new-instance v0, Landroidx/camera/core/InitializationException;

    .line 332
    .line 333
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 334
    .line 335
    const-string v7, "Invalid app configuration provided. Missing UseCaseConfigFactory."

    .line 336
    .line 337
    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 341
    .line 342
    .line 343
    throw v0

    .line 344
    :cond_5
    new-instance v0, Landroidx/camera/core/InitializationException;

    .line 345
    .line 346
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 347
    .line 348
    const-string v7, "Invalid app configuration provided. Missing CameraFactory."

    .line 349
    .line 350
    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 354
    .line 355
    .line 356
    throw v0
    :try_end_1
    .catch Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroidx/camera/core/InitializationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 357
    :goto_3
    :try_start_2
    new-instance v2, Landroidx/camera/core/impl/CameraProviderExecutionState;

    .line 358
    .line 359
    invoke-direct {v2, v5, v6, v0}, Landroidx/camera/core/impl/CameraProviderExecutionState;-><init>(JLjava/lang/Exception;)V

    .line 360
    .line 361
    .line 362
    iget-object v7, v8, Landroidx/camera/core/CameraX;->mRetryPolicy:Landroidx/camera/core/RetryPolicy;

    .line 363
    .line 364
    invoke-interface {v7, v2}, Landroidx/camera/core/RetryPolicy;->onRetryDecisionRequested(Landroidx/camera/core/impl/CameraProviderExecutionState;)Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 365
    .line 366
    .line 367
    move-result-object v15

    .line 368
    invoke-static {v2}, Landroidx/camera/core/CameraX;->traceExecutionState(Landroidx/camera/core/impl/CameraProviderExecutionState;)V

    .line 369
    .line 370
    .line 371
    iget-boolean v2, v15, Landroidx/camera/core/RetryPolicy$RetryConfig;->mShouldRetry:Z

    .line 372
    .line 373
    if-eqz v2, :cond_7

    .line 374
    .line 375
    const v2, 0x7fffffff

    .line 376
    .line 377
    .line 378
    if-ge v3, v2, :cond_7

    .line 379
    .line 380
    const-string v2, "CameraX"

    .line 381
    .line 382
    new-instance v7, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .line 386
    .line 387
    const-string v9, "Retry init. Start time "

    .line 388
    .line 389
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    const-string v9, " current time "

    .line 396
    .line 397
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 401
    .line 402
    .line 403
    move-result-wide v11

    .line 404
    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    invoke-static {v2, v7, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 412
    .line 413
    .line 414
    iget-object v0, v8, Landroidx/camera/core/CameraX;->mSchedulerHandler:Landroid/os/Handler;

    .line 415
    .line 416
    new-instance v7, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;

    .line 417
    .line 418
    move-object v9, v1

    .line 419
    move v12, v3

    .line 420
    move-object v14, v4

    .line 421
    move-object v13, v10

    .line 422
    move-wide v10, v5

    .line 423
    invoke-direct/range {v7 .. v14}, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/core/CameraX;Ljava/util/concurrent/Executor;JILandroid/content/Context;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 424
    .line 425
    .line 426
    const-string v1, "retry_token"

    .line 427
    .line 428
    iget-wide v2, v15, Landroidx/camera/core/RetryPolicy$RetryConfig;->mDelayInMillis:J

    .line 429
    .line 430
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 431
    .line 432
    const/16 v5, 0x1c

    .line 433
    .line 434
    if-lt v4, v5, :cond_6

    .line 435
    .line 436
    invoke-static {v0, v7, v2, v3}, Landroidx/webkit/internal/ApiHelperForP;->postDelayed(Landroid/os/Handler;Landroidx/camera/core/CameraX$$ExternalSyntheticLambda3;J)Z

    .line 437
    .line 438
    .line 439
    goto :goto_4

    .line 440
    :cond_6
    invoke-static {v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 445
    .line 446
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 447
    .line 448
    .line 449
    goto :goto_4

    .line 450
    :cond_7
    move-object v14, v4

    .line 451
    iget-object v1, v8, Landroidx/camera/core/CameraX;->mInitializeLock:Ljava/lang/Object;

    .line 452
    .line 453
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 454
    const/4 v2, 0x3

    .line 455
    :try_start_3
    iput v2, v8, Landroidx/camera/core/CameraX;->mInitState:I

    .line 456
    .line 457
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 458
    :try_start_4
    iget-boolean v1, v15, Landroidx/camera/core/RetryPolicy$RetryConfig;->mCompleteWithoutFailure:Z

    .line 459
    .line 460
    if-eqz v1, :cond_8

    .line 461
    .line 462
    invoke-virtual {v8}, Landroidx/camera/core/CameraX;->setStateToInitialized()V

    .line 463
    .line 464
    .line 465
    const/4 v2, 0x0

    .line 466
    invoke-virtual {v14, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    goto/16 :goto_2

    .line 470
    .line 471
    :cond_8
    instance-of v1, v0, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;

    .line 472
    .line 473
    if-eqz v1, :cond_9

    .line 474
    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    .line 480
    const-string v2, "Device reporting less cameras than anticipated. On real devices: Retrying initialization might resolve temporary camera errors. On emulators: Ensure virtual camera configuration matches supported camera features as reported by PackageManager#hasSystemFeature. Available cameras: "

    .line 481
    .line 482
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    move-object v2, v0

    .line 486
    check-cast v2, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;

    .line 487
    .line 488
    iget v2, v2, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;->availableCameraCount:I

    .line 489
    .line 490
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    const-string v2, "CameraX"

    .line 498
    .line 499
    invoke-static {v2, v1, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    .line 501
    .line 502
    new-instance v0, Landroidx/camera/core/InitializationException;

    .line 503
    .line 504
    new-instance v2, Landroidx/camera/core/CameraUnavailableException;

    .line 505
    .line 506
    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v14, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 513
    .line 514
    .line 515
    goto :goto_4

    .line 516
    :cond_9
    instance-of v1, v0, Landroidx/camera/core/InitializationException;

    .line 517
    .line 518
    if-eqz v1, :cond_a

    .line 519
    .line 520
    invoke-virtual {v14, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 521
    .line 522
    .line 523
    goto :goto_4

    .line 524
    :cond_a
    new-instance v1, Landroidx/camera/core/InitializationException;

    .line 525
    .line 526
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v14, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 530
    .line 531
    .line 532
    :goto_4
    iget-object v0, v8, Landroidx/camera/core/CameraX;->mCameraPresenceProvider:Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 533
    .line 534
    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraPresenceProvider;->shutdown()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 535
    .line 536
    .line 537
    goto/16 :goto_2

    .line 538
    .line 539
    :goto_5
    return-void

    .line 540
    :catchall_0
    move-exception v0

    .line 541
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 542
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 543
    :catchall_1
    move-exception v0

    .line 544
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 545
    .line 546
    .line 547
    throw v0

    .line 548
    nop

    .line 549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

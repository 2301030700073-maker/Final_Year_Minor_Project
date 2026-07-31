.class public final Landroidx/datastore/core/DataStoreImpl$data$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $startState:Ljava/lang/Object;

.field public synthetic L$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 12
    iput p3, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$r8$classId:I

    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 13
    iput p4, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$r8$classId:I

    iput-object p2, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private final invokeSuspend$androidx$camera$camera2$impl$State3AControl$update$$inlined$confineLaunch$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Landroidx/camera/camera2/impl/State3AControl;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lkotlin/jvm/internal/Ref$LongRef;

    .line 11
    .line 12
    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p1, Landroidx/camera/camera2/impl/State3AControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    new-instance p0, Lorg/koin/core/error/InstanceCreationException;

    .line 24
    .line 25
    const-string v0, "Camera is not active."

    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Landroidx/camera/camera2/impl/State3AControl;->failAllPendingSignals(Ljava/lang/Exception;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :cond_0
    iget-object v4, p1, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v4

    .line 38
    :try_start_0
    iget-wide v5, p1, Landroidx/camera/camera2/impl/State3AControl;->currentRevision:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 39
    .line 40
    cmp-long v0, v0, v5

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    move v0, p0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v0, v1

    .line 48
    :goto_0
    monitor-exit v4

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_2
    iget-object v0, p1, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v0

    .line 56
    :try_start_1
    iget v4, p1, Landroidx/camera/camera2/impl/State3AControl;->_flashMode:I

    .line 57
    .line 58
    iget v5, p1, Landroidx/camera/camera2/impl/State3AControl;->_template:I

    .line 59
    .line 60
    iget-boolean v6, p1, Landroidx/camera/camera2/impl/State3AControl;->_tryExternalFlashAeMode:Z

    .line 61
    .line 62
    iget-object v7, p1, Landroidx/camera/camera2/impl/State3AControl;->_preferredAeMode:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    .line 64
    monitor-exit v0

    .line 65
    invoke-virtual {p1, v4, v6, v7}, Landroidx/camera/camera2/impl/State3AControl;->getFinalPreferredAeMode(IZLjava/lang/Integer;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/4 v4, 0x3

    .line 70
    const/4 v6, 0x4

    .line 71
    if-eq v5, p0, :cond_3

    .line 72
    .line 73
    if-eq v5, v4, :cond_4

    .line 74
    .line 75
    :cond_3
    move v5, v6

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    move v5, v4

    .line 78
    :goto_1
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 79
    .line 80
    iget-object v8, p1, Landroidx/camera/camera2/impl/State3AControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 81
    .line 82
    iget-object v8, v8, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 83
    .line 84
    invoke-static {v8, v0}, Lkotlin/math/MathKt;->getSupportedAeMode(Landroidx/camera/camera2/pipe/CameraMetadata;I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v8, Lkotlin/Pair;

    .line 93
    .line 94
    invoke-direct {v8, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 98
    .line 99
    iget-object v7, p1, Landroidx/camera/camera2/impl/State3AControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 100
    .line 101
    iget-object v7, v7, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 102
    .line 103
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {v7}, Lkotlin/math/MathKt;->getAvailableAfModes(Landroidx/camera/camera2/pipe/CameraMetadata;)Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    invoke-virtual {v9, v10}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->contains(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    if-eqz v9, :cond_5

    .line 119
    .line 120
    move v6, v5

    .line 121
    goto :goto_2

    .line 122
    :cond_5
    invoke-static {v7}, Lkotlin/math/MathKt;->getAvailableAfModes(Landroidx/camera/camera2/pipe/CameraMetadata;)Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    invoke-virtual {v5, v9}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->contains(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_6

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    invoke-static {v7}, Lkotlin/math/MathKt;->getAvailableAfModes(Landroidx/camera/camera2/pipe/CameraMetadata;)Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v5, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->contains(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_7

    .line 146
    .line 147
    move v6, p0

    .line 148
    goto :goto_2

    .line 149
    :cond_7
    move v6, v1

    .line 150
    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    new-instance v6, Lkotlin/Pair;

    .line 155
    .line 156
    invoke-direct {v6, v0, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 160
    .line 161
    iget-object v5, p1, Landroidx/camera/camera2/impl/State3AControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 162
    .line 163
    iget-object v5, v5, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 164
    .line 165
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    invoke-static {v5}, Lkotlin/math/MathKt;->getAvailableAwbModes(Landroidx/camera/camera2/pipe/CameraMetadata;)Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-virtual {v7, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->contains(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-eqz v7, :cond_8

    .line 177
    .line 178
    :goto_3
    move v2, p0

    .line 179
    goto :goto_4

    .line 180
    :cond_8
    invoke-static {v5}, Lkotlin/math/MathKt;->getAvailableAwbModes(Landroidx/camera/camera2/pipe/CameraMetadata;)Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v5, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->contains(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_9

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_9
    move v2, v1

    .line 192
    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    new-instance v5, Lkotlin/Pair;

    .line 197
    .line 198
    invoke-direct {v5, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    new-array v0, v4, [Lkotlin/Pair;

    .line 202
    .line 203
    aput-object v8, v0, v1

    .line 204
    .line 205
    aput-object v6, v0, p0

    .line 206
    .line 207
    const/4 p0, 0x2

    .line 208
    aput-object v5, v0, p0

    .line 209
    .line 210
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    :try_start_2
    sget-object v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;->DEFAULT:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;

    .line 215
    .line 216
    sget-object v1, Landroidx/camera/camera2/impl/UseCaseCameraKt;->defaultOptionPriority:Landroidx/camera/core/impl/Config$OptionPriority;

    .line 217
    .line 218
    invoke-interface {v3, p0, v0, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->submitParameters(Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)Lkotlinx/coroutines/Deferred;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    iget-object v0, p1, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    .line 223
    .line 224
    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 225
    :try_start_3
    iget-object v1, p1, Landroidx/camera/camera2/impl/State3AControl;->pendingSignals:Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    :try_start_4
    monitor-exit v0

    .line 232
    new-instance v0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 233
    .line 234
    const/4 v2, 0x5

    .line 235
    invoke-direct {v0, v2, v1, p1}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    check-cast p0, Lkotlinx/coroutines/JobSupport;

    .line 239
    .line 240
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 241
    .line 242
    .line 243
    goto :goto_6

    .line 244
    :catch_0
    move-exception p0

    .line 245
    goto :goto_5

    .line 246
    :catchall_0
    move-exception p0

    .line 247
    monitor-exit v0

    .line 248
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 249
    :goto_5
    invoke-virtual {p1, p0}, Landroidx/camera/camera2/impl/State3AControl;->failAllPendingSignals(Ljava/lang/Exception;)V

    .line 250
    .line 251
    .line 252
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 253
    .line 254
    return-object p0

    .line 255
    :catchall_1
    move-exception p0

    .line 256
    monitor-exit v0

    .line 257
    throw p0

    .line 258
    :catchall_2
    move-exception p0

    .line 259
    monitor-exit v4

    .line 260
    throw p0
.end method

.method private final invokeSuspend$app$k9mail$feature$settings$import$ui$AuthViewModel$exchangeToken$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    iget-object v0, p1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->authService:Lnet/openid/appauth/AuthorizationService;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lnet/openid/appauth/AuthorizationService;

    .line 14
    .line 15
    iget-object v1, p1, Landroidx/lifecycle/AndroidViewModel;->application:Landroid/app/Application;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lnet/openid/appauth/AuthorizationService;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p1, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->authService:Lnet/openid/appauth/AuthorizationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit p1

    .line 29
    iget-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lnet/openid/appauth/AuthorizationResponse;

    .line 32
    .line 33
    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationResponse;->createTokenExchangeRequest()Lnet/openid/appauth/TokenRequest;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 40
    .line 41
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/16 v2, 0xe

    .line 44
    .line 45
    invoke-direct {v1, v2, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, v1}, Lnet/openid/appauth/AuthorizationService;->performTokenRequest$1(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V

    .line 49
    .line 50
    .line 51
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0

    .line 54
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p0
.end method

.method private final invokeSuspend$com$fsck$k9$controller$push$PushController$onBackendChanged$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lcom/fsck/k9/controller/push/PushController;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/fsck/k9/controller/push/PushController;->lock:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lnet/thunderbird/feature/account/AccountId;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object p1, p1, Lcom/fsck/k9/controller/push/PushController;->pushers:Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    iget-object v1, v1, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/fsck/k9/controller/push/AccountPushController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/fsck/k9/controller/push/AccountPushController;->stop()V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lcom/fsck/k9/controller/push/PushController;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/fsck/k9/controller/push/PushController;->updatePushers()V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v0

    .line 47
    throw p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/eygraber/uri/Uri$Builder;

    .line 13
    .line 14
    check-cast v1, Ljava/lang/Long;

    .line 15
    .line 16
    const/16 v0, 0x1d

    .line 17
    .line 18
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_0
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lcom/fsck/k9/controller/push/PushController;

    .line 27
    .line 28
    check-cast v1, Lnet/thunderbird/feature/account/AccountId;

    .line 29
    .line 30
    const/16 v0, 0x1c

    .line 31
    .line 32
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_1
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 37
    .line 38
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lcom/fsck/k9/account/AccountStateLoader;

    .line 41
    .line 42
    check-cast v1, Ljava/lang/String;

    .line 43
    .line 44
    const/16 v0, 0x1b

    .line 45
    .line 46
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :pswitch_2
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 51
    .line 52
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;

    .line 55
    .line 56
    check-cast v1, Lnet/thunderbird/feature/search/legacy/SearchAccount;

    .line 57
    .line 58
    const/16 v0, 0x1a

    .line 59
    .line 60
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 61
    .line 62
    .line 63
    return-object p1

    .line 64
    :pswitch_3
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 65
    .line 66
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;

    .line 69
    .line 70
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 71
    .line 72
    const/16 v0, 0x19

    .line 73
    .line 74
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_4
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 79
    .line 80
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 83
    .line 84
    check-cast v1, Landroid/net/Uri;

    .line 85
    .line 86
    const/16 v0, 0x18

    .line 87
    .line 88
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 89
    .line 90
    .line 91
    return-object p1

    .line 92
    :pswitch_5
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 93
    .line 94
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 97
    .line 98
    check-cast v1, Ljava/lang/String;

    .line 99
    .line 100
    const/16 v0, 0x17

    .line 101
    .line 102
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 103
    .line 104
    .line 105
    return-object p1

    .line 106
    :pswitch_6
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 107
    .line 108
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptResult;

    .line 111
    .line 112
    check-cast v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 113
    .line 114
    const/16 v0, 0x16

    .line 115
    .line 116
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 117
    .line 118
    .line 119
    return-object p1

    .line 120
    :pswitch_7
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 121
    .line 122
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 125
    .line 126
    check-cast v1, Lnet/openid/appauth/AuthorizationResponse;

    .line 127
    .line 128
    const/16 v0, 0x15

    .line 129
    .line 130
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 131
    .line 132
    .line 133
    return-object p1

    .line 134
    :pswitch_8
    new-instance p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 135
    .line 136
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 137
    .line 138
    const/16 v0, 0x14

    .line 139
    .line 140
    invoke-direct {p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 141
    .line 142
    .line 143
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 144
    .line 145
    return-object p0

    .line 146
    :pswitch_9
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 147
    .line 148
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;

    .line 151
    .line 152
    check-cast v1, Ljava/util/ArrayList;

    .line 153
    .line 154
    const/16 v0, 0x13

    .line 155
    .line 156
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 157
    .line 158
    .line 159
    return-object p1

    .line 160
    :pswitch_a
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 161
    .line 162
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p0, Lcom/fsck/k9/mail/ServerSettings;

    .line 165
    .line 166
    check-cast v1, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;

    .line 167
    .line 168
    const/16 v0, 0x12

    .line 169
    .line 170
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 171
    .line 172
    .line 173
    return-object p1

    .line 174
    :pswitch_b
    new-instance p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 175
    .line 176
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 177
    .line 178
    const/16 v0, 0x11

    .line 179
    .line 180
    invoke-direct {p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 181
    .line 182
    .line 183
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 184
    .line 185
    return-object p0

    .line 186
    :pswitch_c
    new-instance p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 187
    .line 188
    check-cast v1, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 189
    .line 190
    const/16 v0, 0x10

    .line 191
    .line 192
    invoke-direct {p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 193
    .line 194
    .line 195
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 196
    .line 197
    return-object p0

    .line 198
    :pswitch_d
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 199
    .line 200
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast p0, Landroidx/lifecycle/LiveData;

    .line 203
    .line 204
    check-cast v1, Landroidx/lifecycle/Observer;

    .line 205
    .line 206
    const/16 v0, 0xf

    .line 207
    .line 208
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 209
    .line 210
    .line 211
    return-object p1

    .line 212
    :pswitch_e
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 213
    .line 214
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast p0, Landroidx/lifecycle/LiveData;

    .line 217
    .line 218
    check-cast v1, Landroidx/camera/core/impl/LiveDataObservable$$ExternalSyntheticLambda3;

    .line 219
    .line 220
    const/16 v0, 0xe

    .line 221
    .line 222
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 223
    .line 224
    .line 225
    return-object p1

    .line 226
    :pswitch_f
    new-instance p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 227
    .line 228
    check-cast v1, Ljava/util/Set;

    .line 229
    .line 230
    const/16 v0, 0xd

    .line 231
    .line 232
    invoke-direct {p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 233
    .line 234
    .line 235
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 236
    .line 237
    return-object p0

    .line 238
    :pswitch_10
    new-instance p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 239
    .line 240
    check-cast v1, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 241
    .line 242
    const/16 v0, 0xc

    .line 243
    .line 244
    invoke-direct {p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 245
    .line 246
    .line 247
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 248
    .line 249
    return-object p0

    .line 250
    :pswitch_11
    new-instance p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 251
    .line 252
    check-cast v1, Lcom/eygraber/uri/Uri$Builder;

    .line 253
    .line 254
    const/16 v0, 0xb

    .line 255
    .line 256
    invoke-direct {p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 257
    .line 258
    .line 259
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 260
    .line 261
    return-object p0

    .line 262
    :pswitch_12
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 263
    .line 264
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    .line 267
    .line 268
    check-cast v1, Ljava/lang/String;

    .line 269
    .line 270
    const/16 v0, 0xa

    .line 271
    .line 272
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 273
    .line 274
    .line 275
    return-object p1

    .line 276
    :pswitch_13
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 277
    .line 278
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast p0, Ljava/lang/String;

    .line 281
    .line 282
    check-cast v1, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 283
    .line 284
    const/16 v0, 0x9

    .line 285
    .line 286
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 287
    .line 288
    .line 289
    return-object p1

    .line 290
    :pswitch_14
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 291
    .line 292
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 295
    .line 296
    check-cast v1, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 297
    .line 298
    const/16 v0, 0x8

    .line 299
    .line 300
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 301
    .line 302
    .line 303
    return-object p1

    .line 304
    :pswitch_15
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 305
    .line 306
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast p0, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 309
    .line 310
    check-cast v1, Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    .line 311
    .line 312
    const/4 v0, 0x7

    .line 313
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 314
    .line 315
    .line 316
    return-object p1

    .line 317
    :pswitch_16
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 318
    .line 319
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 322
    .line 323
    check-cast v1, Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    .line 324
    .line 325
    const/4 v0, 0x6

    .line 326
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 327
    .line 328
    .line 329
    return-object p1

    .line 330
    :pswitch_17
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 331
    .line 332
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    .line 335
    .line 336
    check-cast v1, Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;

    .line 337
    .line 338
    const/4 v0, 0x5

    .line 339
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 340
    .line 341
    .line 342
    return-object p1

    .line 343
    :pswitch_18
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 344
    .line 345
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast p0, Landroidx/camera/camera2/impl/State3AControl;

    .line 348
    .line 349
    check-cast v1, Lkotlin/jvm/internal/Ref$LongRef;

    .line 350
    .line 351
    const/4 v0, 0x4

    .line 352
    invoke-direct {p1, p2, p0, v1, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 353
    .line 354
    .line 355
    return-object p1

    .line 356
    :pswitch_19
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 357
    .line 358
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast p0, Ljava/util/Set;

    .line 361
    .line 362
    check-cast v1, Landroidx/camera/camera2/impl/State3AControl;

    .line 363
    .line 364
    const/4 v0, 0x3

    .line 365
    invoke-direct {p1, p2, p0, v1, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 366
    .line 367
    .line 368
    return-object p1

    .line 369
    :pswitch_1a
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 370
    .line 371
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast p0, Landroidx/camera/camera2/impl/LowLightBoostControl;

    .line 374
    .line 375
    check-cast v1, Ljava/util/List;

    .line 376
    .line 377
    const/4 v0, 0x2

    .line 378
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 379
    .line 380
    .line 381
    return-object p1

    .line 382
    :pswitch_1b
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 383
    .line 384
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 385
    .line 386
    check-cast p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 387
    .line 388
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 389
    .line 390
    const/4 v0, 0x1

    .line 391
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 392
    .line 393
    .line 394
    return-object p1

    .line 395
    :pswitch_1c
    new-instance p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 396
    .line 397
    check-cast v1, Landroidx/datastore/core/State;

    .line 398
    .line 399
    const/4 v0, 0x0

    .line 400
    invoke-direct {p0, v1, p2, v0}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 401
    .line 402
    .line 403
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 404
    .line 405
    return-object p0

    .line 406
    nop

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 23
    .line 24
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 37
    .line 38
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 52
    .line 53
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 67
    .line 68
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 69
    .line 70
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 82
    .line 83
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 84
    .line 85
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 97
    .line 98
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 99
    .line 100
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    return-object v1

    .line 110
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 111
    .line 112
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 113
    .line 114
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 119
    .line 120
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    return-object v1

    .line 124
    :pswitch_7
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 125
    .line 126
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 127
    .line 128
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 133
    .line 134
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    return-object v1

    .line 138
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 139
    .line 140
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 141
    .line 142
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 147
    .line 148
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    return-object v1

    .line 152
    :pswitch_9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 153
    .line 154
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 155
    .line 156
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 161
    .line 162
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    return-object p0

    .line 167
    :pswitch_a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 168
    .line 169
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 170
    .line 171
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 176
    .line 177
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    return-object p0

    .line 182
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 183
    .line 184
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 185
    .line 186
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 191
    .line 192
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    return-object p0

    .line 197
    :pswitch_c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 198
    .line 199
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 200
    .line 201
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 206
    .line 207
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    return-object v1

    .line 211
    :pswitch_d
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 212
    .line 213
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 214
    .line 215
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 220
    .line 221
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    return-object v1

    .line 225
    :pswitch_e
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 226
    .line 227
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 228
    .line 229
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 234
    .line 235
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    return-object v1

    .line 239
    :pswitch_f
    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 240
    .line 241
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 242
    .line 243
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 248
    .line 249
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    return-object p0

    .line 254
    :pswitch_10
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 255
    .line 256
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 257
    .line 258
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 263
    .line 264
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    return-object p0

    .line 269
    :pswitch_11
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 270
    .line 271
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 276
    .line 277
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    return-object v1

    .line 281
    :pswitch_12
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 282
    .line 283
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 284
    .line 285
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 290
    .line 291
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    return-object p0

    .line 296
    :pswitch_13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 297
    .line 298
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 299
    .line 300
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 305
    .line 306
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    return-object p0

    .line 311
    :pswitch_14
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 312
    .line 313
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 314
    .line 315
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 320
    .line 321
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    return-object v1

    .line 325
    :pswitch_15
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 326
    .line 327
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 328
    .line 329
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 334
    .line 335
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    return-object v1

    .line 339
    :pswitch_16
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 340
    .line 341
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 342
    .line 343
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 348
    .line 349
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    return-object v1

    .line 353
    :pswitch_17
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 354
    .line 355
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 356
    .line 357
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 362
    .line 363
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    return-object v1

    .line 367
    :pswitch_18
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 368
    .line 369
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 370
    .line 371
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 376
    .line 377
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    return-object v1

    .line 381
    :pswitch_19
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 382
    .line 383
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 384
    .line 385
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 390
    .line 391
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    return-object v1

    .line 395
    :pswitch_1a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 396
    .line 397
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 398
    .line 399
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 400
    .line 401
    .line 402
    move-result-object p0

    .line 403
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 404
    .line 405
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object p0

    .line 409
    return-object p0

    .line 410
    :pswitch_1b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 411
    .line 412
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 413
    .line 414
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 419
    .line 420
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    return-object v1

    .line 424
    :pswitch_1c
    check-cast p1, Landroidx/datastore/core/State;

    .line 425
    .line 426
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 427
    .line 428
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 433
    .line 434
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object p0

    .line 438
    return-object p0

    .line 439
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$r8$classId:I

    .line 4
    .line 5
    const/4 v3, 0x4

    .line 6
    const/4 v4, 0x3

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x1

    .line 9
    const/4 v7, 0x0

    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lcom/eygraber/uri/Uri$Builder;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lnet/thunderbird/feature/account/AccountId;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/eygraber/uri/Uri$Builder;->getAccountById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sget-object v3, Lnet/thunderbird/feature/mail/folder/api/FolderType;->ARCHIVE:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Ljava/lang/Long;

    .line 33
    .line 34
    sget-object v4, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->MANUAL:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/eygraber/uri/Uri$Builder;->setSpecialFolderSynchronous(Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/feature/mail/folder/api/FolderType;Ljava/lang/Long;Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v2}, Lnet/thunderbird/core/android/account/LegacyAccount;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    iget-object v1, v1, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 54
    .line 55
    return-object v0

    .line 56
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend$com$fsck$k9$controller$push$PushController$onBackendChanged$1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0

    .line 61
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, Lcom/fsck/k9/account/AccountStateLoader;

    .line 67
    .line 68
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Ljava/lang/String;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/fsck/k9/account/AccountStateLoader;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 73
    .line 74
    check-cast v1, Lcom/fsck/k9/Preferences;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    new-instance v8, Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 83
    .line 84
    iget-object v9, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getEmail()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v1, v1, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 95
    .line 96
    const-string v11, "imap"

    .line 97
    .line 98
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_1

    .line 103
    .line 104
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v1}, Landroidx/core/util/DebugUtils;->getAutoDetectNamespace(Lcom/fsck/k9/mail/ServerSettings;)Z

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    invoke-static {v1}, Landroidx/core/util/DebugUtils;->getPathPrefix(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->useCompression()Z

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSendClientInfoEnabled()Z

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    const-string v15, "autoDetectNamespace"

    .line 125
    .line 126
    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    const/16 v16, 0x2

    .line 131
    .line 132
    new-instance v2, Lkotlin/Pair;

    .line 133
    .line 134
    invoke-direct {v2, v15, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    const-string v11, "pathPrefix"

    .line 138
    .line 139
    new-instance v15, Lkotlin/Pair;

    .line 140
    .line 141
    invoke-direct {v15, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    const-string/jumbo v11, "useCompression"

    .line 145
    .line 146
    .line 147
    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    new-instance v13, Lkotlin/Pair;

    .line 152
    .line 153
    invoke-direct {v13, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    const-string v11, "sendClientInfo"

    .line 157
    .line 158
    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    new-instance v14, Lkotlin/Pair;

    .line 163
    .line 164
    invoke-direct {v14, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    new-array v3, v3, [Lkotlin/Pair;

    .line 168
    .line 169
    aput-object v2, v3, v5

    .line 170
    .line 171
    aput-object v15, v3, v6

    .line 172
    .line 173
    aput-object v13, v3, v16

    .line 174
    .line 175
    aput-object v14, v3, v4

    .line 176
    .line 177
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const/16 v3, 0xff

    .line 182
    .line 183
    invoke-static {v1, v7, v7, v2, v3}, Lcom/fsck/k9/mail/ServerSettings;->copy$default(Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/fsck/k9/mail/ServerSettings;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    :goto_0
    move-object v11, v1

    .line 188
    goto :goto_1

    .line 189
    :cond_1
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    goto :goto_0

    .line 194
    :goto_1
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOutgoingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 195
    .line 196
    .line 197
    move-result-object v12

    .line 198
    new-instance v13, Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 199
    .line 200
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOAuthState()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-direct {v13, v0}, Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const/4 v14, 0x0

    .line 208
    const/16 v15, 0xe0

    .line 209
    .line 210
    invoke-direct/range {v8 .. v15}, Lapp/k9mail/feature/account/common/domain/entity/AccountState;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;I)V

    .line 211
    .line 212
    .line 213
    move-object v7, v8

    .line 214
    :cond_2
    return-object v7

    .line 215
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;

    .line 221
    .line 222
    iget-object v1, v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->messageCountsProvider:Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 223
    .line 224
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v0, Lnet/thunderbird/feature/search/legacy/SearchAccount;

    .line 227
    .line 228
    iget-object v0, v0, Lnet/thunderbird/feature/search/legacy/SearchAccount;->relatedSearch:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 229
    .line 230
    invoke-virtual {v1, v0}, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->getMessageCounts(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)Lapp/k9mail/legacy/message/controller/MessageCounts;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    iget v0, v0, Lapp/k9mail/legacy/message/controller/MessageCounts;->unread:I

    .line 235
    .line 236
    new-instance v1, Ljava/lang/Integer;

    .line 237
    .line 238
    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 239
    .line 240
    .line 241
    return-object v1

    .line 242
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;

    .line 248
    .line 249
    iget-object v1, v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->messageCountsProvider:Lcom/fsck/k9/controller/DefaultMessageCountsProvider;

    .line 250
    .line 251
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 254
    .line 255
    invoke-virtual {v1, v0}, Lcom/fsck/k9/controller/DefaultMessageCountsProvider;->getMessageCounts(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/message/controller/MessageCounts;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    iget v0, v0, Lapp/k9mail/legacy/message/controller/MessageCounts;->unread:I

    .line 260
    .line 261
    new-instance v1, Ljava/lang/Integer;

    .line 262
    .line 263
    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 264
    .line 265
    .line 266
    return-object v1

    .line 267
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 273
    .line 274
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v0, Landroid/net/Uri;

    .line 277
    .line 278
    iget-object v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->contentResolver:Landroid/content/ContentResolver;

    .line 279
    .line 280
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    if-eqz v2, :cond_3

    .line 285
    .line 286
    :try_start_0
    iget-object v0, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->settingsImporter:Lcom/fsck/k9/preferences/SettingsImporter;

    .line 287
    .line 288
    invoke-virtual {v0, v2}, Lcom/fsck/k9/preferences/SettingsImporter;->getImportStreamContents(Ljava/io/InputStream;)Lcom/fsck/k9/preferences/ImportContents;

    .line 289
    .line 290
    .line 291
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :catchall_0
    move-exception v0

    .line 297
    move-object v1, v0

    .line 298
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    :catchall_1
    move-exception v0

    .line 300
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 301
    .line 302
    .line 303
    throw v0

    .line 304
    :cond_3
    const-string v1, "Failed to open settings file for reading: "

    .line 305
    .line 306
    invoke-static {v0, v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    :goto_2
    return-object v7

    .line 310
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 316
    .line 317
    iget-object v1, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountActivator:Lcom/fsck/k9/account/AccountActivator;

    .line 318
    .line 319
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v0, Ljava/lang/String;

    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    iget-object v2, v1, Lcom/fsck/k9/account/AccountActivator;->preferences:Lcom/fsck/k9/Preferences;

    .line 330
    .line 331
    invoke-virtual {v2, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    if-eqz v2, :cond_4

    .line 336
    .line 337
    iget-object v0, v1, Lcom/fsck/k9/account/AccountActivator;->context:Landroid/content/Context;

    .line 338
    .line 339
    invoke-static {v0}, Lcom/fsck/k9/Core;->setServicesEnabled(Landroid/content/Context;)V

    .line 340
    .line 341
    .line 342
    iget-object v0, v1, Lcom/fsck/k9/account/AccountActivator;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 343
    .line 344
    const-string v1, "refreshFolderList"

    .line 345
    .line 346
    new-instance v3, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;

    .line 347
    .line 348
    invoke-direct {v3, v0, v2, v5}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v1, v3}, Lcom/fsck/k9/controller/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 352
    .line 353
    .line 354
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_4
    const-string v1, "Account "

    .line 358
    .line 359
    const-string v2, " not found"

    .line 360
    .line 361
    invoke-static {v0, v2, v1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    :goto_3
    return-object v7

    .line 365
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v1, Lapp/k9mail/feature/settings/import/ui/PasswordPromptResult;

    .line 371
    .line 372
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 375
    .line 376
    iget-object v0, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountActivator:Lcom/fsck/k9/account/AccountActivator;

    .line 377
    .line 378
    iget-object v2, v1, Lapp/k9mail/feature/settings/import/ui/PasswordPromptResult;->accountUuid:Ljava/lang/String;

    .line 379
    .line 380
    iget-object v3, v1, Lapp/k9mail/feature/settings/import/ui/PasswordPromptResult;->incomingServerPassword:Ljava/lang/String;

    .line 381
    .line 382
    iget-object v1, v1, Lapp/k9mail/feature/settings/import/ui/PasswordPromptResult;->outgoingServerPassword:Ljava/lang/String;

    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    iget-object v4, v0, Lcom/fsck/k9/account/AccountActivator;->preferences:Lcom/fsck/k9/Preferences;

    .line 388
    .line 389
    invoke-virtual {v4, v2}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    if-eqz v6, :cond_7

    .line 394
    .line 395
    const/16 v2, 0x1bf

    .line 396
    .line 397
    if-eqz v3, :cond_5

    .line 398
    .line 399
    invoke-virtual {v6}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 400
    .line 401
    .line 402
    move-result-object v8

    .line 403
    invoke-static {v8, v7, v3, v7, v2}, Lcom/fsck/k9/mail/ServerSettings;->copy$default(Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/fsck/k9/mail/ServerSettings;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    iput-object v3, v6, Lnet/thunderbird/core/android/account/LegacyAccountDto;->internalIncomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 408
    .line 409
    :cond_5
    if-eqz v1, :cond_6

    .line 410
    .line 411
    invoke-virtual {v6}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOutgoingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-static {v3, v7, v1, v7, v2}, Lcom/fsck/k9/mail/ServerSettings;->copy$default(Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/fsck/k9/mail/ServerSettings;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    iput-object v1, v6, Lnet/thunderbird/core/android/account/LegacyAccountDto;->internalOutgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 420
    .line 421
    :cond_6
    invoke-virtual {v4, v6}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 422
    .line 423
    .line 424
    iget-object v1, v0, Lcom/fsck/k9/account/AccountActivator;->context:Landroid/content/Context;

    .line 425
    .line 426
    invoke-static {v1}, Lcom/fsck/k9/Core;->setServicesEnabled(Landroid/content/Context;)V

    .line 427
    .line 428
    .line 429
    iget-object v0, v0, Lcom/fsck/k9/account/AccountActivator;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 430
    .line 431
    const-string v1, "refreshFolderList"

    .line 432
    .line 433
    new-instance v2, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;

    .line 434
    .line 435
    invoke-direct {v2, v0, v6, v5}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 439
    .line 440
    .line 441
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 442
    .line 443
    goto :goto_4

    .line 444
    :cond_7
    const-string v0, "Account "

    .line 445
    .line 446
    const-string v1, " not found"

    .line 447
    .line 448
    invoke-static {v2, v1, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    :goto_4
    return-object v7

    .line 452
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend$app$k9mail$feature$settings$import$ui$AuthViewModel$exchangeToken$1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    return-object v0

    .line 457
    :pswitch_8
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 460
    .line 461
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    new-instance v2, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;

    .line 465
    .line 466
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 467
    .line 468
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 469
    .line 470
    invoke-direct {v2, v0, v7, v6}, Lapp/k9mail/feature/account/server/settings/ui/common/ProtectedPasswordInputKt$ProtectedPasswordInput$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;I)V

    .line 471
    .line 472
    .line 473
    invoke-static {v1, v7, v7, v2, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 474
    .line 475
    .line 476
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 477
    .line 478
    return-object v0

    .line 479
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 483
    .line 484
    check-cast v1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;

    .line 485
    .line 486
    iget-object v1, v1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->qrCodeSettingsWriter:Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeSettingsWriter;

    .line 487
    .line 488
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 489
    .line 490
    check-cast v0, Ljava/util/ArrayList;

    .line 491
    .line 492
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    new-instance v2, Ljava/io/File;

    .line 496
    .line 497
    new-instance v3, Ljava/io/File;

    .line 498
    .line 499
    iget-object v4, v1, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeSettingsWriter;->context:Landroid/content/Context;

    .line 500
    .line 501
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    const-string v6, "qrcode"

    .line 506
    .line 507
    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 511
    .line 512
    .line 513
    const-string v5, "settings.k9s"

    .line 514
    .line 515
    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    new-instance v3, Ljava/io/FileOutputStream;

    .line 519
    .line 520
    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 521
    .line 522
    .line 523
    :try_start_2
    iget-object v1, v1, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeSettingsWriter;->xmlSettingWriter:Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;

    .line 524
    .line 525
    invoke-virtual {v1, v3, v0}, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;->writeSettings(Ljava/io/FileOutputStream;Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 526
    .line 527
    .line 528
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    const-string v0, ".qrcode.settings"

    .line 544
    .line 545
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-static {v4, v0, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    return-object v0

    .line 560
    :catchall_2
    move-exception v0

    .line 561
    move-object v1, v0

    .line 562
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 563
    :catchall_3
    move-exception v0

    .line 564
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 565
    .line 566
    .line 567
    throw v0

    .line 568
    :pswitch_a
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 569
    .line 570
    check-cast v1, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;

    .line 571
    .line 572
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 576
    .line 577
    check-cast v0, Lcom/fsck/k9/mail/ServerSettings;

    .line 578
    .line 579
    iget-object v2, v0, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 580
    .line 581
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    sparse-switch v3, :sswitch_data_0

    .line 586
    .line 587
    .line 588
    goto/16 :goto_d

    .line 589
    .line 590
    :sswitch_0
    const-string v3, "smtp"

    .line 591
    .line 592
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    if-eqz v2, :cond_13

    .line 597
    .line 598
    iget-object v2, v1, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;->smtpValidator:Lcom/google/zxing/BinaryBitmap;

    .line 599
    .line 600
    iget-object v1, v1, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;->authStateStorage:Lcom/fsck/k9/mail/oauth/AuthStateStorage;

    .line 601
    .line 602
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    if-eqz v1, :cond_8

    .line 609
    .line 610
    iget-object v3, v2, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 611
    .line 612
    check-cast v3, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;

    .line 613
    .line 614
    new-instance v4, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 615
    .line 616
    iget-object v3, v3, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;->context:Landroid/content/Context;

    .line 617
    .line 618
    invoke-direct {v4, v3, v1}, Lcom/fsck/k9/mailstore/LocalFolder$12;-><init>(Landroid/content/Context;Lcom/fsck/k9/mail/oauth/AuthStateStorage;)V

    .line 619
    .line 620
    .line 621
    goto :goto_5

    .line 622
    :cond_8
    move-object v4, v7

    .line 623
    :goto_5
    new-instance v1, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;

    .line 624
    .line 625
    iget-object v2, v2, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 626
    .line 627
    check-cast v2, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 628
    .line 629
    invoke-direct {v1, v0, v2, v4}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;-><init>(Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Lcom/fsck/k9/mailstore/LocalFolder$12;)V

    .line 630
    .line 631
    .line 632
    :try_start_4
    invoke-virtual {v1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->checkSettings()V

    .line 633
    .line 634
    .line 635
    sget-object v7, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$Success;->INSTANCE:Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$Success;
    :try_end_4
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/fsck/k9/mail/MissingCapabilityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/fsck/k9/mail/ClientCertificateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 636
    .line 637
    goto/16 :goto_e

    .line 638
    .line 639
    :catch_0
    move-exception v0

    .line 640
    goto :goto_9

    .line 641
    :catch_1
    move-exception v0

    .line 642
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$UnknownError;

    .line 643
    .line 644
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$UnknownError;-><init>(Ljava/lang/Exception;)V

    .line 645
    .line 646
    .line 647
    :goto_6
    move-object v7, v1

    .line 648
    goto/16 :goto_e

    .line 649
    .line 650
    :catch_2
    move-exception v0

    .line 651
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$NetworkError;

    .line 652
    .line 653
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$NetworkError;-><init>(Ljava/io/IOException;)V

    .line 654
    .line 655
    .line 656
    goto :goto_6

    .line 657
    :catch_3
    move-exception v0

    .line 658
    iget-object v1, v0, Lnet/thunderbird/core/common/exception/MessagingException;->cause:Ljava/lang/Throwable;

    .line 659
    .line 660
    instance-of v2, v1, Ljava/io/IOException;

    .line 661
    .line 662
    if-eqz v2, :cond_9

    .line 663
    .line 664
    new-instance v0, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$NetworkError;

    .line 665
    .line 666
    check-cast v1, Ljava/io/IOException;

    .line 667
    .line 668
    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$NetworkError;-><init>(Ljava/io/IOException;)V

    .line 669
    .line 670
    .line 671
    goto :goto_8

    .line 672
    :cond_9
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$UnknownError;

    .line 673
    .line 674
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$UnknownError;-><init>(Ljava/lang/Exception;)V

    .line 675
    .line 676
    .line 677
    :goto_7
    move-object v0, v1

    .line 678
    :goto_8
    move-object v7, v0

    .line 679
    goto/16 :goto_e

    .line 680
    .line 681
    :goto_9
    iget-object v0, v0, Lcom/fsck/k9/mail/ClientCertificateException;->error:Lcom/fsck/k9/mail/ClientCertificateError;

    .line 682
    .line 683
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    if-eqz v0, :cond_b

    .line 688
    .line 689
    if-ne v0, v6, :cond_a

    .line 690
    .line 691
    sget-object v0, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ClientCertificateError$ClientCertificateExpired;->INSTANCE:Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ClientCertificateError$ClientCertificateExpired;

    .line 692
    .line 693
    goto :goto_8

    .line 694
    :cond_a
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 695
    .line 696
    .line 697
    goto/16 :goto_e

    .line 698
    .line 699
    :cond_b
    sget-object v0, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ClientCertificateError$ClientCertificateRetrievalFailure;->INSTANCE:Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ClientCertificateError$ClientCertificateRetrievalFailure;

    .line 700
    .line 701
    goto :goto_8

    .line 702
    :catch_4
    move-exception v0

    .line 703
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$MissingServerCapabilityError;

    .line 704
    .line 705
    iget-object v0, v0, Lcom/fsck/k9/mail/MissingCapabilityException;->capabilityName:Ljava/lang/String;

    .line 706
    .line 707
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$MissingServerCapabilityError;-><init>(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    goto :goto_6

    .line 711
    :catch_5
    move-exception v0

    .line 712
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ServerError;

    .line 713
    .line 714
    iget-object v0, v0, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->replyText:Ljava/lang/String;

    .line 715
    .line 716
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ServerError;-><init>(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    goto :goto_6

    .line 720
    :catch_6
    move-exception v0

    .line 721
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$CertificateError;

    .line 722
    .line 723
    iget-object v0, v0, Lcom/fsck/k9/mail/CertificateValidationException;->certificateChain:Ljava/util/List;

    .line 724
    .line 725
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$CertificateError;-><init>(Ljava/util/List;)V

    .line 726
    .line 727
    .line 728
    goto :goto_6

    .line 729
    :catch_7
    move-exception v0

    .line 730
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$AuthenticationError;

    .line 731
    .line 732
    iget-object v0, v0, Lcom/fsck/k9/mail/AuthenticationFailedException;->messageFromServer:Ljava/lang/String;

    .line 733
    .line 734
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$AuthenticationError;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    goto :goto_6

    .line 738
    :sswitch_1
    const-string v3, "pop3"

    .line 739
    .line 740
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    move-result v2

    .line 744
    if-eqz v2, :cond_13

    .line 745
    .line 746
    iget-object v2, v1, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;->pop3Validator:Landroidx/work/Configuration$Builder;

    .line 747
    .line 748
    iget-object v1, v1, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;->authStateStorage:Lcom/fsck/k9/mail/oauth/AuthStateStorage;

    .line 749
    .line 750
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 754
    .line 755
    .line 756
    new-instance v1, Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 757
    .line 758
    iget-object v2, v2, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 759
    .line 760
    check-cast v2, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 761
    .line 762
    invoke-direct {v1, v0, v2}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;-><init>(Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;)V

    .line 763
    .line 764
    .line 765
    :try_start_5
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->checkSettings()V

    .line 766
    .line 767
    .line 768
    sget-object v7, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$Success;->INSTANCE:Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$Success;
    :try_end_5
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Lcom/fsck/k9/mail/store/pop3/Pop3ErrorResponse; {:try_start_5 .. :try_end_5} :catch_d
    .catch Lcom/fsck/k9/mail/MissingCapabilityException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Lcom/fsck/k9/mail/ClientCertificateException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 769
    .line 770
    goto/16 :goto_e

    .line 771
    .line 772
    :catch_8
    move-exception v0

    .line 773
    goto :goto_a

    .line 774
    :catch_9
    move-exception v0

    .line 775
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$UnknownError;

    .line 776
    .line 777
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$UnknownError;-><init>(Ljava/lang/Exception;)V

    .line 778
    .line 779
    .line 780
    goto/16 :goto_6

    .line 781
    .line 782
    :catch_a
    move-exception v0

    .line 783
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$NetworkError;

    .line 784
    .line 785
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$NetworkError;-><init>(Ljava/io/IOException;)V

    .line 786
    .line 787
    .line 788
    goto/16 :goto_6

    .line 789
    .line 790
    :catch_b
    move-exception v0

    .line 791
    iget-object v1, v0, Lnet/thunderbird/core/common/exception/MessagingException;->cause:Ljava/lang/Throwable;

    .line 792
    .line 793
    instance-of v2, v1, Ljava/io/IOException;

    .line 794
    .line 795
    if-eqz v2, :cond_c

    .line 796
    .line 797
    new-instance v0, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$NetworkError;

    .line 798
    .line 799
    check-cast v1, Ljava/io/IOException;

    .line 800
    .line 801
    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$NetworkError;-><init>(Ljava/io/IOException;)V

    .line 802
    .line 803
    .line 804
    goto :goto_8

    .line 805
    :cond_c
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$UnknownError;

    .line 806
    .line 807
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$UnknownError;-><init>(Ljava/lang/Exception;)V

    .line 808
    .line 809
    .line 810
    goto/16 :goto_7

    .line 811
    .line 812
    :goto_a
    iget-object v0, v0, Lcom/fsck/k9/mail/ClientCertificateException;->error:Lcom/fsck/k9/mail/ClientCertificateError;

    .line 813
    .line 814
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 815
    .line 816
    .line 817
    move-result v0

    .line 818
    if-eqz v0, :cond_e

    .line 819
    .line 820
    if-ne v0, v6, :cond_d

    .line 821
    .line 822
    sget-object v0, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ClientCertificateError$ClientCertificateExpired;->INSTANCE:Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ClientCertificateError$ClientCertificateExpired;

    .line 823
    .line 824
    goto/16 :goto_8

    .line 825
    .line 826
    :cond_d
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 827
    .line 828
    .line 829
    goto/16 :goto_e

    .line 830
    .line 831
    :cond_e
    sget-object v0, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ClientCertificateError$ClientCertificateRetrievalFailure;->INSTANCE:Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ClientCertificateError$ClientCertificateRetrievalFailure;

    .line 832
    .line 833
    goto/16 :goto_8

    .line 834
    .line 835
    :catch_c
    move-exception v0

    .line 836
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$MissingServerCapabilityError;

    .line 837
    .line 838
    iget-object v0, v0, Lcom/fsck/k9/mail/MissingCapabilityException;->capabilityName:Ljava/lang/String;

    .line 839
    .line 840
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$MissingServerCapabilityError;-><init>(Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    goto/16 :goto_6

    .line 844
    .line 845
    :catch_d
    move-exception v0

    .line 846
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ServerError;

    .line 847
    .line 848
    iget-object v0, v0, Lnet/thunderbird/core/common/exception/MessagingException;->message:Ljava/lang/String;

    .line 849
    .line 850
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ServerError;-><init>(Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    goto/16 :goto_6

    .line 854
    .line 855
    :catch_e
    move-exception v0

    .line 856
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$CertificateError;

    .line 857
    .line 858
    iget-object v0, v0, Lcom/fsck/k9/mail/CertificateValidationException;->certificateChain:Ljava/util/List;

    .line 859
    .line 860
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$CertificateError;-><init>(Ljava/util/List;)V

    .line 861
    .line 862
    .line 863
    goto/16 :goto_6

    .line 864
    .line 865
    :catch_f
    move-exception v0

    .line 866
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$AuthenticationError;

    .line 867
    .line 868
    iget-object v0, v0, Lcom/fsck/k9/mail/AuthenticationFailedException;->messageFromServer:Ljava/lang/String;

    .line 869
    .line 870
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$AuthenticationError;-><init>(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    goto/16 :goto_6

    .line 874
    .line 875
    :sswitch_2
    const-string v3, "imap"

    .line 876
    .line 877
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 878
    .line 879
    .line 880
    move-result v2

    .line 881
    if-eqz v2, :cond_13

    .line 882
    .line 883
    iget-object v2, v1, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;->imapValidator:Lokhttp3/Dispatcher;

    .line 884
    .line 885
    iget-object v1, v1, Lapp/k9mail/feature/account/server/validation/domain/usecase/ValidateServerSettings;->authStateStorage:Lcom/fsck/k9/mail/oauth/AuthStateStorage;

    .line 886
    .line 887
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 891
    .line 892
    .line 893
    new-instance v3, Landroidx/work/Configuration$Builder;

    .line 894
    .line 895
    const/16 v4, 0x1b

    .line 896
    .line 897
    invoke-direct {v3, v4, v2}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 898
    .line 899
    .line 900
    if-eqz v1, :cond_f

    .line 901
    .line 902
    iget-object v4, v2, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 903
    .line 904
    check-cast v4, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;

    .line 905
    .line 906
    new-instance v5, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 907
    .line 908
    iget-object v4, v4, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;->context:Landroid/content/Context;

    .line 909
    .line 910
    invoke-direct {v5, v4, v1}, Lcom/fsck/k9/mailstore/LocalFolder$12;-><init>(Landroid/content/Context;Lcom/fsck/k9/mail/oauth/AuthStateStorage;)V

    .line 911
    .line 912
    .line 913
    goto :goto_b

    .line 914
    :cond_f
    move-object v5, v7

    .line 915
    :goto_b
    new-instance v1, Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 916
    .line 917
    iget-object v2, v2, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 918
    .line 919
    check-cast v2, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 920
    .line 921
    invoke-direct {v1, v0, v3, v2, v5}, Lcom/fsck/k9/mail/store/imap/RealImapStore;-><init>(Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Lcom/fsck/k9/mailstore/LocalFolder$12;)V

    .line 922
    .line 923
    .line 924
    :try_start_6
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->checkSettings()V

    .line 925
    .line 926
    .line 927
    sget-object v7, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$Success;->INSTANCE:Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$Success;
    :try_end_6
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Lcom/fsck/k9/mail/CertificateValidationException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Lcom/fsck/k9/mail/MissingCapabilityException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Lcom/fsck/k9/mail/ClientCertificateException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_11

    .line 928
    .line 929
    goto/16 :goto_e

    .line 930
    .line 931
    :catch_10
    move-exception v0

    .line 932
    goto :goto_c

    .line 933
    :catch_11
    move-exception v0

    .line 934
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$UnknownError;

    .line 935
    .line 936
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$UnknownError;-><init>(Ljava/lang/Exception;)V

    .line 937
    .line 938
    .line 939
    goto/16 :goto_6

    .line 940
    .line 941
    :catch_12
    move-exception v0

    .line 942
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$NetworkError;

    .line 943
    .line 944
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$NetworkError;-><init>(Ljava/io/IOException;)V

    .line 945
    .line 946
    .line 947
    goto/16 :goto_6

    .line 948
    .line 949
    :catch_13
    move-exception v0

    .line 950
    iget-object v1, v0, Lnet/thunderbird/core/common/exception/MessagingException;->cause:Ljava/lang/Throwable;

    .line 951
    .line 952
    instance-of v2, v1, Ljava/io/IOException;

    .line 953
    .line 954
    if-eqz v2, :cond_10

    .line 955
    .line 956
    new-instance v0, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$NetworkError;

    .line 957
    .line 958
    check-cast v1, Ljava/io/IOException;

    .line 959
    .line 960
    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$NetworkError;-><init>(Ljava/io/IOException;)V

    .line 961
    .line 962
    .line 963
    goto/16 :goto_8

    .line 964
    .line 965
    :cond_10
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$UnknownError;

    .line 966
    .line 967
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$UnknownError;-><init>(Ljava/lang/Exception;)V

    .line 968
    .line 969
    .line 970
    goto/16 :goto_7

    .line 971
    .line 972
    :goto_c
    iget-object v0, v0, Lcom/fsck/k9/mail/ClientCertificateException;->error:Lcom/fsck/k9/mail/ClientCertificateError;

    .line 973
    .line 974
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 975
    .line 976
    .line 977
    move-result v0

    .line 978
    if-eqz v0, :cond_12

    .line 979
    .line 980
    if-ne v0, v6, :cond_11

    .line 981
    .line 982
    sget-object v0, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ClientCertificateError$ClientCertificateExpired;->INSTANCE:Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ClientCertificateError$ClientCertificateExpired;

    .line 983
    .line 984
    goto/16 :goto_8

    .line 985
    .line 986
    :cond_11
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 987
    .line 988
    .line 989
    goto :goto_e

    .line 990
    :cond_12
    sget-object v0, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ClientCertificateError$ClientCertificateRetrievalFailure;->INSTANCE:Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ClientCertificateError$ClientCertificateRetrievalFailure;

    .line 991
    .line 992
    goto/16 :goto_8

    .line 993
    .line 994
    :catch_14
    move-exception v0

    .line 995
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$MissingServerCapabilityError;

    .line 996
    .line 997
    iget-object v0, v0, Lcom/fsck/k9/mail/MissingCapabilityException;->capabilityName:Ljava/lang/String;

    .line 998
    .line 999
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$MissingServerCapabilityError;-><init>(Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    goto/16 :goto_6

    .line 1003
    .line 1004
    :catch_15
    move-exception v0

    .line 1005
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ServerError;

    .line 1006
    .line 1007
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;->responseText$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 1008
    .line 1009
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    check-cast v0, Ljava/lang/String;

    .line 1014
    .line 1015
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$ServerError;-><init>(Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    goto/16 :goto_6

    .line 1019
    .line 1020
    :catch_16
    move-exception v0

    .line 1021
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$CertificateError;

    .line 1022
    .line 1023
    iget-object v0, v0, Lcom/fsck/k9/mail/CertificateValidationException;->certificateChain:Ljava/util/List;

    .line 1024
    .line 1025
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$CertificateError;-><init>(Ljava/util/List;)V

    .line 1026
    .line 1027
    .line 1028
    goto/16 :goto_6

    .line 1029
    .line 1030
    :catch_17
    move-exception v0

    .line 1031
    new-instance v1, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$AuthenticationError;

    .line 1032
    .line 1033
    iget-object v0, v0, Lcom/fsck/k9/mail/AuthenticationFailedException;->messageFromServer:Ljava/lang/String;

    .line 1034
    .line 1035
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$AuthenticationError;-><init>(Ljava/lang/String;)V

    .line 1036
    .line 1037
    .line 1038
    goto/16 :goto_6

    .line 1039
    .line 1040
    :sswitch_3
    const-string v1, "demo"

    .line 1041
    .line 1042
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1043
    .line 1044
    .line 1045
    move-result v1

    .line 1046
    if-eqz v1, :cond_13

    .line 1047
    .line 1048
    sget-object v7, Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$Success;->INSTANCE:Lcom/fsck/k9/mail/server/ServerSettingsValidationResult$Success;

    .line 1049
    .line 1050
    goto :goto_e

    .line 1051
    :cond_13
    :goto_d
    iget-object v0, v0, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 1052
    .line 1053
    const-string v1, "Unsupported server type: "

    .line 1054
    .line 1055
    invoke-static {v1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1060
    .line 1061
    .line 1062
    :goto_e
    return-object v7

    .line 1063
    :pswitch_b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1064
    .line 1065
    .line 1066
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 1067
    .line 1068
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 1069
    .line 1070
    invoke-interface {v1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v1

    .line 1074
    sget-object v2, Lkotlin/coroutines/ContinuationInterceptor$Key;->$$INSTANCE:Lkotlin/coroutines/ContinuationInterceptor$Key;

    .line 1075
    .line 1076
    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v1

    .line 1080
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1081
    .line 1082
    .line 1083
    check-cast v1, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 1084
    .line 1085
    new-instance v2, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1086
    .line 1087
    invoke-direct {v2}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 1088
    .line 1089
    .line 1090
    sget-object v3, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    .line 1091
    .line 1092
    sget-object v4, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 1093
    .line 1094
    new-instance v6, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 1095
    .line 1096
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 1097
    .line 1098
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 1099
    .line 1100
    const/16 v8, 0x8

    .line 1101
    .line 1102
    invoke-direct {v6, v2, v0, v7, v8}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1103
    .line 1104
    .line 1105
    invoke-static {v3, v1, v4, v6}, Lkotlinx/coroutines/JobKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1106
    .line 1107
    .line 1108
    :catch_18
    invoke-virtual {v2}, Lkotlinx/coroutines/JobSupport;->isCompleted()Z

    .line 1109
    .line 1110
    .line 1111
    move-result v0

    .line 1112
    if-nez v0, :cond_14

    .line 1113
    .line 1114
    :try_start_7
    new-instance v0, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2;

    .line 1115
    .line 1116
    invoke-direct {v0, v2, v7, v5}, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2;-><init>(Lkotlinx/coroutines/CompletableDeferredImpl;Lkotlin/coroutines/Continuation;I)V

    .line 1117
    .line 1118
    .line 1119
    invoke-static {v1, v0}, Lkotlinx/coroutines/JobKt;->runBlockingK(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_18

    .line 1123
    goto :goto_f

    .line 1124
    :cond_14
    invoke-virtual {v2}, Lkotlinx/coroutines/JobSupport;->getCompletedInternal$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v0

    .line 1128
    :goto_f
    return-object v0

    .line 1129
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1130
    .line 1131
    .line 1132
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 1133
    .line 1134
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 1135
    .line 1136
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 1137
    .line 1138
    check-cast v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 1139
    .line 1140
    iget-object v2, v0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 1141
    .line 1142
    move-object v3, v2

    .line 1143
    check-cast v3, Landroidx/lifecycle/LifecycleRegistry;

    .line 1144
    .line 1145
    iget-object v3, v3, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 1146
    .line 1147
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 1148
    .line 1149
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 1150
    .line 1151
    .line 1152
    move-result v3

    .line 1153
    if-ltz v3, :cond_15

    .line 1154
    .line 1155
    invoke-virtual {v2, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1156
    .line 1157
    .line 1158
    goto :goto_10

    .line 1159
    :cond_15
    invoke-interface {v1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v0

    .line 1163
    invoke-static {v0, v7}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V

    .line 1164
    .line 1165
    .line 1166
    :goto_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1167
    .line 1168
    return-object v0

    .line 1169
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1170
    .line 1171
    .line 1172
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 1173
    .line 1174
    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 1175
    .line 1176
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 1177
    .line 1178
    check-cast v0, Landroidx/lifecycle/Observer;

    .line 1179
    .line 1180
    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 1181
    .line 1182
    .line 1183
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1184
    .line 1185
    return-object v0

    .line 1186
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1187
    .line 1188
    .line 1189
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 1190
    .line 1191
    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 1192
    .line 1193
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 1194
    .line 1195
    check-cast v0, Landroidx/camera/core/impl/LiveDataObservable$$ExternalSyntheticLambda3;

    .line 1196
    .line 1197
    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 1198
    .line 1199
    .line 1200
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1201
    .line 1202
    return-object v0

    .line 1203
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1204
    .line 1205
    .line 1206
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 1207
    .line 1208
    check-cast v1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 1209
    .line 1210
    sget-object v2, Landroidx/glance/appwidget/GlanceAppWidgetManager;->providersKey:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 1211
    .line 1212
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1216
    .line 1217
    .line 1218
    iget-object v3, v1, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/LinkedHashMap;

    .line 1219
    .line 1220
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v2

    .line 1224
    instance-of v3, v2, [B

    .line 1225
    .line 1226
    if-eqz v3, :cond_16

    .line 1227
    .line 1228
    check-cast v2, [B

    .line 1229
    .line 1230
    array-length v3, v2

    .line 1231
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 1232
    .line 1233
    .line 1234
    move-result-object v2

    .line 1235
    :cond_16
    check-cast v2, Ljava/util/Set;

    .line 1236
    .line 1237
    if-nez v2, :cond_17

    .line 1238
    .line 1239
    goto/16 :goto_13

    .line 1240
    .line 1241
    :cond_17
    move-object v3, v2

    .line 1242
    check-cast v3, Ljava/lang/Iterable;

    .line 1243
    .line 1244
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 1245
    .line 1246
    check-cast v0, Ljava/util/Set;

    .line 1247
    .line 1248
    new-instance v4, Ljava/util/ArrayList;

    .line 1249
    .line 1250
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .line 1252
    .line 1253
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v3

    .line 1257
    :cond_18
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1258
    .line 1259
    .line 1260
    move-result v7

    .line 1261
    if-eqz v7, :cond_19

    .line 1262
    .line 1263
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v7

    .line 1267
    move-object v8, v7

    .line 1268
    check-cast v8, Ljava/lang/String;

    .line 1269
    .line 1270
    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1271
    .line 1272
    .line 1273
    move-result v8

    .line 1274
    if-nez v8, :cond_18

    .line 1275
    .line 1276
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    .line 1278
    .line 1279
    goto :goto_11

    .line 1280
    :cond_19
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1281
    .line 1282
    .line 1283
    move-result v0

    .line 1284
    if-eqz v0, :cond_1a

    .line 1285
    .line 1286
    goto :goto_13

    .line 1287
    :cond_1a
    new-instance v0, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 1288
    .line 1289
    invoke-virtual {v1}, Landroidx/datastore/preferences/core/MutablePreferences;->asMap()Ljava/util/Map;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v1

    .line 1293
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 1294
    .line 1295
    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1296
    .line 1297
    .line 1298
    invoke-direct {v0, v3, v5}, Landroidx/datastore/preferences/core/MutablePreferences;-><init>(Ljava/util/LinkedHashMap;Z)V

    .line 1299
    .line 1300
    .line 1301
    sget-object v1, Landroidx/glance/appwidget/GlanceAppWidgetManager;->providersKey:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 1302
    .line 1303
    invoke-static {v2, v4}, Lorg/jsoup/helper/Validate;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v2

    .line 1307
    check-cast v2, Ljava/util/Set;

    .line 1308
    .line 1309
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 1313
    .line 1314
    .line 1315
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v1

    .line 1319
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1320
    .line 1321
    .line 1322
    move-result v2

    .line 1323
    if-eqz v2, :cond_1b

    .line 1324
    .line 1325
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v2

    .line 1329
    check-cast v2, Ljava/lang/String;

    .line 1330
    .line 1331
    sget-object v3, Landroidx/glance/appwidget/GlanceAppWidgetManager;->Companion:Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;

    .line 1332
    .line 1333
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1334
    .line 1335
    .line 1336
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1337
    .line 1338
    const-string v4, "provider:"

    .line 1339
    .line 1340
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v2

    .line 1350
    new-instance v3, Landroidx/datastore/preferences/core/Preferences$Key;

    .line 1351
    .line 1352
    invoke-direct {v3, v2}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {v0}, Landroidx/datastore/preferences/core/MutablePreferences;->checkNotFrozen$datastore_preferences_core()V

    .line 1356
    .line 1357
    .line 1358
    iget-object v2, v0, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/LinkedHashMap;

    .line 1359
    .line 1360
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    .line 1362
    .line 1363
    goto :goto_12

    .line 1364
    :cond_1b
    new-instance v1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 1365
    .line 1366
    invoke-virtual {v0}, Landroidx/datastore/preferences/core/MutablePreferences;->asMap()Ljava/util/Map;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v0

    .line 1370
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 1371
    .line 1372
    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1373
    .line 1374
    .line 1375
    invoke-direct {v1, v2, v6}, Landroidx/datastore/preferences/core/MutablePreferences;-><init>(Ljava/util/LinkedHashMap;Z)V

    .line 1376
    .line 1377
    .line 1378
    :goto_13
    return-object v1

    .line 1379
    :pswitch_10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1380
    .line 1381
    .line 1382
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 1383
    .line 1384
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 1385
    .line 1386
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 1387
    .line 1388
    check-cast v0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 1389
    .line 1390
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->animationJob:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1391
    .line 1392
    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v2

    .line 1396
    check-cast v2, Lkotlinx/coroutines/Job;

    .line 1397
    .line 1398
    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->animationJob:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1399
    .line 1400
    new-instance v8, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 1401
    .line 1402
    const/16 v9, 0x17

    .line 1403
    .line 1404
    invoke-direct {v8, v2, v0, v7, v9}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1405
    .line 1406
    .line 1407
    invoke-static {v1, v7, v7, v8, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v1

    .line 1411
    :cond_1c
    invoke-virtual {v3, v7, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1412
    .line 1413
    .line 1414
    move-result v0

    .line 1415
    if-eqz v0, :cond_1d

    .line 1416
    .line 1417
    move v5, v6

    .line 1418
    goto :goto_14

    .line 1419
    :cond_1d
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v0

    .line 1423
    if-eqz v0, :cond_1c

    .line 1424
    .line 1425
    :goto_14
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v0

    .line 1429
    return-object v0

    .line 1430
    :pswitch_11
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1431
    .line 1432
    .line 1433
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 1434
    .line 1435
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 1436
    .line 1437
    check-cast v0, Lcom/eygraber/uri/Uri$Builder;

    .line 1438
    .line 1439
    iget-object v2, v0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 1440
    .line 1441
    check-cast v2, Lkotlin/collections/ArrayDeque;

    .line 1442
    .line 1443
    invoke-virtual {v2, v1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1444
    .line 1445
    .line 1446
    iget-object v1, v0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 1447
    .line 1448
    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1449
    .line 1450
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v3

    .line 1454
    :goto_15
    instance-of v4, v3, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 1455
    .line 1456
    if-nez v4, :cond_1e

    .line 1457
    .line 1458
    invoke-static {v3}, Lkotlinx/coroutines/channels/ChannelResult;->getOrThrow-impl(Ljava/lang/Object;)V

    .line 1459
    .line 1460
    .line 1461
    invoke-virtual {v2, v3}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1462
    .line 1463
    .line 1464
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v3

    .line 1468
    goto :goto_15

    .line 1469
    :cond_1e
    const-string v1, "CXCP"

    .line 1470
    .line 1471
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1472
    .line 1473
    const-string v4, "PruningProcessingQueue: Pruning "

    .line 1474
    .line 1475
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1479
    .line 1480
    .line 1481
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v3

    .line 1485
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    .line 1487
    .line 1488
    iget-object v0, v0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 1489
    .line 1490
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 1491
    .line 1492
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    .line 1494
    .line 1495
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1496
    .line 1497
    return-object v0

    .line 1498
    :pswitch_12
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1499
    .line 1500
    .line 1501
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 1502
    .line 1503
    check-cast v1, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    .line 1504
    .line 1505
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 1506
    .line 1507
    check-cast v0, Ljava/lang/String;

    .line 1508
    .line 1509
    invoke-virtual {v1, v0}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v0

    .line 1513
    return-object v0

    .line 1514
    :pswitch_13
    const/16 v16, 0x2

    .line 1515
    .line 1516
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1517
    .line 1518
    .line 1519
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 1520
    .line 1521
    check-cast v1, Ljava/lang/String;

    .line 1522
    .line 1523
    const-string v2, "CXCP"

    .line 1524
    .line 1525
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1526
    .line 1527
    const-string v9, "Initializing CameraDeviceSetupCompat for "

    .line 1528
    .line 1529
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1530
    .line 1531
    .line 1532
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v9

    .line 1536
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1537
    .line 1538
    .line 1539
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v8

    .line 1543
    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    .line 1545
    .line 1546
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 1547
    .line 1548
    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 1549
    .line 1550
    iget-object v8, v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 1551
    .line 1552
    :try_start_8
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->cameraDeviceSetupCompatFactory$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 1553
    .line 1554
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v0

    .line 1558
    check-cast v0, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;

    .line 1559
    .line 1560
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1561
    .line 1562
    .line 1563
    new-instance v9, Ljava/util/ArrayList;

    .line 1564
    .line 1565
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1566
    .line 1567
    .line 1568
    iget-object v10, v0, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;->mPlayServicesProvider:Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompatProvider;

    .line 1569
    .line 1570
    if-eqz v10, :cond_1f

    .line 1571
    .line 1572
    new-instance v11, Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompat;

    .line 1573
    .line 1574
    iget-object v10, v10, Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompatProvider;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 1575
    .line 1576
    invoke-direct {v11, v10, v1}, Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompat;-><init>(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    .line 1581
    .line 1582
    goto :goto_16

    .line 1583
    :catch_19
    move-exception v0

    .line 1584
    goto :goto_17

    .line 1585
    :cond_1f
    :goto_16
    iget-object v0, v0, Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompatFactory;->mCamera2Provider:Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompatProvider;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_19

    .line 1586
    .line 1587
    if-eqz v0, :cond_20

    .line 1588
    .line 1589
    :try_start_9
    new-instance v10, Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompat;

    .line 1590
    .line 1591
    iget-object v0, v0, Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompatProvider;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 1592
    .line 1593
    invoke-direct {v10, v0, v1}, Landroidx/camera/featurecombinationquery/Camera2CameraDeviceSetupCompat;-><init>(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V

    .line 1594
    .line 1595
    .line 1596
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_19

    .line 1597
    .line 1598
    .line 1599
    :catch_1a
    :cond_20
    :try_start_a
    new-instance v0, Landroidx/camera/featurecombinationquery/AggregatedCameraDeviceSetupCompat;

    .line 1600
    .line 1601
    invoke-direct {v0, v9}, Landroidx/camera/featurecombinationquery/AggregatedCameraDeviceSetupCompat;-><init>(Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_19

    .line 1602
    .line 1603
    .line 1604
    move-object v7, v0

    .line 1605
    goto/16 :goto_1a

    .line 1606
    .line 1607
    :goto_17
    instance-of v9, v0, Landroid/hardware/camera2/CameraAccessException;

    .line 1608
    .line 1609
    if-eqz v9, :cond_26

    .line 1610
    .line 1611
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1612
    .line 1613
    const-string v10, "Failed to execute call: Camera encountered an error: "

    .line 1614
    .line 1615
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1616
    .line 1617
    .line 1618
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v10

    .line 1622
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    .line 1624
    .line 1625
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v9

    .line 1629
    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    .line 1631
    .line 1632
    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    .line 1633
    .line 1634
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    .line 1635
    .line 1636
    .line 1637
    move-result v9

    .line 1638
    if-eq v9, v6, :cond_25

    .line 1639
    .line 1640
    move/from16 v10, v16

    .line 1641
    .line 1642
    if-eq v9, v10, :cond_24

    .line 1643
    .line 1644
    if-eq v9, v4, :cond_23

    .line 1645
    .line 1646
    if-eq v9, v3, :cond_22

    .line 1647
    .line 1648
    const/4 v3, 0x5

    .line 1649
    if-eq v9, v3, :cond_21

    .line 1650
    .line 1651
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1652
    .line 1653
    const-string v4, "Unexpected CameraAccessException: "

    .line 1654
    .line 1655
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1656
    .line 1657
    .line 1658
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1659
    .line 1660
    .line 1661
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v0

    .line 1665
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    .line 1667
    .line 1668
    const/16 v2, 0xb

    .line 1669
    .line 1670
    goto :goto_18

    .line 1671
    :cond_21
    move v2, v10

    .line 1672
    goto :goto_18

    .line 1673
    :cond_22
    move v2, v6

    .line 1674
    goto :goto_18

    .line 1675
    :cond_23
    move v2, v5

    .line 1676
    goto :goto_18

    .line 1677
    :cond_24
    const/4 v2, 0x6

    .line 1678
    goto :goto_18

    .line 1679
    :cond_25
    move v2, v4

    .line 1680
    :goto_18
    invoke-virtual {v8, v2, v1, v6}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 1681
    .line 1682
    .line 1683
    goto :goto_1a

    .line 1684
    :cond_26
    instance-of v3, v0, Ljava/lang/IllegalArgumentException;

    .line 1685
    .line 1686
    if-nez v3, :cond_29

    .line 1687
    .line 1688
    instance-of v3, v0, Ljava/lang/SecurityException;

    .line 1689
    .line 1690
    if-nez v3, :cond_29

    .line 1691
    .line 1692
    instance-of v3, v0, Ljava/lang/UnsupportedOperationException;

    .line 1693
    .line 1694
    if-nez v3, :cond_29

    .line 1695
    .line 1696
    instance-of v3, v0, Ljava/lang/NullPointerException;

    .line 1697
    .line 1698
    if-eqz v3, :cond_27

    .line 1699
    .line 1700
    goto :goto_19

    .line 1701
    :cond_27
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    .line 1702
    .line 1703
    if-eqz v1, :cond_28

    .line 1704
    .line 1705
    const-string v0, "Failed to execute call: Camera may be closed"

    .line 1706
    .line 1707
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    .line 1709
    .line 1710
    goto :goto_1a

    .line 1711
    :cond_28
    throw v0

    .line 1712
    :cond_29
    :goto_19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1713
    .line 1714
    const-string v4, "Failed to execute call: Unexpected exception: "

    .line 1715
    .line 1716
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1717
    .line 1718
    .line 1719
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v0

    .line 1723
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    .line 1725
    .line 1726
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v0

    .line 1730
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    .line 1732
    .line 1733
    const/16 v0, 0x9

    .line 1734
    .line 1735
    invoke-virtual {v8, v0, v1, v5}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 1736
    .line 1737
    .line 1738
    :goto_1a
    return-object v7

    .line 1739
    :pswitch_14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1740
    .line 1741
    .line 1742
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 1743
    .line 1744
    check-cast v1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 1745
    .line 1746
    if-eqz v1, :cond_2a

    .line 1747
    .line 1748
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->shutdown()V

    .line 1749
    .line 1750
    .line 1751
    :cond_2a
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 1752
    .line 1753
    check-cast v0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 1754
    .line 1755
    if-eqz v0, :cond_2b

    .line 1756
    .line 1757
    invoke-virtual {v0, v7}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->disconnect-TPqeGZw(Landroidx/camera/camera2/pipe/CameraError;)V

    .line 1758
    .line 1759
    .line 1760
    :cond_2b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1761
    .line 1762
    return-object v0

    .line 1763
    :pswitch_15
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1764
    .line 1765
    .line 1766
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 1767
    .line 1768
    check-cast v1, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 1769
    .line 1770
    iget-object v1, v1, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->activeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1771
    .line 1772
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v1

    .line 1776
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1777
    .line 1778
    .line 1779
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1780
    .line 1781
    .line 1782
    move-result v2

    .line 1783
    if-eqz v2, :cond_2c

    .line 1784
    .line 1785
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1786
    .line 1787
    .line 1788
    move-result-object v2

    .line 1789
    check-cast v2, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 1790
    .line 1791
    iget-object v3, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 1792
    .line 1793
    check-cast v3, Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    .line 1794
    .line 1795
    iget v3, v3, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->value:I

    .line 1796
    .line 1797
    invoke-interface {v2, v3}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->onCameraAudioRestrictionUpdated-LwUUkyU(I)V

    .line 1798
    .line 1799
    .line 1800
    goto :goto_1b

    .line 1801
    :cond_2c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1802
    .line 1803
    return-object v0

    .line 1804
    :pswitch_16
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1805
    .line 1806
    .line 1807
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 1808
    .line 1809
    check-cast v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 1810
    .line 1811
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 1812
    .line 1813
    check-cast v0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;

    .line 1814
    .line 1815
    iget v0, v0, Landroidx/camera/camera2/pipe/AudioRestrictionMode;->value:I

    .line 1816
    .line 1817
    invoke-virtual {v1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->onCameraAudioRestrictionUpdated-LwUUkyU(I)V

    .line 1818
    .line 1819
    .line 1820
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1821
    .line 1822
    return-object v0

    .line 1823
    :pswitch_17
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1824
    .line 1825
    .line 1826
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 1827
    .line 1828
    check-cast v1, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    .line 1829
    .line 1830
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 1831
    .line 1832
    check-cast v0, Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;

    .line 1833
    .line 1834
    iget-object v0, v0, Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 1835
    .line 1836
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1837
    .line 1838
    .line 1839
    invoke-virtual {v1, v0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->reportSurfaceInvalid(Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 1840
    .line 1841
    .line 1842
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1843
    .line 1844
    return-object v0

    .line 1845
    :pswitch_18
    invoke-direct/range {p0 .. p1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;->invokeSuspend$androidx$camera$camera2$impl$State3AControl$update$$inlined$confineLaunch$1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    .line 1847
    .line 1848
    move-result-object v0

    .line 1849
    return-object v0

    .line 1850
    :pswitch_19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1851
    .line 1852
    .line 1853
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 1854
    .line 1855
    check-cast v1, Ljava/util/Set;

    .line 1856
    .line 1857
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 1858
    .line 1859
    .line 1860
    move-result v1

    .line 1861
    if-nez v1, :cond_31

    .line 1862
    .line 1863
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 1864
    .line 1865
    check-cast v1, Ljava/util/Set;

    .line 1866
    .line 1867
    new-instance v2, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    .line 1868
    .line 1869
    check-cast v1, Ljava/util/Collection;

    .line 1870
    .line 1871
    invoke-direct {v2, v1, v6}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;-><init>(Ljava/util/Collection;Z)V

    .line 1872
    .line 1873
    .line 1874
    iget-object v1, v2, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->validatingBuilder$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 1875
    .line 1876
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v1

    .line 1880
    check-cast v1, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    .line 1881
    .line 1882
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->isValid()Z

    .line 1883
    .line 1884
    .line 1885
    move-result v1

    .line 1886
    if-eqz v1, :cond_2d

    .line 1887
    .line 1888
    iget-object v1, v2, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->sessionConfig$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 1889
    .line 1890
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 1891
    .line 1892
    .line 1893
    move-result-object v1

    .line 1894
    check-cast v1, Landroidx/camera/core/impl/SessionConfig;

    .line 1895
    .line 1896
    goto :goto_1c

    .line 1897
    :cond_2d
    move-object v1, v7

    .line 1898
    :goto_1c
    if-eqz v1, :cond_2f

    .line 1899
    .line 1900
    iget-object v1, v1, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    .line 1901
    .line 1902
    if-eqz v1, :cond_2f

    .line 1903
    .line 1904
    iget v1, v1, Landroidx/camera/core/impl/CaptureConfig;->mTemplateType:I

    .line 1905
    .line 1906
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1907
    .line 1908
    .line 1909
    move-result-object v2

    .line 1910
    const/4 v3, -0x1

    .line 1911
    if-eq v1, v3, :cond_2e

    .line 1912
    .line 1913
    move-object v7, v2

    .line 1914
    :cond_2e
    if-eqz v7, :cond_2f

    .line 1915
    .line 1916
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 1917
    .line 1918
    .line 1919
    move-result v1

    .line 1920
    goto :goto_1d

    .line 1921
    :cond_2f
    move v1, v6

    .line 1922
    :goto_1d
    iget-object v2, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 1923
    .line 1924
    check-cast v2, Landroidx/camera/camera2/impl/State3AControl;

    .line 1925
    .line 1926
    iget-object v2, v2, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    .line 1927
    .line 1928
    monitor-enter v2

    .line 1929
    :try_start_b
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 1930
    .line 1931
    check-cast v0, Landroidx/camera/camera2/impl/State3AControl;

    .line 1932
    .line 1933
    iget v3, v0, Landroidx/camera/camera2/impl/State3AControl;->_template:I

    .line 1934
    .line 1935
    if-eq v3, v1, :cond_30

    .line 1936
    .line 1937
    iput v1, v0, Landroidx/camera/camera2/impl/State3AControl;->_template:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1938
    .line 1939
    move v5, v6

    .line 1940
    goto :goto_1e

    .line 1941
    :catchall_4
    move-exception v0

    .line 1942
    goto :goto_1f

    .line 1943
    :cond_30
    :goto_1e
    monitor-exit v2

    .line 1944
    if-eqz v5, :cond_31

    .line 1945
    .line 1946
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/State3AControl;->update()Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1947
    .line 1948
    .line 1949
    goto :goto_20

    .line 1950
    :goto_1f
    monitor-exit v2

    .line 1951
    throw v0

    .line 1952
    :cond_31
    :goto_20
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1953
    .line 1954
    return-object v0

    .line 1955
    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1956
    .line 1957
    .line 1958
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 1959
    .line 1960
    check-cast v0, Ljava/util/List;

    .line 1961
    .line 1962
    new-instance v1, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    .line 1963
    .line 1964
    invoke-direct {v1}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;-><init>()V

    .line 1965
    .line 1966
    .line 1967
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1968
    .line 1969
    .line 1970
    move-result-object v0

    .line 1971
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1972
    .line 1973
    .line 1974
    move-result v2

    .line 1975
    if-eqz v2, :cond_32

    .line 1976
    .line 1977
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1978
    .line 1979
    .line 1980
    move-result-object v2

    .line 1981
    check-cast v2, Landroidx/camera/core/UseCase;

    .line 1982
    .line 1983
    iget-object v2, v2, Landroidx/camera/core/UseCase;->mAttachedSessionConfig:Landroidx/camera/core/impl/SessionConfig;

    .line 1984
    .line 1985
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->add(Landroidx/camera/core/impl/SessionConfig;)V

    .line 1986
    .line 1987
    .line 1988
    goto :goto_21

    .line 1989
    :cond_32
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 1990
    .line 1991
    .line 1992
    move-result-object v0

    .line 1993
    iget-object v0, v0, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    .line 1994
    .line 1995
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getExpectedFrameRateRange()Landroid/util/Range;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v0

    .line 1999
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v0

    .line 2003
    check-cast v0, Ljava/lang/Number;

    .line 2004
    .line 2005
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 2006
    .line 2007
    .line 2008
    move-result v0

    .line 2009
    const/16 v1, 0x1e

    .line 2010
    .line 2011
    if-le v0, v1, :cond_33

    .line 2012
    .line 2013
    move v5, v6

    .line 2014
    :cond_33
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2015
    .line 2016
    .line 2017
    move-result-object v0

    .line 2018
    return-object v0

    .line 2019
    :pswitch_1b
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 2020
    .line 2021
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 2022
    .line 2023
    const-string v2, "PipePresenceSrc"

    .line 2024
    .line 2025
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 2026
    .line 2027
    move-object v3, v0

    .line 2028
    check-cast v3, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 2029
    .line 2030
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2031
    .line 2032
    .line 2033
    :try_start_c
    iget-object v0, v3, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->account:Ljava/lang/Object;

    .line 2034
    .line 2035
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 2036
    .line 2037
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v4

    .line 2041
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2042
    .line 2043
    .line 2044
    new-instance v6, Ljava/util/ArrayList;

    .line 2045
    .line 2046
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2047
    .line 2048
    .line 2049
    array-length v8, v4

    .line 2050
    :goto_22
    if-ge v5, v8, :cond_35

    .line 2051
    .line 2052
    aget-object v9, v4, v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1b

    .line 2053
    .line 2054
    :try_start_d
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2055
    .line 2056
    .line 2057
    invoke-static {v9, v7, v7}, Landroidx/appcompat/app/ActionBar;->create(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/AutoValue_Identifier;)Landroidx/camera/core/CameraIdentifier;

    .line 2058
    .line 2059
    .line 2060
    move-result-object v0
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1b

    .line 2061
    goto :goto_23

    .line 2062
    :catch_1b
    move-exception v0

    .line 2063
    goto :goto_24

    .line 2064
    :catch_1c
    move-exception v0

    .line 2065
    :try_start_e
    new-instance v10, Ljava/lang/StringBuilder;

    .line 2066
    .line 2067
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2068
    .line 2069
    .line 2070
    const-string v11, "Could not create CameraIdentifier for system ID: "

    .line 2071
    .line 2072
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    .line 2074
    .line 2075
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2076
    .line 2077
    .line 2078
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2079
    .line 2080
    .line 2081
    move-result-object v9

    .line 2082
    invoke-static {v2, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2083
    .line 2084
    .line 2085
    move-object v0, v7

    .line 2086
    :goto_23
    if-eqz v0, :cond_34

    .line 2087
    .line 2088
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2089
    .line 2090
    .line 2091
    :cond_34
    add-int/lit8 v5, v5, 0x1

    .line 2092
    .line 2093
    goto :goto_22

    .line 2094
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2095
    .line 2096
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2097
    .line 2098
    .line 2099
    const-string v4, "[FetchData] Refreshed camera list from hardware: "

    .line 2100
    .line 2101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2102
    .line 2103
    .line 2104
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2105
    .line 2106
    .line 2107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v0

    .line 2111
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    .line 2113
    .line 2114
    invoke-virtual {v3, v6, v7}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->updateState(Ljava/util/List;Ljava/lang/Throwable;)V

    .line 2115
    .line 2116
    .line 2117
    invoke-virtual {v1, v6}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1b

    .line 2118
    .line 2119
    .line 2120
    goto :goto_25

    .line 2121
    :goto_24
    const-string v4, "[FetchData] Failed to refresh camera list from hardware."

    .line 2122
    .line 2123
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2124
    .line 2125
    .line 2126
    invoke-virtual {v3, v7, v0}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->updateState(Ljava/util/List;Ljava/lang/Throwable;)V

    .line 2127
    .line 2128
    .line 2129
    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 2130
    .line 2131
    .line 2132
    :goto_25
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2133
    .line 2134
    return-object v0

    .line 2135
    :pswitch_1c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2136
    .line 2137
    .line 2138
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->L$0:Ljava/lang/Object;

    .line 2139
    .line 2140
    check-cast v1, Landroidx/datastore/core/State;

    .line 2141
    .line 2142
    instance-of v2, v1, Landroidx/datastore/core/Data;

    .line 2143
    .line 2144
    if-eqz v2, :cond_36

    .line 2145
    .line 2146
    check-cast v1, Landroidx/datastore/core/Data;

    .line 2147
    .line 2148
    iget v1, v1, Landroidx/datastore/core/State;->version:I

    .line 2149
    .line 2150
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;->$startState:Ljava/lang/Object;

    .line 2151
    .line 2152
    check-cast v0, Landroidx/datastore/core/State;

    .line 2153
    .line 2154
    check-cast v0, Landroidx/datastore/core/Data;

    .line 2155
    .line 2156
    iget v0, v0, Landroidx/datastore/core/State;->version:I

    .line 2157
    .line 2158
    if-gt v1, v0, :cond_36

    .line 2159
    .line 2160
    move v5, v6

    .line 2161
    :cond_36
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2162
    .line 2163
    .line 2164
    move-result-object v0

    .line 2165
    return-object v0

    .line 2166
    nop

    .line 2167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2168
    .line 2169
    .line 2170
    .line 2171
    .line 2172
    .line 2173
    .line 2174
    .line 2175
    .line 2176
    .line 2177
    .line 2178
    .line 2179
    .line 2180
    .line 2181
    .line 2182
    .line 2183
    .line 2184
    .line 2185
    .line 2186
    .line 2187
    .line 2188
    .line 2189
    .line 2190
    .line 2191
    .line 2192
    .line 2193
    .line 2194
    .line 2195
    .line 2196
    .line 2197
    .line 2198
    .line 2199
    .line 2200
    .line 2201
    .line 2202
    .line 2203
    .line 2204
    .line 2205
    .line 2206
    .line 2207
    .line 2208
    .line 2209
    .line 2210
    .line 2211
    .line 2212
    .line 2213
    .line 2214
    .line 2215
    .line 2216
    .line 2217
    .line 2218
    .line 2219
    .line 2220
    .line 2221
    .line 2222
    .line 2223
    .line 2224
    .line 2225
    .line 2226
    .line 2227
    .line 2228
    .line 2229
    :sswitch_data_0
    .sparse-switch
        0x2efde3 -> :sswitch_3
        0x316053 -> :sswitch_2
        0x349802 -> :sswitch_1
        0x35ee56 -> :sswitch_0
    .end sparse-switch
.end method

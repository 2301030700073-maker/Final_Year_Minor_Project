.class public final Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;


# instance fields
.field public final audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

.field public final cameraAvailabilityMonitor:Lokhttp3/Dispatcher;

.field public final cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

.field public final cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

.field public final cameraStateOpener:Lcom/fsck/k9/mailstore/LockableDatabase;

.field public final devicePolicyManager:Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;

.field public final threads:Landroidx/camera/camera2/pipe/core/Threads;

.field public final timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->Companion:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/LockableDatabase;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Lokhttp3/Dispatcher;Landroidx/camera/camera2/pipe/core/SystemTimeSource;Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;Landroidx/camera/camera2/pipe/core/Threads;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraStateOpener:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 22
    .line 23
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraAvailabilityMonitor:Lokhttp3/Dispatcher;

    .line 24
    .line 25
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 26
    .line 27
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->devicePolicyManager:Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;

    .line 28
    .line 29
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 30
    .line 31
    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    .line 32
    .line 33
    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final openAndAwaitCameraWithRetry-0r8Bogc(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;)Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "#openAndAwaitCameraWithRetry("

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x29

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "CXCP"

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 42
    .line 43
    iget-object v0, v0, Landroidx/camera/camera2/pipe/core/Threads;->blockingDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 44
    .line 45
    new-instance v1, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x3

    .line 49
    move-object v2, p0

    .line 50
    move-object v3, p1

    .line 51
    move-object v4, p2

    .line 52
    invoke-direct/range {v1 .. v6}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlinx/coroutines/JobKt;->runBlockingK(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;

    .line 60
    .line 61
    return-object p0
.end method

.method public final openCameraWithRetry-aeCOTgg(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    instance-of v3, v2, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;

    .line 13
    .line 14
    iget v4, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

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
    iput v4, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;-><init>(Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    const-string v6, "CXCP"

    .line 37
    .line 38
    iget-object v7, v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 39
    .line 40
    const/4 v8, 0x3

    .line 41
    const/4 v9, 0x1

    .line 42
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 43
    .line 44
    if-eqz v4, :cond_4

    .line 45
    .line 46
    if-eq v4, v9, :cond_3

    .line 47
    .line 48
    if-eq v4, v5, :cond_2

    .line 49
    .line 50
    if-ne v4, v8, :cond_1

    .line 51
    .line 52
    iget-wide v12, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    .line 53
    .line 54
    iget-object v1, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$5:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;

    .line 55
    .line 56
    iget-object v4, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$4:Ljava/lang/AutoCloseable;

    .line 57
    .line 58
    iget-object v14, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Lkotlin/jvm/internal/Ref$IntRef;

    .line 59
    .line 60
    iget-object v15, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Lkotlin/jvm/functions/Function1;

    .line 61
    .line 62
    iget-object v8, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 63
    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    iget-object v10, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/String;

    .line 67
    .line 68
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    move-object/from16 v19, v7

    .line 72
    .line 73
    move/from16 v25, v9

    .line 74
    .line 75
    const/4 v7, 0x3

    .line 76
    move-object v9, v1

    .line 77
    move-object v1, v11

    .line 78
    :goto_1
    move-object v5, v4

    .line 79
    move-object v4, v8

    .line 80
    move-object v8, v15

    .line 81
    goto/16 :goto_b

    .line 82
    .line 83
    :catchall_0
    move-exception v0

    .line 84
    move-object v1, v0

    .line 85
    goto/16 :goto_d

    .line 86
    .line 87
    :cond_1
    const/16 v16, 0x0

    .line 88
    .line 89
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 90
    .line 91
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-object v16

    .line 95
    :cond_2
    const/16 v16, 0x0

    .line 96
    .line 97
    iget-wide v12, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    .line 98
    .line 99
    iget-object v1, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$5:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;

    .line 100
    .line 101
    iget-object v4, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$4:Ljava/lang/AutoCloseable;

    .line 102
    .line 103
    iget-object v8, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Lkotlin/jvm/internal/Ref$IntRef;

    .line 104
    .line 105
    iget-object v10, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Lkotlin/jvm/functions/Function1;

    .line 106
    .line 107
    iget-object v14, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 108
    .line 109
    iget-object v15, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/String;

    .line 110
    .line 111
    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    move-object/from16 v33, v14

    .line 115
    .line 116
    move-object v14, v1

    .line 117
    move v1, v5

    .line 118
    move-object v5, v8

    .line 119
    move-object/from16 v8, v33

    .line 120
    .line 121
    move-object/from16 v33, v15

    .line 122
    .line 123
    move-object v15, v10

    .line 124
    move-object/from16 v10, v33

    .line 125
    .line 126
    goto/16 :goto_5

    .line 127
    .line 128
    :cond_3
    const/16 v16, 0x0

    .line 129
    .line 130
    iget-wide v12, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    .line 131
    .line 132
    iget-object v1, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Lkotlin/jvm/internal/Ref$IntRef;

    .line 133
    .line 134
    iget-object v4, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Lkotlin/jvm/functions/Function1;

    .line 135
    .line 136
    iget-object v8, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 137
    .line 138
    iget-object v10, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    move-object/from16 v33, v2

    .line 144
    .line 145
    move-object v2, v1

    .line 146
    move-object v1, v10

    .line 147
    move-object/from16 v10, v33

    .line 148
    .line 149
    move-object/from16 v33, v8

    .line 150
    .line 151
    move-object v8, v4

    .line 152
    move-object/from16 v4, v33

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_4
    const/16 v16, 0x0

    .line 156
    .line 157
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 164
    .line 165
    .line 166
    move-result-wide v12

    .line 167
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 168
    .line 169
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 170
    .line 171
    .line 172
    iput-object v1, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/String;

    .line 173
    .line 174
    move-object/from16 v4, p2

    .line 175
    .line 176
    iput-object v4, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 177
    .line 178
    move-object/from16 v8, p3

    .line 179
    .line 180
    iput-object v8, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Lkotlin/jvm/functions/Function1;

    .line 181
    .line 182
    iput-object v2, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Lkotlin/jvm/internal/Ref$IntRef;

    .line 183
    .line 184
    iput-wide v12, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    .line 185
    .line 186
    iput v9, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    .line 187
    .line 188
    new-instance v10, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;

    .line 189
    .line 190
    iget-object v14, v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraAvailabilityMonitor:Lokhttp3/Dispatcher;

    .line 191
    .line 192
    invoke-direct {v10, v14, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;-><init>(Lokhttp3/Dispatcher;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    if-ne v10, v11, :cond_5

    .line 196
    .line 197
    :goto_2
    move-object v1, v11

    .line 198
    goto/16 :goto_a

    .line 199
    .line 200
    :cond_5
    :goto_3
    check-cast v10, Ljava/lang/AutoCloseable;

    .line 201
    .line 202
    :try_start_2
    move-object v14, v10

    .line 203
    check-cast v14, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;

    .line 204
    .line 205
    :goto_4
    iget v15, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 206
    .line 207
    add-int/2addr v15, v9

    .line 208
    iput v15, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 209
    .line 210
    iget-object v9, v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraStateOpener:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 211
    .line 212
    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 213
    .line 214
    iput-object v1, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/String;

    .line 215
    .line 216
    iput-object v4, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 217
    .line 218
    iput-object v8, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Lkotlin/jvm/functions/Function1;

    .line 219
    .line 220
    iput-object v2, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Lkotlin/jvm/internal/Ref$IntRef;

    .line 221
    .line 222
    iput-object v10, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$4:Ljava/lang/AutoCloseable;

    .line 223
    .line 224
    iput-object v14, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$5:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;

    .line 225
    .line 226
    iput-wide v12, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    .line 227
    .line 228
    move-object/from16 v18, v1

    .line 229
    .line 230
    const/4 v1, 0x2

    .line 231
    iput v1, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    .line 232
    .line 233
    move-object/from16 v24, v3

    .line 234
    .line 235
    move-object/from16 v22, v4

    .line 236
    .line 237
    move-object/from16 v23, v5

    .line 238
    .line 239
    move-object/from16 v17, v9

    .line 240
    .line 241
    move-wide/from16 v20, v12

    .line 242
    .line 243
    move/from16 v19, v15

    .line 244
    .line 245
    invoke-virtual/range {v17 .. v24}, Lcom/fsck/k9/mailstore/LockableDatabase;->tryOpenCamera-7pD7j80$camera_camera2_pipe(Ljava/lang/String;IJLandroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 249
    if-ne v3, v11, :cond_6

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_6
    move-object v5, v2

    .line 253
    move-object v2, v3

    .line 254
    move-object v15, v8

    .line 255
    move-object v4, v10

    .line 256
    move-object/from16 v10, v18

    .line 257
    .line 258
    move-wide/from16 v12, v20

    .line 259
    .line 260
    move-object/from16 v8, v22

    .line 261
    .line 262
    move-object/from16 v3, v24

    .line 263
    .line 264
    :goto_5
    :try_start_3
    check-cast v2, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    .line 265
    .line 266
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 270
    .line 271
    .line 272
    move-result-wide v17

    .line 273
    sub-long v28, v17, v12

    .line 274
    .line 275
    iget-object v9, v2, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    .line 277
    iget-object v1, v2, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 278
    .line 279
    if-eqz v9, :cond_7

    .line 280
    .line 281
    move-object/from16 v9, v16

    .line 282
    .line 283
    invoke-static {v4, v9}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 284
    .line 285
    .line 286
    return-object v2

    .line 287
    :cond_7
    move-object/from16 v9, v16

    .line 288
    .line 289
    if-nez v1, :cond_8

    .line 290
    .line 291
    :try_start_4
    const-string v0, "Camera open failed without an error. The CameraGraph may have been stopped or closed. Abandoning the camera open attempt."

    .line 292
    .line 293
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 294
    .line 295
    .line 296
    invoke-static {v4, v9}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 297
    .line 298
    .line 299
    return-object v2

    .line 300
    :cond_8
    :try_start_5
    iget v9, v1, Landroidx/camera/camera2/pipe/CameraError;->value:I

    .line 301
    .line 302
    move-object/from16 p1, v2

    .line 303
    .line 304
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 305
    .line 306
    invoke-interface {v15, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    check-cast v2, Ljava/lang/Boolean;

    .line 311
    .line 312
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 313
    .line 314
    .line 315
    move-result v31

    .line 316
    iget v1, v1, Landroidx/camera/camera2/pipe/CameraError;->value:I

    .line 317
    .line 318
    iget v2, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 319
    .line 320
    move/from16 v26, v1

    .line 321
    .line 322
    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->devicePolicyManager:Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;

    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    const-string v18, "DevicePolicyManager#getCameraDisabled"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 328
    .line 329
    :try_start_6
    invoke-static/range {v18 .. v18}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object v1, v1, Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 333
    .line 334
    move/from16 v27, v2

    .line 335
    .line 336
    const/4 v2, 0x0

    .line 337
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    .line 338
    .line 339
    .line 340
    move-result v30
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 341
    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 342
    .line 343
    .line 344
    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraInteropConfig:Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;

    .line 345
    .line 346
    iget-object v1, v1, Landroidx/camera/camera2/pipe/CameraPipe$CameraInteropConfig;->cameraOpenRetryMaxTimeoutNs:Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 347
    .line 348
    move-object/from16 v32, v1

    .line 349
    .line 350
    invoke-static/range {v26 .. v32}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->shouldRetry-rbpwgO0$camera_camera2_pipe(IIJZZLandroidx/camera/camera2/pipe/core/DurationNs;)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    move-object v2, v11

    .line 355
    move-wide/from16 p2, v12

    .line 356
    .line 357
    move-wide/from16 v11, v28

    .line 358
    .line 359
    move/from16 v13, v31

    .line 360
    .line 361
    if-eqz v1, :cond_9

    .line 362
    .line 363
    move-object/from16 v18, v2

    .line 364
    .line 365
    iget v2, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 366
    .line 367
    move-object/from16 v19, v7

    .line 368
    .line 369
    const/4 v7, 0x1

    .line 370
    if-le v2, v7, :cond_a

    .line 371
    .line 372
    goto :goto_6

    .line 373
    :cond_9
    move-object/from16 v18, v2

    .line 374
    .line 375
    move-object/from16 v19, v7

    .line 376
    .line 377
    :goto_6
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 378
    .line 379
    invoke-virtual {v2, v9, v10, v1}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 380
    .line 381
    .line 382
    :cond_a
    const/4 v2, 0x0

    .line 383
    if-nez v1, :cond_b

    .line 384
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .line 389
    .line 390
    const-string v1, "Failed to open camera "

    .line 391
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-static {v10}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v1, " after "

    .line 403
    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    iget v1, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 408
    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v1, " attempts and "

    .line 413
    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 418
    .line 419
    .line 420
    move-result-wide v7

    .line 421
    sub-long v7, v7, p2

    .line 422
    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .line 427
    .line 428
    const-string v3, "%."

    .line 429
    .line 430
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const/4 v3, 0x3

    .line 434
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const-string v3, "f ms"

    .line 438
    .line 439
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    long-to-double v7, v7

    .line 447
    const-wide v10, 0x412e848000000000L    # 1000000.0

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    div-double/2addr v7, v10

    .line 453
    new-instance v3, Ljava/lang/Double;

    .line 454
    .line 455
    invoke-direct {v3, v7, v8}, Ljava/lang/Double;-><init>(D)V

    .line 456
    .line 457
    .line 458
    const/4 v7, 0x1

    .line 459
    new-array v5, v7, [Ljava/lang/Object;

    .line 460
    .line 461
    aput-object v3, v5, v2

    .line 462
    .line 463
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    const/4 v3, 0x0

    .line 468
    invoke-static {v3, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    const-string v1, ". Last error was "

    .line 476
    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-static {v9}, Landroidx/camera/camera2/pipe/CameraError;->toString-impl(I)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    const/16 v1, 0x2e

    .line 488
    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 497
    .line 498
    .line 499
    const/4 v1, 0x0

    .line 500
    invoke-static {v4, v1}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 501
    .line 502
    .line 503
    return-object p1

    .line 504
    :cond_b
    const/4 v1, 0x0

    .line 505
    :try_start_8
    invoke-static {v9, v13}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->shouldActivateActiveResume-8PWMtlg$camera_camera2_pipe(IZ)Z

    .line 506
    .line 507
    .line 508
    move-result v7

    .line 509
    const-wide/16 v20, 0x1f4

    .line 510
    .line 511
    if-nez v7, :cond_c

    .line 512
    .line 513
    :goto_7
    move-wide/from16 v1, v20

    .line 514
    .line 515
    const/16 v25, 0x1

    .line 516
    .line 517
    goto :goto_9

    .line 518
    :cond_c
    sget-object v7, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;->activeResumeCameraRetryThresholds:[Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 519
    .line 520
    aget-object v2, v7, v2

    .line 521
    .line 522
    iget-wide v1, v2, Landroidx/camera/camera2/pipe/core/DurationNs;->value:J

    .line 523
    .line 524
    invoke-static {v11, v12, v1, v2}, Landroidx/camera/camera2/pipe/core/DurationNs;->compareTo-zYRVrok(JJ)I

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    if-gez v1, :cond_d

    .line 529
    .line 530
    goto :goto_7

    .line 531
    :cond_d
    const/16 v25, 0x1

    .line 532
    .line 533
    aget-object v1, v7, v25

    .line 534
    .line 535
    iget-wide v1, v1, Landroidx/camera/camera2/pipe/core/DurationNs;->value:J

    .line 536
    .line 537
    invoke-static {v11, v12, v1, v2}, Landroidx/camera/camera2/pipe/core/DurationNs;->compareTo-zYRVrok(JJ)I

    .line 538
    .line 539
    .line 540
    move-result v1

    .line 541
    if-gez v1, :cond_e

    .line 542
    .line 543
    const-wide/16 v20, 0x7d0

    .line 544
    .line 545
    :goto_8
    move-wide/from16 v1, v20

    .line 546
    .line 547
    goto :goto_9

    .line 548
    :cond_e
    const-wide/16 v20, 0xfa0

    .line 549
    .line 550
    goto :goto_8

    .line 551
    :goto_9
    iput-object v10, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$0:Ljava/lang/String;

    .line 552
    .line 553
    iput-object v8, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$1:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 554
    .line 555
    iput-object v15, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$2:Lkotlin/jvm/functions/Function1;

    .line 556
    .line 557
    iput-object v5, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$3:Lkotlin/jvm/internal/Ref$IntRef;

    .line 558
    .line 559
    iput-object v4, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$4:Ljava/lang/AutoCloseable;

    .line 560
    .line 561
    iput-object v14, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->L$5:Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;

    .line 562
    .line 563
    move-wide/from16 v12, p2

    .line 564
    .line 565
    iput-wide v12, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->J$0:J

    .line 566
    .line 567
    const/4 v7, 0x3

    .line 568
    iput v7, v3, Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpenerImpl$openCameraWithRetry$1;->label:I

    .line 569
    .line 570
    invoke-virtual {v14, v1, v2, v3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$startMonitoring$2;->awaitAvailableCamera(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 574
    move-object/from16 v1, v18

    .line 575
    .line 576
    if-ne v2, v1, :cond_f

    .line 577
    .line 578
    :goto_a
    return-object v1

    .line 579
    :cond_f
    move-object v9, v14

    .line 580
    move-object v14, v5

    .line 581
    goto/16 :goto_1

    .line 582
    .line 583
    :goto_b
    :try_start_9
    check-cast v2, Ljava/lang/Boolean;

    .line 584
    .line 585
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    if-nez v2, :cond_10

    .line 590
    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    .line 592
    .line 593
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 594
    .line 595
    .line 596
    const-string v11, "Timeout expired, retrying camera open for camera "

    .line 597
    .line 598
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-static {v10}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v11

    .line 605
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 613
    .line 614
    .line 615
    goto :goto_c

    .line 616
    :catchall_1
    move-exception v0

    .line 617
    move-object v1, v0

    .line 618
    move-object v4, v5

    .line 619
    goto :goto_d

    .line 620
    :cond_10
    :goto_c
    move-object v11, v1

    .line 621
    move-object v1, v10

    .line 622
    move-object v2, v14

    .line 623
    move-object/from16 v7, v19

    .line 624
    .line 625
    const/16 v16, 0x0

    .line 626
    .line 627
    move-object v10, v5

    .line 628
    move-object v14, v9

    .line 629
    move/from16 v9, v25

    .line 630
    .line 631
    const/4 v5, 0x2

    .line 632
    goto/16 :goto_4

    .line 633
    .line 634
    :catchall_2
    move-exception v0

    .line 635
    :try_start_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 636
    .line 637
    .line 638
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 639
    :catchall_3
    move-exception v0

    .line 640
    move-object v1, v0

    .line 641
    move-object v4, v10

    .line 642
    :goto_d
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 643
    :catchall_4
    move-exception v0

    .line 644
    invoke-static {v4, v1}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 645
    .line 646
    .line 647
    throw v0
.end method

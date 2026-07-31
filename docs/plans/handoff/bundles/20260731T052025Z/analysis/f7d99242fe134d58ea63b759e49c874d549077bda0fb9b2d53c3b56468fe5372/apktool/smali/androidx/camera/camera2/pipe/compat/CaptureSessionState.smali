.class public final Landroidx/camera/camera2/pipe/compat/CaptureSessionState;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;


# instance fields
.field public _cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

.field public _surfaceMap:Ljava/util/Map;

.field public final _surfaceTokenMap:Ljava/util/LinkedHashMap;

.field public final activeOutputSurfaceMap:Ljava/util/Map;

.field public final activeStreamSurfaceMap:Ljava/util/Map;

.field public cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

.field public final cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

.field public final cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

.field public final captureSequenceProcessorFactory:Lcom/fsck/k9/mailstore/LocalStore$7;

.field public final captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

.field public final captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

.field public final debugId:I

.field public final finalized:Lkotlinx/atomicfu/AtomicRef;

.field public final graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

.field public hasAttemptedCaptureSession:Z

.field public final lock:Ljava/lang/Object;

.field public pendingOutputMap:Ljava/util/Map;

.field public pendingSurfaceMap:Ljava/util/LinkedHashMap;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public sessionCreatingTimestamp:Landroidx/camera/camera2/pipe/core/TimestampNs;

.field public final sessionDisconnected:Ljava/util/concurrent/CountDownLatch;

.field public final sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

.field public state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

.field public final streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

.field public final threads:Landroidx/camera/camera2/pipe/core/Threads;

.field public final timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Lcom/fsck/k9/mailstore/LocalStore$7;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/core/SystemTimeSource;Landroidx/camera/camera2/pipe/CameraGraph$Flags;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/core/Threads;Lkotlinx/coroutines/CoroutineScope;)V
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
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 26
    .line 27
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    .line 28
    .line 29
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSequenceProcessorFactory:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 30
    .line 31
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    .line 32
    .line 33
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 34
    .line 35
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    .line 36
    .line 37
    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 38
    .line 39
    iput-object p10, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 40
    .line 41
    iput-object p11, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 42
    .line 43
    sget-object p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionStateKt;->captureSessionDebugIds:Lkotlinx/atomicfu/AtomicInt;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget-object p2, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->debugId:I

    .line 55
    .line 56
    new-instance p1, Ljava/lang/Object;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    .line 62
    .line 63
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalized:Lkotlinx/atomicfu/AtomicRef;

    .line 70
    .line 71
    new-instance p1, Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeStreamSurfaceMap:Ljava/util/Map;

    .line 81
    .line 82
    new-instance p1, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeOutputSurfaceMap:Ljava/util/Map;

    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    .line 95
    .line 96
    sget-object p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->PENDING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 97
    .line 98
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 99
    .line 100
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 101
    .line 102
    const/4 p2, 0x1

    .line 103
    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionDisconnected:Ljava/util/concurrent/CountDownLatch;

    .line 107
    .line 108
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 109
    .line 110
    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

    .line 114
    .line 115
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 116
    .line 117
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceTokenMap:Ljava/util/LinkedHashMap;

    .line 121
    .line 122
    return-void
.end method

.method public static final access$tryCreateCaptureSession(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "Warning: "

    .line 5
    .line 6
    const-string v1, "Created "

    .line 7
    .line 8
    const-string v2, "Unexpected state: "

    .line 9
    .line 10
    instance-of v3, p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    move-object v3, p1

    .line 15
    check-cast v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;

    .line 16
    .line 17
    iget v4, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->label:I

    .line 18
    .line 19
    const/high16 v5, -0x80000000

    .line 20
    .line 21
    and-int v6, v4, v5

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    sub-int/2addr v4, v5

    .line 26
    iput v4, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->label:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;

    .line 30
    .line 31
    invoke-direct {v3, p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object p1, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->result:Ljava/lang/Object;

    .line 35
    .line 36
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 37
    .line 38
    iget v5, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->label:I

    .line 39
    .line 40
    const/4 v6, 0x1

    .line 41
    const/4 v7, 0x0

    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    if-ne v5, v6, :cond_1

    .line 45
    .line 46
    iget-object v4, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 47
    .line 48
    iget-object v3, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v7

    .line 60
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object v8, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v8

    .line 76
    :try_start_0
    iget-object v9, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 77
    .line 78
    sget-object v10, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->PENDING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 79
    .line 80
    if-eq v9, v10, :cond_3

    .line 81
    .line 82
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    monitor-exit v8

    .line 85
    return-object p0

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto/16 :goto_9

    .line 88
    .line 89
    :cond_3
    :try_start_1
    iget-object v9, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceMap:Ljava/util/Map;

    .line 90
    .line 91
    iput-object v9, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 92
    .line 93
    iget-object v9, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 94
    .line 95
    iput-object v9, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 96
    .line 97
    iget-object v10, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 98
    .line 99
    if-eqz v10, :cond_12

    .line 100
    .line 101
    if-nez v9, :cond_4

    .line 102
    .line 103
    goto/16 :goto_8

    .line 104
    .line 105
    :cond_4
    sget-object v9, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 106
    .line 107
    iput-object v9, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 108
    .line 109
    iput-boolean v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->hasAttemptedCaptureSession:Z

    .line 110
    .line 111
    iget-object v9, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 112
    .line 113
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 117
    .line 118
    .line 119
    move-result-wide v9

    .line 120
    new-instance v11, Landroidx/camera/camera2/pipe/core/TimestampNs;

    .line 121
    .line 122
    invoke-direct {v11, v9, v10}, Landroidx/camera/camera2/pipe/core/TimestampNs;-><init>(J)V

    .line 123
    .line 124
    .line 125
    iput-object v11, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionCreatingTimestamp:Landroidx/camera/camera2/pipe/core/TimestampNs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    monitor-exit v8

    .line 128
    iget-object v8, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    .line 129
    .line 130
    if-eqz v8, :cond_6

    .line 131
    .line 132
    const-string v9, "CXCP"

    .line 133
    .line 134
    const-string v10, "Awaiting session lock"

    .line 135
    .line 136
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    iput-object p1, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 140
    .line 141
    iput-object v5, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 142
    .line 143
    iput v6, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$tryCreateCaptureSession$1;->label:I

    .line 144
    .line 145
    invoke-virtual {v8, v3}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->awaitSessionLock(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    if-ne v3, v4, :cond_5

    .line 150
    .line 151
    return-object v4

    .line 152
    :cond_5
    move-object v3, p1

    .line 153
    move-object v4, v5

    .line 154
    :goto_1
    move-object p1, v3

    .line 155
    move-object v5, v4

    .line 156
    :cond_6
    const-string v3, "CXCP"

    .line 157
    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v6, "Creating CameraCaptureSession from "

    .line 161
    .line 162
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v6, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 168
    .line 169
    if-eqz v6, :cond_7

    .line 170
    .line 171
    invoke-interface {v6}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    goto :goto_2

    .line 176
    :cond_7
    move-object v6, v7

    .line 177
    :goto_2
    if-nez v6, :cond_8

    .line 178
    .line 179
    const-string v6, "null"

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_8
    invoke-static {v6}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    :goto_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v6, " using "

    .line 190
    .line 191
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v6, " with "

    .line 198
    .line 199
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-object v6, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 203
    .line 204
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string v4, "CameraDevice-"

    .line 217
    .line 218
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v4, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 224
    .line 225
    if-eqz v4, :cond_9

    .line 226
    .line 227
    invoke-interface {v4}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    goto :goto_4

    .line 232
    :cond_9
    move-object v4, v7

    .line 233
    :goto_4
    const-string v6, "#createCaptureSession"

    .line 234
    .line 235
    invoke-static {v3, v4, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    :try_start_2
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    .line 243
    .line 244
    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    check-cast v4, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 250
    .line 251
    iget-object v5, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 252
    .line 253
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    check-cast v5, Ljava/util/Map;

    .line 257
    .line 258
    invoke-interface {v3, v4, v5, p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;->create(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Ljava/util/Map;Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result;

    .line 259
    .line 260
    .line 261
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 262
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 263
    .line 264
    .line 265
    instance-of v4, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;

    .line 266
    .line 267
    if-nez v4, :cond_a

    .line 268
    .line 269
    const-string p1, "CXCP"

    .line 270
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v1, "Failed to create capture session for "

    .line 274
    .line 275
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const/16 p0, 0x21

    .line 282
    .line 283
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 294
    .line 295
    return-object p0

    .line 296
    :cond_a
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    .line 297
    .line 298
    monitor-enter v4

    .line 299
    :try_start_3
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 300
    .line 301
    sget-object v6, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 302
    .line 303
    if-eq v5, v6, :cond_11

    .line 304
    .line 305
    sget-object v6, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 306
    .line 307
    if-ne v5, v6, :cond_b

    .line 308
    .line 309
    goto/16 :goto_6

    .line 310
    .line 311
    :cond_b
    sget-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 312
    .line 313
    if-ne v5, v0, :cond_10

    .line 314
    .line 315
    sget-object v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 316
    .line 317
    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 318
    .line 319
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeStreamSurfaceMap:Ljava/util/Map;

    .line 320
    .line 321
    iget-object v2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 322
    .line 323
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    check-cast v2, Ljava/util/Map;

    .line 327
    .line 328
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 329
    .line 330
    .line 331
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeOutputSurfaceMap:Ljava/util/Map;

    .line 332
    .line 333
    move-object v2, v3

    .line 334
    check-cast v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;

    .line 335
    .line 336
    iget-object v2, v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;->outputSurfaceMap:Ljava/util/Map;

    .line 337
    .line 338
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 339
    .line 340
    .line 341
    check-cast v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;

    .line 342
    .line 343
    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;->deferred:Ljava/util/Map;

    .line 344
    .line 345
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-nez v2, :cond_f

    .line 350
    .line 351
    const-string v2, "CXCP"

    .line 352
    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v1, " with "

    .line 362
    .line 363
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast p1, Ljava/util/Map;

    .line 369
    .line 370
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    check-cast p1, Ljava/lang/Iterable;

    .line 375
    .line 376
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string p1, ". Waiting to finalize "

    .line 384
    .line 385
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    check-cast p1, Ljava/lang/Iterable;

    .line 393
    .line 394
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingOutputMap:Ljava/util/Map;

    .line 409
    .line 410
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceMap:Ljava/util/Map;

    .line 411
    .line 412
    if-eqz p1, :cond_d

    .line 413
    .line 414
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 415
    .line 416
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 417
    .line 418
    .line 419
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    :cond_c
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    if-eqz v2, :cond_e

    .line 432
    .line 433
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    check-cast v2, Ljava/util/Map$Entry;

    .line 438
    .line 439
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    if-eqz v3, :cond_c

    .line 448
    .line 449
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    goto :goto_5

    .line 461
    :catchall_1
    move-exception p0

    .line 462
    goto :goto_7

    .line 463
    :cond_d
    move-object v1, v7

    .line 464
    :cond_e
    if-eqz v1, :cond_f

    .line 465
    .line 466
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 467
    .line 468
    .line 469
    move-result p1

    .line 470
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    if-ne p1, v0, :cond_f

    .line 475
    .line 476
    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingSurfaceMap:Ljava/util/LinkedHashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 477
    .line 478
    :cond_f
    monitor-exit v4

    .line 479
    invoke-virtual {p0, v7}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->configure(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 480
    .line 481
    .line 482
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 483
    .line 484
    return-object p0

    .line 485
    :cond_10
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 491
    .line 492
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object p0

    .line 499
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 500
    .line 501
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object p0

    .line 505
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    throw p1

    .line 509
    :cond_11
    :goto_6
    const-string p1, "CXCP"

    .line 510
    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    const-string v0, " was "

    .line 520
    .line 521
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 525
    .line 526
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    const-string p0, " while configuration was in progress."

    .line 530
    .line 531
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object p0

    .line 538
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 542
    .line 543
    monitor-exit v4

    .line 544
    return-object p0

    .line 545
    :goto_7
    monitor-exit v4

    .line 546
    throw p0

    .line 547
    :catchall_2
    move-exception p0

    .line 548
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 549
    .line 550
    .line 551
    throw p0

    .line 552
    :cond_12
    :goto_8
    :try_start_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 553
    .line 554
    monitor-exit v8

    .line 555
    return-object p0

    .line 556
    :goto_9
    monitor-exit v8

    .line 557
    throw p0
.end method


# virtual methods
.method public final configure(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 10

    .line 1
    const-string v0, "Configured "

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSequenceProcessorFactory:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeStreamSurfaceMap:Ljava/util/Map;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeOutputSurfaceMap:Ljava/util/Map;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1, v3, v4}, Lcom/fsck/k9/mailstore/LocalStore$7;->create(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    .line 29
    .line 30
    new-instance v4, Lorg/apache/james/mime4j/stream/RawField;

    .line 31
    .line 32
    invoke-direct {v4, v2}, Lorg/apache/james/mime4j/stream/RawField;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, p1, v4, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Lorg/apache/james/mime4j/stream/RawField;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)V

    .line 36
    .line 37
    .line 38
    iput-object v3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    .line 39
    .line 40
    move-object v2, v3

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 46
    .line 47
    sget-object v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 48
    .line 49
    if-ne p1, v3, :cond_4

    .line 50
    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingOutputMap:Ljava/util/Map;

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    const/4 v4, 0x0

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingSurfaceMap:Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    move p1, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move p1, v4

    .line 67
    :goto_1
    monitor-exit v1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0, v4}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalizeOutputsIfAvailable(Z)V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter p1

    .line 76
    :try_start_1
    const-string v1, "CXCP"

    .line 77
    .line 78
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 84
    .line 85
    .line 86
    move-result-wide v5

    .line 87
    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionCreatingTimestamp:Landroidx/camera/camera2/pipe/core/TimestampNs;

    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iget-wide v7, v7, Landroidx/camera/camera2/pipe/core/TimestampNs;->value:J

    .line 93
    .line 94
    sub-long/2addr v5, v7

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v0, " in "

    .line 104
    .line 105
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, "%.3f ms"

    .line 109
    .line 110
    long-to-double v5, v5

    .line 111
    const-wide v8, 0x412e848000000000L    # 1000000.0

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    div-double/2addr v5, v8

    .line 117
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    new-array v6, v3, [Ljava/lang/Object;

    .line 122
    .line 123
    aput-object v5, v6, v4

    .line 124
    .line 125
    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const/4 v4, 0x0

    .line 130
    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 145
    .line 146
    iget-object v0, v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->processor:Lorg/apache/james/mime4j/stream/RawField;

    .line 147
    .line 148
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->onGraphStarted(Lorg/apache/james/mime4j/stream/RawField;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    .line 150
    .line 151
    monitor-exit p1

    .line 152
    return-void

    .line 153
    :catchall_1
    move-exception p0

    .line 154
    monitor-exit p1

    .line 155
    throw p0

    .line 156
    :cond_4
    :goto_2
    monitor-exit v1

    .line 157
    return-void

    .line 158
    :goto_3
    monitor-exit v1

    .line 159
    throw p0
.end method

.method public final configureSurfaceMap(Ljava/util/Map;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 8
    .line 9
    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 10
    .line 11
    if-eq v1, v2, :cond_5

    .line 12
    .line 13
    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceMap:Ljava/util/Map;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_3

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->updateTrackedSurfaces(Ljava/util/Map;Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceMap:Ljava/util/Map;

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingOutputMap:Ljava/util/Map;

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingSurfaceMap:Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    if-nez v4, :cond_4

    .line 41
    .line 42
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Ljava/util/Map$Entry;

    .line 66
    .line 67
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-ne p1, v1, :cond_4

    .line 98
    .line 99
    iput-object v4, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingSurfaceMap:Ljava/util/LinkedHashMap;

    .line 100
    .line 101
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 102
    .line 103
    new-instance v1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 104
    .line 105
    const/4 v4, 0x4

    .line 106
    invoke-direct {v1, p0, v3, v4}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1, v3, v3, v1, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 110
    .line 111
    .line 112
    :cond_4
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 113
    .line 114
    new-instance v1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$cameraDevice$2$1;

    .line 115
    .line 116
    const/4 v4, 0x1

    .line 117
    invoke-direct {v1, p0, v3, v4}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$cameraDevice$2$1;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Lkotlin/coroutines/Continuation;I)V

    .line 118
    .line 119
    .line 120
    invoke-static {p1, v3, v3, v1, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_2
    monitor-exit v0

    .line 124
    return-void

    .line 125
    :goto_3
    monitor-exit v0

    .line 126
    throw p0
.end method

.method public final disconnect()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 5
    .line 6
    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSING:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 7
    .line 8
    if-eq v1, v2, :cond_a

    .line 9
    .line 10
    sget-object v3, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 11
    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    .line 31
    .line 32
    iget-boolean v1, v1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCaptureSessionOnDisconnect:Z

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->hasAttemptedCaptureSession:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    :cond_2
    move-object v1, v2

    .line 42
    :goto_0
    monitor-exit v0

    .line 43
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->release()V

    .line 48
    .line 49
    .line 50
    :cond_3
    const/4 v0, 0x2

    .line 51
    const-wide/16 v4, 0xbb8

    .line 52
    .line 53
    if-eqz v3, :cond_5

    .line 54
    .line 55
    const-string v1, "CXCP"

    .line 56
    .line 57
    const-string v3, "Waiting for CameraCaptureSession configuration"

    .line 58
    .line 59
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 63
    .line 64
    new-instance v3, Landroidx/compose/animation/core/Animatable$stop$2;

    .line 65
    .line 66
    invoke-direct {v3, p0, v2, v0}, Landroidx/compose/animation/core/Animatable$stop$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v4, v5, v3}, Landroidx/camera/camera2/pipe/core/Threads;->runBlockingCheckedOrNull(JLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lkotlin/Unit;

    .line 74
    .line 75
    if-nez v1, :cond_4

    .line 76
    .line 77
    const-string v1, "CXCP"

    .line 78
    .line 79
    const-string v3, "Waiting for CameraCaptureSession configuration timed out"

    .line 80
    .line 81
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    .line 85
    .line 86
    monitor-enter v1

    .line 87
    :try_start_1
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    .line 88
    .line 89
    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    .line 91
    monitor-exit v1

    .line 92
    move-object v1, v3

    .line 93
    goto :goto_1

    .line 94
    :catchall_1
    move-exception p0

    .line 95
    monitor-exit v1

    .line 96
    throw p0

    .line 97
    :cond_5
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 103
    .line 104
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v6, "#onGraphStopping"

    .line 108
    .line 109
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 120
    .line 121
    const-string v6, "CXCP"

    .line 122
    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v8, " onGraphStopping"

    .line 132
    .line 133
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    iget-object v6, v3, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->_graphState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 144
    .line 145
    sget-object v7, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;

    .line 146
    .line 147
    invoke-virtual {v6, v7}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    iget-object v6, v3, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    .line 151
    .line 152
    invoke-virtual {v6, v2}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setRequestProcessor(Lorg/apache/james/mime4j/stream/RawField;)V

    .line 153
    .line 154
    .line 155
    iget-object v3, v3, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->externalStateGraphListeners:Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-eqz v6, :cond_6

    .line 166
    .line 167
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    check-cast v6, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    .line 172
    .line 173
    iget-object v7, v6, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 174
    .line 175
    invoke-virtual {v6}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->getCameraGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    sget-object v8, Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;->INSTANCE:Landroidx/camera/camera2/pipe/GraphState$GraphStateStopping;

    .line 180
    .line 181
    invoke-virtual {v7, v6, v8}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->onGraphStateUpdated(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/GraphState;)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 186
    .line 187
    .line 188
    if-eqz v1, :cond_9

    .line 189
    .line 190
    iget-object v3, v1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->processor:Lorg/apache/james/mime4j/stream/RawField;

    .line 191
    .line 192
    const-string v6, "CXCP"

    .line 193
    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v8, " Shutdown"

    .line 203
    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v7, "#shutdown"

    .line 223
    .line 224
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    .line 235
    .line 236
    iget-boolean v6, v6, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->abortCapturesOnStop:Z

    .line 237
    .line 238
    if-eqz v6, :cond_7

    .line 239
    .line 240
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 241
    .line 242
    new-instance v7, Landroidx/compose/animation/core/Animatable$snapTo$2;

    .line 243
    .line 244
    const/4 v8, 0x3

    .line 245
    invoke-direct {v7, p0, v3, v2, v8}, Landroidx/compose/animation/core/Animatable$snapTo$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 246
    .line 247
    .line 248
    const-wide/16 v8, 0x7d0

    .line 249
    .line 250
    invoke-virtual {v6, v8, v9, v7}, Landroidx/camera/camera2/pipe/core/Threads;->runBlockingCheckedOrNull(JLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    check-cast v3, Lkotlin/Unit;

    .line 255
    .line 256
    if-nez v3, :cond_7

    .line 257
    .line 258
    const-string v3, "CXCP"

    .line 259
    .line 260
    const-string v6, "Failed to abort captures in 2000ms"

    .line 261
    .line 262
    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v6, "#disconnect"

    .line 274
    .line 275
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object v3, v1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->captureSequenceProcessor:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    .line 286
    .line 287
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnect$camera_camera2_pipe()V

    .line 288
    .line 289
    .line 290
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 291
    .line 292
    .line 293
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    .line 294
    .line 295
    iget-boolean v3, v3, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->closeCaptureSessionOnDisconnect:Z

    .line 296
    .line 297
    if-eqz v3, :cond_8

    .line 298
    .line 299
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 300
    .line 301
    new-instance v6, Landroidx/compose/animation/core/Animatable$snapTo$2;

    .line 302
    .line 303
    invoke-direct {v6, p0, v1, v2, v0}, Landroidx/compose/animation/core/Animatable$snapTo$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v4, v5, v6}, Landroidx/camera/camera2/pipe/core/Threads;->runBlockingCheckedOrNull(JLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Lkotlin/Unit;

    .line 311
    .line 312
    if-nez v0, :cond_8

    .line 313
    .line 314
    const-string v0, "CXCP"

    .line 315
    .line 316
    const-string v1, "Failed to close the capture session in 3000ms"

    .line 317
    .line 318
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 327
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string v1, "#onGraphStopped"

    .line 332
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 344
    .line 345
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->onGraphStopped()V

    .line 346
    .line 347
    .line 348
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 349
    .line 350
    .line 351
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 352
    .line 353
    .line 354
    goto :goto_3

    .line 355
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string v1, "#onGraphStopped"

    .line 366
    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 378
    .line 379
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->onGraphStopped()V

    .line 380
    .line 381
    .line 382
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 383
    .line 384
    .line 385
    :goto_3
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionDisconnected:Ljava/util/concurrent/CountDownLatch;

    .line 386
    .line 387
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 388
    .line 389
    .line 390
    return-void

    .line 391
    :cond_a
    :goto_4
    monitor-exit v0

    .line 392
    return-void

    .line 393
    :goto_5
    monitor-exit v0

    .line 394
    throw p0
.end method

.method public final finalizeOutputsIfAvailable(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraCaptureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingOutputMap:Ljava/util/Map;

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->pendingSurfaceMap:Ljava/util/LinkedHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    if-eqz v1, :cond_9

    .line 12
    .line 13
    if-eqz v2, :cond_9

    .line 14
    .line 15
    if-eqz v3, :cond_9

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, "#finalizeOutputConfigurations"

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Ljava/util/Map$Entry;

    .line 65
    .line 66
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Landroidx/camera/camera2/pipe/StreamId;

    .line 71
    .line 72
    iget v7, v7, Landroidx/camera/camera2/pipe/StreamId;->value:I

    .line 73
    .line 74
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 79
    .line 80
    new-instance v8, Landroidx/camera/camera2/pipe/StreamId;

    .line 81
    .line 82
    invoke-direct {v8, v7}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    if-eqz v7, :cond_0

    .line 90
    .line 91
    check-cast v7, Landroid/view/Surface;

    .line 92
    .line 93
    check-cast v6, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;

    .line 94
    .line 95
    invoke-virtual {v6, v7}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->addSurface(Landroid/view/Surface;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    const-string p0, "Required value was null."

    .line 100
    .line 101
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_2

    .line 123
    .line 124
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    check-cast v7, Ljava/util/Map$Entry;

    .line 129
    .line 130
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    check-cast v7, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 135
    .line 136
    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v1, v1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 145
    .line 146
    invoke-interface {v1, v0}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->finalizeOutputConfigurations(Ljava/util/List;)Z

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    .line 150
    .line 151
    monitor-enter v0

    .line 152
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 153
    .line 154
    sget-object v6, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CREATED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 155
    .line 156
    const/4 v7, 0x0

    .line 157
    if-ne v1, v6, :cond_7

    .line 158
    .line 159
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeStreamSurfaceMap:Ljava/util/Map;

    .line 160
    .line 161
    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    const/4 v6, 0x1

    .line 177
    if-eqz v3, :cond_5

    .line 178
    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Ljava/util/Map$Entry;

    .line 184
    .line 185
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    check-cast v8, Landroidx/camera/camera2/pipe/StreamId;

    .line 190
    .line 191
    iget v8, v8, Landroidx/camera/camera2/pipe/StreamId;->value:I

    .line 192
    .line 193
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    check-cast v3, Landroid/view/Surface;

    .line 198
    .line 199
    iget-object v9, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 200
    .line 201
    invoke-virtual {v9, v8}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->get-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    if-eqz v8, :cond_4

    .line 206
    .line 207
    iget-object v9, v8, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    if-ne v9, v6, :cond_3

    .line 214
    .line 215
    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->activeOutputSurfaceMap:Ljava/util/Map;

    .line 216
    .line 217
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    iget-object v8, v8, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    check-cast v8, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    .line 227
    .line 228
    iget v8, v8, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->id:I

    .line 229
    .line 230
    new-instance v9, Landroidx/camera/camera2/pipe/OutputId;

    .line 231
    .line 232
    invoke-direct {v9, v8}, Landroidx/camera/camera2/pipe/OutputId;-><init>(I)V

    .line 233
    .line 234
    .line 235
    invoke-interface {v6, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :catchall_0
    move-exception p0

    .line 240
    goto/16 :goto_4

    .line 241
    .line 242
    :cond_3
    const-string p0, "Cannot finalize a multi-output stream!"

    .line 243
    .line 244
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 245
    .line 246
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw p1

    .line 250
    :cond_4
    const-string p0, "Required value was null."

    .line 251
    .line 252
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 253
    .line 254
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw p1

    .line 258
    :cond_5
    const-string v1, "CXCP"

    .line 259
    .line 260
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 266
    .line 267
    .line 268
    move-result-wide v8

    .line 269
    sub-long/2addr v8, v4

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v4, "Finalized "

    .line 276
    .line 277
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    new-instance v4, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    .line 288
    .line 289
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    if-eqz v5, :cond_6

    .line 302
    .line 303
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    check-cast v5, Ljava/util/Map$Entry;

    .line 308
    .line 309
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    check-cast v5, Landroidx/camera/camera2/pipe/StreamId;

    .line 314
    .line 315
    iget v5, v5, Landroidx/camera/camera2/pipe/StreamId;->value:I

    .line 316
    .line 317
    new-instance v10, Landroidx/camera/camera2/pipe/StreamId;

    .line 318
    .line 319
    invoke-direct {v10, v5}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    goto :goto_3

    .line 326
    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    const-string v2, " for "

    .line 330
    .line 331
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    const-string v2, " in "

    .line 338
    .line 339
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string v4, "%."

    .line 348
    .line 349
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const/4 v4, 0x3

    .line 353
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v4, "f ms"

    .line 357
    .line 358
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    long-to-double v4, v8

    .line 366
    const-wide v8, 0x412e848000000000L    # 1000000.0

    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    div-double/2addr v4, v8

    .line 372
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    new-array v5, v6, [Ljava/lang/Object;

    .line 377
    .line 378
    aput-object v4, v5, v7

    .line 379
    .line 380
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    const/4 v5, 0x0

    .line 385
    invoke-static {v5, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    .line 398
    .line 399
    move v7, v6

    .line 400
    :cond_7
    monitor-exit v0

    .line 401
    if-eqz v7, :cond_8

    .line 402
    .line 403
    if-eqz p1, :cond_8

    .line 404
    .line 405
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 406
    .line 407
    const-string p1, "CXCP"

    .line 408
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    const-string v1, " onGraphModified"

    .line 418
    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    .line 430
    .line 431
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processingQueue:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 432
    .line 433
    sget-object p1, Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;->INSTANCE$2:Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;

    .line 434
    .line 435
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$7;->tryEmit(Landroidx/camera/camera2/pipe/graph/GraphCommand;)Z

    .line 436
    .line 437
    .line 438
    :cond_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 439
    .line 440
    .line 441
    return-void

    .line 442
    :goto_4
    monitor-exit v0

    .line 443
    throw p0

    .line 444
    :cond_9
    return-void

    .line 445
    :catchall_1
    move-exception p0

    .line 446
    monitor-exit v0

    .line 447
    throw p0
.end method

.method public final finalizeSession$camera_camera2_pipe(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 8
    .line 9
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p1, p2, p0, v2}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;-><init>(JLandroidx/camera/camera2/pipe/compat/CaptureSessionState;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x3

    .line 16
    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p1, "CXCP"

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v0, "Finalizing "

    .line 25
    .line 26
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter p1

    .line 42
    :try_start_0
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceTokenMap:Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Ljava/lang/Iterable;

    .line 49
    .line 50
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceTokenMap:Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    monitor-exit p1

    .line 60
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_8

    .line 69
    .line 70
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Ljava/lang/AutoCloseable;

    .line 75
    .line 76
    instance-of p2, p1, Ljava/lang/AutoCloseable;

    .line 77
    .line 78
    if-eqz p2, :cond_1

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    instance-of p2, p1, Ljava/util/concurrent/ExecutorService;

    .line 85
    .line 86
    if-eqz p2, :cond_2

    .line 87
    .line 88
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 89
    .line 90
    invoke-static {p1}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m(Ljava/util/concurrent/ExecutorService;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    instance-of p2, p1, Landroid/content/res/TypedArray;

    .line 95
    .line 96
    if-eqz p2, :cond_3

    .line 97
    .line 98
    check-cast p1, Landroid/content/res/TypedArray;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    instance-of p2, p1, Landroid/media/MediaMetadataRetriever;

    .line 105
    .line 106
    if-eqz p2, :cond_4

    .line 107
    .line 108
    check-cast p1, Landroid/media/MediaMetadataRetriever;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    instance-of p2, p1, Landroid/media/MediaDrm;

    .line 115
    .line 116
    if-eqz p2, :cond_5

    .line 117
    .line 118
    check-cast p1, Landroid/media/MediaDrm;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/media/MediaDrm;->release()V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_5
    instance-of p2, p1, Landroid/drm/DrmManagerClient;

    .line 125
    .line 126
    if-eqz p2, :cond_6

    .line 127
    .line 128
    check-cast p1, Landroid/drm/DrmManagerClient;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/drm/DrmManagerClient;->release()V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_6
    instance-of p2, p1, Landroid/content/ContentProviderClient;

    .line 135
    .line 136
    if-eqz p2, :cond_7

    .line 137
    .line 138
    check-cast p1, Landroid/content/ContentProviderClient;

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_7
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 145
    .line 146
    .line 147
    :cond_8
    return-void

    .line 148
    :catchall_0
    move-exception p0

    .line 149
    monitor-exit p1

    .line 150
    throw p0
.end method

.method public final onActive(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, " Active"

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p1, "CXCP"

    .line 19
    .line 20
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onCaptureQueueEmpty(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, " CaptureQueueEmpty"

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p1, "CXCP"

    .line 19
    .line 20
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onClosed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v0, " Closed"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "CXCP"

    .line 19
    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, "#onClosed"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->shutdown()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    .line 52
    .line 53
    if-eqz p0, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->release()V

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final onConfigureFailed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v0, " Configuration Failed"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "CXCP"

    .line 19
    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, "#onConfigureFailed"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    .line 44
    .line 45
    const/16 v0, 0x9

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {p1, v0, v1}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;-><init>(IZ)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->onGraphError(Landroidx/camera/camera2/pipe/GraphState$GraphStateError;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->shutdown()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    .line 65
    .line 66
    if-eqz p0, :cond_0

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->release()V

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final onConfigured(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, " Configured"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "CXCP"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "#configure"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->configure(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->captureSessionAttemptCompleted:Ljava/util/concurrent/CountDownLatch;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionSequencer:Landroidx/camera/camera2/pipe/compat/SessionSequencer;

    .line 52
    .line 53
    if-eqz p0, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->release()V

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final onReady(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, " Ready"

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p1, "CXCP"

    .line 19
    .line 20
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onSessionDisconnected()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, " session disconnecting"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "CXCP"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "#onSessionDisconnected"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->disconnect()V

    .line 44
    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, "#onSessionDisconnected Await"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->sessionDisconnected:Ljava/util/concurrent/CountDownLatch;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public final onSessionFinalized()V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalized:Lkotlinx/atomicfu/AtomicRef;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " session finalizing"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "CXCP"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "#onSessionFinalized"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->shutdown()V

    .line 56
    .line 57
    .line 58
    const-wide/16 v0, 0x0

    .line 59
    .line 60
    invoke-virtual {p0, v0, v1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalizeSession$camera_camera2_pipe(J)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method public final shutdown()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->disconnect()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->lock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 8
    .line 9
    sget-object v2, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;->CLOSED:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    if-eq v1, v2, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->hasAttemptedCaptureSession:Z

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraGraphFlags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    .line 26
    .line 27
    iget v1, v1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->finalizeSessionOnCloseBehavior:I

    .line 28
    .line 29
    if-ne v1, v5, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v6, 0x2

    .line 33
    if-ne v1, v6, :cond_2

    .line 34
    .line 35
    const-wide/16 v3, 0x7d0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v5, 0x0

    .line 41
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 43
    .line 44
    iput-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->state:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    monitor-exit v0

    .line 47
    if-eqz v5, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0, v3, v4}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->finalizeSession$camera_camera2_pipe(J)V

    .line 50
    .line 51
    .line 52
    :cond_4
    return-void

    .line 53
    :goto_1
    monitor-exit v0

    .line 54
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CaptureSessionState-"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->debugId:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final updateTrackedSurfaces(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    move-object v0, p2

    .line 22
    check-cast v0, Ljava/lang/Iterable;

    .line 23
    .line 24
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->_surfaceTokenMap:Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    if-eqz v1, :cond_9

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/view/Surface;

    .line 45
    .line 46
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/AutoCloseable;

    .line 51
    .line 52
    if-eqz v2, :cond_7

    .line 53
    .line 54
    instance-of v3, v2, Ljava/lang/AutoCloseable;

    .line 55
    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    instance-of v3, v2, Ljava/util/concurrent/ExecutorService;

    .line 63
    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    move-object v3, v2

    .line 67
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 68
    .line 69
    invoke-static {v3}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m(Ljava/util/concurrent/ExecutorService;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    instance-of v3, v2, Landroid/content/res/TypedArray;

    .line 74
    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    move-object v3, v2

    .line 78
    check-cast v3, Landroid/content/res/TypedArray;

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    instance-of v3, v2, Landroid/media/MediaMetadataRetriever;

    .line 85
    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    move-object v3, v2

    .line 89
    check-cast v3, Landroid/media/MediaMetadataRetriever;

    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    instance-of v3, v2, Landroid/media/MediaDrm;

    .line 96
    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    move-object v3, v2

    .line 100
    check-cast v3, Landroid/media/MediaDrm;

    .line 101
    .line 102
    invoke-virtual {v3}, Landroid/media/MediaDrm;->release()V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    instance-of v3, v2, Landroid/drm/DrmManagerClient;

    .line 107
    .line 108
    if-eqz v3, :cond_5

    .line 109
    .line 110
    move-object v3, v2

    .line 111
    check-cast v3, Landroid/drm/DrmManagerClient;

    .line 112
    .line 113
    invoke-virtual {v3}, Landroid/drm/DrmManagerClient;->release()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    instance-of v3, v2, Landroid/content/ContentProviderClient;

    .line 118
    .line 119
    if-eqz v3, :cond_6

    .line 120
    .line 121
    move-object v3, v2

    .line 122
    check-cast v3, Landroid/content/ContentProviderClient;

    .line 123
    .line 124
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_6
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_7
    const/4 v2, 0x0

    .line 133
    :goto_1
    if-eqz v2, :cond_8

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_8
    const-string p0, "Surface "

    .line 137
    .line 138
    const-string p1, " doesn\'t have a matching surface token!"

    .line 139
    .line 140
    invoke-static {v1, p1, p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_9
    check-cast p1, Ljava/lang/Iterable;

    .line 145
    .line 146
    invoke-static {p2, p1}, Lorg/jsoup/helper/Validate;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-eqz p2, :cond_a

    .line 159
    .line 160
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    check-cast p2, Landroid/view/Surface;

    .line 165
    .line 166
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    .line 167
    .line 168
    invoke-virtual {v0, p2}, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->registerSurface$camera_camera2_pipe(Landroid/view/Surface;)Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_a
    return-void
.end method

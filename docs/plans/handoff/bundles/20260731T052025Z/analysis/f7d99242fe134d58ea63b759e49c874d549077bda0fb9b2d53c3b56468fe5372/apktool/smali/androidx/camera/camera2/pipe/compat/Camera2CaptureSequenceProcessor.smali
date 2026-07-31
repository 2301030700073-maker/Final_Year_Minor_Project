.class public final Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final awaitRepeatingRequestOnDisconnect:Z

.field public final debugId:I

.field public disconnected:Z

.field public final imageWriter:Landroidx/camera/camera2/pipe/media/AndroidImageWriter;

.field public lastSingleRepeatingRequestSequence:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

.field public final lock:Ljava/lang/Object;

.field public final outputToSurfaceMap:Ljava/util/Map;

.field public final session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

.field public final streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

.field public final streamToSurfaceMap:Ljava/util/Map;

.field public final strictMode:Landroidx/camera/camera2/pipe/StrictMode;

.field public final template:I

.field public final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/core/Threads;ILjava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/StrictMode;Z)V
    .locals 1

    .line 1
    const-string v0, "CXCP"

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 22
    .line 23
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 24
    .line 25
    iput p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->template:I

    .line 26
    .line 27
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamToSurfaceMap:Ljava/util/Map;

    .line 28
    .line 29
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->outputToSurfaceMap:Ljava/util/Map;

    .line 30
    .line 31
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 32
    .line 33
    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    .line 34
    .line 35
    iput-boolean p8, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->awaitRepeatingRequestOnDisconnect:Z

    .line 36
    .line 37
    sget-object p3, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->captureSequenceProcessorDebugIds:Lkotlinx/atomicfu/AtomicInt;

    .line 38
    .line 39
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget-object p4, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 43
    .line 44
    invoke-virtual {p4, p3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    iput p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->debugId:I

    .line 49
    .line 50
    new-instance p3, Ljava/lang/Object;

    .line 51
    .line 52
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    .line 56
    .line 57
    iget-object p3, p6, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->inputs:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result p4

    .line 63
    const/4 p5, 0x0

    .line 64
    if-nez p4, :cond_1

    .line 65
    .line 66
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    check-cast p3, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;

    .line 71
    .line 72
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getInputSurface()Landroid/view/Surface;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    :try_start_0
    iget p4, p3, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;->id:I

    .line 79
    .line 80
    iget p3, p3, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;->format:I

    .line 81
    .line 82
    new-instance p6, Landroidx/camera/camera2/pipe/StreamFormat;

    .line 83
    .line 84
    invoke-direct {p6, p3}, Landroidx/camera/camera2/pipe/StreamFormat;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {p1, p4, p6, p2}, Lcom/fsck/k9/sasl/OAuthBearer;->create-U86x6Zg(Landroid/view/Surface;ILandroidx/camera/camera2/pipe/StreamFormat;Landroid/os/Handler;)Landroidx/camera/camera2/pipe/media/AndroidImageWriter;

    .line 92
    .line 93
    .line 94
    move-result-object p5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p1

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string p3, "Failed to create ImageWriter for session "

    .line 100
    .line 101
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 105
    .line 106
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p3, "! Reprocessing will not be supported!"

    .line 110
    .line 111
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .line 120
    .line 121
    :goto_0
    if-eqz p5, :cond_1

    .line 122
    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string p2, "Created ImageWriter "

    .line 126
    .line 127
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p2, " for session "

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 139
    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_0
    const-string p0, "inputSurface is required to create instance of imageWriter."

    .line 152
    .line 153
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p5

    .line 157
    :cond_1
    :goto_1
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->imageWriter:Landroidx/camera/camera2/pipe/media/AndroidImageWriter;

    .line 158
    .line 159
    return-void
.end method

.method public static final access$awaitRepeatingRequestStarted(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Waiting for the last repeating request sequence: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "CXCP"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 21
    .line 22
    new-instance v2, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, p1, v3, v4}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v3, 0x7d0

    .line 30
    .line 31
    invoke-virtual {v0, v3, v4, v2}, Landroidx/camera/camera2/pipe/core/Threads;->runBlockingCheckedOrNull(JLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lkotlin/Unit;

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, "#close: awaitStarted on last repeating request timed out, lastSingleRepeatingRequestSequence = "

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public final abortCaptures()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "CXCP"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v3, "#abortCaptures"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 27
    .line 28
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->abortCaptures()Z
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

.method public final build$1(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroidx/biometric/BiometricPrompt;Ljava/util/List;)Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v7, p5

    .line 1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v15, Landroid/util/ArrayMap;

    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    .line 5
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const-string v3, "build(...) should never be called with an empty request list!"

    const/16 v16, 0x0

    if-nez v0, :cond_33

    .line 8
    iget-object v4, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    instance-of v0, v4, Landroidx/camera/camera2/pipe/compat/AndroidCameraConstrainedHighSpeedCaptureSession;

    const-string v6, "CXCP"

    const/16 v17, 0x1

    iget-object v9, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    if-eqz v0, :cond_15

    .line 9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v10, v16

    move-object/from16 v21, v10

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v11, v22

    check-cast v11, Landroidx/camera/camera2/pipe/Request;

    .line 10
    iget-object v12, v11, Landroidx/camera/camera2/pipe/Request;->streams:Ljava/util/List;

    if-eqz v12, :cond_1

    .line 11
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_1

    :cond_0
    move-object/from16 v22, v0

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v13

    const/4 v0, 0x0

    goto/16 :goto_7

    .line 12
    :cond_1
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v22, v0

    .line 13
    iget-object v0, v9, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputs:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_3

    :cond_2
    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v29, v12

    move-object/from16 v28, v13

    goto :goto_6

    .line 15
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    check-cast v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    move-object/from16 v25, v3

    .line 16
    iget-object v3, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    iget-object v0, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    if-nez v3, :cond_4

    move-object/from16 v27, v4

    move-object/from16 v29, v12

    move-object/from16 v28, v13

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v27, v4

    .line 17
    iget-wide v3, v3, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->value:J

    move-object/from16 v29, v12

    move-object/from16 v28, v13

    const-wide/16 v12, 0x1

    .line 18
    invoke-static {v3, v4, v12, v13}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl0(JJ)Z

    move-result v3

    :goto_3
    if-nez v3, :cond_7

    if-nez v0, :cond_5

    const/4 v3, 0x0

    goto :goto_4

    .line 19
    :cond_5
    iget-wide v3, v0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->value:J

    const-wide/16 v12, 0x0

    .line 20
    invoke-static {v3, v4, v12, v13}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->equals-impl0(JJ)Z

    move-result v3

    :goto_4
    if-nez v3, :cond_7

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 v3, v25

    move-object/from16 v0, v26

    move-object/from16 v4, v27

    move-object/from16 v13, v28

    move-object/from16 v12, v29

    goto :goto_2

    :cond_7
    :goto_5
    move/from16 v0, v17

    goto :goto_7

    :goto_6
    move-object/from16 v0, v22

    move-object/from16 v3, v25

    move-object/from16 v4, v27

    move-object/from16 v13, v28

    move-object/from16 v12, v29

    goto/16 :goto_1

    .line 21
    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x2e

    if-eqz v10, :cond_8

    .line 22
    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 23
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "The previous high speed request and the current high speed request must both have a preview stream use case or hint. Previous request contains preview stream use case or hint: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 25
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    const-string v10, ". Current request contains preview stream use case or hint: "

    .line 27
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_8
    iget-object v0, v11, Landroidx/camera/camera2/pipe/Request;->streams:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 30
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    const/4 v0, 0x0

    goto :goto_e

    .line 31
    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    iget-object v10, v9, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputs:Ljava/util/ArrayList;

    if-eqz v10, :cond_b

    .line 33
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_d

    .line 34
    :cond_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    .line 35
    iget-object v12, v11, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    if-nez v12, :cond_c

    const/4 v12, 0x0

    goto :goto_a

    .line 36
    :cond_c
    iget-wide v12, v12, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->value:J

    const-wide/16 v4, 0x3

    .line 37
    invoke-static {v12, v13, v4, v5}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl0(JJ)Z

    move-result v12

    :goto_a
    if-nez v12, :cond_f

    .line 38
    iget-object v4, v11, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    if-nez v4, :cond_d

    const/4 v4, 0x0

    goto :goto_b

    .line 39
    :cond_d
    iget-wide v4, v4, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->value:J

    const-wide/16 v12, 0x1

    .line 40
    invoke-static {v4, v5, v12, v13}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->equals-impl0(JJ)Z

    move-result v4

    :goto_b
    if-eqz v4, :cond_e

    goto :goto_c

    :cond_e
    const/16 v4, 0x2e

    goto :goto_9

    :cond_f
    :goto_c
    move/from16 v0, v17

    goto :goto_e

    :cond_10
    :goto_d
    const/16 v4, 0x2e

    goto :goto_8

    .line 41
    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v5, v21

    if-eqz v5, :cond_11

    .line 42
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 43
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "The previous high speed request and the current high speed request do not have the same video stream use case. Previous request contains video stream use case: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 45
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    const-string v5, ". Current request contains video stream use case: "

    .line 47
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_11
    iget-object v0, v9, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputs:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_f

    .line 51
    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    .line 52
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->isValidForHighSpeedOperatingMode()Z

    move-result v5

    if-nez v5, :cond_13

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HIGH_SPEED CameraGraph must only contain Preview and/or Video streams. Configured outputs are "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v1, v9, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputs:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_14
    :goto_f
    move-object v10, v3

    move-object/from16 v21, v4

    move-object/from16 v0, v22

    move-object/from16 v3, v25

    move-object/from16 v4, v27

    move-object/from16 v13, v28

    goto/16 :goto_0

    :cond_15
    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v13

    .line 57
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 58
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v13, "Check failed."

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/Request;

    .line 59
    iget-object v5, v3, Landroidx/camera/camera2/pipe/Request;->streams:Ljava/util/List;

    .line 60
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v10, 0x0

    :cond_16
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/camera/camera2/pipe/StreamId;

    .line 61
    iget v11, v11, Landroidx/camera/camera2/pipe/StreamId;->value:I

    .line 62
    new-instance v12, Landroidx/camera/camera2/pipe/StreamId;

    invoke-direct {v12, v11}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 63
    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    :cond_17
    move/from16 v10, v17

    goto :goto_11

    .line 64
    :cond_18
    new-instance v12, Landroidx/camera/camera2/pipe/StreamId;

    invoke-direct {v12, v11}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 65
    iget-object v4, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamToSurfaceMap:Ljava/util/Map;

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    if-eqz v4, :cond_16

    .line 66
    new-instance v10, Landroidx/camera/camera2/pipe/StreamId;

    invoke-direct {v10, v11}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 67
    invoke-virtual {v15, v4, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v10, Landroidx/camera/camera2/pipe/StreamId;

    invoke-direct {v10, v11}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 69
    invoke-virtual {v8, v10, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {v9, v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->get-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream;

    move-result-object v4

    const-string v10, "Required value was null."

    if-eqz v4, :cond_1a

    .line 71
    iget-object v4, v4, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    .line 73
    iget v12, v11, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->id:I

    move-object/from16 v22, v0

    .line 74
    new-instance v0, Landroidx/camera/camera2/pipe/OutputId;

    invoke-direct {v0, v12}, Landroidx/camera/camera2/pipe/OutputId;-><init>(I)V

    .line 75
    iget-object v12, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->outputToSurfaceMap:Ljava/util/Map;

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    check-cast v0, Landroid/view/Surface;

    .line 76
    iget v11, v11, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->id:I

    .line 77
    new-instance v12, Landroidx/camera/camera2/pipe/OutputId;

    invoke-direct {v12, v11}, Landroidx/camera/camera2/pipe/OutputId;-><init>(I)V

    .line 78
    invoke-virtual {v2, v0, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    goto :goto_12

    .line 79
    :cond_19
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    return-object v16

    .line 80
    :cond_1a
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    return-object v16

    :cond_1b
    move-object/from16 v22, v0

    if-nez v10, :cond_1c

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Failed to bind any surfaces for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_1c
    if-eqz v10, :cond_1d

    move-object/from16 v0, v22

    goto/16 :goto_10

    .line 83
    :cond_1d
    invoke-static {v13}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    return-object v16

    .line 84
    :cond_1e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_13
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/camera/camera2/pipe/Request;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Building CaptureRequest for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, v10, Landroidx/camera/camera2/pipe/Request;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    if-eqz v0, :cond_1f

    .line 88
    iget v0, v0, Landroidx/camera/camera2/pipe/RequestTemplate;->value:I

    goto :goto_14

    .line 89
    :cond_1f
    iget v0, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->template:I

    .line 90
    :goto_14
    invoke-interface/range {v27 .. v27}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v3

    invoke-interface {v3, v0}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createCaptureRequest-2PPcXtw(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    if-nez v3, :cond_20

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create a CaptureRequest.Builder from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/camera/camera2/pipe/RequestTemplate;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v16

    goto :goto_15

    :cond_20
    const/16 v4, 0x21

    :goto_15
    if-nez v3, :cond_21

    goto/16 :goto_23

    .line 93
    :cond_21
    sget-object v0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->camera2CaptureRequestTag:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 94
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v11, p3

    if-nez v5, :cond_22

    .line 95
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 96
    :cond_22
    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 97
    iget-object v0, v10, Landroidx/camera/camera2/pipe/Request;->streams:Ljava/util/List;

    .line 98
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_16
    if-ge v5, v0, :cond_24

    .line 99
    iget-object v4, v10, Landroidx/camera/camera2/pipe/Request;->streams:Ljava/util/List;

    .line 100
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    if-eqz v4, :cond_23

    .line 101
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    move/from16 v12, v17

    :cond_23
    add-int/lit8 v5, v5, 0x1

    const/16 v4, 0x21

    goto :goto_16

    :cond_24
    if-eqz v12, :cond_30

    .line 102
    invoke-static {v3, v11}, Landroidx/core/util/DebugUtils;->writeParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    move-object/from16 v4, p4

    .line 103
    invoke-static {v3, v4}, Landroidx/core/util/DebugUtils;->writeParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    .line 104
    iget-object v0, v10, Landroidx/camera/camera2/pipe/Request;->parameters:Ljava/util/Map;

    .line 105
    invoke-static {v3, v0}, Landroidx/core/util/DebugUtils;->writeParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    .line 106
    invoke-static {v3, v7}, Landroidx/core/util/DebugUtils;->writeParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    .line 107
    sget-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->requestTags:Lkotlinx/atomicfu/AtomicLong;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    sget-object v5, Lkotlinx/atomicfu/AtomicLong;->FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v25

    .line 109
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    iget-object v3, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    instance-of v5, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraConstrainedHighSpeedCaptureSession;

    if-eqz v5, :cond_2f

    .line 111
    check-cast v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraConstrainedHighSpeedCaptureSession;

    .line 112
    const-string v5, "Failed to createHighSpeedRequestList from "

    iget-object v12, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;->device:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 113
    :try_start_0
    const-string v29, "CXCP#createHighSpeedRequestList"
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    invoke-static/range {v29 .. v29}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 115
    iget-object v3, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraConstrainedHighSpeedCaptureSession;->session:Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 116
    invoke-virtual {v3, v0}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_18

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 118
    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 119
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " because the output surface was not available."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 121
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " because the output surface was destroyed before calling createHighSpeedRequestList."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 123
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to createHighSpeedRequestList. "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " may be closed."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    move-object/from16 v0, v16

    :goto_18
    if-nez v0, :cond_25

    goto/16 :goto_23

    .line 125
    :cond_25
    iget-object v3, v10, Landroidx/camera/camera2/pipe/Request;->streams:Ljava/util/List;

    if-eqz v3, :cond_27

    .line 126
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_27

    :cond_26
    move-object/from16 v29, v2

    move-object/from16 v20, v6

    move-object/from16 v30, v9

    move-object/from16 v19, v13

    move-object/from16 v31, v15

    move-wide/from16 v11, v25

    move-object/from16 v3, v28

    const/4 v15, 0x0

    const/16 v21, 0x21

    const-wide/16 v23, 0x3

    const-wide/16 v25, 0x1

    goto/16 :goto_21

    .line 127
    :cond_27
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    iget-object v5, v9, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputs:Ljava/util/ArrayList;

    if-eqz v5, :cond_29

    .line 129
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_29

    :cond_28
    move-object/from16 v29, v2

    move-object/from16 p2, v3

    move-object/from16 v20, v6

    move-object/from16 v30, v9

    move-object/from16 v19, v13

    move-object/from16 v31, v15

    move-wide/from16 v11, v25

    move-object/from16 v3, v28

    const/4 v15, 0x0

    const/16 v21, 0x21

    const-wide/16 v23, 0x3

    const-wide/16 v25, 0x1

    goto/16 :goto_20

    .line 130
    :cond_29
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_28

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    move-object/from16 v29, v2

    .line 131
    iget-object v2, v12, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    if-nez v2, :cond_2a

    move-object/from16 p2, v3

    move-object/from16 v30, v5

    const/4 v2, 0x0

    const-wide/16 v4, 0x3

    goto :goto_1b

    :cond_2a
    move-object/from16 p2, v3

    .line 132
    iget-wide v2, v2, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->value:J

    move-object/from16 v30, v5

    const-wide/16 v4, 0x3

    .line 133
    invoke-static {v2, v3, v4, v5}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl0(JJ)Z

    move-result v2

    :goto_1b
    if-nez v2, :cond_2d

    .line 134
    iget-object v2, v12, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    if-nez v2, :cond_2b

    const/4 v2, 0x0

    const-wide/16 v4, 0x1

    goto :goto_1c

    .line 135
    :cond_2b
    iget-wide v2, v2, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->value:J

    const-wide/16 v4, 0x1

    .line 136
    invoke-static {v2, v3, v4, v5}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->equals-impl0(JJ)Z

    move-result v2

    :goto_1c
    if-eqz v2, :cond_2c

    goto :goto_1d

    :cond_2c
    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v2, v29

    move-object/from16 v5, v30

    goto :goto_1a

    :cond_2d
    const-wide/16 v4, 0x1

    .line 137
    :goto_1d
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_2e

    move v12, v2

    .line 138
    new-instance v2, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;

    .line 139
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/hardware/camera2/CaptureRequest;

    move/from16 v24, v3

    .line 140
    iget-object v3, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-object/from16 v20, v6

    move-object/from16 v30, v9

    move/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v31, v15

    move/from16 v13, v24

    const/4 v15, 0x0

    const/16 v21, 0x21

    move/from16 v9, p1

    move-object/from16 v6, p4

    move-wide/from16 v32, v4

    move-object v5, v11

    move-object/from16 v4, v23

    move-wide/from16 v11, v25

    const-wide/16 v23, 0x3

    move-wide/from16 v25, v32

    invoke-direct/range {v2 .. v12}, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroid/hardware/camera2/CaptureRequest;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/util/ArrayMap;ZLandroidx/camera/camera2/pipe/Request;J)V

    .line 141
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v28

    .line 142
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v13, 0x1

    move-object/from16 v7, p5

    move-object/from16 v13, v19

    move-object/from16 v6, v20

    move-wide/from16 v4, v25

    move-object/from16 v9, v30

    move-object/from16 v15, v31

    move v3, v2

    move-wide/from16 v25, v11

    move/from16 v2, v18

    move-object/from16 v11, p3

    goto :goto_1e

    :cond_2e
    move-object/from16 v31, v15

    const/4 v15, 0x0

    const/16 v21, 0x21

    move-object/from16 v7, p5

    move-object/from16 v2, v29

    :goto_1f
    move-object/from16 v15, v31

    goto/16 :goto_13

    :goto_20
    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v28, v3

    move-wide/from16 v25, v11

    move-object/from16 v13, v19

    move-object/from16 v6, v20

    move-object/from16 v2, v29

    move-object/from16 v9, v30

    move-object/from16 v15, v31

    move-object/from16 v3, p2

    move-object/from16 v11, p3

    goto/16 :goto_19

    .line 143
    :goto_21
    new-instance v2, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;

    .line 144
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest;

    move-object/from16 v28, v3

    .line 145
    iget-object v3, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move/from16 v9, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v13, v28

    invoke-direct/range {v2 .. v12}, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroid/hardware/camera2/CaptureRequest;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/util/ArrayMap;ZLandroidx/camera/camera2/pipe/Request;J)V

    .line 146
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_22
    move-object/from16 v13, v19

    move-object/from16 v6, v20

    move-object/from16 v2, v29

    move-object/from16 v9, v30

    goto :goto_1f

    :cond_2f
    move-object/from16 v29, v2

    move-object/from16 v20, v6

    move-object/from16 v30, v9

    move-object/from16 v19, v13

    move-object/from16 v31, v15

    move-wide/from16 v11, v25

    move-object/from16 v13, v28

    const/4 v15, 0x0

    const/16 v21, 0x21

    const-wide/16 v23, 0x3

    const-wide/16 v25, 0x1

    .line 148
    new-instance v2, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;

    move/from16 v9, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v4, v0

    invoke-direct/range {v2 .. v12}, Landroidx/camera/camera2/pipe/compat/Camera2RequestMetadata;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroid/hardware/camera2/CaptureRequest;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/util/ArrayMap;ZLandroidx/camera/camera2/pipe/Request;J)V

    .line 149
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_30
    move-object/from16 v19, v13

    .line 151
    invoke-static/range {v19 .. v19}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    return-object v16

    :cond_31
    move-object/from16 v29, v2

    move-object/from16 v31, v15

    move-object/from16 v13, v28

    .line 152
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    .line 153
    invoke-interface/range {v27 .. v27}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v2

    .line 154
    iget-object v9, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 155
    iget-object v10, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    move-object/from16 v6, p6

    move-object/from16 v5, p7

    move-object v1, v2

    move-object v4, v13

    move-object v3, v14

    move-object/from16 v8, v29

    move-object/from16 v7, v31

    move/from16 v2, p1

    .line 156
    invoke-direct/range {v0 .. v10}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;-><init>(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;Landroidx/biometric/BiometricPrompt;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/StrictMode;)V

    move-object/from16 v16, v0

    :goto_23
    return-object v16

    .line 157
    :cond_32
    invoke-static/range {v25 .. v25}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    return-object v16

    :cond_33
    move-object/from16 v25, v3

    .line 158
    invoke-static/range {v25 .. v25}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    return-object v16
.end method

.method public final disconnect$camera_camera2_pipe()V
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
    const-string v1, "#disconnect"

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
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnected:Z

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnected:Z

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->imageWriter:Landroidx/camera/camera2/pipe/media/AndroidImageWriter;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-static {v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 42
    .line 43
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->getInputSurface()Landroid/view/Surface;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lastSingleRepeatingRequestSequence:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 v1, 0x0

    .line 56
    :goto_1
    :try_start_2
    monitor-exit v0

    .line 57
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->awaitRepeatingRequestOnDisconnect:Z

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-static {p0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->access$awaitRepeatingRequestStarted(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :goto_2
    :try_start_3
    monitor-exit v0

    .line 71
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public final submit$1(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnected:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "CXCP"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p0, " disconnected. "

    .line 19
    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, " won\'t be submitted"

    .line 27
    .line 28
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :try_start_1
    iget-object v1, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureRequestList:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x1

    .line 50
    if-ne v1, v2, :cond_3

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 53
    .line 54
    instance-of v2, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraConstrainedHighSpeedCaptureSession;

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    iget-boolean v2, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->repeating:Z

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    iget-boolean v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->awaitRepeatingRequestOnDisconnect:Z

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lastSingleRepeatingRequestSequence:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    .line 68
    .line 69
    :cond_1
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureRequestList:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Landroid/hardware/camera2/CaptureRequest;

    .line 76
    .line 77
    invoke-interface {v1, p0, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureRequestList:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Landroid/hardware/camera2/CaptureRequest;

    .line 89
    .line 90
    invoke-interface {v1, p0, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->capture(Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    iget-boolean v1, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->repeating:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 98
    .line 99
    iget-object v2, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureRequestList:Ljava/util/ArrayList;

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    :try_start_2
    invoke-interface {p0, v2, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->setRepeatingBurst(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    goto :goto_0

    .line 108
    :cond_4
    invoke-interface {p0, v2, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->captureBurst(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :goto_0
    monitor-exit v0

    .line 113
    return-object p0

    .line 114
    :goto_1
    monitor-exit v0

    .line 115
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Camera2CaptureSequenceProcessor-"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->debugId:I

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
